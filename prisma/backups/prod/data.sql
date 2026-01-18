SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict bYz5vuaLsUbOJ4cdD2MYiqzGpr7aubvgaqRmeYdz0PfkHPRfu8wqS891kvWYtfl

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_prisma_migrations" ("id", "checksum", "finished_at", "migration_name", "logs", "rolled_back_at", "started_at", "applied_steps_count") FROM stdin;
2893cf62-969e-4f5e-a764-d3af3987a2a4	96dbe3f61f7f54fbfb05c2242c7bcb1b955a7f94965dcec16e0437ba31c312d2	2025-11-13 14:56:18.313872+00	20251110174250_init	\N	\N	2025-11-13 14:56:17.284234+00	1
ba48b0dd-f218-4d86-bf71-79be3e504da1	982de910c296e9115605b240ee89c9396dccc262ac840d69400beb4521ca3684	2025-11-13 14:56:19.557596+00	20251112231021_add_category_templates_system	\N	\N	2025-11-13 14:56:18.603666+00	1
9d89fd0a-78b7-4931-9eb4-ce0d8e88e211	4c287b232b9177f0405d8847d7b9e74095106c819c9a9083479eb0804851a227	2025-11-13 18:52:04.790657+00	20251113185203_add_type_to_user_category_override	\N	\N	2025-11-13 18:52:04.054509+00	1
e1a50e36-a1b3-480d-a632-bdc4761e33cb	6885a550098e92e9d389263966ab6f0e792348ed9f8a538fa190a3a6d12a65de	2025-11-13 23:30:59.812991+00	20251113233019_add_custom_subcategories	\N	\N	2025-11-13 23:30:35.907372+00	1
64aa763a-74b4-4ffd-a4f4-ff05a44dd7e0	bcbf4affccb9f6b6ffafa88d6d922b4fc91a3eb43239aaa1c135a5c57b3a5845	2025-11-17 15:23:54.025164+00	20251117152352_remove_legacy_categories	\N	\N	2025-11-17 15:23:53.111046+00	1
0ac0483c-16d9-442d-9085-c37f0e006fd5	a2ef6066681f0d4a9e33d656f46bac70c069171e323dd9b9ff0c8bbc3cbe66dc	2025-11-20 17:31:58.887608+00	20251120173157_add_include_in_total_balance_to_accounts	\N	\N	2025-11-20 17:31:58.028424+00	1
24f1f1ae-b8d9-493f-8b8e-2a8652ae760a	aab2924181ed8c44f3a086fbc90b09b05de88376937c2156b2e06460f9a4add6	2025-11-21 02:25:25.739864+00	20251121022524_add_default_shared_expense_account	\N	\N	2025-11-21 02:25:24.985448+00	1
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."accounts" ("id", "user_id", "name", "type", "balance", "currency", "is_default", "credit_limit", "billing_day", "created_at", "updated_at", "is_archived", "include_in_total_balance", "account_number", "color") FROM stdin;
530b9e4b-d53a-440b-a713-51021e71436b	b88abd1d-92fe-4818-ba01-95681f09b96d	Cuenta de prueba	CASH	811760.00	CLP	t	\N	\N	2025-11-21 13:28:32.434	2025-11-25 13:01:45.91	f	t	\N	\N
d99144b6-5974-40e2-9f17-b36942774c9e	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta MercadoPago	DEBIT	10360589.30	CLP	f	\N	\N	2025-11-18 16:40:00.279	2026-01-15 15:08:45.533	f	t	\N	#ffe600
646caf37-7684-45ac-87f3-cec83efb633d	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander VISA	CREDIT	7837894.00	CLP	f	8000000.00	31	2025-11-18 16:41:05.327	2026-01-15 15:35:20.661	f	f	000069640842	#7a7a7a
34d0aa36-bc91-4383-95fb-578fbbc09e04	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Corriente Santander	DEBIT	47636.00	CLP	f	\N	\N	2025-11-25 19:18:47.604	2026-01-14 14:11:26.372	f	t	\N	#ec0000
3835a682-e360-443c-8946-98e86c744943	d8c5e32f-c64d-4437-b302-3a64d8f3f116	Cuenta de Prueba 	DEBIT	9073977.70	CLP	t	\N	\N	2025-11-13 16:44:14.609	2026-01-08 18:46:00.772	f	t	\N	\N
0c046099-f7ff-4463-bf04-cdc01ecd9c09	346b32d1-b21f-4ce9-ac27-a69e67abb103	Lider BCI	CREDIT	821747.00	CLP	f	1000000.00	31	2025-11-18 16:40:18.575	2026-01-15 15:39:48.151	f	f	\N	#0053e2
2c6743e1-4096-45b1-9ebb-8b998cedda57	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander Cuotas	CREDIT	3000354.00	CLP	f	3000000.00	31	2025-11-25 18:33:19.275	2026-01-15 14:45:06.822	f	f	\N	\N
2e64b401-5a2f-4492-87c9-a618e7ba6f33	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander AMEX	CREDIT	6439902.00	CLP	f	8000000.00	31	2025-11-18 16:40:45.67	2026-01-16 15:14:39.149	f	f	\N	\N
8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	Prueba	CASH	7211780.00	CLP	f	\N	\N	2025-11-21 13:27:41.406	2025-12-10 16:09:44.353	f	t	\N	\N
2db62b9a-1133-4a34-96bc-429d267a2a2a	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Rut	DEBIT	794.00	CLP	f	\N	\N	2025-11-25 19:21:05.154	2026-01-14 12:53:06.413	f	t	\N	#ff7900
6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Corriente Scotiabank	DEBIT	20000.00	CLP	f	\N	\N	2025-11-25 19:19:19.533	2026-01-15 15:00:14.061	f	t	\N	#EC111A
af297afb-aa32-48f5-bee2-844713748199	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Itau	DEBIT	2265.00	CLP	f	\N	\N	2025-11-25 19:19:59.48	2025-11-25 19:19:59.48	f	t	\N	#FF6200
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "email", "password_hash", "name", "avatar_url", "currency", "country", "is_verified", "created_at", "updated_at", "default_shared_expense_account_id", "language") FROM stdin;
d8c5e32f-c64d-4437-b302-3a64d8f3f116	olguita.m8@gmail.com	$2b$10$m4eZRHBf8RzdCpuCIJVWa.7tsI7twVBtfXpDMDosQ/Fjbe0Jy0Am2	Olga Manyoma	\N	CLP	\N	f	2025-11-13 16:41:41.221	2025-12-01 13:51:25.831	3835a682-e360-443c-8946-98e86c744943	es
f06079b2-c6a7-421a-8c5c-287dbb21e3ca	pedroperez@gmail.com	$2b$10$KcpPa9V/Gn/6EjBPGSIyUOUE6LjzbBMH5q/o.lj1mvGcOhvr6hmNS	Pedro Perez	\N	CLP	\N	f	2025-11-21 13:26:44.885	2025-12-10 16:10:19.934	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	es
b88abd1d-92fe-4818-ba01-95681f09b96d	juanperez@gmail.com	$2b$10$ENEWWpfqdTygexUfCX2FQ.XK5yZrYh1HoA.OZePnLRqGyZlouU8ee	Juan Perez	\N	CLP	Chile	f	2025-11-21 13:28:03.574	2025-12-10 16:13:11.425	530b9e4b-d53a-440b-a713-51021e71436b	es
346b32d1-b21f-4ce9-ac27-a69e67abb103	jesusrangel.255@gmail.com	$2b$10$5XD4EXU3I6EoKNYnr40uyOIuvgceKIZR2JbxeNsYdW.KyzWv.L4fK	Jesus Leon Rangel	\N	CLP	Chile	f	2025-11-13 15:47:41.58	2025-12-19 13:22:52.814	d99144b6-5974-40e2-9f17-b36942774c9e	es
\.


--
-- Data for Name: budgets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."budgets" ("id", "user_id", "amount", "month", "year", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: category_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."category_templates" ("id", "name", "icon", "color", "type", "parent_template_id", "order_index", "is_system", "created_at", "updated_at") FROM stdin;
5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Medicinas	💊	#FDD0E0	EXPENSE	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	2	t	2026-01-09 19:42:05.002	2026-01-09 19:42:05.002
54c2b737-c12c-4585-ad58-49d01cda3663	Dentista	🦷	#FDD0E0	EXPENSE	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	3	t	2026-01-09 19:42:05.293	2026-01-09 19:42:05.293
962527f2-e449-4609-bbf0-4cfdc24aa005	Psicólogo	🧠	#FDD0E0	EXPENSE	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	4	t	2026-01-09 19:42:05.577	2026-01-09 19:42:05.577
52d71f14-963b-4091-832f-631fd70de3bc	Seguros	🛡️	#FDD0E0	EXPENSE	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	5	t	2026-01-09 19:42:05.865	2026-01-09 19:42:05.865
8b996ed9-e2f6-4737-86aa-ffba57eb6ee9	Cursos	📖	#C1DFFF	EXPENSE	b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	1	t	2026-01-09 19:42:06.186	2026-01-09 19:42:06.186
aa428f17-88ea-4571-800d-903645ab2013	Matrícula	🎒	#C1DFFF	EXPENSE	b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	3	t	2026-01-09 19:42:06.473	2026-01-09 19:42:06.473
08327e69-b348-4090-b5ba-da1a9c2d44e8	Materiales	✏️	#C1DFFF	EXPENSE	b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	4	t	2026-01-09 19:42:06.763	2026-01-09 19:42:06.763
2944171a-57ee-4d94-a998-40550458c9d2	Conferencias	🎤	#C1DFFF	EXPENSE	b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	5	t	2026-01-09 19:42:07.093	2026-01-09 19:42:07.093
b4ecc062-c6eb-47ca-b52d-e4ebe5e6dd84	Arriendo	🔑	#FFF5A6	EXPENSE	004d901d-4917-48a9-b32b-33cd132bc683	1	t	2026-01-09 19:42:07.379	2026-01-09 19:42:07.379
d1f5a24f-e46e-4a39-8ddb-8815439adbc4	Hipoteca	🏘️	#FFF5A6	EXPENSE	004d901d-4917-48a9-b32b-33cd132bc683	2	t	2026-01-09 19:42:07.662	2026-01-09 19:42:07.662
6168b028-49ef-4a6d-b8d0-a5944f4db7fa	Reparaciones	🔨	#FFF5A6	EXPENSE	004d901d-4917-48a9-b32b-33cd132bc683	3	t	2026-01-09 19:42:07.948	2026-01-09 19:42:07.948
97d3b9f5-5c8a-43a4-b495-f6fff4eb60d1	Muebles	🛋️	#FFF5A6	EXPENSE	004d901d-4917-48a9-b32b-33cd132bc683	4	t	2026-01-09 19:42:08.233	2026-01-09 19:42:08.233
fd586b2b-5549-4352-8290-45f92c8d8fe2	Decoración	🖼️	#FFF5A6	EXPENSE	004d901d-4917-48a9-b32b-33cd132bc683	5	t	2026-01-09 19:42:08.515	2026-01-09 19:42:08.515
a630f112-cfb9-48ba-85f8-425f411b6ddb	Vuelos	🛫	#D4F1FF	EXPENSE	702d01ba-9ee0-465e-a3a4-e652aafb1d87	1	t	2026-01-09 19:42:08.815	2026-01-09 19:42:08.815
c18fad8d-b81c-48f4-b6c1-692fdf329698	Hoteles	🏨	#D4F1FF	EXPENSE	702d01ba-9ee0-465e-a3a4-e652aafb1d87	2	t	2026-01-09 19:42:09.103	2026-01-09 19:42:09.103
71f40089-44a1-46a1-b443-7a529fa726b4	Tours	🗺️	#D4F1FF	EXPENSE	702d01ba-9ee0-465e-a3a4-e652aafb1d87	3	t	2026-01-09 19:42:09.404	2026-01-09 19:42:09.404
2f9f97c3-12f8-45ba-a820-cba51d33305a	Transporte Local	🚖	#D4F1FF	EXPENSE	702d01ba-9ee0-465e-a3a4-e652aafb1d87	4	t	2026-01-09 19:42:09.689	2026-01-09 19:42:09.689
5d4c1211-f01a-4f05-b631-27e0b83fc070	Comida	🍽️	#D4F1FF	EXPENSE	702d01ba-9ee0-465e-a3a4-e652aafb1d87	5	t	2026-01-09 19:42:09.994	2026-01-09 19:42:09.994
42204bb7-7b76-44ed-a668-5b80c5def775	Regalos	🎁	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	1	t	2026-01-09 19:42:10.283	2026-01-09 19:42:10.283
e317a211-fcf5-4311-b6b5-ca2a172a3888	Donaciones	❤️	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	2	t	2026-01-09 19:42:10.57	2026-01-09 19:42:10.57
b37a8198-99ee-4bac-9d00-07b0bf8df102	Mascotas	🐕	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	3	t	2026-01-09 19:42:10.859	2026-01-09 19:42:10.859
09e5b732-f65f-45da-bad7-2421b495f44a	Impuestos	📋	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	4	t	2026-01-09 19:42:11.145	2026-01-09 19:42:11.145
6870baf3-aa72-4c03-93c7-3e9cfeb89b76	Miscellaneous	🔮	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	5	t	2026-01-09 19:42:11.435	2026-01-09 19:42:11.435
875e0568-af0e-4014-9ef0-49f509961b3a	Pago de deuda	💰	#DCD5E8	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	6	t	2026-01-09 19:42:11.717	2026-01-09 19:42:11.717
e1dd8701-b920-4252-bc8a-26a23fed3fc1	Préstamo otorgado	🤝	#FF9800	EXPENSE	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	7	t	2026-01-09 19:42:12.001	2026-01-09 19:42:12.001
35e1feb2-b6d8-461c-a951-43f35be33f7a	Salario Base	💵	#55EFC4	INCOME	5c860420-37c1-4dfa-97c3-479367cdab55	1	t	2026-01-09 19:42:12.293	2026-01-09 19:42:12.293
02024cee-8c25-49b2-bb16-ccd979cd6c98	Bonificación	🎁	#55EFC4	INCOME	5c860420-37c1-4dfa-97c3-479367cdab55	2	t	2026-01-09 19:42:12.576	2026-01-09 19:42:12.576
34cbda84-c29e-4d99-a1b7-766fa5fd1954	Comisión	📈	#55EFC4	INCOME	5c860420-37c1-4dfa-97c3-479367cdab55	3	t	2026-01-09 19:42:12.862	2026-01-09 19:42:12.862
23d16b59-e8f4-4077-9d0e-66c66aad949b	Horas Extra	⏰	#55EFC4	INCOME	5c860420-37c1-4dfa-97c3-479367cdab55	4	t	2026-01-09 19:42:13.151	2026-01-09 19:42:13.151
634fd771-ce38-4453-bc0c-d077dc2d1af9	Ventas	📦	#FFC0CB	INCOME	176540a4-e2df-46ab-a53f-b8bdafbbeee9	1	t	2026-01-09 19:42:13.451	2026-01-09 19:42:13.451
bbdd3a8c-5bc2-4b15-ae32-48fa02059a10	Consultoría	📊	#FFC0CB	INCOME	176540a4-e2df-46ab-a53f-b8bdafbbeee9	3	t	2026-01-09 19:42:13.742	2026-01-09 19:42:13.742
7a300f92-7d8b-437d-9610-d68df363b9fd	Freelance	💻	#FFC0CB	INCOME	176540a4-e2df-46ab-a53f-b8bdafbbeee9	4	t	2026-01-09 19:42:14.035	2026-01-09 19:42:14.035
ed47d831-758e-46e5-907e-c86c381269ee	Dividendos	📊	#A8D8FF	INCOME	203a6fc2-772e-4c1f-8b59-eed72889ff54	1	t	2026-01-09 19:42:14.319	2026-01-09 19:42:14.319
5bcaf1d0-14a3-4663-9053-2e818e9a0a92	Intereses	💹	#A8D8FF	INCOME	203a6fc2-772e-4c1f-8b59-eed72889ff54	2	t	2026-01-09 19:42:14.604	2026-01-09 19:42:14.604
5ba7818f-cef7-4673-92b7-ee3853be93b0	Ganancias Bolsa	📉	#A8D8FF	INCOME	203a6fc2-772e-4c1f-8b59-eed72889ff54	3	t	2026-01-09 19:42:14.888	2026-01-09 19:42:14.888
9d3a0f41-2c60-468e-96e9-7c49078bfd77	Rentas	🏠	#A8D8FF	INCOME	203a6fc2-772e-4c1f-8b59-eed72889ff54	4	t	2026-01-09 19:42:15.166	2026-01-09 19:42:15.166
2bbb6ffe-0981-4d19-b411-93fc6282c409	Reembolsos	💸	#FFD93D	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	1	t	2026-01-09 19:42:15.443	2026-01-09 19:42:15.443
ddf939c9-c503-4f2f-8f08-69a50c2a6b7c	Herencias	👨‍👩‍👧‍👦	#FFD93D	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	2	t	2026-01-09 19:42:15.728	2026-01-09 19:42:15.728
319f71e3-d68d-432a-a729-8c5f8d95ce23	Apuestas	🎰	#FFD93D	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	3	t	2026-01-09 19:42:16.002	2026-01-09 19:42:16.002
f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Cobro de deuda	💸	#FFD93D	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	5	t	2026-01-09 19:42:16.286	2026-01-09 19:42:16.286
eae031aa-f92d-4cda-8255-0460ff158f67	Cobro de préstamo	💚	#4CAF50	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	6	t	2026-01-09 19:42:16.574	2026-01-09 19:42:16.574
bc564f5b-c237-4618-80c5-42158e85c422	Comida y Bebidas	🍔	#FF6B6B	EXPENSE	\N	1	t	2026-01-09 19:35:51.385	2026-01-09 19:35:51.385
96f7dffb-5f31-40f6-8c77-d860d40a9c3f	Transporte	🚗	#4ECDC4	EXPENSE	\N	2	t	2026-01-09 19:35:51.668	2026-01-09 19:35:51.668
fb61093e-c9bf-4503-b6bf-f46effbcbdd1	Compras	🛍️	#95E1D3	EXPENSE	\N	3	t	2026-01-09 19:35:51.949	2026-01-09 19:35:51.949
ca5201e2-c582-43e8-85ea-fc925753d6a2	Entretenimiento	🎮	#F38181	EXPENSE	\N	4	t	2026-01-09 19:35:52.234	2026-01-09 19:35:52.234
4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	Servicios	🔌	#AA96DA	EXPENSE	\N	5	t	2026-01-09 19:35:52.515	2026-01-09 19:35:52.515
b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	Salud	⚕️	#FCBAD3	EXPENSE	\N	6	t	2026-01-09 19:35:52.806	2026-01-09 19:35:52.806
b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	Educación	🎓	#A0C4FF	EXPENSE	\N	7	t	2026-01-09 19:35:53.097	2026-01-09 19:35:53.097
004d901d-4917-48a9-b32b-33cd132bc683	Vivienda	🏠	#FFE66D	EXPENSE	\N	8	t	2026-01-09 19:35:53.384	2026-01-09 19:35:53.384
702d01ba-9ee0-465e-a3a4-e652aafb1d87	Viajes	✈️	#B4E7FF	EXPENSE	\N	9	t	2026-01-09 19:35:53.69	2026-01-09 19:35:53.69
27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	Otros Gastos	📌	#C7CEEA	EXPENSE	\N	10	t	2026-01-09 19:35:53.975	2026-01-09 19:35:53.975
5c860420-37c1-4dfa-97c3-479367cdab55	Salario	💰	#00B894	INCOME	\N	1	t	2026-01-09 19:35:54.257	2026-01-09 19:35:54.257
176540a4-e2df-46ab-a53f-b8bdafbbeee9	Negocio	💼	#FF9FF3	INCOME	\N	2	t	2026-01-09 19:35:54.548	2026-01-09 19:35:54.548
203a6fc2-772e-4c1f-8b59-eed72889ff54	Inversiones	📈	#54A0FF	INCOME	\N	3	t	2026-01-09 19:35:54.828	2026-01-09 19:35:54.828
f34f75eb-40ca-4d05-85c2-c9c6c78c4526	Otros Ingresos	🎯	#FFA502	INCOME	\N	4	t	2026-01-09 19:35:55.15	2026-01-09 19:35:55.15
2a12ab4d-7fa0-4152-a026-58472dd91dcb	Transferencia entre cuentas	🔄	#4F46E5	TRANSFER	\N	1	t	2026-01-09 19:35:55.432	2026-01-09 19:35:55.432
c4374810-0308-4355-952e-17986d76f696	Restaurant	🍽️	#FF8787	EXPENSE	bc564f5b-c237-4618-80c5-42158e85c422	1	t	2026-01-09 19:35:55.713	2026-01-09 19:35:55.713
36aa155c-8121-41e7-b2b1-a399d6e6cb94	Delivery	🛵	#FF8787	EXPENSE	bc564f5b-c237-4618-80c5-42158e85c422	2	t	2026-01-09 19:35:56.009	2026-01-09 19:35:56.009
59df4af4-2c28-4012-a378-64a75ea413ce	Bar	🍺	#FF8787	EXPENSE	bc564f5b-c237-4618-80c5-42158e85c422	3	t	2026-01-09 19:35:56.295	2026-01-09 19:35:56.295
3fe9bf24-0404-4d34-b127-374bff382241	Cafetería	☕	#FF8787	EXPENSE	bc564f5b-c237-4618-80c5-42158e85c422	4	t	2026-01-09 19:35:56.58	2026-01-09 19:35:56.58
93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Supermercado	🛒	#FF8787	EXPENSE	bc564f5b-c237-4618-80c5-42158e85c422	5	t	2026-01-09 19:35:56.861	2026-01-09 19:35:56.861
b164b929-b9bd-47ee-b3ce-37eb9707abf7	Taxi/Uber	🚕	#5FE3D6	EXPENSE	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	1	t	2026-01-09 19:35:57.142	2026-01-09 19:35:57.142
ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Combustible	⛽	#5FE3D6	EXPENSE	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	2	t	2026-01-09 19:35:57.429	2026-01-09 19:35:57.429
a46700b8-5afe-4bbb-b220-44775fd27bb5	Transporte Público	🚌	#5FE3D6	EXPENSE	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	3	t	2026-01-09 19:35:57.717	2026-01-09 19:35:57.717
383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento	🅿️	#5FE3D6	EXPENSE	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	4	t	2026-01-09 19:35:58.006	2026-01-09 19:35:58.006
303ba75a-49dd-4c97-9607-328914066218	Mantenimiento Vehículo	🔧	#5FE3D6	EXPENSE	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	5	t	2026-01-09 19:35:58.291	2026-01-09 19:35:58.291
9e070bba-8eaf-4fee-bbf9-97c2d5e35241	Ropa	👕	#A8EFE0	EXPENSE	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	1	t	2026-01-09 19:35:58.571	2026-01-09 19:35:58.571
63fad128-ab67-4cec-9011-8750d6cb84fc	Electrónica	📱	#A8EFE0	EXPENSE	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	2	t	2026-01-09 19:35:58.851	2026-01-09 19:35:58.851
e5bf1a20-2016-4419-ac0b-2e13935c434b	Hogar	🏠	#A8EFE0	EXPENSE	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	3	t	2026-01-09 19:35:59.131	2026-01-09 19:35:59.131
054e193d-814a-4076-be9b-7bdb4025526e	Libros	📚	#A8EFE0	EXPENSE	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	4	t	2026-01-09 19:35:59.444	2026-01-09 19:35:59.444
8ea79ed5-7136-4a96-ae4d-0c5217538295	Otros	📦	#A8EFE0	EXPENSE	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	5	t	2026-01-09 19:35:59.777	2026-01-09 19:35:59.777
b4c24fd3-645d-4f21-94c6-327240df686a	Cine	🎬	#F5A5A5	EXPENSE	ca5201e2-c582-43e8-85ea-fc925753d6a2	1	t	2026-01-09 19:36:00.054	2026-01-09 19:36:00.054
8f648fef-31bb-431e-9501-02796969902d	Videojuegos	🎯	#F5A5A5	EXPENSE	ca5201e2-c582-43e8-85ea-fc925753d6a2	2	t	2026-01-09 19:36:00.332	2026-01-09 19:36:00.332
710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Streaming	📺	#F5A5A5	EXPENSE	ca5201e2-c582-43e8-85ea-fc925753d6a2	3	t	2026-01-09 19:36:00.617	2026-01-09 19:36:00.617
7ea4d9a2-7278-4d33-9467-661f55bf34df	Eventos	🎪	#F5A5A5	EXPENSE	ca5201e2-c582-43e8-85ea-fc925753d6a2	4	t	2026-01-09 19:36:00.899	2026-01-09 19:36:00.899
de94d76c-7367-490d-a7ec-dcbfee7d24f3	Hobbies	🎨	#F5A5A5	EXPENSE	ca5201e2-c582-43e8-85ea-fc925753d6a2	5	t	2026-01-09 19:36:01.179	2026-01-09 19:36:01.179
52a2a345-15f9-4494-93e8-8fd3d36913a5	Internet	📡	#C2B5EC	EXPENSE	4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	1	t	2026-01-09 19:36:01.461	2026-01-09 19:36:01.461
b6701d20-51bf-4d57-bbb3-47a5cf0aa7b3	Electricidad	💡	#C2B5EC	EXPENSE	4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	2	t	2026-01-09 19:36:01.74	2026-01-09 19:36:01.74
b3c89167-bdfb-4fe5-9452-13eba9eb58e4	Agua	💧	#C2B5EC	EXPENSE	4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	3	t	2026-01-09 19:36:02.018	2026-01-09 19:36:02.018
df6782b9-5c24-471e-b57e-1ab9220f72eb	Teléfono	☎️	#C2B5EC	EXPENSE	4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	4	t	2026-01-09 19:36:02.302	2026-01-09 19:36:02.302
8ead2cd4-6b2c-489b-ac4e-386f0db8dbe5	Gas	🔥	#C2B5EC	EXPENSE	4d3f46b5-a8d0-4c26-92cd-45d5e64d5713	5	t	2026-01-09 19:36:02.593	2026-01-09 19:36:02.593
e72fa961-c75d-4b52-9ac8-242475226724	Doctor	👨‍⚕️	#FDD0E0	EXPENSE	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	1	t	2026-01-09 19:36:02.878	2026-01-09 19:36:02.878
0088e3fe-95c4-409b-bb2e-dacd3cfb27cf	Libros	📕	#C1DFFF	EXPENSE	b78c8058-fa2e-4b68-8c6e-a998b9aa7d88	2	t	2026-01-13 17:57:52.624	2026-01-13 17:57:52.624
b9df280a-0532-40e1-a153-b09d0212a3ae	Servicios	🛠️	#FFC0CB	INCOME	176540a4-e2df-46ab-a53f-b8bdafbbeee9	2	t	2026-01-13 17:57:53.545	2026-01-13 17:57:53.545
9917f335-2661-4193-9bb2-c1dd59b75095	Otros	⭐	#FFD93D	INCOME	f34f75eb-40ca-4d05-85c2-c9c6c78c4526	4	t	2026-01-13 17:57:54.434	2026-01-13 17:57:54.434
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."groups" ("id", "name", "description", "cover_image_url", "created_by", "default_split_type", "created_at", "updated_at") FROM stdin;
529a7b84-0680-4735-8fcd-e76fdb185245	Familia	Gastos de la casa con mi esposa	👨‍👩‍👧‍👦	346b32d1-b21f-4ce9-ac27-a69e67abb103	PERCENTAGE	2025-11-17 16:41:33.761	2025-11-17 16:41:33.761
af91d65e-bed3-4edd-b6c5-cc8caf2c0736	Office	Grupo para pruebas	🎬	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PERCENTAGE	2025-11-21 13:29:43.611	2025-11-21 13:29:43.611
\.


--
-- Data for Name: shared_expenses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_expenses" ("id", "group_id", "paid_by_user_id", "amount", "description", "category_id", "date", "receipt_url", "split_type", "created_at", "updated_at") FROM stdin;
ea9ef05d-3077-437f-a6c6-041ad9f51932	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	829452.00	Cuota credito hipotecario	\N	2025-11-18 16:43:22.342	\N	PERCENTAGE	2025-11-18 16:43:22.342	2025-11-18 16:43:22.342
3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5511.00	Potes redondos vidrio	\N	2025-11-03 00:00:00	\N	PERCENTAGE	2025-11-18 17:19:40.255	2025-11-18 17:19:40.255
4c9e222c-8b40-4cf6-8816-7ff5348f3a71	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	17600.00	Dr Simi, Espironolactona Acido Folico	\N	2025-11-01 00:00:00	\N	PERCENTAGE	2025-11-18 17:19:54.815	2025-11-18 17:19:54.815
c79948dc-eeb2-47a3-b510-e23749afbe8f	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51490.00	Seguro Cleopatra	\N	2025-11-01 00:00:00	\N	PERCENTAGE	2025-11-18 17:20:05.595	2025-11-18 17:20:05.595
35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3490.00	Cortina del Baño	\N	2025-11-03 00:00:00	\N	PERCENTAGE	2025-11-18 17:20:25.507	2025-11-18 17:20:25.507
f933114d-930a-4bce-b125-0efb4a57fd9f	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	30000.00	Fersitol y Vitamina D	\N	2025-11-03 00:00:00	\N	PERCENTAGE	2025-11-18 17:20:35.634	2025-11-18 17:20:35.634
fbeb7792-a9a4-456a-954e-92ae429165bc	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3600.00	Cabezal de ducha	\N	2025-11-04 00:00:00	\N	PERCENTAGE	2025-11-18 17:20:50.29	2025-11-18 17:20:50.29
e778dea8-7118-458b-a395-db29bac53239	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	1700.00	Bolsas de dustin	\N	2025-11-04 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:00.686	2025-11-18 17:21:00.686
803a0356-284a-4a30-9547-fd80918575f3	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	29094.00	Internet	4085e389-cc55-4db1-9147-6ede27ea05b7	2025-11-05 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:11.165	2025-11-18 17:21:11.165
7d8e34fe-a721-4f87-a832-29b8762195f1	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	10000.00	Gasolina	\N	2025-11-09 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:21.149	2025-11-18 17:21:21.149
bb4da131-5047-4cb2-baf9-9eaa47e33dc2	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	17617.00	Agua de la casa	4085e389-cc55-4db1-9147-6ede27ea05b7	2025-11-13 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:32.277	2025-11-18 17:21:32.277
ebcbb572-de8d-4a37-8a13-de78c9548bc1	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	306586.00	Cuota Cleopatra	\N	2025-11-13 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:43.187	2025-11-18 17:21:43.187
68b3dff6-7db5-4fdf-a522-269f760db361	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	66121.00	Luz	4085e389-cc55-4db1-9147-6ede27ea05b7	2025-11-13 00:00:00	\N	PERCENTAGE	2025-11-18 17:21:52.672	2025-11-18 17:21:52.672
93233d94-a005-40ac-8f8a-422a26a0828a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	104540.00	Carnes del mes	\N	2025-11-14 00:00:00	\N	PERCENTAGE	2025-11-18 17:22:14.964	2025-11-18 17:22:14.964
74e7fea1-2988-4415-919d-57b0e13cd1d1	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8200.00	Aguacates y Cambur	\N	2025-11-01 00:00:00	\N	PERCENTAGE	2025-11-18 19:37:25.605	2025-11-18 19:37:25.605
552f31a9-1dbe-44d1-bc52-6221ff3b180d	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6390.00	compras varias	\N	2025-11-08 00:00:00	\N	PERCENTAGE	2025-11-18 19:37:38.002	2025-11-18 19:37:38.002
8f79cf8d-2743-465d-a084-2a1c40ea156d	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6434.00	Mani y Frutos Secos	\N	2025-11-08 00:00:00	\N	PERCENTAGE	2025-11-18 19:37:49.73	2025-11-18 19:37:49.73
1842b47c-b8f0-4579-8166-4c699cbf6a48	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15600.00	Compras feria	\N	2025-11-08 00:00:00	\N	PERCENTAGE	2025-11-18 19:38:01.473	2025-11-18 19:38:01.473
f3e2892b-db6c-423d-aa28-c27373b2c145	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3250.00	compras feria	\N	2025-11-08 00:00:00	\N	PERCENTAGE	2025-11-18 19:38:13.509	2025-11-18 19:38:13.509
e22492b5-6775-40a4-92bb-99b9b4757e07	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2850.00	compras feria	\N	2025-11-08 00:00:00	\N	PERCENTAGE	2025-11-18 19:38:24.607	2025-11-18 19:38:24.607
45e81ef3-55fc-4d06-8cc9-40beae0195e4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	12900.00	2 cajas de huevos	\N	2025-11-09 00:00:00	\N	PERCENTAGE	2025-11-18 19:38:35.797	2025-11-18 19:38:35.797
4569af55-fb0a-4766-aa37-eddb2cda2ed6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	25550.00	Compras varias, atun,camarones legucha otros	\N	2025-11-10 00:00:00	\N	PERCENTAGE	2025-11-18 19:38:47.344	2025-11-18 19:38:47.344
18ce2bd5-86f8-481a-953f-4a5a1e898aad	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	11980.00	Vaso de la Licuadora d	\N	2025-11-03 00:00:00	\N	PERCENTAGE	2025-11-18 16:53:03.105	2025-11-19 12:17:08.689
ba47ca58-eb1c-408a-81e0-698db5373791	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	20494.00	Potes de vidrio	\N	2025-11-03 00:00:00	\N	PERCENTAGE	2025-11-18 16:53:12.915	2025-11-19 12:20:04.986
2cb86c12-69e2-47b5-93cd-bbcc44321ef3	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3890.00	Compras varias	\N	2025-11-19 15:09:32.088	\N	PERCENTAGE	2025-11-19 15:09:32.088	2025-11-19 15:09:32.088
b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4059.00	Estacionamiento Isidora Goyenechea	\N	2025-11-19 15:33:18.642	\N	PERCENTAGE	2025-11-19 15:33:18.642	2025-11-19 15:33:18.642
1548acaf-10b4-4ed7-88a7-6dd07489a58a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	17807.00	Compras varias 	\N	2025-11-19 15:34:40.824	\N	PERCENTAGE	2025-11-19 15:34:40.824	2025-11-19 15:35:43.768
47754d59-4b36-422f-9aef-51a2a497ac3e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	12900.00	2 cajas de huevos super	\N	2025-11-19 15:37:21.22	\N	PERCENTAGE	2025-11-19 15:37:21.22	2025-11-19 15:37:21.22
7b160b4a-383a-4766-97be-309455f9dd17	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8032.00	Frutos secos	\N	2025-11-19 15:38:39.056	\N	PERCENTAGE	2025-11-19 15:38:39.056	2025-11-19 15:38:39.056
4a9d901f-0935-4abf-a385-fdf4d39b7eb5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	550.00	Estacionamiento	\N	2025-11-19 17:07:25.048	\N	PERCENTAGE	2025-11-19 17:07:25.048	2025-11-19 17:07:25.048
d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	14190.00	Suscripción de mercadolirbe + disney	\N	2025-11-19 17:09:27.462	\N	PERCENTAGE	2025-11-19 17:09:27.462	2025-11-19 17:09:27.462
6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	33596.00	Compras moldes torta, ejercicios	\N	2025-11-19 17:10:31.219	\N	PERCENTAGE	2025-11-19 17:10:31.219	2025-11-19 17:10:31.219
18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	13500.00	Huevos	\N	2025-10-31 00:00:00	\N	PERCENTAGE	2025-11-18 19:37:12.134	2025-11-19 17:29:20.446
b72074b4-13a7-4040-9e57-ff0c0b8616f5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	42970.00	Regalo cumple Jose	\N	2025-11-20 20:26:14.786	\N	PERCENTAGE	2025-11-20 20:26:14.786	2025-11-20 20:26:14.786
dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15880.00	Netflix	\N	2025-11-14 00:00:00	\N	PERCENTAGE	2025-11-18 17:22:03.501	2025-11-21 12:38:12.911
5f1f4bf4-9173-47b0-b2cf-61e83dab816b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8250.00	Spotify	\N	2025-11-01 00:00:00	\N	PERCENTAGE	2025-11-18 17:20:16.074	2025-11-21 12:38:55.162
7fa4a7f7-a048-4e21-8fdd-47e190568efa	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	21211.00	Decoracion navidad (pelotas de Mickey)	\N	2025-11-20 20:27:25.304	\N	PERCENTAGE	2025-11-20 20:27:25.304	2025-11-20 20:27:25.304
2623f91f-e469-42e8-82c5-2d695118d5e5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2000.00	Estacionamiento mall	\N	2025-11-20 20:28:56.132	\N	PERCENTAGE	2025-11-20 20:28:56.132	2025-11-20 20:28:56.132
7d5dc01b-a747-4119-a29a-46138e7d511a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15500.00	Gasolina	\N	2025-11-20 20:29:54.008	\N	PERCENTAGE	2025-11-20 20:29:54.008	2025-11-20 20:29:54.008
2d20baaf-0896-4bb0-a402-182517e677bb	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	61213.00	Cosas que faltaban desodorante,  papel, jabon etc	\N	2025-11-20 20:31:34.995	\N	PERCENTAGE	2025-11-20 20:31:34.995	2025-11-20 20:31:34.995
572273cc-a7f4-42c2-8acc-80357317cc62	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	35770.00	CoenzimaQ10	\N	2025-11-20 20:45:48.293	\N	PERCENTAGE	2025-11-20 20:45:48.293	2025-11-20 20:45:48.293
91b1b337-3960-4b9c-8a47-e4ea0e6989fd	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5593.00	Susciprcion Hbo Max	\N	2025-11-19 17:08:36.101	\N	PERCENTAGE	2025-11-19 17:08:36.101	2025-11-21 12:37:29.24
d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	80000.00	Prueba 1	\N	2025-11-25 12:57:51.002	\N	PERCENTAGE	2025-11-25 12:57:51.002	2025-11-25 12:57:51.002
e4c29aa9-74ba-4386-b89a-fb0220e274da	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	10000.00	Prueba 2	\N	2025-11-25 12:58:25.195	\N	EQUAL	2025-11-25 12:58:25.195	2025-11-25 12:58:25.195
b91e5888-a0a1-46ca-beb5-98348337bd53	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	40000.00	Prueba	\N	2025-11-25 12:59:33.588	\N	PERCENTAGE	2025-11-25 12:59:33.588	2025-11-25 12:59:33.588
765e5daa-b241-482e-a7d6-d5a84bb0e8cf	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	193776.00	Gastos Comunes Octubre	\N	2025-11-25 18:28:28.51	\N	PERCENTAGE	2025-11-25 18:28:28.51	2025-11-25 18:28:28.51
75181c74-3105-4be0-8321-b5b70231fe3a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15000.00	Gasolina	\N	2025-11-25 18:30:21.019	\N	PERCENTAGE	2025-11-25 18:30:21.019	2025-11-25 18:30:21.019
3dc18619-27fc-48a5-9d7a-9f4b757d80ce	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2600.00	Compras varias	\N	2025-11-26 17:18:03.405	\N	PERCENTAGE	2025-11-26 17:18:03.405	2025-11-26 17:18:03.405
ca6927eb-05a0-44fa-9f68-7df6019e30de	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	7500.00	Tomate, cebolla y aguacates para la semana	\N	2025-11-26 17:19:26.046	\N	PERCENTAGE	2025-11-26 17:19:26.046	2025-11-26 17:19:26.046
5f0afa26-d88b-4fbc-9f6b-218fff7f4928	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6280.00	Compras Hamburguesas	\N	2025-11-26 17:20:24.969	\N	PERCENTAGE	2025-11-26 17:20:24.969	2025-11-26 17:20:24.969
d7dfb498-63ee-475c-bec0-3f56ee6e0a78	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2880.00	Pimenton y zanahorias	\N	2025-11-26 17:21:26.065	\N	PERCENTAGE	2025-11-26 17:21:26.065	2025-11-26 17:21:26.065
437cbb46-b4e4-4fa8-9856-6c7a23a2c691	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	18046.00	Huevos, Mostaza y Queso Mozarella	\N	2025-11-26 17:23:01.33	\N	PERCENTAGE	2025-11-26 17:23:01.33	2025-11-26 17:23:01.33
98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4990.00	Cosito para cortar panes	\N	2025-11-27 19:29:36.747	\N	PERCENTAGE	2025-11-27 19:29:36.747	2025-11-27 19:31:00.43
f766dd50-9d76-4c35-b1f0-31a1665ff17b	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	30494.00	Agua de tomar	\N	2025-11-27 19:36:37.415	\N	PERCENTAGE	2025-11-27 19:36:37.415	2025-11-27 19:36:37.415
c5c40a95-7b3f-46a5-aa6b-baeae48bac97	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10190.00	Cascanueces de navidad	\N	2025-11-27 19:44:46.692	\N	PERCENTAGE	2025-11-27 19:44:46.692	2025-11-27 19:44:46.692
69f3d9c7-06ca-48fd-866f-5ac583d83ea8	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	100000.00	prueba	\N	2025-11-27 20:12:29.285	\N	PERCENTAGE	2025-11-27 20:12:29.285	2025-11-27 20:12:29.285
ae157bab-ec8a-47c9-bc09-f6a8cc86d872	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	76000.00	Proteina en polvo vainilla y cake	\N	2025-11-28 12:56:30.487	\N	PERCENTAGE	2025-11-28 12:56:30.487	2025-11-28 12:56:30.487
050960db-eb58-4b40-9491-43e3bd07d6b8	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	11000.00	Gasolina	\N	2025-11-28 13:00:54.258	\N	PERCENTAGE	2025-11-28 13:00:54.258	2025-11-28 13:00:54.258
1410a808-8dfa-4536-ba2e-96ed415546b3	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	830069.00	Cuota 71/360	\N	2025-12-01 15:12:05.486	\N	PERCENTAGE	2025-12-01 15:12:05.486	2025-12-01 15:12:05.486
d432f78f-4419-4e3e-a9b4-45b29139169a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	7642.00	Cascanueces pequeños	\N	2025-12-01 15:13:08.289	\N	PERCENTAGE	2025-12-01 15:13:08.289	2025-12-01 15:13:08.289
95a36900-4535-4104-939b-3dea76745659	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8250.00	Spotify 	\N	2025-12-01 15:14:22.648	\N	PERCENTAGE	2025-12-01 15:14:22.648	2025-12-01 15:14:22.648
4d389beb-3ce1-4777-8347-fb8313ac388e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51537.00	Seguro Cleopatra	\N	2025-12-01 15:15:53.022	\N	PERCENTAGE	2025-12-01 15:15:53.022	2025-12-01 15:15:53.022
567b3b22-06c7-43f5-bfd7-439001a241fc	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	20500.00	Compras Navidad	\N	2025-11-30 12:48:08.455	\N	PERCENTAGE	2025-12-01 12:48:08.455	2025-12-01 12:48:08.455
2ec956fb-f2fd-4845-9a27-6e314d8d9335	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	14000.00	Compras Navidad	\N	2025-11-30 12:46:55.182	\N	PERCENTAGE	2025-12-01 12:46:55.182	2025-12-01 12:46:55.182
a92509e9-742c-4594-ad4c-3698ad42f3fb	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	21232.00	Compras para la semana	\N	2025-11-30 12:45:11.992	\N	PERCENTAGE	2025-12-01 12:45:11.992	2025-12-01 12:45:11.992
5c595cc5-bb18-4234-8143-afe9185268f7	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2940.00	Patas de pollo para dustin	\N	2025-11-29 12:44:03.812	\N	PERCENTAGE	2025-12-01 12:44:03.812	2025-12-01 12:44:03.812
132afb3f-2d58-49c6-8db4-35acf85ed773	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4550.00	Rapi turbo aceitunas para oma bakery	\N	2025-11-29 01:54:44.438	\N	PERCENTAGE	2025-11-30 01:54:44.438	2025-11-30 01:54:44.438
dac8989b-541c-4875-a086-d347fb1168d0	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15000.00	Gasolina	\N	2025-11-29 01:55:34.642	\N	PERCENTAGE	2025-11-30 01:55:34.642	2025-11-30 01:55:34.642
4f40afb8-d635-43dd-91a0-eadcacbdf008	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	64740.00	1 cQ10, 1 mageniso, 1 omega 3	\N	2025-12-02 14:02:21.673	\N	PERCENTAGE	2025-12-02 14:02:21.673	2025-12-02 14:02:21.673
d7b0a41b-c9ef-4360-a958-a86a250ad711	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	36300.00	FersitolD, espironolocatona x2, acido folico, trioval	\N	2025-12-02 16:27:07.905	\N	PERCENTAGE	2025-12-02 16:27:07.905	2025-12-02 16:27:07.905
b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	30526.00	Agua fria de la casa	\N	2025-12-02 17:18:54.612	\N	PERCENTAGE	2025-12-02 17:18:54.612	2025-12-02 17:18:54.612
aeeb577b-56f1-44ff-a38f-b03cc638b92e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	12000.00	10 cajas espironolactona	\N	2025-12-04 17:13:19.882	\N	PERCENTAGE	2025-12-04 17:13:19.882	2025-12-04 17:13:19.882
d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	18000.00	Caja de huevos	\N	2025-12-04 17:16:51.606	\N	PERCENTAGE	2025-12-04 17:16:51.606	2025-12-04 17:16:51.606
bcf29d50-0335-412a-850f-6606c6239140	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	10952.00	Camarones y Aguacate	\N	2025-12-05 01:01:28.002	\N	PERCENTAGE	2025-12-05 01:01:28.002	2025-12-05 01:01:28.002
cb79af54-88d1-4d25-b3e2-04ab4d6469de	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	9446.00	rollo de papel film 300 metros	\N	2025-12-05 01:04:00.185	\N	PERCENTAGE	2025-12-05 01:04:00.185	2025-12-05 01:04:00.185
c4d60af0-5577-4aed-b163-37bc4bda34d5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	12229.00	Maquina al vacío	\N	2025-12-05 01:07:37.503	\N	PERCENTAGE	2025-12-05 01:07:37.503	2025-12-05 01:07:37.503
f09eee37-2f7a-49a8-a13f-02011e30886e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5000.00	Pimentones y achiote en la vega	\N	2025-12-09 13:45:29.495	\N	PERCENTAGE	2025-12-09 13:45:29.495	2025-12-09 13:45:29.495
38440bab-1156-40ea-b36b-566428afc183	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	18170.00	Tablas de picar, y otras cosas	\N	2025-12-09 13:48:39.041	\N	PERCENTAGE	2025-12-09 13:48:39.041	2025-12-09 13:48:39.041
e7efdd29-bb34-424d-a398-5eb7d08dc196	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2000.00	Estacionamiento plaza egaña	\N	2025-12-09 13:49:48.647	\N	PERCENTAGE	2025-12-09 13:49:48.647	2025-12-09 13:49:48.647
21599688-2919-4e83-bdfa-c17f15423a4e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	29501.00	Internet de la casa	\N	2025-12-09 13:50:55.843	\N	PERCENTAGE	2025-12-09 13:50:55.843	2025-12-09 13:50:55.843
cdaee396-11b0-493b-adfd-0165b0e746b9	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	27700.00	Compras navidad luces y adornos	\N	2025-12-09 13:52:10.337	\N	PERCENTAGE	2025-12-09 13:52:10.337	2025-12-09 13:52:10.337
bc1cca85-958b-47e0-b8d6-ef0d9360f162	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	10980.00	Trioval 	\N	2025-12-09 13:53:21.782	\N	PERCENTAGE	2025-12-09 13:53:21.782	2025-12-09 13:53:21.782
d397c294-5528-462c-93c5-7a9f532c10bd	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	13686.00	Agua de la casa	\N	2025-12-09 13:54:21.649	\N	PERCENTAGE	2025-12-09 13:54:21.649	2025-12-09 13:54:21.649
a62957f9-4cf6-47c1-90e8-26bc3177c199	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3204.00	Tag Vespucio Sur	\N	2025-12-09 13:56:19.457	\N	PERCENTAGE	2025-12-09 13:56:19.457	2025-12-09 13:56:19.457
a00572a0-c260-44a4-82db-7763e84f19f6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3204.00	Tag Vespucio Sur	\N	2025-12-09 13:56:40.093	\N	PERCENTAGE	2025-12-09 13:56:40.093	2025-12-09 13:56:40.093
5522da68-5276-49cd-a9a6-a45620cf64c6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3204.00	Tag Vespucio Sur	\N	2025-12-09 13:57:00.1	\N	PERCENTAGE	2025-12-09 13:57:00.1	2025-12-09 13:57:00.1
c54bb4e0-ba81-4a25-8c03-e963ce63e68e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	1200.00	Compras en los chinos	\N	2025-12-09 14:05:32.562	\N	PERCENTAGE	2025-12-09 14:05:32.562	2025-12-09 14:05:32.562
2dd44eae-c796-4522-b14e-9dee4aa085a0	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4670.00	Compras varias en lider	\N	2025-12-09 14:07:03.617	\N	PERCENTAGE	2025-12-09 14:07:03.617	2025-12-09 14:07:03.617
91b446c8-d142-4708-96c2-7f2881a1baba	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	17653.00	Compras en la vega	\N	2025-12-09 14:08:27.962	\N	PERCENTAGE	2025-12-09 14:08:27.962	2025-12-09 14:08:27.962
983a2e37-6703-4b0d-bf76-665b39177157	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	18600.00	Compras en la vega	\N	2025-12-09 14:09:27.27	\N	PERCENTAGE	2025-12-09 14:09:27.27	2025-12-09 14:09:27.27
62421dc7-a070-4ed6-b48e-a20d5c68d13c	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5000.00	Compras en la vega	\N	2025-12-09 14:10:24.921	\N	PERCENTAGE	2025-12-09 14:10:24.921	2025-12-09 14:10:24.921
b3d56223-0bc4-4e22-9bc0-ebe3a5e4e62a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	10700.00	Compras en la vega (plásticos)	\N	2025-12-09 14:11:46.579	\N	PERCENTAGE	2025-12-09 14:11:46.579	2025-12-09 14:11:46.579
b1aaab99-34e0-4093-92f2-3a3e0371cf7e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3200.00	Estacionamiento en la vega	\N	2025-12-09 14:12:44.977	\N	PERCENTAGE	2025-12-09 14:12:44.977	2025-12-09 14:12:44.977
c3bbc20d-5db5-4d1e-95e4-e0ba4d4db016	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	34710.00	Carnes para las hallacas	\N	2025-12-09 14:14:23.862	\N	PERCENTAGE	2025-12-09 14:14:23.862	2025-12-09 14:14:23.862
c1b7b1ba-f35a-4f7b-99f9-bb7986383485	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6200.00	Compras en la vega	\N	2025-12-09 14:15:09.461	\N	PERCENTAGE	2025-12-09 14:15:09.461	2025-12-09 14:15:09.461
dd946b44-29fc-419a-b9a2-775ffe6504eb	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2000.00	Compras en la vega	\N	2025-12-09 14:16:02.614	\N	PERCENTAGE	2025-12-09 14:16:02.614	2025-12-09 14:16:02.614
6b88b35b-bbfb-49c0-a052-dec38d0bff5c	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6500.00	Compras en la vega	\N	2025-12-09 14:16:53.032	\N	PERCENTAGE	2025-12-09 14:16:53.032	2025-12-09 14:16:53.032
67c6757a-3c05-48ea-bc0b-866fc49bafef	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4800.00	Compras en la vega	\N	2025-12-09 14:17:44.85	\N	PERCENTAGE	2025-12-09 14:17:44.85	2025-12-09 14:17:44.85
6bef0e91-a061-4ed4-92a5-a5d2277d4c1a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5000.00	Compras en la vega	\N	2025-12-09 14:18:37.159	\N	PERCENTAGE	2025-12-09 14:18:37.159	2025-12-09 14:18:37.159
dba127f1-4545-4f50-88e6-e65f262e1f58	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8230.00	Compras en la vega	\N	2025-12-09 14:19:28.377	\N	PERCENTAGE	2025-12-09 14:19:28.377	2025-12-09 14:19:28.377
237759f6-da8c-412d-aa33-0822bd937dd6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	17200.00	Compra la vega, camarones, atun y especies	\N	2025-12-09 14:20:26.302	\N	PERCENTAGE	2025-12-09 14:20:26.302	2025-12-09 14:20:26.302
96e7c874-8c93-4dcd-a011-078d4addde80	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6870.00	Compras varias	\N	2025-12-09 14:22:34.285	\N	PERCENTAGE	2025-12-09 14:22:34.285	2025-12-09 14:22:34.285
f793c041-cb25-40b4-87bb-97b5c403bbf0	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	100000.00	prueba	\N	2025-12-10 16:09:36.228	\N	EQUAL	2025-12-10 16:09:36.228	2025-12-10 16:09:36.228
15658593-c707-4e38-a84b-a222b5509899	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51990.00	Comida Dustin	\N	2025-12-12 17:13:46.299	\N	PERCENTAGE	2025-12-12 17:13:46.299	2025-12-12 17:13:46.299
9b452557-46f2-4054-85c8-93a08371fbcf	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	21000.00	Baño a cleopatra	\N	2025-12-12 17:16:01.771	\N	PERCENTAGE	2025-12-12 17:16:01.771	2025-12-12 17:16:01.771
95abca17-88fd-491d-993b-3cd08c6c5904	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	11600.00	Chucherias	\N	2025-12-15 16:44:07.471	\N	PERCENTAGE	2025-12-15 16:44:07.471	2025-12-15 16:44:07.471
a7401b4b-f38d-475c-9260-94437dedb8a4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15880.00	Suscripción de Netflix	\N	2025-12-15 16:45:35.358	\N	PERCENTAGE	2025-12-15 16:45:35.358	2025-12-15 16:45:35.358
760743c0-bdc5-4424-b0bc-7f7a2cf1d353	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8239.00	1 kg pechuga deshuesada	\N	2025-12-15 16:51:19.413	\N	PERCENTAGE	2025-12-15 16:51:19.413	2025-12-15 16:51:19.413
a3eba116-8c33-4228-b0be-7053a24cb357	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4190.00	Compras varias en el lider	\N	2025-12-15 16:55:50.609	\N	PERCENTAGE	2025-12-15 16:55:50.609	2025-12-15 16:55:50.609
572fcb3c-5c15-4c21-8e97-72eaae8ef7af	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	306586.00	Cuota cleopatra 12/36	\N	2025-12-16 13:58:29.673	\N	PERCENTAGE	2025-12-16 13:58:29.673	2025-12-16 13:58:29.673
18e1b6bd-cb07-4b00-b614-c401b3b80a15	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51646.00	Luz de la casa	\N	2025-12-16 14:00:42.493	\N	PERCENTAGE	2025-12-16 14:00:42.493	2025-12-16 14:00:42.493
f96ae693-623d-4831-aadd-13b0625179b6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6713.00	Suscripción Hbo Max	\N	2025-12-18 21:03:13.384	\N	PERCENTAGE	2025-12-18 21:03:13.384	2025-12-18 21:03:13.384
887152ce-ed9e-44e1-8336-c1f4e8e900e4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	12990.00	Suscripción mercadolibre + disney	\N	2025-12-18 21:04:20.751	\N	PERCENTAGE	2025-12-18 21:04:20.751	2025-12-18 21:04:20.751
6808c0e9-ff25-4888-a5ff-0f9a5ee90420	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5940.00	Tortillitas y servilletas	\N	2025-12-16 14:21:49.146	\N	PERCENTAGE	2025-12-16 14:21:49.146	2025-12-18 21:08:30.537
42496f51-a385-4fcf-8276-445616899437	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15020.00	Compras perros caliente	\N	2025-12-18 21:11:22.689	\N	PERCENTAGE	2025-12-18 21:11:22.689	2025-12-18 21:11:22.689
97e6402f-2c9c-4a2f-9abe-1525d7c3acff	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	137645.00	Impuestos casa 4/4	\N	2025-12-18 21:19:17.525	\N	PERCENTAGE	2025-12-18 21:19:17.525	2025-12-18 21:19:17.525
3afd939d-8724-4633-8101-016b8cd1b7d7	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	850.00	Estacionamiento mall	\N	2025-12-22 13:53:26.623	\N	PERCENTAGE	2025-12-22 13:53:26.623	2025-12-22 13:53:26.623
d6621bad-11d5-43c2-9cd6-6e04c71b9c42	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15000.00	Gasolina	\N	2025-12-22 13:54:34.333	\N	PERCENTAGE	2025-12-22 13:54:34.333	2025-12-22 13:54:34.333
17210896-4caa-491a-a91b-39c6c3ee1f6a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6900.00	Estacionamiento mall dia de cine	\N	2025-12-22 13:56:10.361	\N	PERCENTAGE	2025-12-22 13:56:10.361	2025-12-22 13:56:10.361
4eb62da7-111f-4444-b433-f9ad8a808fcd	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4361.00	Compras varias	\N	2025-12-22 14:05:24.948	\N	PERCENTAGE	2025-12-22 14:05:24.948	2025-12-22 14:05:24.948
1218977d-425a-4a22-b667-d5256d4e14bd	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3580.00	Compras varias	\N	2025-12-22 14:08:29.821	\N	PERCENTAGE	2025-12-22 14:08:29.821	2025-12-22 14:08:29.821
e116c785-ae64-4fb8-8b63-8ba8bfb0dc02	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6765.00	Estacionamiento la birra bar	\N	2025-12-22 14:24:31.371	\N	PERCENTAGE	2025-12-22 14:24:31.371	2025-12-22 14:24:31.371
ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	18000.00	Caja de Huevos	\N	2025-12-22 14:06:42.027	\N	PERCENTAGE	2025-12-22 14:06:42.027	2025-12-22 14:26:48.473
ab2845ae-a6e8-460d-9184-1361ea8785da	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	7990.00	Guantes negros	\N	2025-12-23 14:42:34.226	\N	PERCENTAGE	2025-12-23 14:42:34.226	2025-12-23 14:42:34.226
daeb613d-1f36-4d0e-80e5-cda08166368a	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	170201.00	Gastos comunes noviembre	\N	2025-12-23 14:45:37.013	\N	PERCENTAGE	2025-12-23 14:45:37.013	2025-12-23 14:45:37.013
2f154765-d2c9-487c-aae6-db34f06b24fc	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	116730.00	Carnes del mes	\N	2025-12-26 12:35:59.687	\N	PERCENTAGE	2025-12-26 12:35:59.687	2025-12-26 12:35:59.687
0e9c2965-24f0-4a2d-bb14-3a673bfdb467	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15200.00	Compras bebidas para el 24	\N	2025-12-26 12:37:51.737	\N	PERCENTAGE	2025-12-26 12:37:51.737	2025-12-26 12:37:51.737
7f36af3a-cb00-4e88-8eb5-9447822cbb52	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3990.00	Compras varias	\N	2025-12-26 15:16:10.799	\N	PERCENTAGE	2025-12-26 15:16:10.799	2025-12-26 15:16:45.091
094254a7-4ffa-4841-a67b-017995c7d83d	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	42114.00	Gasolina	\N	2025-12-26 15:19:00.249	\N	PERCENTAGE	2025-12-26 15:19:00.249	2025-12-26 15:19:00.249
4e5bd49e-a5bc-475b-9162-cddf306dd0c8	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	9570.00	Compras torta 3 leches	\N	2025-12-26 15:21:35.004	\N	PERCENTAGE	2025-12-26 15:21:35.004	2025-12-26 15:21:35.004
7341968e-73f7-4e8e-b941-46bab963382c	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	5170.00	Compras varias	\N	2025-12-26 15:17:57.74	\N	PERCENTAGE	2025-12-26 15:17:57.74	2025-12-28 14:48:16.768
cc2ab76e-71f8-4a9f-b0f3-31c2d821657b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	20200.00	Frutas y aguacates	\N	2025-12-28 14:49:39.729	\N	PERCENTAGE	2025-12-28 14:49:39.729	2025-12-28 14:49:39.729
2aecf103-6eac-4e2a-8298-e16d440bfeaf	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3390.00	Lavaplatos	\N	2025-12-28 14:52:39.834	\N	PERCENTAGE	2025-12-28 14:52:39.834	2025-12-28 14:52:39.834
259fd720-2313-4011-875f-af7a4e40ed5b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6300.00	Uvas	\N	2025-12-28 14:53:38.13	\N	PERCENTAGE	2025-12-28 14:53:38.13	2025-12-28 14:53:38.13
f60a6348-e545-49c2-b324-ef1957eee4cb	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3000.00	Ajuste de cuenta	\N	2025-12-28 14:55:52.25	\N	PERCENTAGE	2025-12-28 14:55:52.25	2025-12-28 14:55:52.25
ba0bf43b-dc38-4162-93ba-b272d2931d33	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	9490.00	Paz-pet para dustin	\N	2025-12-28 20:27:06.282	\N	PERCENTAGE	2025-12-28 20:27:06.282	2025-12-28 20:27:06.282
d9d3c5d1-a764-4927-ab6d-6148c6ebf738	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	57138.00	Compras 31 diciembre	\N	2025-12-30 21:41:59.501	\N	PERCENTAGE	2026-01-04 21:41:59.501	2026-01-04 21:41:59.501
d12fd1f8-d7a5-4156-9030-7babd6cd9e78	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	217000.00	Cabaña algarrobo	\N	2025-12-18 21:54:06.844	\N	PERCENTAGE	2026-01-04 21:54:06.844	2026-01-04 21:54:06.844
71eaec40-b86e-42f6-9117-233b9e207663	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15000.00	Otros	\N	2025-12-10 14:22:40.885	\N	PERCENTAGE	2026-01-05 14:22:40.885	2026-01-05 14:22:40.885
1b8f76ff-6bed-4405-9b1f-b71c75ebb2c4	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	52460.00	Gasolina	\N	2025-12-18 14:21:48.864	\N	PERCENTAGE	2026-01-05 14:21:48.864	2026-01-05 14:21:48.864
61679660-f958-4fef-947a-14f3296364cd	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	832210.00	Cuota 72/360	\N	2026-01-05 16:28:27.994	\N	PERCENTAGE	2026-01-05 16:28:27.994	2026-01-05 16:28:27.994
429a9dd9-ea4a-44ce-a482-b494fdd094c5	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	30547.00	Gasolina	\N	2026-01-05 16:29:28.919	\N	PERCENTAGE	2026-01-05 16:29:28.919	2026-01-05 16:29:28.919
702f3d38-5446-46df-b064-c2e82c5ff31d	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8250.00	Spotify suscripcion	\N	2026-01-05 16:30:47.931	\N	PERCENTAGE	2026-01-05 16:30:47.931	2026-01-05 16:30:47.931
58fdd50a-6879-4462-90dd-38f0a2835fab	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	9100.00	Compras varias 	\N	2026-01-05 16:33:00.193	\N	PERCENTAGE	2026-01-05 16:33:00.193	2026-01-05 16:33:00.193
eca34b32-69b2-4054-9001-8d7788fb7b8c	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8610.00	Compras varias	\N	2026-01-05 16:37:29.642	\N	PERCENTAGE	2026-01-05 16:37:29.642	2026-01-05 16:37:29.642
86a63177-7e97-4d76-97ea-ac5520971468	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	1164.00	Tag Diciembre Autopista Vespucio Oriente	\N	2026-01-05 17:08:51.162	\N	PERCENTAGE	2026-01-05 17:08:51.162	2026-01-05 17:08:51.162
65462a64-b75c-4670-9f56-2b7b003f1be4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	9135.00	Tag Diciembre Costanera Norte	\N	2026-01-05 17:09:59.002	\N	PERCENTAGE	2026-01-05 17:09:59.002	2026-01-05 17:09:59.002
9092d427-60c4-4bea-a3c8-887726a02d75	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4292.00	Tag Diciembre Vespucio Sur	\N	2026-01-06 17:50:43.867	\N	PERCENTAGE	2026-01-06 17:50:43.867	2026-01-06 17:50:43.867
4d9e05ff-0954-49ac-a035-0ac71ff93fc4	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	29501.00	Internet de la casa	\N	2026-01-06 17:52:27.712	\N	PERCENTAGE	2026-01-06 17:52:27.712	2026-01-06 17:52:27.712
80fe41b3-ee23-4fce-ae86-cbd0ea2acd31	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51656.00	Seguro cleopatra	\N	2026-01-06 17:53:35.969	\N	PERCENTAGE	2026-01-06 17:53:35.969	2026-01-06 17:53:35.969
04ad1e15-2148-45e5-b014-ddb5a6325995	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	131239.00	Fit9	\N	2026-01-05 11:37:00	\N	PERCENTAGE	2026-01-05 14:37:58.089	2026-01-13 19:36:46.145
81d4a09c-255a-4df4-994a-62dec7497655	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	13200.00	2 bandejas de huevos	\N	2026-01-07 14:15:42.49	\N	PERCENTAGE	2026-01-07 14:15:42.49	2026-01-07 14:15:42.49
18480e40-9d7a-4b0e-9cd0-871afa6d8dbe	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	30594.00	Agua de tomar de la casa	\N	2026-01-08 18:45:46.059	\N	PERCENTAGE	2026-01-08 18:45:46.059	2026-01-08 18:45:46.059
d2c7a478-9176-471d-a97b-458729ecac84	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	14517.00	Agua de diciembre	\N	2026-01-06 17:49:40.93	\N	PERCENTAGE	2026-01-06 17:49:40.93	2026-01-13 18:04:47.589
f8f38577-8a39-49d6-8a1a-1fd2b121385e	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	80494.00	Mercado del mes	\N	2026-01-07 14:17:22.895	\N	PERCENTAGE	2026-01-07 14:17:22.895	2026-01-13 18:07:30.172
f36bbf02-2953-4b09-b7e5-020314750413	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6170.00	Compras varias	\N	2026-01-11 11:04:00	\N	PERCENTAGE	2026-01-14 14:04:48.749	2026-01-14 14:04:48.749
598ddf22-7578-42e2-a0c5-6e8e92ee5030	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6680.00	Compras varias	\N	2026-01-12 11:05:00	\N	PERCENTAGE	2026-01-14 14:06:06.881	2026-01-14 14:06:06.881
bac1d01e-1ee3-4b69-a012-dfd0d9973aca	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	49899.00	Gasolina 97	\N	2026-01-13 11:06:00	\N	PERCENTAGE	2026-01-14 14:07:41.761	2026-01-14 14:07:41.761
c429f535-df49-4b44-97e6-4d080387561c	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	50420.00	Vitamina D, Fersitol D, Acido Folico, Shampoo	\N	2026-01-12 11:21:00	\N	PERCENTAGE	2026-01-14 14:22:09.233	2026-01-14 14:22:09.233
6d151c88-da24-4d6e-98bb-9888c0b08899	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	3800.00	Tag Vespucio Norte	\N	2026-01-12 11:23:00	\N	PERCENTAGE	2026-01-14 14:23:23.63	2026-01-14 14:23:23.63
bdbc0fc3-1d0a-4773-8a20-d3330e456e7f	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	6500.00	Tag Ruta 68	\N	2026-01-12 11:24:00	\N	PERCENTAGE	2026-01-14 14:24:36.507	2026-01-14 14:24:36.507
bb75b0dd-ee38-4817-bbd1-60a57e0154c6	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	4000.00	Bolsas dustin, chip OMA	\N	2026-01-12 11:25:00	\N	PERCENTAGE	2026-01-14 14:25:54.93	2026-01-14 14:25:54.93
eb437fc4-021d-433b-a88b-cac003fcb903	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	8400.00	Almendras y pistacho	\N	2026-01-12 11:26:00	\N	PERCENTAGE	2026-01-14 14:27:16.926	2026-01-14 14:27:16.926
630d21bf-e344-4915-8570-9346a948fb17	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	15880.00	Sucripcion de Netflix	\N	2026-01-14 11:30:00	\N	PERCENTAGE	2026-01-14 14:31:19.334	2026-01-14 14:31:19.334
fda5f519-5911-4872-9dfb-7ff6744c8c2b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	13200.00	2 bandejas de huevo	\N	2026-01-15 12:37:00	\N	PERCENTAGE	2026-01-15 15:39:34.998	2026-01-15 15:39:34.998
265ca5a7-4c32-4125-9e13-eefe38598b62	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	51990.00	Perrarina pollo 12 kg	\N	2026-01-15 13:05:00	\N	PERCENTAGE	2026-01-15 16:06:05.241	2026-01-15 16:06:05.241
a4547bad-ecfb-4934-a0e6-aaeed2dd99c1	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	306586.00	Cuota Cleopatra 	\N	2026-01-15 13:09:00	\N	PERCENTAGE	2026-01-15 16:10:10.195	2026-01-15 16:10:10.195
78b5a1f8-4297-42fe-bbd9-bb3ebd9df349	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	35280.00	Omega 3 y Magnesio	\N	2026-01-16 11:58:00	\N	PERCENTAGE	2026-01-16 14:59:11.721	2026-01-16 14:59:11.721
f5087f65-3f54-446c-af6d-7433920afdab	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	83270.00	Luz de Diciembre	\N	2026-01-16 12:07:00	\N	PERCENTAGE	2026-01-16 15:08:00.239	2026-01-16 15:08:00.239
03946a81-2e87-4343-82a1-7eb438cf52b8	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2600.00	Tag ruta del maipo	\N	2026-01-16 12:14:00	\N	PERCENTAGE	2026-01-16 15:14:24.85	2026-01-16 15:14:24.85
\.


--
-- Data for Name: expense_participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."expense_participants" ("id", "expense_id", "user_id", "amount_owed", "percentage", "shares", "is_paid", "paid_date", "paid_amount") FROM stdin;
19133551-3ac1-41cb-b1c3-4f189becaa31	ab2845ae-a6e8-460d-9184-1361ea8785da	346b32d1-b21f-4ce9-ac27-a69e67abb103	5593.00	\N	\N	t	2025-12-23 14:42:34.225	5593.00
887a34e5-c893-4d94-ba2e-33d751b57cef	4e5bd49e-a5bc-475b-9162-cddf306dd0c8	346b32d1-b21f-4ce9-ac27-a69e67abb103	6699.00	\N	\N	t	2025-12-26 15:21:35.003	6699.00
b7fd1061-545f-4969-8945-a8ca6860773c	d9d3c5d1-a764-4927-ab6d-6148c6ebf738	346b32d1-b21f-4ce9-ac27-a69e67abb103	39996.60	\N	\N	t	2026-01-04 21:41:59.5	39996.60
28a04bf7-3441-467b-968f-99d2eccecd19	4e5bd49e-a5bc-475b-9162-cddf306dd0c8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2871.00	\N	\N	t	2026-01-05 14:25:53.279	2871.00
87bc1190-ad89-44ee-8c16-2b1cb02addb9	d9d3c5d1-a764-4927-ab6d-6148c6ebf738	d8c5e32f-c64d-4437-b302-3a64d8f3f116	17141.40	\N	\N	t	2026-01-05 14:25:53.28	17141.40
558877ea-7f0a-4afe-be6f-955634d10744	cdaee396-11b0-493b-adfd-0165b0e746b9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	8310.00	\N	\N	t	2026-01-05 14:25:53.277	8310.00
387d660f-9de8-4152-acaa-f6e992969224	237759f6-da8c-412d-aa33-0822bd937dd6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5160.00	\N	\N	t	2026-01-05 14:25:53.278	5160.00
c513e9e0-ee2f-4854-bee5-d78f0ff5c005	15658593-c707-4e38-a84b-a222b5509899	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15597.00	\N	\N	t	2026-01-05 14:25:53.278	15597.00
34eaf57a-985a-47c8-86a2-38db827cb7b7	ab2845ae-a6e8-460d-9184-1361ea8785da	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2397.00	\N	\N	t	2026-01-05 14:25:53.279	2397.00
3c8fd3d8-12f0-4343-af31-739356da576f	58fdd50a-6879-4462-90dd-38f0a2835fab	346b32d1-b21f-4ce9-ac27-a69e67abb103	6370.00	\N	\N	t	2026-01-05 16:33:00.192	6370.00
e17b48b1-c45d-4392-b62e-7d165beaa3ca	58fdd50a-6879-4462-90dd-38f0a2835fab	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2730.00	\N	\N	f	\N	\N
57f4f7cd-4921-4500-aefb-e325d93d5d06	598ddf22-7578-42e2-a0c5-6e8e92ee5030	346b32d1-b21f-4ce9-ac27-a69e67abb103	4676.00	\N	\N	t	2026-01-14 14:06:06.88	4676.00
a27dcc8e-3494-45db-aa32-0c5dd54145ed	598ddf22-7578-42e2-a0c5-6e8e92ee5030	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2004.00	\N	\N	f	\N	\N
e6672676-d9a6-439d-b381-62da7c3213a7	eb437fc4-021d-433b-a88b-cac003fcb903	346b32d1-b21f-4ce9-ac27-a69e67abb103	5880.00	\N	\N	t	2026-01-14 14:27:16.925	5880.00
e0590fee-d046-4ff2-8045-f8ffdf361133	eb437fc4-021d-433b-a88b-cac003fcb903	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2520.00	\N	\N	f	\N	\N
20312db2-1cd3-4c84-b36c-35f99850ae61	265ca5a7-4c32-4125-9e13-eefe38598b62	346b32d1-b21f-4ce9-ac27-a69e67abb103	36393.00	\N	\N	t	2026-01-15 16:06:05.24	36393.00
c30aa629-264b-4d07-b5c3-95ca89415987	265ca5a7-4c32-4125-9e13-eefe38598b62	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15597.00	\N	\N	f	\N	\N
66b6abb7-5ff9-4d83-a76b-2643e2ed2d17	a4547bad-ecfb-4934-a0e6-aaeed2dd99c1	346b32d1-b21f-4ce9-ac27-a69e67abb103	214610.20	\N	\N	t	2026-01-15 16:10:10.193	214610.20
b878f65b-ff2b-40ec-8681-3144207f98c8	a4547bad-ecfb-4934-a0e6-aaeed2dd99c1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	91975.80	\N	\N	f	\N	\N
13fdd3e4-6496-497c-a079-153373dbd787	bb4da131-5047-4cb2-baf9-9eaa47e33dc2	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5285.10	\N	\N	t	2025-12-01 13:49:47.615	5285.10
56c312f9-0ab2-43ea-806c-7a842cc3407f	7d8e34fe-a721-4f87-a832-29b8762195f1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3000.00	\N	\N	t	2025-12-01 13:49:47.614	3000.00
93ee11f3-c41c-4a95-9b19-465e2f0d9e65	ebcbb572-de8d-4a37-8a13-de78c9548bc1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	91975.80	\N	\N	t	2025-12-01 13:49:47.615	91975.80
1ba167d9-e877-44fd-b403-91763539022c	68b3dff6-7db5-4fdf-a522-269f760db361	d8c5e32f-c64d-4437-b302-3a64d8f3f116	19836.30	\N	\N	t	2025-12-01 13:49:47.615	19836.30
b63a00f0-8a77-4e05-841f-63f70a83c799	93233d94-a005-40ac-8f8a-422a26a0828a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	31362.00	\N	\N	t	2025-12-01 13:49:47.615	31362.00
e38c2478-6b1e-41a3-84b4-32e075832d2a	74e7fea1-2988-4415-919d-57b0e13cd1d1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2460.00	\N	\N	t	2025-12-01 13:49:47.615	2460.00
e647de36-9697-453b-abc1-97408abb4c4d	552f31a9-1dbe-44d1-bc52-6221ff3b180d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1917.00	\N	\N	t	2025-12-01 13:49:47.615	1917.00
a7dfa729-3587-4daa-9169-87a635884900	1842b47c-b8f0-4579-8166-4c699cbf6a48	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4680.00	\N	\N	t	2025-12-01 13:49:47.615	4680.00
9650aa0c-94f3-4c0b-846e-cb17669891d9	8f79cf8d-2743-465d-a084-2a1c40ea156d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1930.20	\N	\N	t	2025-12-01 13:49:47.615	1930.20
92bb4135-6d7e-4da2-abee-d896167aca67	f3e2892b-db6c-423d-aa28-c27373b2c145	d8c5e32f-c64d-4437-b302-3a64d8f3f116	975.00	\N	\N	t	2025-12-01 13:49:47.615	975.00
c89f0bbd-db67-4258-b0f2-12efd41cadd1	45e81ef3-55fc-4d06-8cc9-40beae0195e4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3870.00	\N	\N	t	2025-12-01 13:49:47.615	3870.00
864d6c51-45aa-48e4-8a05-06e1fa79dfdc	4569af55-fb0a-4766-aa37-eddb2cda2ed6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	7665.00	\N	\N	t	2025-12-01 13:49:47.615	7665.00
f9171245-bc43-4deb-b139-16cec1af7c52	18ce2bd5-86f8-481a-953f-4a5a1e898aad	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3594.00	\N	\N	t	2025-12-01 13:49:47.615	3594.00
516102c0-42c5-4fe5-adbd-00aec417fac1	ba47ca58-eb1c-408a-81e0-698db5373791	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6148.20	\N	\N	t	2025-12-01 13:49:47.615	6148.20
8cbbe392-5cb2-4841-9e88-5bf80b7359e2	2cb86c12-69e2-47b5-93cd-bbcc44321ef3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1167.00	\N	\N	t	2025-12-01 13:49:47.615	1167.00
2d6c4551-9650-4ba2-bbb8-588a0b51ce06	ea9ef05d-3077-437f-a6c6-041ad9f51932	346b32d1-b21f-4ce9-ac27-a69e67abb103	580616.40	\N	\N	t	2025-12-12 13:06:12.431	580616.40
ddbf3a4c-6c83-455e-9c80-83ad1ae79e5b	3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	346b32d1-b21f-4ce9-ac27-a69e67abb103	3857.70	\N	\N	t	2025-12-12 13:06:12.431	3857.70
eada9dd7-1f3d-48a0-99e1-3d1ea5953fdf	4c9e222c-8b40-4cf6-8816-7ff5348f3a71	346b32d1-b21f-4ce9-ac27-a69e67abb103	12320.00	\N	\N	t	2025-12-12 13:06:12.431	12320.00
b35178b1-b9fc-4621-873f-565690e5b6e5	c79948dc-eeb2-47a3-b510-e23749afbe8f	346b32d1-b21f-4ce9-ac27-a69e67abb103	36043.00	\N	\N	t	2025-12-12 13:06:12.431	36043.00
a53462db-f0af-40e9-9962-53f475205db0	35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2443.00	\N	\N	t	2025-12-12 13:06:12.431	2443.00
449991dd-a21b-4ef5-80d1-373012dd9f9c	f933114d-930a-4bce-b125-0efb4a57fd9f	346b32d1-b21f-4ce9-ac27-a69e67abb103	21000.00	\N	\N	t	2025-12-12 13:06:12.431	21000.00
80b887d2-98d6-4fc0-a661-efc4186bd3a6	fbeb7792-a9a4-456a-954e-92ae429165bc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2520.00	\N	\N	t	2025-12-12 13:06:12.431	2520.00
fa0a2678-e8a6-4ab9-8f70-763943d3de76	daeb613d-1f36-4d0e-80e5-cda08166368a	346b32d1-b21f-4ce9-ac27-a69e67abb103	119140.70	\N	\N	t	2025-12-23 14:45:37.011	119140.70
669385b7-4e25-4fcc-a7d5-6dcb6dbd8c2e	7341968e-73f7-4e8e-b941-46bab963382c	346b32d1-b21f-4ce9-ac27-a69e67abb103	3619.00	\N	\N	t	2025-12-28 14:48:16.767	3619.00
ae6315d7-22e5-44f7-a0e0-4df241e4c2c8	d12fd1f8-d7a5-4156-9030-7babd6cd9e78	346b32d1-b21f-4ce9-ac27-a69e67abb103	151900.00	\N	\N	t	2026-01-04 21:54:06.843	151900.00
0c5bec7e-9696-498f-a7f2-ffb7924031df	d12fd1f8-d7a5-4156-9030-7babd6cd9e78	d8c5e32f-c64d-4437-b302-3a64d8f3f116	65100.00	\N	\N	t	2026-01-05 14:25:53.28	65100.00
3d3456c7-4a0e-49ca-a57c-3471f499e822	bc1cca85-958b-47e0-b8d6-ef0d9360f162	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3294.00	\N	\N	t	2026-01-05 14:25:53.277	3294.00
f88a4631-9fda-4a49-9c4c-c73caa772991	6bef0e91-a061-4ed4-92a5-a5d2277d4c1a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1500.00	\N	\N	t	2026-01-05 14:25:53.278	1500.00
a1d83bfe-77fd-4617-8eb5-7b8d22ec236e	9b452557-46f2-4054-85c8-93a08371fbcf	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6300.00	\N	\N	t	2026-01-05 14:25:53.278	6300.00
f1dff891-65dd-4af4-b868-f5bd1c443743	daeb613d-1f36-4d0e-80e5-cda08166368a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	51060.30	\N	\N	t	2026-01-05 14:25:53.279	51060.30
dd2cce1b-0d9b-49e9-93c0-a02b16c6fbd3	7341968e-73f7-4e8e-b941-46bab963382c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1551.00	\N	\N	t	2026-01-05 14:25:53.279	1551.00
53074cb7-b6e4-4e72-b026-0cf5c77c210e	eca34b32-69b2-4054-9001-8d7788fb7b8c	346b32d1-b21f-4ce9-ac27-a69e67abb103	6027.00	\N	\N	t	2026-01-05 16:37:29.641	6027.00
4c416941-5b40-4306-bb44-b8415f80fc05	eca34b32-69b2-4054-9001-8d7788fb7b8c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2583.00	\N	\N	f	\N	\N
1f32eb38-cea7-41ef-a056-6787068b3018	18480e40-9d7a-4b0e-9cd0-871afa6d8dbe	346b32d1-b21f-4ce9-ac27-a69e67abb103	21415.80	\N	\N	f	\N	\N
ba6ef5fb-e880-49b2-8a5b-4b32f2e95243	18480e40-9d7a-4b0e-9cd0-871afa6d8dbe	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9178.20	\N	\N	t	2026-01-08 18:45:46.057	9178.20
6f476af4-a090-4203-879f-61562449ca9f	c429f535-df49-4b44-97e6-4d080387561c	346b32d1-b21f-4ce9-ac27-a69e67abb103	35294.00	\N	\N	t	2026-01-14 14:22:09.232	35294.00
f9f9028c-fb80-45b6-aab8-3abd48ea02ec	c429f535-df49-4b44-97e6-4d080387561c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15126.00	\N	\N	f	\N	\N
cb173cdc-d2ae-468a-961d-2791156ffb72	78b5a1f8-4297-42fe-bbd9-bb3ebd9df349	346b32d1-b21f-4ce9-ac27-a69e67abb103	24696.00	\N	\N	t	2026-01-16 14:59:11.72	24696.00
a9e181ed-2382-4aee-96af-2e8c18fc104b	78b5a1f8-4297-42fe-bbd9-bb3ebd9df349	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10584.00	\N	\N	f	\N	\N
551acc60-82c7-4519-bbef-bd95fba94bbe	e4c29aa9-74ba-4386-b89a-fb0220e274da	b88abd1d-92fe-4818-ba01-95681f09b96d	5000.00	\N	\N	t	2025-11-25 13:00:14.647	5000.00
97e66cea-89f4-4f69-b5d4-3aa9a6bc999e	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	b88abd1d-92fe-4818-ba01-95681f09b96d	32000.00	\N	\N	t	2025-11-25 13:01:38.54	32000.00
e292a5b0-b114-47bd-93a6-36865e65599e	b91e5888-a0a1-46ca-beb5-98348337bd53	b88abd1d-92fe-4818-ba01-95681f09b96d	16000.00	\N	\N	t	2025-11-25 13:01:38.54	16000.00
19a95aec-ffca-4b68-84f8-3f1f1aeab2a5	4a9d901f-0935-4abf-a385-fdf4d39b7eb5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	165.00	\N	\N	t	2025-12-01 13:49:47.615	165.00
af8cd9e2-93a7-40ed-8d5c-942b058523f1	d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4257.00	\N	\N	t	2025-12-01 13:49:47.615	4257.00
bd969dd5-d3a9-445f-b95a-c74c90afd01a	6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10078.80	\N	\N	t	2025-12-01 13:49:47.615	10078.80
358e0d21-9455-47d9-a085-7ce7645b71ef	7d5dc01b-a747-4119-a29a-46138e7d511a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4650.00	\N	\N	t	2025-12-01 13:49:47.615	4650.00
e10bcb73-be09-465e-a2f0-628319d59366	2d20baaf-0896-4bb0-a402-182517e677bb	d8c5e32f-c64d-4437-b302-3a64d8f3f116	18363.90	\N	\N	t	2025-12-01 13:49:47.615	18363.90
5bae09be-abd5-47f9-bcf4-96d53b3c1f53	572273cc-a7f4-42c2-8acc-80357317cc62	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10731.00	\N	\N	t	2025-12-01 13:49:47.615	10731.00
563bdf42-58c3-4245-92ee-842f32492c0d	91b1b337-3960-4b9c-8a47-e4ea0e6989fd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1677.90	\N	\N	t	2025-12-01 13:49:47.615	1677.90
fa2988e6-f26b-4f08-bef6-2059a08df000	765e5daa-b241-482e-a7d6-d5a84bb0e8cf	d8c5e32f-c64d-4437-b302-3a64d8f3f116	58132.80	\N	\N	t	2025-12-01 13:49:47.615	58132.80
3e73224d-5215-40a0-9b0d-6564cfd74dea	5f0afa26-d88b-4fbc-9f6b-218fff7f4928	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1884.00	\N	\N	t	2025-12-01 13:49:47.615	1884.00
e769a586-611b-4df3-8fa3-50e152b0a9a4	d7dfb498-63ee-475c-bec0-3f56ee6e0a78	d8c5e32f-c64d-4437-b302-3a64d8f3f116	864.00	\N	\N	t	2025-12-01 13:49:47.615	864.00
a371c411-a025-420a-b7af-1c4d84be4d6c	437cbb46-b4e4-4fa8-9856-6c7a23a2c691	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5413.80	\N	\N	t	2025-12-01 13:49:47.615	5413.80
e4067610-0b3d-43f0-98fb-ee1ec34df745	f766dd50-9d76-4c35-b1f0-31a1665ff17b	346b32d1-b21f-4ce9-ac27-a69e67abb103	21345.80	\N	\N	t	2025-12-01 13:49:47.615	21345.80
4bb6dffd-5a64-48ca-8983-ddbfc9e34894	98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1497.00	\N	\N	t	2025-12-01 13:49:47.615	1497.00
f7f5610b-80c5-4d6c-95e2-9435ade9fba0	1548acaf-10b4-4ed7-88a7-6dd07489a58a	346b32d1-b21f-4ce9-ac27-a69e67abb103	12464.90	\N	\N	t	2025-12-12 13:06:12.431	12464.90
ed4539da-5ffd-40c3-af84-7fd5b215a915	47754d59-4b36-422f-9aef-51a2a497ac3e	346b32d1-b21f-4ce9-ac27-a69e67abb103	9030.00	\N	\N	t	2025-12-12 13:06:12.431	9030.00
7b7fc27a-d66b-4f47-98c0-b8aff0947a88	7b160b4a-383a-4766-97be-309455f9dd17	346b32d1-b21f-4ce9-ac27-a69e67abb103	5622.40	\N	\N	t	2025-12-12 13:06:12.431	5622.40
521e797f-c5e0-42c8-aa71-60d2c6c05e2e	4a9d901f-0935-4abf-a385-fdf4d39b7eb5	346b32d1-b21f-4ce9-ac27-a69e67abb103	385.00	\N	\N	t	2025-12-12 13:06:12.431	385.00
08fc9b24-5f02-441e-98c4-1e8ede719094	d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	346b32d1-b21f-4ce9-ac27-a69e67abb103	9933.00	\N	\N	t	2025-12-12 13:06:12.431	9933.00
d063684a-9a2e-44c9-9a53-ef17f0b4ea44	6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	346b32d1-b21f-4ce9-ac27-a69e67abb103	23517.20	\N	\N	t	2025-12-12 13:06:12.431	23517.20
f7094d12-c956-4940-b686-a45ef58ca1d6	18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	346b32d1-b21f-4ce9-ac27-a69e67abb103	9450.00	\N	\N	t	2025-12-12 13:06:12.431	9450.00
36a96b2c-abc9-44b0-accf-c888919b64c3	2f154765-d2c9-487c-aae6-db34f06b24fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	81711.00	\N	\N	t	2025-12-26 12:35:59.686	81711.00
ab1b217b-3942-421c-8e3f-d9253a445e02	cc2ab76e-71f8-4a9f-b0f3-31c2d821657b	346b32d1-b21f-4ce9-ac27-a69e67abb103	14140.00	\N	\N	t	2025-12-28 14:49:39.728	14140.00
1510e92a-7cd0-464d-85ba-95f99dc77c0c	1b8f76ff-6bed-4405-9b1f-b71c75ebb2c4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15738.00	\N	\N	t	2026-01-05 14:21:48.863	15738.00
9643ac8a-a0fe-4246-bdb1-7f4fb161397a	cc2ab76e-71f8-4a9f-b0f3-31c2d821657b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6060.00	\N	\N	t	2026-01-05 14:25:53.279	6060.00
866d4352-ba58-4dcf-b0e6-a0963cb34cc9	1b8f76ff-6bed-4405-9b1f-b71c75ebb2c4	346b32d1-b21f-4ce9-ac27-a69e67abb103	36722.00	\N	\N	t	2026-01-05 14:25:53.28	36722.00
6cfa3418-59c6-4868-b7c5-e129b669599e	c3bbc20d-5db5-4d1e-95e4-e0ba4d4db016	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10413.00	\N	\N	t	2026-01-05 14:25:53.277	10413.00
df9233ac-ef69-4744-bfa9-a390e5528101	760743c0-bdc5-4424-b0bc-7f7a2cf1d353	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2471.70	\N	\N	t	2026-01-05 14:25:53.278	2471.70
3b6a86af-f496-4eda-aca2-befea38d6361	18e1b6bd-cb07-4b00-b614-c401b3b80a15	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15493.80	\N	\N	t	2026-01-05 14:25:53.278	15493.80
08e7f866-be31-4023-8f5f-e334f9167b63	2f154765-d2c9-487c-aae6-db34f06b24fc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	35019.00	\N	\N	t	2026-01-05 14:25:53.279	35019.00
1673f3cd-9b01-431e-83d0-a07f002a9ee2	86a63177-7e97-4d76-97ea-ac5520971468	346b32d1-b21f-4ce9-ac27-a69e67abb103	814.80	\N	\N	t	2026-01-05 17:08:51.16	814.80
acf14ff4-9018-4d69-81fc-1487743bd1df	86a63177-7e97-4d76-97ea-ac5520971468	d8c5e32f-c64d-4437-b302-3a64d8f3f116	349.20	\N	\N	f	\N	\N
3d23d88b-8908-4e85-8932-4bc156cf06a6	65462a64-b75c-4670-9f56-2b7b003f1be4	346b32d1-b21f-4ce9-ac27-a69e67abb103	6394.50	\N	\N	t	2026-01-05 17:09:59.001	6394.50
271f2dbc-3270-4ecd-b059-d7c25cd767f1	65462a64-b75c-4670-9f56-2b7b003f1be4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2740.50	\N	\N	f	\N	\N
d7a8ea76-d795-405c-a3c8-71b3fc47497a	c79948dc-eeb2-47a3-b510-e23749afbe8f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15447.00	\N	\N	t	2025-12-01 13:49:47.614	15447.00
4103dfe6-7f8b-4851-a73d-789248d2eac0	ea9ef05d-3077-437f-a6c6-041ad9f51932	d8c5e32f-c64d-4437-b302-3a64d8f3f116	248835.60	\N	\N	t	2025-12-01 13:49:47.614	248835.60
fbed3359-649b-4afb-b510-baf108f53e1b	e778dea8-7118-458b-a395-db29bac53239	d8c5e32f-c64d-4437-b302-3a64d8f3f116	510.00	\N	\N	t	2025-12-01 13:49:47.614	510.00
005d4188-1793-411d-9c19-b63df5d9d4f5	3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1653.30	\N	\N	t	2025-12-01 13:49:47.614	1653.30
a146d524-c66b-41d7-a9b5-6007fb294f92	4c9e222c-8b40-4cf6-8816-7ff5348f3a71	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5280.00	\N	\N	t	2025-12-01 13:49:47.614	5280.00
5ac6f90a-65d4-4588-ad8d-9ed52c2fcd86	f933114d-930a-4bce-b125-0efb4a57fd9f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9000.00	\N	\N	t	2025-12-01 13:49:47.614	9000.00
5b92ea9d-d535-41b0-b90a-663dedb4ffad	35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1047.00	\N	\N	t	2025-12-01 13:49:47.614	1047.00
aa4a328f-7701-4c73-8aa8-33f044963d5a	fbeb7792-a9a4-456a-954e-92ae429165bc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1080.00	\N	\N	t	2025-12-01 13:49:47.614	1080.00
1638c2fd-ae0d-438e-a565-9f4871f9c914	803a0356-284a-4a30-9547-fd80918575f3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	8728.20	\N	\N	t	2025-12-01 13:49:47.614	8728.20
ca22bfd4-29b9-4a82-853b-fa17c4612ae8	e22492b5-6775-40a4-92bb-99b9b4757e07	d8c5e32f-c64d-4437-b302-3a64d8f3f116	855.00	\N	\N	t	2025-12-01 13:49:47.615	855.00
efaa544b-b49f-4621-83c1-1225b53500ec	b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1217.70	\N	\N	t	2025-12-01 13:49:47.615	1217.70
4cba0794-22bc-43f7-84d4-5adcc856bcaf	1548acaf-10b4-4ed7-88a7-6dd07489a58a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5342.10	\N	\N	t	2025-12-01 13:49:47.615	5342.10
e62dfd87-fb98-41be-a38c-42c247a49070	47754d59-4b36-422f-9aef-51a2a497ac3e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3870.00	\N	\N	t	2025-12-01 13:49:47.615	3870.00
4fffe115-adb9-4579-9583-4e9a89f0c6a9	7b160b4a-383a-4766-97be-309455f9dd17	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2409.60	\N	\N	t	2025-12-01 13:49:47.615	2409.60
bf97fc38-0d9d-413b-9142-1e7233ec34ab	18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4050.00	\N	\N	t	2025-12-01 13:49:47.615	4050.00
95c029f6-7d88-4e6e-b6cb-99602ec7777a	b72074b4-13a7-4040-9e57-ff0c0b8616f5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	12891.00	\N	\N	t	2025-12-01 13:49:47.615	12891.00
6907dc7a-36d8-4564-8b61-9bae428418c9	dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4764.00	\N	\N	t	2025-12-01 13:49:47.615	4764.00
23926b59-f6c7-4dbd-92da-279a0c44987e	5f1f4bf4-9173-47b0-b2cf-61e83dab816b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2475.00	\N	\N	t	2025-12-01 13:49:47.615	2475.00
33b8e4a2-f13f-494e-a2a1-41b4a5a8f41c	7fa4a7f7-a048-4e21-8fdd-47e190568efa	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6363.30	\N	\N	t	2025-12-01 13:49:47.615	6363.30
fe62ec78-314b-4420-9c81-25191b6c361f	2623f91f-e469-42e8-82c5-2d695118d5e5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	600.00	\N	\N	t	2025-12-01 13:49:47.615	600.00
6ba73778-ce79-4205-aeb5-fd596174fe67	75181c74-3105-4be0-8321-b5b70231fe3a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4500.00	\N	\N	t	2025-12-01 13:49:47.615	4500.00
922757dc-6add-4341-869b-357f3a5c4c6b	3dc18619-27fc-48a5-9d7a-9f4b757d80ce	d8c5e32f-c64d-4437-b302-3a64d8f3f116	780.00	\N	\N	t	2025-12-01 13:49:47.615	780.00
c564fe31-8fa7-4694-b64f-8a93c84bb2fe	ca6927eb-05a0-44fa-9f68-7df6019e30de	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2250.00	\N	\N	t	2025-12-01 13:49:47.615	2250.00
e83ef03e-5763-456c-9772-afe35841dc8e	c5c40a95-7b3f-46a5-aa6b-baeae48bac97	346b32d1-b21f-4ce9-ac27-a69e67abb103	7133.00	\N	\N	t	2025-12-01 13:49:47.615	7133.00
c54425a1-193c-4b40-99fd-b43d5e81ba37	ae157bab-ec8a-47c9-bc09-f6a8cc86d872	d8c5e32f-c64d-4437-b302-3a64d8f3f116	22800.00	\N	\N	t	2025-12-01 13:49:47.615	22800.00
3c1d65da-9681-41b2-9517-fce13fb79a22	050960db-eb58-4b40-9491-43e3bd07d6b8	346b32d1-b21f-4ce9-ac27-a69e67abb103	7700.00	\N	\N	t	2025-12-01 13:49:47.615	7700.00
fa5bb771-3753-4748-b7d2-d7432a2b4f4d	5c595cc5-bb18-4234-8143-afe9185268f7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	882.00	\N	\N	t	2025-12-01 13:49:47.615	882.00
e628238b-4c35-4635-acc1-8ac047493fa5	a92509e9-742c-4594-ad4c-3698ad42f3fb	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6369.60	\N	\N	t	2025-12-01 13:49:47.615	6369.60
49750596-2421-4802-a330-8349f59d4fe9	2ec956fb-f2fd-4845-9a27-6e314d8d9335	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4200.00	\N	\N	t	2025-12-01 13:49:47.615	4200.00
a6f61956-ff14-4705-a7ab-12e8631073af	567b3b22-06c7-43f5-bfd7-439001a241fc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6150.00	\N	\N	t	2025-12-01 13:49:47.615	6150.00
fa26b41a-263a-42a0-9c66-3cb93aad050f	75181c74-3105-4be0-8321-b5b70231fe3a	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	t	2025-12-12 13:06:12.431	10500.00
d0055e91-ecbd-4d93-b22e-5cab2ae63bac	3dc18619-27fc-48a5-9d7a-9f4b757d80ce	346b32d1-b21f-4ce9-ac27-a69e67abb103	1820.00	\N	\N	t	2025-12-12 13:06:12.431	1820.00
6f716784-99f2-443d-8ad6-996eb60421e7	ca6927eb-05a0-44fa-9f68-7df6019e30de	346b32d1-b21f-4ce9-ac27-a69e67abb103	5250.00	\N	\N	t	2025-12-12 13:06:12.431	5250.00
849599dc-c5fb-4600-8033-b5795b849111	c5c40a95-7b3f-46a5-aa6b-baeae48bac97	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3057.00	\N	\N	t	2025-12-12 13:06:12.431	3057.00
e7fd08ba-53e1-43b2-93e1-116f2698fe64	132afb3f-2d58-49c6-8db4-35acf85ed773	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4550.00	\N	\N	t	2025-12-01 13:49:47.615	4550.00
977ef8b8-f500-47e9-b1f4-cb9049051f69	0e9c2965-24f0-4a2d-bb14-3a673bfdb467	346b32d1-b21f-4ce9-ac27-a69e67abb103	10640.00	\N	\N	t	2025-12-26 12:37:51.736	10640.00
231a678b-3c53-405b-8cb9-cb628e73586c	2aecf103-6eac-4e2a-8298-e16d440bfeaf	346b32d1-b21f-4ce9-ac27-a69e67abb103	2373.00	\N	\N	t	2025-12-28 14:52:39.833	2373.00
272a864e-3177-4f56-a1cd-6d1f7a33e4e2	71eaec40-b86e-42f6-9117-233b9e207663	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4500.00	\N	\N	t	2026-01-05 14:22:40.884	4500.00
1b0e1e38-67fd-45c5-98d5-8f8d7b35ee95	2aecf103-6eac-4e2a-8298-e16d440bfeaf	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1017.00	\N	\N	t	2026-01-05 14:25:53.279	1017.00
af61a06b-9517-49a6-a104-bab991d25f48	95a36900-4535-4104-939b-3dea76745659	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2475.00	\N	\N	t	2026-01-05 14:25:53.276	2475.00
b2340814-6fe8-451a-b066-8c405d39ed49	71eaec40-b86e-42f6-9117-233b9e207663	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	t	2026-01-05 14:25:53.28	10500.00
44c9a2c1-641a-4fdd-b216-e18d51c23fc6	b1aaab99-34e0-4093-92f2-3a3e0371cf7e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	960.00	\N	\N	t	2026-01-05 14:25:53.277	960.00
79eec360-b3a7-42dc-abb0-4cff146a3c20	a3eba116-8c33-4228-b0be-7053a24cb357	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1257.00	\N	\N	t	2026-01-05 14:25:53.278	1257.00
fba067ce-c78a-4ad8-bd3d-d8b997bf70c9	572fcb3c-5c15-4c21-8e97-72eaae8ef7af	d8c5e32f-c64d-4437-b302-3a64d8f3f116	91975.80	\N	\N	t	2026-01-05 14:25:53.278	91975.80
78903f68-e522-41a9-8831-c4e95c03081b	0e9c2965-24f0-4a2d-bb14-3a673bfdb467	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4560.00	\N	\N	t	2026-01-05 14:25:53.279	4560.00
eb868549-1354-42e4-a609-7f52aa8bed75	80fe41b3-ee23-4fce-ae86-cbd0ea2acd31	346b32d1-b21f-4ce9-ac27-a69e67abb103	36159.20	\N	\N	t	2026-01-06 17:53:35.968	36159.20
64a72cd8-e900-4d13-94b9-fdd6c9e3f879	80fe41b3-ee23-4fce-ae86-cbd0ea2acd31	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15496.80	\N	\N	f	\N	\N
17ffcbd6-70c8-4664-8653-36467e9487d4	d2c7a478-9176-471d-a97b-458729ecac84	346b32d1-b21f-4ce9-ac27-a69e67abb103	10161.90	\N	\N	t	2026-01-13 18:04:47.588	10161.90
f35d48fc-ff9d-461a-803a-f14a51263af8	d2c7a478-9176-471d-a97b-458729ecac84	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4355.10	\N	\N	f	\N	\N
b8e24462-9c27-456c-bf79-0ccf28418755	6d151c88-da24-4d6e-98bb-9888c0b08899	346b32d1-b21f-4ce9-ac27-a69e67abb103	2660.00	\N	\N	t	2026-01-14 14:23:23.629	2660.00
f3e16202-607e-46c1-b5f1-9e00084225e3	6d151c88-da24-4d6e-98bb-9888c0b08899	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1140.00	\N	\N	f	\N	\N
d0314a82-f4e3-4b5d-8e85-1c7acad21476	f5087f65-3f54-446c-af6d-7433920afdab	346b32d1-b21f-4ce9-ac27-a69e67abb103	58289.00	\N	\N	t	2026-01-16 15:08:00.238	58289.00
be2d4442-e5ff-44a6-b25d-536744a8711a	f5087f65-3f54-446c-af6d-7433920afdab	d8c5e32f-c64d-4437-b302-3a64d8f3f116	24981.00	\N	\N	f	\N	\N
f8770b43-f16e-4f76-801b-0bebb253ef60	dac8989b-541c-4875-a086-d347fb1168d0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4500.00	\N	\N	t	2025-12-01 13:49:47.615	4500.00
03f75f73-d0a0-4f07-ac1c-b2497a060615	1410a808-8dfa-4536-ba2e-96ed415546b3	346b32d1-b21f-4ce9-ac27-a69e67abb103	581048.30	\N	\N	f	\N	\N
a34144b9-0971-4a83-9e88-29fef1e8bfb0	d432f78f-4419-4e3e-a9b4-45b29139169a	346b32d1-b21f-4ce9-ac27-a69e67abb103	5349.40	\N	\N	f	\N	\N
212d62f2-b9b2-4aa0-ab42-c5121706263e	95a36900-4535-4104-939b-3dea76745659	346b32d1-b21f-4ce9-ac27-a69e67abb103	5775.00	\N	\N	f	\N	\N
0c3a80d8-d7af-4681-9972-085608a1710b	4d389beb-3ce1-4777-8347-fb8313ac388e	346b32d1-b21f-4ce9-ac27-a69e67abb103	36075.90	\N	\N	f	\N	\N
0cfc8951-fdd9-4fe0-b307-fc13e2a6bff8	4f40afb8-d635-43dd-91a0-eadcacbdf008	346b32d1-b21f-4ce9-ac27-a69e67abb103	45318.00	\N	\N	f	\N	\N
8d435780-a069-458a-9831-b83a159536dd	d7b0a41b-c9ef-4360-a958-a86a250ad711	346b32d1-b21f-4ce9-ac27-a69e67abb103	25410.00	\N	\N	f	\N	\N
2ebba512-d5ca-445c-951b-185609c6f780	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9157.80	\N	\N	f	\N	\N
42f4bfa9-469a-41dc-889e-14e9e9bc1c20	aeeb577b-56f1-44ff-a38f-b03cc638b92e	346b32d1-b21f-4ce9-ac27-a69e67abb103	8400.00	\N	\N	f	\N	\N
84d75be9-80a7-4d6c-a5f4-1f3bd67c22d2	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	346b32d1-b21f-4ce9-ac27-a69e67abb103	12600.00	\N	\N	f	\N	\N
09701822-4855-4585-a317-dd81046cb6b1	bcf29d50-0335-412a-850f-6606c6239140	346b32d1-b21f-4ce9-ac27-a69e67abb103	7666.40	\N	\N	f	\N	\N
8f406e29-8257-4a05-a851-9ef6f79cc8d8	cb79af54-88d1-4d25-b3e2-04ab4d6469de	346b32d1-b21f-4ce9-ac27-a69e67abb103	6612.20	\N	\N	f	\N	\N
2b7fb0be-06c6-47c6-9e92-1f08f0eeb642	c4d60af0-5577-4aed-b163-37bc4bda34d5	346b32d1-b21f-4ce9-ac27-a69e67abb103	8560.30	\N	\N	f	\N	\N
9ed9ccf5-3602-4120-835b-ce648579b369	f09eee37-2f7a-49a8-a13f-02011e30886e	346b32d1-b21f-4ce9-ac27-a69e67abb103	3500.00	\N	\N	f	\N	\N
c9ff44c7-0fbf-4727-96a3-a265e39d326d	38440bab-1156-40ea-b36b-566428afc183	346b32d1-b21f-4ce9-ac27-a69e67abb103	12719.00	\N	\N	f	\N	\N
e5504793-ddb1-4a1e-b84e-85d7ec0d72fb	e7efdd29-bb34-424d-a398-5eb7d08dc196	346b32d1-b21f-4ce9-ac27-a69e67abb103	1400.00	\N	\N	f	\N	\N
ca196e31-e480-4655-a739-410b56a2b5b0	21599688-2919-4e83-bdfa-c17f15423a4e	346b32d1-b21f-4ce9-ac27-a69e67abb103	20650.70	\N	\N	f	\N	\N
2e6c43d1-8187-4a5a-af3a-89b8134adf9d	cdaee396-11b0-493b-adfd-0165b0e746b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	19390.00	\N	\N	f	\N	\N
7bd848c9-2c4a-4e67-8d03-b9b04ccb90ff	bc1cca85-958b-47e0-b8d6-ef0d9360f162	346b32d1-b21f-4ce9-ac27-a69e67abb103	7686.00	\N	\N	f	\N	\N
837c17c8-0cfc-4e8a-9d27-12ff51ee2ba0	d397c294-5528-462c-93c5-7a9f532c10bd	346b32d1-b21f-4ce9-ac27-a69e67abb103	9580.20	\N	\N	f	\N	\N
279272ec-a7fd-4d30-966e-d0a3f9d81f13	a62957f9-4cf6-47c1-90e8-26bc3177c199	346b32d1-b21f-4ce9-ac27-a69e67abb103	2242.80	\N	\N	f	\N	\N
1ac7fe57-f673-4869-b47d-62049507ffe8	a00572a0-c260-44a4-82db-7763e84f19f6	346b32d1-b21f-4ce9-ac27-a69e67abb103	2242.80	\N	\N	f	\N	\N
ee627194-f080-45c2-b40c-0b777345f5ef	5522da68-5276-49cd-a9a6-a45620cf64c6	346b32d1-b21f-4ce9-ac27-a69e67abb103	2242.80	\N	\N	f	\N	\N
a5d48dca-5bd9-4193-bc82-1359678c4377	c54bb4e0-ba81-4a25-8c03-e963ce63e68e	346b32d1-b21f-4ce9-ac27-a69e67abb103	840.00	\N	\N	f	\N	\N
b6c42167-26cb-4d48-98e2-9fa7390940de	2dd44eae-c796-4522-b14e-9dee4aa085a0	346b32d1-b21f-4ce9-ac27-a69e67abb103	3269.00	\N	\N	f	\N	\N
17fc024b-5e59-4366-b00e-9155f0471a0e	91b446c8-d142-4708-96c2-7f2881a1baba	346b32d1-b21f-4ce9-ac27-a69e67abb103	12357.10	\N	\N	f	\N	\N
5b171c98-6ac3-4b65-85c2-67b2f54e5d0b	d7b0a41b-c9ef-4360-a958-a86a250ad711	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10890.00	\N	\N	t	2026-01-05 14:25:53.276	10890.00
6d7b032e-9eb0-43e9-88d8-c67a85f95764	4d389beb-3ce1-4777-8347-fb8313ac388e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15461.10	\N	\N	t	2026-01-05 14:25:53.276	15461.10
2026f065-07b5-4dba-ac68-eeaf67318892	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	346b32d1-b21f-4ce9-ac27-a69e67abb103	21368.20	\N	\N	t	2026-01-05 14:25:53.276	21368.20
c2db3aed-23f0-45d0-9b6d-748821eb5760	aeeb577b-56f1-44ff-a38f-b03cc638b92e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3600.00	\N	\N	t	2026-01-05 14:25:53.276	3600.00
75e9dd28-0bf4-46ec-8914-706dcbaa178c	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5400.00	\N	\N	t	2026-01-05 14:25:53.276	5400.00
5a3f1cae-3d44-4445-a1e6-41ce3c7962e4	bcf29d50-0335-412a-850f-6606c6239140	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3285.60	\N	\N	t	2026-01-05 14:25:53.276	3285.60
20604cb4-d3f7-4623-824e-395ec10ad1ba	cb79af54-88d1-4d25-b3e2-04ab4d6469de	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2833.80	\N	\N	t	2026-01-05 14:25:53.276	2833.80
e018bc7a-304b-4aab-8e4c-ad9a096b143f	c4d60af0-5577-4aed-b163-37bc4bda34d5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3668.70	\N	\N	t	2026-01-05 14:25:53.277	3668.70
f9cbe124-89eb-490c-b499-d5d3046d905f	f09eee37-2f7a-49a8-a13f-02011e30886e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1500.00	\N	\N	t	2026-01-05 14:25:53.277	1500.00
90f478da-3227-479c-9a4d-d950eae3ca32	38440bab-1156-40ea-b36b-566428afc183	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5451.00	\N	\N	t	2026-01-05 14:25:53.277	5451.00
07c11b55-cb0d-4da3-9b84-255a4667cfa4	d397c294-5528-462c-93c5-7a9f532c10bd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4105.80	\N	\N	t	2026-01-05 14:25:53.277	4105.80
cbaba4ae-3018-44d3-93bf-578e1169d30b	a62957f9-4cf6-47c1-90e8-26bc3177c199	d8c5e32f-c64d-4437-b302-3a64d8f3f116	961.20	\N	\N	t	2026-01-05 14:25:53.277	961.20
a2077dd0-e9f5-4a6d-9210-100f8f73f418	a00572a0-c260-44a4-82db-7763e84f19f6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	961.20	\N	\N	t	2026-01-05 14:25:53.277	961.20
99663be7-c6a1-40e2-ab4a-3f4d32806a29	5522da68-5276-49cd-a9a6-a45620cf64c6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	961.20	\N	\N	t	2026-01-05 14:25:53.277	961.20
6d2b1c79-f852-46a9-9d3d-ee5ea9d5b124	c54bb4e0-ba81-4a25-8c03-e963ce63e68e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	360.00	\N	\N	t	2026-01-05 14:25:53.277	360.00
918e77b8-212f-46a7-89cf-8617cecc6fe7	2dd44eae-c796-4522-b14e-9dee4aa085a0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1401.00	\N	\N	t	2026-01-05 14:25:53.277	1401.00
7afca46a-d464-489d-826b-71abf7783a1c	91b446c8-d142-4708-96c2-7f2881a1baba	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5295.90	\N	\N	t	2026-01-05 14:25:53.277	5295.90
6460ea3d-beb2-4b0a-8edc-042889daf19a	983a2e37-6703-4b0d-bf76-665b39177157	346b32d1-b21f-4ce9-ac27-a69e67abb103	13020.00	\N	\N	f	\N	\N
6b7f12f6-cc76-42a6-8d13-64a76bee01c4	6b88b35b-bbfb-49c0-a052-dec38d0bff5c	346b32d1-b21f-4ce9-ac27-a69e67abb103	4550.00	\N	\N	f	\N	\N
44389e62-72ba-4bda-aabf-b35473c2e8c0	7f36af3a-cb00-4e88-8eb5-9447822cbb52	346b32d1-b21f-4ce9-ac27-a69e67abb103	2793.00	\N	\N	t	2025-12-26 15:16:45.09	2793.00
48c78b92-ba83-4a8b-8f88-f51a036e37a5	259fd720-2313-4011-875f-af7a4e40ed5b	346b32d1-b21f-4ce9-ac27-a69e67abb103	4410.00	\N	\N	t	2025-12-28 14:53:38.129	4410.00
8a660e0a-9eee-4097-bf87-e326bbcffdd0	1410a808-8dfa-4536-ba2e-96ed415546b3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	249020.70	\N	\N	t	2026-01-05 14:25:53.276	249020.70
793cc984-1aad-4fb9-9ff6-52a30c5970e9	259fd720-2313-4011-875f-af7a4e40ed5b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1890.00	\N	\N	t	2026-01-05 14:25:53.279	1890.00
7520ca09-a91e-451c-b462-ae8187e7c9f1	983a2e37-6703-4b0d-bf76-665b39177157	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5580.00	\N	\N	t	2026-01-05 14:25:53.277	5580.00
9571eaff-f817-41fa-826b-b6f5bd40cc58	b3d56223-0bc4-4e22-9bc0-ebe3a5e4e62a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3210.00	\N	\N	t	2026-01-05 14:25:53.277	3210.00
cd172c32-16c8-4576-90e3-6ffbd0fbe501	6b88b35b-bbfb-49c0-a052-dec38d0bff5c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1950.00	\N	\N	t	2026-01-05 14:25:53.277	1950.00
542a41ff-c9b4-4ca7-b009-41c0d1015996	7f36af3a-cb00-4e88-8eb5-9447822cbb52	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1197.00	\N	\N	t	2026-01-05 14:25:53.279	1197.00
3a027fb6-f196-4a67-93f7-e79f3a92f71a	9092d427-60c4-4bea-a3c8-887726a02d75	346b32d1-b21f-4ce9-ac27-a69e67abb103	3004.40	\N	\N	t	2026-01-06 17:50:43.865	3004.40
c4289ecc-3a7b-4a46-af2e-12444b7b6632	9092d427-60c4-4bea-a3c8-887726a02d75	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1287.60	\N	\N	f	\N	\N
b6982884-7f6c-4bb6-9334-8dc7e6086d97	f8f38577-8a39-49d6-8a1a-1fd2b121385e	346b32d1-b21f-4ce9-ac27-a69e67abb103	56345.80	\N	\N	t	2026-01-13 18:07:30.171	56345.80
5e7ea533-a0a1-4e63-9af6-ea6fb2e11a64	f8f38577-8a39-49d6-8a1a-1fd2b121385e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	24148.20	\N	\N	f	\N	\N
dfa42bb5-59d4-4e0c-b64e-c3e6bbd2ebc9	bdbc0fc3-1d0a-4773-8a20-d3330e456e7f	346b32d1-b21f-4ce9-ac27-a69e67abb103	4550.00	\N	\N	t	2026-01-14 14:24:36.506	4550.00
864bf3a0-7051-49cf-8115-0a87a8fb8699	bdbc0fc3-1d0a-4773-8a20-d3330e456e7f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1950.00	\N	\N	f	\N	\N
48a1bdc9-58d1-4995-b2ae-3768932bc79f	03946a81-2e87-4343-82a1-7eb438cf52b8	346b32d1-b21f-4ce9-ac27-a69e67abb103	1820.00	\N	\N	t	2026-01-16 15:14:24.849	1820.00
0d36d95e-6d6b-4480-9a05-663edf3431d0	03946a81-2e87-4343-82a1-7eb438cf52b8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	780.00	\N	\N	f	\N	\N
5c09dce4-da9d-43fd-a715-3ff598ebaa6f	62421dc7-a070-4ed6-b48e-a20d5c68d13c	346b32d1-b21f-4ce9-ac27-a69e67abb103	3500.00	\N	\N	f	\N	\N
df5841e2-2d3c-40db-80e1-fdc7f4226bc2	c1b7b1ba-f35a-4f7b-99f9-bb7986383485	346b32d1-b21f-4ce9-ac27-a69e67abb103	4340.00	\N	\N	f	\N	\N
9b4d0a9e-83e9-4287-b902-3985a3eac180	dd946b44-29fc-419a-b9a2-775ffe6504eb	346b32d1-b21f-4ce9-ac27-a69e67abb103	1400.00	\N	\N	f	\N	\N
83800b95-37d0-4ff9-870e-e94efdbe09bb	f60a6348-e545-49c2-b324-ef1957eee4cb	346b32d1-b21f-4ce9-ac27-a69e67abb103	2100.00	\N	\N	t	2025-12-28 14:55:52.248	2100.00
09f96479-55ac-484a-9d93-f5828d11fdb6	d432f78f-4419-4e3e-a9b4-45b29139169a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2292.60	\N	\N	t	2026-01-05 14:25:53.276	2292.60
92a93ce4-f181-4614-859d-61abcad582ff	f60a6348-e545-49c2-b324-ef1957eee4cb	d8c5e32f-c64d-4437-b302-3a64d8f3f116	900.00	\N	\N	t	2026-01-05 14:25:53.279	900.00
b6037c65-d974-4c25-86c4-bbea2a9b04cc	e7efdd29-bb34-424d-a398-5eb7d08dc196	d8c5e32f-c64d-4437-b302-3a64d8f3f116	600.00	\N	\N	t	2026-01-05 14:25:53.277	600.00
19938cfd-d187-4f63-8e4b-3b3d1aa6e9b0	62421dc7-a070-4ed6-b48e-a20d5c68d13c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1500.00	\N	\N	t	2026-01-05 14:25:53.277	1500.00
3baa675b-623d-41bd-8aff-c1622a10a8ea	c1b7b1ba-f35a-4f7b-99f9-bb7986383485	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1860.00	\N	\N	t	2026-01-05 14:25:53.277	1860.00
24df5cb1-370e-4562-8b03-2d7ed442c031	dd946b44-29fc-419a-b9a2-775ffe6504eb	d8c5e32f-c64d-4437-b302-3a64d8f3f116	600.00	\N	\N	t	2026-01-05 14:25:53.277	600.00
8d31b073-1b41-42a5-ad10-d0834352481a	a7401b4b-f38d-475c-9260-94437dedb8a4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4764.00	\N	\N	t	2026-01-05 14:25:53.278	4764.00
2bb458fe-637a-4605-bc23-73301b23de58	61679660-f958-4fef-947a-14f3296364cd	346b32d1-b21f-4ce9-ac27-a69e67abb103	582547.00	\N	\N	t	2026-01-05 16:28:27.992	582547.00
b9d207a7-3a4d-43fc-b89e-5c22ea0ba360	61679660-f958-4fef-947a-14f3296364cd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	249663.00	\N	\N	f	\N	\N
8f953dde-6427-4283-b358-9edbc9ba96e4	4d9e05ff-0954-49ac-a035-0ac71ff93fc4	346b32d1-b21f-4ce9-ac27-a69e67abb103	20650.70	\N	\N	t	2026-01-06 17:52:27.711	20650.70
69576963-bb33-4f12-be38-553951f1ff75	4d9e05ff-0954-49ac-a035-0ac71ff93fc4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	8850.30	\N	\N	f	\N	\N
75a75ed7-e02c-4509-801c-4a57b75ad6ae	04ad1e15-2148-45e5-b014-ddb5a6325995	346b32d1-b21f-4ce9-ac27-a69e67abb103	0.00	\N	\N	t	2026-01-13 19:36:46.143	0.00
b53c16b4-ebc5-4d3e-a145-a15da152546a	04ad1e15-2148-45e5-b014-ddb5a6325995	d8c5e32f-c64d-4437-b302-3a64d8f3f116	131239.00	\N	\N	f	\N	\N
95db364e-d8d6-406b-9a96-ef4be1d09188	630d21bf-e344-4915-8570-9346a948fb17	346b32d1-b21f-4ce9-ac27-a69e67abb103	11116.00	\N	\N	t	2026-01-14 14:31:19.333	11116.00
43d3755c-c61d-47c6-b804-cadd254bf0f6	630d21bf-e344-4915-8570-9346a948fb17	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4764.00	\N	\N	f	\N	\N
851b75ea-cbe3-4b41-8c65-0a9779b824a1	b3d56223-0bc4-4e22-9bc0-ebe3a5e4e62a	346b32d1-b21f-4ce9-ac27-a69e67abb103	7490.00	\N	\N	f	\N	\N
1f492b41-bde7-420f-b4bb-330a69e994b3	b1aaab99-34e0-4093-92f2-3a3e0371cf7e	346b32d1-b21f-4ce9-ac27-a69e67abb103	2240.00	\N	\N	f	\N	\N
26732a43-e954-4806-bd12-8631df35083c	c3bbc20d-5db5-4d1e-95e4-e0ba4d4db016	346b32d1-b21f-4ce9-ac27-a69e67abb103	24297.00	\N	\N	f	\N	\N
6c9bfbf9-9519-4f49-9d34-c349ec7bd634	67c6757a-3c05-48ea-bc0b-866fc49bafef	346b32d1-b21f-4ce9-ac27-a69e67abb103	3360.00	\N	\N	f	\N	\N
35ac3a58-a5e7-49d3-b0ca-481ad8c6c20d	6bef0e91-a061-4ed4-92a5-a5d2277d4c1a	346b32d1-b21f-4ce9-ac27-a69e67abb103	3500.00	\N	\N	f	\N	\N
6317e0ae-6428-4a3f-b8c1-b80523a48b54	dba127f1-4545-4f50-88e6-e65f262e1f58	346b32d1-b21f-4ce9-ac27-a69e67abb103	5761.00	\N	\N	f	\N	\N
28fcbfa8-1ff2-4fc8-a23e-0d6fe42408ba	094254a7-4ffa-4841-a67b-017995c7d83d	346b32d1-b21f-4ce9-ac27-a69e67abb103	29479.80	\N	\N	t	2025-12-26 15:19:00.248	29479.80
5afbc4e0-0fa6-4f9e-a70f-54b8d1636c1b	237759f6-da8c-412d-aa33-0822bd937dd6	346b32d1-b21f-4ce9-ac27-a69e67abb103	12040.00	\N	\N	f	\N	\N
c8c80e04-8b51-4e04-8e73-c63cb5e9829d	96e7c874-8c93-4dcd-a011-078d4addde80	346b32d1-b21f-4ce9-ac27-a69e67abb103	4809.00	\N	\N	f	\N	\N
cb7ffba0-d9c2-42d9-a4d9-f56b3f230c10	f793c041-cb25-40b4-87bb-97b5c403bbf0	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	50000.00	\N	\N	f	\N	\N
59a59f7e-5495-4a79-9d85-69f7e0c63d8f	f793c041-cb25-40b4-87bb-97b5c403bbf0	b88abd1d-92fe-4818-ba01-95681f09b96d	50000.00	\N	\N	f	\N	\N
8693f661-254f-4610-af1a-02fdd4ce6c65	e778dea8-7118-458b-a395-db29bac53239	346b32d1-b21f-4ce9-ac27-a69e67abb103	1190.00	\N	\N	t	2025-12-12 13:06:12.431	1190.00
18bfe198-648c-4263-b1e4-4e8789984737	803a0356-284a-4a30-9547-fd80918575f3	346b32d1-b21f-4ce9-ac27-a69e67abb103	20365.80	\N	\N	t	2025-12-12 13:06:12.431	20365.80
306e2862-c868-4012-9f01-8598d14036fe	7d8e34fe-a721-4f87-a832-29b8762195f1	346b32d1-b21f-4ce9-ac27-a69e67abb103	7000.00	\N	\N	t	2025-12-12 13:06:12.431	7000.00
0d493e83-b362-4e83-9819-c7aedd5521eb	bb4da131-5047-4cb2-baf9-9eaa47e33dc2	346b32d1-b21f-4ce9-ac27-a69e67abb103	12331.90	\N	\N	t	2025-12-12 13:06:12.431	12331.90
f5a9491f-0c95-48ce-8cf6-7d062653acf5	ebcbb572-de8d-4a37-8a13-de78c9548bc1	346b32d1-b21f-4ce9-ac27-a69e67abb103	214610.20	\N	\N	t	2025-12-12 13:06:12.431	214610.20
39abf96c-bf47-4b45-a66d-e30c503caffa	68b3dff6-7db5-4fdf-a522-269f760db361	346b32d1-b21f-4ce9-ac27-a69e67abb103	46284.70	\N	\N	t	2025-12-12 13:06:12.431	46284.70
7565daf2-4788-474e-929f-91edd82d1c31	93233d94-a005-40ac-8f8a-422a26a0828a	346b32d1-b21f-4ce9-ac27-a69e67abb103	73178.00	\N	\N	t	2025-12-12 13:06:12.431	73178.00
2ecbaa53-c37e-4d4f-8ec2-a9b0792dc961	74e7fea1-2988-4415-919d-57b0e13cd1d1	346b32d1-b21f-4ce9-ac27-a69e67abb103	5740.00	\N	\N	t	2025-12-12 13:06:12.431	5740.00
c95f7bc9-2daf-4548-bfe9-4f6e6a383a08	552f31a9-1dbe-44d1-bc52-6221ff3b180d	346b32d1-b21f-4ce9-ac27-a69e67abb103	4473.00	\N	\N	t	2025-12-12 13:06:12.431	4473.00
429553ce-0833-4547-94a0-a872f237f7fa	8f79cf8d-2743-465d-a084-2a1c40ea156d	346b32d1-b21f-4ce9-ac27-a69e67abb103	4503.80	\N	\N	t	2025-12-12 13:06:12.431	4503.80
1b7b19b8-ca09-47f5-9d28-653d2928ef2f	1842b47c-b8f0-4579-8166-4c699cbf6a48	346b32d1-b21f-4ce9-ac27-a69e67abb103	10920.00	\N	\N	t	2025-12-12 13:06:12.431	10920.00
4ee16f58-e876-42dd-92ac-e53746399872	f3e2892b-db6c-423d-aa28-c27373b2c145	346b32d1-b21f-4ce9-ac27-a69e67abb103	2275.00	\N	\N	t	2025-12-12 13:06:12.431	2275.00
7fa1dc63-1471-4bfc-9227-96dc9b56214d	e22492b5-6775-40a4-92bb-99b9b4757e07	346b32d1-b21f-4ce9-ac27-a69e67abb103	1995.00	\N	\N	t	2025-12-12 13:06:12.431	1995.00
ae14c574-7543-4ea1-aca1-c95166aaee2c	45e81ef3-55fc-4d06-8cc9-40beae0195e4	346b32d1-b21f-4ce9-ac27-a69e67abb103	9030.00	\N	\N	t	2025-12-12 13:06:12.431	9030.00
073f9c0f-2938-40f3-b3c6-7f74c2b712c5	4569af55-fb0a-4766-aa37-eddb2cda2ed6	346b32d1-b21f-4ce9-ac27-a69e67abb103	17885.00	\N	\N	t	2025-12-12 13:06:12.431	17885.00
a198d5dc-4c6a-41b0-8d0e-2b1a0abbf2f6	18ce2bd5-86f8-481a-953f-4a5a1e898aad	346b32d1-b21f-4ce9-ac27-a69e67abb103	8386.00	\N	\N	t	2025-12-12 13:06:12.431	8386.00
00721595-68a0-41b6-8d5d-3eaa983c680d	ba47ca58-eb1c-408a-81e0-698db5373791	346b32d1-b21f-4ce9-ac27-a69e67abb103	14345.80	\N	\N	t	2025-12-12 13:06:12.431	14345.80
a7b3a05b-aea2-430c-a069-3cacdfca8ba6	2cb86c12-69e2-47b5-93cd-bbcc44321ef3	346b32d1-b21f-4ce9-ac27-a69e67abb103	2723.00	\N	\N	t	2025-12-12 13:06:12.431	2723.00
70cf4182-dbb1-4d5d-ab87-8a213335dd2b	b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2841.30	\N	\N	t	2025-12-12 13:06:12.431	2841.30
073a8675-52ed-4170-9c21-c9f1ab76b290	b72074b4-13a7-4040-9e57-ff0c0b8616f5	346b32d1-b21f-4ce9-ac27-a69e67abb103	30079.00	\N	\N	t	2025-12-12 13:06:12.431	30079.00
f6700f59-c566-4a67-910b-295b1e767915	7fa4a7f7-a048-4e21-8fdd-47e190568efa	346b32d1-b21f-4ce9-ac27-a69e67abb103	14847.70	\N	\N	t	2025-12-12 13:06:12.431	14847.70
51b3dddc-9060-40ae-b8a0-1b1f43dcde5b	2623f91f-e469-42e8-82c5-2d695118d5e5	346b32d1-b21f-4ce9-ac27-a69e67abb103	1400.00	\N	\N	t	2025-12-12 13:06:12.431	1400.00
1e7178bc-8f90-45a7-a2d7-51bf0c4f69ea	7d5dc01b-a747-4119-a29a-46138e7d511a	346b32d1-b21f-4ce9-ac27-a69e67abb103	10850.00	\N	\N	t	2025-12-12 13:06:12.431	10850.00
130af1f3-04a7-4bb6-85b5-52b72752f3e7	2d20baaf-0896-4bb0-a402-182517e677bb	346b32d1-b21f-4ce9-ac27-a69e67abb103	42849.10	\N	\N	t	2025-12-12 13:06:12.431	42849.10
d8df3cfc-939d-4344-8caf-a687b8fda268	572273cc-a7f4-42c2-8acc-80357317cc62	346b32d1-b21f-4ce9-ac27-a69e67abb103	25039.00	\N	\N	t	2025-12-12 13:06:12.431	25039.00
57ca1fb4-f2eb-446f-9a1d-c299061cc0d7	91b1b337-3960-4b9c-8a47-e4ea0e6989fd	346b32d1-b21f-4ce9-ac27-a69e67abb103	3915.10	\N	\N	t	2025-12-12 13:06:12.431	3915.10
37c8a8d3-9281-4bde-b86e-6f1e5d4e93ac	dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	11116.00	\N	\N	t	2025-12-12 13:06:12.431	11116.00
702da7a4-247c-448e-be53-24cbc69b8548	5f1f4bf4-9173-47b0-b2cf-61e83dab816b	346b32d1-b21f-4ce9-ac27-a69e67abb103	5775.00	\N	\N	t	2025-12-12 13:06:12.431	5775.00
ef7da687-512e-4a8e-b6fb-e0929b26db39	5f0afa26-d88b-4fbc-9f6b-218fff7f4928	346b32d1-b21f-4ce9-ac27-a69e67abb103	4396.00	\N	\N	t	2025-12-12 13:06:12.431	4396.00
9f9a7143-5de4-4492-b303-ed6bc05ca209	d7dfb498-63ee-475c-bec0-3f56ee6e0a78	346b32d1-b21f-4ce9-ac27-a69e67abb103	2016.00	\N	\N	t	2025-12-12 13:06:12.431	2016.00
89d7ed99-fa24-40a4-962b-1e75e692a484	67c6757a-3c05-48ea-bc0b-866fc49bafef	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1440.00	\N	\N	t	2026-01-05 14:25:53.277	1440.00
2ff68f50-32f3-4437-970e-3834cdae6a68	96e7c874-8c93-4dcd-a011-078d4addde80	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2061.00	\N	\N	t	2026-01-05 14:25:53.278	2061.00
2f7ab06d-0f28-425c-820a-9bcb785a241d	437cbb46-b4e4-4fa8-9856-6c7a23a2c691	346b32d1-b21f-4ce9-ac27-a69e67abb103	12632.20	\N	\N	t	2025-12-12 13:06:12.431	12632.20
e751abd1-bb77-4541-81f8-f7ca8d155861	98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	346b32d1-b21f-4ce9-ac27-a69e67abb103	3493.00	\N	\N	t	2025-12-12 13:06:12.431	3493.00
16b926fe-5668-407f-b140-d03ed24e8b9b	f766dd50-9d76-4c35-b1f0-31a1665ff17b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9148.20	\N	\N	t	2025-12-12 13:06:12.431	9148.20
502d6fa5-d534-4f59-a87d-e044467772ba	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	48000.00	\N	\N	t	2025-12-12 13:06:12.431	48000.00
c0cbf881-a74a-483f-bb94-f69378603ba2	e4c29aa9-74ba-4386-b89a-fb0220e274da	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	5000.00	\N	\N	t	2025-12-12 13:06:12.431	5000.00
ca172261-a23a-4153-96d2-a5f5f9d39c89	b91e5888-a0a1-46ca-beb5-98348337bd53	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	24000.00	\N	\N	t	2025-12-12 13:06:12.431	24000.00
83b0a076-0464-47ed-ae7b-d9d26c116a05	765e5daa-b241-482e-a7d6-d5a84bb0e8cf	346b32d1-b21f-4ce9-ac27-a69e67abb103	135643.20	\N	\N	t	2025-12-12 13:06:12.431	135643.20
379e691f-7bc5-4f1c-99f1-ce0e7cbed8e6	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	60000.00	\N	\N	t	2025-12-12 13:06:12.431	60000.00
a4c0bbfa-2cf7-42f1-a52a-87f883f1e66e	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	b88abd1d-92fe-4818-ba01-95681f09b96d	40000.00	\N	\N	t	2025-12-12 13:06:12.431	40000.00
85476364-30e2-40a9-a5d3-55bb245b051f	ae157bab-ec8a-47c9-bc09-f6a8cc86d872	346b32d1-b21f-4ce9-ac27-a69e67abb103	53200.00	\N	\N	t	2025-12-12 13:06:12.431	53200.00
9cc1aa66-572f-48b5-9d00-bb596e841a23	050960db-eb58-4b40-9491-43e3bd07d6b8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3300.00	\N	\N	t	2025-12-12 13:06:12.431	3300.00
9ee45fe1-b0b9-4e5b-b3c8-bdd4f5b89e7c	132afb3f-2d58-49c6-8db4-35acf85ed773	346b32d1-b21f-4ce9-ac27-a69e67abb103	0.00	\N	\N	t	2025-12-12 13:06:12.431	0.00
d24e889d-3382-4ad6-9b13-9784d75e9fbd	dac8989b-541c-4875-a086-d347fb1168d0	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	t	2025-12-12 13:06:12.431	10500.00
6239f018-0620-4a69-8373-db839544df1a	5c595cc5-bb18-4234-8143-afe9185268f7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2058.00	\N	\N	t	2025-12-12 13:06:12.431	2058.00
81630e34-c1c0-4afc-8294-c93f4220e62e	a92509e9-742c-4594-ad4c-3698ad42f3fb	346b32d1-b21f-4ce9-ac27-a69e67abb103	14862.40	\N	\N	t	2025-12-12 13:06:12.431	14862.40
f2d868cc-cc48-40e3-ac3e-290894500f22	2ec956fb-f2fd-4845-9a27-6e314d8d9335	346b32d1-b21f-4ce9-ac27-a69e67abb103	9800.00	\N	\N	t	2025-12-12 13:06:12.431	9800.00
5cfa9458-c77c-4688-b291-2c14ee835f43	567b3b22-06c7-43f5-bfd7-439001a241fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	14350.00	\N	\N	t	2025-12-12 13:06:12.431	14350.00
fef42058-505d-48b3-a623-288f724528fd	15658593-c707-4e38-a84b-a222b5509899	346b32d1-b21f-4ce9-ac27-a69e67abb103	36393.00	\N	\N	t	2025-12-12 17:13:46.298	36393.00
96ad303e-fbed-432c-89bd-244ac1147c82	9b452557-46f2-4054-85c8-93a08371fbcf	346b32d1-b21f-4ce9-ac27-a69e67abb103	14700.00	\N	\N	t	2025-12-12 17:16:01.77	14700.00
7d381c55-8f77-4fbc-a63d-b23f6309eae3	95abca17-88fd-491d-993b-3cd08c6c5904	346b32d1-b21f-4ce9-ac27-a69e67abb103	8120.00	\N	\N	t	2025-12-15 16:44:07.469	8120.00
c60f5163-3baa-4038-9bc1-15f8b6fa05a4	a7401b4b-f38d-475c-9260-94437dedb8a4	346b32d1-b21f-4ce9-ac27-a69e67abb103	11116.00	\N	\N	t	2025-12-15 16:45:35.357	11116.00
7a71d7b3-21e2-4e19-b987-94376e48df3b	760743c0-bdc5-4424-b0bc-7f7a2cf1d353	346b32d1-b21f-4ce9-ac27-a69e67abb103	5767.30	\N	\N	t	2025-12-15 16:51:19.411	5767.30
e4798969-86b6-414c-9f66-4e5bec4df0e8	a3eba116-8c33-4228-b0be-7053a24cb357	346b32d1-b21f-4ce9-ac27-a69e67abb103	2933.00	\N	\N	t	2025-12-15 16:55:50.608	2933.00
627c28b9-a512-425a-a6b4-1896640f477b	572fcb3c-5c15-4c21-8e97-72eaae8ef7af	346b32d1-b21f-4ce9-ac27-a69e67abb103	214610.20	\N	\N	t	2025-12-16 13:58:29.671	214610.20
9c3140c5-32cf-4500-8726-c143d37e0b48	18e1b6bd-cb07-4b00-b614-c401b3b80a15	346b32d1-b21f-4ce9-ac27-a69e67abb103	36152.20	\N	\N	t	2025-12-16 14:00:42.491	36152.20
12deda1a-af96-4362-9360-3a69c99b8d4a	f96ae693-623d-4831-aadd-13b0625179b6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2013.90	\N	\N	t	2026-01-05 14:25:53.278	2013.90
8b1a077f-9a4e-4182-87d8-66b457deb274	887152ce-ed9e-44e1-8336-c1f4e8e900e4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3897.00	\N	\N	t	2026-01-05 14:25:53.278	3897.00
f5bdc0b6-3a14-4b79-9778-87dbf583ca0f	f96ae693-623d-4831-aadd-13b0625179b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	4699.10	\N	\N	t	2025-12-18 21:03:13.383	4699.10
9e359550-eb97-4767-b610-9b42759f4bac	887152ce-ed9e-44e1-8336-c1f4e8e900e4	346b32d1-b21f-4ce9-ac27-a69e67abb103	9093.00	\N	\N	t	2025-12-18 21:04:20.75	9093.00
36fcc6a4-f0af-4614-997b-2251fb46dd6d	6808c0e9-ff25-4888-a5ff-0f9a5ee90420	346b32d1-b21f-4ce9-ac27-a69e67abb103	4158.00	\N	\N	t	2025-12-18 21:08:30.536	4158.00
c2b1800a-d49a-4a5b-947d-1fdf16bb1c1c	42496f51-a385-4fcf-8276-445616899437	346b32d1-b21f-4ce9-ac27-a69e67abb103	10514.00	\N	\N	t	2025-12-18 21:11:22.688	10514.00
123e65f2-4719-4880-9a3e-b3225ca54e65	97e6402f-2c9c-4a2f-9abe-1525d7c3acff	346b32d1-b21f-4ce9-ac27-a69e67abb103	96351.50	\N	\N	t	2025-12-18 21:19:17.524	96351.50
54d8cb1f-d37a-4de3-b207-db4a18da3b78	3afd939d-8724-4633-8101-016b8cd1b7d7	346b32d1-b21f-4ce9-ac27-a69e67abb103	595.00	\N	\N	t	2025-12-22 13:53:26.622	595.00
e4619dcf-f63d-40cb-9f47-d95d44379688	d6621bad-11d5-43c2-9cd6-6e04c71b9c42	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	t	2025-12-22 13:54:34.332	10500.00
66f1bcff-9535-46f8-990b-146f20e14f0a	17210896-4caa-491a-a91b-39c6c3ee1f6a	346b32d1-b21f-4ce9-ac27-a69e67abb103	4830.00	\N	\N	t	2025-12-22 13:56:10.36	4830.00
d062cbdd-4bd6-46dc-b9fd-ef22cace7e52	6808c0e9-ff25-4888-a5ff-0f9a5ee90420	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1782.00	\N	\N	t	2026-01-05 14:25:53.278	1782.00
d69a1dfc-519b-49ff-85b6-34d068c081ba	42496f51-a385-4fcf-8276-445616899437	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4506.00	\N	\N	t	2026-01-05 14:25:53.278	4506.00
783512e7-a65c-421d-ad66-5e87ad0420f5	97e6402f-2c9c-4a2f-9abe-1525d7c3acff	d8c5e32f-c64d-4437-b302-3a64d8f3f116	41293.50	\N	\N	t	2026-01-05 14:25:53.279	41293.50
9ac07fcf-4fcb-4c22-8ab9-6355cf09bf0b	3afd939d-8724-4633-8101-016b8cd1b7d7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	255.00	\N	\N	t	2026-01-05 14:25:53.279	255.00
ed97a038-f02a-405e-b94b-7a4fcfd57eea	d6621bad-11d5-43c2-9cd6-6e04c71b9c42	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4500.00	\N	\N	t	2026-01-05 14:25:53.279	4500.00
21cc5d72-1d17-417f-bc48-d10e9890ccd6	4eb62da7-111f-4444-b433-f9ad8a808fcd	346b32d1-b21f-4ce9-ac27-a69e67abb103	3052.70	\N	\N	t	2025-12-22 14:05:24.946	3052.70
c2dda506-07e4-4ac2-9a7e-dfd703cbaa6e	ba0bf43b-dc38-4162-93ba-b272d2931d33	346b32d1-b21f-4ce9-ac27-a69e67abb103	6643.00	\N	\N	t	2025-12-28 20:27:06.281	6643.00
c1618715-9467-41d2-895a-859d36151b9b	1218977d-425a-4a22-b667-d5256d4e14bd	346b32d1-b21f-4ce9-ac27-a69e67abb103	2506.00	\N	\N	t	2025-12-22 14:08:29.819	2506.00
59b60b2c-bf8b-4a94-bd3d-b48b9178ba7a	e116c785-ae64-4fb8-8b63-8ba8bfb0dc02	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2029.50	\N	\N	t	2025-12-22 14:24:31.37	2029.50
1f6da246-cbe9-4985-88a2-b155807d0ce3	ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4	346b32d1-b21f-4ce9-ac27-a69e67abb103	12600.00	\N	\N	t	2025-12-22 14:26:48.472	12600.00
5ffc3d92-35a9-4a45-9df2-fcbd18a1c30a	4f40afb8-d635-43dd-91a0-eadcacbdf008	d8c5e32f-c64d-4437-b302-3a64d8f3f116	19422.00	\N	\N	t	2026-01-05 14:25:53.276	19422.00
8ff699aa-3ab4-4ffa-b3d7-35b8f75e8e9e	ba0bf43b-dc38-4162-93ba-b272d2931d33	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2847.00	\N	\N	t	2026-01-05 14:25:53.279	2847.00
ed182de5-45b0-4455-8494-6b6773164d68	21599688-2919-4e83-bdfa-c17f15423a4e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	8850.30	\N	\N	t	2026-01-05 14:25:53.277	8850.30
fec4ab63-5a34-49ea-8a49-26ed6c7c3666	95abca17-88fd-491d-993b-3cd08c6c5904	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3480.00	\N	\N	t	2026-01-05 14:25:53.278	3480.00
d9e616e9-7822-4680-afb9-8700166636b6	17210896-4caa-491a-a91b-39c6c3ee1f6a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2070.00	\N	\N	t	2026-01-05 14:25:53.279	2070.00
c74932c7-ca8b-4e2d-b291-5fc724299812	4eb62da7-111f-4444-b433-f9ad8a808fcd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1308.30	\N	\N	t	2026-01-05 14:25:53.279	1308.30
3349a431-ed36-403a-9bfa-b0f27ca9349e	ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5400.00	\N	\N	t	2026-01-05 14:25:53.279	5400.00
49802feb-84b8-40fe-a628-c699f611b16f	1218977d-425a-4a22-b667-d5256d4e14bd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1074.00	\N	\N	t	2026-01-05 14:25:53.279	1074.00
0c1da6cd-fccc-4bb5-95dd-f11c9ff40f8d	e116c785-ae64-4fb8-8b63-8ba8bfb0dc02	346b32d1-b21f-4ce9-ac27-a69e67abb103	4735.50	\N	\N	t	2026-01-05 14:25:53.279	4735.50
035069b6-6a71-4f96-940e-e974b207d03f	094254a7-4ffa-4841-a67b-017995c7d83d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	12634.20	\N	\N	t	2026-01-05 14:25:53.279	12634.20
61593353-75d6-4b9e-8c63-473a99194995	429a9dd9-ea4a-44ce-a482-b494fdd094c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	21382.90	\N	\N	t	2026-01-05 16:29:28.918	21382.90
46ea72a1-a377-4310-8174-10f55bf907b7	429a9dd9-ea4a-44ce-a482-b494fdd094c5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9164.10	\N	\N	f	\N	\N
24de9edd-0d80-45b5-a3e6-7a68cc32e9e7	702f3d38-5446-46df-b064-c2e82c5ff31d	346b32d1-b21f-4ce9-ac27-a69e67abb103	5775.00	\N	\N	t	2026-01-05 16:30:47.93	5775.00
69d17f18-2de3-4e7c-b0f0-8771d485cb7f	702f3d38-5446-46df-b064-c2e82c5ff31d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2475.00	\N	\N	f	\N	\N
b3265571-54fa-431c-b1c0-79490d515d5e	81d4a09c-255a-4df4-994a-62dec7497655	346b32d1-b21f-4ce9-ac27-a69e67abb103	9240.00	\N	\N	t	2026-01-07 14:15:42.489	9240.00
ebc35c2f-0f61-4bb8-bf8e-7820bc36e8cc	81d4a09c-255a-4df4-994a-62dec7497655	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3960.00	\N	\N	f	\N	\N
4088f982-1147-462f-9787-67a1517cfeac	f36bbf02-2953-4b09-b7e5-020314750413	346b32d1-b21f-4ce9-ac27-a69e67abb103	4319.00	\N	\N	t	2026-01-14 14:04:48.748	4319.00
e7af326f-841f-4ae3-b9d1-f78c4f52214c	f36bbf02-2953-4b09-b7e5-020314750413	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1851.00	\N	\N	f	\N	\N
a29d2505-efd6-4d63-afff-c42a829510dc	bac1d01e-1ee3-4b69-a012-dfd0d9973aca	346b32d1-b21f-4ce9-ac27-a69e67abb103	34929.30	\N	\N	t	2026-01-14 14:07:41.76	34929.30
ba3c880e-3f45-447d-872f-fcf0a66bf92a	bac1d01e-1ee3-4b69-a012-dfd0d9973aca	d8c5e32f-c64d-4437-b302-3a64d8f3f116	14969.70	\N	\N	f	\N	\N
a4edf654-53d1-47b4-9600-650f92580b9a	bb75b0dd-ee38-4817-bbd1-60a57e0154c6	346b32d1-b21f-4ce9-ac27-a69e67abb103	2800.00	\N	\N	t	2026-01-14 14:25:54.929	2800.00
e02dfccd-7219-4566-8367-962936ab207b	bb75b0dd-ee38-4817-bbd1-60a57e0154c6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1200.00	\N	\N	f	\N	\N
d62400b1-c33a-4eb2-a9cc-e1895d1c17f5	fda5f519-5911-4872-9dfb-7ff6744c8c2b	346b32d1-b21f-4ce9-ac27-a69e67abb103	9240.00	\N	\N	t	2026-01-15 15:39:34.997	9240.00
8ea8fac5-8f26-4db5-aec4-3756c1a5af4c	fda5f519-5911-4872-9dfb-7ff6744c8c2b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3960.00	\N	\N	f	\N	\N
\.


--
-- Data for Name: group_member_split_defaults; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."group_member_split_defaults" ("id", "group_id", "user_id", "percentage", "shares", "exactAmount", "created_at", "updated_at") FROM stdin;
d0df5d04-ea2a-4512-84c2-a4cf1e9d821b	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	70.00	\N	\N	2025-11-17 16:41:41.492	2025-11-17 16:41:41.492
3e200f55-ad4e-403b-a89c-7101aa371dff	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	30.00	\N	\N	2025-11-17 16:41:41.492	2025-11-17 16:41:41.492
b40b201e-a79c-4812-b662-a32f45f3ea0c	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	60.00	\N	\N	2025-11-21 13:29:51.433	2025-11-21 13:29:51.433
0c586ef0-92bf-4d8a-89b3-71e1983e40a2	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	40.00	\N	\N	2025-11-21 13:29:51.433	2025-11-21 13:29:51.433
\.


--
-- Data for Name: group_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."group_members" ("id", "group_id", "user_id", "joined_at") FROM stdin;
b3d692c9-0121-47fb-9967-dca36ef160af	529a7b84-0680-4735-8fcd-e76fdb185245	346b32d1-b21f-4ce9-ac27-a69e67abb103	2025-11-17 16:41:33.761
d592a3f7-7c09-4b13-9021-caccf16ec82a	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2025-11-17 16:41:37.236
7ea33e47-c82f-4737-8c48-de18822ce4c6	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	2025-11-21 13:29:43.611
595b3adc-9e94-49cf-bf0c-71971ea1a0e0	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	2025-11-21 13:29:47.544
\.


--
-- Data for Name: import_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."import_history" ("id", "user_id", "account_id", "file_name", "file_type", "total_rows", "success_count", "failed_count", "status", "imported_at", "completed_at") FROM stdin;
67a6a633-be82-48b4-ac36-6ab0b848dd52	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	transacciones_santander_visa_noviembre.xlsx	EXCEL	6	6	0	COMPLETED	2025-11-18 16:52:51.579	2025-11-18 16:53:31.31
13ae48a6-c39e-41c5-8339-e15ae27187b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	transacciones_santander_amex_noviembre.xlsx	EXCEL	17	17	0	COMPLETED	2025-11-18 17:19:33.341	2025-11-18 17:22:20.08
cb94bec4-70bb-431e-9681-d9720ff53508	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	transaction_lider_bci_noviembre.xlsx	EXCEL	9	9	0	COMPLETED	2025-11-18 19:37:04.545	2025-11-18 19:38:54.244
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."loans" ("id", "user_id", "borrower_name", "borrower_user_id", "original_amount", "paid_amount", "currency", "loan_date", "notes", "status", "created_at", "updated_at") FROM stdin;
445024e9-1c20-421a-9807-56d789b6f5a9	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	Juan	\N	80000.00	80000.00	CLP	2025-11-26 00:00:00	Prueba de prestamo	PAID	2025-11-26 14:27:13.808	2025-11-26 15:32:02.429
3e81a39b-47af-407f-bb12-c618578720a5	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	Pedro	\N	50000.00	50000.00	CLP	2025-11-13 00:00:00	Prueba	PAID	2025-11-26 16:47:11.239	2025-11-26 16:48:25.115
303795ea-f5cf-4e13-9574-64915ea2d627	346b32d1-b21f-4ce9-ac27-a69e67abb103	Katty Rangel	\N	859000.00	859000.00	CLP	2025-11-14 00:00:00	Prestamo de noviembre 859.000 para que pague sus deudas	PAID	2025-11-14 18:12:36.136	2025-12-30 15:23:16.366
ba498be2-b8a8-419f-bf7b-8c8a71978dcc	346b32d1-b21f-4ce9-ac27-a69e67abb103	Katty Rangel	\N	800000.00	800000.00	CLP	2025-12-14 00:00:00	Prestamo de diciembre 800.000 para que pague sus deudas	PAID	2025-12-14 18:12:36.136	2026-01-14 17:47:25.217
a6995b4d-3606-4c2c-acd2-94418b85de19	346b32d1-b21f-4ce9-ac27-a69e67abb103	Katty Rangel	\N	827000.00	0.00	CLP	2026-01-14 00:00:00	Prestamo de enero, fueron 850mil, pero katty tenia a su favor 23mil	ACTIVE	2026-01-15 14:03:11.175	2026-01-15 14:03:11.175
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transactions" ("id", "user_id", "account_id", "type", "amount", "category_id", "description", "date", "receipt_url", "payee", "payer", "to_account_id", "shared_expense_id", "created_at", "updated_at", "loan_id") FROM stdin;
c46b2db9-4eea-40bb-a674-aedd6f9f14c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2690.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripción google drive	2025-11-10 03:00:00		Google		\N	\N	2025-11-18 16:53:23.521	2025-11-18 16:57:44.144	\N
4e2f33d4-41cf-47f9-8a3f-9e207f01f547	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	306586.00	bb80c962-8810-4dd6-8aa7-6277041dae78	Cuota Cleopatra	2025-11-13 03:00:00		Banco Internacional		\N	ebcbb572-de8d-4a37-8a13-de78c9548bc1	2025-11-18 17:21:44.751	2025-11-18 18:25:31.775	\N
63774e8b-c45c-4d10-8888-0a11f28a5a90	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6434.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Mani y Frutos Secos	2025-11-08 03:00:00		Tostaduria el mani	Jesus Leon Rangel	\N	8f79cf8d-2743-465d-a084-2a1c40ea156d	2025-11-18 19:37:52.458	2025-11-18 19:49:25.573	\N
e30ebf2c-e85a-48eb-9eaa-ec07ef1218c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8200.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Aguacates y Cambur	2025-11-01 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	74e7fea1-2988-4415-919d-57b0e13cd1d1	2025-11-18 19:37:28.69	2025-11-18 19:51:16.153	\N
6317cdaa-abe8-4e22-bac7-f881ba9f9bb2	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3250.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	f3e2892b-db6c-423d-aa28-c27373b2c145	2025-11-18 19:38:16.427	2025-11-18 19:47:47.382	\N
71b9d2ab-985e-4b2a-babd-f4de05853ab0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15880.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Netflix	2025-11-14 06:00:00		Netflix		\N	dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	2025-11-18 17:22:05.031	2026-01-14 13:39:42.543	\N
5917db38-79d5-463e-9d9c-93a646b37c8c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	104540.00	9434cf28-3890-49dc-a731-c8fd873f932c	Carnes del mes	2025-11-14 03:00:00		El Gocho de las Carnes		\N	93233d94-a005-40ac-8f8a-422a26a0828a	2025-11-18 17:22:16.729	2026-01-14 13:40:42.784	\N
d282d0d7-003f-4ee8-8762-9ac035ce5763	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	17617.00	b3c89167-bdfb-4fe5-9452-13eba9eb58e4	Agua de la casa	2025-11-13 03:00:00		Aguas andinas 		\N	bb4da131-5047-4cb2-baf9-9eaa47e33dc2	2025-11-18 17:21:33.73	2026-01-14 13:41:54.608	\N
83b85547-d445-43ac-946b-99e677cc2aea	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	66121.00	b6701d20-51bf-4d57-bbb3-47a5cf0aa7b3	Luz	2025-11-13 03:00:00		Enel		\N	68b3dff6-7db5-4fdf-a522-269f760db361	2025-11-18 17:21:54.174	2026-01-14 13:43:04.265	\N
201db698-37b2-4f6d-9aa1-9f5b1e4db038	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	29070.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	compras varias aliexpress	2025-11-11 03:00:00		Aliexpress		\N	\N	2025-11-18 16:53:28.071	2026-01-14 13:43:55.917	\N
2e762402-3928-4aaa-b718-1a0493c7f516	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	10000.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-11-09 03:00:00		Shell		\N	7d8e34fe-a721-4f87-a832-29b8762195f1	2025-11-18 17:21:22.94	2026-01-14 13:46:01.16	\N
25d64a0c-821d-43f8-9dda-0ee611b88750	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6390.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	compras varias	2025-11-08 03:00:00		Lider express	Jesus Leon Rangel	\N	552f31a9-1dbe-44d1-bc52-6221ff3b180d	2025-11-18 19:37:40.84	2026-01-14 13:46:57.025	\N
d1dcf649-7608-4832-a169-edeb31a23351	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	18196.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Capsula para fermentar aliexpress	2025-11-08 03:00:00		Aliexpress		\N	\N	2025-11-18 16:53:18.921	2026-01-14 13:50:41.862	\N
52ed71e2-f25a-42e3-af23-ef665a33752f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	29094.00	52a2a345-15f9-4494-93e8-8fd3d36913a5	Internet	2025-11-05 00:00:00	\N			\N	803a0356-284a-4a30-9547-fd80918575f3	2025-11-18 17:21:12.446	2026-01-14 13:57:09.815	\N
a37b800e-9326-439b-b44f-931d8586160a	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	1700.00	b37a8198-99ee-4bac-9d00-07b0bf8df102	Bolsas de dustin	2025-11-04 06:00:00		Super Lida (Chinos)		\N	e778dea8-7118-458b-a395-db29bac53239	2025-11-18 17:21:02.458	2026-01-14 13:58:06.217	\N
3e9350bc-050a-4046-8969-d40e5b50bf4d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3600.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Cabezal de ducha	2025-11-04 03:00:00		Super Lida (Chinos)		\N	fbeb7792-a9a4-456a-954e-92ae429165bc	2025-11-18 17:20:51.71	2026-01-14 13:58:58.34	\N
f7224a43-debf-4aae-9301-987d0bc4a957	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8250.00	710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Spotify	2025-11-01 06:00:00		Spotify		\N	5f1f4bf4-9173-47b0-b2cf-61e83dab816b	2025-11-18 17:20:17.446	2026-01-15 14:11:48.235	\N
991ccb74-8420-43e0-9286-359a724d27ab	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3490.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Cortina del Baño	2025-11-03 03:00:00		Casa ideas		\N	35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	2025-11-18 17:20:27.049	2026-01-15 14:12:54.475	\N
82145efb-6977-456c-a9c1-e1c1c55b834e	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	49990.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Ollas	2025-11-03 03:00:00		Mercadolibre		\N	\N	2025-11-18 17:19:45.594	2026-01-15 14:14:33.27	\N
eacd6091-41b3-46b5-ad18-53e0ed717c53	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	18270.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Vitamina D	2025-11-03 03:00:00		Farmacia de Barrio		\N	\N	2025-11-18 17:20:41.607	2026-01-15 14:15:24.19	\N
71bbe3c3-976c-4bf2-8c59-be5bd5351dd0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	30000.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Fersitol y Vitamina D	2025-11-03 06:00:00		Farmacias Olga		\N	f933114d-930a-4bce-b125-0efb4a57fd9f	2025-11-18 17:20:37.371	2026-01-15 14:16:22.201	\N
d0cbd012-ca26-4237-a8ab-4e7826aa0a1d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	5511.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Potes redondos vidrio	2025-11-03 06:00:00		Mercadolibre		\N	3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	2025-11-18 17:19:41.52	2026-01-15 14:17:15.498	\N
7830902c-e299-42aa-a7cd-338cdef047a2	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24549.00	df6782b9-5c24-471e-b57e-1ab9220f72eb	Claro Tlf	2025-11-02 03:00:00		Claro		\N	\N	2025-11-18 16:52:54.135	2026-01-15 14:40:33.624	\N
860eaf70-b19c-48bf-b985-48894956d57c	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	20494.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Potes de vidrio	2025-11-03 12:00:00		Mercadolibre		\N	ba47ca58-eb1c-408a-81e0-698db5373791	2025-11-18 16:53:14.681	2026-01-15 14:41:41.102	\N
e36229fe-2250-4b54-96f1-fa9dc72b8bad	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	829452.00	d1f5a24f-e46e-4a39-8ddb-8815439adbc4	Cuota credito hipotecario	2025-11-03 16:42:00		Banco Scotiabank	Jesus Leon Rangel	\N	ea9ef05d-3077-437f-a6c6-041ad9f51932	2025-11-18 16:43:29.042	2026-01-15 14:42:37.21	\N
96136e2a-5499-45b7-a525-6dfd955872cf	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11980.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Vaso de la Licuadora d	2025-11-03 21:00:00		Mercadolibre		\N	18ce2bd5-86f8-481a-953f-4a5a1e898aad	2025-11-18 16:53:04.49	2026-01-15 14:43:29.072	\N
d45f4ca4-1bde-4562-81f2-f02a9af9c3aa	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	9107.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Comision cuenta corriente	2025-11-03 16:58:00		Scotiabank	Jesus Leon Rangel	\N	\N	2025-11-19 16:59:16.165	2025-11-19 16:59:16.165	\N
c9c2a224-b28e-4eef-b3dd-7ca80e66b2bf	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	10000.00	c27aee6a-2091-4e88-9135-cd0a10323bc4	Prueba 2	2025-11-25 12:58:28.078		Prueba 2	Pedro Perez	\N	e4c29aa9-74ba-4386-b89a-fb0220e274da	2025-11-25 12:58:30.271	2025-11-25 12:58:30.271	\N
cd5f249f-e6fc-4988-bda6-c0015edc011f	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	1995.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Uber One	2025-11-22 18:20:00		Uber	Jesus Leon Rangel	\N	\N	2025-11-25 18:21:11.815	2025-11-25 18:21:11.815	\N
db4c1cec-f65b-4a22-a1f5-797e872cff80	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	193776.00	c9b04f8d-867a-42cf-ba91-e5229101f119	Gastos Comunes Octubre	2025-11-24 18:28:00		Comunidad Feliz	Jesus Leon Rangel	\N	765e5daa-b241-482e-a7d6-d5a84bb0e8cf	2025-11-25 18:28:33.469	2025-11-25 18:28:33.469	\N
b3b287d4-1d04-45d6-9cc5-8fbcd6f98bb4	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-26 12:30:34.658	2025-11-26 12:30:34.658	\N
58e942dc-3242-4758-a7e4-c830a334bb92	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	80000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Juan	2025-11-26 15:00:00			Juan	\N	\N	2025-11-26 15:31:59.516	2025-11-26 15:32:45.395	\N
8708f9c4-a249-4388-8d0a-7f42aed5254d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	30494.00	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agua de tomar	2025-11-03 16:36:00		Maihue	Olga Manyoma	\N	f766dd50-9d76-4c35-b1f0-31a1665ff17b	2025-11-27 19:36:40.14	2025-11-27 19:36:40.14	\N
836e071c-caa9-4c7a-81b1-b9f2429f9247	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	12900.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 cajas de huevos super	2025-11-18 15:36:00		Distribuidora Catalan	Jesus Leon Rangel	\N	47754d59-4b36-422f-9aef-51a2a497ac3e	2025-11-19 15:37:26.85	2025-11-19 15:37:26.85	\N
3f6b6723-4eeb-42bb-9f4a-5f124ef2e779	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2850.00	27fccd39-52ef-4715-821b-ab85fa57f46f	compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	e22492b5-6775-40a4-92bb-99b9b4757e07	2025-11-18 19:38:27.335	2025-11-18 19:47:09.624	\N
0a1252a1-c5a5-4ede-9747-f14968e88b2a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	15600.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	1842b47c-b8f0-4579-8166-4c699cbf6a48	2025-11-18 19:38:04.649	2025-11-18 19:48:23.465	\N
a0505675-d73f-42e8-ac40-39faf8fb6c9c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51490.00	6d6c20c0-81f2-4afb-a72e-228c0a3982e0	Seguro Cleopatra	2025-11-01 03:00:00		BCI Seguros		\N	c79948dc-eeb2-47a3-b510-e23749afbe8f	2025-11-18 17:20:07.098	2025-11-18 19:56:01.603	\N
32946ca3-60e7-4862-a171-076495bd94ad	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15000.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-11-24 18:30:00		Shell	Jesus Leon Rangel	\N	75181c74-3105-4be0-8321-b5b70231fe3a	2025-11-25 18:30:28.584	2026-01-14 13:01:54.041	\N
afd93b8d-6ba2-444b-bb2b-479b63cc376d	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3935.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Otras compras	2025-11-21 18:19:00		Sb 778	Jesus Leon Rangel	\N	\N	2025-11-25 18:19:55.968	2026-01-14 13:17:56.85	\N
18ad6b45-3a19-4ed8-8011-3bd43f4a8067	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	35770.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	CoenzimaQ10	2025-11-20 20:45:00		MixGreens	Jesus Leon Rangel	\N	572273cc-a7f4-42c2-8acc-80357317cc62	2025-11-20 20:45:55.091	2026-01-14 13:18:58.783	\N
9f847ae5-9526-4101-8ed3-8b6688eb0f3e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	61213.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Cosas que faltaban desodorante,  papel, jabon etc	2025-11-20 20:31:00		Lider	Jesus Leon Rangel	\N	2d20baaf-0896-4bb0-a402-182517e677bb	2025-11-20 20:31:41.529	2026-01-14 13:22:35.755	\N
ff7cbd23-fd29-4a5c-a82c-db51344a350e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	15500.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-11-19 20:29:00		Shell	Jesus Leon Rangel	\N	7d5dc01b-a747-4119-a29a-46138e7d511a	2025-11-20 20:30:00.764	2026-01-14 13:23:34.415	\N
7ba04918-3f1e-4d60-b845-3d7ede1667d5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2000.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento mall	2025-11-19 20:28:00		Mall Parque Arauco	Jesus Leon Rangel	\N	2623f91f-e469-42e8-82c5-2d695118d5e5	2025-11-20 20:29:02.166	2026-01-14 13:24:27.624	\N
37ab8687-c406-45bc-81cd-71974f2c9b17	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	21211.00	fd586b2b-5549-4352-8290-45f92c8d8fe2	Decoracion navidad (pelotas de Mickey)	2025-11-19 20:26:00		Ripley	Jesus Leon Rangel	\N	7fa4a7f7-a048-4e21-8fdd-47e190568efa	2025-11-20 20:27:31.803	2026-01-14 13:25:16.399	\N
4e4bc9c9-15b4-4e2b-a7d2-50b995f18a99	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	33596.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras moldes torta, ejercicios	2025-11-19 17:09:00		MercadoLibre	Jesus Leon Rangel	\N	6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	2025-11-19 17:10:38.207	2026-01-14 13:27:09.435	\N
c8a33fdb-3259-48ad-91de-92bd34d9449e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8032.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Frutos secos	2025-11-18 15:38:00		Tostaduria el mani	Jesus Leon Rangel	\N	7b160b4a-383a-4766-97be-309455f9dd17	2025-11-19 15:38:46.824	2026-01-14 13:30:51.617	\N
75cbca77-3b74-4a6d-999a-f5bbfcf643f2	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	17807.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias 	2025-11-17 18:34:00		Lider Express	Jesus Leon Rangel	\N	1548acaf-10b4-4ed7-88a7-6dd07489a58a	2025-11-19 15:34:46.529	2026-01-14 13:34:20.493	\N
ca4644e1-8176-4644-94e5-6865d9daedb7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	550.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento	2025-11-15 17:06:00		Mall Plaza Egaña	Jesus Leon Rangel	\N	4a9d901f-0935-4abf-a385-fdf4d39b7eb5	2025-11-19 17:07:30.683	2026-01-14 13:35:16.693	\N
d175e7cd-ffc1-4e66-832c-f986102e8874	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11786.00	e72fa961-c75d-4b52-9ac8-242475226724	Examenes de sangre	2025-11-15 17:05:00		Clinica Davila	Jesus Leon Rangel	\N	\N	2025-11-19 17:06:20.645	2026-01-14 13:36:05.333	\N
93b272ea-6627-4fd2-9da8-4ca954865109	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	25550.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias, atun,camarones legucha otros	2025-11-10 03:00:00		Lider Express	Jesus Leon Rangel	\N	4569af55-fb0a-4766-aa37-eddb2cda2ed6	2025-11-18 19:38:50.621	2026-01-14 13:44:55.481	\N
f1d50213-db84-459c-964c-ac9680e0cabc	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	150000.00	5ec041fc-8c57-4f46-a1e9-80ffc95bf107	DCA crypto	2025-11-03 16:54:00		OrionX	Jesus Leon Rangel	\N	\N	2025-11-19 16:54:52.543	2026-01-15 15:08:50.042	\N
111a8138-19fe-4a94-bb88-788a29fdac48	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	13500.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Huevos	2025-11-01 03:00:00		Distribuidora Catalan	Jesus Leon Rangel	\N	18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	2025-11-18 19:37:16.005	2025-11-19 17:29:31.796	\N
e166da87-9e5b-4693-a786-58cd8c4c0778	b88abd1d-92fe-4818-ba01-95681f09b96d	530b9e4b-d53a-440b-a713-51021e71436b	EXPENSE	5000.00	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago a Pedro Perez por "Prueba 2"	2025-11-25 13:00:20.083	\N	\N	Juan Perez	\N	\N	2025-11-25 13:00:22.287	2025-11-25 13:00:22.287	\N
e105d4ab-f723-4da5-a45b-6896e214b06b	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9633.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripción Claude	2025-11-24 18:29:00		Anthropic	Jesus Leon Rangel	\N	\N	2025-11-25 18:29:43.329	2025-11-25 18:29:43.329	\N
bb5703e0-5e39-44d9-a962-c40dfb0c9767	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-25 19:23:44.093	2025-11-25 19:23:44.093	\N
497b94b6-9700-4771-bebf-50b76c7a2f3b	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	\N	Préstamo a Pedro	2025-11-04 00:00:00	\N	Pedro	Pedro Perez	\N	\N	2025-11-26 12:31:50.841	2025-11-26 12:31:50.841	\N
55797ec3-05e6-4250-8238-fbd19a60ca26	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	50000.00	15839aaf-2716-48da-82ca-5e5d6ce8c20a	Préstamo a Pedro	2025-11-13 00:00:00	\N	Pedro	Pedro Perez	\N	\N	2025-11-26 16:47:12.676	2025-11-26 16:47:12.676	3e81a39b-47af-407f-bb12-c618578720a5
bd341ff4-dd7c-4178-a8f4-9cf8bc08906c	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	20000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Pedro	2025-11-26 00:00:00	\N	\N	Pedro	\N	\N	2025-11-26 16:47:57.399	2025-11-26 16:47:57.399	\N
8d57926a-be14-4a2e-aedc-7022ce727769	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	30000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Pedro	2025-11-26 00:00:00	\N	\N	Pedro	\N	\N	2025-11-26 16:48:22.281	2025-11-26 16:48:22.281	\N
bb92a1bc-1b38-4c6a-9eea-0f4798fc4061	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	10190.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Cascanueces de navidad	2025-11-27 16:44:00		Falabella	Olga Manyoma	\N	c5c40a95-7b3f-46a5-aa6b-baeae48bac97	2025-11-27 19:44:49.189	2025-11-27 19:44:49.189	\N
26130d97-ed8a-4430-b72e-3061d90cc6e3	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	12900.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 cajas de huevos	2025-11-09 03:00:00		Distribuidora catalán	Jesus Leon Rangel	\N	45e81ef3-55fc-4d06-8cc9-40beae0195e4	2025-11-18 19:38:38.979	2025-11-18 19:45:59.896	\N
44344cf1-72cd-4be2-a7b4-707ff68ef943	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	14190.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Suscripción de mercadolirbe + disney	2025-11-18 17:09:00		MercadoLibre	Jesus Leon Rangel	\N	d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	2025-11-19 17:09:32.544	2025-11-19 17:09:32.544	\N
5f3544c3-9a83-4eb7-98e7-549d96b99171	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	8704596a-9583-4900-a272-a49243224a65	Prueba 1	2025-11-25 12:57:54.046		Prueba 1	Pedro Perez	\N	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	2025-11-25 12:57:56.234	2025-11-25 12:57:56.234	\N
da7d8dd3-8010-45ec-aec7-ce2902fc1e0a	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	40000.00	422ca76a-431e-4a42-95af-2ce3b520ebab	Prueba	2025-11-25 12:59:36.484		Prueba	Pedro Perez	\N	b91e5888-a0a1-46ca-beb5-98348337bd53	2025-11-25 12:59:38.665	2025-11-25 12:59:38.665	\N
c4ee8257-d241-4598-abb5-ce9360cc2236	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	5000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Recibido de Juan Perez por "Prueba 2"	2025-11-25 13:00:20.083	\N	\N	Pedro Perez	\N	\N	2025-11-25 13:00:22.269	2025-11-25 13:00:22.269	\N
28357a49-a425-4205-bc39-dc6b8a182a2f	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	48000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Recibido de Juan Perez por balance compartido - Saldado en grupo. 2 gasto(s) compartido(s).	2025-11-25 13:01:41.595	\N	\N	Pedro Perez	\N	\N	2025-11-25 13:01:43.604	2025-11-25 13:01:43.604	\N
b0a1aba1-e89d-4581-aef9-4cace799b402	b88abd1d-92fe-4818-ba01-95681f09b96d	530b9e4b-d53a-440b-a713-51021e71436b	EXPENSE	48000.00	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago de balance compartido a Pedro Perez - Saldado en grupo. 2 gasto(s) compartido(s).	2025-11-25 13:01:41.596	\N	\N	Juan Perez	\N	\N	2025-11-25 13:01:44.605	2025-11-25 13:01:44.605	\N
5c326385-413e-4c07-8a9c-1b2c09b5b3a3	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	9590.00	a04483ea-8923-4cf5-9065-261cf4a16ca8	Protector ejercicios cuello	2025-11-27 19:30:00		MercadoLibre	Jesus Leon Rangel	\N	\N	2025-11-27 19:30:24.534	2026-01-14 12:58:40.971	\N
a2a51a09-603a-479a-bf26-695d44ea7171	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6280.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras Hamburguesas	2025-11-25 17:20:00		Lider Express	Jesus Leon Rangel	\N	5f0afa26-d88b-4fbc-9f6b-218fff7f4928	2025-11-26 17:20:32.08	2026-01-14 13:01:05.93	\N
a3609f32-d19d-4a62-bc40-5a0030275260	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	42290.00	c4374810-0308-4355-952e-17986d76f696	Hamburguesas, papitas, chicken tenders, onion rings	2025-11-22 18:22:00		La Birra Bar	Jesus Leon Rangel	\N	\N	2025-11-25 18:23:14.255	2026-01-14 13:04:31.451	\N
fb2ac9f7-a02a-4561-9f98-5902d309e288	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2960.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento clinica	2025-11-20 20:43:00		Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2025-11-20 20:44:05.278	2026-01-14 13:19:54.033	\N
362304d7-b232-4124-a39d-9005062f2cb1	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4546.00	e72fa961-c75d-4b52-9ac8-242475226724	Consulta endocrino	2025-11-20 20:43:00		Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2025-11-20 20:43:27.795	2026-01-14 13:21:19.422	\N
90709adf-7127-462f-bb68-0a1407c8b948	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	42970.00	42204bb7-7b76-44ed-a668-5b80c5def775	Regalo cumple Jose	2025-11-19 20:25:00		Falabella	Jesus Leon Rangel	\N	b72074b4-13a7-4040-9e57-ff0c0b8616f5	2025-11-20 20:26:20.177	2026-01-14 13:26:14.839	\N
7c33282f-6c3c-4bfe-8588-c904f3c69d74	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	5593.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Susciprcion Hbo Max	2025-11-17 20:08:00		Max	Jesus Leon Rangel	\N	91b1b337-3960-4b9c-8a47-e4ea0e6989fd	2025-11-19 17:08:41.053	2026-01-14 13:33:08.193	\N
02716194-558d-4e15-b3cc-5aae39b51b8f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	17600.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Dr Simi, Espironolactona Acido Folico	2025-11-01 03:00:00		Dr Simi		\N	4c9e222c-8b40-4cf6-8816-7ff5348f3a71	2025-11-18 17:19:56.387	2026-01-15 14:10:55.138	\N
2bf0baf3-c376-4c04-a1d7-d7ab44fb2dd9	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	1389568.00	35e1feb2-b6d8-461c-a951-43f35be33f7a	Sueldo del mes de octubre	2025-11-01 16:51:00		TCS	Jesus Leon Rangel	\N	\N	2025-11-19 16:52:02.434	2026-01-15 15:06:58.627	\N
96803d92-4d21-4bad-850a-953ef722ef80	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	151435.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA SP500	2025-11-03 16:55:00		Hapi	Jesus Leon Rangel	\N	\N	2025-11-19 16:55:38.626	2026-01-15 15:08:07.488	\N
e58c1263-9ab1-4310-b8ee-6270f30583f9	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-25 19:24:42.06	2025-11-25 19:24:42.06	\N
1f3d18c6-5c5a-42d2-8e09-b11d02328528	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	15839aaf-2716-48da-82ca-5e5d6ce8c20a	Préstamo a Juan	2025-11-26 03:00:00		Juan	Pedro Perez	\N	\N	2025-11-26 14:27:14.994	2025-11-26 15:31:06.688	445024e9-1c20-421a-9807-56d789b6f5a9
177726e6-d51e-49c4-a509-ea7187f659f0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18046.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Huevos, Mostaza y Queso Mozarella	2025-11-26 17:22:00		Distribuidor Catalan	Jesus Leon Rangel	\N	437cbb46-b4e4-4fa8-9856-6c7a23a2c691	2025-11-26 17:23:10.341	2025-11-26 17:23:10.341	\N
375e7f07-bcf4-4c53-b76b-499bdbb451f8	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	100000.00	8704596a-9583-4900-a272-a49243224a65	prueba	2025-11-18 20:12:00		prueba	Pedro Perez	\N	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	2025-11-27 20:12:34.788	2025-11-27 20:12:34.788	\N
63734ffc-dd52-4f54-b4a8-43a153559fd7	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	36179.00	875e0568-af0e-4014-9ef0-49f509961b3a	Pago deuda noviembre a Olga	2025-11-30 11:18:00		Jesus Leon	Jesus Leon Rangel	\N	\N	2025-12-01 14:18:52.5	2026-01-14 12:41:18.565	\N
6b4f2fa2-a65f-499f-83d3-172923ec139f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	11000.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-28 10:00:00		Shell	Olga Manyoma	\N	050960db-eb58-4b40-9491-43e3bd07d6b8	2025-11-28 13:01:01.236	2025-11-28 13:01:01.236	\N
da9fcd04-4250-409d-903f-4298204268d0	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	10294.00	b164b929-b9bd-47ee-b3ce-37eb9707abf7	Uber después de hablando huevadas	2025-11-28 01:00:00		Uber	Jesus Leon Rangel	\N	\N	2025-11-28 12:53:28.681	2026-01-14 12:56:16.402	\N
96fb1f43-2e80-45ef-b5c6-136853ee5a3f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2db62b9a-1133-4a34-96bc-429d267a2a2a	EXPENSE	870.00	a46700b8-5afe-4bbb-b220-44775fd27bb5	Metro	2025-11-29 10:46:00		Metro/Bus	Jesus Leon Rangel	\N	\N	2025-12-01 13:46:53.773	2026-01-14 12:53:11.051	\N
0479ba6b-dac6-45d0-b3b6-1d8b0afafc1a	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2035.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Parking dia de jetset	2025-11-29 22:51:00		Parking Av Italia	Jesus Leon Rangel	\N	\N	2025-11-30 01:51:56.584	2026-01-14 12:51:27.285	\N
2f2b6b64-f9a4-4756-948f-cdcec40a1d20	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2940.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Patas de pollo para dustin	2025-11-29 09:43:00		Carnes El Parral	Jesus Leon Rangel	\N	5c595cc5-bb18-4234-8143-afe9185268f7	2025-12-01 12:44:10.594	2025-12-01 12:44:10.594	\N
5561a2f9-534c-4147-896f-903061a8fb52	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	696981.00	f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Pago de Noviembre	2025-11-30 10:53:00		Olga Manyoma	Jesus Leon Rangel	\N	\N	2025-12-01 13:54:03.858	2026-01-14 12:45:08.897	\N
29414eb2-b5e1-432d-9024-94e26851155d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	76000.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	Proteina en polvo vainilla y cake	2025-11-28 09:56:00		ChileSuplementos	Jesus Leon Rangel	\N	ae157bab-ec8a-47c9-bc09-f6a8cc86d872	2025-11-28 12:56:37.878	2025-12-02 16:29:08.47	\N
27888cc9-f2a4-41c3-b8fa-9b0ae174a3be	346b32d1-b21f-4ce9-ac27-a69e67abb103	2db62b9a-1133-4a34-96bc-429d267a2a2a	EXPENSE	1580.00	a46700b8-5afe-4bbb-b220-44775fd27bb5	Metro	2025-11-30 10:45:00		Metro/Bus	Jesus Leon Rangel	\N	\N	2025-12-01 13:45:57.853	2026-01-14 12:45:58.162	\N
d580c4ae-6acb-442d-9910-dacb2c022032	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	14000.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras Navidad	2025-11-30 09:46:00		Chinos Pedro Valdivia	Jesus Leon Rangel	\N	2ec956fb-f2fd-4845-9a27-6e314d8d9335	2025-12-01 12:47:02.056	2026-01-14 12:47:27.082	\N
d620ab45-51e5-4bb0-847c-43b8fa037472	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	21232.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras para la semana	2025-11-30 09:44:00		Lider Express	Jesus Leon Rangel	\N	a92509e9-742c-4594-ad4c-3698ad42f3fb	2025-12-01 12:45:18.807	2026-01-14 12:48:27.334	\N
cd887186-962c-49d8-a479-0220d58cd97e	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	INCOME	14390.00	f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Pago de su parte de Jetset	2025-11-30 02:03:00		Miguel Guerra	Jesus Leon Rangel	\N	\N	2025-11-30 02:03:49.77	2026-01-14 12:49:15.107	\N
7a07302e-18c5-40c4-ad21-2bfe8ea6d31d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15000.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-11-29 22:55:00		Shell	Jesus Leon Rangel	\N	dac8989b-541c-4875-a086-d347fb1168d0	2025-11-30 01:55:42.28	2026-01-14 12:50:31.747	\N
33e621bf-1d97-43df-80ab-4a13c1244b8e	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	58267.00	c4374810-0308-4355-952e-17986d76f696	Hamburguesas 	2025-11-29 22:50:00		JetSet	Jesus Leon Rangel	\N	\N	2025-11-30 01:51:04.462	2026-01-14 12:52:30.184	\N
8646479f-faa1-40a6-a191-71ee459a1a54	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4550.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Rapi turbo aceitunas para oma bakery	2025-11-28 22:54:00		Rappi	Jesus Leon Rangel	\N	132afb3f-2d58-49c6-8db4-35acf85ed773	2025-11-30 01:54:51.1	2026-01-14 12:53:53.137	\N
90947fce-c421-4cb0-aa27-f7ec042e515f	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4000.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	2 Maltas	2025-11-28 22:48:00		Belinda Market	Jesus Leon Rangel	\N	\N	2025-11-30 01:48:40.618	2026-01-14 12:54:40.454	\N
1150ca65-8a8a-42ad-95b7-727d1f57c369	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24000.00	c4374810-0308-4355-952e-17986d76f696	Sushi para cenar	2025-11-28 22:47:00		Niu Sushi	Jesus Leon Rangel	\N	\N	2025-11-30 01:47:54.999	2026-01-14 12:55:25.112	\N
d4851312-215a-43f8-9145-2e924aec0953	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	50.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Agregar tdc onlclick	2025-11-27 19:31:00		WebPay	Jesus Leon Rangel	\N	\N	2025-11-27 19:32:10.457	2026-01-14 12:57:51.821	\N
35a2656d-d3ed-41d9-83cf-fba955dd36fe	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2880.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Pimenton y zanahorias	2025-11-26 17:21:00		Lider Express	Jesus Leon Rangel	\N	d7dfb498-63ee-475c-bec0-3f56ee6e0a78	2025-11-26 17:21:32.113	2026-01-14 13:00:06.884	\N
de8726ee-5c6a-404e-8dfb-65a2b68b1e60	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3135.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Impuestos y comisiones TDC	2025-11-24 18:24:00		Banco Santander	Jesus Leon Rangel	\N	\N	2025-11-25 18:24:20.09	2026-01-14 13:02:45.047	\N
d7f0a0eb-5547-4736-8a1f-6aa1bd19f540	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2600.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras varias	2025-11-22 17:17:00		Belinda Market	Jesus Leon Rangel	\N	3dc18619-27fc-48a5-9d7a-9f4b757d80ce	2025-11-26 17:18:10.04	2026-01-14 13:05:50.146	\N
0a3ec281-f53a-4474-ab24-ee857c64c466	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	99997.00	63fad128-ab67-4cec-9011-8750d6cb84fc	Airpods 1/3	2025-11-05 18:34:00		Apple	Jesus Leon Rangel	\N	\N	2025-11-25 18:34:41.067	2026-01-14 13:56:14.112	\N
c3e61856-a391-4ab1-a069-5219f4ef1df4	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	14019.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	SetApp suscripción	2025-11-20 11:29:00		SetApp	Jesus Leon Rangel	\N	\N	2025-12-01 14:30:09.519	2025-12-01 14:30:09.519	\N
3cc9552e-7bb4-4eb9-b4c8-9d887cb28ae7	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	11179.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Apple iCloud	2025-11-14 11:32:00		Apple	Jesus Leon Rangel	\N	\N	2025-12-01 14:32:47.494	2025-12-01 14:32:47.494	\N
8a120647-3b95-4866-9b95-1ce8d682aa06	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	3207.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Subcripcion gorro	2025-11-07 11:33:00		Apple	Jesus Leon Rangel	\N	\N	2025-12-01 14:33:56.018	2025-12-01 14:33:56.018	\N
9b298745-cc5a-4888-8b93-f34a5edbad3a	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8250.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Spotify 	2025-12-01 12:13:00		Spotify	Jesus Leon Rangel	\N	95a36900-4535-4104-939b-3dea76745659	2025-12-01 15:14:28.528	2025-12-01 15:14:28.528	\N
96fa2331-d328-4aae-8117-8f9cec003ebb	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51537.00	6d6c20c0-81f2-4afb-a72e-228c0a3982e0	Seguro Cleopatra	2025-12-05 12:15:00		Bci Seguros	Jesus Leon Rangel	\N	4d389beb-3ce1-4777-8347-fb8313ac388e	2025-12-01 15:15:58.945	2025-12-01 15:15:58.945	\N
f8a00cdf-4aa7-4bfc-a18a-eab88f61c8f3	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24549.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Plan Tlf Claro	2025-12-01 12:20:00		Claro	Jesus Leon Rangel	\N	\N	2025-12-01 15:21:31.089	2025-12-01 15:21:31.089	\N
a4cd7109-e887-4920-ba6f-0fa00237dc44	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	30000.00	f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Pago publicidad MetaAds	2025-11-30 11:35:00		Oma Bakery	Jesus Leon Rangel	\N	\N	2025-12-01 14:35:27.863	2026-01-14 12:40:09.93	\N
199d25e8-90f8-4757-b491-b7ca7e164b02	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	99997.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago deuda Mes de Noviembre	2025-11-30 11:15:00			Jesus Leon Rangel	2c6743e1-4096-45b1-9ebb-8b998cedda57	\N	2025-12-01 14:15:16.235	2026-01-14 12:42:33.93	\N
8118bab1-0ab3-4ed2-8d18-a31a837f7ea9	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	64740.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	1 cQ10, 1 mageniso, 1 omega 3	2025-12-02 11:01:00		MixGreen	Jesus Leon Rangel	\N	4f40afb8-d635-43dd-91a0-eadcacbdf008	2025-12-02 14:02:29.253	2025-12-02 16:25:43.051	\N
d87fdabb-50b1-47d9-b76c-0d4e8b59c139	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	30526.00	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agus fria de la casa	2025-12-02 14:18:00		Maihue	Olga Manyoma	\N	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	2025-12-02 17:19:01.415	2025-12-02 17:19:01.415	\N
504cd540-7e55-4d27-a378-05e7e767e4c0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18000.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Caja de huevos	2025-12-04 14:16:00	\N	Distribuidora Catalan	Jesus Leon Rangel	\N	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	2025-12-04 17:16:58.042	2025-12-04 17:16:58.042	\N
c332a162-8f29-484e-a0c2-cc5ff7385a21	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	380234.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago deuda mes de Noviembre	2025-11-30 11:14:00			Jesus Leon Rangel	0c046099-f7ff-4463-bf04-cdc01ecd9c09	\N	2025-12-01 14:14:44.898	2026-01-14 12:43:08.319	\N
b7b7954a-b4f2-477c-b3ac-b3d1ea5afa31	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	1138847.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago deuda mes de Noviembre 	2025-11-30 11:14:00			Jesus Leon Rangel	2e64b401-5a2f-4492-87c9-a618e7ba6f33	\N	2025-12-01 14:14:14.535	2026-01-14 12:43:43.826	\N
65e7f2ed-d44c-43fd-800a-6a6960315ae5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	20500.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras Navidad	2025-11-30 09:47:00		SuperLida	Jesus Leon Rangel	\N	567b3b22-06c7-43f5-bfd7-439001a241fc	2025-12-01 12:48:15.164	2026-01-14 12:46:41.479	\N
19bb4331-98ec-45cd-8313-90c013752700	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	30698.00	6870baf3-aa72-4c03-93c7-3e9cfeb89b76	Publicidad Oma	2025-11-18 11:31:00		MetaAds	Jesus Leon Rangel	\N	\N	2025-12-01 14:31:33.26	2026-01-14 13:32:20.243	\N
67a47361-5fa5-4bc3-b2f2-f59733d995fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	830069.00	d1f5a24f-e46e-4a39-8ddb-8815439adbc4	Cuota 71/360	2025-12-01 12:11:00		Banco Scotiabank	Jesus Leon Rangel	\N	1410a808-8dfa-4536-ba2e-96ed415546b3	2025-12-01 15:12:12.179	2026-01-15 14:18:16.441	\N
aa1c63ee-7f1a-430a-bd7b-541e0bd6dedc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	7642.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Cascanueces pequeños	2025-12-01 12:12:00		Frank Home	Jesus Leon Rangel	\N	d432f78f-4419-4e3e-a9b4-45b29139169a	2025-12-01 15:13:15.2	2026-01-15 14:20:41.222	\N
78853929-e56b-487e-a9c2-e230dd1cbd36	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	12000.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	10 cajas espironolactona	2025-12-04 14:12:00	\N	FarmaOlga	Jesus Leon Rangel	\N	aeeb577b-56f1-44ff-a38f-b03cc638b92e	2025-12-04 17:13:26.595	2026-01-15 14:34:49.916	\N
cd03c32f-1653-4a70-afd3-95518d0a3205	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	1290.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Agua con gas 	2025-12-03 12:22:00		Lider	Jesus Leon Rangel	\N	\N	2025-12-03 15:23:21.851	2026-01-15 14:36:38.373	\N
abf952a1-3ca3-4b47-b4f5-b1d9d1df7cdd	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	13169.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Harina y levadura para pruebas	2025-12-03 12:21:00		Molino San Cristobal	Jesus Leon Rangel	\N	\N	2025-12-03 15:21:50.911	2026-01-15 14:37:59.117	\N
67d62304-46dc-471b-b664-b3fcd912ca53	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	36300.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	FersitolD, espironolocatona x2, acido folico, trioval	2025-12-02 13:26:00		FarmaOlga	Jesus Leon Rangel	\N	d7b0a41b-c9ef-4360-a958-a86a250ad711	2025-12-02 16:27:14.641	2026-01-15 14:38:54.854	\N
3a93793a-0236-4959-baff-771080a8c623	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	TRANSFER	3200000.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Traspaso de fondos	2025-12-01 12:50:00			Jesus Leon Rangel	d99144b6-5974-40e2-9f17-b36942774c9e	\N	2025-12-01 15:50:32.248	2026-01-15 14:47:48.005	\N
3f92fa02-d742-4bd2-9c3e-09f8cc3b9e25	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	INCOME	3523600.00	35e1feb2-b6d8-461c-a951-43f35be33f7a	Sueldo de Noviembre	2025-12-01 11:37:00		TCS	Jesus Leon Rangel	\N	\N	2025-12-01 14:38:07.736	2026-01-15 14:48:58.519	\N
14eeb316-84d5-4fe7-9b93-a43aa01d6032	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	150000.00	5ec041fc-8c57-4f46-a1e9-80ffc95bf107	DCA Crypto	2025-12-01 12:48:00		OrionX	Jesus Leon Rangel	\N	\N	2025-12-01 15:48:55.028	2026-01-15 14:49:38.219	\N
79d8f1b0-2ebb-4110-aad1-0bbf8806f976	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	153179.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA Sp500 Diciembre	2025-12-01 12:45:00		Hapi Broker	Jesus Leon Rangel	\N	\N	2025-12-01 15:45:43.027	2026-01-15 15:00:18.68	\N
e9833056-ee2d-4e53-a074-5905c82c2d40	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	45000.00	f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Pago de Entradas Hablando Huevadas y Uber	2025-12-01 16:55:00		Jose Alberto	Jesus Leon Rangel	\N	\N	2025-12-01 19:55:33.338	2026-01-15 15:06:20.198	\N
dbfd7f45-a12e-4ff3-83dd-def16525d4c2	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	2208.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Seguro de Fraude PAC	2025-12-09 10:43:00	\N	Banco Santander	Jesus Leon Rangel	\N	\N	2025-12-09 13:44:18.471	2025-12-09 13:44:18.471	\N
bcc54d0c-6958-49b6-a1f9-df8a6ae8261f	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	5000.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Pimentones y achiote en la vega	2025-12-07 10:44:00	\N	La Vega	Jesus Leon Rangel	\N	f09eee37-2f7a-49a8-a13f-02011e30886e	2025-12-09 13:45:35.65	2025-12-09 13:45:35.65	\N
cbeeb003-6e2b-4358-92c4-a7351cb1862e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3200.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento en la vega	2025-12-07 11:12:00	\N	Estacionamiento La Vega	Jesus Leon Rangel	\N	b1aaab99-34e0-4093-92f2-3a3e0371cf7e	2025-12-09 14:12:52.619	2026-01-14 12:32:34.411	\N
37fceed4-e757-48c1-b267-ceb3547e6ca5	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3204.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Vespucio Sur	2025-12-09 10:55:00	\N	Vespucio Sur	Jesus Leon Rangel	\N	5522da68-5276-49cd-a9a6-a45620cf64c6	2025-12-09 13:57:06.127	2025-12-09 13:57:06.127	\N
8988fe2a-33c2-4f45-b167-10366db0310e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4670.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias en lider	2025-12-07 11:06:00	\N	Lider Express	Jesus Leon Rangel	\N	2dd44eae-c796-4522-b14e-9dee4aa085a0	2025-12-09 14:07:11.225	2026-01-14 12:34:11.132	\N
08cd5ffe-8bc0-4432-b1a4-d7a773098188	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	10980.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Trioval 	2025-12-07 10:52:00	\N	Cruz Verde	Jesus Leon Rangel	\N	bc1cca85-958b-47e0-b8d6-ef0d9360f162	2025-12-09 13:53:28.665	2026-01-14 12:36:27.358	\N
a69b1653-e5d0-4bc0-bf75-17f0cfcb5536	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	27700.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras navidad luces y adornos	2025-12-07 10:51:00	\N	Chinos Pedro Valdivia	Jesus Leon Rangel	\N	cdaee396-11b0-493b-adfd-0165b0e746b9	2025-12-09 13:52:17.007	2026-01-14 12:37:33.309	\N
8121a1e3-9d74-4b94-abc7-2a1f845ae818	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	1124854.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago TDC mes de Noviembre	2025-11-30 11:13:00			Jesus Leon Rangel	646caf37-7684-45ac-87f3-cec83efb633d	\N	2025-12-01 14:13:26.919	2026-01-14 12:44:17.635	\N
f0a2f786-587e-4a35-b54c-21f516637abe	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	18170.00	e5bf1a20-2016-4419-ac0b-2e13935c434b	Tablas de picar, y otras cosas	2025-12-06 10:48:00	\N	Casa ideas	Jesus Leon Rangel	\N	38440bab-1156-40ea-b36b-566428afc183	2025-12-09 13:48:46.621	2026-01-15 14:24:31.028	\N
78d7f3df-bbf3-48f0-a703-2cc1be1b806d	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	17653.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:08:00	\N	La Vega	Jesus Leon Rangel	\N	91b446c8-d142-4708-96c2-7f2881a1baba	2025-12-09 14:08:33.878	2025-12-09 14:08:33.878	\N
d5573eb2-5777-4b8b-b579-9254a445b3f0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18600.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:09:00	\N	La Vega	Jesus Leon Rangel	\N	983a2e37-6703-4b0d-bf76-665b39177157	2025-12-09 14:09:33.419	2025-12-09 14:09:33.419	\N
66a5e2cc-7130-4472-807e-ee849550eff7	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	5000.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:10:00	\N	La Vega	Jesus Leon Rangel	\N	62421dc7-a070-4ed6-b48e-a20d5c68d13c	2025-12-09 14:10:31.377	2025-12-09 14:10:31.377	\N
65c5083b-93be-471b-9130-05ad934db23a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	10700.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega (plásticos)	2025-12-07 11:11:00	\N	La Vega	Jesus Leon Rangel	\N	b3d56223-0bc4-4e22-9bc0-ebe3a5e4e62a	2025-12-09 14:11:52.567	2025-12-09 14:11:52.567	\N
9bcd9c10-9cf8-4951-a493-85c96828fba4	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	34710.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Carnes para las hallacas	2025-12-07 11:14:00	\N	La Vega	Jesus Leon Rangel	\N	c3bbc20d-5db5-4d1e-95e4-e0ba4d4db016	2025-12-09 14:14:29.943	2025-12-09 14:14:29.943	\N
9157f3bd-20db-4a4e-a4d4-648960d7bd6a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6200.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:14:00	\N	La Vega	Jesus Leon Rangel	\N	c1b7b1ba-f35a-4f7b-99f9-bb7986383485	2025-12-09 14:15:15.306	2025-12-09 14:15:15.306	\N
921da936-ce05-46b2-b81c-7abcd67c8888	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2000.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:15:00	\N	La Vega	Jesus Leon Rangel	\N	dd946b44-29fc-419a-b9a2-775ffe6504eb	2025-12-09 14:16:08.851	2025-12-09 14:16:08.851	\N
b295a8eb-453a-4a2e-b971-b2c6bb63dec8	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	13686.00	b3c89167-bdfb-4fe5-9452-13eba9eb58e4	Agua de la casa	2025-12-09 10:54:00	\N	Aguas andinas 	Jesus Leon Rangel	\N	d397c294-5528-462c-93c5-7a9f532c10bd	2025-12-09 13:54:29.457	2026-01-14 12:26:37.525	\N
23dbf8eb-343c-4c8b-85e5-3dc74e554fa9	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11980.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Pizzas para cenar	2025-12-08 11:00:00	\N	Dominos Pizza	Jesus Leon Rangel	\N	\N	2025-12-09 14:01:04.398	2026-01-14 12:29:20.075	\N
2a8797cf-e135-4698-97dc-c8b51a25e324	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	15024.00	63fad128-ab67-4cec-9011-8750d6cb84fc	Enchufe inteligente	2025-12-08 10:59:00	\N	MercadoLibre	Jesus Leon Rangel	\N	\N	2025-12-09 13:59:34.964	2026-01-14 12:30:32.931	\N
7f37894c-1964-4ef9-86c5-ad5ed9c5e20b	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	14240.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Tren de navidad	2025-12-08 10:58:00	\N	MercadoLibre	Jesus Leon Rangel	\N	\N	2025-12-09 13:58:51.285	2026-01-14 12:31:31.466	\N
e55cfc0b-8e70-4400-a68f-a3d023bfd57c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	2000.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento plaza egaña	2025-12-06 10:49:00	\N	Mall Plaza Egaña	Jesus Leon Rangel	\N	e7efdd29-bb34-424d-a398-5eb7d08dc196	2025-12-09 13:49:55.459	2026-01-15 14:25:59.164	\N
0e6bdbfa-3fc4-4d47-a2b1-4888f15117b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	29501.00	52a2a345-15f9-4494-93e8-8fd3d36913a5	Internet de la casa	2025-12-06 10:50:00	\N	Movistar	Jesus Leon Rangel	\N	21599688-2919-4e83-bdfa-c17f15423a4e	2025-12-09 13:51:03.607	2026-01-15 14:28:14.497	\N
dc5b9b5a-2197-4ec6-83b3-f12e42778ebd	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	1200.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras en los chinos	2025-12-06 11:05:00	\N	Chinos Pedro Valdivia	Jesus Leon Rangel	\N	c54bb4e0-ba81-4a25-8c03-e963ce63e68e	2025-12-09 14:05:39.216	2026-01-15 14:30:27.12	\N
cba3a103-4cc6-4d6c-b162-42137d80815f	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	10952.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Camarones y Aguacate	2025-12-04 22:00:00	\N	Lider Express	Jesus Leon Rangel	\N	bcf29d50-0335-412a-850f-6606c6239140	2025-12-05 01:01:34.647	2026-01-15 14:31:32.181	\N
e6d93e44-11a8-4ec7-a238-b3bbbba05c43	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	9446.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	rollo de papel film 300 metros	2025-12-04 22:03:00	\N	Distribuidora Pol	Jesus Leon Rangel	\N	cb79af54-88d1-4d25-b3e2-04ab4d6469de	2025-12-05 01:04:08.908	2026-01-15 14:33:53.16	\N
dd476667-6fc9-4432-a2f2-daab3ed59786	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6500.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:16:00	\N	La Vega	Jesus Leon Rangel	\N	6b88b35b-bbfb-49c0-a052-dec38d0bff5c	2025-12-09 14:16:58.938	2025-12-09 14:16:58.938	\N
d9b29894-d840-456e-9b67-6365caac4464	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4800.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:17:00	\N	La Vega	Jesus Leon Rangel	\N	67c6757a-3c05-48ea-bc0b-866fc49bafef	2025-12-09 14:17:50.566	2025-12-09 14:17:50.566	\N
feb87db3-59ef-4cf3-b822-0600486efe07	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	5000.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:18:00	\N	La Vega	Jesus Leon Rangel	\N	6bef0e91-a061-4ed4-92a5-a5d2277d4c1a	2025-12-09 14:18:44.599	2025-12-09 14:18:44.599	\N
811ba69e-ed27-432c-8aeb-517806b1850a	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4990.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Cosito para cortar panes	2025-11-27 22:29:00		MercadoLibre	Jesus Leon Rangel	\N	98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	2025-11-27 19:29:41.92	2026-01-14 12:57:11.277	\N
5f29c09a-bd7f-4711-a727-5ca735ddbe0d	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6870.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-12-08 11:22:00	\N	Lider Express	Jesus Leon Rangel	\N	96e7c874-8c93-4dcd-a011-078d4addde80	2025-12-09 14:22:41.191	2026-01-14 12:28:19.854	\N
b6ae158a-5ba0-4a1e-b0e0-f8c43da26d16	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	47234.00	c4374810-0308-4355-952e-17986d76f696	Hamburguesitas	2026-01-11 11:13:00	\N	Templo del smash	Jesus Leon Rangel	\N	\N	2026-01-14 14:13:50.436	2026-01-14 14:13:50.436	\N
72b3308d-3811-4457-95ae-bd8e99fda281	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	12229.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Maquina al vacío	2025-12-04 22:07:00	\N	MercadoLibre	Jesus Leon Rangel	\N	c4d60af0-5577-4aed-b163-37bc4bda34d5	2025-12-05 01:07:44.144	2026-01-15 14:22:43.645	\N
ce0aedab-9524-4044-a267-05f3a32655e0	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	INCOME	17836.00	9917f335-2661-4193-9bb2-c1dd59b75095	Devolución impuestos	2025-12-03 18:15:00	\N	Banco Scotiabank	Jesus Leon Rangel	\N	\N	2025-12-18 21:15:33.83	2026-01-15 14:46:42.87	\N
9c383de3-b018-4aa2-b830-4def6fb5980e	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	35280.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	Omega 3 y Magnesio	2026-01-16 11:58:00	\N	MixGreen	Jesus Leon Rangel	\N	78b5a1f8-4297-42fe-bbd9-bb3ebd9df349	2026-01-16 14:59:23.087	2026-01-16 14:59:23.087	\N
ba0fdd87-2bb1-475b-b995-1a34284924f7	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8230.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras en la vega	2025-12-07 11:19:00	\N	La Vega	Jesus Leon Rangel	\N	dba127f1-4545-4f50-88e6-e65f262e1f58	2025-12-09 14:19:34.287	2025-12-09 14:19:34.287	\N
2d6029f5-962d-4a5f-9463-57d7207a283b	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	17200.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compra la vega, camarones, atun y especies	2025-12-07 11:20:00	\N	La Vega	Jesus Leon Rangel	\N	237759f6-da8c-412d-aa33-0822bd937dd6	2025-12-09 14:20:32.337	2025-12-09 14:20:32.337	\N
7d24e013-1d0e-4895-b719-1065fbcdfa94	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	100000.00	8704596a-9583-4900-a272-a49243224a65	prueba	2025-12-10 16:09:39.707	\N	Prueba	Pedro Perez	\N	f793c041-cb25-40b4-87bb-97b5c403bbf0	2025-12-10 16:09:42.943	2025-12-10 16:09:42.943	\N
bbc78d48-fd36-4722-ba4a-07e82ed35a07	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2690.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripcion Google Drive	2025-12-09 11:04:00	\N	Google	Jesus Leon Rangel	\N	\N	2025-12-12 14:05:09.298	2025-12-12 14:05:09.298	\N
66282541-2d2d-47c6-a81e-9aa2db94d25b	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	17025.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Comisión Cta Corriente	2025-11-26 19:27:00		Banco Santander	Jesus Leon Rangel	\N	\N	2025-11-27 19:28:09.328	2026-01-14 12:59:22.741	\N
960949d3-f1bb-44b1-8f75-4ef7d1f911d8	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	9689.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Jugo de Uva	2026-01-13 11:16:00	\N	Uber eats	Jesus Leon Rangel	\N	\N	2026-01-14 14:16:24.167	2026-01-14 14:16:24.167	\N
d5d95bc9-6969-4853-9454-89118c2d59e9	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15880.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Suscripción de Netflix	2025-12-14 13:45:00	\N	Netflix	Jesus Leon Rangel	\N	a7401b4b-f38d-475c-9260-94437dedb8a4	2025-12-15 16:45:41.982	2025-12-15 16:45:41.982	\N
fe9204a9-c0ce-4fe7-a7ae-a90d84e15d26	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8239.00	9434cf28-3890-49dc-a731-c8fd873f932c	1 kg pechuga deshuesada	2025-12-12 13:50:00	\N	Carnes Alejandro	Jesus Leon Rangel	\N	760743c0-bdc5-4424-b0bc-7f7a2cf1d353	2025-12-15 16:51:25.709	2025-12-15 16:51:25.709	\N
a84e2c5a-8ecd-4df5-8b62-280ada843921	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	306586.00	bb80c962-8810-4dd6-8aa7-6277041dae78	Cuota cleopatra 12/36	2025-12-16 10:58:00	\N	Banco Internacional	Jesus Leon Rangel	\N	572fcb3c-5c15-4c21-8e97-72eaae8ef7af	2025-12-16 13:58:35.996	2025-12-16 13:58:35.996	\N
376f3a25-b122-4bc0-8464-5acdc5eb761b	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	6713.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Suscripción Hbo Max	2025-12-17 18:02:00	\N	Max	Jesus Leon Rangel	\N	f96ae693-623d-4831-aadd-13b0625179b6	2025-12-18 21:03:20.141	2025-12-18 21:03:20.141	\N
7a809427-6f4a-432d-b30d-92f479dce4c4	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	12990.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Suscripción mercadolibre + disney	2025-12-18 18:03:00	\N	MercadoLibre	Jesus Leon Rangel	\N	887152ce-ed9e-44e1-8336-c1f4e8e900e4	2025-12-18 21:04:26.414	2025-12-18 21:04:26.414	\N
52b53378-46ea-44fb-bc90-58720d84cb25	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3987.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Pastillas de Vitamina D	2025-12-17 18:01:00	\N	Salcobrand	Jesus Leon Rangel	\N	\N	2025-12-18 21:01:56.131	2026-01-14 12:08:42.324	\N
1974df3b-4fc2-419f-a47d-61d08865b337	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	108739.00	42204bb7-7b76-44ed-a668-5b80c5def775	Regalo accesorios navidad	2025-12-16 18:00:00	\N	Vanite	Jesus Leon Rangel	\N	\N	2025-12-18 21:00:50.511	2026-01-14 12:09:41.475	\N
07516438-2b61-4f9c-b1eb-373200e42ea9	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	27790.00	0088e3fe-95c4-409b-bb2e-dacd3cfb27cf	Libro un paso por delante de Wall Street	2025-12-16 17:59:00	\N	MercadoLibre	Jesus Leon Rangel	\N	\N	2025-12-18 20:59:15.888	2026-01-14 12:10:35.846	\N
b3e6090d-8bce-4c95-b23e-ba5a571b6230	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	20790.00	42204bb7-7b76-44ed-a668-5b80c5def775	Regalo navidad Olga Libro	2025-12-16 17:57:00	\N	MercadoLibre	Jesus Leon Rangel	\N	\N	2025-12-18 20:58:09.598	2026-01-14 12:11:23.271	\N
1bea6e06-149c-468a-9003-658a75e0ff69	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	5940.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Tortillitas y servilletas	2025-12-16 11:21:00	\N	Lider Express	Jesus Leon Rangel	\N	6808c0e9-ff25-4888-a5ff-0f9a5ee90420	2025-12-16 14:21:56.463	2026-01-14 12:12:17.542	\N
ee1af723-1416-4be3-a61d-7c731b799a42	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51646.00	b6701d20-51bf-4d57-bbb3-47a5cf0aa7b3	Luz de la casa	2025-12-16 11:00:00	\N	Enel	Jesus Leon Rangel	\N	18e1b6bd-cb07-4b00-b614-c401b3b80a15	2025-12-16 14:00:49.883	2026-01-14 12:13:23.089	\N
84c41395-fd8e-4cd3-a015-367e5c29c1fb	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	INCOME	29000.00	02024cee-8c25-49b2-bb16-ccd979cd6c98	Bono de navidad	2025-12-15 18:12:00	\N	TCS	Jesus Leon Rangel	\N	\N	2025-12-18 21:13:22.694	2026-01-14 12:14:16.163	\N
8953ac43-3e7b-47ee-aff8-3fc7169bfb66	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	14390.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	100% golfeados	2025-12-15 13:42:00	\N	Justo	Jesus Leon Rangel	\N	\N	2025-12-15 16:42:18.678	2026-01-14 12:16:12.286	\N
f6c19c2c-ae2d-45e3-b027-ea1130a11a92	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3600.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras necesarias para la piscina sal y otra cosa	2025-12-15 13:38:00	\N	Tienda de barrio	Jesus Leon Rangel	\N	\N	2025-12-15 16:39:02.988	2026-01-14 12:17:05.88	\N
ed15c486-0a73-4100-96cc-4c6341a82b34	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	8150.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras para la ida a la piscina	2025-12-15 13:37:00	\N	Oxxo	Jesus Leon Rangel	\N	\N	2025-12-15 16:37:29.747	2026-01-14 12:17:55.099	\N
388bf7d8-1689-4672-a174-bce4ee4f7423	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	800000.00	e1dd8701-b920-4252-bc8a-26a23fed3fc1	Préstamo a Katty Rangel	2025-12-14 00:00:00	\N	Katty Rangel	Jesus Leon Rangel	\N	\N	2025-12-14 18:12:37.557	2026-01-14 12:18:52.388	ba498be2-b8a8-419f-bf7b-8c8a71978dcc
d21f4997-aca2-41ed-a03b-c47045c780f2	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	INCOME	14240.00	2bbb6ffe-0981-4d19-b411-93fc6282c409	Reembolso del tren	2025-12-12 18:06:00	\N	MercadoLibre	Jesus Leon Rangel	\N	\N	2025-12-18 21:06:46.628	2026-01-14 12:20:02.781	\N
c7c5e281-4193-44eb-a2a6-a9001e98cfa1	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51990.00	b37a8198-99ee-4bac-9d00-07b0bf8df102	Comida Dustin	2025-12-12 14:13:00	\N	Mascotas Vip	Jesus Leon Rangel	\N	15658593-c707-4e38-a84b-a222b5509899	2025-12-12 17:13:53.001	2026-01-14 12:22:44.042	\N
7c164e24-bd80-4633-ba09-5d1eb252b600	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4190.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias en el lider	2025-12-12 13:55:00	\N	Lider Express	Jesus Leon Rangel	\N	a3eba116-8c33-4228-b0be-7053a24cb357	2025-12-15 16:55:58.06	2026-01-14 12:23:37.646	\N
708e2de2-8b5f-4aa9-8ffc-9437f77d4a25	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	11600.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Chucherias	2025-12-12 13:43:00	\N	Belinda Market	Jesus Leon Rangel	\N	95abca17-88fd-491d-993b-3cd08c6c5904	2025-12-15 16:44:14.05	2026-01-14 12:24:34.023	\N
74d11c84-29bb-4d03-9021-af8a2650e00a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	7500.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Tomate, cebolla y aguacates para la semana	2025-11-23 17:19:00		Lider Express	Jesus Leon Rangel	\N	ca6927eb-05a0-44fa-9f68-7df6019e30de	2025-11-26 17:19:32.413	2026-01-14 13:03:48.995	\N
f7ca2965-2788-47d1-8742-c0ff944d9541	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	9114.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Impuestos Cta Corriente	2025-12-02 18:22:00	\N	Banco Scotiabank	Jesus Leon Rangel	\N	\N	2025-12-18 21:22:16.213	2026-01-15 14:47:19.22	\N
accac757-8697-4f5c-81e1-03db63c23bd4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	6765.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento la birra bar	2025-12-19 11:24:00	\N	Estacionamiento	Olga Manyoma	\N	e116c785-ae64-4fb8-8b63-8ba8bfb0dc02	2025-12-22 14:24:37.912	2025-12-22 14:24:37.912	\N
ccdb4aee-ef06-41cb-a153-2ebf803d0479	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3990.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Uber One subscricion	2025-12-22 11:43:00	\N	Uber	Jesus Leon Rangel	\N	\N	2025-12-23 14:43:41.182	2025-12-23 14:43:41.182	\N
f7bd5740-0cc0-4882-bfbb-90c182f1b250	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	170201.00	c9b04f8d-867a-42cf-ba91-e5229101f119	Gastos comunes noviembre	2025-12-22 11:45:00	\N	Comunidad Feliz	Jesus Leon Rangel	\N	daeb613d-1f36-4d0e-80e5-cda08166368a	2025-12-23 14:45:44.666	2025-12-23 14:45:44.666	\N
2afcbdae-128b-423b-90b5-eac3c983332f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	116730.00	9434cf28-3890-49dc-a731-c8fd873f932c	Carnes del mes	2025-12-23 09:35:00	\N	El Gocho de las Carnes	Jesus Leon Rangel	\N	2f154765-d2c9-487c-aae6-db34f06b24fc	2025-12-26 12:36:06.114	2025-12-26 12:36:06.114	\N
677572be-0b9d-43ae-b688-b6fa2eb278da	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9278.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripción claude	2025-12-24 09:36:00	\N	Anthropic	Jesus Leon Rangel	\N	\N	2025-12-26 12:36:51.229	2025-12-26 12:36:51.229	\N
24749171-7941-44d7-9186-dde17463fe43	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	14990.00	3fe9bf24-0404-4d34-b127-374bff382241	Pan de jamon del 24	2025-12-26 09:30:00	\N	Oma Bakery	Jesus Leon Rangel	\N	\N	2025-12-26 12:30:56.143	2026-01-13 18:31:47.089	\N
370dfe7d-d1fc-4e4f-ac91-c8374394dc68	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15200.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras bebidas para el 24	2025-12-24 09:37:00	\N	Belinda Market	Jesus Leon Rangel	\N	0e9c2965-24f0-4a2d-bb14-3a673bfdb467	2025-12-26 12:37:59.195	2026-01-13 18:40:47.611	\N
c2506163-6b2d-402e-a0cb-0b808fc6e3eb	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	62588.00	09e5b732-f65f-45da-bad7-2421b495f44a	Impuestos declaracion mascotas vip atrasada septiembre	2025-12-24 09:34:00	\N	SII	Jesus Leon Rangel	\N	\N	2025-12-26 12:34:53.927	2026-01-13 19:08:58.908	\N
67d10af8-a765-43b5-8c12-b4eed53fbdd9	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	22203.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Cachapas para almorzar	2025-12-24 09:32:00	\N	Don 70 al paso	Jesus Leon Rangel	\N	\N	2025-12-26 12:33:05.368	2026-01-13 19:09:27.877	\N
41d9b000-e0ba-4907-b2c1-40b407a3f851	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	20798.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Tequeños para navidad	2025-12-23 11:44:00	\N	Masadictos	Jesus Leon Rangel	\N	\N	2025-12-23 14:44:25.507	2026-01-13 19:39:51.957	\N
e3d86464-94ec-4a72-a0cf-653098186d69	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24800.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	3 sushis	2025-12-23 09:31:00	\N	Niu Sushi	Jesus Leon Rangel	\N	\N	2025-12-26 12:32:16.366	2026-01-13 19:42:08.918	\N
65f8c1f7-d6c9-407b-a52d-be0878b9b003	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	7990.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Guantes negros	2025-12-22 11:42:00	\N	Farmacia de Barrio	Jesus Leon Rangel	\N	ab2845ae-a6e8-460d-9184-1361ea8785da	2025-12-23 14:42:40.809	2026-01-13 19:44:18.477	\N
25a1b9f5-1066-4d5a-9460-7faee3159362	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	1650.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Chocolate trencita	2025-12-22 11:41:00	\N	Lider Express	Jesus Leon Rangel	\N	\N	2025-12-23 14:41:27.841	2026-01-13 19:45:36.222	\N
16cbc5f9-22c0-4e59-ae17-fe396eacd853	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	6900.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento mall dia de cine	2025-12-21 10:55:00	\N	Mall Plaza Egaña	Jesus Leon Rangel	\N	17210896-4caa-491a-a91b-39c6c3ee1f6a	2025-12-22 13:56:17.106	2026-01-13 19:51:33.671	\N
17409875-fc20-4fab-97df-9f6a34d98f54	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15000.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-12-21 10:54:00	\N	Shell	Jesus Leon Rangel	\N	d6621bad-11d5-43c2-9cd6-6e04c71b9c42	2025-12-22 13:54:41.86	2026-01-13 19:59:36.38	\N
9486f3d5-1156-4b91-86b6-ec7264ef5e14	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	27400.00	b4c24fd3-645d-4f21-94c6-327240df686a	Comida del cine	2025-12-21 10:51:00	\N	Cine Hoyts	Jesus Leon Rangel	\N	\N	2025-12-22 13:51:49.204	2026-01-13 20:00:40.643	\N
ff394ff3-bb5f-4937-997d-f8d6850ec10c	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11080.00	42204bb7-7b76-44ed-a668-5b80c5def775	Regalo navidad Cesar Jr	2025-12-21 10:50:00	\N	Amazon	Jesus Leon Rangel	\N	\N	2025-12-22 13:50:40.253	2026-01-13 20:01:31.715	\N
d471a1d6-960a-442d-ac28-febde0de600d	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3580.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-12-20 11:08:00	\N	Lider Express	Jesus Leon Rangel	\N	1218977d-425a-4a22-b667-d5256d4e14bd	2025-12-22 14:08:36.408	2026-01-13 20:03:16.572	\N
d68cc107-f988-4172-8f7b-f4d210f56549	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18000.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Caja de Huevos	2025-12-20 11:06:00	\N	Distribuidora Catalan	Jesus Leon Rangel	\N	ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4	2025-12-22 14:06:48.666	2026-01-13 20:04:03.068	\N
4be4de79-8fa4-4c53-9b79-26222fa58d4c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	850.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento mall	2025-12-20 10:53:00	\N	Mall Plaza Egaña	Jesus Leon Rangel	\N	3afd939d-8724-4633-8101-016b8cd1b7d7	2025-12-22 13:53:34.272	2026-01-13 20:05:24.161	\N
c3efdaef-9e2e-4373-823b-cfbcb1b9c56b	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	35990.00	c4374810-0308-4355-952e-17986d76f696	Hamburguesas	2025-12-19 10:49:00	\N	La Birra Bar	Jesus Leon Rangel	\N	\N	2025-12-22 13:49:29.229	2026-01-13 20:06:28.706	\N
091ae32d-9488-482d-803f-22c395a6f4ea	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	45357.00	42204bb7-7b76-44ed-a668-5b80c5def775	Regalo navidad Cesar Jr	2025-12-19 10:48:00	\N	Amazon	Jesus Leon Rangel	\N	\N	2025-12-22 13:48:37.424	2026-01-14 11:56:47.607	\N
13410951-b53a-4a2a-af22-ace789a7e3b5	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	137645.00	09e5b732-f65f-45da-bad7-2421b495f44a	Impuestos casa 4/4	2025-12-18 18:18:00	\N	TGR	Jesus Leon Rangel	\N	97e6402f-2c9c-4a2f-9abe-1525d7c3acff	2025-12-18 21:19:25.019	2026-01-14 12:00:01.071	\N
cebb9f57-b286-4e78-a352-aecdb574e7d7	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4361.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-12-18 11:05:00	\N	Lider Express	Jesus Leon Rangel	\N	4eb62da7-111f-4444-b433-f9ad8a808fcd	2025-12-22 14:05:32.522	2026-01-14 12:01:20.82	\N
9e6d877d-2108-4efb-a79c-ff24aa55315c	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3890.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-11-15 15:08:00		Lider Express	Jesus Leon Rangel	\N	2cb86c12-69e2-47b5-93cd-bbcc44321ef3	2025-11-19 15:09:37.935	2026-01-14 13:37:27.118	\N
11c40407-1dc8-4f1c-b05a-1d0d6798c81c	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	217000.00	c18fad8d-b81c-48f4-b6c1-692fdf329698	Cabaña algarrobo	2025-12-18 18:53:00	\N	Airbnb	Jesus Leon Rangel	\N	d12fd1f8-d7a5-4156-9030-7babd6cd9e78	2026-01-04 21:54:13.38	2026-01-14 11:58:29.449	\N
ff2d88f7-01de-45d3-8f7e-40ff2ca3f9b4	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3990.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-12-22 12:15:00	\N	Lider Express	Jesus Leon Rangel	\N	7f36af3a-cb00-4e88-8eb5-9447822cbb52	2025-12-26 15:16:17.172	2026-01-13 19:43:06.103	\N
d4a3ac69-7acb-44ba-88b0-f7eb78d58b3a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	20200.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Frutas y aguacates	2025-12-27 11:49:00	\N	Feria Ñuñoa	Jesus Leon Rangel	\N	cc2ab76e-71f8-4a9f-b0f3-31c2d821657b	2025-12-28 14:49:45.455	2025-12-28 14:49:45.455	\N
f4aabec3-faed-44a7-96a6-f1f543b2d698	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6300.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Uvas	2025-12-27 11:53:00	\N	Feria Ñuñoa	Jesus Leon Rangel	\N	259fd720-2313-4011-875f-af7a4e40ed5b	2025-12-28 14:53:43.837	2025-12-28 14:53:43.837	\N
6016cfe5-82f3-48c8-8add-7529c4e7480d	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	17047.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Comisión Cta Corriente	2025-12-26 11:57:00	\N	Banco Santander	Jesus Leon Rangel	\N	\N	2025-12-28 14:58:08.497	2025-12-28 14:58:08.497	\N
b9e63ba2-cdc7-4c89-b259-46ce4e2c7f57	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	52460.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-12-18 11:21:00	\N	Shell	Olga Manyoma	\N	1b8f76ff-6bed-4405-9b1f-b71c75ebb2c4	2026-01-05 14:21:55.546	2026-01-05 14:21:55.546	\N
9ba83219-d94b-45f6-af08-ecd9ddb15b53	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	15000.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Otros	2025-12-12 11:22:00	\N	Otros	Olga Manyoma	\N	71eaec40-b86e-42f6-9117-233b9e207663	2026-01-05 14:22:47.55	2026-01-05 14:22:47.55	\N
f8724acd-70f1-48e1-9332-39479b171849	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	738993.30	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago de balance compartido a Jesus Leon Rangel.	2026-01-05 14:26:05.681	\N	\N	Olga Manyoma	\N	\N	2026-01-05 14:26:09.163	2026-01-05 14:26:09.163	\N
247e9357-15b5-4545-9f37-04e4cd557ab1	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	738993.30	f0e55f8d-fd9a-4745-9f26-54c75614fc3c	Recibido de Olga Manyoma por balance compartido.	2025-12-30 14:26:00	\N		Jesus Leon Rangel	\N	\N	2026-01-05 14:26:09.183	2026-01-13 18:15:53.188	\N
87ab832d-399e-4a70-a808-5ef348652789	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	560742.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago de deudas de diciembre	2025-12-30 11:31:00	\N		Jesus Leon Rangel	646caf37-7684-45ac-87f3-cec83efb633d	\N	2026-01-05 14:31:26.211	2026-01-13 18:17:46.121	\N
bac2cfcd-be7c-4055-b8d7-92bff9d3f0ec	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	1901762.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago cuentas de diciembre	2025-12-30 11:30:00	\N		Jesus Leon Rangel	2e64b401-5a2f-4492-87c9-a618e7ba6f33	\N	2026-01-05 14:30:23.395	2026-01-13 18:18:25.517	\N
2be1eb87-3ac0-41bf-9d23-ee77e7a185d2	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	298000.00	eae031aa-f92d-4cda-8255-0460ff158f67	Pago de préstamo de Katty Rangel	2025-12-30 00:00:00	\N		Katty Rangel	\N	\N	2025-12-30 15:24:12.283	2026-01-13 18:19:10.594	\N
cd84af56-9975-4fce-8435-16ffc4937c8f	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	859000.00	eae031aa-f92d-4cda-8255-0460ff158f67	Pago de préstamo de Katty Rangel	2025-12-30 00:00:00	\N		Katty Rangel	\N	\N	2025-12-30 15:23:13.525	2026-01-13 18:19:44.619	\N
31378f97-ae19-44ac-9e68-4ef8f59125b4	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3599.00	e72fa961-c75d-4b52-9ac8-242475226724	Ecografia de tiroides	2025-12-29 13:09:00	\N	Clinica Davila	Jesus Leon Rangel	\N	\N	2025-12-30 16:09:34.355	2026-01-13 18:22:09.768	\N
13cc266d-1f91-4751-96a1-942300d6a32d	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	10911.00	e72fa961-c75d-4b52-9ac8-242475226724	Examenes de sangre	2025-12-29 13:08:00	\N	Clinica Davila	Jesus Leon Rangel	\N	\N	2025-12-30 16:08:48.643	2026-01-13 18:23:45.973	\N
861929ca-dcb1-4af5-9cc1-096252b39ddd	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3600.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Flips y agua	2025-12-29 13:07:00	\N	Belinda Market	Jesus Leon Rangel	\N	\N	2025-12-30 16:07:48.891	2026-01-13 18:25:51.352	\N
3b3df23d-1fd6-4b07-b1b7-85744afac100	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9490.00	b37a8198-99ee-4bac-9d00-07b0bf8df102	Paz-pet para dustin	2025-12-28 17:26:00	\N	Club de perros y gatos	Jesus Leon Rangel	\N	ba0bf43b-dc38-4162-93ba-b272d2931d33	2025-12-28 20:27:12.903	2026-01-13 18:27:23.631	\N
1d76e9b0-826b-418b-9ad8-2ee7dddb172b	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3000.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Ajuste de cuenta	2025-12-28 11:55:00	\N	Otros	Jesus Leon Rangel	\N	f60a6348-e545-49c2-b324-ef1957eee4cb	2025-12-28 14:55:58.621	2026-01-13 18:28:46.665	\N
09dc4a64-0ed8-4f71-8752-eee6990ad1c2	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3390.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Lavaplatos	2025-12-27 11:51:00	\N	Lider Express	Jesus Leon Rangel	\N	2aecf103-6eac-4e2a-8298-e16d440bfeaf	2025-12-28 14:52:47.33	2026-01-13 18:29:28.78	\N
3dc90afb-1134-4680-acff-6f708fa9c502	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	600.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento Franklin	2025-12-27 11:50:00	\N	Esacionamiento Franklin	Jesus Leon Rangel	\N	\N	2025-12-28 14:50:40.261	2026-01-13 18:30:15.267	\N
6125d279-3b0d-41ad-9cfa-41973e2478d0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	9570.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras torta 3 leches	2025-12-24 12:21:00	\N	Lider	Jesus Leon Rangel	\N	4e5bd49e-a5bc-475b-9162-cddf306dd0c8	2025-12-26 15:21:41.306	2026-01-13 18:40:19.022	\N
34d866ac-9e4e-4185-9c12-e2f11c8d5033	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	INCOME	3531495.00	35e1feb2-b6d8-461c-a951-43f35be33f7a	Sueldo de Diciembre	2026-01-01 19:05:00	\N	TCS	Jesus Leon Rangel	\N	\N	2026-01-04 22:05:35.26	2026-01-13 19:03:07.459	\N
d0de9843-09ef-42cb-93bc-11e19f7e533e	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	16980.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Champagne para el 31	2025-12-31 19:03:00	\N	Tost	Jesus Leon Rangel	\N	\N	2026-01-04 22:04:11.657	2026-01-13 19:06:59.228	\N
f25d0935-53f3-4d42-90ef-1a8d85c8b90d	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	392287.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago de cuentas de diciembre	2025-12-31 11:29:00	\N		Jesus Leon Rangel	0c046099-f7ff-4463-bf04-cdc01ecd9c09	\N	2026-01-05 14:29:40.318	2026-01-13 19:08:05.679	\N
48a8c65a-6357-4c67-af88-55692d6df4a6	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	42114.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2025-12-23 12:18:00	\N	Shell	Jesus Leon Rangel	\N	094254a7-4ffa-4841-a67b-017995c7d83d	2025-12-26 15:19:06.684	2026-01-13 19:11:18.334	\N
2043a75e-7505-4856-b26e-735d3d82c0c7	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	5170.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2025-12-23 12:17:00	\N	Lider Express	Jesus Leon Rangel	\N	7341968e-73f7-4e8e-b941-46bab963382c	2025-12-26 15:18:05.119	2026-01-13 19:39:11.691	\N
fc2b4492-d292-4052-a730-2b1078c0e64a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4059.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento Isidora Goyenechea	2025-11-14 18:12:00		Estacionamiento Isidora Goyenechea	Jesus Leon Rangel	\N	b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	2025-11-19 15:12:24.491	2026-01-14 13:38:28.05	\N
25cd89aa-956d-40bd-a484-202b57a9d56a	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	3192.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Subscripcion gopro	2025-12-07 11:34:00	\N	GoPro	Jesus Leon Rangel	\N	\N	2026-01-05 14:34:57.542	2026-01-05 14:34:57.542	\N
ac45eeec-39d6-47a1-9150-6a91606b8069	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	11123.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Icloud subscripcion 	2025-12-13 11:35:00	\N	Apple	Jesus Leon Rangel	\N	\N	2026-01-05 14:35:44.025	2026-01-05 14:35:44.025	\N
06b30ae1-b8fd-444d-81c4-66a45139b618	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	321447.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb	Pago de deudas de diciembre	2025-12-30 11:31:00	\N		Jesus Leon Rangel	2c6743e1-4096-45b1-9ebb-8b998cedda57	\N	2026-01-05 14:32:02.073	2026-01-13 18:16:43.585	\N
2f600313-8b1f-47b9-aa92-4b89518bd192	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	8860.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	La fiambreria, fiambres para cena	2026-01-13 11:17:00	\N	Uber eats	Jesus Leon Rangel	\N	\N	2026-01-14 14:18:06.64	2026-01-14 14:18:06.64	\N
a87a20eb-e72e-4e2b-9937-14f32beebb8e	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3800.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Vespucio Norte	2026-01-12 11:23:00	\N	Vespucio Norte	Jesus Leon Rangel	\N	6d151c88-da24-4d6e-98bb-9888c0b08899	2026-01-14 14:23:34.622	2026-01-14 14:23:34.622	\N
676204ac-4244-48a6-a260-a3794b90ece0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	99997.00	63fad128-ab67-4cec-9011-8750d6cb84fc	Cuota 2/3 audífonos	2025-12-05 11:50:00	\N	Apple	Jesus Leon Rangel	\N	\N	2025-12-23 14:51:19.494	2026-01-15 14:45:11.404	\N
26f1378b-84b8-48cd-8e70-bca766dabfae	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	83270.00	b6701d20-51bf-4d57-bbb3-47a5cf0aa7b3	Luz de Diciembre	2026-01-16 12:07:00	\N	Enel	Jesus Leon Rangel	\N	f5087f65-3f54-446c-af6d-7433920afdab	2026-01-16 15:08:13.002	2026-01-16 15:08:13.002	\N
b0d0692e-ea37-4b93-bc3d-dc50d711b62a	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	13672.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	SetApp suscripción	2025-12-27 11:36:00	\N	SetApp	Jesus Leon Rangel	\N	\N	2026-01-05 14:36:31.663	2026-01-05 14:36:31.663	\N
c0d77d1a-28bd-464e-83c4-e120391300a4	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6170.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2026-01-11 11:04:00	\N	Lider Express	Jesus Leon Rangel	\N	f36bbf02-2953-4b09-b7e5-020314750413	2026-01-14 14:05:01.334	2026-01-14 14:05:01.334	\N
b4c9bea8-9233-40cc-ad18-56ab85a42fe0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	500.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento 	2026-01-13 11:29:00	\N	Mall Portal Ñuñoa	Jesus Leon Rangel	\N	\N	2026-01-14 14:29:17.578	2026-01-14 14:29:17.578	\N
867cffc9-7aa3-45a7-91e3-cda4be604e9d	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	13156.00	710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Giftcard 1000 rupias, youtube y Apple TV	2026-01-14 12:35:00	\N	Level Digital	Jesus Leon Rangel	\N	\N	2026-01-15 15:35:18.12	2026-01-15 15:35:18.12	\N
9bb1857c-2046-45ba-b8b9-a0c9d2ca45db	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	2600.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag ruta del maipo	2026-01-16 12:14:00	\N	Ruta del maipo	Jesus Leon Rangel	\N	03946a81-2e87-4343-82a1-7eb438cf52b8	2026-01-16 15:14:36.676	2026-01-16 15:14:36.676	\N
aff3c58f-420b-436d-8e69-b404da83eb7f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8250.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Spotify suscripcion	2026-01-02 13:30:00	\N	Spotify	Jesus Leon Rangel	\N	702f3d38-5446-46df-b064-c2e82c5ff31d	2026-01-05 16:30:54.338	2026-01-05 16:30:54.338	\N
f8818ae3-ad6c-4879-9b1b-04adcfe240ea	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	1164.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Diciembre Autopista Vespucio Oriente	2026-01-05 14:08:00	\N	Autopista Vespucio Oriente	Jesus Leon Rangel	\N	86a63177-7e97-4d76-97ea-ac5520971468	2026-01-05 17:08:57.457	2026-01-05 17:08:57.457	\N
96553f12-0be8-47a4-9559-1d63de689dc7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9135.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Diciembre Costanera Norte	2026-01-05 14:09:00	\N	Costanera Norte	Jesus Leon Rangel	\N	65462a64-b75c-4670-9f56-2b7b003f1be4	2026-01-05 17:10:04.702	2026-01-05 17:10:04.702	\N
1baf0775-d406-4d9a-8eb6-2f23b35bf94b	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	199240.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA nuevo 215USD 	2026-01-05 14:11:00	\N	Hapi Broker	Jesus Leon Rangel	\N	\N	2026-01-05 17:11:53.13	2026-01-05 17:11:53.13	\N
59a65769-c7cd-405b-bf65-4cf65c15242e	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	149123.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA SP500 160USD	2026-01-05 14:12:00	\N	Hapi Broker	Jesus Leon Rangel	\N	\N	2026-01-05 17:13:07.9	2026-01-05 17:13:07.9	\N
1dc642cc-74a2-4c84-b542-3aacb0f77416	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	150000.00	5ec041fc-8c57-4f46-a1e9-80ffc95bf107	DCA Crypto 162 USD	2026-01-05 14:13:00	\N	OrionX	Jesus Leon Rangel	\N	\N	2026-01-05 17:14:00.226	2026-01-05 17:14:00.226	\N
8d066f37-9d58-42b1-b68b-ddd379d653b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	TRANSFER	3080000.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb		2026-01-05 14:19:00	\N		Jesus Leon Rangel	d99144b6-5974-40e2-9f17-b36942774c9e	\N	2026-01-05 17:19:11.295	2026-01-13 18:12:46.801	\N
a59780ad-c445-4c78-be0e-6731b917a261	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	TRANSFER	26897.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb		2026-01-05 14:17:00	\N		Jesus Leon Rangel	34d0aa36-bc91-4383-95fb-578fbbc09e04	\N	2026-01-05 17:18:05.347	2026-01-13 18:13:10.068	\N
65c1cb57-8516-4c40-8acd-09fb22c5c241	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	14990.00	df6782b9-5c24-471e-b57e-1ab9220f72eb	Suscripción plan claro	2026-01-05 14:10:00	\N	Claro	Jesus Leon Rangel	\N	\N	2026-01-05 17:10:59.363	2026-01-13 18:13:38.059	\N
4162d8b5-a8d8-4218-81d5-c019b5192960	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8610.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2026-01-04 13:37:00	\N	Lider Express	Jesus Leon Rangel	\N	eca34b32-69b2-4054-9001-8d7788fb7b8c	2026-01-05 16:37:37.216	2026-01-13 18:33:24.912	\N
dea17036-52e8-4f75-ac85-4900792c021d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	832210.00	d1f5a24f-e46e-4a39-8ddb-8815439adbc4	Cuota 72/360	2026-01-04 13:27:00	\N	Banco Scotiabank	Jesus Leon Rangel	\N	61679660-f958-4fef-947a-14f3296364cd	2026-01-05 16:28:34.608	2026-01-13 18:34:47.225	\N
c4cfa58e-f854-4a11-bd41-45ee3ea4aba7	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	5300.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Flips y otra cosa	2026-01-03 13:35:00	\N	Belinda Market	Jesus Leon Rangel	\N	\N	2026-01-05 16:35:32.83	2026-01-13 18:35:14.039	\N
f57026cd-f716-4713-857f-666744e28854	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9100.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Compras varias 	2026-01-03 13:32:00	\N	Belinda Market	Jesus Leon Rangel	\N	58fdd50a-6879-4462-90dd-38f0a2835fab	2026-01-05 16:33:06.716	2026-01-13 19:02:22.53	\N
07bf40b9-5b8f-456d-b240-e832953c4c31	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	30547.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina	2026-01-01 13:29:00	\N	Shell	Jesus Leon Rangel	\N	429a9dd9-ea4a-44ce-a482-b494fdd094c5	2026-01-05 16:29:35.539	2026-01-13 19:03:49.132	\N
e5bb115c-64e8-48be-a819-b92ae397fad4	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	6000.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Peaje y compras para efectivo del peaje	2025-12-31 11:38:00	\N	Otros	Jesus Leon Rangel	\N	\N	2026-01-05 14:39:11.469	2026-01-13 19:07:34.566	\N
30a2c881-046c-45dd-8ba9-cfd2413b7562	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	131239.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	Fit9	2026-01-05 11:37:00	\N	SachaFitness.com	Jesus Leon Rangel	\N	04ad1e15-2148-45e5-b014-ddb5a6325995	2026-01-05 14:38:04.706	2026-01-13 19:37:09.562	\N
150757a4-0c30-4554-8472-7dca92b8f977	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	4292.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Diciembre Vespucio Sur	2026-01-06 14:50:00	\N	Vespucio Sur	Jesus Leon Rangel	\N	9092d427-60c4-4bea-a3c8-887726a02d75	2026-01-06 17:50:49.448	2026-01-06 17:50:49.448	\N
94f7c690-9487-4595-be90-ad9a8f9a469d	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6680.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras varias	2026-01-12 11:05:00	\N	Lider Express	Jesus Leon Rangel	\N	598ddf22-7578-42e2-a0c5-6e8e92ee5030	2026-01-14 14:06:17.704	2026-01-14 14:06:17.704	\N
b1594094-e96a-4b95-b501-fdfca27dcb0d	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	10170.00	e72fa961-c75d-4b52-9ac8-242475226724	Consulta endocrino	2026-01-06 20:54:00	\N	Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2026-01-06 17:54:45.235	2026-01-13 18:03:58.671	\N
22ed3f10-fb50-4db6-85ce-45303dd6d84c	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	49899.00	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Gasolina 97	2026-01-13 11:06:00	\N	Shell	Jesus Leon Rangel	\N	bac1d01e-1ee3-4b69-a012-dfd0d9973aca	2026-01-14 14:07:08.104	2026-01-14 14:08:00.254	\N
57c24a0e-f96c-4e8c-9df6-383b95504bb6	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	23520.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras para cena romantica	2026-01-13 11:14:00	\N	Jumbo	Jesus Leon Rangel	\N	\N	2026-01-14 14:15:03.799	2026-01-14 14:15:03.799	\N
11133022-38eb-4885-8255-56e14ce48765	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2400.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Hielo y agua con gas	2026-01-13 11:18:00	\N	Belinda Market	Jesus Leon Rangel	\N	\N	2026-01-14 14:19:05.908	2026-01-14 14:19:05.908	\N
1581c5e2-6812-4e6a-b635-f0ebd13911c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	50420.00	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Vitamina D, Fersitol D, Acido Folico, Shampoo	2026-01-12 11:21:00	\N	Farmacias Olga	Jesus Leon Rangel	\N	c429f535-df49-4b44-97e6-4d080387561c	2026-01-14 14:22:20.819	2026-01-14 14:22:20.819	\N
e50481c6-96fb-4b62-bfed-3bfd4dcc48e7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	500.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Esatcionamiento	2026-01-13 11:28:00	\N	Mall Plaza Egaña	Jesus Leon Rangel	\N	\N	2026-01-14 14:28:17.839	2026-01-14 14:28:17.839	\N
c91e1cb1-4a96-49ed-8288-cf47e34933e1	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	502000.00	eae031aa-f92d-4cda-8255-0460ff158f67	Pago de préstamo de Katty Rangel	2026-01-13 00:00:00	\N	\N	Katty Rangel	\N	\N	2026-01-14 17:47:22.333	2026-01-14 17:47:22.333	\N
d84af0e6-04d2-4337-a7c0-9f10c5c6a5d5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	13200.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 bandejas de huevo	2026-01-15 12:37:00	\N	Distribuidora Catalan	Jesus Leon Rangel	\N	fda5f519-5911-4872-9dfb-7ff6744c8c2b	2026-01-15 15:37:34.077	2026-01-15 15:39:53.502	\N
ab1fca8b-934f-496f-a2fe-12cc98696f33	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	80494.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Mercado del mes	2026-01-06 11:17:00	\N	Lider	Jesus Leon Rangel	\N	f8f38577-8a39-49d6-8a1a-1fd2b121385e	2026-01-07 14:17:29.502	2026-01-14 14:02:44.325	\N
34b96ccf-a141-4772-9dfb-6a6e25cde907	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51656.00	6d6c20c0-81f2-4afb-a72e-228c0a3982e0	Seguro cleopatra	2026-01-06 14:53:00	\N	Bci Seguros	Jesus Leon Rangel	\N	80fe41b3-ee23-4fce-ae86-cbd0ea2acd31	2026-01-06 17:53:41.822	2026-01-06 17:53:41.822	\N
17e4507f-9faa-4d1a-a181-e63bde8debeb	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	10000.00	e72fa961-c75d-4b52-9ac8-242475226724	Reserva cita nutricionista	2026-01-09 11:10:00	\N	Andrea Nutricionista	Jesus Leon Rangel	\N	\N	2026-01-14 14:11:23.876	2026-01-14 14:11:23.876	\N
7627c778-a3ae-4a5d-a3d2-558a473420ad	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	13200.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 bandejas de huevos	2026-01-06 11:15:00	\N	Distribuidora Catalan	Jesus Leon Rangel	\N	81d4a09c-255a-4df4-994a-62dec7497655	2026-01-07 14:15:48.155	2026-01-07 14:15:48.155	\N
5663c937-7016-4414-9062-16d5fbe9dc1c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	6500.00	43ce1783-37f8-4f27-92a8-04c27a3f070a	Tag Ruta 68	2026-01-12 11:24:00	\N	Ruta 78	Jesus Leon Rangel	\N	bdbc0fc3-1d0a-4773-8a20-d3330e456e7f	2026-01-14 14:24:47.307	2026-01-14 14:24:47.307	\N
e22bf5c3-277a-479c-a15e-17185901d7f5	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	4000.00	8ea79ed5-7136-4a96-ae4d-0c5217538295	Bolsas dustin, chip OMA	2026-01-12 11:25:00	\N	Chinos Pedro Valdivia	Jesus Leon Rangel	\N	bb75b0dd-ee38-4817-bbd1-60a57e0154c6	2026-01-14 14:26:06.047	2026-01-14 14:26:06.047	\N
0afa0020-605e-477b-9778-aa648efe39cc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8400.00	f6af5305-ccf1-4ab8-a21c-39bc8636e7b9	Almendras y pistacho	2026-01-12 11:26:00	\N	Tostaduria el mani	Jesus Leon Rangel	\N	eb437fc4-021d-433b-a88b-cac003fcb903	2026-01-14 14:27:28.668	2026-01-14 14:27:28.668	\N
baf00ed1-1773-4c2b-a20a-36764c6519ba	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2690.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripcion antigravity	2026-01-07 15:39:00	\N	Google	Jesus Leon Rangel	\N	\N	2026-01-08 18:41:23.341	2026-01-08 18:41:23.341	\N
27c4310c-36f7-4e3e-a949-1fed5afe6065	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	30594.00	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agua de tomar de la casa	2026-01-02 15:45:00	\N	Maihue	Olga Manyoma	\N	18480e40-9d7a-4b0e-9cd0-871afa6d8dbe	2026-01-08 18:45:59.364	2026-01-08 18:45:59.364	\N
67ea5baf-d46f-4b37-84ff-2e3e20015ea8	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15880.00	710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Sucripcion de Netflix	2026-01-14 11:30:00	\N	Netflix	Jesus Leon Rangel	\N	630d21bf-e344-4915-8570-9346a948fb17	2026-01-14 14:31:30.323	2026-01-14 14:31:30.323	\N
88d7cdf0-89e3-437b-b25c-d31bcb7c1749	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	827000.00	e1dd8701-b920-4252-bc8a-26a23fed3fc1	Préstamo a Katty Rangel	2026-01-14 00:00:00	\N	Katty Rangel	Jesus Leon Rangel	\N	\N	2026-01-15 14:03:12.591	2026-01-15 14:03:12.591	a6995b4d-3606-4c2c-acd2-94418b85de19
d14ce83f-be73-4f44-b7cb-d28b1ca7d6d7	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	22037.00	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Arroz chino	2026-01-09 00:00:00	\N	Chen Santiago	Jesus Leon Rangel	\N	\N	2026-01-09 19:00:02.844	2026-01-09 19:00:02.844	\N
a7b0b00c-8839-404d-a9a3-91d7f5bc3ee8	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	20000.00	2a12ab4d-7fa0-4152-a026-58472dd91dcb		2026-01-08 15:37:00	\N		Jesus Leon Rangel	34d0aa36-bc91-4383-95fb-578fbbc09e04	\N	2026-01-08 18:37:30.605	2026-01-13 12:57:25.615	\N
c41db859-b376-4a73-b9ee-f202019fe092	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2060.00	383b06d7-97c5-46fa-92e1-c0ba555cd879	Estacionamiento Clínica Santa María	2026-01-06 20:55:00	\N	Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2026-01-06 17:55:42.021	2026-01-13 18:02:00.697	\N
d58c5bec-4088-440e-b4bb-a1d849173d2b	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	14517.00	b3c89167-bdfb-4fe5-9452-13eba9eb58e4	Agua de diciembre	2026-01-06 14:49:00	\N	Aguas andinas 	Jesus Leon Rangel	\N	d2c7a478-9176-471d-a97b-458729ecac84	2026-01-06 17:49:47.398	2026-01-13 18:05:07.367	\N
286e92bc-fd37-4ce9-9092-e5f4675b650a	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	2214.00	09e5b732-f65f-45da-bad7-2421b495f44a	Pago seguro de fraude	2026-01-06 12:00:00	\N	Banco Santander	Jesus Leon Rangel	\N	\N	2026-01-07 15:01:06.767	2026-01-13 18:05:40.137	\N
02c70b65-deb5-45cf-9b8d-4bdb2869fca0	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	26897.00	6870baf3-aa72-4c03-93c7-3e9cfeb89b76	Otros	2026-01-05 15:48:00	\N	Otros	Jesus Leon Rangel	\N	\N	2026-01-08 18:49:16.091	2026-01-13 18:09:18.328	\N
c2c0cbe9-76ee-4a2e-a472-bf6e78ce0f6d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	29501.00	52a2a345-15f9-4494-93e8-8fd3d36913a5	Internet de la casa	2026-01-05 14:52:00	\N	Movistar	Jesus Leon Rangel	\N	4d9e05ff-0954-49ac-a035-0ac71ff93fc4	2026-01-06 17:52:35.996	2026-01-13 18:12:22.829	\N
6c51f32d-8cdf-4db3-ab56-d923efa61681	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	57138.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras 31 diciembre	2025-12-30 18:40:00	\N	Lider Express	Jesus Leon Rangel	\N	d9d3c5d1-a764-4927-ab6d-6148c6ebf738	2026-01-04 21:42:06.116	2026-01-13 18:14:42.124	\N
39351fb9-44bb-45d4-b022-26c2676eafac	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	20863.00	09e5b732-f65f-45da-bad7-2421b495f44a	Declaracion Octubre tarde	2025-12-26 10:52:00	\N	SII	Jesus Leon Rangel	\N	\N	2025-12-26 13:52:16.754	2026-01-13 18:31:04.374	\N
3b1c9ac7-8d82-4edc-a6a5-6e4fa49ca0f6	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	15020.00	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Compras perros caliente	2025-12-17 18:11:00	\N	Lider Express	Jesus Leon Rangel	\N	42496f51-a385-4fcf-8276-445616899437	2025-12-18 21:11:30.225	2026-01-14 12:02:32.939	\N
9e3d8d5b-fe4e-47ed-9601-c014b7a2cd5c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	21000.00	303ba75a-49dd-4c97-9607-328914066218	Baño a cleopatra	2025-12-12 14:15:00	\N	Autolavado Donde Camilo	Jesus Leon Rangel	\N	9b452557-46f2-4054-85c8-93a08371fbcf	2025-12-12 17:16:08.62	2026-01-14 12:21:10.074	\N
6291380e-2583-40e0-9978-9fe7522fa509	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	10500.00	8f648fef-31bb-431e-9501-02796969902d	Juego F1 Legends	2025-12-09 11:00:00	\N	Nintendo	Jesus Leon Rangel	\N	\N	2025-12-09 14:00:13.858	2026-01-14 12:25:41.343	\N
76fce8ab-8cda-484b-b8f9-5baa11b14596	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51990.00	b37a8198-99ee-4bac-9d00-07b0bf8df102	Perrarina pollo 12 kg	2026-01-15 13:05:00	\N	Mascotas Vip	Jesus Leon Rangel	\N	265ca5a7-4c32-4125-9e13-eefe38598b62	2026-01-15 16:06:16.381	2026-01-15 16:06:16.381	\N
729c3058-ba20-4d55-b231-74934d53ccfe	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	306586.00	bb80c962-8810-4dd6-8aa7-6277041dae78	Cuota Cleopatra 	2026-01-15 13:09:00	\N	Banco Internacional	Jesus Leon Rangel	\N	a4547bad-ecfb-4934-a0e6-aaeed2dd99c1	2026-01-15 16:10:21.809	2026-01-15 16:10:21.809	\N
\.


--
-- Data for Name: imported_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."imported_transactions" ("id", "import_history_id", "transaction_id", "row_number", "status", "error_message", "original_date", "type", "amount", "description", "category", "tags", "notes") FROM stdin;
94a41c40-b23c-45c4-a290-562383ad0426	67a6a633-be82-48b4-ac36-6ab0b848dd52	7830902c-e299-42aa-a7cd-338cdef047a2	2	SUCCESS	\N	2025-11-02	EXPENSE	24549	Claro Tlf	\N	personal	\N
f2a90d79-e1af-416b-8b68-6ed2bc4a3ee5	67a6a633-be82-48b4-ac36-6ab0b848dd52	96136e2a-5499-45b7-a525-6dfd955872cf	3	SUCCESS	\N	2025-11-03	EXPENSE	8386	Vaso de la Licuadora	\N	casa_otros	\N
119b3216-c527-40d7-9b78-ff9535714412	67a6a633-be82-48b4-ac36-6ab0b848dd52	860eaf70-b19c-48bf-b985-48894956d57c	4	SUCCESS	\N	2025-11-03	EXPENSE	14346	Potes de vidrio	\N	casa_otros	\N
ea848e46-4b7c-464e-ac05-f02892cb181c	67a6a633-be82-48b4-ac36-6ab0b848dd52	d1dcf649-7608-4832-a169-edeb31a23351	5	SUCCESS	\N	2025-11-08	EXPENSE	18196	Capsula para fermentar aliexpress	\N	otros	\N
bff57e3e-ef01-42f4-aa90-1dd56c12d0ab	67a6a633-be82-48b4-ac36-6ab0b848dd52	c46b2db9-4eea-40bb-a674-aedd6f9f14c5	6	SUCCESS	\N	2025-11-10	EXPENSE	2690	google drive	\N	personal_suscripcion	\N
84e2fa09-bb6d-46c0-8a49-d30237bb851d	67a6a633-be82-48b4-ac36-6ab0b848dd52	201db698-37b2-4f6d-9aa1-9f5b1e4db038	7	SUCCESS	\N	2025-11-11	EXPENSE	29070	compras varias aliexpress	\N	personal_otros	\N
9f7a154c-a7a9-4045-9a9f-75f32ad5d8e3	13ae48a6-c39e-41c5-8339-e15ae27187b9	d0cbd012-ca26-4237-a8ab-4e7826aa0a1d	2	SUCCESS	\N	2025-11-03	EXPENSE	5511	Potes redondos vidrio	\N	casa_otros	\N
3701517c-9ae4-47df-8acd-a60cdadd6b3b	13ae48a6-c39e-41c5-8339-e15ae27187b9	82145efb-6977-456c-a9c1-e1c1c55b834e	3	SUCCESS	\N	2025-11-03	EXPENSE	49990	Ollas	\N	casa_otros	\N
b1090ea7-289f-4aaa-a995-63dcc6f7ce80	13ae48a6-c39e-41c5-8339-e15ae27187b9	02716194-558d-4e15-b3cc-5aae39b51b8f	4	SUCCESS	\N	2025-11-01	EXPENSE	17600	Dr Simi, Espironolactona Acido Folico	\N	pastillas	\N
7631606b-570f-4c89-922b-9fa5ad6a0b08	13ae48a6-c39e-41c5-8339-e15ae27187b9	a0505675-d73f-42e8-ac40-39faf8fb6c9c	5	SUCCESS	\N	2025-11-01	EXPENSE	51490	Seguro Cleopatra	\N	carro_seguro	\N
2ee4a60a-656f-4e87-843d-27588b5477b9	13ae48a6-c39e-41c5-8339-e15ae27187b9	f7224a43-debf-4aae-9301-987d0bc4a957	6	SUCCESS	\N	2025-11-01	EXPENSE	8250	Spotify	\N	casa_sucripciones	\N
43f24aef-1545-451f-9beb-7e173f71b112	13ae48a6-c39e-41c5-8339-e15ae27187b9	991ccb74-8420-43e0-9286-359a724d27ab	7	SUCCESS	\N	2025-11-03	EXPENSE	3490	Cortina del Baño	\N	casa_otros	\N
363cfb79-4c9e-4b3c-9814-17477d4669a7	13ae48a6-c39e-41c5-8339-e15ae27187b9	71bbe3c3-976c-4bf2-8c59-be5bd5351dd0	8	SUCCESS	\N	2025-11-03	EXPENSE	30000	Fersitol y Vitamina D	\N	pastillas	\N
f1848542-dc94-435f-9cf9-75a508dca421	13ae48a6-c39e-41c5-8339-e15ae27187b9	eacd6091-41b3-46b5-ad18-53e0ed717c53	9	SUCCESS	\N	2025-11-03	EXPENSE	18270	Vitamina D	\N	pastillas	\N
3385faf3-ed26-4685-a232-f5df26b2de19	13ae48a6-c39e-41c5-8339-e15ae27187b9	3e9350bc-050a-4046-8969-d40e5b50bf4d	10	SUCCESS	\N	2025-11-04	EXPENSE	3600	Cabezal de ducha	\N	casa_otros	\N
68c0dfe1-9428-4e47-9c84-26da1812b42b	13ae48a6-c39e-41c5-8339-e15ae27187b9	a37b800e-9326-439b-b44f-931d8586160a	11	SUCCESS	\N	2025-11-04	EXPENSE	1700	Bolsas de dustin	\N	mascotas_otros	\N
60aa440d-7665-4085-9ab7-a2209e8ea543	13ae48a6-c39e-41c5-8339-e15ae27187b9	52ed71e2-f25a-42e3-af23-ef665a33752f	12	SUCCESS	\N	2025-11-05	EXPENSE	29094	Internet	4085e389-cc55-4db1-9147-6ede27ea05b7	casa_servicios	\N
ee8174e0-ae3f-4982-a042-0736a3311f56	13ae48a6-c39e-41c5-8339-e15ae27187b9	2e762402-3928-4aaa-b718-1a0493c7f516	13	SUCCESS	\N	2025-11-09	EXPENSE	10000	Gasolina	\N	carro_gasolina	\N
47177c20-0694-45f4-b7f6-79cde6052251	13ae48a6-c39e-41c5-8339-e15ae27187b9	d282d0d7-003f-4ee8-8762-9ac035ce5763	14	SUCCESS	\N	2025-11-13	EXPENSE	17617	Agua de la casa	4085e389-cc55-4db1-9147-6ede27ea05b7	casa_servicios	\N
aa28c765-dc34-4505-93b2-443cde2b3ed8	13ae48a6-c39e-41c5-8339-e15ae27187b9	4e2f33d4-41cf-47f9-8a3f-9e207f01f547	15	SUCCESS	\N	2025-11-13	EXPENSE	306586	Cuota Cleopatra	\N	carro_credito	\N
c219524d-9de0-4e4a-848b-cb87aaba6a98	13ae48a6-c39e-41c5-8339-e15ae27187b9	83b85547-d445-43ac-946b-99e677cc2aea	16	SUCCESS	\N	2025-11-13	EXPENSE	66121	Luz	4085e389-cc55-4db1-9147-6ede27ea05b7	casa_servicios	\N
ab313a3b-35c1-46ce-a663-b5f6762ea2e2	13ae48a6-c39e-41c5-8339-e15ae27187b9	71b9d2ab-985e-4b2a-babd-f4de05853ab0	17	SUCCESS	\N	2025-11-14	EXPENSE	15880	Netflix	\N	casa_suscripciones	\N
0738fd58-629f-4da4-b524-45a28da6c497	13ae48a6-c39e-41c5-8339-e15ae27187b9	5917db38-79d5-463e-9d9c-93a646b37c8c	18	SUCCESS	\N	2025-11-14	EXPENSE	104540	Carnes del mes	\N	mercado_carnes	\N
00be3d9b-9820-46e3-b675-24af98ee0685	cb94bec4-70bb-431e-9681-d9720ff53508	111a8138-19fe-4a94-bb88-788a29fdac48	2	SUCCESS	\N	2025-10-31	EXPENSE	13500	Huevos	\N	casa_huevos	\N
25213ab6-0d63-452b-b097-50972a013026	cb94bec4-70bb-431e-9681-d9720ff53508	e30ebf2c-e85a-48eb-9eaa-ec07ef1218c5	3	SUCCESS	\N	2025-11-01	EXPENSE	8200	Aguacates y Cambur	\N	casa_feria	\N
baf9bb6c-5e5d-473e-8b4b-1d6f2fb092b5	cb94bec4-70bb-431e-9681-d9720ff53508	25d64a0c-821d-43f8-9dda-0ee611b88750	4	SUCCESS	\N	2025-11-08	EXPENSE	6390	compras varias	\N	casa_supermercado	\N
f9f479ed-c6f5-42c8-9c41-073feabc3b9b	cb94bec4-70bb-431e-9681-d9720ff53508	63774e8b-c45c-4d10-8888-0a11f28a5a90	5	SUCCESS	\N	2025-11-08	EXPENSE	6434	Mani y Frutos Secos	\N	casa_supermercado	\N
ca716e96-00c5-4107-9a2e-05970413fd40	cb94bec4-70bb-431e-9681-d9720ff53508	0a1252a1-c5a5-4ede-9747-f14968e88b2a	6	SUCCESS	\N	2025-11-08	EXPENSE	15600	Compras feria	\N	casa_feria	\N
510a342b-ffe0-4ac6-bb48-d258605141c9	cb94bec4-70bb-431e-9681-d9720ff53508	6317cdaa-abe8-4e22-bac7-f881ba9f9bb2	7	SUCCESS	\N	2025-11-08	EXPENSE	3250	compras feria	\N	casa_feria	\N
02a7486a-9a6d-4dd7-84cb-679b64cb9160	cb94bec4-70bb-431e-9681-d9720ff53508	3f6b6723-4eeb-42bb-9f4a-5f124ef2e779	8	SUCCESS	\N	2025-11-08	EXPENSE	2850	compras feria	\N	casa_feria	\N
5267f764-b6fc-49d2-883e-06f081ce0851	cb94bec4-70bb-431e-9681-d9720ff53508	93b272ea-6627-4fd2-9da8-4ca954865109	10	SUCCESS	\N	2025-11-10	EXPENSE	25550	Compras varias, atun,camarones legucha otros	\N	casa_supermercado	\N
7e59bbd7-fa5f-4fb1-9235-0bc516d11d62	cb94bec4-70bb-431e-9681-d9720ff53508	26130d97-ed8a-4430-b72e-3061d90cc6e3	9	SUCCESS	\N	2025-11-09	EXPENSE	12900	2 cajas de huevos	\N	casa_huevos	\N
\.


--
-- Data for Name: loan_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."loan_payments" ("id", "loan_id", "amount", "payment_date", "transaction_id", "notes", "created_at") FROM stdin;
96f8b366-f4ea-4940-b31f-c0ea0ffd7827	445024e9-1c20-421a-9807-56d789b6f5a9	80000.00	2025-11-26 00:00:00	58e942dc-3242-4758-a7e4-c830a334bb92	saldado	2025-11-26 15:32:00.845
ba42fff9-63ba-4f2b-b680-e80ba2dcf3a1	3e81a39b-47af-407f-bb12-c618578720a5	20000.00	2025-11-26 00:00:00	bd341ff4-dd7c-4178-a8f4-9cf8bc08906c	parte 1	2025-11-26 16:47:58.817
7fb3f88a-7790-48f7-aad3-c1f87c41e483	3e81a39b-47af-407f-bb12-c618578720a5	30000.00	2025-11-26 00:00:00	8d57926a-be14-4a2e-aedc-7022ce727769		2025-11-26 16:48:23.641
b1d477a5-b6a3-4691-a517-5f7a83516f1d	303795ea-f5cf-4e13-9574-64915ea2d627	859000.00	2025-12-30 00:00:00	cd84af56-9975-4fce-8435-16ffc4937c8f	Pago del prestamo de noviembre	2025-12-30 15:23:14.964
7831604c-996a-4e36-99ae-3a9fc335df29	ba498be2-b8a8-419f-bf7b-8c8a71978dcc	298000.00	2025-12-30 00:00:00	2be1eb87-3ac0-41bf-9d23-ee77e7a185d2	pagodo una parte 	2025-12-30 15:24:13.678
4d127b11-fe43-4199-a1b3-badc73af5e48	ba498be2-b8a8-419f-bf7b-8c8a71978dcc	502000.00	2026-01-13 00:00:00	c91e1cb1-4a96-49ed-8288-cf47e34933e1	pago quedaron 23mil a favor de katty 	2026-01-14 17:47:23.796
\.


--
-- Data for Name: monthly_summaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."monthly_summaries" ("id", "user_id", "month", "year", "message", "income", "expense", "personal_expense", "shared_expense", "savings", "created_at", "updated_at") FROM stdin;
b1fe48e9-34c6-4d70-a105-57ed6ed681e8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:06.797	2026-01-08 15:56:06.797
b2f34afc-b2ef-42d1-a7f1-989b583504b1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:08.862	2026-01-08 15:56:08.862
eb4d9841-93f9-4351-b0a8-c55bcaa37514	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:10.961	2026-01-08 15:56:10.961
d380bcb5-ab5a-4bd9-897f-2d98f0a1945d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:13.012	2026-01-08 15:56:13.012
a843b812-9a7e-4810-9e59-b487d817403e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:15.045	2026-01-08 15:56:15.045
8fa70754-8e3b-45de-8f2f-74d22d154b76	d8c5e32f-c64d-4437-b302-3a64d8f3f116	6	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:17.059	2026-01-08 15:56:17.059
c8c7b4de-830f-4a24-b3fd-a542f896e04c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	7	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:19.096	2026-01-08 15:56:19.096
dd002848-59f4-473c-8389-b2d48de2231f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	8	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:21.175	2026-01-08 15:56:21.175
7569c038-fbf0-4906-967f-1d90f2255cfe	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:23.27	2026-01-08 15:56:23.27
bf7eb584-b19a-4b42-baa0-6fcdee2e3f99	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10	2025	\N	0.00	4050.00	0.00	4050.00	-4050.00	2026-01-08 15:56:25.292	2026-01-08 15:56:25.292
a69b341e-ede9-4a47-badb-39476b4c5bd9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	11	2025	\N	0.00	666054.80	0.00	666054.80	-666054.80	2026-01-08 15:56:27.321	2026-01-08 15:56:27.321
93856105-fd23-4300-8b8c-e01b0b47098f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	12	2025	\N	0.00	843744.30	0.00	843744.30	-843744.30	2026-01-08 15:56:29.553	2026-01-08 15:56:29.553
93bdf410-32a9-497e-aa52-0fa7bbdfe92f	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	1	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:33.692	2026-01-08 15:56:33.692
f050fd0f-832d-4b5d-84b1-30f2655cc9e2	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	2	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:35.8	2026-01-08 15:56:35.8
d53fa2a7-8a6c-47bf-9bc0-b59e0a55789e	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	3	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:37.914	2026-01-08 15:56:37.914
4d53a5f9-86ac-4b3f-933b-f7046a5fda5e	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	4	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:39.992	2026-01-08 15:56:39.992
1bd389b2-754f-406a-ad57-3a2a55f2de47	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	5	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:42.23	2026-01-08 15:56:42.23
bb76d8d8-d94f-4bfe-b412-50145aea4b1e	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	6	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:44.293	2026-01-08 15:56:44.293
44c1bf3a-52bd-486f-ad13-ccf3c87ac4f2	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	7	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:46.302	2026-01-08 15:56:46.302
063ea0cb-bb93-4d49-9275-602487d56788	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:48.626	2026-01-08 15:56:48.626
59016ad0-0360-4c1a-8458-d2216a51169d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	9	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:50.651	2026-01-08 15:56:50.651
b785a5dd-f5db-4f3d-84d1-85d57836444a	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	10	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:53.165	2026-01-08 15:56:53.165
f623422e-5f35-4aa5-8ef5-54a9f594e792	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	11	2025	\N	0.00	137000.00	0.00	137000.00	-137000.00	2026-01-08 15:56:55.459	2026-01-08 15:56:55.459
d447268e-e2fe-40ee-8007-040c6fe4817b	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	12	2025	\N	0.00	50000.00	0.00	50000.00	-50000.00	2026-01-08 15:56:57.505	2026-01-08 15:56:57.505
622cd9b5-eec2-40a1-b6b5-8a056c2c5125	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	1	2026	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:56:59.551	2026-01-08 15:56:59.551
8e32123d-9526-40ab-b7e5-fe7c7447167a	b88abd1d-92fe-4818-ba01-95681f09b96d	1	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:01.596	2026-01-08 15:57:01.596
7ed4ea28-1ee9-4110-832d-7c680f63a447	b88abd1d-92fe-4818-ba01-95681f09b96d	2	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:03.69	2026-01-08 15:57:03.69
d56b677d-d4bb-4631-8df6-c98f186d2ecf	b88abd1d-92fe-4818-ba01-95681f09b96d	3	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:05.709	2026-01-08 15:57:05.709
4431adf3-3a06-4f5e-86eb-e87dac1cc68c	b88abd1d-92fe-4818-ba01-95681f09b96d	4	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:08.216	2026-01-08 15:57:08.216
3b041ecd-5562-4062-a368-31eb31567e5a	b88abd1d-92fe-4818-ba01-95681f09b96d	5	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:10.328	2026-01-08 15:57:10.328
6ba0d665-d55b-4c4d-9471-56ec291a370f	b88abd1d-92fe-4818-ba01-95681f09b96d	6	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:12.41	2026-01-08 15:57:12.41
30cd83d0-322c-461c-92de-74522295d07f	b88abd1d-92fe-4818-ba01-95681f09b96d	7	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:14.407	2026-01-08 15:57:14.407
038e7d7f-d860-4073-8f78-abdeddddb921	b88abd1d-92fe-4818-ba01-95681f09b96d	8	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:16.482	2026-01-08 15:57:16.482
976e67a9-4a7b-44f4-ae49-ee2543419961	b88abd1d-92fe-4818-ba01-95681f09b96d	9	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:18.638	2026-01-08 15:57:18.638
0de71fcf-1cb2-4fa4-a5f4-6ea290de6ebd	b88abd1d-92fe-4818-ba01-95681f09b96d	10	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:20.678	2026-01-08 15:57:20.678
74f00b5a-513d-45d8-9eaf-165d5c843fee	b88abd1d-92fe-4818-ba01-95681f09b96d	11	2025	\N	0.00	146000.00	53000.00	93000.00	-146000.00	2026-01-08 15:57:22.83	2026-01-08 15:57:22.83
1a2d4acf-4741-439b-8d3c-b354c02ccd05	b88abd1d-92fe-4818-ba01-95681f09b96d	12	2025	\N	0.00	50000.00	0.00	50000.00	-50000.00	2026-01-08 15:57:24.897	2026-01-08 15:57:24.897
80c3831f-718f-41dd-a4b8-797dc7526a5a	b88abd1d-92fe-4818-ba01-95681f09b96d	1	2026	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:26.965	2026-01-08 15:57:26.965
deeb482a-23f5-44a1-97af-252b8a326dba	346b32d1-b21f-4ce9-ac27-a69e67abb103	1	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:29.045	2026-01-08 15:57:29.045
c1a5c405-34d9-44e2-844b-a436c0e276dc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:31.122	2026-01-08 15:57:31.122
fe4e3190-a1d0-4b7f-ba44-08544b3766ea	346b32d1-b21f-4ce9-ac27-a69e67abb103	3	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:33.199	2026-01-08 15:57:33.199
74cd8357-c17f-4163-bd27-c605c851f6a5	346b32d1-b21f-4ce9-ac27-a69e67abb103	4	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:35.186	2026-01-08 15:57:35.186
7fc96361-b7c7-4d8a-a37f-d252cfe24d3b	346b32d1-b21f-4ce9-ac27-a69e67abb103	5	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:37.288	2026-01-08 15:57:37.288
5a66e552-d62b-4a39-b5b1-69ded76af6b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	6	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:39.364	2026-01-08 15:57:39.364
3c45433a-a29f-4558-81ff-da14214f6320	346b32d1-b21f-4ce9-ac27-a69e67abb103	7	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:41.347	2026-01-08 15:57:41.347
ac0dc297-9db3-4311-a901-c0255da15e83	346b32d1-b21f-4ce9-ac27-a69e67abb103	8	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:43.44	2026-01-08 15:57:43.44
5cd1428c-f110-44d5-863c-034e7e2ee0b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	9	2025	\N	0.00	0.00	0.00	0.00	0.00	2026-01-08 15:57:45.466	2026-01-08 15:57:45.466
169e6cce-8887-40a7-8ee3-ae07eaede34d	346b32d1-b21f-4ce9-ac27-a69e67abb103	10	2025	\N	0.00	9450.00	0.00	9450.00	-9450.00	2026-01-08 15:57:47.577	2026-01-08 15:57:47.577
d8b43721-4277-41f4-ac71-ddb039660cf7	346b32d1-b21f-4ce9-ac27-a69e67abb103	11	2025	\N	1389568.00	2422207.20	818818.00	1603389.20	-1032639.20	2026-01-08 15:57:49.616	2026-01-15 15:08:58.106
a3bcddbe-ebfb-49e6-99f2-87a35544b525	346b32d1-b21f-4ce9-ac27-a69e67abb103	12	2025	\N	3584676.00	3034614.70	1060117.00	1974497.70	550061.30	2026-01-08 15:57:51.602	2026-01-15 15:06:27.964
6e94c2cb-cc93-4147-88de-6871080719bd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	1	2026	\N	0.00	1400615.80	738993.30	661622.50	-1400615.80	2026-01-08 15:56:31.6	2026-01-16 15:14:33.982
08aa9029-eb7d-48eb-b0f0-18af4e1265dd	346b32d1-b21f-4ce9-ac27-a69e67abb103	1	2026	\N	3531495.00	1938141.50	700580.00	1237561.50	1593353.50	2026-01-08 15:57:53.732	2026-01-16 15:14:44.059
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "user_id", "type", "title", "message", "data", "is_read", "created_at") FROM stdin;
c8b1a078-4ad9-46fd-9179-9acf96db95fc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	GROUP_MEMBER_ADDED	Agregado a grupo	Jesus Leon Rangel te agregó al grupo "Familia"	{"addedBy": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "groupId": "8e9b4bd2-3f28-4f69-a616-a2d954c34960"}	t	2025-11-13 16:42:38.265
6d3375b2-b4a6-4813-9064-3c30921be279	346b32d1-b21f-4ce9-ac27-a69e67abb103	PAYMENT_RECEIVED	Pago recibido	Olga Manyoma te pagó $3000 del gasto "Prueba de mercado"	{"amount": 3000, "paidBy": "Olga Manyoma", "expenseId": "3be588c0-0ffb-460b-9872-67984deced53", "participantId": "40008ad8-a309-406c-8530-c3bd638254a7"}	t	2025-11-17 16:11:03.821
a0c534b5-d6ad-4ba8-af63-aa1c6947df34	346b32d1-b21f-4ce9-ac27-a69e67abb103	BALANCE_SETTLED	Balance saldado	Olga Manyoma saldó todos los balances contigo ($3000 en 0 gasto(s))	{"amount": 3000, "groupId": "8e9b4bd2-3f28-4f69-a616-a2d954c34960", "fromUserId": "d8c5e32f-c64d-4437-b302-3a64d8f3f116", "settledExpenses": 0}	t	2025-11-17 16:11:54.239
16adf412-71d1-4186-8449-878f859d26de	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10000 en Familia	{"amount": 10000, "groupId": "8e9b4bd2-3f28-4f69-a616-a2d954c34960", "expenseId": "3be588c0-0ffb-460b-9872-67984deced53", "description": "Prueba de mercado"}	t	2025-11-13 16:45:10.308
93fb6cd4-748d-4f2a-9a03-4b4bc85989d6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Jesus Leon Rangel ($3000 en 0 gasto(s))	{"amount": 3000, "groupId": "8e9b4bd2-3f28-4f69-a616-a2d954c34960", "toUserId": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "settledExpenses": 0}	t	2025-11-17 16:11:54.239
d1450e19-6a49-46df-8e67-086185419904	d8c5e32f-c64d-4437-b302-3a64d8f3f116	GROUP_MEMBER_ADDED	Agregado a grupo	Jesus Leon Rangel te agregó al grupo "Familia"	{"addedBy": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "groupId": "6677f2f3-48d7-462c-acb1-2aedc70469e3"}	t	2025-11-17 16:17:14.463
1d113e05-4beb-499b-bb51-385ee9e42f57	d8c5e32f-c64d-4437-b302-3a64d8f3f116	GROUP_MEMBER_ADDED	Agregado a grupo	Jesus Leon Rangel te agregó al grupo "Familia"	{"addedBy": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245"}	t	2025-11-17 16:41:39.39
fd4796fe-2605-4fab-a7db-9c5726ece65e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $829452 en Familia	{"amount": 829452, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ea9ef05d-3077-437f-a6c6-041ad9f51932", "description": "Cuota credito hipotecario"}	t	2025-11-18 16:43:24.956
3945867d-8b66-44de-88dc-11fcbfdf8450	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $30594 en Familia	{"amount": 30594, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "18480e40-9d7a-4b0e-9cd0-871afa6d8dbe", "description": "Agua de tomar de la casa"}	t	2026-01-08 18:45:48.69
3024e994-3e7b-4cb3-b8ac-093f4c81b215	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $35280 en Familia	{"amount": 35280, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "78b5a1f8-4297-42fe-bbd9-bb3ebd9df349", "description": "Omega 3 y Magnesio"}	f	2026-01-16 14:59:14.481
a6429a16-54b6-4b60-b7f0-c60ee5deff26	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Agua de diciembre" en Familia	{"amount": 14517, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d2c7a478-9176-471d-a97b-458729ecac84", "description": "Agua de diciembre"}	f	2026-01-13 18:04:50.277
cdf18b8d-2e13-4dce-8fc4-a550d348893b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $83270 en Familia	{"amount": 83270, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f5087f65-3f54-446c-af6d-7433920afdab", "description": "Luz de Diciembre"}	f	2026-01-16 15:08:02.878
e946bf62-c222-4d8a-8d47-6dd8b54d9a69	b88abd1d-92fe-4818-ba01-95681f09b96d	GROUP_MEMBER_ADDED	Agregado a grupo	Pedro Perez te agregó al grupo "Office"	{"addedBy": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736"}	t	2025-11-21 13:29:49.594
a2fa1b33-3cb1-41c2-b86a-785edbbcb35f	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $80000 en Office	{"amount": 80000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "a297b5c9-9c33-463f-a24d-f351a71def60", "description": "prueba de transaccion compartida"}	t	2025-11-21 13:30:47.516
bfe20d0b-192c-4a43-8ec6-52c651eeab19	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $9000 en Office	{"amount": 9000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "600c547c-18c8-412b-9ef4-30624474d8af", "description": "Prueba"}	t	2025-11-21 14:35:23.35
4da38361-a250-437e-8240-1ea27e32610c	b88abd1d-92fe-4818-ba01-95681f09b96d	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Pedro Perez ($32000 en 1 gasto(s))	{"amount": 32000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "toUserId": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "settledExpenses": 1}	t	2025-11-21 13:52:29.585
ba5307f5-2372-4d5b-b350-729916615a16	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $9700 en Office	{"amount": 9700, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "063d6429-7782-4cb9-8ce1-654c13dd8723", "description": "prueba"}	t	2025-11-21 14:51:48.318
b6a672f7-8413-4203-b973-11b69be65995	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	BALANCE_SETTLED	Balance saldado	Juan Perez saldó todos los balances contigo ($32000 en 1 gasto(s))	{"amount": 32000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "fromUserId": "b88abd1d-92fe-4818-ba01-95681f09b96d", "settledExpenses": 1}	t	2025-11-21 13:52:29.585
d78594f8-615f-4295-ae9a-70b782c88c5e	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $3600 del gasto "Prueba"	{"amount": 3600, "paidBy": "Juan Perez", "expenseId": "600c547c-18c8-412b-9ef4-30624474d8af", "participantId": "7bf8e7de-9fd0-42d2-8c96-d094ff6119de"}	t	2025-11-21 14:37:11.486
e9d5b756-bea0-4189-be8b-e71697a18804	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $3880 del gasto "prueba"	{"amount": 3880, "paidBy": "Juan Perez", "expenseId": "063d6429-7782-4cb9-8ce1-654c13dd8723", "participantId": "8968901d-be79-4668-b73e-7a3d0a61397b"}	t	2025-11-21 15:03:27.618
63ca976c-70a9-4477-8b5f-37be817a0971	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $3880 del gasto "prueba"	{"amount": 3880, "paidBy": "Juan Perez", "expenseId": "063d6429-7782-4cb9-8ce1-654c13dd8723", "participantId": "8968901d-be79-4668-b73e-7a3d0a61397b"}	t	2025-11-21 15:03:46.217
c021825b-9059-4e6e-90bc-f8b5554ceb8e	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $60000 en Office	{"amount": 60000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "4e207f76-1311-4fbb-a665-2dd8f7e9ce7e", "description": "Hola"}	t	2025-11-21 15:49:47.021
23b1239c-2728-4b35-98ee-330436ba87e7	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	BALANCE_SETTLED	Balance saldado	Juan Perez saldó todos los balances contigo ($95480 en 1 gasto(s))	{"amount": 95480, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "fromUserId": "b88abd1d-92fe-4818-ba01-95681f09b96d", "settledExpenses": 1}	t	2025-11-21 15:50:44.585
c486a966-c4d9-4e3e-950c-e8c95c421705	b88abd1d-92fe-4818-ba01-95681f09b96d	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Pedro Perez ($95480 en 1 gasto(s))	{"amount": 95480, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "toUserId": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "settledExpenses": 1}	t	2025-11-21 15:50:44.585
e388ab71-194c-4dc2-abf7-4e7d6a9c1787	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $4000 del gasto "Shared expense"	{"amount": 4000, "paidBy": "Juan Perez", "expenseId": "35ebcba5-126d-4134-85f8-09e5682da161", "participantId": "fc442ae0-3b84-402c-8d1e-24535bd3fbfe"}	t	2025-11-24 18:03:10.693
d6a417f8-fc82-48f3-b524-18ed3be25cc6	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $90000 en Office	{"amount": 90000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "18e55edb-3ff9-4d29-99ad-198615e31ac1", "description": "prueba 1"}	t	2025-11-24 17:53:30.21
5ccd4639-2ac4-483e-bb0e-83996f040f52	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $60000 en Office	{"amount": 60000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "adf6d7f5-f7e3-4656-b3a5-9fcaa2947a5c", "description": "Prueba 2"}	t	2025-11-24 17:58:39.935
badd29ee-0b03-485c-bc55-345839b9b07a	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $4000 del gasto "Shared expense"	{"amount": 4000, "paidBy": "Juan Perez", "expenseId": "35ebcba5-126d-4134-85f8-09e5682da161", "participantId": "fc442ae0-3b84-402c-8d1e-24535bd3fbfe"}	t	2025-11-24 20:15:29.014
fb7fc297-b457-45bd-b2a7-554ce4d37b3c	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	BALANCE_SETTLED	Balance saldado	Juan Perez saldó todos los balances contigo ($197480 en 2 gasto(s))	{"amount": 197480, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "fromUserId": "b88abd1d-92fe-4818-ba01-95681f09b96d", "settledExpenses": 2}	t	2025-11-24 20:16:44.292
8b8d7123-8079-4f63-b636-00e633f3303c	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $10000 en Office	{"amount": 10000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "35ebcba5-126d-4134-85f8-09e5682da161", "description": "Shared expense"}	t	2025-11-24 17:59:39.02
47e711b8-33bb-4363-92f7-b80a4ef3d991	b88abd1d-92fe-4818-ba01-95681f09b96d	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Pedro Perez ($197480 en 2 gasto(s))	{"amount": 197480, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "toUserId": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "settledExpenses": 2}	t	2025-11-24 20:16:44.292
e21f4d9a-bfdc-4a0c-b36c-b7a55c6d1d37	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $50000 en Office	{"amount": 50000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "0f03b66e-61a0-4ba4-8a16-5fa5d9009553", "description": "Prueba 1"}	f	2025-11-25 12:14:33.642
99567d49-0eaf-4dfb-8a53-eacadfe47928	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $9000 en Office	{"amount": 9000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "ab43089a-f8fe-46d2-835d-b4a217fc9ed0", "description": "Prueba 2"}	f	2025-11-25 12:15:27.57
0f3c1ab1-68ae-43d1-9c29-b6097d483f6e	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $80000 en Office	{"amount": 80000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "a6e000ad-610a-4086-8e9d-84d581b5be6e", "description": "Prueba 3"}	f	2025-11-25 12:16:14.659
d28c7762-e423-478c-8970-5ef39ee35db7	b88abd1d-92fe-4818-ba01-95681f09b96d	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Pedro Perez ($376960 en 2 gasto(s))	{"amount": 376960, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "toUserId": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "settledExpenses": 2}	f	2025-11-25 12:19:17.978
1ae174ed-2111-4c1e-8ec1-e885c75c0490	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $80000 en Office	{"amount": 80000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "d4f5264c-d3eb-47af-97b1-4fc2a8cbda68", "description": "Prueba 1"}	f	2025-11-25 12:57:53.179
98917cc0-bcbf-41c1-89ff-5d1231cafc92	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $10000 en Office	{"amount": 10000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "e4c29aa9-74ba-4386-b89a-fb0220e274da", "description": "Prueba 2"}	f	2025-11-25 12:58:27.362
5bf41abd-7c0b-4513-935b-e4bc6cc3002a	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Pedro Perez agregó un gasto de $40000 en Office	{"amount": 40000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "b91e5888-a0a1-46ca-beb5-98348337bd53", "description": "Prueba"}	f	2025-11-25 12:59:35.776
f3fbf193-3bc9-49f9-891d-1ac3a45fac4f	b88abd1d-92fe-4818-ba01-95681f09b96d	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Pedro Perez ($48000 en 2 gasto(s))	{"amount": 48000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "toUserId": "f06079b2-c6a7-421a-8c5c-287dbb21e3ca", "settledExpenses": 2}	f	2025-11-25 13:01:51.951
c604dfd1-f62f-482a-b656-5fbac6c46721	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $3600 del gasto "Prueba 2"	{"amount": 3600, "paidBy": "Juan Perez", "expenseId": "ab43089a-f8fe-46d2-835d-b4a217fc9ed0", "participantId": "cc4c389a-27d2-4679-88ef-8f335e50bc03"}	t	2025-11-25 12:17:34.345
b5ab8a51-1960-4436-9e3d-77978477fe93	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	BALANCE_SETTLED	Balance saldado	Juan Perez saldó todos los balances contigo ($376960 en 2 gasto(s))	{"amount": 376960, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "fromUserId": "b88abd1d-92fe-4818-ba01-95681f09b96d", "settledExpenses": 2}	t	2025-11-25 12:19:17.978
1c56059d-3b33-4adb-aa02-f4a243e5fe74	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	PAYMENT_RECEIVED	Pago recibido	Juan Perez te pagó $5000 del gasto "Prueba 2"	{"amount": 5000, "paidBy": "Juan Perez", "expenseId": "e4c29aa9-74ba-4386-b89a-fb0220e274da", "participantId": "551acc60-82c7-4519-bbef-bd95fba94bbe"}	t	2025-11-25 13:00:16.006
5b8171c3-ecd1-4e53-a843-50cf7f90488e	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	BALANCE_SETTLED	Balance saldado	Juan Perez saldó todos los balances contigo ($48000 en 2 gasto(s))	{"amount": 48000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "fromUserId": "b88abd1d-92fe-4818-ba01-95681f09b96d", "settledExpenses": 2}	t	2025-11-25 13:01:51.951
d6a481d9-1204-4cec-b150-b5aec2878dc7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Mercado del mes" en Familia	{"amount": 80494, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f8f38577-8a39-49d6-8a1a-1fd2b121385e", "description": "Mercado del mes"}	f	2026-01-13 18:07:32.83
b969209a-93ca-4669-8869-9078943d5113	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2600 en Familia	{"amount": 2600, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "03946a81-2e87-4343-82a1-7eb438cf52b8", "description": "Tag ruta del maipo"}	f	2026-01-16 15:14:27.551
0f858e54-c3ae-4ee6-be06-02de68b8bc66	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Fit9" en Familia	{"amount": 131239, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "04ad1e15-2148-45e5-b014-ddb5a6325995", "description": "Fit9"}	f	2026-01-13 19:36:48.855
487542e5-ace4-476c-9aca-4d9ef1272497	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Juan Perez agregó un gasto de $100000 en Office	{"amount": 100000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "69f3d9c7-06ca-48fd-866f-5ac583d83ea8", "description": "prueba"}	f	2025-11-27 20:12:31.505
3f30af4b-5d32-49f4-a10c-03f2c4349d5d	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $30494 en Familia	{"amount": 30494, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f766dd50-9d76-4c35-b1f0-31a1665ff17b", "description": "Agua de tomar"}	t	2025-11-27 19:36:38.16
bf64e606-2265-4683-8718-4f272847b8fe	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10190 en Familia	{"amount": 10190, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c5c40a95-7b3f-46a5-aa6b-baeae48bac97", "description": "Cascanueces de navidad"}	t	2025-11-27 19:44:47.455
112187e8-0bdc-471e-8bfe-e061f9b20b7a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Vaso de la Licuadora d" en Familia	{"amount": 11980, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "18ce2bd5-86f8-481a-953f-4a5a1e898aad", "description": "Vaso de la Licuadora d"}	t	2025-11-19 12:17:11.54
49b9cd04-08a1-4187-8cf3-e916e1601666	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Potes de vidrio" en Familia	{"amount": 20494, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ba47ca58-eb1c-408a-81e0-698db5373791", "description": "Potes de vidrio"}	t	2025-11-19 12:20:07.68
94bb54a0-14e7-4201-8e1c-cb73e964de15	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3890 en Familia	{"amount": 3890, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2cb86c12-69e2-47b5-93cd-bbcc44321ef3", "description": "Compras varias"}	t	2025-11-19 15:09:34.511
8e5fa3bb-d734-449b-8e6b-101b7b9a9ac7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4059 en Familia	{"amount": 4059, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b58a8947-4792-4cb7-b92b-fff4ddd5c7fc", "description": "Estacionamiento Isidora Goyenechea"}	t	2025-11-19 15:33:21.254
63871b58-f06f-49d4-9c20-1befbcbe491c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $17807 en Familia	{"amount": 17807, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1548acaf-10b4-4ed7-88a7-6dd07489a58a", "description": "Compras varias "}	t	2025-11-19 15:34:43.345
a4c95892-5e52-43c5-842c-cb46125221b9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Compras varias " en Familia	{"amount": 17807, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1548acaf-10b4-4ed7-88a7-6dd07489a58a", "description": "Compras varias "}	t	2025-11-19 15:35:46.334
2a58436d-6fd8-4bf1-bd21-6d4e6d1f0705	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12900 en Familia	{"amount": 12900, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "47754d59-4b36-422f-9aef-51a2a497ac3e", "description": "2 cajas de huevos super"}	t	2025-11-19 15:37:23.684
e02986d2-8f54-429d-9c78-8007cecee67a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8032 en Familia	{"amount": 8032, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7b160b4a-383a-4766-97be-309455f9dd17", "description": "Frutos secos"}	t	2025-11-19 15:38:41.705
c4860af8-2ea6-4f50-97e1-2c4a456e48f6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $30494 en Familia	{"amount": 30494, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bb15af1c-24bc-4955-bc1f-e1fb00606d5e", "description": "Agua de tomar"}	t	2025-11-19 16:57:28.394
5c08fcd2-74d5-4dbc-a83c-eec656fbb564	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $550 en Familia	{"amount": 550, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4a9d901f-0935-4abf-a385-fdf4d39b7eb5", "description": "Estacionamiento"}	t	2025-11-19 17:07:27.441
27cff49a-d87b-4472-a561-a9981012b62c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6280 en Familia	{"amount": 6280, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "5f0afa26-d88b-4fbc-9f6b-218fff7f4928", "description": "Compras Hamburguesas"}	t	2025-11-26 17:20:28.132
7d5ca2ab-faf9-48f6-91a6-d37d722ff4a1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2880 en Familia	{"amount": 2880, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d7dfb498-63ee-475c-bec0-3f56ee6e0a78", "description": "Pimenton y zanahorias"}	t	2025-11-26 17:21:28.948
475fc1d7-5cda-4543-8a38-892c7eeff604	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $5593 en Familia	{"amount": 5593, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "91b1b337-3960-4b9c-8a47-e4ea0e6989fd", "description": "Susciprcion Hbo Max"}	t	2025-11-19 17:08:38.535
d4fb3bcd-096d-494e-8340-975d8c2b6a3c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $14190 en Familia	{"amount": 14190, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d6077ded-12e0-4bcf-96b1-e1d43cbc65d1", "description": "Suscripción de mercadolirbe + disney"}	t	2025-11-19 17:09:30.227
38b20538-34b5-48e7-b5db-a1cfdeddf642	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $33596 en Familia	{"amount": 33596, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6dbe7912-f716-4f1c-8aa1-79dc5e0cf156", "description": "Compras moldes torta, ejercicios"}	t	2025-11-19 17:10:33.984
3bdacb00-9db3-4fae-81c9-f56e6cdc3372	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Huevos" en Familia	{"amount": 13500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5", "description": "Huevos"}	t	2025-11-19 17:29:23.046
44654dcc-085e-4884-84cc-47c15555a952	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $42970 en Familia	{"amount": 42970, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b72074b4-13a7-4040-9e57-ff0c0b8616f5", "description": "Regalo cumple Jose"}	t	2025-11-20 20:26:17.029
ff1bef90-d9c6-4e33-9d3b-27951387f7a8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $21211 en Familia	{"amount": 21211, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7fa4a7f7-a048-4e21-8fdd-47e190568efa", "description": "Decoracion navidad (pelotas de Mickey)"}	t	2025-11-20 20:27:27.734
899f2b3f-96e0-400d-9e0b-a46a6e40085d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2000 en Familia	{"amount": 2000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2623f91f-e469-42e8-82c5-2d695118d5e5", "description": "Estacionamiento mall"}	t	2025-11-20 20:28:58.335
247d709d-04a2-4f67-ab60-f778c55e897d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15500 en Familia	{"amount": 15500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7d5dc01b-a747-4119-a29a-46138e7d511a", "description": "Gasolina"}	t	2025-11-20 20:29:56.975
e080a9bf-4215-4f89-bb0f-6da27f4d66f7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $61213 en Familia	{"amount": 61213, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2d20baaf-0896-4bb0-a402-182517e677bb", "description": "Cosas que faltaban desodorante,  papel, jabon etc"}	t	2025-11-20 20:31:37.842
3bf0bc6c-aaf3-4be7-a766-5257d4615fa7	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $35770 en Familia	{"amount": 35770, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "572273cc-a7f4-42c2-8acc-80357317cc62", "description": "CoenzimaQ10"}	t	2025-11-20 20:45:50.692
e21d576d-af7c-4c9a-9872-2bc574f46b26	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Susciprcion Hbo Max" en Familia	{"amount": 5593, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "91b1b337-3960-4b9c-8a47-e4ea0e6989fd", "description": "Susciprcion Hbo Max"}	t	2025-11-21 12:37:31.674
348224ce-e886-4422-bff3-0ac82c3a516c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Netflix" en Familia	{"amount": 15880, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9", "description": "Netflix"}	t	2025-11-21 12:38:15.631
4e985425-23dd-4641-878c-7bbe6d67b4ff	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Spotify" en Familia	{"amount": 8250, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "5f1f4bf4-9173-47b0-b2cf-61e83dab816b", "description": "Spotify"}	t	2025-11-21 12:38:57.349
afefc4fb-6b58-4768-bf06-a4d1db3f1d05	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $193776 en Familia	{"amount": 193776, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "765e5daa-b241-482e-a7d6-d5a84bb0e8cf", "description": "Gastos Comunes Octubre"}	t	2025-11-25 18:28:31.059
9d339521-7627-4b07-b440-9c63ff70d1ad	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15000 en Familia	{"amount": 15000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "75181c74-3105-4be0-8321-b5b70231fe3a", "description": "Gasolina"}	t	2025-11-25 18:30:23.811
c8f14799-39ad-40f3-af30-c54881f9fd9e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2600 en Familia	{"amount": 2600, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "3dc18619-27fc-48a5-9d7a-9f4b757d80ce", "description": "Compras varias"}	t	2025-11-26 17:18:05.766
92cdbb03-d0d2-4a8f-a402-736a2a62a465	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $7500 en Familia	{"amount": 7500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ca6927eb-05a0-44fa-9f68-7df6019e30de", "description": "Tomate, cebolla y aguacates para la semana"}	t	2025-11-26 17:19:28.957
a4f93405-5e3f-40d5-8794-a5925d7b10a4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18046 en Familia	{"amount": 18046, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "437cbb46-b4e4-4fa8-9856-6c7a23a2c691", "description": "Huevos, Mostaza y Queso Mozarella"}	t	2025-11-26 17:23:05.122
5566b31e-4ef5-4b9c-8288-b983734e4169	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4990 en Familia	{"amount": 4990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2", "description": "Cosito para cortar panes"}	t	2025-11-27 19:29:38.889
da59dee2-abd1-4468-b099-46ef75e64782	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Cosito para cortar panes" en Familia	{"amount": 4990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2", "description": "Cosito para cortar panes"}	t	2025-11-27 19:31:02.781
22c09ca2-3a51-4f16-8625-96c5ea7a9f7e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $76000 en Familia	{"amount": 76000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ae157bab-ec8a-47c9-bc09-f6a8cc86d872", "description": "Proteina en polvo vainilla y cake"}	t	2025-11-28 12:56:33.135
f22be6da-1790-4d6f-94e1-e34c5b3206b9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6170 en Familia	{"amount": 6170, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f36bbf02-2953-4b09-b7e5-020314750413", "description": "Compras varias"}	f	2026-01-14 14:04:51.422
b753ea55-661d-41c2-9f31-9b186b345b57	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $11000 en Familia	{"amount": 11000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "050960db-eb58-4b40-9491-43e3bd07d6b8", "description": "Gasolina"}	t	2025-11-28 13:00:56.897
923a64a1-8acd-43ab-a3a5-2911fd2702d8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $49899 en Familia	{"amount": 49899, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bac1d01e-1ee3-4b69-a012-dfd0d9973aca", "description": "Gasolina 97"}	f	2026-01-14 14:07:44.383
ba7e5702-edcd-4885-95d9-8eb342435d33	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $50420 en Familia	{"amount": 50420, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c429f535-df49-4b44-97e6-4d080387561c", "description": "Vitamina D, Fersitol D, Acido Folico, Shampoo"}	f	2026-01-14 14:22:11.855
70e8a7aa-56f4-456a-abd2-bd3e20073acd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4000 en Familia	{"amount": 4000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bb75b0dd-ee38-4817-bbd1-60a57e0154c6", "description": "Bolsas dustin, chip OMA"}	f	2026-01-14 14:25:57.569
387ebc72-254f-4f4d-8f48-122a87f963b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	BALANCE_SETTLED	Balance saldado	Olga Manyoma saldó todos los balances contigo ($660802 en 60 gasto(s))	{"amount": 660802.4, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "fromUserId": "d8c5e32f-c64d-4437-b302-3a64d8f3f116", "settledExpenses": 60}	t	2025-12-01 13:50:00.37
8e466ea3-5b7b-4a77-91d1-087588635489	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $30526 en Familia	{"amount": 30526, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b3bb3b35-f059-47c1-9d46-6e0ea3a734ba", "description": "Agus fria de la casa"}	t	2025-12-02 17:18:57.233
70c24a0b-cba1-4697-bb66-b7cda02e5107	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6680 en Familia	{"amount": 6680, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "598ddf22-7578-42e2-a0c5-6e8e92ee5030", "description": "Compras varias"}	f	2026-01-14 14:06:09.511
f71aa416-ffcc-427a-8c1d-60505b8b909f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8400 en Familia	{"amount": 8400, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "eb437fc4-021d-433b-a88b-cac003fcb903", "description": "Almendras y pistacho"}	f	2026-01-14 14:27:19.519
5a96b111-9a2f-48dc-bd18-6af673b92cae	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3800 en Familia	{"amount": 3800, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6d151c88-da24-4d6e-98bb-9888c0b08899", "description": "Tag Vespucio Norte"}	f	2026-01-14 14:23:26.257
ac2ace0e-8d3e-45d0-b1d1-d85d42dbd224	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4800 en Familia	{"amount": 4800, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "67c6757a-3c05-48ea-bc0b-866fc49bafef", "description": "Compras en la vega"}	t	2025-12-09 14:17:47.482
a59f1135-817c-45d0-83cd-b1c11b4f0317	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8230 en Familia	{"amount": 8230, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "dba127f1-4545-4f50-88e6-e65f262e1f58", "description": "Compras en la vega"}	t	2025-12-09 14:19:30.973
564dd37f-580c-4f9b-b791-2b373f356a49	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6500 en Familia	{"amount": 6500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bdbc0fc3-1d0a-4773-8a20-d3330e456e7f", "description": "Tag Ruta 68"}	f	2026-01-14 14:24:39.122
fc85982b-25d4-42f9-bda2-ca1fccd83580	b88abd1d-92fe-4818-ba01-95681f09b96d	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Juan Perez agregó un gasto de $100000 en Office	{"amount": 100000, "groupId": "af91d65e-bed3-4edd-b6c5-cc8caf2c0736", "expenseId": "f793c041-cb25-40b4-87bb-97b5c403bbf0", "description": "prueba"}	f	2025-12-10 16:09:38.869
f35b61c1-69c9-4bf6-9588-dc5a976a8af4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15880 en Familia	{"amount": 15880, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "630d21bf-e344-4915-8570-9346a948fb17", "description": "Sucripcion de Netflix"}	f	2026-01-14 14:31:21.958
86271ce6-cc33-4896-94a1-a95bb7e3f73b	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $6765 en Familia	{"amount": 6765, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "e116c785-ae64-4fb8-8b63-8ba8bfb0dc02", "description": "Estacionamiento la birra bar"}	t	2025-12-22 14:24:34.039
c7d45a03-7045-4943-89fa-df134ee9507f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $13200 en Familia	{"amount": 13200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "fda5f519-5911-4872-9dfb-7ff6744c8c2b", "description": "2 bandejas de huevo"}	f	2026-01-15 15:39:37.622
d50e3df9-428d-464a-89d9-7b0650941806	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $52460 en Familia	{"amount": 52460, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1b8f76ff-6bed-4405-9b1f-b71c75ebb2c4", "description": "Gasolina"}	t	2026-01-05 14:21:51.503
182cd2ab-4527-4ad7-829c-aee6704062ac	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $15000 en Familia	{"amount": 15000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "71eaec40-b86e-42f6-9117-233b9e207663", "description": "Otros"}	t	2026-01-05 14:22:43.493
6efd49de-e007-4fec-9356-e53c51cce701	346b32d1-b21f-4ce9-ac27-a69e67abb103	BALANCE_SETTLED	Balance saldado	Olga Manyoma saldó todos los balances contigo ($738993 en 74 gasto(s))	{"amount": 738993.3, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "fromUserId": "d8c5e32f-c64d-4437-b302-3a64d8f3f116", "settledExpenses": 74}	t	2026-01-05 14:26:15.862
5355fe65-0135-425d-aaad-509394d27b07	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4550 en Familia	{"amount": 4550, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "132afb3f-2d58-49c6-8db4-35acf85ed773", "description": "Rapi turbo aceitunas para oma bakery"}	t	2025-11-30 01:54:47.088
ced2f63f-c5ee-4bae-8023-2493e77f5777	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15000 en Familia	{"amount": 15000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "dac8989b-541c-4875-a086-d347fb1168d0", "description": "Gasolina"}	t	2025-11-30 01:55:37.282
707dd537-84e1-48ff-abc7-403e2943ed51	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2940 en Familia	{"amount": 2940, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "5c595cc5-bb18-4234-8143-afe9185268f7", "description": "Patas de pollo para dustin"}	t	2025-12-01 12:44:06.469
a22ac1ed-66c5-4349-ab99-127453957c11	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $21232 en Familia	{"amount": 21232, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a92509e9-742c-4594-ad4c-3698ad42f3fb", "description": "Compras para la semana"}	t	2025-12-01 12:45:14.636
391c254a-6af0-47a4-add9-5f08954e2554	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $14000 en Familia	{"amount": 14000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2ec956fb-f2fd-4845-9a27-6e314d8d9335", "description": "Compras Navidad"}	t	2025-12-01 12:46:57.821
3cbae79c-295a-4eea-94fa-5e05d8a42c0f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $20500 en Familia	{"amount": 20500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "567b3b22-06c7-43f5-bfd7-439001a241fc", "description": "Compras Navidad"}	t	2025-12-01 12:48:11.095
2b24f6f1-8b2a-4166-9add-3df960b0ca46	d8c5e32f-c64d-4437-b302-3a64d8f3f116	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Jesus Leon Rangel ($660802 en 60 gasto(s))	{"amount": 660802.4, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "toUserId": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "settledExpenses": 60}	t	2025-12-01 13:50:00.37
e6767e52-eb28-449b-b9bb-7a8cafa5b0c6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $830069 en Familia	{"amount": 830069, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1410a808-8dfa-4536-ba2e-96ed415546b3", "description": "Cuota 71/360"}	t	2025-12-01 15:12:08.154
cc514b43-2f4f-40a6-8b83-157b8a26e620	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $7642 en Familia	{"amount": 7642, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d432f78f-4419-4e3e-a9b4-45b29139169a", "description": "Cascanueces pequeños"}	t	2025-12-01 15:13:10.941
a9deb4a0-fa99-4d0d-b0ee-558275a636d0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8250 en Familia	{"amount": 8250, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "95a36900-4535-4104-939b-3dea76745659", "description": "Spotify "}	t	2025-12-01 15:14:25.303
cf8efee5-dd3f-40b9-a1f6-9daeb120b1ed	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51537 en Familia	{"amount": 51537, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4d389beb-3ce1-4777-8347-fb8313ac388e", "description": "Seguro Cleopatra"}	t	2025-12-01 15:15:55.685
2b2d8313-dda3-4fef-a9e3-af9109890407	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $64740 en Familia	{"amount": 64740, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4f40afb8-d635-43dd-91a0-eadcacbdf008", "description": "1 cQ10, 1 mageniso, 1 omega 3"}	t	2025-12-02 14:02:24.337
ad4c066c-902f-41e3-9c72-24de2f688fbd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $36300 en Familia	{"amount": 36300, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d7b0a41b-c9ef-4360-a958-a86a250ad711", "description": "FersitolD, espironolocatona x2, acido folico, trioval"}	t	2025-12-02 16:27:10.551
683e3e58-a19d-41f4-b752-402f4cb5ac58	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12000 en Familia	{"amount": 12000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "aeeb577b-56f1-44ff-a38f-b03cc638b92e", "description": "10 cajas espironolactona"}	t	2025-12-04 17:13:22.556
1631d070-6519-4fb8-b7a1-13f0f2ed9d6d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18000 en Familia	{"amount": 18000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b", "description": "Caja de huevos"}	t	2025-12-04 17:16:54.275
686ae523-7010-4a4a-ad73-acf5c59067e8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10952 en Familia	{"amount": 10952, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bcf29d50-0335-412a-850f-6606c6239140", "description": "Camarones y Aguacate"}	t	2025-12-05 01:01:30.668
b797ccb0-082f-44ab-bfd4-bf863cf01b1e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9446 en Familia	{"amount": 9446, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "cb79af54-88d1-4d25-b3e2-04ab4d6469de", "description": "rollo de papel film 300 metros"}	t	2025-12-05 01:04:02.851
5b4392de-9fd2-4848-be9d-13c9430c0b4b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12229 en Familia	{"amount": 12229, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c4d60af0-5577-4aed-b163-37bc4bda34d5", "description": "Maquina al vacío"}	t	2025-12-05 01:07:40.167
9c81a648-dbd1-4e8c-a896-a2ee0a95e45e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $5000 en Familia	{"amount": 5000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f09eee37-2f7a-49a8-a13f-02011e30886e", "description": "Pimentones y achiote en la vega"}	t	2025-12-09 13:45:32.149
ff6d1492-2be8-46e9-a055-a75277bdeee0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18170 en Familia	{"amount": 18170, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "38440bab-1156-40ea-b36b-566428afc183", "description": "Tablas de picar, y otras cosas"}	t	2025-12-09 13:48:41.637
92c2934d-d9f2-4bbd-9699-09697bc10acd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2000 en Familia	{"amount": 2000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "e7efdd29-bb34-424d-a398-5eb7d08dc196", "description": "Estacionamiento plaza egaña"}	t	2025-12-09 13:49:51.244
56c9c6b2-ccda-4b0c-b0ee-12b4d65322c3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $29501 en Familia	{"amount": 29501, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "21599688-2919-4e83-bdfa-c17f15423a4e", "description": "Internet de la casa"}	t	2025-12-09 13:50:58.461
e8ca2b1a-0529-49be-810b-95dd6f912f61	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $27700 en Familia	{"amount": 27700, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "cdaee396-11b0-493b-adfd-0165b0e746b9", "description": "Compras navidad luces y adornos"}	t	2025-12-09 13:52:12.963
5dac93f8-eca4-4088-8f9d-c3879fc517c3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10980 en Familia	{"amount": 10980, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bc1cca85-958b-47e0-b8d6-ef0d9360f162", "description": "Trioval "}	t	2025-12-09 13:53:24.396
682f7990-aada-4a8d-8ea1-68e8819e147d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $13686 en Familia	{"amount": 13686, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d397c294-5528-462c-93c5-7a9f532c10bd", "description": "Agua de la casa"}	t	2025-12-09 13:54:24.256
5fcf23d4-fa77-4d19-b9f7-1120c42f9ee4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3204 en Familia	{"amount": 3204, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a62957f9-4cf6-47c1-90e8-26bc3177c199", "description": "Tag Vespucio Sur"}	t	2025-12-09 13:56:22.094
575ea997-e779-43a2-8095-62c67e715286	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3204 en Familia	{"amount": 3204, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a00572a0-c260-44a4-82db-7763e84f19f6", "description": "Tag Vespucio Sur"}	t	2025-12-09 13:56:42.732
548ca1d4-18ce-4d2f-8a98-fee6dc089dc3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3204 en Familia	{"amount": 3204, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "5522da68-5276-49cd-a9a6-a45620cf64c6", "description": "Tag Vespucio Sur"}	t	2025-12-09 13:57:02.744
39ef5e87-277e-42b1-9587-b87b197f3da5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $1200 en Familia	{"amount": 1200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c54bb4e0-ba81-4a25-8c03-e963ce63e68e", "description": "Compras en los chinos"}	t	2025-12-09 14:05:35.169
813d7d32-8d3a-465f-a0aa-2edd533015b4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4670 en Familia	{"amount": 4670, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2dd44eae-c796-4522-b14e-9dee4aa085a0", "description": "Compras varias en lider"}	t	2025-12-09 14:07:06.219
fa689b07-6d65-4212-ba96-6779ff3541e4	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $17653 en Familia	{"amount": 17653, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "91b446c8-d142-4708-96c2-7f2881a1baba", "description": "Compras en la vega"}	t	2025-12-09 14:08:30.555
9ddd4f89-cfe1-467a-8c38-8cfaa8f64282	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18600 en Familia	{"amount": 18600, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "983a2e37-6703-4b0d-bf76-665b39177157", "description": "Compras en la vega"}	t	2025-12-09 14:09:29.865
863cca48-b2f6-4224-a514-c192597690ba	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $5000 en Familia	{"amount": 5000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "62421dc7-a070-4ed6-b48e-a20d5c68d13c", "description": "Compras en la vega"}	t	2025-12-09 14:10:27.512
166f8e48-b763-459c-a609-cb0732ef84c9	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10700 en Familia	{"amount": 10700, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b3d56223-0bc4-4e22-9bc0-ebe3a5e4e62a", "description": "Compras en la vega (plásticos)"}	t	2025-12-09 14:11:49.169
510b93cc-2fdd-48e6-a414-db46eafa6573	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3200 en Familia	{"amount": 3200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b1aaab99-34e0-4093-92f2-3a3e0371cf7e", "description": "Estacionamiento en la vega"}	t	2025-12-09 14:12:47.581
95f1f505-f5b9-48eb-8a94-81210a9655af	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $34710 en Familia	{"amount": 34710, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c3bbc20d-5db5-4d1e-95e4-e0ba4d4db016", "description": "Carnes para las hallacas"}	t	2025-12-09 14:14:26.472
5d62ff7c-f020-4192-9b52-c5f21e6b9521	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6200 en Familia	{"amount": 6200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c1b7b1ba-f35a-4f7b-99f9-bb7986383485", "description": "Compras en la vega"}	t	2025-12-09 14:15:12.079
ee019c43-6bf9-4d55-a74f-a8a0ede3bc0a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2000 en Familia	{"amount": 2000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "dd946b44-29fc-419a-b9a2-775ffe6504eb", "description": "Compras en la vega"}	t	2025-12-09 14:16:05.228
65caa076-b918-431a-86fd-544509126039	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6500 en Familia	{"amount": 6500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6b88b35b-bbfb-49c0-a052-dec38d0bff5c", "description": "Compras en la vega"}	t	2025-12-09 14:16:55.648
8396474d-8304-4444-9351-76a526918eac	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $5000 en Familia	{"amount": 5000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6bef0e91-a061-4ed4-92a5-a5d2277d4c1a", "description": "Compras en la vega"}	t	2025-12-09 14:18:39.773
0b81947a-3c75-4fa7-8309-a8e1022c0ef6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $17200 en Familia	{"amount": 17200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "237759f6-da8c-412d-aa33-0822bd937dd6", "description": "Compra la vega, camarones, atun y especies"}	t	2025-12-09 14:20:28.901
53cc486b-5330-4756-b74c-86bb521b30b8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6870 en Familia	{"amount": 6870, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "96e7c874-8c93-4dcd-a011-078d4addde80", "description": "Compras varias"}	t	2025-12-09 14:22:36.938
91ce7e67-28d8-44e2-b3e0-42b150ac2ed1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51990 en Familia	{"amount": 51990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "15658593-c707-4e38-a84b-a222b5509899", "description": "Comida Dustin"}	t	2025-12-12 17:13:48.911
430e67f3-14d8-4882-8f72-ff85b4f33203	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $21000 en Familia	{"amount": 21000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "9b452557-46f2-4054-85c8-93a08371fbcf", "description": "Baño a cleopatra"}	t	2025-12-12 17:16:04.338
f26862dc-6e4b-435b-bf49-86fe90b82bdc	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $11600 en Familia	{"amount": 11600, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "95abca17-88fd-491d-993b-3cd08c6c5904", "description": "Chucherias"}	t	2025-12-15 16:44:10.12
577d7150-f52c-4719-9852-4dd84a80a5ca	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15880 en Familia	{"amount": 15880, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a7401b4b-f38d-475c-9260-94437dedb8a4", "description": "Suscripción de Netflix"}	t	2025-12-15 16:45:37.968
49876368-4c78-417d-82a3-22353f3dfc54	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8239 en Familia	{"amount": 8239, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "760743c0-bdc5-4424-b0bc-7f7a2cf1d353", "description": "1 kg pechuga deshuesada"}	t	2025-12-15 16:51:22.105
beded2c2-c095-4762-8972-5a0512eacdce	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4190 en Familia	{"amount": 4190, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a3eba116-8c33-4228-b0be-7053a24cb357", "description": "Compras varias en el lider"}	t	2025-12-15 16:55:53.31
b6cf648a-edff-45bd-a933-55e88a7cd1b1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $306586 en Familia	{"amount": 306586, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "572fcb3c-5c15-4c21-8e97-72eaae8ef7af", "description": "Cuota cleopatra 12/36"}	t	2025-12-16 13:58:32.344
b4117826-df5a-4ff4-bf77-11ca0f3b9eff	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51646 en Familia	{"amount": 51646, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "18e1b6bd-cb07-4b00-b614-c401b3b80a15", "description": "Luz de la casa"}	t	2025-12-16 14:00:45.14
0b50fff2-6a1c-41c3-924b-8b8c58127d3b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $5940 en Familia	{"amount": 5940, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6808c0e9-ff25-4888-a5ff-0f9a5ee90420", "description": "Tortillitas y servilletas"}	t	2025-12-16 14:21:51.8
9a4925d9-1978-4354-83f4-b0d0d5d90f1f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6713 en Familia	{"amount": 6713, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f96ae693-623d-4831-aadd-13b0625179b6", "description": "Suscripción Hbo Max"}	t	2025-12-18 21:03:16.015
0f1149ff-8718-41ff-b8ce-7f6353f1b877	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12990 en Familia	{"amount": 12990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "887152ce-ed9e-44e1-8336-c1f4e8e900e4", "description": "Suscripción mercadolibre + disney"}	t	2025-12-18 21:04:23.369
22d2dc84-28e1-4a84-b6c8-e6d9a958cd3e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Tortillitas y servilletas" en Familia	{"amount": 5940, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "6808c0e9-ff25-4888-a5ff-0f9a5ee90420", "description": "Tortillitas y servilletas"}	t	2025-12-18 21:08:33.156
6c394935-17fb-42bf-a818-7578fe9f20ff	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15020 en Familia	{"amount": 15020, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "42496f51-a385-4fcf-8276-445616899437", "description": "Compras perros caliente"}	t	2025-12-18 21:11:25.369
5fb13735-a797-4244-b0cb-e17946249c35	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $137645 en Familia	{"amount": 137645, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "97e6402f-2c9c-4a2f-9abe-1525d7c3acff", "description": "Impuestos casa 4/4"}	t	2025-12-18 21:19:20.221
a287541e-8767-4884-ab58-adc439216aad	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $850 en Familia	{"amount": 850, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "3afd939d-8724-4633-8101-016b8cd1b7d7", "description": "Estacionamiento mall"}	t	2025-12-22 13:53:29.326
1cea2798-dad9-417e-97f0-a2b598ba2218	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15000 en Familia	{"amount": 15000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d6621bad-11d5-43c2-9cd6-6e04c71b9c42", "description": "Gasolina"}	t	2025-12-22 13:54:36.981
0b788af4-6045-4bd2-8aeb-b4b7025a3c5d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6900 en Familia	{"amount": 6900, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "17210896-4caa-491a-a91b-39c6c3ee1f6a", "description": "Estacionamiento mall dia de cine"}	t	2025-12-22 13:56:13.013
91563913-8f40-4c4e-9828-2c3723ea178a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4361 en Familia	{"amount": 4361, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4eb62da7-111f-4444-b433-f9ad8a808fcd", "description": "Compras varias"}	t	2025-12-22 14:05:27.63
fe08a1d9-8135-4815-8352-00f9dc0309b8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18000 en Familia	{"amount": 18000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4", "description": "Compras varias"}	t	2025-12-22 14:06:44.704
3f81d548-cc65-4cc5-b089-972d92e8d1d1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3580 en Familia	{"amount": 3580, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1218977d-425a-4a22-b667-d5256d4e14bd", "description": "Compras varias"}	t	2025-12-22 14:08:32.491
8c1ce675-9465-4e5f-b3e8-74ed175f1643	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Caja de Huevos" en Familia	{"amount": 18000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ccf3bd01-6da9-4fc2-aea3-ac81f1c6b3c4", "description": "Caja de Huevos"}	t	2025-12-22 14:26:51.104
f1946cca-19fa-4ac8-81a7-69fc8081227c	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $7990 en Familia	{"amount": 7990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ab2845ae-a6e8-460d-9184-1361ea8785da", "description": "Guantes negros"}	t	2025-12-23 14:42:36.892
265d9517-bf48-4785-96c4-e6ee8b166d42	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $170201 en Familia	{"amount": 170201, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "daeb613d-1f36-4d0e-80e5-cda08166368a", "description": "Gastos comunes noviembre"}	t	2025-12-23 14:45:39.668
70e065e7-8f1c-43d5-ac93-eb1fdec5687e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $116730 en Familia	{"amount": 116730, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2f154765-d2c9-487c-aae6-db34f06b24fc", "description": "Carnes del mes"}	t	2025-12-26 12:36:02.358
2b937382-d81e-411c-b5b2-5bf79c34ea7e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15200 en Familia	{"amount": 15200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "0e9c2965-24f0-4a2d-bb14-3a673bfdb467", "description": "Compras bebidas para el 24"}	t	2025-12-26 12:37:54.387
402480db-8f05-435d-a8b7-d1d66dcdfa03	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4 en Familia	{"amount": 3.99, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7f36af3a-cb00-4e88-8eb5-9447822cbb52", "description": "Compras varias"}	t	2025-12-26 15:16:13.44
3d61f139-d712-40a2-9587-e0f36daca049	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Compras varias" en Familia	{"amount": 3990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7f36af3a-cb00-4e88-8eb5-9447822cbb52", "description": "Compras varias"}	t	2025-12-26 15:16:47.696
00e17f6c-3c45-4ab0-a954-f5eedca974f6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $11750 en Familia	{"amount": 11750, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7341968e-73f7-4e8e-b941-46bab963382c", "description": "Compras varias"}	t	2025-12-26 15:18:00.35
c4864e61-3484-49b5-a7b4-69a39b9ed979	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $42114 en Familia	{"amount": 42114, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "094254a7-4ffa-4841-a67b-017995c7d83d", "description": "Gasolina"}	t	2025-12-26 15:19:02.862
b50836d1-060c-44d0-b1e4-39fc5ee5dc4d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9570 en Familia	{"amount": 9570, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4e5bd49e-a5bc-475b-9162-cddf306dd0c8", "description": "Compras torta 3 leches"}	t	2025-12-26 15:21:37.624
1a493106-5f76-4600-b272-d69e3a50f84d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Gasto compartido actualizado	Jesus Leon Rangel actualizó el gasto "Compras varias" en Familia	{"amount": 5170, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "7341968e-73f7-4e8e-b941-46bab963382c", "description": "Compras varias"}	t	2025-12-28 14:48:19.445
9662b48b-5439-4520-9bf8-4e65b7eb78da	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $20200 en Familia	{"amount": 20200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "cc2ab76e-71f8-4a9f-b0f3-31c2d821657b", "description": "Frutas y aguacates"}	t	2025-12-28 14:49:42.411
44a77320-af15-41dd-af4a-982d819a8739	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3390 en Familia	{"amount": 3390, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2aecf103-6eac-4e2a-8298-e16d440bfeaf", "description": "Lavaplatos"}	t	2025-12-28 14:52:42.506
cd65749b-863f-4cb8-82d5-38dee0d6eb2d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $6300 en Familia	{"amount": 6300, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "259fd720-2313-4011-875f-af7a4e40ed5b", "description": "Uvas"}	t	2025-12-28 14:53:40.803
f643b64b-fdbb-475d-8f01-59b457a97224	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $3000 en Familia	{"amount": 3000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f60a6348-e545-49c2-b324-ef1957eee4cb", "description": "Ajuste de cuenta"}	t	2025-12-28 14:55:54.874
e8eeef3f-1cb2-4ce6-a62a-47a235c262aa	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9490 en Familia	{"amount": 9490, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "ba0bf43b-dc38-4162-93ba-b272d2931d33", "description": "Paz-pet para dustin"}	t	2025-12-28 20:27:08.958
0045fc5d-0132-4189-96bb-40a5d83bb6d3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $57138 en Familia	{"amount": 57138, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1fbf6b84-af85-4646-a667-bbe1797d65f3", "description": "Compras 31 diciembre"}	t	2026-01-04 21:41:00.622
43c7ca05-e82a-4d00-9e4d-61a6b4ad4f13	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $57138 en Familia	{"amount": 57138, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d9d3c5d1-a764-4927-ab6d-6148c6ebf738", "description": "Compras 31 diciembre"}	t	2026-01-04 21:42:02.24
595a66c0-e49b-4fa6-b52a-a221928f9a60	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $217000 en Familia	{"amount": 217000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d12fd1f8-d7a5-4156-9030-7babd6cd9e78", "description": "Cabaña algarrobo"}	t	2026-01-04 21:54:09.56
463479ae-ea97-4949-8296-9fcaa7ff6157	d8c5e32f-c64d-4437-b302-3a64d8f3f116	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Jesus Leon Rangel ($738993 en 74 gasto(s))	{"amount": 738993.3, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "toUserId": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "settledExpenses": 74}	t	2026-01-05 14:26:15.862
7a760fa0-56ba-4521-ac8e-7ffd743ae021	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $131239 en Familia	{"amount": 131239, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "04ad1e15-2148-45e5-b014-ddb5a6325995", "description": "Fit9"}	t	2026-01-05 14:38:00.777
3dd386f8-bec9-40bf-a2c9-6ee1e8c2287f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $832210 en Familia	{"amount": 832210, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "61679660-f958-4fef-947a-14f3296364cd", "description": "Cuota 72/360"}	t	2026-01-05 16:28:30.665
80743b9c-204c-4632-ac03-771ad617403e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $30547 en Familia	{"amount": 30547, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "429a9dd9-ea4a-44ce-a482-b494fdd094c5", "description": "Gasolina"}	t	2026-01-05 16:29:31.568
ad89c6c7-db6d-484d-a0d4-4dcf7685b4e1	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8250 en Familia	{"amount": 8250, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "702f3d38-5446-46df-b064-c2e82c5ff31d", "description": "Spotify suscripcion"}	t	2026-01-05 16:30:50.601
1e6324fe-1903-4c7d-b221-09c016551a38	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9100 en Familia	{"amount": 9100, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "58fdd50a-6879-4462-90dd-38f0a2835fab", "description": "Compras varias "}	t	2026-01-05 16:33:02.826
1f8caf4a-b5c6-448d-a16c-1036813b16ef	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8610 en Familia	{"amount": 8610, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "eca34b32-69b2-4054-9001-8d7788fb7b8c", "description": "Compras varias"}	t	2026-01-05 16:37:32.271
bc402122-97fa-4a43-bbc6-25e76cb810f8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $1164 en Familia	{"amount": 1164, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "86a63177-7e97-4d76-97ea-ac5520971468", "description": "Tag Diciembre Autopista Vespucio Oriente"}	t	2026-01-05 17:08:53.861
99c697a4-0509-4dbe-b183-4e500c63c058	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9135 en Familia	{"amount": 9135, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "65462a64-b75c-4670-9f56-2b7b003f1be4", "description": "Tag Diciembre Costanera Norte"}	t	2026-01-05 17:10:01.681
1e909a5a-5b2a-4d8b-bc91-5412f3b1c408	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $14517 en Familia	{"amount": 14517, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d2c7a478-9176-471d-a97b-458729ecac84", "description": "Agua de diciembre"}	t	2026-01-06 17:49:43.622
8841dd43-4aad-45ad-b777-8a57a0f26db3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4292 en Familia	{"amount": 4292, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "9092d427-60c4-4bea-a3c8-887726a02d75", "description": "Tag Diciembre Vespucio Sur"}	t	2026-01-06 17:50:46.533
a4a27c24-bf58-4e3f-a4d7-41345448fe48	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $29501 en Familia	{"amount": 29501, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4d9e05ff-0954-49ac-a035-0ac71ff93fc4", "description": "Internet de la casa"}	t	2026-01-06 17:52:30.322
4b728782-30ad-47fc-b607-7c055b92eec8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51656 en Familia	{"amount": 51656, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "80fe41b3-ee23-4fce-ae86-cbd0ea2acd31", "description": "Seguro cleopatra"}	t	2026-01-06 17:53:38.626
982e7b46-98cf-490d-8472-68197f8fa84b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $13200 en Familia	{"amount": 13200, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "81d4a09c-255a-4df4-994a-62dec7497655", "description": "2 bandejas de huevos"}	t	2026-01-07 14:15:45.175
098583f7-d676-427d-9fc6-e8eb0141a6ae	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $80494 en Familia	{"amount": 80494, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "f8f38577-8a39-49d6-8a1a-1fd2b121385e", "description": "Mercado del mes"}	t	2026-01-07 14:17:25.562
9141e2ae-f112-4930-973d-3a4a98d779ed	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51990 en Familia	{"amount": 51990, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "265ca5a7-4c32-4125-9e13-eefe38598b62", "description": "Perrarina pollo 12 kg"}	f	2026-01-15 16:06:07.882
24b5f72c-7190-44ef-85d1-5511825e682d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $306586 en Familia	{"amount": 306586, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a4547bad-ecfb-4934-a0e6-aaeed2dd99c1", "description": "Cuota Cleopatra "}	f	2026-01-15 16:10:12.796
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payments" ("id", "group_id", "from_user_id", "to_user_id", "amount", "date", "created_at") FROM stdin;
dfe0ff66-53c5-49d2-9874-2a609328fdcb	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	32000.00	2025-11-21 13:52:26.716	2025-11-21 13:52:26.716
c7f29754-90ff-4b3b-8d2a-41b6e1b65f72	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	95480.00	2025-11-21 15:50:42.263	2025-11-21 15:50:42.263
365588b8-5425-4e04-8e87-7811121747ca	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	197480.00	2025-11-24 20:16:41.217	2025-11-24 20:16:41.217
276e5df8-0937-4385-9a43-85a79cd139f9	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	376960.00	2025-11-25 12:19:15.176	2025-11-25 12:19:15.176
60016b21-c968-4d1e-abc4-a94015357edc	af91d65e-bed3-4edd-b6c5-cc8caf2c0736	b88abd1d-92fe-4818-ba01-95681f09b96d	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	48000.00	2025-11-25 13:01:48.474	2025-11-25 13:01:48.474
2628e16e-23c9-4ab7-aed7-e7c002b2e54c	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	346b32d1-b21f-4ce9-ac27-a69e67abb103	660802.40	2025-12-01 13:49:57.55	2025-12-01 13:49:57.55
67129c27-db8a-4bd9-b56f-17bd82ed91a0	529a7b84-0680-4735-8fcd-e76fdb185245	d8c5e32f-c64d-4437-b302-3a64d8f3f116	346b32d1-b21f-4ce9-ac27-a69e67abb103	738993.30	2026-01-05 14:26:13.043	2026-01-05 14:26:13.043
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tags" ("id", "user_id", "name", "color", "created_at") FROM stdin;
0cabe142-9529-4162-97e4-357bd255999f	346b32d1-b21f-4ce9-ac27-a69e67abb103	prueba	#FF6B6B	2025-11-14 14:27:05.94
5578aef5-9ec7-4e3c-9513-5daebcca2920	346b32d1-b21f-4ce9-ac27-a69e67abb103	test	#4ECDC4	2025-11-14 14:27:15.035
d35b8e04-b6c4-4546-8823-3ea2a6605575	346b32d1-b21f-4ce9-ac27-a69e67abb103	grocery	\N	2025-11-18 00:00:44.304
043367ad-a7f8-4840-9bf1-2a36709ed522	346b32d1-b21f-4ce9-ac27-a69e67abb103	work	\N	2025-11-18 00:00:48.535
4f1b4eb9-1ea8-410c-96c5-67f90f273b76	346b32d1-b21f-4ce9-ac27-a69e67abb103	fuel	\N	2025-11-18 00:00:53.148
b8b7fc6e-e225-47c7-86df-54354c4a3e23	346b32d1-b21f-4ce9-ac27-a69e67abb103	car	\N	2025-11-18 00:00:54.593
d71748b8-3d52-4fd4-85c8-773a1f4e90cb	346b32d1-b21f-4ce9-ac27-a69e67abb103	restaurant	\N	2025-11-18 00:01:00.253
3685aa15-10da-4fdc-9922-54057186ebc4	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa	\N	2025-11-18 16:42:58.566
b7a3267e-4103-4d99-aaa6-cc4a863392e8	346b32d1-b21f-4ce9-ac27-a69e67abb103	credito_hipotecario	\N	2025-11-18 16:43:05.791
94109937-d8e2-4697-a7aa-57cc965f625d	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal	\N	2025-11-18 16:52:53.394
311121a8-540b-4ff1-bb60-ed3be3d1ce17	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_otros	\N	2025-11-18 16:52:57.76
c5ce4c8e-ffeb-4838-b307-8ebc0d883db8	346b32d1-b21f-4ce9-ac27-a69e67abb103	otros	\N	2025-11-18 16:53:18.214
679e1bf5-ab82-473d-aab4-bee383773cf9	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_suscripcion	\N	2025-11-18 16:53:22.804
2a10dfa4-fd61-49c3-98e1-81975560b222	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_otros	\N	2025-11-18 16:53:27.175
ef0469eb-0281-4787-9bd4-3297f1fdc4f1	346b32d1-b21f-4ce9-ac27-a69e67abb103	pastillas	\N	2025-11-18 17:19:49.651
d65b6183-17ca-43df-b7ec-5eee7c53ac82	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_seguro	\N	2025-11-18 17:20:00.21
350ada05-9b98-4ae0-a9d5-e51be1599c96	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_sucripciones	\N	2025-11-18 17:20:10.783
44b07ceb-7cd3-4e21-b787-2e088f329cca	346b32d1-b21f-4ce9-ac27-a69e67abb103	mascotas_otros	\N	2025-11-18 17:20:55.702
f3abc33a-ed51-489e-8385-54a95399c899	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_servicios	\N	2025-11-18 17:21:06.328
8fa8a244-3180-4247-a46e-da39bc2b663a	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_gasolina	\N	2025-11-18 17:21:15.983
a54475d7-c7fd-489e-9c93-cc6fa6ca29eb	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_credito	\N	2025-11-18 17:21:37.682
4687b1c3-fc46-4104-a4ba-167e28374d4c	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_suscripciones	\N	2025-11-18 17:21:58.545
051cdf66-73a4-4625-93f3-f311b608fd7f	346b32d1-b21f-4ce9-ac27-a69e67abb103	mercado_carnes	\N	2025-11-18 17:22:09.536
8a7a4a27-61a9-4eff-a87a-0c2a8699e92e	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_huevos	\N	2025-11-18 19:37:06.279
e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_feria	\N	2025-11-18 19:37:20.956
d2e3b60e-b406-48b3-aa3d-2a09156765f4	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_supermercado	\N	2025-11-18 19:37:33
4440c0c5-1c75-44c9-8a6f-797e054bbe26	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_frutossecos	\N	2025-11-18 19:49:03.949
98a80c21-7511-45e4-9298-078e2f964f71	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_estacionamiento	\N	2025-11-19 15:13:21.414
70d7967a-6690-4ee7-b6df-9f38dae86d13	346b32d1-b21f-4ce9-ac27-a69e67abb103	sueldo	\N	2025-11-19 16:51:51.823
8c89fda0-e257-4a04-be77-2db68903ebe4	346b32d1-b21f-4ce9-ac27-a69e67abb103	inversion_crypto	\N	2025-11-19 16:54:42.844
f96a2dd1-30b9-4c62-ad54-0e9109654e6a	346b32d1-b21f-4ce9-ac27-a69e67abb103	inversiones_stock	\N	2025-11-19 16:55:31.246
6090553d-5ad4-4ad4-ba63-d88992ae9354	346b32d1-b21f-4ce9-ac27-a69e67abb103	comision_banco	\N	2025-11-19 16:59:04.487
4f701527-c603-421e-8953-4fe9e881fdc4	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_salud	\N	2025-11-19 17:06:13.026
adf8108e-85d5-45a0-a549-6a079ba02156	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_regalos	\N	2025-11-20 20:26:02.933
a0db0537-b558-4931-a81c-a5336bff0b8a	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_restaurante	\N	2025-11-25 18:23:08.595
d20fc59b-b3e7-404b-a4c7-70506f80a56b	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_comisiones	\N	2025-11-25 18:24:39.629
11a915a4-f55c-4493-b946-48e8c3d5915b	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_gastoscomunes	\N	2025-11-25 18:28:19.657
e38d70e9-deff-4eec-8d0e-c8fb0e61c04a	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_uber	\N	2025-11-28 12:53:18.656
2b3f0d7d-6ffe-4a3b-bd8d-c01e7718e6ab	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_proteina	\N	2025-11-28 12:56:12.898
f800c628-19ef-4a37-8109-dc2fa17127c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_delivery	\N	2025-11-30 01:49:10.54
ffbb78ce-0bb5-4fd1-b8c1-5b8158d42cb3	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_transporte_publico	\N	2025-12-01 13:45:49.128
ba8d6ae0-fef5-43a2-82b2-f45ca9cb7136	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_deuda	\N	2025-12-01 13:53:40.46
4dd1529e-6980-4e7f-94e3-4dfcdaee8d92	346b32d1-b21f-4ce9-ac27-a69e67abb103	oma	\N	2025-12-01 14:31:27.328
0c6f2d96-be7d-4734-afb4-89e15b301f8b	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_inversiones	\N	2025-12-01 15:45:36.51
43d3671f-e0d1-48fe-9eb4-61468276f3bd	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_supermercado	\N	2025-12-03 15:23:11.681
538cd9d2-ee1c-4aaa-b263-65f30da39d61	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_tag	\N	2025-12-09 13:55:35.242
c225574e-ce9a-4e23-96f9-860fd6c86051	346b32d1-b21f-4ce9-ac27-a69e67abb103	carro_mantenimiento	\N	2025-12-12 17:15:31.303
feb6faa1-d461-461f-aad8-09e25b85d7d9	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_regalo	\N	2025-12-18 20:57:58.112
818b4de9-9df0-4432-80ed-965b83d81784	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_rembolso	\N	2025-12-18 21:06:31.963
e97c2c78-5ca3-4c85-b6fb-d38fb1a8d7fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	bono	\N	2025-12-18 21:13:09.173
d11cfbe2-5334-4f5e-92fa-6efb4d9b4917	346b32d1-b21f-4ce9-ac27-a69e67abb103	casa_impuestos	\N	2025-12-18 21:18:55.667
046eb365-b050-4185-a770-527a96dbc672	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_cine	\N	2025-12-22 13:51:37.23
e93da6dc-002e-4693-b552-a32fc335bdee	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_impuestos	\N	2025-12-26 12:34:42.248
80ffc62d-967d-4d99-9fa7-4b2d5eca30b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	viajes_hospedaje	\N	2026-01-04 21:53:48.591
f02a293c-dd56-420f-bf42-5c8a99d1995a	346b32d1-b21f-4ce9-ac27-a69e67abb103	personal_medico	\N	2026-01-14 14:11:16.098
\.


--
-- Data for Name: transaction_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transaction_tags" ("id", "transaction_id", "tag_id") FROM stdin;
077bd14b-9994-4fe0-b14e-a6702a879cff	c46b2db9-4eea-40bb-a674-aedd6f9f14c5	679e1bf5-ab82-473d-aab4-bee383773cf9
cbf47f3f-0c8e-44b9-95cd-708991c1e7f4	4e2f33d4-41cf-47f9-8a3f-9e207f01f547	a54475d7-c7fd-489e-9c93-cc6fa6ca29eb
1b534180-0a02-4d3c-aecb-0db2ae9d7d9e	26130d97-ed8a-4430-b72e-3061d90cc6e3	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
d7103152-a94f-4431-ac50-0c36b7d3aba9	3f6b6723-4eeb-42bb-9f4a-5f124ef2e779	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
472962a3-7978-4ba9-9748-c2d0f75eb2bf	6317cdaa-abe8-4e22-bac7-f881ba9f9bb2	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
b0902631-30df-497a-aaac-7dbfbacc2800	0a1252a1-c5a5-4ede-9747-f14968e88b2a	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
c302a9c0-7be4-4072-910b-441b86cce5b0	63774e8b-c45c-4d10-8888-0a11f28a5a90	4440c0c5-1c75-44c9-8a6f-797e054bbe26
5da19cf3-937c-4dcc-9cc6-87b5d1e78600	e30ebf2c-e85a-48eb-9eaa-ec07ef1218c5	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
ae6ba16c-b033-4f74-9bf3-6736f9eaa92d	a0505675-d73f-42e8-ac40-39faf8fb6c9c	d65b6183-17ca-43df-b7ec-5eee7c53ac82
83eb55ca-467b-4a25-8d88-306bacd5fe71	836e071c-caa9-4c7a-81b1-b9f2429f9247	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
ace96d07-ae40-469b-a119-b91134c87d28	d45f4ca4-1bde-4562-81f2-f02a9af9c3aa	6090553d-5ad4-4ad4-ba63-d88992ae9354
f9bbc5c6-3047-4651-855f-4cc5efdbda62	44344cf1-72cd-4be2-a7b4-707ff68ef943	350ada05-9b98-4ae0-a9d5-e51be1599c96
c5761761-a557-4933-8bb7-c9c3f009e359	111a8138-19fe-4a94-bb88-788a29fdac48	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
02f6b3e1-f70e-402a-9216-3978a3121e6d	cd5f249f-e6fc-4988-bda6-c0015edc011f	679e1bf5-ab82-473d-aab4-bee383773cf9
506b5685-6d8c-41ce-9657-3bcd1d8c4d0e	db4c1cec-f65b-4a22-a1f5-797e872cff80	11a915a4-f55c-4493-b946-48e8c3d5915b
7e704b9b-4fa7-4ad8-a448-df760b23edf4	e105d4ab-f723-4da5-a45b-6896e214b06b	679e1bf5-ab82-473d-aab4-bee383773cf9
bd2f896d-ed4c-467b-8db4-20b959e8293c	177726e6-d51e-49c4-a509-ea7187f659f0	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
d92161a6-3ead-45dc-bebf-5aa6bf0621c5	811ba69e-ed27-432c-8aeb-517806b1850a	311121a8-540b-4ff1-bb60-ed3be3d1ce17
6966b196-2729-4f79-a9c4-2a464a27e708	5c326385-413e-4c07-8a9c-1b2c09b5b3a3	2a10dfa4-fd61-49c3-98e1-81975560b222
9d650d00-c0e4-4e5b-a58c-e0ad8a4b41ac	32946ca3-60e7-4862-a171-076495bd94ad	8fa8a244-3180-4247-a46e-da39bc2b663a
3097dff4-255d-4d80-8e6a-30f19365b445	a3609f32-d19d-4a62-bc40-5a0030275260	a0db0537-b558-4931-a81c-a5336bff0b8a
f49fe510-28dd-467c-a071-99afdb1d29b1	d7f0a0eb-5547-4736-8a1f-6aa1bd19f540	311121a8-540b-4ff1-bb60-ed3be3d1ce17
132632a8-493e-4dfc-bc7f-e837eaeca264	7c33282f-6c3c-4bfe-8588-c904f3c69d74	350ada05-9b98-4ae0-a9d5-e51be1599c96
4e2eb53a-9b9e-4fa1-917a-6e6d69c68702	d175e7cd-ffc1-4e66-832c-f986102e8874	4f701527-c603-421e-8953-4fe9e881fdc4
267efe4c-cf9b-46ef-a55b-68c8f789b658	94f7c690-9487-4595-be90-ad9a8f9a469d	d2e3b60e-b406-48b3-aa3d-2a09156765f4
27bac40f-b407-4706-8d56-a46ab594979a	2f2b6b64-f9a4-4756-948f-cdcec40a1d20	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
7f3ecd3d-8ad7-41a6-bafb-c7a05f434b65	57c24a0e-f96c-4e8c-9df6-383b95504bb6	43d3671f-e0d1-48fe-9eb4-61468276f3bd
6f50b138-ebec-483c-94e1-ef428551b5ec	11133022-38eb-4885-8255-56e14ce48765	2a10dfa4-fd61-49c3-98e1-81975560b222
3ed508a6-46e4-4b52-980a-7040a1313a3a	1581c5e2-6812-4e6a-b635-f0ebd13911c5	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
c66b96c2-0bcd-4f5a-8557-73abe36b5ea8	e50481c6-96fb-4b62-bfed-3bfd4dcc48e7	98a80c21-7511-45e4-9298-078e2f964f71
adf0deb4-abe6-44fe-85dc-9bd9bf384943	c3e61856-a391-4ab1-a069-5219f4ef1df4	679e1bf5-ab82-473d-aab4-bee383773cf9
63703866-05f0-42d1-90ce-59c0238a0d8d	3cc9552e-7bb4-4eb9-b4c8-9d887cb28ae7	679e1bf5-ab82-473d-aab4-bee383773cf9
d3189b2d-730a-41bf-8f3d-c4db1be92f7a	8a120647-3b95-4866-9b95-1ce8d682aa06	679e1bf5-ab82-473d-aab4-bee383773cf9
706c1a8f-544d-4238-a7af-3f61a93b7dac	9b298745-cc5a-4888-8b93-f34a5edbad3a	350ada05-9b98-4ae0-a9d5-e51be1599c96
896d1d84-73c8-4d84-94b9-dd9f2d8559e7	96fa2331-d328-4aae-8117-8f9cec003ebb	d65b6183-17ca-43df-b7ec-5eee7c53ac82
5ea74afe-d885-4175-a312-dd911128124b	f8a00cdf-4aa7-4bfc-a18a-eab88f61c8f3	679e1bf5-ab82-473d-aab4-bee383773cf9
cf35ead2-8fc4-4ff8-ab72-d06f9e563cc6	71bbe3c3-976c-4bf2-8c59-be5bd5351dd0	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
6fcd1b1c-b4f4-4b92-81ee-68f3234bee32	8118bab1-0ab3-4ed2-8d18-a31a837f7ea9	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
caa40db9-9e1e-47c8-8423-92b5147c1a19	29414eb2-b5e1-432d-9024-94e26851155d	2b3f0d7d-6ffe-4a3b-bd8d-c01e7718e6ab
686939d0-659b-4d2b-a956-e7b6217b82b9	504cd540-7e55-4d27-a378-05e7e767e4c0	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
61a98903-903c-4b47-a15f-3fd2e739a867	dbfd7f45-a12e-4ff3-83dd-def16525d4c2	d20fc59b-b3e7-404b-a4c7-70506f80a56b
93c28da1-7b5b-4c29-a0c3-5863224b36d0	bcc54d0c-6958-49b6-a1f9-df8a6ae8261f	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
d2a9cd16-13a7-4345-bf62-f9c89a8a6311	d0cbd012-ca26-4237-a8ab-4e7826aa0a1d	311121a8-540b-4ff1-bb60-ed3be3d1ce17
6e91f8ff-e865-4d7e-9949-1408f6237fd1	67a47361-5fa5-4bc3-b2f2-f59733d995fc	b7a3267e-4103-4d99-aaa6-cc4a863392e8
18a784fc-2545-4481-be17-f9b1669638f1	72b3308d-3811-4457-95ae-bd8e99fda281	311121a8-540b-4ff1-bb60-ed3be3d1ce17
9fda030b-b619-444c-90ba-36c0e7d73506	37fceed4-e757-48c1-b267-ceb3547e6ca5	538cd9d2-ee1c-4aaa-b263-65f30da39d61
b9839376-7e18-4fa4-8304-a889c0d3be8e	e55cfc0b-8e70-4400-a68f-a3d023bfd57c	98a80c21-7511-45e4-9298-078e2f964f71
f2b6f658-762b-4bf8-b98d-c3a65b104126	867cffc9-7aa3-45a7-91e3-cda4be604e9d	679e1bf5-ab82-473d-aab4-bee383773cf9
b87cbfd8-90d1-42a9-878a-21018f4e3e61	d4851312-215a-43f8-9145-2e924aec0953	2a10dfa4-fd61-49c3-98e1-81975560b222
c6ea36a2-3af5-4d78-819a-2df3edfd19fb	7ba04918-3f1e-4d60-b845-3d7ede1667d5	98a80c21-7511-45e4-9298-078e2f964f71
b623796d-6f7b-466f-a013-33998f1bf7fa	c8a33fdb-3259-48ad-91de-92bd34d9449e	4440c0c5-1c75-44c9-8a6f-797e054bbe26
86a2b657-4d8b-46b8-9cd0-db12c86ea492	75cbca77-3b74-4a6d-999a-f5bbfcf643f2	d2e3b60e-b406-48b3-aa3d-2a09156765f4
b704fb45-6e32-446e-8fda-087ed8be124e	ca4644e1-8176-4644-94e5-6865d9daedb7	98a80c21-7511-45e4-9298-078e2f964f71
e8118627-3190-418a-9af9-de3c6c64e202	9e6d877d-2108-4efb-a79c-ff24aa55315c	d2e3b60e-b406-48b3-aa3d-2a09156765f4
d3e1d0a6-c2d9-4e02-8fca-e9390ea661d1	fc2b4492-d292-4052-a730-2b1078c0e64a	98a80c21-7511-45e4-9298-078e2f964f71
35741ad0-4eee-481c-bd64-d7728aaff1ec	71b9d2ab-985e-4b2a-babd-f4de05853ab0	4687b1c3-fc46-4104-a4ba-167e28374d4c
1ec77ee2-71d6-43cd-aaa4-8533aa37ef5b	201db698-37b2-4f6d-9aa1-9f5b1e4db038	2a10dfa4-fd61-49c3-98e1-81975560b222
71a32576-41a8-4c74-865b-bbf07c2f392d	b6ae158a-5ba0-4a1e-b0e0-f8c43da26d16	a0db0537-b558-4931-a81c-a5336bff0b8a
a10927cd-53ad-470e-84f8-063047c4868a	dc5b9b5a-2197-4ec6-83b3-f12e42778ebd	311121a8-540b-4ff1-bb60-ed3be3d1ce17
828f3bb4-d454-4556-a84f-9d83930d2f36	66282541-2d2d-47c6-a81e-9aa2db94d25b	d20fc59b-b3e7-404b-a4c7-70506f80a56b
d9132582-0391-4792-b727-36cd09c4318f	35a2656d-d3ed-41d9-83cf-fba955dd36fe	d2e3b60e-b406-48b3-aa3d-2a09156765f4
a35da299-3774-4047-b359-6541ad2df38b	5917db38-79d5-463e-9d9c-93a646b37c8c	051cdf66-73a4-4625-93f3-f311b608fd7f
1a9391ec-840a-4aed-a2e9-0ee240292880	78d7f3df-bbf3-48f0-a703-2cc1be1b806d	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
82addbbf-3427-49a9-b5bd-c59c4683d504	d5573eb2-5777-4b8b-b579-9254a445b3f0	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
e1fde54c-317d-4d28-b283-dff09a6d5a3a	66a5e2cc-7130-4472-807e-ee849550eff7	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
b00d9699-8e5d-4f8f-aab7-5f61fe5d30aa	65c5083b-93be-471b-9130-05ad934db23a	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
10e06556-f8ef-467e-8e23-00b064961917	d282d0d7-003f-4ee8-8762-9ac035ce5763	f3abc33a-ed51-489e-8385-54a95399c899
a6912f7a-7000-401e-b63a-60cd123f0967	9bcd9c10-9cf8-4951-a493-85c96828fba4	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
4e109b16-3e08-4426-bc6c-ef215a725d83	9157f3bd-20db-4a4e-a4d4-648960d7bd6a	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
0407b657-132d-4f06-a5dd-e94dcfe8754d	921da936-ce05-46b2-b81c-7abcd67c8888	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
3949ad50-e414-4116-b6c5-f4c8047b1d0f	dd476667-6fc9-4432-a2f2-daab3ed59786	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
c0244f45-1b46-4dc2-b0da-771f75914a04	d9b29894-d840-456e-9b67-6365caac4464	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
e713193e-3d36-48eb-a420-275ea20251c5	feb87db3-59ef-4cf3-b822-0600486efe07	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
47fc1089-acdc-47dc-b4c3-c110de233416	ba0fdd87-2bb1-475b-b995-1a34284924f7	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
4ae5c939-7b70-4ad2-bb4b-a6a1acf70695	2d6029f5-962d-4a5f-9463-57d7207a283b	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
a24cb746-630a-4c5d-a82c-3bd67eb2f522	93b272ea-6627-4fd2-9da8-4ca954865109	d2e3b60e-b406-48b3-aa3d-2a09156765f4
86404bc7-83a2-4121-9761-ae6ca2155e28	bbc78d48-fd36-4722-ba4a-07e82ed35a07	679e1bf5-ab82-473d-aab4-bee383773cf9
bc100e8a-a7fd-4e92-b2a5-f9c15f3389f2	2e762402-3928-4aaa-b718-1a0493c7f516	8fa8a244-3180-4247-a46e-da39bc2b663a
7f144a31-1aba-43ac-86ff-e7b5cb77ee8b	52ed71e2-f25a-42e3-af23-ef665a33752f	f3abc33a-ed51-489e-8385-54a95399c899
98221576-29e4-4891-b613-19a6d01de29c	960949d3-f1bb-44b1-8f75-4ef7d1f911d8	f800c628-19ef-4a37-8109-dc2fa17127c5
d94fce46-4dfd-4c80-9683-33d4ee3785c0	2f600313-8b1f-47b9-aa92-4b89518bd192	f800c628-19ef-4a37-8109-dc2fa17127c5
d7ad44c3-ec7d-48da-8078-049f89c7d8e4	a87a20eb-e72e-4e2b-9937-14f32beebb8e	538cd9d2-ee1c-4aaa-b263-65f30da39d61
de3a031d-70b6-4efe-89f5-c92150dbfee9	e6d93e44-11a8-4ec7-a238-b3bbbba05c43	311121a8-540b-4ff1-bb60-ed3be3d1ce17
25e8b9c1-7b88-4c9a-a5aa-8e0df9202069	d5d95bc9-6969-4853-9454-89118c2d59e9	4687b1c3-fc46-4104-a4ba-167e28374d4c
44815390-9fab-4062-8c1f-f1af505733c5	fe9204a9-c0ce-4fe7-a7ae-a90d84e15d26	051cdf66-73a4-4625-93f3-f311b608fd7f
d4a83322-8e35-451c-9cd5-5313647f7231	cd03c32f-1653-4a70-afd3-95518d0a3205	43d3671f-e0d1-48fe-9eb4-61468276f3bd
0c1d38ec-29aa-4c81-9e8e-717b54d4219a	a84e2c5a-8ecd-4df5-8b62-280ada843921	a54475d7-c7fd-489e-9c93-cc6fa6ca29eb
9c7ecc3b-138e-4690-bc8d-97a1512dd59f	abf952a1-3ca3-4b47-b4f5-b1d9d1df7cdd	2a10dfa4-fd61-49c3-98e1-81975560b222
3b5f169e-4d18-4c7d-bba9-01cbddc22cbb	860eaf70-b19c-48bf-b985-48894956d57c	311121a8-540b-4ff1-bb60-ed3be3d1ce17
2f7a4aa1-e028-42bc-a5b3-6a05f7700403	96136e2a-5499-45b7-a525-6dfd955872cf	311121a8-540b-4ff1-bb60-ed3be3d1ce17
20840a8d-7011-4d3a-980b-c759c6b295b2	ce0aedab-9524-4044-a267-05f3a32655e0	818b4de9-9df0-4432-80ed-965b83d81784
e39cefaa-b708-4388-b204-8bc8e03a87d2	f7ca2965-2788-47d1-8742-c0ff944d9541	d20fc59b-b3e7-404b-a4c7-70506f80a56b
459c6670-ca70-4719-996c-d85767045b2f	3f92fa02-d742-4bd2-9c3e-09f8cc3b9e25	70d7967a-6690-4ee7-b6df-9f38dae86d13
7ad57b89-57e4-4a13-bce3-199b08bd5853	376f3a25-b122-4bc0-8464-5acdc5eb761b	4687b1c3-fc46-4104-a4ba-167e28374d4c
7557b137-aa92-4a35-87c0-f484704d1d59	7a809427-6f4a-432d-b30d-92f479dce4c4	4687b1c3-fc46-4104-a4ba-167e28374d4c
c6a8341f-4db8-44a8-a144-5bbd0e883d2e	d84af0e6-04d2-4337-a7c0-9f10c5c6a5d5	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
e077b19b-84a2-403e-bc96-0a8e4db2b6c7	ccdb4aee-ef06-41cb-a153-2ebf803d0479	679e1bf5-ab82-473d-aab4-bee383773cf9
e866a82b-a20f-453f-9d12-67dcc9815987	f7bd5740-0cc0-4882-bfbb-90c182f1b250	11a915a4-f55c-4493-b946-48e8c3d5915b
2dc48826-c480-44d7-8402-5f1bbc5cb5ce	a2a51a09-603a-479a-bf26-695d44ea7171	d2e3b60e-b406-48b3-aa3d-2a09156765f4
f57c3bb9-1603-49a7-9767-970309b5bed4	74d11c84-29bb-4d03-9021-af8a2650e00a	d2e3b60e-b406-48b3-aa3d-2a09156765f4
606205f4-0269-4685-ade5-c76f3d5993b2	83b85547-d445-43ac-946b-99e677cc2aea	f3abc33a-ed51-489e-8385-54a95399c899
2af63bce-848d-4997-8361-cac5e039a03e	25d64a0c-821d-43f8-9dda-0ee611b88750	d2e3b60e-b406-48b3-aa3d-2a09156765f4
5cbb368c-53e0-4f5b-9912-1642f54dcb20	2afcbdae-128b-423b-90b5-eac3c983332f	051cdf66-73a4-4625-93f3-f311b608fd7f
d10bfd3e-bf0d-4eaf-bca6-eb5959f3711b	677572be-0b9d-43ae-b688-b6fa2eb278da	679e1bf5-ab82-473d-aab4-bee383773cf9
34a730ac-53d4-4ef9-85a9-ff8bdbd1d420	b4c9bea8-9233-40cc-ad18-56ab85a42fe0	98a80c21-7511-45e4-9298-078e2f964f71
44d17cee-cd38-47e8-97fc-566af64429d3	78853929-e56b-487e-a9c2-e230dd1cbd36	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
d60f9c0d-c068-4009-8b68-93673d126f84	67d62304-46dc-471b-b664-b3fcd912ca53	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
a507e927-752d-4c0c-8b6c-a3a63a091a0c	7830902c-e299-42aa-a7cd-338cdef047a2	94109937-d8e2-4697-a7aa-57cc965f625d
f4adce43-5118-44b7-9186-299943107dda	e36229fe-2250-4b54-96f1-fa9dc72b8bad	b7a3267e-4103-4d99-aaa6-cc4a863392e8
b12871f6-02f9-41d8-b7d3-d18c52747fee	e36229fe-2250-4b54-96f1-fa9dc72b8bad	3685aa15-10da-4fdc-9922-54057186ebc4
970575c7-9449-421e-bfa6-f46f78072f8b	14eeb316-84d5-4fe7-9b93-a43aa01d6032	0c6f2d96-be7d-4734-afb4-89e15b301f8b
007c0211-5d89-41f0-a3de-97bd94042e0b	14eeb316-84d5-4fe7-9b93-a43aa01d6032	8c89fda0-e257-4a04-be77-2db68903ebe4
3352cde0-0a3a-4c70-9fc0-b8066701cc7a	d4a3ac69-7acb-44ba-88b0-f7eb78d58b3a	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
14f8d21d-9ec8-4623-a04b-1eb3b2211a67	76fce8ab-8cda-484b-b8f9-5baa11b14596	44b07ceb-7cd3-4e21-b787-2e088f329cca
b0f0cce3-b9c7-42f4-a124-56c1c5c0cf1d	729c3058-ba20-4d55-b231-74934d53ccfe	a54475d7-c7fd-489e-9c93-cc6fa6ca29eb
ac57cb40-1854-4943-af31-0433a8d12487	f4aabec3-faed-44a7-96a6-f1f543b2d698	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
15d0f540-1112-4840-946a-81e608bcd492	6016cfe5-82f3-48c8-8add-7529c4e7480d	d20fc59b-b3e7-404b-a4c7-70506f80a56b
76a7891a-9fe5-4a55-be41-a60e8ee9ddeb	25cd89aa-956d-40bd-a484-202b57a9d56a	679e1bf5-ab82-473d-aab4-bee383773cf9
a9458ebd-90e5-4e52-bfd6-c8f1eab060d7	ac45eeec-39d6-47a1-9150-6a91606b8069	679e1bf5-ab82-473d-aab4-bee383773cf9
0ad5a4c1-55ba-49a1-abfe-e5de880b0e6c	b0d0692e-ea37-4b93-bc3d-dc50d711b62a	679e1bf5-ab82-473d-aab4-bee383773cf9
edfc2ae0-18f6-4356-9e92-128b165fa494	aff3c58f-420b-436d-8e69-b404da83eb7f	4687b1c3-fc46-4104-a4ba-167e28374d4c
9e1371f5-d1e5-489f-a757-5f4a71f02ee3	f8818ae3-ad6c-4879-9b1b-04adcfe240ea	538cd9d2-ee1c-4aaa-b263-65f30da39d61
e77632d3-8818-4ec0-9bdc-c2f4c2f6a2ba	96553f12-0be8-47a4-9559-1d63de689dc7	538cd9d2-ee1c-4aaa-b263-65f30da39d61
bda08f9d-0ad9-425d-b8b7-f34a716ffdd7	1baf0775-d406-4d9a-8eb6-2f23b35bf94b	0c6f2d96-be7d-4734-afb4-89e15b301f8b
c1ccaa43-2658-41ac-a18b-5d130dd7438f	1baf0775-d406-4d9a-8eb6-2f23b35bf94b	f96a2dd1-30b9-4c62-ad54-0e9109654e6a
55b79e7a-d1ae-471e-b8c5-20ca0e93e4f2	59a65769-c7cd-405b-bf65-4cf65c15242e	0c6f2d96-be7d-4734-afb4-89e15b301f8b
1d844515-c538-47a7-bf59-e8070943af87	59a65769-c7cd-405b-bf65-4cf65c15242e	f96a2dd1-30b9-4c62-ad54-0e9109654e6a
f66c4b70-803f-40a4-b27c-551c8b63ca60	1dc642cc-74a2-4c84-b542-3aacb0f77416	0c6f2d96-be7d-4734-afb4-89e15b301f8b
e1330a76-1cd8-467d-b739-6c4c5dd978a0	1dc642cc-74a2-4c84-b542-3aacb0f77416	8c89fda0-e257-4a04-be77-2db68903ebe4
d1fd73af-d06f-4062-b8ed-38ed6e242993	150757a4-0c30-4554-8472-7dca92b8f977	538cd9d2-ee1c-4aaa-b263-65f30da39d61
aeeed8cb-6651-49fa-8100-b7a00c8de39a	34b96ccf-a141-4772-9dfb-6a6e25cde907	d65b6183-17ca-43df-b7ec-5eee7c53ac82
77219773-acdd-47b4-8100-6dff03550bfc	7627c778-a3ae-4a5d-a3d2-558a473420ad	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
91296cd5-44d0-43a1-841d-cc1b51344833	baf00ed1-1773-4c2b-a20a-36764c6519ba	679e1bf5-ab82-473d-aab4-bee383773cf9
77d44d09-0f50-4298-9eb3-6423cf4b0f31	d14ce83f-be73-4f44-b7cb-d28b1ca7d6d7	f800c628-19ef-4a37-8109-dc2fa17127c5
a935c9e2-a7ad-4c91-af54-8599c222e924	c41db859-b376-4a73-b9ee-f202019fe092	98a80c21-7511-45e4-9298-078e2f964f71
30a813f7-98e8-4196-9507-2b39fe35cc3b	b1594094-e96a-4b95-b501-fdfca27dcb0d	4f701527-c603-421e-8953-4fe9e881fdc4
77f85498-795a-4c17-ab5e-3292bd6ab2e3	d58c5bec-4088-440e-b4bb-a1d849173d2b	f3abc33a-ed51-489e-8385-54a95399c899
8f79dc22-deb1-47ae-984b-23c2a09f4857	286e92bc-fd37-4ce9-9092-e5f4675b650a	e93da6dc-002e-4693-b552-a32fc335bdee
99129bc9-4f4c-40e0-ab36-95974f96fb20	02c70b65-deb5-45cf-9b8d-4bdb2869fca0	2a10dfa4-fd61-49c3-98e1-81975560b222
29acd54c-c185-4c63-8bd1-1ed7e602c598	c2c0cbe9-76ee-4a2e-a472-bf6e78ce0f6d	f3abc33a-ed51-489e-8385-54a95399c899
69547b06-b36b-433d-afea-ba62a6e7cc23	65c1cb57-8516-4c40-8acd-09fb22c5c241	679e1bf5-ab82-473d-aab4-bee383773cf9
10b2b582-92e1-47f1-8e3d-9896c87bc18d	6c51f32d-8cdf-4db3-ab56-d923efa61681	d2e3b60e-b406-48b3-aa3d-2a09156765f4
69055254-05ce-4bfb-9bd4-de4c8bf59a1b	3b3df23d-1fd6-4b07-b1b7-85744afac100	44b07ceb-7cd3-4e21-b787-2e088f329cca
6a58c170-b7e3-4931-9508-feb0862cb6af	09dc4a64-0ed8-4f71-8752-eee6990ad1c2	d2e3b60e-b406-48b3-aa3d-2a09156765f4
ece51c85-d914-43f2-a49a-dddb6e340f13	3dc90afb-1134-4680-acff-6f708fa9c502	98a80c21-7511-45e4-9298-078e2f964f71
82114518-9f38-4cce-9777-31cfa89bc34c	39351fb9-44bb-45d4-b022-26c2676eafac	e93da6dc-002e-4693-b552-a32fc335bdee
cf4c9c23-910c-4e6a-8d6c-aabfcf0edcfb	6125d279-3b0d-41ad-9cfa-41973e2478d0	d2e3b60e-b406-48b3-aa3d-2a09156765f4
2ff10133-e51b-4987-b4a7-b84e83df3d20	31378f97-ae19-44ac-9e68-4ef8f59125b4	4f701527-c603-421e-8953-4fe9e881fdc4
8c4cd2a1-600a-4edb-8f26-266c255675a2	13cc266d-1f91-4751-96a1-942300d6a32d	4f701527-c603-421e-8953-4fe9e881fdc4
6c1efffd-f459-4937-a5e0-a7526006b30c	861929ca-dcb1-4af5-9cc1-096252b39ddd	2a10dfa4-fd61-49c3-98e1-81975560b222
3af00e02-da9e-4a95-9f57-ac03523382e4	1d76e9b0-826b-418b-9ad8-2ee7dddb172b	311121a8-540b-4ff1-bb60-ed3be3d1ce17
8721ee39-f3b2-4f4c-a9c5-9e33a93c5a01	24749171-7941-44d7-9186-dde17463fe43	f800c628-19ef-4a37-8109-dc2fa17127c5
e281aced-5ebd-4a85-8add-a5f62b575c0d	4162d8b5-a8d8-4218-81d5-c019b5192960	d2e3b60e-b406-48b3-aa3d-2a09156765f4
2ac302d6-3a31-49e6-af02-3fb439067f1b	dea17036-52e8-4f75-ac85-4900792c021d	b7a3267e-4103-4d99-aaa6-cc4a863392e8
a2c7cd95-925b-441f-9a7e-f2718d5a75e1	c4cfa58e-f854-4a11-bd41-45ee3ea4aba7	311121a8-540b-4ff1-bb60-ed3be3d1ce17
25e20d60-efc4-4456-9ea3-63c5b6d93099	370dfe7d-d1fc-4e4f-ac91-c8374394dc68	311121a8-540b-4ff1-bb60-ed3be3d1ce17
717d18f9-337c-4530-9b0e-c1bd33861273	f57026cd-f716-4713-857f-666744e28854	311121a8-540b-4ff1-bb60-ed3be3d1ce17
1ef790b2-2a96-4282-95a0-b1f80ebba0f1	07bf40b9-5b8f-456d-b240-e832953c4c31	8fa8a244-3180-4247-a46e-da39bc2b663a
293aba42-9a54-45bf-ad45-8537643ee5f6	d0de9843-09ef-42cb-93bc-11e19f7e533e	2a10dfa4-fd61-49c3-98e1-81975560b222
b92a68ba-0137-4adc-bc3e-af804eb8565c	e5bb115c-64e8-48be-a819-b92ae397fad4	2a10dfa4-fd61-49c3-98e1-81975560b222
4c2842f7-482d-4832-9708-96905313bc98	c2506163-6b2d-402e-a0cb-0b808fc6e3eb	e93da6dc-002e-4693-b552-a32fc335bdee
05366631-6e86-4097-860b-1dfdf69994a6	67d10af8-a765-43b5-8c12-b4eed53fbdd9	f800c628-19ef-4a37-8109-dc2fa17127c5
5ca65152-164a-4bcb-ad63-3c2337b00b3a	48a8c65a-6357-4c67-af88-55692d6df4a6	8fa8a244-3180-4247-a46e-da39bc2b663a
66f6d87c-a7fd-4f8d-be4c-08b4d1cb3e67	2043a75e-7505-4856-b26e-735d3d82c0c7	d2e3b60e-b406-48b3-aa3d-2a09156765f4
558b15f8-910d-4336-aa72-39a2641d2c85	41d9b000-e0ba-4907-b2c1-40b407a3f851	f800c628-19ef-4a37-8109-dc2fa17127c5
97f67f74-9fdb-4024-b1e5-c54bb188ceac	e3d86464-94ec-4a72-a0cf-653098186d69	f800c628-19ef-4a37-8109-dc2fa17127c5
cd3f1410-67c6-4170-884c-d51ebbd7fc38	ff2d88f7-01de-45d3-8f7e-40ff2ca3f9b4	d2e3b60e-b406-48b3-aa3d-2a09156765f4
1d1ef7d7-e59c-4227-96e0-f03f6bfe9975	65f8c1f7-d6c9-407b-a52d-be0878b9b003	311121a8-540b-4ff1-bb60-ed3be3d1ce17
e07fb211-b28d-4e9c-8a83-491969e481b8	25a1b9f5-1066-4d5a-9460-7faee3159362	43d3671f-e0d1-48fe-9eb4-61468276f3bd
fe8df9c1-34e3-42c1-a15b-d4753c543f93	16cbc5f9-22c0-4e59-ae17-fe396eacd853	98a80c21-7511-45e4-9298-078e2f964f71
4e52d733-b6b7-4e7a-ba9c-ca58a47e6965	17409875-fc20-4fab-97df-9f6a34d98f54	8fa8a244-3180-4247-a46e-da39bc2b663a
400dfea1-a99a-49e8-942c-8d010fc53b00	9486f3d5-1156-4b91-86b6-ec7264ef5e14	046eb365-b050-4185-a770-527a96dbc672
81dc2fa0-8931-4a11-b0fb-0120dc841e5d	ff394ff3-bb5f-4937-997d-f8d6850ec10c	feb6faa1-d461-461f-aad8-09e25b85d7d9
20d03cf0-dd48-4acc-a1df-2cd045e76ca4	d471a1d6-960a-442d-ac28-febde0de600d	d2e3b60e-b406-48b3-aa3d-2a09156765f4
3c173277-e68e-4e10-96d8-9e0ef9004dd8	d68cc107-f988-4172-8f7b-f4d210f56549	d2e3b60e-b406-48b3-aa3d-2a09156765f4
7aeeacc5-d533-4678-95a4-b53948c3f749	4be4de79-8fa4-4c53-9b79-26222fa58d4c	98a80c21-7511-45e4-9298-078e2f964f71
de6ac5e4-675b-4688-b64b-f632d695fe8b	c3efdaef-9e2e-4373-823b-cfbcb1b9c56b	a0db0537-b558-4931-a81c-a5336bff0b8a
7f49174e-6e77-4688-a103-cec17c2c01c1	091ae32d-9488-482d-803f-22c395a6f4ea	feb6faa1-d461-461f-aad8-09e25b85d7d9
5da28f6d-f116-410d-8d16-ddf43937219a	11c40407-1dc8-4f1c-b05a-1d0d6798c81c	80ffc62d-967d-4d99-9fa7-4b2d5eca30b6
0539946f-205e-4b8a-a34b-b2039a19335b	13410951-b53a-4a2a-af22-ace789a7e3b5	d11cfbe2-5334-4f5e-92fa-6efb4d9b4917
42da2318-f727-4aab-8db3-cd7562821147	cebb9f57-b286-4e78-a352-aecdb574e7d7	d2e3b60e-b406-48b3-aa3d-2a09156765f4
5d1b9a36-acaa-44f8-8ac9-7baf9ef0ec38	3b1c9ac7-8d82-4edc-a6a5-6e4fa49ca0f6	d2e3b60e-b406-48b3-aa3d-2a09156765f4
9ef140d4-29e5-4565-ac9b-d49d7299c87d	52b53378-46ea-44fb-bc90-58720d84cb25	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
64b52462-cec4-44ec-b9aa-904f39cc2753	1974df3b-4fc2-419f-a47d-61d08865b337	feb6faa1-d461-461f-aad8-09e25b85d7d9
5abdf04e-e79d-4a84-a794-0f6e1b111677	07516438-2b61-4f9c-b1eb-373200e42ea9	2a10dfa4-fd61-49c3-98e1-81975560b222
80ffd9f0-220d-448d-9ec1-ddd3864a3986	b3e6090d-8bce-4c95-b23e-ba5a571b6230	feb6faa1-d461-461f-aad8-09e25b85d7d9
30a1bd34-2705-4d2c-a968-47f9b8353107	1bea6e06-149c-468a-9003-658a75e0ff69	d2e3b60e-b406-48b3-aa3d-2a09156765f4
608fcb76-0fec-4409-ae5e-13f359a3196b	ee1af723-1416-4be3-a61d-7c731b799a42	f3abc33a-ed51-489e-8385-54a95399c899
bbf48b15-5418-4c71-80f5-8e8c12e14cea	84c41395-fd8e-4cd3-a015-367e5c29c1fb	e97c2c78-5ca3-4c85-b6fb-d38fb1a8d7fc
34032bfa-7cd6-488d-8909-51381e90c84e	8953ac43-3e7b-47ee-aff8-3fc7169bfb66	f800c628-19ef-4a37-8109-dc2fa17127c5
5340a419-ae6a-405c-8f1c-b8a6f3fc5c8e	f6c19c2c-ae2d-45e3-b027-ea1130a11a92	2a10dfa4-fd61-49c3-98e1-81975560b222
d18d23d6-445b-46e6-9538-12129106e41a	ed15c486-0a73-4100-96cc-4c6341a82b34	2a10dfa4-fd61-49c3-98e1-81975560b222
f98cba02-7867-4065-aca8-b62af599d7ec	d21f4997-aca2-41ed-a03b-c47045c780f2	818b4de9-9df0-4432-80ed-965b83d81784
bb6d7d65-7f3c-4376-b864-ef0789bc5cc9	9e3d8d5b-fe4e-47ed-9601-c014b7a2cd5c	c225574e-ce9a-4e23-96f9-860fd6c86051
bbed7da0-ffbc-4b0e-92e0-e4e78f146c18	c7c5e281-4193-44eb-a2a6-a9001e98cfa1	44b07ceb-7cd3-4e21-b787-2e088f329cca
84014029-40a0-4d5b-8d2b-0657f62283b0	7c164e24-bd80-4633-ba09-5d1eb252b600	d2e3b60e-b406-48b3-aa3d-2a09156765f4
01769505-7842-4c24-8dc7-6d63c8adcac0	708e2de2-8b5f-4aa9-8ffc-9437f77d4a25	311121a8-540b-4ff1-bb60-ed3be3d1ce17
f6505e8b-8261-4e1a-97cf-4b2cb26e44c0	6291380e-2583-40e0-9978-9fe7522fa509	2a10dfa4-fd61-49c3-98e1-81975560b222
ad94292e-a051-4cbb-9977-a28683955d48	b295a8eb-453a-4a2e-b971-b2c6bb63dec8	f3abc33a-ed51-489e-8385-54a95399c899
cfa3433b-52fc-447c-ac64-e85d528a7217	5f29c09a-bd7f-4711-a727-5ca735ddbe0d	d2e3b60e-b406-48b3-aa3d-2a09156765f4
e625e8e1-3ce5-4fa4-95de-3043700f383b	23dbf8eb-343c-4c8b-85e5-3dc74e554fa9	f800c628-19ef-4a37-8109-dc2fa17127c5
d4eba578-2942-4851-8ccf-28128d262f37	2a8797cf-e135-4698-97dc-c8b51a25e324	2a10dfa4-fd61-49c3-98e1-81975560b222
486f57f3-8f46-4ee0-96aa-38cd81e2c233	7f37894c-1964-4ef9-86c5-ad5ed9c5e20b	2a10dfa4-fd61-49c3-98e1-81975560b222
3d62b431-19fa-47e4-bfa6-cf7f25550674	cbeeb003-6e2b-4358-92c4-a7351cb1862e	98a80c21-7511-45e4-9298-078e2f964f71
bbfeaae0-37ad-4ec1-9b4b-a2b51bba2c6b	8988fe2a-33c2-4f45-b167-10366db0310e	d2e3b60e-b406-48b3-aa3d-2a09156765f4
d4c3d9ab-756d-49b4-8064-cd1374f0f447	afd93b8d-6ba2-444b-bb2b-479b63cc376d	2a10dfa4-fd61-49c3-98e1-81975560b222
d9715884-f8a7-4f06-8b48-9ab3d263b8f0	18ad6b45-3a19-4ed8-8011-3bd43f4a8067	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
9d39c3be-e895-407b-b736-56368d983e9a	fb2ac9f7-a02a-4561-9f98-5902d309e288	98a80c21-7511-45e4-9298-078e2f964f71
d94777d7-35ac-40ce-a507-c14b721709a2	9f847ae5-9526-4101-8ed3-8b6688eb0f3e	d2e3b60e-b406-48b3-aa3d-2a09156765f4
8f5b98ef-2072-471e-8249-0c5c144f95e1	90709adf-7127-462f-bb68-0a1407c8b948	adf8108e-85d5-45a0-a549-6a079ba02156
aa719696-1283-405e-896b-11702dbb9eb9	4e4bc9c9-15b4-4e2b-a7d2-50b995f18a99	311121a8-540b-4ff1-bb60-ed3be3d1ce17
babb2c35-5777-46d6-ab93-bed1c00a7539	d1dcf649-7608-4832-a169-edeb31a23351	c5ce4c8e-ffeb-4838-b307-8ebc0d883db8
57b2479d-4d6f-4f06-99a6-1ccfdca18b67	3e9350bc-050a-4046-8969-d40e5b50bf4d	311121a8-540b-4ff1-bb60-ed3be3d1ce17
c3345935-bc74-4fdb-a6d9-e78f28c53909	22ed3f10-fb50-4db6-85ce-45303dd6d84c	8fa8a244-3180-4247-a46e-da39bc2b663a
bf57a344-ec7b-423c-b8d8-e7e2242a7e5f	17e4507f-9faa-4d1a-a181-e63bde8debeb	f02a293c-dd56-420f-bf42-5c8a99d1995a
36fbd0a8-c957-43b5-8e98-7e8870c39aa4	5663c937-7016-4414-9062-16d5fbe9dc1c	538cd9d2-ee1c-4aaa-b263-65f30da39d61
826c9d6f-2c70-4626-af77-40a16afde888	e22bf5c3-277a-479c-a15e-17185901d7f5	311121a8-540b-4ff1-bb60-ed3be3d1ce17
edbc1d86-d2a9-4cc2-a602-b07df4a2f2df	0afa0020-605e-477b-9778-aa648efe39cc	4440c0c5-1c75-44c9-8a6f-797e054bbe26
a988ef8a-a135-4423-84c4-ebb5f671ed6a	67ea5baf-d46f-4b37-84ff-2e3e20015ea8	350ada05-9b98-4ae0-a9d5-e51be1599c96
c7dd084c-06ef-4455-8d7c-22a5d23e80a2	02716194-558d-4e15-b3cc-5aae39b51b8f	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
292b0520-89e6-4d89-a944-51666e6b6b50	676204ac-4244-48a6-a260-a3794b90ece0	2a10dfa4-fd61-49c3-98e1-81975560b222
a1775d7e-9323-4815-a1ec-9fe9a92594d0	9c383de3-b018-4aa2-b830-4def6fb5980e	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
13ea61dd-97ec-4d06-bce0-b275087918b1	08cd5ffe-8bc0-4432-b1a4-d7a773098188	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
d4cc5e82-99b0-4f48-9632-f76f5fb7b60b	a69b1653-e5d0-4bc0-bf75-17f0cfcb5536	311121a8-540b-4ff1-bb60-ed3be3d1ce17
4d236dc1-1f5a-4534-906c-ae6da864a10f	27888cc9-f2a4-41c3-b8fa-9b0ae174a3be	ffbb78ce-0bb5-4fd1-b8c1-5b8158d42cb3
7536cb18-dc77-453b-8f1a-1b3473fc3c1a	362304d7-b232-4124-a39d-9005062f2cb1	4f701527-c603-421e-8953-4fe9e881fdc4
9651696e-88fc-4221-adb9-e714929be669	ff7cbd23-fd29-4a5c-a82c-db51344a350e	8fa8a244-3180-4247-a46e-da39bc2b663a
cda248a6-1674-43bb-b3be-a1eee0feda62	37ab8687-c406-45bc-81cd-71974f2c9b17	311121a8-540b-4ff1-bb60-ed3be3d1ce17
0e90d1ce-4293-48cc-a75e-b05738bed74b	a37b800e-9326-439b-b44f-931d8586160a	44b07ceb-7cd3-4e21-b787-2e088f329cca
f9c6967f-c99a-4e1c-b821-95f54f280463	ab1fca8b-934f-496f-a2fe-12cc98696f33	d2e3b60e-b406-48b3-aa3d-2a09156765f4
205ee400-3f27-48b6-966f-7b3e2d6d0b25	f7224a43-debf-4aae-9301-987d0bc4a957	350ada05-9b98-4ae0-a9d5-e51be1599c96
a2c1cf9e-77b6-45d2-9a7d-03a83ae94658	82145efb-6977-456c-a9c1-e1c1c55b834e	311121a8-540b-4ff1-bb60-ed3be3d1ce17
6441e96a-4d26-480d-86f3-0a599d2e2c89	eacd6091-41b3-46b5-ad18-53e0ed717c53	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
b6cd248a-d8b5-456d-b488-c890c6585f05	79d8f1b0-2ebb-4110-aad1-0bbf8806f976	0c6f2d96-be7d-4734-afb4-89e15b301f8b
77bb8ef0-34aa-498c-86e3-749a9ec964d4	79d8f1b0-2ebb-4110-aad1-0bbf8806f976	f96a2dd1-30b9-4c62-ad54-0e9109654e6a
6d9af5be-75a4-41fc-b306-a4780e09ac41	96803d92-4d21-4bad-850a-953ef722ef80	f96a2dd1-30b9-4c62-ad54-0e9109654e6a
7cd98dc2-a6a7-4b4f-a032-633ca5c77ef9	96803d92-4d21-4bad-850a-953ef722ef80	0c6f2d96-be7d-4734-afb4-89e15b301f8b
9f544c07-12ed-4e91-a439-e4f9aa0f7152	f1d50213-db84-459c-964c-ac9680e0cabc	8c89fda0-e257-4a04-be77-2db68903ebe4
655cfb52-85ac-4006-a274-1f3ed115fb38	f1d50213-db84-459c-964c-ac9680e0cabc	0c6f2d96-be7d-4734-afb4-89e15b301f8b
a5d4b45f-6bca-4204-964f-979f62b8dba4	26f1378b-84b8-48cd-8e70-bca766dabfae	f3abc33a-ed51-489e-8385-54a95399c899
2ae7368d-2cb8-4893-9ee4-025e7ee89288	5561a2f9-534c-4147-896f-903061a8fb52	ba8d6ae0-fef5-43a2-82b2-f45ca9cb7136
8634a252-f77a-4bd6-b817-82c978952242	d580c4ae-6acb-442d-9910-dacb2c022032	311121a8-540b-4ff1-bb60-ed3be3d1ce17
fb98943c-0a0d-4531-8bb2-36ccdebefd4e	d620ab45-51e5-4bb0-847c-43b8fa037472	d2e3b60e-b406-48b3-aa3d-2a09156765f4
0cacfb57-36a4-4807-903c-eb563e1150d0	cd887186-962c-49d8-a479-0220d58cd97e	a0db0537-b558-4931-a81c-a5336bff0b8a
1d5e7bfc-49f1-4494-8317-29f60c00c19e	7a07302e-18c5-40c4-ad21-2bfe8ea6d31d	8fa8a244-3180-4247-a46e-da39bc2b663a
b22d1dd7-c3be-4243-b504-59b719395422	0479ba6b-dac6-45d0-b3b6-1d8b0afafc1a	98a80c21-7511-45e4-9298-078e2f964f71
48494fc4-9c88-469d-bced-defd4343b341	33e621bf-1d97-43df-80ab-4a13c1244b8e	a0db0537-b558-4931-a81c-a5336bff0b8a
a9c36969-6394-4451-af32-2e6f5f857763	96fb1f43-2e80-45ef-b5c6-136853ee5a3f	ffbb78ce-0bb5-4fd1-b8c1-5b8158d42cb3
7169592e-a854-42cc-8684-2088e354af4f	90947fce-c421-4cb0-aa27-f7ec042e515f	2a10dfa4-fd61-49c3-98e1-81975560b222
bb6e34bc-70d7-4bfc-a6f9-393e4315c8ae	1150ca65-8a8a-42ad-95b7-727d1f57c369	f800c628-19ef-4a37-8109-dc2fa17127c5
702d9e19-b08a-45f0-b202-af22523ff44b	da9fcd04-4250-409d-903f-4298204268d0	e38d70e9-deff-4eec-8d0e-c8fb0e61c04a
38a1af54-3c9b-4555-aafc-fe3305c752df	19bb4331-98ec-45cd-8313-90c013752700	4dd1529e-6980-4e7f-94e3-4dfcdaee8d92
ea06f714-dfd3-4cd3-b32c-1825680f6f76	c0d77d1a-28bd-464e-83c4-e120391300a4	d2e3b60e-b406-48b3-aa3d-2a09156765f4
460ace56-c3b1-48aa-9dac-18914d423a17	991ccb74-8420-43e0-9286-359a724d27ab	311121a8-540b-4ff1-bb60-ed3be3d1ce17
e886b341-24d7-4869-b6fe-34048bd58703	aa1c63ee-7f1a-430a-bd7b-541e0bd6dedc	311121a8-540b-4ff1-bb60-ed3be3d1ce17
0a64ef9b-64b9-4af0-ba54-0495da38d4e0	f0a2f786-587e-4a35-b54c-21f516637abe	311121a8-540b-4ff1-bb60-ed3be3d1ce17
71f91f3d-50e8-47c3-af7c-db0d12d73563	0e6bdbfa-3fc4-4d47-a2b1-4888f15117b6	f3abc33a-ed51-489e-8385-54a95399c899
9472bcca-467e-4b62-806e-08f9f31a7fc1	cba3a103-4cc6-4d6c-b162-42137d80815f	d2e3b60e-b406-48b3-aa3d-2a09156765f4
fa013697-7eeb-4e55-a212-51509a8eda0b	2bf0baf3-c376-4c04-a1d7-d7ab44fb2dd9	70d7967a-6690-4ee7-b6df-9f38dae86d13
6f08751b-5847-42d3-9bae-f402cc89bce6	9bb1857c-2046-45ba-b8b9-a0c9d2ca45db	538cd9d2-ee1c-4aaa-b263-65f30da39d61
\.


--
-- Data for Name: user_category_overrides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_category_overrides" ("id", "user_id", "template_id", "name", "icon", "color", "is_active", "is_custom", "created_at", "updated_at", "type", "parent_override_id") FROM stdin;
9db1fe37-0ec7-4467-9819-511256db4fe6	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suscripciones	📱	#F77F00	t	t	2025-11-18 16:51:47.753	2025-11-18 16:51:57.527	EXPENSE	c2787ad3-49d1-4bfd-bbd7-db9383803d1e
bb80c962-8810-4dd6-8aa7-6277041dae78	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Credito	💼	#F77F00	t	t	2025-11-18 18:24:53.618	2025-11-18 18:24:53.618	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
6d6c20c0-81f2-4afb-a72e-228c0a3982e0	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Seguro	🔧	#FF6B6B	t	t	2025-11-18 19:54:14.871	2025-11-18 19:54:14.871	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
e465270b-669b-44a9-8c8c-3275f4d2af4c	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Inversiones	📊	#52B788	t	t	2025-11-19 16:53:14.712	2025-11-19 16:53:14.712	EXPENSE	\N
c9b04f8d-867a-42cf-ba91-e5229101f119	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Condominio	🏠	#F8B739	t	t	2025-11-25 18:27:16.998	2025-11-25 18:27:16.998	EXPENSE	c2787ad3-49d1-4bfd-bbd7-db9383803d1e
27fccd39-52ef-4715-821b-ab85fa57f46f	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Feria	🍎	#06A77D	t	t	2025-11-18 16:50:57.213	2025-12-09 14:24:20.605	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
31b3e981-3dff-4973-9bc5-8530fb5f61c9	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Huevos y Fiambres	🥚	#FF6B6B	t	t	2025-11-18 19:18:19.029	2025-12-09 14:24:36.722	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
a04483ea-8923-4cf5-9065-261cf4a16ca8	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Fitness	🏋	#BB8FCE	t	t	2025-11-28 12:54:58.524	2025-12-09 14:25:02.076	EXPENSE	b0a6931c-9e07-41ae-ba4a-e72e0b54c9e6
88a43547-8d29-426d-b9eb-bf2bb38fe3e1	346b32d1-b21f-4ce9-ac27-a69e67abb103	96f7dffb-5f31-40f6-8c77-d860d40a9c3f	Transporte	🚗	#4ECDC4	t	f	2025-11-18 18:24:29.964	2026-01-13 18:00:49.635	EXPENSE	\N
90936b66-3ec7-4ebd-bf87-c5f030e12fce	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Stocks	📈	#06A77D	t	t	2025-11-19 16:53:52.974	2025-12-09 14:25:38.054	EXPENSE	e465270b-669b-44a9-8c8c-3275f4d2af4c
5ec041fc-8c57-4f46-a1e9-80ffc95bf107	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Crypto	💎	#06A77D	t	t	2025-11-19 16:53:34.522	2025-12-09 14:25:54.916	EXPENSE	e465270b-669b-44a9-8c8c-3275f4d2af4c
a432fac5-4158-46f6-9ba1-cb2067174a2c	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Comisiones	🏦	#E63946	t	t	2025-11-19 16:58:15.892	2025-12-09 14:26:18.069	EXPENSE	629fe010-c524-4a31-a7b0-efd7b64d9bbc
74dbaf4c-1b84-4c6b-9383-de2b59a86cca	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suscripciónes	🔔	#8338EC	t	t	2025-11-18 16:51:25.834	2025-12-09 14:27:38.644	EXPENSE	629fe010-c524-4a31-a7b0-efd7b64d9bbc
5a45805d-2461-4e86-a227-7df30c4fd9ae	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suplementos	🏋	#F8B739	t	t	2025-12-02 16:24:12.56	2025-12-09 14:28:15.617	EXPENSE	dce2c10a-5549-4310-b672-0801111fa10e
43ce1783-37f8-4f27-92a8-04c27a3f070a	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	TAG	🚧	#45B7D1	t	t	2025-11-18 18:24:31.669	2025-12-09 14:28:52.618	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
9434cf28-3890-49dc-a731-c8fd873f932c	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Carnes	🥩	#0EA5E9	t	t	2025-12-15 16:49:37.097	2025-12-15 16:49:37.097	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
c0731c85-71c3-4cf6-bfc2-0a61cc363f2c	346b32d1-b21f-4ce9-ac27-a69e67abb103	bc564f5b-c237-4618-80c5-42158e85c422	Comida y Bebidas	🍔	#FF6B6B	t	f	2025-11-14 00:25:58.274	2026-01-13 18:00:49.015	EXPENSE	\N
b0a6931c-9e07-41ae-ba4a-e72e0b54c9e6	346b32d1-b21f-4ce9-ac27-a69e67abb103	fb61093e-c9bf-4503-b6bf-f46effbcbdd1	Compras	🛍️	#95E1D3	t	f	2025-11-28 12:54:56.753	2026-01-13 18:00:50.246	EXPENSE	\N
dce2c10a-5549-4310-b672-0801111fa10e	346b32d1-b21f-4ce9-ac27-a69e67abb103	b3b3e1d5-896a-4c9c-ad04-6bc4723b4c01	Salud	⚕️	#FCBAD3	t	f	2025-12-02 16:24:10.797	2026-01-13 18:00:50.867	EXPENSE	\N
c2787ad3-49d1-4bfd-bbd7-db9383803d1e	346b32d1-b21f-4ce9-ac27-a69e67abb103	004d901d-4917-48a9-b32b-33cd132bc683	Vivienda	🏠	#FFE66D	t	f	2025-11-18 16:51:47.258	2026-01-13 18:00:51.492	EXPENSE	\N
629fe010-c524-4a31-a7b0-efd7b64d9bbc	346b32d1-b21f-4ce9-ac27-a69e67abb103	27c0f45d-b2f8-4c0e-b8a4-d311ca61f2e2	Otros Gastos	📌	#C7CEEA	t	f	2025-11-18 16:51:25.34	2026-01-13 18:00:52.104	EXPENSE	\N
f6af5305-ccf1-4ab8-a21c-39bc8636e7b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Frutos secos	🥜	#F97316	t	t	2026-01-14 13:29:38.086	2026-01-14 13:29:56.447	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
\.


--
-- Data for Name: user_dashboard_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_dashboard_preferences" ("id", "user_id", "widgets", "layout", "created_at", "updated_at") FROM stdin;
88647620-e715-453b-bef7-dd8995692515	d8c5e32f-c64d-4437-b302-3a64d8f3f116	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-5", "w": 4, "x": 0, "y": 1, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-6", "w": 4, "x": 0, "y": 3, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 7, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-10", "w": 2, "x": 2, "y": 7, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-12", "w": 4, "x": 0, "y": 9, "minH": 1, "minW": 2}]	2025-11-13 16:41:43.26	2026-01-08 18:46:49.393
625672c1-2a65-4f6d-9fb6-99f5ba4893ca	b88abd1d-92fe-4818-ba01-95681f09b96d	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 2, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-5", "w": 4, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-6", "w": 4, "x": 0, "y": 4, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 8, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-10", "w": 2, "x": 2, "y": 8, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-12", "w": 4, "x": 0, "y": 10, "minH": 1, "minW": 2}]	2025-11-21 13:28:08.663	2025-12-10 16:12:59.378
0182cccb-9a10-4e0f-acef-3f1b084c1f16	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-5", "w": 4, "x": 0, "y": 1, "minH": 1, "minW": 2}, {"h": 3, "i": "widget-6", "w": 4, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 7, "minH": 1, "minW": 2}, {"h": 1, "i": "widget-10", "w": 2, "x": 2, "y": 7, "minH": 1, "minW": 2}, {"h": 3, "i": "widget-12", "w": 2, "x": 0, "y": 9, "minH": 1, "minW": 2}]	2025-11-21 13:26:50.465	2025-12-10 16:13:33.895
305eb0c9-02bf-467a-a36f-d3a331ad9607	346b32d1-b21f-4ce9-ac27-a69e67abb103	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}, {"id": "widget-1763575423316-yxrqyg2uk", "type": "expenses-by-parent-category", "settings": {}}, {"id": "widget-1763575444506-tamh8hgq8", "type": "expense-details-pie", "settings": {}}, {"id": "widget-1763659024518-btdbfj5b4", "type": "personal-expenses", "settings": {}}, {"id": "widget-1763659046596-nfgbroz3w", "type": "shared-expenses", "settings": {}}, {"id": "widget-1763659066607-lsil57dug", "type": "savings", "settings": {}}, {"id": "widget-1763665253130-8wd45uwmx", "type": "balances", "settings": {}}, {"id": "widget-1767893724952-uhnpy81gq", "type": "top-tags", "settings": {}}, {"id": "widget-1767893803716-w6dt6bbrv", "type": "loans", "settings": {}}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 4, "minH": 1, "minW": 2}, {"h": 3, "i": "widget-12", "w": 2, "x": 0, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-1763575423316-yxrqyg2uk", "w": 2, "x": 0, "y": 9, "minH": 1, "minW": 1}, {"h": 3, "i": "widget-1763575444506-tamh8hgq8", "w": 2, "x": 2, "y": 3, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659024518-btdbfj5b4", "w": 1, "x": 1, "y": 1, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659046596-nfgbroz3w", "w": 1, "x": 0, "y": 1, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659066607-lsil57dug", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-1763665253130-8wd45uwmx", "w": 2, "x": 2, "y": 1, "minH": 1, "minW": 1}, {"h": 4, "i": "widget-1767893724952-uhnpy81gq", "w": 2, "x": 2, "y": 6, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-1767893803716-w6dt6bbrv", "w": 2, "x": 0, "y": 11, "minH": 1, "minW": 1}]	2025-11-13 15:47:47.064	2026-01-17 00:45:15.333
\.


--
-- Data for Name: user_transaction_patterns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_transaction_patterns" ("id", "user_id", "pattern", "resolved_category_id", "resolved_merchant", "confidence", "use_count", "created_at", "updated_at") FROM stdin;
5b9060ef-3559-4fa1-93cb-51ef865a0eaf	346b32d1-b21f-4ce9-ac27-a69e67abb103	google	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Google	1	1	2026-01-08 18:41:27.9	2026-01-08 18:41:27.9
9bf00ee9-d0c9-4660-9417-e6e7442d5fa8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	maihue	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Maihue	1	1	2026-01-08 18:46:01.297	2026-01-08 18:46:01.297
a720f34c-338a-4410-a4f9-eb66d2226aca	346b32d1-b21f-4ce9-ac27-a69e67abb103	otros	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Otros	1	1	2026-01-08 18:49:19.126	2026-01-08 18:49:19.126
1a8474b5-662b-4eca-a3d6-1d50119d9d4e	346b32d1-b21f-4ce9-ac27-a69e67abb103	chen santiago	a9f9b431-7a73-4992-99f1-3db31d4422be	Chen Santiago	1	1	2026-01-09 19:00:06.077	2026-01-09 19:00:06.077
8ffcdae7-bf32-45ef-83d7-206778c1b6f6	346b32d1-b21f-4ce9-ac27-a69e67abb103	lider express	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Lider Express	1	2	2026-01-14 14:05:04.357	2026-01-14 14:06:20.648
c09a655c-8294-4ac2-a094-b3e82564a70e	346b32d1-b21f-4ce9-ac27-a69e67abb103	shell	ec1b6213-5528-4329-bffd-e6e6a7d6fc43	Shell	1	1	2026-01-14 14:07:11.067	2026-01-14 14:07:11.067
9f7d8185-f986-4d6b-87ed-03e2da8bf973	346b32d1-b21f-4ce9-ac27-a69e67abb103	andrea nutricionista	e72fa961-c75d-4b52-9ac8-242475226724	Andrea Nutricionista	1	1	2026-01-14 14:11:26.9	2026-01-14 14:11:26.9
0f9d516f-f337-461a-bb96-6c8dd05e9ec1	346b32d1-b21f-4ce9-ac27-a69e67abb103	templo del smash	c4374810-0308-4355-952e-17986d76f696	Templo del smash	1	1	2026-01-14 14:13:53.491	2026-01-14 14:13:53.491
3e012640-8ffe-4dd7-9b7f-7f46b04c93e1	346b32d1-b21f-4ce9-ac27-a69e67abb103	jumbo	93c6b1a6-c7d6-45fe-87f7-9144b34355f8	Jumbo	1	1	2026-01-14 14:15:06.787	2026-01-14 14:15:06.787
87cacbed-70b0-43f4-b717-c1d2c849a545	346b32d1-b21f-4ce9-ac27-a69e67abb103	uber eats	36aa155c-8121-41e7-b2b1-a399d6e6cb94	Uber eats	1	2	2026-01-14 14:16:27.138	2026-01-14 14:18:09.63
93957d68-6ade-4ac0-bf1c-8a2a44711a4e	346b32d1-b21f-4ce9-ac27-a69e67abb103	belinda market	8ea79ed5-7136-4a96-ae4d-0c5217538295	Belinda Market	1	1	2026-01-14 14:19:08.844	2026-01-14 14:19:08.844
f0bdea91-7bb5-45cd-bb89-12e0c7df007e	346b32d1-b21f-4ce9-ac27-a69e67abb103	farmacias olga	5d5e7a50-dbf4-4a0f-9704-2e3a6fe56232	Farmacias Olga	1	1	2026-01-14 14:22:23.753	2026-01-14 14:22:23.753
76888283-6335-42f2-bb03-c609ad608b9d	346b32d1-b21f-4ce9-ac27-a69e67abb103	vespucio norte	43ce1783-37f8-4f27-92a8-04c27a3f070a	Vespucio Norte	1	1	2026-01-14 14:23:37.59	2026-01-14 14:23:37.59
161e8b7f-ffa2-4de8-853f-505b7ea6c0f6	346b32d1-b21f-4ce9-ac27-a69e67abb103	ruta 78	43ce1783-37f8-4f27-92a8-04c27a3f070a	Ruta 78	1	1	2026-01-14 14:24:50.28	2026-01-14 14:24:50.28
7368f15c-2ab5-4070-bfd2-33658a157f8a	346b32d1-b21f-4ce9-ac27-a69e67abb103	chinos pedro valdivia	8ea79ed5-7136-4a96-ae4d-0c5217538295	Chinos Pedro Valdivia	1	1	2026-01-14 14:26:09.024	2026-01-14 14:26:09.024
30a2f82f-e2ca-43e4-902e-d2e3fb04a59f	346b32d1-b21f-4ce9-ac27-a69e67abb103	tostaduria el mani	f6af5305-ccf1-4ab8-a21c-39bc8636e7b9	Tostaduria el mani	1	1	2026-01-14 14:27:31.652	2026-01-14 14:27:31.652
2e487d45-beb8-4f11-9a18-80d4b1a2026b	346b32d1-b21f-4ce9-ac27-a69e67abb103	mall plaza egaña	383b06d7-97c5-46fa-92e1-c0ba555cd879	Mall Plaza Egaña	1	1	2026-01-14 14:28:20.774	2026-01-14 14:28:20.774
431186da-be0f-4ff0-9b67-48df64b2e25a	346b32d1-b21f-4ce9-ac27-a69e67abb103	mall portal ñuñoa	383b06d7-97c5-46fa-92e1-c0ba555cd879	Mall Portal Ñuñoa	1	1	2026-01-14 14:29:20.54	2026-01-14 14:29:20.54
c9c29232-239e-423b-bb68-592566e61aa3	346b32d1-b21f-4ce9-ac27-a69e67abb103	netflix	710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Netflix	1	1	2026-01-14 14:31:33.259	2026-01-14 14:31:33.259
39dc5b75-fcab-4a1c-9599-560981ce4e7a	346b32d1-b21f-4ce9-ac27-a69e67abb103	level digital	710a6ce6-7b3f-49f8-bfbe-3698f3bc9cfa	Level Digital	1	1	2026-01-15 15:35:21.213	2026-01-15 15:35:21.213
29c5a138-7de0-4639-b490-0f1ac360660e	346b32d1-b21f-4ce9-ac27-a69e67abb103	distribuidora catalan	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Distribuidora Catalan	1	1	2026-01-15 15:37:37.06	2026-01-15 15:37:37.06
bdfc48f0-52d3-4cea-b310-bd28bd8521fd	346b32d1-b21f-4ce9-ac27-a69e67abb103	mascotas vip	b37a8198-99ee-4bac-9d00-07b0bf8df102	Mascotas Vip	1	1	2026-01-15 16:06:19.345	2026-01-15 16:06:19.345
6b96454c-ffa6-4f4d-8b16-8ce9e50fc802	346b32d1-b21f-4ce9-ac27-a69e67abb103	banco internacional	bb80c962-8810-4dd6-8aa7-6277041dae78	Banco Internacional	1	1	2026-01-15 16:10:24.778	2026-01-15 16:10:24.778
18684493-2f30-48e9-bda8-be6c8e40f4b4	346b32d1-b21f-4ce9-ac27-a69e67abb103	mixgreen	5a45805d-2461-4e86-a227-7df30c4fd9ae	MixGreen	1	1	2026-01-16 14:59:26.182	2026-01-16 14:59:26.182
8b94fe10-7a2d-4e9e-86ea-434e6d6be4e4	346b32d1-b21f-4ce9-ac27-a69e67abb103	enel	b6701d20-51bf-4d57-bbb3-47a5cf0aa7b3	Enel	1	1	2026-01-16 15:08:15.999	2026-01-16 15:08:15.999
f4e1d575-189a-4a5f-ba8f-be4f27c277d3	346b32d1-b21f-4ce9-ac27-a69e67abb103	ruta del maipo	43ce1783-37f8-4f27-92a8-04c27a3f070a	Ruta del maipo	1	1	2026-01-16 15:14:39.678	2026-01-16 15:14:39.678
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
wallet-app	wallet-app	\N	2025-11-11 17:15:31.340049+00	2025-11-11 17:15:31.340049+00	f	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict bYz5vuaLsUbOJ4cdD2MYiqzGpr7aubvgaqRmeYdz0PfkHPRfu8wqS891kvWYtfl

RESET ALL;
