


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;




ALTER SCHEMA "public" OWNER TO "postgres";


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."AccountType" AS ENUM (
    'CASH',
    'DEBIT',
    'CREDIT',
    'SAVINGS',
    'INVESTMENT'
);


ALTER TYPE "public"."AccountType" OWNER TO "postgres";


CREATE TYPE "public"."ImportHistoryStatus" AS ENUM (
    'PROCESSING',
    'COMPLETED',
    'FAILED'
);


ALTER TYPE "public"."ImportHistoryStatus" OWNER TO "postgres";


CREATE TYPE "public"."ImportStatus" AS ENUM (
    'SUCCESS',
    'FAILED'
);


ALTER TYPE "public"."ImportStatus" OWNER TO "postgres";


CREATE TYPE "public"."LoanStatus" AS ENUM (
    'ACTIVE',
    'PAID',
    'CANCELLED'
);


ALTER TYPE "public"."LoanStatus" OWNER TO "postgres";


CREATE TYPE "public"."NotificationType" AS ENUM (
    'PAYMENT_RECEIVED',
    'SHARED_EXPENSE_CREATED',
    'GROUP_MEMBER_ADDED',
    'BALANCE_SETTLED'
);


ALTER TYPE "public"."NotificationType" OWNER TO "postgres";


CREATE TYPE "public"."SplitType" AS ENUM (
    'EQUAL',
    'PERCENTAGE',
    'EXACT',
    'SHARES'
);


ALTER TYPE "public"."SplitType" OWNER TO "postgres";


CREATE TYPE "public"."TransactionType" AS ENUM (
    'EXPENSE',
    'INCOME',
    'TRANSFER'
);


ALTER TYPE "public"."TransactionType" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."_prisma_migrations" (
    "id" character varying(36) NOT NULL,
    "checksum" character varying(64) NOT NULL,
    "finished_at" timestamp with time zone,
    "migration_name" character varying(255) NOT NULL,
    "logs" "text",
    "rolled_back_at" timestamp with time zone,
    "started_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "applied_steps_count" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."_prisma_migrations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."accounts" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "name" "text" NOT NULL,
    "type" "public"."AccountType" NOT NULL,
    "balance" numeric(15,2) NOT NULL,
    "currency" "text" DEFAULT 'CLP'::"text" NOT NULL,
    "is_default" boolean DEFAULT false NOT NULL,
    "credit_limit" numeric(15,2),
    "billing_day" integer,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL,
    "is_archived" boolean DEFAULT false NOT NULL,
    "include_in_total_balance" boolean DEFAULT true NOT NULL,
    "account_number" "text",
    "color" "text"
);


ALTER TABLE "public"."accounts" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."budgets" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "month" integer NOT NULL,
    "year" integer NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."budgets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."category_templates" (
    "id" "text" NOT NULL,
    "name" "text" NOT NULL,
    "icon" "text",
    "color" "text",
    "type" "public"."TransactionType" NOT NULL,
    "parent_template_id" "text",
    "order_index" integer DEFAULT 0 NOT NULL,
    "is_system" boolean DEFAULT true NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."category_templates" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."expense_participants" (
    "id" "text" NOT NULL,
    "expense_id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "amount_owed" numeric(15,2) NOT NULL,
    "percentage" numeric(5,2),
    "shares" integer,
    "is_paid" boolean DEFAULT false NOT NULL,
    "paid_date" timestamp(3) without time zone,
    "paid_amount" numeric(15,2)
);


ALTER TABLE "public"."expense_participants" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."group_member_split_defaults" (
    "id" "text" NOT NULL,
    "group_id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "percentage" numeric(5,2),
    "shares" integer,
    "exactAmount" numeric(15,2),
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."group_member_split_defaults" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."group_members" (
    "id" "text" NOT NULL,
    "group_id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "joined_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."group_members" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."groups" (
    "id" "text" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text",
    "cover_image_url" "text",
    "created_by" "text" NOT NULL,
    "default_split_type" "public"."SplitType" DEFAULT 'EQUAL'::"public"."SplitType",
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."groups" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."import_history" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "account_id" "text" NOT NULL,
    "file_name" "text" NOT NULL,
    "file_type" "text" NOT NULL,
    "total_rows" integer NOT NULL,
    "success_count" integer DEFAULT 0 NOT NULL,
    "failed_count" integer DEFAULT 0 NOT NULL,
    "status" "public"."ImportHistoryStatus" DEFAULT 'PROCESSING'::"public"."ImportHistoryStatus" NOT NULL,
    "imported_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "completed_at" timestamp(3) without time zone
);


ALTER TABLE "public"."import_history" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."imported_transactions" (
    "id" "text" NOT NULL,
    "import_history_id" "text" NOT NULL,
    "transaction_id" "text",
    "row_number" integer NOT NULL,
    "status" "public"."ImportStatus" NOT NULL,
    "error_message" "text",
    "original_date" "text" NOT NULL,
    "type" "text" NOT NULL,
    "amount" "text" NOT NULL,
    "description" "text" NOT NULL,
    "category" "text",
    "tags" "text",
    "notes" "text"
);


ALTER TABLE "public"."imported_transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."loan_payments" (
    "id" "text" NOT NULL,
    "loan_id" "text" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "payment_date" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "transaction_id" "text",
    "notes" "text",
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."loan_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."loans" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "borrower_name" "text" NOT NULL,
    "borrower_user_id" "text",
    "original_amount" numeric(15,2) NOT NULL,
    "paid_amount" numeric(15,2) DEFAULT 0 NOT NULL,
    "currency" "text" DEFAULT 'CLP'::"text" NOT NULL,
    "loan_date" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "notes" "text",
    "status" "public"."LoanStatus" DEFAULT 'ACTIVE'::"public"."LoanStatus" NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."loans" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."monthly_summaries" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "month" integer NOT NULL,
    "year" integer NOT NULL,
    "message" "text",
    "income" numeric(15,2) DEFAULT 0 NOT NULL,
    "expense" numeric(15,2) DEFAULT 0 NOT NULL,
    "personal_expense" numeric(15,2) DEFAULT 0 NOT NULL,
    "shared_expense" numeric(15,2) DEFAULT 0 NOT NULL,
    "savings" numeric(15,2) DEFAULT 0 NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."monthly_summaries" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notifications" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "type" "public"."NotificationType" NOT NULL,
    "title" "text" NOT NULL,
    "message" "text" NOT NULL,
    "data" "jsonb",
    "is_read" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."notifications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" "text" NOT NULL,
    "group_id" "text",
    "from_user_id" "text" NOT NULL,
    "to_user_id" "text" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "date" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."shared_expenses" (
    "id" "text" NOT NULL,
    "group_id" "text" NOT NULL,
    "paid_by_user_id" "text" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "description" "text" NOT NULL,
    "category_id" "text",
    "date" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "receipt_url" "text",
    "split_type" "public"."SplitType" DEFAULT 'EQUAL'::"public"."SplitType" NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."shared_expenses" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tags" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "name" "text" NOT NULL,
    "color" "text",
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."tags" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."transaction_tags" (
    "id" "text" NOT NULL,
    "transaction_id" "text" NOT NULL,
    "tag_id" "text" NOT NULL
);


ALTER TABLE "public"."transaction_tags" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."transactions" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "account_id" "text" NOT NULL,
    "type" "public"."TransactionType" NOT NULL,
    "amount" numeric(15,2) NOT NULL,
    "category_id" "text",
    "description" "text",
    "date" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "receipt_url" "text",
    "payee" "text",
    "payer" "text",
    "to_account_id" "text",
    "shared_expense_id" "text",
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL,
    "loan_id" "text"
);


ALTER TABLE "public"."transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_category_overrides" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "template_id" "text",
    "name" "text" NOT NULL,
    "icon" "text",
    "color" "text",
    "is_active" boolean DEFAULT true NOT NULL,
    "is_custom" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL,
    "type" "public"."TransactionType" NOT NULL,
    "parent_override_id" "text"
);


ALTER TABLE "public"."user_category_overrides" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_dashboard_preferences" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "widgets" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "layout" "jsonb" DEFAULT '[]'::"jsonb" NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."user_dashboard_preferences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_transaction_patterns" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "pattern" "text" NOT NULL,
    "resolved_category_id" "text",
    "resolved_merchant" "text",
    "confidence" double precision DEFAULT 1.0 NOT NULL,
    "use_count" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."user_transaction_patterns" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "text" NOT NULL,
    "email" "text" NOT NULL,
    "password_hash" "text" NOT NULL,
    "name" "text" NOT NULL,
    "avatar_url" "text",
    "currency" "text" DEFAULT 'CLP'::"text" NOT NULL,
    "country" "text",
    "is_verified" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_at" timestamp(3) without time zone NOT NULL,
    "default_shared_expense_account_id" "text",
    "language" "text" DEFAULT 'es'::"text" NOT NULL
);


ALTER TABLE "public"."users" OWNER TO "postgres";


ALTER TABLE ONLY "public"."_prisma_migrations"
    ADD CONSTRAINT "_prisma_migrations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "accounts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."budgets"
    ADD CONSTRAINT "budgets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."category_templates"
    ADD CONSTRAINT "category_templates_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."expense_participants"
    ADD CONSTRAINT "expense_participants_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."group_member_split_defaults"
    ADD CONSTRAINT "group_member_split_defaults_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."group_members"
    ADD CONSTRAINT "group_members_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."import_history"
    ADD CONSTRAINT "import_history_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."imported_transactions"
    ADD CONSTRAINT "imported_transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."loan_payments"
    ADD CONSTRAINT "loan_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."loans"
    ADD CONSTRAINT "loans_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."monthly_summaries"
    ADD CONSTRAINT "monthly_summaries_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shared_expenses"
    ADD CONSTRAINT "shared_expenses_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."transaction_tags"
    ADD CONSTRAINT "transaction_tags_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_category_overrides"
    ADD CONSTRAINT "user_category_overrides_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_dashboard_preferences"
    ADD CONSTRAINT "user_dashboard_preferences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_transaction_patterns"
    ADD CONSTRAINT "user_transaction_patterns_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



CREATE INDEX "accounts_user_id_idx" ON "public"."accounts" USING "btree" ("user_id");



CREATE INDEX "accounts_user_id_is_archived_idx" ON "public"."accounts" USING "btree" ("user_id", "is_archived");



CREATE INDEX "budgets_user_id_idx" ON "public"."budgets" USING "btree" ("user_id");



CREATE UNIQUE INDEX "budgets_user_id_month_year_key" ON "public"."budgets" USING "btree" ("user_id", "month", "year");



CREATE UNIQUE INDEX "category_templates_name_parent_template_id_key" ON "public"."category_templates" USING "btree" ("name", "parent_template_id");



CREATE INDEX "category_templates_parent_template_id_idx" ON "public"."category_templates" USING "btree" ("parent_template_id");



CREATE INDEX "category_templates_type_idx" ON "public"."category_templates" USING "btree" ("type");



CREATE INDEX "expense_participants_expense_id_idx" ON "public"."expense_participants" USING "btree" ("expense_id");



CREATE UNIQUE INDEX "expense_participants_expense_id_user_id_key" ON "public"."expense_participants" USING "btree" ("expense_id", "user_id");



CREATE INDEX "expense_participants_user_id_idx" ON "public"."expense_participants" USING "btree" ("user_id");



CREATE INDEX "expense_participants_user_id_is_paid_idx" ON "public"."expense_participants" USING "btree" ("user_id", "is_paid");



CREATE INDEX "group_member_split_defaults_group_id_idx" ON "public"."group_member_split_defaults" USING "btree" ("group_id");



CREATE UNIQUE INDEX "group_member_split_defaults_group_id_user_id_key" ON "public"."group_member_split_defaults" USING "btree" ("group_id", "user_id");



CREATE INDEX "group_member_split_defaults_user_id_idx" ON "public"."group_member_split_defaults" USING "btree" ("user_id");



CREATE INDEX "group_members_group_id_idx" ON "public"."group_members" USING "btree" ("group_id");



CREATE UNIQUE INDEX "group_members_group_id_user_id_key" ON "public"."group_members" USING "btree" ("group_id", "user_id");



CREATE INDEX "group_members_user_id_idx" ON "public"."group_members" USING "btree" ("user_id");



CREATE INDEX "groups_created_by_idx" ON "public"."groups" USING "btree" ("created_by");



CREATE INDEX "import_history_account_id_idx" ON "public"."import_history" USING "btree" ("account_id");



CREATE INDEX "import_history_imported_at_idx" ON "public"."import_history" USING "btree" ("imported_at");



CREATE INDEX "import_history_status_idx" ON "public"."import_history" USING "btree" ("status");



CREATE INDEX "import_history_user_id_idx" ON "public"."import_history" USING "btree" ("user_id");



CREATE INDEX "imported_transactions_import_history_id_idx" ON "public"."imported_transactions" USING "btree" ("import_history_id");



CREATE INDEX "imported_transactions_transaction_id_idx" ON "public"."imported_transactions" USING "btree" ("transaction_id");



CREATE INDEX "loan_payments_loan_id_idx" ON "public"."loan_payments" USING "btree" ("loan_id");



CREATE UNIQUE INDEX "loan_payments_transaction_id_key" ON "public"."loan_payments" USING "btree" ("transaction_id");



CREATE INDEX "loans_borrower_user_id_idx" ON "public"."loans" USING "btree" ("borrower_user_id");



CREATE INDEX "loans_user_id_loan_date_idx" ON "public"."loans" USING "btree" ("user_id", "loan_date");



CREATE INDEX "loans_user_id_status_idx" ON "public"."loans" USING "btree" ("user_id", "status");



CREATE INDEX "monthly_summaries_user_id_idx" ON "public"."monthly_summaries" USING "btree" ("user_id");



CREATE UNIQUE INDEX "monthly_summaries_user_id_month_year_key" ON "public"."monthly_summaries" USING "btree" ("user_id", "month", "year");



CREATE INDEX "notifications_user_id_created_at_idx" ON "public"."notifications" USING "btree" ("user_id", "created_at");



CREATE INDEX "notifications_user_id_is_read_idx" ON "public"."notifications" USING "btree" ("user_id", "is_read");



CREATE INDEX "payments_from_user_id_date_idx" ON "public"."payments" USING "btree" ("from_user_id", "date");



CREATE INDEX "payments_from_user_id_idx" ON "public"."payments" USING "btree" ("from_user_id");



CREATE INDEX "payments_group_id_idx" ON "public"."payments" USING "btree" ("group_id");



CREATE INDEX "payments_to_user_id_date_idx" ON "public"."payments" USING "btree" ("to_user_id", "date");



CREATE INDEX "payments_to_user_id_idx" ON "public"."payments" USING "btree" ("to_user_id");



CREATE INDEX "shared_expenses_category_id_idx" ON "public"."shared_expenses" USING "btree" ("category_id");



CREATE INDEX "shared_expenses_group_id_date_idx" ON "public"."shared_expenses" USING "btree" ("group_id", "date");



CREATE INDEX "shared_expenses_group_id_idx" ON "public"."shared_expenses" USING "btree" ("group_id");



CREATE INDEX "shared_expenses_paid_by_user_id_date_idx" ON "public"."shared_expenses" USING "btree" ("paid_by_user_id", "date");



CREATE INDEX "shared_expenses_paid_by_user_id_idx" ON "public"."shared_expenses" USING "btree" ("paid_by_user_id");



CREATE INDEX "tags_user_id_idx" ON "public"."tags" USING "btree" ("user_id");



CREATE UNIQUE INDEX "tags_user_id_name_key" ON "public"."tags" USING "btree" ("user_id", "name");



CREATE INDEX "transaction_tags_tag_id_idx" ON "public"."transaction_tags" USING "btree" ("tag_id");



CREATE INDEX "transaction_tags_transaction_id_idx" ON "public"."transaction_tags" USING "btree" ("transaction_id");



CREATE UNIQUE INDEX "transaction_tags_transaction_id_tag_id_key" ON "public"."transaction_tags" USING "btree" ("transaction_id", "tag_id");



CREATE INDEX "transactions_account_id_date_idx" ON "public"."transactions" USING "btree" ("account_id", "date");



CREATE INDEX "transactions_account_id_idx" ON "public"."transactions" USING "btree" ("account_id");



CREATE INDEX "transactions_category_id_idx" ON "public"."transactions" USING "btree" ("category_id");



CREATE INDEX "transactions_date_idx" ON "public"."transactions" USING "btree" ("date");



CREATE INDEX "transactions_loan_id_idx" ON "public"."transactions" USING "btree" ("loan_id");



CREATE UNIQUE INDEX "transactions_loan_id_key" ON "public"."transactions" USING "btree" ("loan_id");



CREATE INDEX "transactions_shared_expense_id_idx" ON "public"."transactions" USING "btree" ("shared_expense_id");



CREATE INDEX "transactions_to_account_id_idx" ON "public"."transactions" USING "btree" ("to_account_id");



CREATE INDEX "transactions_type_idx" ON "public"."transactions" USING "btree" ("type");



CREATE INDEX "transactions_user_id_date_idx" ON "public"."transactions" USING "btree" ("user_id", "date");



CREATE INDEX "transactions_user_id_idx" ON "public"."transactions" USING "btree" ("user_id");



CREATE INDEX "transactions_user_id_payee_idx" ON "public"."transactions" USING "btree" ("user_id", "payee");



CREATE INDEX "transactions_user_id_type_date_idx" ON "public"."transactions" USING "btree" ("user_id", "type", "date");



CREATE INDEX "user_category_overrides_is_active_idx" ON "public"."user_category_overrides" USING "btree" ("is_active");



CREATE INDEX "user_category_overrides_parent_override_id_idx" ON "public"."user_category_overrides" USING "btree" ("parent_override_id");



CREATE INDEX "user_category_overrides_template_id_idx" ON "public"."user_category_overrides" USING "btree" ("template_id");



CREATE INDEX "user_category_overrides_type_idx" ON "public"."user_category_overrides" USING "btree" ("type");



CREATE INDEX "user_category_overrides_user_id_idx" ON "public"."user_category_overrides" USING "btree" ("user_id");



CREATE UNIQUE INDEX "user_category_overrides_user_id_template_id_key" ON "public"."user_category_overrides" USING "btree" ("user_id", "template_id");



CREATE INDEX "user_dashboard_preferences_user_id_idx" ON "public"."user_dashboard_preferences" USING "btree" ("user_id");



CREATE UNIQUE INDEX "user_dashboard_preferences_user_id_key" ON "public"."user_dashboard_preferences" USING "btree" ("user_id");



CREATE INDEX "user_transaction_patterns_user_id_idx" ON "public"."user_transaction_patterns" USING "btree" ("user_id");



CREATE UNIQUE INDEX "user_transaction_patterns_user_id_pattern_key" ON "public"."user_transaction_patterns" USING "btree" ("user_id", "pattern");



CREATE UNIQUE INDEX "users_email_key" ON "public"."users" USING "btree" ("email");



ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "accounts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."budgets"
    ADD CONSTRAINT "budgets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."category_templates"
    ADD CONSTRAINT "category_templates_parent_template_id_fkey" FOREIGN KEY ("parent_template_id") REFERENCES "public"."category_templates"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."expense_participants"
    ADD CONSTRAINT "expense_participants_expense_id_fkey" FOREIGN KEY ("expense_id") REFERENCES "public"."shared_expenses"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."expense_participants"
    ADD CONSTRAINT "expense_participants_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."group_member_split_defaults"
    ADD CONSTRAINT "group_member_split_defaults_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."group_member_split_defaults"
    ADD CONSTRAINT "group_member_split_defaults_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."group_members"
    ADD CONSTRAINT "group_members_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."group_members"
    ADD CONSTRAINT "group_members_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."import_history"
    ADD CONSTRAINT "import_history_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "public"."accounts"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."import_history"
    ADD CONSTRAINT "import_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."imported_transactions"
    ADD CONSTRAINT "imported_transactions_import_history_id_fkey" FOREIGN KEY ("import_history_id") REFERENCES "public"."import_history"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."imported_transactions"
    ADD CONSTRAINT "imported_transactions_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."transactions"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."loan_payments"
    ADD CONSTRAINT "loan_payments_loan_id_fkey" FOREIGN KEY ("loan_id") REFERENCES "public"."loans"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."loan_payments"
    ADD CONSTRAINT "loan_payments_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."transactions"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."loans"
    ADD CONSTRAINT "loans_borrower_user_id_fkey" FOREIGN KEY ("borrower_user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."loans"
    ADD CONSTRAINT "loans_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."monthly_summaries"
    ADD CONSTRAINT "monthly_summaries_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."notifications"
    ADD CONSTRAINT "notifications_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_from_user_id_fkey" FOREIGN KEY ("from_user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."payments"
    ADD CONSTRAINT "payments_to_user_id_fkey" FOREIGN KEY ("to_user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."shared_expenses"
    ADD CONSTRAINT "shared_expenses_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."shared_expenses"
    ADD CONSTRAINT "shared_expenses_paid_by_user_id_fkey" FOREIGN KEY ("paid_by_user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_tags"
    ADD CONSTRAINT "transaction_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transaction_tags"
    ADD CONSTRAINT "transaction_tags_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "public"."transactions"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "public"."accounts"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_loan_id_fkey" FOREIGN KEY ("loan_id") REFERENCES "public"."loans"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_shared_expense_id_fkey" FOREIGN KEY ("shared_expense_id") REFERENCES "public"."shared_expenses"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_to_account_id_fkey" FOREIGN KEY ("to_account_id") REFERENCES "public"."accounts"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."transactions"
    ADD CONSTRAINT "transactions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_category_overrides"
    ADD CONSTRAINT "user_category_overrides_parent_override_id_fkey" FOREIGN KEY ("parent_override_id") REFERENCES "public"."user_category_overrides"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_category_overrides"
    ADD CONSTRAINT "user_category_overrides_template_id_fkey" FOREIGN KEY ("template_id") REFERENCES "public"."category_templates"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."user_category_overrides"
    ADD CONSTRAINT "user_category_overrides_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_dashboard_preferences"
    ADD CONSTRAINT "user_dashboard_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_transaction_patterns"
    ADD CONSTRAINT "user_transaction_patterns_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_default_shared_expense_account_id_fkey" FOREIGN KEY ("default_shared_expense_account_id") REFERENCES "public"."accounts"("id") ON UPDATE CASCADE ON DELETE SET NULL;





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


REVOKE USAGE ON SCHEMA "public" FROM PUBLIC;
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";








































































































































































GRANT ALL ON TABLE "public"."_prisma_migrations" TO "anon";
GRANT ALL ON TABLE "public"."_prisma_migrations" TO "authenticated";
GRANT ALL ON TABLE "public"."_prisma_migrations" TO "service_role";



GRANT ALL ON TABLE "public"."accounts" TO "anon";
GRANT ALL ON TABLE "public"."accounts" TO "authenticated";
GRANT ALL ON TABLE "public"."accounts" TO "service_role";



GRANT ALL ON TABLE "public"."budgets" TO "anon";
GRANT ALL ON TABLE "public"."budgets" TO "authenticated";
GRANT ALL ON TABLE "public"."budgets" TO "service_role";



GRANT ALL ON TABLE "public"."category_templates" TO "anon";
GRANT ALL ON TABLE "public"."category_templates" TO "authenticated";
GRANT ALL ON TABLE "public"."category_templates" TO "service_role";



GRANT ALL ON TABLE "public"."expense_participants" TO "anon";
GRANT ALL ON TABLE "public"."expense_participants" TO "authenticated";
GRANT ALL ON TABLE "public"."expense_participants" TO "service_role";



GRANT ALL ON TABLE "public"."group_member_split_defaults" TO "anon";
GRANT ALL ON TABLE "public"."group_member_split_defaults" TO "authenticated";
GRANT ALL ON TABLE "public"."group_member_split_defaults" TO "service_role";



GRANT ALL ON TABLE "public"."group_members" TO "anon";
GRANT ALL ON TABLE "public"."group_members" TO "authenticated";
GRANT ALL ON TABLE "public"."group_members" TO "service_role";



GRANT ALL ON TABLE "public"."groups" TO "anon";
GRANT ALL ON TABLE "public"."groups" TO "authenticated";
GRANT ALL ON TABLE "public"."groups" TO "service_role";



GRANT ALL ON TABLE "public"."import_history" TO "anon";
GRANT ALL ON TABLE "public"."import_history" TO "authenticated";
GRANT ALL ON TABLE "public"."import_history" TO "service_role";



GRANT ALL ON TABLE "public"."imported_transactions" TO "anon";
GRANT ALL ON TABLE "public"."imported_transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."imported_transactions" TO "service_role";



GRANT ALL ON TABLE "public"."loan_payments" TO "anon";
GRANT ALL ON TABLE "public"."loan_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."loan_payments" TO "service_role";



GRANT ALL ON TABLE "public"."loans" TO "anon";
GRANT ALL ON TABLE "public"."loans" TO "authenticated";
GRANT ALL ON TABLE "public"."loans" TO "service_role";



GRANT ALL ON TABLE "public"."monthly_summaries" TO "anon";
GRANT ALL ON TABLE "public"."monthly_summaries" TO "authenticated";
GRANT ALL ON TABLE "public"."monthly_summaries" TO "service_role";



GRANT ALL ON TABLE "public"."notifications" TO "anon";
GRANT ALL ON TABLE "public"."notifications" TO "authenticated";
GRANT ALL ON TABLE "public"."notifications" TO "service_role";



GRANT ALL ON TABLE "public"."payments" TO "anon";
GRANT ALL ON TABLE "public"."payments" TO "authenticated";
GRANT ALL ON TABLE "public"."payments" TO "service_role";



GRANT ALL ON TABLE "public"."shared_expenses" TO "anon";
GRANT ALL ON TABLE "public"."shared_expenses" TO "authenticated";
GRANT ALL ON TABLE "public"."shared_expenses" TO "service_role";



GRANT ALL ON TABLE "public"."tags" TO "anon";
GRANT ALL ON TABLE "public"."tags" TO "authenticated";
GRANT ALL ON TABLE "public"."tags" TO "service_role";



GRANT ALL ON TABLE "public"."transaction_tags" TO "anon";
GRANT ALL ON TABLE "public"."transaction_tags" TO "authenticated";
GRANT ALL ON TABLE "public"."transaction_tags" TO "service_role";



GRANT ALL ON TABLE "public"."transactions" TO "anon";
GRANT ALL ON TABLE "public"."transactions" TO "authenticated";
GRANT ALL ON TABLE "public"."transactions" TO "service_role";



GRANT ALL ON TABLE "public"."user_category_overrides" TO "anon";
GRANT ALL ON TABLE "public"."user_category_overrides" TO "authenticated";
GRANT ALL ON TABLE "public"."user_category_overrides" TO "service_role";



GRANT ALL ON TABLE "public"."user_dashboard_preferences" TO "anon";
GRANT ALL ON TABLE "public"."user_dashboard_preferences" TO "authenticated";
GRANT ALL ON TABLE "public"."user_dashboard_preferences" TO "service_role";



GRANT ALL ON TABLE "public"."user_transaction_patterns" TO "anon";
GRANT ALL ON TABLE "public"."user_transaction_patterns" TO "authenticated";
GRANT ALL ON TABLE "public"."user_transaction_patterns" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































