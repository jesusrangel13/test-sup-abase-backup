SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict FrI9pkJRkvstYeYNNYgXkho12kbDBP16ikRltbvhs8SROVO73HkZInyXd0EQLms

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
8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	Prueba	CASH	7311780.00	CLP	f	\N	\N	2025-11-21 13:27:41.406	2025-11-27 20:12:36.027	f	t	\N	\N
34d0aa36-bc91-4383-95fb-578fbbc09e04	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Corriente Santander	DEBIT	43208.00	CLP	f	\N	\N	2025-11-25 19:18:47.604	2025-11-30 02:03:52.256	f	t	\N	#ec0000
2db62b9a-1133-4a34-96bc-429d267a2a2a	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Rut	DEBIT	794.00	CLP	f	\N	\N	2025-11-25 19:21:05.154	2025-12-01 13:46:56.244	f	t	\N	#ff7900
6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Corriente Scotiabank	DEBIT	56043.00	CLP	f	\N	\N	2025-11-25 19:19:19.533	2025-12-04 18:44:11.56	f	t	\N	#EC111A
0c046099-f7ff-4463-bf04-cdc01ecd9c09	346b32d1-b21f-4ce9-ac27-a69e67abb103	Lider BCI	CREDIT	971048.00	CLP	f	1000000.00	31	2025-11-18 16:40:18.575	2025-12-05 01:01:37.155	f	f	\N	#0053e2
646caf37-7684-45ac-87f3-cec83efb633d	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander VISA	CREDIT	7903246.00	CLP	f	8000000.00	31	2025-11-18 16:41:05.327	2025-12-05 01:04:11.416	f	f	000069640842	#7a7a7a
2e64b401-5a2f-4492-87c9-a618e7ba6f33	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander AMEX	CREDIT	7025533.00	CLP	f	8000000.00	31	2025-11-18 16:40:45.67	2025-12-05 01:07:46.62	f	f	\N	\N
2c6743e1-4096-45b1-9ebb-8b998cedda57	346b32d1-b21f-4ce9-ac27-a69e67abb103	Santander Cuotas	CREDIT	3000000.00	CLP	f	3000000.00	31	2025-11-25 18:33:19.275	2025-12-01 17:11:24.687	f	f	\N	\N
3835a682-e360-443c-8946-98e86c744943	d8c5e32f-c64d-4437-b302-3a64d8f3f116	Cuenta de Prueba 	DEBIT	9917790.00	CLP	t	\N	\N	2025-11-13 16:44:14.609	2025-12-02 17:19:02.823	f	t	\N	\N
d99144b6-5974-40e2-9f17-b36942774c9e	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta MercadoPago	DEBIT	10123947.00	CLP	f	\N	\N	2025-11-18 16:40:00.279	2025-12-01 19:55:34.826	f	t	\N	#ffe600
af297afb-aa32-48f5-bee2-844713748199	346b32d1-b21f-4ce9-ac27-a69e67abb103	Cuenta Itau	DEBIT	2265.00	CLP	f	\N	\N	2025-11-25 19:19:59.48	2025-11-25 19:19:59.48	f	t	\N	#FF6200
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "email", "password_hash", "name", "avatar_url", "currency", "country", "is_verified", "created_at", "updated_at", "default_shared_expense_account_id") FROM stdin;
b88abd1d-92fe-4818-ba01-95681f09b96d	juanperez@gmail.com	$2b$10$ENEWWpfqdTygexUfCX2FQ.XK5yZrYh1HoA.OZePnLRqGyZlouU8ee	Juan Perez	\N	CLP	Chile	f	2025-11-21 13:28:03.574	2025-11-21 13:32:22.823	530b9e4b-d53a-440b-a713-51021e71436b
f06079b2-c6a7-421a-8c5c-287dbb21e3ca	pedroperez@gmail.com	$2b$10$KcpPa9V/Gn/6EjBPGSIyUOUE6LjzbBMH5q/o.lj1mvGcOhvr6hmNS	Pedro Perez	\N	CLP	\N	f	2025-11-21 13:26:44.885	2025-11-24 20:13:00.009	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0
346b32d1-b21f-4ce9-ac27-a69e67abb103	jesusrangel.255@gmail.com	$2b$10$5XD4EXU3I6EoKNYnr40uyOIuvgceKIZR2JbxeNsYdW.KyzWv.L4fK	Jesus Leon Rangel	\N	CLP	Chile	f	2025-11-13 15:47:41.58	2025-11-26 17:41:16.809	d99144b6-5974-40e2-9f17-b36942774c9e
d8c5e32f-c64d-4437-b302-3a64d8f3f116	olguita.m8@gmail.com	$2b$10$m4eZRHBf8RzdCpuCIJVWa.7tsI7twVBtfXpDMDosQ/Fjbe0Jy0Am2	Olga Manyoma	\N	CLP	\N	f	2025-11-13 16:41:41.221	2025-12-01 13:51:25.831	3835a682-e360-443c-8946-98e86c744943
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
00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	Comida y Bebidas	🍔	#FF6B6B	EXPENSE	\N	1	t	2025-11-13 14:57:53.752	2025-11-13 14:57:53.752
0d1a874a-1143-42d9-897e-5f9abb779b05	Transporte	🚗	#4ECDC4	EXPENSE	\N	2	t	2025-11-13 14:57:54.664	2025-11-13 14:57:54.664
35adb535-b34b-4a6b-9e5f-bd9e690980e6	Compras	🛍️	#95E1D3	EXPENSE	\N	3	t	2025-11-13 14:57:55.38	2025-11-13 14:57:55.38
4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	Entretenimiento	🎮	#F38181	EXPENSE	\N	4	t	2025-11-13 14:57:56.067	2025-11-13 14:57:56.067
4085e389-cc55-4db1-9147-6ede27ea05b7	Servicios	🔌	#AA96DA	EXPENSE	\N	5	t	2025-11-13 14:57:56.953	2025-11-13 14:57:56.953
0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	Salud	⚕️	#FCBAD3	EXPENSE	\N	6	t	2025-11-13 14:57:57.744	2025-11-13 14:57:57.744
6447ac92-3671-42db-a337-2c1496f3863b	Educación	🎓	#A0C4FF	EXPENSE	\N	7	t	2025-11-13 14:57:58.633	2025-11-13 14:57:58.633
13df9098-65cd-4149-aac3-71a01cdc60c3	Vivienda	🏠	#FFE66D	EXPENSE	\N	8	t	2025-11-13 14:57:59.328	2025-11-13 14:57:59.328
24efca6e-3784-4659-b4f8-4576e8c7d29c	Viajes	✈️	#B4E7FF	EXPENSE	\N	9	t	2025-11-13 14:58:00.054	2025-11-13 14:58:00.054
d5123d46-4430-4a6e-8ef2-a9e395dd4061	Otros Gastos	📌	#C7CEEA	EXPENSE	\N	10	t	2025-11-13 14:58:00.875	2025-11-13 14:58:00.875
c65da8fe-6daf-4e66-9fdb-39123358a2b8	Salario	💰	#00B894	INCOME	\N	1	t	2025-11-13 14:58:01.628	2025-11-13 14:58:01.628
e8527f53-64c1-4114-93a4-9278a0f65357	Negocio	💼	#FF9FF3	INCOME	\N	2	t	2025-11-13 14:58:02.324	2025-11-13 14:58:02.324
ca1b7250-2ffc-4291-80ef-57d389e15253	Inversiones	📈	#54A0FF	INCOME	\N	3	t	2025-11-13 14:58:03.129	2025-11-13 14:58:03.129
aaae6292-5267-437e-a040-eea27338ba20	Otros Ingresos	🎯	#FFA502	INCOME	\N	4	t	2025-11-13 14:58:03.952	2025-11-13 14:58:03.952
8704596a-9583-4900-a272-a49243224a65	Restaurant	🍽️	#FF8787	EXPENSE	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	1	t	2025-11-13 14:58:04.803	2025-11-13 14:58:04.803
a9f9b431-7a73-4992-99f1-3db31d4422be	Delivery	🛵	#FF8787	EXPENSE	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	2	t	2025-11-13 14:58:05.687	2025-11-13 14:58:05.687
5db114f4-c808-4903-88ad-a85dd14ff7c8	Bar	🍺	#FF8787	EXPENSE	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	3	t	2025-11-13 14:58:06.507	2025-11-13 14:58:06.507
61833543-fed0-4da7-b5a6-6a481603f32c	Cafetería	☕	#FF8787	EXPENSE	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	4	t	2025-11-13 14:58:07.296	2025-11-13 14:58:07.296
a5f1f780-c452-464f-89c4-3246d4ccc87f	Supermercado	🛒	#FF8787	EXPENSE	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	5	t	2025-11-13 14:58:08.01	2025-11-13 14:58:08.01
c27aee6a-2091-4e88-9135-cd0a10323bc4	Taxi/Uber	🚕	#5FE3D6	EXPENSE	0d1a874a-1143-42d9-897e-5f9abb779b05	1	t	2025-11-13 14:58:09.067	2025-11-13 14:58:09.067
08d3cd3f-450f-42a2-8237-759260009483	Combustible	⛽	#5FE3D6	EXPENSE	0d1a874a-1143-42d9-897e-5f9abb779b05	2	t	2025-11-13 14:58:09.819	2025-11-13 14:58:09.819
b9bdf8b7-2a48-4c91-a0d4-d6531dd010fe	Transporte Público	🚌	#5FE3D6	EXPENSE	0d1a874a-1143-42d9-897e-5f9abb779b05	3	t	2025-11-13 14:58:10.509	2025-11-13 14:58:10.509
c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento	🅿️	#5FE3D6	EXPENSE	0d1a874a-1143-42d9-897e-5f9abb779b05	4	t	2025-11-13 14:58:11.267	2025-11-13 14:58:11.267
45fcff46-9ba3-4d70-8ecb-7b489e686089	Mantenimiento Vehículo	🔧	#5FE3D6	EXPENSE	0d1a874a-1143-42d9-897e-5f9abb779b05	5	t	2025-11-13 14:58:11.962	2025-11-13 14:58:11.962
8630e76d-10f4-4cd8-86c9-99e54578d806	Ropa	👕	#A8EFE0	EXPENSE	35adb535-b34b-4a6b-9e5f-bd9e690980e6	1	t	2025-11-13 14:58:12.81	2025-11-13 14:58:12.81
37114eb4-5ea3-40dc-85d1-40a4c04f9e2e	Electrónica	📱	#A8EFE0	EXPENSE	35adb535-b34b-4a6b-9e5f-bd9e690980e6	2	t	2025-11-13 14:58:13.554	2025-11-13 14:58:13.554
74211087-b7dd-4e17-af84-67fceb7f7fb2	Hogar	🏠	#A8EFE0	EXPENSE	35adb535-b34b-4a6b-9e5f-bd9e690980e6	3	t	2025-11-13 14:58:14.268	2025-11-13 14:58:14.268
8bf048e7-db0c-4663-bb02-e71121010acb	Libros	📚	#A8EFE0	EXPENSE	35adb535-b34b-4a6b-9e5f-bd9e690980e6	4	t	2025-11-13 14:58:14.996	2025-11-13 14:58:14.996
0a665b38-c7d3-410e-83ee-16220d67afdb	Otros	📦	#A8EFE0	EXPENSE	35adb535-b34b-4a6b-9e5f-bd9e690980e6	5	t	2025-11-13 14:58:15.761	2025-11-13 14:58:15.761
6a76e19f-95e7-430b-8a72-a737a48ee326	Cine	🎬	#F5A5A5	EXPENSE	4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	1	t	2025-11-13 14:58:16.544	2025-11-13 14:58:16.544
5ab64ec4-e9b2-40aa-9194-4563eb2e137a	Videojuegos	🎯	#F5A5A5	EXPENSE	4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	2	t	2025-11-13 14:58:17.313	2025-11-13 14:58:17.313
422ca76a-431e-4a42-95af-2ce3b520ebab	Streaming	📺	#F5A5A5	EXPENSE	4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	3	t	2025-11-13 14:58:18.006	2025-11-13 14:58:18.006
ff8e9314-e837-4c14-aa68-82e3599040dd	Eventos	🎪	#F5A5A5	EXPENSE	4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	4	t	2025-11-13 14:58:18.715	2025-11-13 14:58:18.715
1c14c5eb-ae2e-46c9-bf5d-f4b6f5e50dfd	Hobbies	🎨	#F5A5A5	EXPENSE	4e624b30-8f66-44fb-8d52-e6c9c0ddeaec	5	t	2025-11-13 14:58:19.549	2025-11-13 14:58:19.549
a0ed066c-28b0-4c9f-8d0c-e1dff98d1f82	Internet	📡	#C2B5EC	EXPENSE	4085e389-cc55-4db1-9147-6ede27ea05b7	1	t	2025-11-13 14:58:20.334	2025-11-13 14:58:20.334
73ebb75a-358b-42d1-99c6-03d6edf9e309	Electricidad	💡	#C2B5EC	EXPENSE	4085e389-cc55-4db1-9147-6ede27ea05b7	2	t	2025-11-13 14:58:21.084	2025-11-13 14:58:21.084
dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agua	💧	#C2B5EC	EXPENSE	4085e389-cc55-4db1-9147-6ede27ea05b7	3	t	2025-11-13 14:58:21.78	2025-11-13 14:58:21.78
86a558f9-1b3d-4a6f-8c37-f43f47cc37e4	Teléfono	☎️	#C2B5EC	EXPENSE	4085e389-cc55-4db1-9147-6ede27ea05b7	4	t	2025-11-13 14:58:22.47	2025-11-13 14:58:22.47
3bc2373a-cdf4-49c1-ab60-b2be72ed30a3	Gas	🔥	#C2B5EC	EXPENSE	4085e389-cc55-4db1-9147-6ede27ea05b7	5	t	2025-11-13 14:58:23.403	2025-11-13 14:58:23.403
c3a687fe-1351-4835-808b-30b9a858766c	Doctor	👨‍⚕️	#FDD0E0	EXPENSE	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	1	t	2025-11-13 14:58:24.326	2025-11-13 14:58:24.326
0064d19b-8a15-415d-a42d-eb3cce9f9e6a	Medicinas	💊	#FDD0E0	EXPENSE	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	2	t	2025-11-13 14:58:25.037	2025-11-13 14:58:25.037
485d0c52-ef60-4f1b-bb53-026384cf441c	Dentista	🦷	#FDD0E0	EXPENSE	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	3	t	2025-11-13 14:58:25.742	2025-11-13 14:58:25.742
245dfc99-a79d-4cd4-a13a-3f78a8770bdc	Psicólogo	🧠	#FDD0E0	EXPENSE	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	4	t	2025-11-13 14:58:26.577	2025-11-13 14:58:26.577
951db376-a405-4e06-a0fc-59005199261d	Seguros	🛡️	#FDD0E0	EXPENSE	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	5	t	2025-11-13 14:58:27.279	2025-11-13 14:58:27.279
eb2ec1da-372a-4ca8-8338-40f1a33956e1	Cursos	📖	#C1DFFF	EXPENSE	6447ac92-3671-42db-a337-2c1496f3863b	1	t	2025-11-13 14:58:27.975	2025-11-13 14:58:27.975
2bdc37f9-a8e4-4832-96a7-1925ef5bdb5e	Libros	📕	#C1DFFF	EXPENSE	6447ac92-3671-42db-a337-2c1496f3863b	2	t	2025-11-13 14:58:28.728	2025-11-13 14:58:28.728
e1590e0a-31e0-45c0-aec1-9a3169fab308	Matrícula	🎒	#C1DFFF	EXPENSE	6447ac92-3671-42db-a337-2c1496f3863b	3	t	2025-11-13 14:58:29.499	2025-11-13 14:58:29.499
36ec8a4b-4663-436b-a336-5fecd0630a1b	Materiales	✏️	#C1DFFF	EXPENSE	6447ac92-3671-42db-a337-2c1496f3863b	4	t	2025-11-13 14:58:30.27	2025-11-13 14:58:30.27
18d2b614-ba3e-42a6-8296-9b4cab11a67f	Conferencias	🎤	#C1DFFF	EXPENSE	6447ac92-3671-42db-a337-2c1496f3863b	5	t	2025-11-13 14:58:30.961	2025-11-13 14:58:30.961
5dc4095f-8a37-44f7-ac2f-c85dbb778c9b	Arriendo	🔑	#FFF5A6	EXPENSE	13df9098-65cd-4149-aac3-71a01cdc60c3	1	t	2025-11-13 14:58:31.654	2025-11-13 14:58:31.654
b872c1ea-c0a5-4504-acd7-f3c441ae5c6f	Hipoteca	🏘️	#FFF5A6	EXPENSE	13df9098-65cd-4149-aac3-71a01cdc60c3	2	t	2025-11-13 14:58:32.344	2025-11-13 14:58:32.344
ce437508-7b10-4e22-90a0-c2f871059191	Reparaciones	🔨	#FFF5A6	EXPENSE	13df9098-65cd-4149-aac3-71a01cdc60c3	3	t	2025-11-13 14:58:33.036	2025-11-13 14:58:33.036
ceaf8a20-ba5d-448a-8505-a374d7bf31fa	Muebles	🛋️	#FFF5A6	EXPENSE	13df9098-65cd-4149-aac3-71a01cdc60c3	4	t	2025-11-13 14:58:33.799	2025-11-13 14:58:33.799
5d8a1bb5-e76f-426e-b7b3-1e430a75b850	Decoración	🖼️	#FFF5A6	EXPENSE	13df9098-65cd-4149-aac3-71a01cdc60c3	5	t	2025-11-13 14:58:34.599	2025-11-13 14:58:34.599
e542223d-ac4d-42ab-92a5-ce8de8c7fbc4	Vuelos	🛫	#D4F1FF	EXPENSE	24efca6e-3784-4659-b4f8-4576e8c7d29c	1	t	2025-11-13 14:58:35.386	2025-11-13 14:58:35.386
95e3b131-693f-4788-a3f8-91fc27dfeacb	Hoteles	🏨	#D4F1FF	EXPENSE	24efca6e-3784-4659-b4f8-4576e8c7d29c	2	t	2025-11-13 14:58:36.277	2025-11-13 14:58:36.277
1c7b7ce2-ba7c-42f2-9fb1-348b4dcea233	Tours	🗺️	#D4F1FF	EXPENSE	24efca6e-3784-4659-b4f8-4576e8c7d29c	3	t	2025-11-13 14:58:37.125	2025-11-13 14:58:37.125
79f8d93c-e06a-44b1-a679-32511ee42949	Transporte Local	🚖	#D4F1FF	EXPENSE	24efca6e-3784-4659-b4f8-4576e8c7d29c	4	t	2025-11-13 14:58:37.842	2025-11-13 14:58:37.842
a030e5ca-1f71-4b2f-a17d-09518d93220a	Comida	🍽️	#D4F1FF	EXPENSE	24efca6e-3784-4659-b4f8-4576e8c7d29c	5	t	2025-11-13 14:58:38.603	2025-11-13 14:58:38.603
357b2f52-0d03-4976-a7c0-ee7f89b4aa52	Regalos	🎁	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	1	t	2025-11-13 14:58:39.317	2025-11-13 14:58:39.317
47723ae8-0fb1-432d-9fef-e1175ded70a8	Donaciones	❤️	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	2	t	2025-11-13 14:58:40.335	2025-11-13 14:58:40.335
737a303d-9b2e-43ad-bcb6-d3fb91fdc69f	Mascotas	🐕	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	3	t	2025-11-13 14:58:41.032	2025-11-13 14:58:41.032
8710b527-94d0-4521-b324-9e9943710d43	Impuestos	📋	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	4	t	2025-11-13 14:58:41.734	2025-11-13 14:58:41.734
9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Miscellaneous	🔮	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	5	t	2025-11-13 14:58:42.57	2025-11-13 14:58:42.57
1f9df622-e9b4-4f99-bf09-a97ded3f8330	Salario Base	💵	#55EFC4	INCOME	c65da8fe-6daf-4e66-9fdb-39123358a2b8	1	t	2025-11-13 14:58:43.32	2025-11-13 14:58:43.32
ee155e9e-9e89-4aff-9c60-70c57e78db86	Bonificación	🎁	#55EFC4	INCOME	c65da8fe-6daf-4e66-9fdb-39123358a2b8	2	t	2025-11-13 14:58:44.018	2025-11-13 14:58:44.018
b1d2cb1e-c0c9-48f1-82a8-9986ccf1b59c	Comisión	📈	#55EFC4	INCOME	c65da8fe-6daf-4e66-9fdb-39123358a2b8	3	t	2025-11-13 14:58:44.839	2025-11-13 14:58:44.839
086e4cb9-8207-4e22-b57d-243f70fcd9c1	Horas Extra	⏰	#55EFC4	INCOME	c65da8fe-6daf-4e66-9fdb-39123358a2b8	4	t	2025-11-13 14:58:45.542	2025-11-13 14:58:45.542
0c630333-2418-41a1-b651-3d81b3a7e52b	Ventas	📦	#FFC0CB	INCOME	e8527f53-64c1-4114-93a4-9278a0f65357	1	t	2025-11-13 14:58:46.236	2025-11-13 14:58:46.236
d58d0b60-4e78-495c-af3d-3b0171ea8ad2	Servicios	🛠️	#FFC0CB	INCOME	e8527f53-64c1-4114-93a4-9278a0f65357	2	t	2025-11-13 14:58:46.931	2025-11-13 14:58:46.931
ff24fb5f-eff3-4030-b02a-c5bb2a3f1960	Consultoría	📊	#FFC0CB	INCOME	e8527f53-64c1-4114-93a4-9278a0f65357	3	t	2025-11-13 14:58:47.622	2025-11-13 14:58:47.622
8fed153c-94ce-4767-accb-60e73a6e13b3	Freelance	💻	#FFC0CB	INCOME	e8527f53-64c1-4114-93a4-9278a0f65357	4	t	2025-11-13 14:58:48.492	2025-11-13 14:58:48.492
d060daf9-d91a-4b1a-98cf-05cca5dd44fc	Dividendos	📊	#A8D8FF	INCOME	ca1b7250-2ffc-4291-80ef-57d389e15253	1	t	2025-11-13 14:58:49.274	2025-11-13 14:58:49.274
6adc5c03-1fd8-4f05-8cc5-446f01eda85b	Intereses	💹	#A8D8FF	INCOME	ca1b7250-2ffc-4291-80ef-57d389e15253	2	t	2025-11-13 14:58:50.032	2025-11-13 14:58:50.032
457c1ade-7b8d-4fe2-95bd-c0555ae492aa	Ganancias Bolsa	📉	#A8D8FF	INCOME	ca1b7250-2ffc-4291-80ef-57d389e15253	3	t	2025-11-13 14:58:50.891	2025-11-13 14:58:50.891
d7172299-a181-49ff-b5ff-3e213166b806	Rentas	🏠	#A8D8FF	INCOME	ca1b7250-2ffc-4291-80ef-57d389e15253	4	t	2025-11-13 14:58:51.776	2025-11-13 14:58:51.776
7ccd9083-c45e-4da4-aac8-99cca2bd478e	Reembolsos	💸	#FFD93D	INCOME	aaae6292-5267-437e-a040-eea27338ba20	1	t	2025-11-13 14:58:52.566	2025-11-13 14:58:52.566
3fbc6e2a-939f-4e97-878e-971d1cd207a9	Herencias	👨‍👩‍👧‍👦	#FFD93D	INCOME	aaae6292-5267-437e-a040-eea27338ba20	2	t	2025-11-13 14:58:53.349	2025-11-13 14:58:53.349
f6244bd9-13bf-4660-be13-421f911c1f37	Apuestas	🎰	#FFD93D	INCOME	aaae6292-5267-437e-a040-eea27338ba20	3	t	2025-11-13 14:58:54.333	2025-11-13 14:58:54.333
6423646d-ce70-42ed-a956-3562548df88a	Otros	⭐	#FFD93D	INCOME	aaae6292-5267-437e-a040-eea27338ba20	4	t	2025-11-13 14:58:55.098	2025-11-13 14:58:55.098
2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago de deuda	💰	#DCD5E8	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	6	t	2025-11-21 14:33:28.318	2025-11-21 14:33:28.318
15105246-edc9-41df-ba6a-531c6f7cb324	Cobro de deuda	💸	#FFD93D	INCOME	aaae6292-5267-437e-a040-eea27338ba20	5	t	2025-11-21 14:33:29.199	2025-11-21 14:33:29.199
15839aaf-2716-48da-82ca-5e5d6ce8c20a	Préstamo otorgado	🤝	#FF9800	EXPENSE	d5123d46-4430-4a6e-8ef2-a9e395dd4061	7	t	2025-11-26 15:07:57.293	2025-11-26 15:07:57.293
4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Cobro de préstamo	💚	#4CAF50	INCOME	aaae6292-5267-437e-a040-eea27338ba20	6	t	2025-11-26 15:07:58.05	2025-11-26 15:07:58.05
8689ef01-6dad-4b0c-ae9d-0b6e230407d4	Transferencia entre cuentas	🔄	#4F46E5	TRANSFER	\N	1	t	2025-12-04 18:43:17.621	2025-12-04 18:43:17.621
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
\.


--
-- Data for Name: expense_participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."expense_participants" ("id", "expense_id", "user_id", "amount_owed", "percentage", "shares", "is_paid", "paid_date", "paid_amount") FROM stdin;
2d6c4551-9650-4ba2-bbb8-588a0b51ce06	ea9ef05d-3077-437f-a6c6-041ad9f51932	346b32d1-b21f-4ce9-ac27-a69e67abb103	580616.40	\N	\N	f	\N	\N
ddbf3a4c-6c83-455e-9c80-83ad1ae79e5b	3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	346b32d1-b21f-4ce9-ac27-a69e67abb103	3857.70	\N	\N	f	\N	\N
eada9dd7-1f3d-48a0-99e1-3d1ea5953fdf	4c9e222c-8b40-4cf6-8816-7ff5348f3a71	346b32d1-b21f-4ce9-ac27-a69e67abb103	12320.00	\N	\N	f	\N	\N
b35178b1-b9fc-4621-873f-565690e5b6e5	c79948dc-eeb2-47a3-b510-e23749afbe8f	346b32d1-b21f-4ce9-ac27-a69e67abb103	36043.00	\N	\N	f	\N	\N
a53462db-f0af-40e9-9962-53f475205db0	35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2443.00	\N	\N	f	\N	\N
449991dd-a21b-4ef5-80d1-373012dd9f9c	f933114d-930a-4bce-b125-0efb4a57fd9f	346b32d1-b21f-4ce9-ac27-a69e67abb103	21000.00	\N	\N	f	\N	\N
80b887d2-98d6-4fc0-a661-efc4186bd3a6	fbeb7792-a9a4-456a-954e-92ae429165bc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2520.00	\N	\N	f	\N	\N
8693f661-254f-4610-af1a-02fdd4ce6c65	e778dea8-7118-458b-a395-db29bac53239	346b32d1-b21f-4ce9-ac27-a69e67abb103	1190.00	\N	\N	f	\N	\N
18bfe198-648c-4263-b1e4-4e8789984737	803a0356-284a-4a30-9547-fd80918575f3	346b32d1-b21f-4ce9-ac27-a69e67abb103	20365.80	\N	\N	f	\N	\N
306e2862-c868-4012-9f01-8598d14036fe	7d8e34fe-a721-4f87-a832-29b8762195f1	346b32d1-b21f-4ce9-ac27-a69e67abb103	7000.00	\N	\N	f	\N	\N
0d493e83-b362-4e83-9819-c7aedd5521eb	bb4da131-5047-4cb2-baf9-9eaa47e33dc2	346b32d1-b21f-4ce9-ac27-a69e67abb103	12331.90	\N	\N	f	\N	\N
f5a9491f-0c95-48ce-8cf6-7d062653acf5	ebcbb572-de8d-4a37-8a13-de78c9548bc1	346b32d1-b21f-4ce9-ac27-a69e67abb103	214610.20	\N	\N	f	\N	\N
39abf96c-bf47-4b45-a66d-e30c503caffa	68b3dff6-7db5-4fdf-a522-269f760db361	346b32d1-b21f-4ce9-ac27-a69e67abb103	46284.70	\N	\N	f	\N	\N
7565daf2-4788-474e-929f-91edd82d1c31	93233d94-a005-40ac-8f8a-422a26a0828a	346b32d1-b21f-4ce9-ac27-a69e67abb103	73178.00	\N	\N	f	\N	\N
2ecbaa53-c37e-4d4f-8ec2-a9b0792dc961	74e7fea1-2988-4415-919d-57b0e13cd1d1	346b32d1-b21f-4ce9-ac27-a69e67abb103	5740.00	\N	\N	f	\N	\N
c95f7bc9-2daf-4548-bfe9-4f6e6a383a08	552f31a9-1dbe-44d1-bc52-6221ff3b180d	346b32d1-b21f-4ce9-ac27-a69e67abb103	4473.00	\N	\N	f	\N	\N
429553ce-0833-4547-94a0-a872f237f7fa	8f79cf8d-2743-465d-a084-2a1c40ea156d	346b32d1-b21f-4ce9-ac27-a69e67abb103	4503.80	\N	\N	f	\N	\N
1b7b19b8-ca09-47f5-9d28-653d2928ef2f	1842b47c-b8f0-4579-8166-4c699cbf6a48	346b32d1-b21f-4ce9-ac27-a69e67abb103	10920.00	\N	\N	f	\N	\N
4ee16f58-e876-42dd-92ac-e53746399872	f3e2892b-db6c-423d-aa28-c27373b2c145	346b32d1-b21f-4ce9-ac27-a69e67abb103	2275.00	\N	\N	f	\N	\N
7fa1dc63-1471-4bfc-9227-96dc9b56214d	e22492b5-6775-40a4-92bb-99b9b4757e07	346b32d1-b21f-4ce9-ac27-a69e67abb103	1995.00	\N	\N	f	\N	\N
ae14c574-7543-4ea1-aca1-c95166aaee2c	45e81ef3-55fc-4d06-8cc9-40beae0195e4	346b32d1-b21f-4ce9-ac27-a69e67abb103	9030.00	\N	\N	f	\N	\N
073f9c0f-2938-40f3-b3c6-7f74c2b712c5	4569af55-fb0a-4766-aa37-eddb2cda2ed6	346b32d1-b21f-4ce9-ac27-a69e67abb103	17885.00	\N	\N	f	\N	\N
a198d5dc-4c6a-41b0-8d0e-2b1a0abbf2f6	18ce2bd5-86f8-481a-953f-4a5a1e898aad	346b32d1-b21f-4ce9-ac27-a69e67abb103	8386.00	\N	\N	f	\N	\N
00721595-68a0-41b6-8d5d-3eaa983c680d	ba47ca58-eb1c-408a-81e0-698db5373791	346b32d1-b21f-4ce9-ac27-a69e67abb103	14345.80	\N	\N	f	\N	\N
a7b3a05b-aea2-430c-a069-3cacdfca8ba6	2cb86c12-69e2-47b5-93cd-bbcc44321ef3	346b32d1-b21f-4ce9-ac27-a69e67abb103	2723.00	\N	\N	f	\N	\N
70cf4182-dbb1-4d5d-ab87-8a213335dd2b	b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2841.30	\N	\N	f	\N	\N
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
f7f5610b-80c5-4d6c-95e2-9435ade9fba0	1548acaf-10b4-4ed7-88a7-6dd07489a58a	346b32d1-b21f-4ce9-ac27-a69e67abb103	12464.90	\N	\N	f	\N	\N
ed4539da-5ffd-40c3-af84-7fd5b215a915	47754d59-4b36-422f-9aef-51a2a497ac3e	346b32d1-b21f-4ce9-ac27-a69e67abb103	9030.00	\N	\N	f	\N	\N
7b7fc27a-d66b-4f47-98c0-b8aff0947a88	7b160b4a-383a-4766-97be-309455f9dd17	346b32d1-b21f-4ce9-ac27-a69e67abb103	5622.40	\N	\N	f	\N	\N
521e797f-c5e0-42c8-aa71-60d2c6c05e2e	4a9d901f-0935-4abf-a385-fdf4d39b7eb5	346b32d1-b21f-4ce9-ac27-a69e67abb103	385.00	\N	\N	f	\N	\N
08fc9b24-5f02-441e-98c4-1e8ede719094	d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	346b32d1-b21f-4ce9-ac27-a69e67abb103	9933.00	\N	\N	f	\N	\N
d063684a-9a2e-44c9-9a53-ef17f0b4ea44	6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	346b32d1-b21f-4ce9-ac27-a69e67abb103	23517.20	\N	\N	f	\N	\N
f7094d12-c956-4940-b686-a45ef58ca1d6	18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	346b32d1-b21f-4ce9-ac27-a69e67abb103	9450.00	\N	\N	f	\N	\N
073a8675-52ed-4170-9c21-c9f1ab76b290	b72074b4-13a7-4040-9e57-ff0c0b8616f5	346b32d1-b21f-4ce9-ac27-a69e67abb103	30079.00	\N	\N	f	\N	\N
f6700f59-c566-4a67-910b-295b1e767915	7fa4a7f7-a048-4e21-8fdd-47e190568efa	346b32d1-b21f-4ce9-ac27-a69e67abb103	14847.70	\N	\N	f	\N	\N
51b3dddc-9060-40ae-b8a0-1b1f43dcde5b	2623f91f-e469-42e8-82c5-2d695118d5e5	346b32d1-b21f-4ce9-ac27-a69e67abb103	1400.00	\N	\N	f	\N	\N
1e7178bc-8f90-45a7-a2d7-51bf0c4f69ea	7d5dc01b-a747-4119-a29a-46138e7d511a	346b32d1-b21f-4ce9-ac27-a69e67abb103	10850.00	\N	\N	f	\N	\N
130af1f3-04a7-4bb6-85b5-52b72752f3e7	2d20baaf-0896-4bb0-a402-182517e677bb	346b32d1-b21f-4ce9-ac27-a69e67abb103	42849.10	\N	\N	f	\N	\N
d8df3cfc-939d-4344-8caf-a687b8fda268	572273cc-a7f4-42c2-8acc-80357317cc62	346b32d1-b21f-4ce9-ac27-a69e67abb103	25039.00	\N	\N	f	\N	\N
57ca1fb4-f2eb-446f-9a1d-c299061cc0d7	91b1b337-3960-4b9c-8a47-e4ea0e6989fd	346b32d1-b21f-4ce9-ac27-a69e67abb103	3915.10	\N	\N	f	\N	\N
37c8a8d3-9281-4bde-b86e-6f1e5d4e93ac	dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	346b32d1-b21f-4ce9-ac27-a69e67abb103	11116.00	\N	\N	f	\N	\N
702da7a4-247c-448e-be53-24cbc69b8548	5f1f4bf4-9173-47b0-b2cf-61e83dab816b	346b32d1-b21f-4ce9-ac27-a69e67abb103	5775.00	\N	\N	f	\N	\N
ef7da687-512e-4a8e-b6fb-e0929b26db39	5f0afa26-d88b-4fbc-9f6b-218fff7f4928	346b32d1-b21f-4ce9-ac27-a69e67abb103	4396.00	\N	\N	f	\N	\N
9f9a7143-5de4-4492-b303-ed6bc05ca209	d7dfb498-63ee-475c-bec0-3f56ee6e0a78	346b32d1-b21f-4ce9-ac27-a69e67abb103	2016.00	\N	\N	f	\N	\N
2f7ab06d-0f28-425c-820a-9bcb785a241d	437cbb46-b4e4-4fa8-9856-6c7a23a2c691	346b32d1-b21f-4ce9-ac27-a69e67abb103	12632.20	\N	\N	f	\N	\N
e751abd1-bb77-4541-81f8-f7ca8d155861	98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	346b32d1-b21f-4ce9-ac27-a69e67abb103	3493.00	\N	\N	f	\N	\N
16b926fe-5668-407f-b140-d03ed24e8b9b	f766dd50-9d76-4c35-b1f0-31a1665ff17b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9148.20	\N	\N	f	\N	\N
502d6fa5-d534-4f59-a87d-e044467772ba	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	48000.00	\N	\N	f	\N	\N
c0cbf881-a74a-483f-bb94-f69378603ba2	e4c29aa9-74ba-4386-b89a-fb0220e274da	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	5000.00	\N	\N	f	\N	\N
ca172261-a23a-4153-96d2-a5f5f9d39c89	b91e5888-a0a1-46ca-beb5-98348337bd53	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	24000.00	\N	\N	f	\N	\N
551acc60-82c7-4519-bbef-bd95fba94bbe	e4c29aa9-74ba-4386-b89a-fb0220e274da	b88abd1d-92fe-4818-ba01-95681f09b96d	5000.00	\N	\N	t	2025-11-25 13:00:14.647	5000.00
97e66cea-89f4-4f69-b5d4-3aa9a6bc999e	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	b88abd1d-92fe-4818-ba01-95681f09b96d	32000.00	\N	\N	t	2025-11-25 13:01:38.54	32000.00
e292a5b0-b114-47bd-93a6-36865e65599e	b91e5888-a0a1-46ca-beb5-98348337bd53	b88abd1d-92fe-4818-ba01-95681f09b96d	16000.00	\N	\N	t	2025-11-25 13:01:38.54	16000.00
83b0a076-0464-47ed-ae7b-d9d26c116a05	765e5daa-b241-482e-a7d6-d5a84bb0e8cf	346b32d1-b21f-4ce9-ac27-a69e67abb103	135643.20	\N	\N	f	\N	\N
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
fa26b41a-263a-42a0-9c66-3cb93aad050f	75181c74-3105-4be0-8321-b5b70231fe3a	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	f	\N	\N
d0055e91-ecbd-4d93-b22e-5cab2ae63bac	3dc18619-27fc-48a5-9d7a-9f4b757d80ce	346b32d1-b21f-4ce9-ac27-a69e67abb103	1820.00	\N	\N	f	\N	\N
6f716784-99f2-443d-8ad6-996eb60421e7	ca6927eb-05a0-44fa-9f68-7df6019e30de	346b32d1-b21f-4ce9-ac27-a69e67abb103	5250.00	\N	\N	f	\N	\N
849599dc-c5fb-4600-8033-b5795b849111	c5c40a95-7b3f-46a5-aa6b-baeae48bac97	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3057.00	\N	\N	f	\N	\N
379e691f-7bc5-4f1c-99f1-ce0e7cbed8e6	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	60000.00	\N	\N	f	\N	\N
a4c0bbfa-2cf7-42f1-a52a-87f883f1e66e	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	b88abd1d-92fe-4818-ba01-95681f09b96d	40000.00	\N	\N	f	\N	\N
85476364-30e2-40a9-a5d3-55bb245b051f	ae157bab-ec8a-47c9-bc09-f6a8cc86d872	346b32d1-b21f-4ce9-ac27-a69e67abb103	53200.00	\N	\N	f	\N	\N
9cc1aa66-572f-48b5-9d00-bb596e841a23	050960db-eb58-4b40-9491-43e3bd07d6b8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3300.00	\N	\N	f	\N	\N
9ee45fe1-b0b9-4e5b-b3c8-bdd4f5b89e7c	132afb3f-2d58-49c6-8db4-35acf85ed773	346b32d1-b21f-4ce9-ac27-a69e67abb103	0.00	\N	\N	f	\N	\N
d24e889d-3382-4ad6-9b13-9784d75e9fbd	dac8989b-541c-4875-a086-d347fb1168d0	346b32d1-b21f-4ce9-ac27-a69e67abb103	10500.00	\N	\N	f	\N	\N
6239f018-0620-4a69-8373-db839544df1a	5c595cc5-bb18-4234-8143-afe9185268f7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2058.00	\N	\N	f	\N	\N
81630e34-c1c0-4afc-8294-c93f4220e62e	a92509e9-742c-4594-ad4c-3698ad42f3fb	346b32d1-b21f-4ce9-ac27-a69e67abb103	14862.40	\N	\N	f	\N	\N
f2d868cc-cc48-40e3-ac3e-290894500f22	2ec956fb-f2fd-4845-9a27-6e314d8d9335	346b32d1-b21f-4ce9-ac27-a69e67abb103	9800.00	\N	\N	f	\N	\N
5cfa9458-c77c-4688-b291-2c14ee835f43	567b3b22-06c7-43f5-bfd7-439001a241fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	14350.00	\N	\N	f	\N	\N
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
e7fd08ba-53e1-43b2-93e1-116f2698fe64	132afb3f-2d58-49c6-8db4-35acf85ed773	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4550.00	\N	\N	t	2025-12-01 13:49:47.615	4550.00
f8770b43-f16e-4f76-801b-0bebb253ef60	dac8989b-541c-4875-a086-d347fb1168d0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	4500.00	\N	\N	t	2025-12-01 13:49:47.615	4500.00
03f75f73-d0a0-4f07-ac1c-b2497a060615	1410a808-8dfa-4536-ba2e-96ed415546b3	346b32d1-b21f-4ce9-ac27-a69e67abb103	581048.30	\N	\N	f	\N	\N
8a660e0a-9eee-4097-bf87-e326bbcffdd0	1410a808-8dfa-4536-ba2e-96ed415546b3	d8c5e32f-c64d-4437-b302-3a64d8f3f116	249020.70	\N	\N	f	\N	\N
a34144b9-0971-4a83-9e88-29fef1e8bfb0	d432f78f-4419-4e3e-a9b4-45b29139169a	346b32d1-b21f-4ce9-ac27-a69e67abb103	5349.40	\N	\N	f	\N	\N
09f96479-55ac-484a-9d93-f5828d11fdb6	d432f78f-4419-4e3e-a9b4-45b29139169a	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2292.60	\N	\N	f	\N	\N
212d62f2-b9b2-4aa0-ab42-c5121706263e	95a36900-4535-4104-939b-3dea76745659	346b32d1-b21f-4ce9-ac27-a69e67abb103	5775.00	\N	\N	f	\N	\N
af61a06b-9517-49a6-a104-bab991d25f48	95a36900-4535-4104-939b-3dea76745659	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2475.00	\N	\N	f	\N	\N
0c3a80d8-d7af-4681-9972-085608a1710b	4d389beb-3ce1-4777-8347-fb8313ac388e	346b32d1-b21f-4ce9-ac27-a69e67abb103	36075.90	\N	\N	f	\N	\N
6d7b032e-9eb0-43e9-88d8-c67a85f95764	4d389beb-3ce1-4777-8347-fb8313ac388e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	15461.10	\N	\N	f	\N	\N
0cfc8951-fdd9-4fe0-b307-fc13e2a6bff8	4f40afb8-d635-43dd-91a0-eadcacbdf008	346b32d1-b21f-4ce9-ac27-a69e67abb103	45318.00	\N	\N	f	\N	\N
5ffc3d92-35a9-4a45-9df2-fcbd18a1c30a	4f40afb8-d635-43dd-91a0-eadcacbdf008	d8c5e32f-c64d-4437-b302-3a64d8f3f116	19422.00	\N	\N	f	\N	\N
8d435780-a069-458a-9831-b83a159536dd	d7b0a41b-c9ef-4360-a958-a86a250ad711	346b32d1-b21f-4ce9-ac27-a69e67abb103	25410.00	\N	\N	f	\N	\N
5b171c98-6ac3-4b65-85c2-67b2f54e5d0b	d7b0a41b-c9ef-4360-a958-a86a250ad711	d8c5e32f-c64d-4437-b302-3a64d8f3f116	10890.00	\N	\N	f	\N	\N
2026f065-07b5-4dba-ac68-eeaf67318892	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	346b32d1-b21f-4ce9-ac27-a69e67abb103	21368.20	\N	\N	f	\N	\N
2ebba512-d5ca-445c-951b-185609c6f780	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	d8c5e32f-c64d-4437-b302-3a64d8f3f116	9157.80	\N	\N	f	\N	\N
42f4bfa9-469a-41dc-889e-14e9e9bc1c20	aeeb577b-56f1-44ff-a38f-b03cc638b92e	346b32d1-b21f-4ce9-ac27-a69e67abb103	8400.00	\N	\N	f	\N	\N
c2db3aed-23f0-45d0-9b6d-748821eb5760	aeeb577b-56f1-44ff-a38f-b03cc638b92e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3600.00	\N	\N	f	\N	\N
84d75be9-80a7-4d6c-a5f4-1f3bd67c22d2	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	346b32d1-b21f-4ce9-ac27-a69e67abb103	12600.00	\N	\N	f	\N	\N
75e9dd28-0bf4-46ec-8914-706dcbaa178c	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	5400.00	\N	\N	f	\N	\N
09701822-4855-4585-a317-dd81046cb6b1	bcf29d50-0335-412a-850f-6606c6239140	346b32d1-b21f-4ce9-ac27-a69e67abb103	7666.40	\N	\N	f	\N	\N
5a3f1cae-3d44-4445-a1e6-41ce3c7962e4	bcf29d50-0335-412a-850f-6606c6239140	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3285.60	\N	\N	f	\N	\N
8f406e29-8257-4a05-a851-9ef6f79cc8d8	cb79af54-88d1-4d25-b3e2-04ab4d6469de	346b32d1-b21f-4ce9-ac27-a69e67abb103	6612.20	\N	\N	f	\N	\N
20604cb4-d3f7-4623-824e-395ec10ad1ba	cb79af54-88d1-4d25-b3e2-04ab4d6469de	d8c5e32f-c64d-4437-b302-3a64d8f3f116	2833.80	\N	\N	f	\N	\N
2b7fb0be-06c6-47c6-9e92-1f08f0eeb642	c4d60af0-5577-4aed-b163-37bc4bda34d5	346b32d1-b21f-4ce9-ac27-a69e67abb103	8560.30	\N	\N	f	\N	\N
e018bc7a-304b-4aab-8e4c-ad9a096b143f	c4d60af0-5577-4aed-b163-37bc4bda34d5	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3668.70	\N	\N	f	\N	\N
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
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transactions" ("id", "user_id", "account_id", "type", "amount", "category_id", "description", "date", "receipt_url", "payee", "payer", "to_account_id", "shared_expense_id", "created_at", "updated_at", "loan_id") FROM stdin;
96136e2a-5499-45b7-a525-6dfd955872cf	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11980.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Vaso de la Licuadora d	2025-11-03 21:00:00		Mercadolibre		\N	18ce2bd5-86f8-481a-953f-4a5a1e898aad	2025-11-18 16:53:04.49	2025-11-19 12:17:21.582	\N
860eaf70-b19c-48bf-b985-48894956d57c	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	20494.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Potes de vidrio	2025-11-03 12:00:00		Mercadolibre		\N	ba47ca58-eb1c-408a-81e0-698db5373791	2025-11-18 16:53:14.681	2025-11-19 12:20:18.289	\N
9e6d877d-2108-4efb-a79c-ff24aa55315c	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3890.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Compras varias	2025-11-15 15:08:00		Lider Express	Jesus Leon Rangel	\N	2cb86c12-69e2-47b5-93cd-bbcc44321ef3	2025-11-19 15:09:37.935	2025-11-19 15:09:37.935	\N
71b9d2ab-985e-4b2a-babd-f4de05853ab0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15880.00	422ca76a-431e-4a42-95af-2ce3b520ebab	Netflix	2025-11-14 06:00:00		Netflix		\N	dc2ac9e8-03d7-4b79-9666-2ca9eea3f5b9	2025-11-18 17:22:05.031	2025-11-21 12:38:28.226	\N
f7224a43-debf-4aae-9301-987d0bc4a957	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8250.00	422ca76a-431e-4a42-95af-2ce3b520ebab	Spotify	2025-11-01 06:00:00		Spotify		\N	5f1f4bf4-9173-47b0-b2cf-61e83dab816b	2025-11-18 17:20:17.446	2025-11-21 12:39:09.904	\N
e36229fe-2250-4b54-96f1-fa9dc72b8bad	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	829452.00	b872c1ea-c0a5-4504-acd7-f3c441ae5c6f	Cuota credito hipotecario	2025-11-03 16:42:00		Banco Scotiabank	Jesus Leon Rangel	\N	ea9ef05d-3077-437f-a6c6-041ad9f51932	2025-11-18 16:43:29.042	2025-11-18 16:43:29.042	\N
201db698-37b2-4f6d-9aa1-9f5b1e4db038	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	29070.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	compras varias aliexpress	2025-11-11 03:00:00		Aliexpress		\N	\N	2025-11-18 16:53:28.071	2025-11-18 16:56:45.676	\N
c46b2db9-4eea-40bb-a674-aedd6f9f14c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2690.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripción google drive	2025-11-10 03:00:00		Google		\N	\N	2025-11-18 16:53:23.521	2025-11-18 16:57:44.144	\N
d1dcf649-7608-4832-a169-edeb31a23351	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	18196.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Capsula para fermentar aliexpress	2025-11-08 03:00:00		Aliexpress		\N	\N	2025-11-18 16:53:18.921	2025-11-18 16:58:18.21	\N
7830902c-e299-42aa-a7cd-338cdef047a2	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24549.00	86a558f9-1b3d-4a6f-8c37-f43f47cc37e4	Claro Tlf	2025-11-02 03:00:00		Claro		\N	\N	2025-11-18 16:52:54.135	2025-11-18 17:02:07.576	\N
52ed71e2-f25a-42e3-af23-ef665a33752f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	29094.00	4085e389-cc55-4db1-9147-6ede27ea05b7	Internet	2025-11-05 00:00:00	\N	\N	\N	\N	803a0356-284a-4a30-9547-fd80918575f3	2025-11-18 17:21:12.446	2025-11-18 17:21:12.446	\N
5917db38-79d5-463e-9d9c-93a646b37c8c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	104540.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Carnes del mes	2025-11-14 03:00:00		El Gocho de las Carnes		\N	93233d94-a005-40ac-8f8a-422a26a0828a	2025-11-18 17:22:16.729	2025-11-18 17:49:27.015	\N
4e2f33d4-41cf-47f9-8a3f-9e207f01f547	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	306586.00	bb80c962-8810-4dd6-8aa7-6277041dae78	Cuota Cleopatra	2025-11-13 03:00:00		Banco Internacional		\N	ebcbb572-de8d-4a37-8a13-de78c9548bc1	2025-11-18 17:21:44.751	2025-11-18 18:25:31.775	\N
2e762402-3928-4aaa-b718-1a0493c7f516	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	10000.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-09 03:00:00		Shell		\N	7d8e34fe-a721-4f87-a832-29b8762195f1	2025-11-18 17:21:22.94	2025-11-18 18:26:21.289	\N
3e9350bc-050a-4046-8969-d40e5b50bf4d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3600.00	74211087-b7dd-4e17-af84-67fceb7f7fb2	Cabezal de ducha	2025-11-04 03:00:00		Super Lida (Chinos)		\N	fbeb7792-a9a4-456a-954e-92ae429165bc	2025-11-18 17:20:51.71	2025-11-18 18:27:41.724	\N
991ccb74-8420-43e0-9286-359a724d27ab	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	3490.00	74211087-b7dd-4e17-af84-67fceb7f7fb2	Cortina del Baño	2025-11-03 03:00:00		Casa ideas		\N	35bdead3-dac1-4fca-b9b2-d579b7ac0f1f	2025-11-18 17:20:27.049	2025-11-18 18:28:23.711	\N
82145efb-6977-456c-a9c1-e1c1c55b834e	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	49990.00	74211087-b7dd-4e17-af84-67fceb7f7fb2	Ollas	2025-11-03 03:00:00		Mercadolibre		\N	\N	2025-11-18 17:19:45.594	2025-11-18 18:29:00.984	\N
eacd6091-41b3-46b5-ad18-53e0ed717c53	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	18270.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	Vitamina D	2025-11-03 03:00:00		Farmacia de Barrio		\N	\N	2025-11-18 17:20:41.607	2025-11-18 18:32:14.435	\N
71bbe3c3-976c-4bf2-8c59-be5bd5351dd0	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	30000.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	Fersitol y Vitamina D	2025-11-03 06:00:00		Farmacias Olga		\N	f933114d-930a-4bce-b125-0efb4a57fd9f	2025-11-18 17:20:37.371	2025-11-18 18:32:52.156	\N
83b85547-d445-43ac-946b-99e677cc2aea	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	66121.00	4085e389-cc55-4db1-9147-6ede27ea05b7	Luz	2025-11-13 03:00:00		Enel		\N	68b3dff6-7db5-4fdf-a522-269f760db361	2025-11-18 17:21:54.174	2025-11-18 18:33:27.889	\N
d282d0d7-003f-4ee8-8762-9ac035ce5763	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	17617.00	4085e389-cc55-4db1-9147-6ede27ea05b7	Agua de la casa	2025-11-13 03:00:00		Aguas andinas 		\N	bb4da131-5047-4cb2-baf9-9eaa47e33dc2	2025-11-18 17:21:33.73	2025-11-18 18:34:01.736	\N
a37b800e-9326-439b-b44f-931d8586160a	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	1700.00	737a303d-9b2e-43ad-bcb6-d3fb91fdc69f	Bolsas de dustin	2025-11-04 06:00:00		Super Lida (Chinos)		\N	e778dea8-7118-458b-a395-db29bac53239	2025-11-18 17:21:02.458	2025-11-18 18:35:18.175	\N
d0cbd012-ca26-4237-a8ab-4e7826aa0a1d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	5511.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Potes redondos vidrio	2025-11-03 06:00:00		Mercadolibre		\N	3f1fba2c-90c9-4ced-a3a2-47f88f8fe456	2025-11-18 17:19:41.52	2025-11-18 18:36:22.351	\N
63774e8b-c45c-4d10-8888-0a11f28a5a90	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6434.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Mani y Frutos Secos	2025-11-08 03:00:00		Tostaduria el mani	Jesus Leon Rangel	\N	8f79cf8d-2743-465d-a084-2a1c40ea156d	2025-11-18 19:37:52.458	2025-11-18 19:49:25.573	\N
25d64a0c-821d-43f8-9dda-0ee611b88750	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6390.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	compras varias	2025-11-08 03:00:00		Lider express	Jesus Leon Rangel	\N	552f31a9-1dbe-44d1-bc52-6221ff3b180d	2025-11-18 19:37:40.84	2025-11-18 19:50:06.376	\N
e30ebf2c-e85a-48eb-9eaa-ec07ef1218c5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8200.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Aguacates y Cambur	2025-11-01 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	74e7fea1-2988-4415-919d-57b0e13cd1d1	2025-11-18 19:37:28.69	2025-11-18 19:51:16.153	\N
6317cdaa-abe8-4e22-bac7-f881ba9f9bb2	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	3250.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	f3e2892b-db6c-423d-aa28-c27373b2c145	2025-11-18 19:38:16.427	2025-11-18 19:47:47.382	\N
fc2b4492-d292-4052-a730-2b1078c0e64a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	4059.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento Isidora Goyenechea	2025-11-14 18:12:00		Estacionamiento Isidora Goyenechea	Jesus Leon Rangel	\N	b58a8947-4792-4cb7-b92b-fff4ddd5c7fc	2025-11-19 15:12:24.491	2025-11-19 15:33:34.271	\N
75cbca77-3b74-4a6d-999a-f5bbfcf643f2	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	17807.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Compras varias 	2025-11-17 18:34:00		Lider Express	Jesus Leon Rangel	\N	1548acaf-10b4-4ed7-88a7-6dd07489a58a	2025-11-19 15:34:46.529	2025-11-19 15:35:56.425	\N
f1d50213-db84-459c-964c-ac9680e0cabc	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	150000.00	5ec041fc-8c57-4f46-a1e9-80ffc95bf107	DCA crypto	2025-11-03 16:54:00		OrionX	Jesus Leon Rangel	\N	\N	2025-11-19 16:54:52.543	2025-11-19 16:54:52.543	\N
d45f4ca4-1bde-4562-81f2-f02a9af9c3aa	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	9107.00	a432fac5-4158-46f6-9ba1-cb2067174a2c	Comision cuenta corriente	2025-11-03 16:58:00		Scotiabank	Jesus Leon Rangel	\N	\N	2025-11-19 16:59:16.165	2025-11-19 16:59:16.165	\N
d175e7cd-ffc1-4e66-832c-f986102e8874	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	11786.00	c3a687fe-1351-4835-808b-30b9a858766c	Examenes de sangre	2025-11-15 17:05:00		Clinica Davila	Jesus Leon Rangel	\N	\N	2025-11-19 17:06:20.645	2025-11-19 17:06:20.645	\N
ca4644e1-8176-4644-94e5-6865d9daedb7	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	550.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento	2025-11-15 17:06:00		Mall Plaza Egaña	Jesus Leon Rangel	\N	4a9d901f-0935-4abf-a385-fdf4d39b7eb5	2025-11-19 17:07:30.683	2025-11-19 17:07:30.683	\N
4e4bc9c9-15b4-4e2b-a7d2-50b995f18a99	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	33596.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Compras moldes torta, ejercicios	2025-11-19 17:09:00		MercadoLibre	Jesus Leon Rangel	\N	6dbe7912-f716-4f1c-8aa1-79dc5e0cf156	2025-11-19 17:10:38.207	2025-11-19 17:10:38.207	\N
37ab8687-c406-45bc-81cd-71974f2c9b17	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	21211.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Decoracion navidad (pelotas de Mickey)	2025-11-19 20:26:00		Ripley	Jesus Leon Rangel	\N	7fa4a7f7-a048-4e21-8fdd-47e190568efa	2025-11-20 20:27:31.803	2025-11-20 20:27:31.803	\N
7ba04918-3f1e-4d60-b845-3d7ede1667d5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2000.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento mall	2025-11-19 20:28:00		Mall Parque Arauco	Jesus Leon Rangel	\N	2623f91f-e469-42e8-82c5-2d695118d5e5	2025-11-20 20:29:02.166	2025-11-20 20:29:02.166	\N
ff7cbd23-fd29-4a5c-a82c-db51344a350e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	15500.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-19 20:29:00		Shell	Jesus Leon Rangel	\N	7d5dc01b-a747-4119-a29a-46138e7d511a	2025-11-20 20:30:00.764	2025-11-20 20:30:00.764	\N
9f847ae5-9526-4101-8ed3-8b6688eb0f3e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	61213.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Cosas que faltaban desodorante,  papel, jabon etc	2025-11-20 20:31:00		Lider	Jesus Leon Rangel	\N	2d20baaf-0896-4bb0-a402-182517e677bb	2025-11-20 20:31:41.529	2025-11-20 20:31:41.529	\N
18ad6b45-3a19-4ed8-8011-3bd43f4a8067	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	35770.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	CoenzimaQ10	2025-11-20 20:45:00		MixGreens	Jesus Leon Rangel	\N	572273cc-a7f4-42c2-8acc-80357317cc62	2025-11-20 20:45:55.091	2025-11-20 20:45:55.091	\N
c9c2a224-b28e-4eef-b3dd-7ca80e66b2bf	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	10000.00	c27aee6a-2091-4e88-9135-cd0a10323bc4	Prueba 2	2025-11-25 12:58:28.078		Prueba 2	Pedro Perez	\N	e4c29aa9-74ba-4386-b89a-fb0220e274da	2025-11-25 12:58:30.271	2025-11-25 12:58:30.271	\N
afd93b8d-6ba2-444b-bb2b-479b63cc376d	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3935.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Otras compras	2025-11-21 18:19:00		Sb 778	Jesus Leon Rangel	\N	\N	2025-11-25 18:19:55.968	2025-11-25 18:19:55.968	\N
cd5f249f-e6fc-4988-bda6-c0015edc011f	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	1995.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Uber One	2025-11-22 18:20:00		Uber	Jesus Leon Rangel	\N	\N	2025-11-25 18:21:11.815	2025-11-25 18:21:11.815	\N
db4c1cec-f65b-4a22-a1f5-797e872cff80	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	193776.00	c9b04f8d-867a-42cf-ba91-e5229101f119	Gastos Comunes Octubre	2025-11-24 18:28:00		Comunidad Feliz	Jesus Leon Rangel	\N	765e5daa-b241-482e-a7d6-d5a84bb0e8cf	2025-11-25 18:28:33.469	2025-11-25 18:28:33.469	\N
32946ca3-60e7-4862-a171-076495bd94ad	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15000.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-24 18:30:00		Shell	Jesus Leon Rangel	\N	75181c74-3105-4be0-8321-b5b70231fe3a	2025-11-25 18:30:28.584	2025-11-25 18:30:28.584	\N
b3b287d4-1d04-45d6-9cc5-8fbcd6f98bb4	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-26 12:30:34.658	2025-11-26 12:30:34.658	\N
58e942dc-3242-4758-a7e4-c830a334bb92	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	80000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Juan	2025-11-26 15:00:00			Juan	\N	\N	2025-11-26 15:31:59.516	2025-11-26 15:32:45.395	\N
74d11c84-29bb-4d03-9021-af8a2650e00a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	7500.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Tomate, cebolla y aguacates para la semana	2025-11-23 17:19:00		Lider Express	Jesus Leon Rangel	\N	ca6927eb-05a0-44fa-9f68-7df6019e30de	2025-11-26 17:19:32.413	2025-11-26 17:19:32.413	\N
66282541-2d2d-47c6-a81e-9aa2db94d25b	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	EXPENSE	17025.00	8710b527-94d0-4521-b324-9e9943710d43	Comisión Cta Corriente	2025-11-26 19:27:00		Banco Santander	Jesus Leon Rangel	\N	\N	2025-11-27 19:28:09.328	2025-11-27 19:28:09.328	\N
8708f9c4-a249-4388-8d0a-7f42aed5254d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	30494.00	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agua de tomar	2025-11-03 16:36:00		Maihue	Olga Manyoma	\N	f766dd50-9d76-4c35-b1f0-31a1665ff17b	2025-11-27 19:36:40.14	2025-11-27 19:36:40.14	\N
836e071c-caa9-4c7a-81b1-b9f2429f9247	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	12900.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 cajas de huevos super	2025-11-18 15:36:00		Distribuidora Catalan	Jesus Leon Rangel	\N	47754d59-4b36-422f-9aef-51a2a497ac3e	2025-11-19 15:37:26.85	2025-11-19 15:37:26.85	\N
c8a33fdb-3259-48ad-91de-92bd34d9449e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	8032.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Frutos secos	2025-11-18 15:38:00		Tostaduria el mani	Jesus Leon Rangel	\N	7b160b4a-383a-4766-97be-309455f9dd17	2025-11-19 15:38:46.824	2025-11-19 15:38:46.824	\N
93b272ea-6627-4fd2-9da8-4ca954865109	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	25550.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Compras varias, atun,camarones legucha otros	2025-11-10 03:00:00		Lider Express	Jesus Leon Rangel	\N	4569af55-fb0a-4766-aa37-eddb2cda2ed6	2025-11-18 19:38:50.621	2025-11-18 19:45:10.384	\N
3f6b6723-4eeb-42bb-9f4a-5f124ef2e779	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2850.00	27fccd39-52ef-4715-821b-ab85fa57f46f	compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	e22492b5-6775-40a4-92bb-99b9b4757e07	2025-11-18 19:38:27.335	2025-11-18 19:47:09.624	\N
0a1252a1-c5a5-4ede-9747-f14968e88b2a	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	15600.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Compras feria	2025-11-08 03:00:00		Feria Ñuñoa	Jesus Leon Rangel	\N	1842b47c-b8f0-4579-8166-4c699cbf6a48	2025-11-18 19:38:04.649	2025-11-18 19:48:23.465	\N
a0505675-d73f-42e8-ac40-39faf8fb6c9c	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51490.00	6d6c20c0-81f2-4afb-a72e-228c0a3982e0	Seguro Cleopatra	2025-11-01 03:00:00		BCI Seguros		\N	c79948dc-eeb2-47a3-b510-e23749afbe8f	2025-11-18 17:20:07.098	2025-11-18 19:56:01.603	\N
111a8138-19fe-4a94-bb88-788a29fdac48	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	13500.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Huevos	2025-11-01 03:00:00		Distribuidora Catalan	Jesus Leon Rangel	\N	18315e1f-a4cc-43d7-bac9-ed1f00ff2cc5	2025-11-18 19:37:16.005	2025-11-19 17:29:31.796	\N
362304d7-b232-4124-a39d-9005062f2cb1	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4546.00	c3a687fe-1351-4835-808b-30b9a858766c	Consulta endocrino	2025-11-20 20:43:00		Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2025-11-20 20:43:27.795	2025-11-20 20:43:27.795	\N
7c33282f-6c3c-4bfe-8588-c904f3c69d74	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	5593.00	422ca76a-431e-4a42-95af-2ce3b520ebab	Susciprcion Hbo Max	2025-11-17 20:08:00		Max	Jesus Leon Rangel	\N	91b1b337-3960-4b9c-8a47-e4ea0e6989fd	2025-11-19 17:08:41.053	2025-11-21 12:37:42.873	\N
e166da87-9e5b-4693-a786-58cd8c4c0778	b88abd1d-92fe-4818-ba01-95681f09b96d	530b9e4b-d53a-440b-a713-51021e71436b	EXPENSE	5000.00	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago a Pedro Perez por "Prueba 2"	2025-11-25 13:00:20.083	\N	\N	Juan Perez	\N	\N	2025-11-25 13:00:22.287	2025-11-25 13:00:22.287	\N
a3609f32-d19d-4a62-bc40-5a0030275260	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	42290.00	8704596a-9583-4900-a272-a49243224a65	Hamburguesas, papitas, chicken tenders, onion rings	2025-11-22 18:22:00		La Birra Bar	Jesus Leon Rangel	\N	\N	2025-11-25 18:23:14.255	2025-11-25 18:23:14.255	\N
e105d4ab-f723-4da5-a45b-6896e214b06b	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	9633.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Suscripción Claude	2025-11-24 18:29:00		Anthropic	Jesus Leon Rangel	\N	\N	2025-11-25 18:29:43.329	2025-11-25 18:29:43.329	\N
bb5703e0-5e39-44d9-a962-c40dfb0c9767	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-25 19:23:44.093	2025-11-25 19:23:44.093	\N
497b94b6-9700-4771-bebf-50b76c7a2f3b	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	\N	Préstamo a Pedro	2025-11-04 00:00:00	\N	Pedro	Pedro Perez	\N	\N	2025-11-26 12:31:50.841	2025-11-26 12:31:50.841	\N
55797ec3-05e6-4250-8238-fbd19a60ca26	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	50000.00	15839aaf-2716-48da-82ca-5e5d6ce8c20a	Préstamo a Pedro	2025-11-13 00:00:00	\N	Pedro	Pedro Perez	\N	\N	2025-11-26 16:47:12.676	2025-11-26 16:47:12.676	3e81a39b-47af-407f-bb12-c618578720a5
bd341ff4-dd7c-4178-a8f4-9cf8bc08906c	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	20000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Pedro	2025-11-26 00:00:00	\N	\N	Pedro	\N	\N	2025-11-26 16:47:57.399	2025-11-26 16:47:57.399	\N
8d57926a-be14-4a2e-aedc-7022ce727769	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	30000.00	4ee8a5a1-a93c-49eb-9b50-3ba95e9fb974	Pago de préstamo de Pedro	2025-11-26 00:00:00	\N	\N	Pedro	\N	\N	2025-11-26 16:48:22.281	2025-11-26 16:48:22.281	\N
a2a51a09-603a-479a-bf26-695d44ea7171	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	6280.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Compras Hamburguesas	2025-11-25 17:20:00		Lider Express	Jesus Leon Rangel	\N	5f0afa26-d88b-4fbc-9f6b-218fff7f4928	2025-11-26 17:20:32.08	2025-11-26 17:20:32.08	\N
5c326385-413e-4c07-8a9c-1b2c09b5b3a3	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	9590.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Protector ejercicios cuello	2025-11-27 19:30:00		MercadoLibre	Jesus Leon Rangel	\N	\N	2025-11-27 19:30:24.534	2025-11-27 19:30:24.534	\N
811ba69e-ed27-432c-8aeb-517806b1850a	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4990.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Cosito para cortar panes	2025-11-27 22:29:00		MercadoLibre	Jesus Leon Rangel	\N	98ef5a62-bf68-41b3-a5c6-eb5e888e8aa2	2025-11-27 19:29:41.92	2025-11-27 19:31:12.664	\N
bb92a1bc-1b38-4c6a-9eea-0f4798fc4061	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	10190.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Cascanueces de navidad	2025-11-27 16:44:00		Falabella	Olga Manyoma	\N	c5c40a95-7b3f-46a5-aa6b-baeae48bac97	2025-11-27 19:44:49.189	2025-11-27 19:44:49.189	\N
2bf0baf3-c376-4c04-a1d7-d7ab44fb2dd9	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	1389568.00	1f9df622-e9b4-4f99-bf09-a97ded3f8330	Sueldo del mes de octubre	2025-11-01 16:51:00		TCS	Jesus Leon Rangel	\N	\N	2025-11-19 16:52:02.434	2025-11-19 16:52:02.434	\N
02716194-558d-4e15-b3cc-5aae39b51b8f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	17600.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	Dr Simi, Espironolactona Acido Folico	2025-11-01 03:00:00		Dr Simi		\N	4c9e222c-8b40-4cf6-8816-7ff5348f3a71	2025-11-18 17:19:56.387	2025-11-18 19:39:57.166	\N
26130d97-ed8a-4430-b72e-3061d90cc6e3	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	12900.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	2 cajas de huevos	2025-11-09 03:00:00		Distribuidora catalán	Jesus Leon Rangel	\N	45e81ef3-55fc-4d06-8cc9-40beae0195e4	2025-11-18 19:38:38.979	2025-11-18 19:45:59.896	\N
96803d92-4d21-4bad-850a-953ef722ef80	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	151435.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA SP500	2025-11-03 16:55:00		Hapi	Jesus Leon Rangel	\N	\N	2025-11-19 16:55:38.626	2025-11-19 16:55:38.626	\N
44344cf1-72cd-4be2-a7b4-707ff68ef943	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	14190.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Suscripción de mercadolirbe + disney	2025-11-18 17:09:00		MercadoLibre	Jesus Leon Rangel	\N	d6077ded-12e0-4bcf-96b1-e1d43cbc65d1	2025-11-19 17:09:32.544	2025-11-19 17:09:32.544	\N
90709adf-7127-462f-bb68-0a1407c8b948	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	42970.00	357b2f52-0d03-4976-a7c0-ee7f89b4aa52	Regalo cumple Jose	2025-11-19 20:25:00		Falabella	Jesus Leon Rangel	\N	b72074b4-13a7-4040-9e57-ff0c0b8616f5	2025-11-20 20:26:20.177	2025-11-20 20:26:20.177	\N
fb2ac9f7-a02a-4561-9f98-5902d309e288	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2960.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Estacionamiento clinica	2025-11-20 20:43:00		Clinica Santa Maria	Jesus Leon Rangel	\N	\N	2025-11-20 20:44:05.278	2025-11-20 20:44:05.278	\N
5f3544c3-9a83-4eb7-98e7-549d96b99171	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	8704596a-9583-4900-a272-a49243224a65	Prueba 1	2025-11-25 12:57:54.046		Prueba 1	Pedro Perez	\N	d4f5264c-d3eb-47af-97b1-4fc2a8cbda68	2025-11-25 12:57:56.234	2025-11-25 12:57:56.234	\N
da7d8dd3-8010-45ec-aec7-ce2902fc1e0a	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	40000.00	422ca76a-431e-4a42-95af-2ce3b520ebab	Prueba	2025-11-25 12:59:36.484		Prueba	Pedro Perez	\N	b91e5888-a0a1-46ca-beb5-98348337bd53	2025-11-25 12:59:38.665	2025-11-25 12:59:38.665	\N
c4ee8257-d241-4598-abb5-ce9360cc2236	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	5000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Recibido de Juan Perez por "Prueba 2"	2025-11-25 13:00:20.083	\N	\N	Pedro Perez	\N	\N	2025-11-25 13:00:22.269	2025-11-25 13:00:22.269	\N
28357a49-a425-4205-bc39-dc6b8a182a2f	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	INCOME	48000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Recibido de Juan Perez por balance compartido - Saldado en grupo. 2 gasto(s) compartido(s).	2025-11-25 13:01:41.595	\N	\N	Pedro Perez	\N	\N	2025-11-25 13:01:43.604	2025-11-25 13:01:43.604	\N
b0a1aba1-e89d-4581-aef9-4cace799b402	b88abd1d-92fe-4818-ba01-95681f09b96d	530b9e4b-d53a-440b-a713-51021e71436b	EXPENSE	48000.00	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago de balance compartido a Pedro Perez - Saldado en grupo. 2 gasto(s) compartido(s).	2025-11-25 13:01:41.596	\N	\N	Juan Perez	\N	\N	2025-11-25 13:01:44.605	2025-11-25 13:01:44.605	\N
de8726ee-5c6a-404e-8dfb-65a2b68b1e60	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	3135.00	8710b527-94d0-4521-b324-9e9943710d43	Impuestos y comisiones TDC	2025-11-24 18:24:00		Banco Santander	Jesus Leon Rangel	\N	\N	2025-11-25 18:24:20.09	2025-11-25 18:24:20.09	\N
0a3ec281-f53a-4474-ab24-ee857c64c466	346b32d1-b21f-4ce9-ac27-a69e67abb103	2c6743e1-4096-45b1-9ebb-8b998cedda57	EXPENSE	99997.00	37114eb4-5ea3-40dc-85d1-40a4c04f9e2e	Airpods 1/3	2025-11-05 18:34:00		Apple	Jesus Leon Rangel	\N	\N	2025-11-25 18:34:41.067	2025-11-25 18:34:41.067	\N
e58c1263-9ab1-4310-b8ee-6270f30583f9	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	800000.00	\N	Préstamo a Katty Rangel	2025-11-25 00:00:00	\N	Katty Rangel	Pedro Perez	\N	\N	2025-11-25 19:24:42.06	2025-11-25 19:24:42.06	\N
1f3d18c6-5c5a-42d2-8e09-b11d02328528	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	80000.00	15839aaf-2716-48da-82ca-5e5d6ce8c20a	Préstamo a Juan	2025-11-26 03:00:00		Juan	Pedro Perez	\N	\N	2025-11-26 14:27:14.994	2025-11-26 15:31:06.688	445024e9-1c20-421a-9807-56d789b6f5a9
d7f0a0eb-5547-4736-8a1f-6aa1bd19f540	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2600.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Compras varias	2025-11-22 17:17:00		Belinda Market	Jesus Leon Rangel	\N	3dc18619-27fc-48a5-9d7a-9f4b757d80ce	2025-11-26 17:18:10.04	2025-11-26 17:18:10.04	\N
35a2656d-d3ed-41d9-83cf-fba955dd36fe	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2880.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Pimenton y zanahorias	2025-11-26 17:21:00		Lider Express	Jesus Leon Rangel	\N	d7dfb498-63ee-475c-bec0-3f56ee6e0a78	2025-11-26 17:21:32.113	2025-11-26 17:21:32.113	\N
177726e6-d51e-49c4-a509-ea7187f659f0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18046.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Huevos, Mostaza y Queso Mozarella	2025-11-26 17:22:00		Distribuidor Catalan	Jesus Leon Rangel	\N	437cbb46-b4e4-4fa8-9856-6c7a23a2c691	2025-11-26 17:23:10.341	2025-11-26 17:23:10.341	\N
d4851312-215a-43f8-9145-2e924aec0953	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	50.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Agregar tdc onlclick	2025-11-27 19:31:00		WebPay	Jesus Leon Rangel	\N	\N	2025-11-27 19:32:10.457	2025-11-27 19:32:10.457	\N
375e7f07-bcf4-4c53-b76b-499bdbb451f8	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	8388127f-3f9c-49d4-8b83-4cf9dcc9fbe0	EXPENSE	100000.00	8704596a-9583-4900-a272-a49243224a65	prueba	2025-11-18 20:12:00		prueba	Pedro Perez	\N	69f3d9c7-06ca-48fd-866f-5ac583d83ea8	2025-11-27 20:12:34.788	2025-11-27 20:12:34.788	\N
da9fcd04-4250-409d-903f-4298204268d0	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	10294.00	c27aee6a-2091-4e88-9135-cd0a10323bc4	Uber después de hablando huevadas	2025-11-28 01:00:00		Uber	Jesus Leon Rangel	\N	\N	2025-11-28 12:53:28.681	2025-11-28 12:53:28.681	\N
6b4f2fa2-a65f-499f-83d3-172923ec139f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	11000.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-28 10:00:00		Shell	Olga Manyoma	\N	050960db-eb58-4b40-9491-43e3bd07d6b8	2025-11-28 13:01:01.236	2025-11-28 13:01:01.236	\N
90947fce-c421-4cb0-aa27-f7ec042e515f	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4000.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	2 Maltas	2025-11-28 22:48:00		Belinda Market	Jesus Leon Rangel	\N	\N	2025-11-30 01:48:40.618	2025-11-30 01:48:40.618	\N
1150ca65-8a8a-42ad-95b7-727d1f57c369	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24000.00	a9f9b431-7a73-4992-99f1-3db31d4422be	Sushi para cenar	2025-11-28 22:47:00		Niu Sushi	Jesus Leon Rangel	\N	\N	2025-11-30 01:47:54.999	2025-11-30 01:49:23.689	\N
0479ba6b-dac6-45d0-b3b6-1d8b0afafc1a	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	2035.00	c617d282-9297-43c5-95cd-5b3c32ba67dd	Parking dia de jetset	2025-11-29 22:51:00		Parking Av Italia	Jesus Leon Rangel	\N	\N	2025-11-30 01:51:56.584	2025-11-30 01:51:56.584	\N
33e621bf-1d97-43df-80ab-4a13c1244b8e	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	58267.00	8704596a-9583-4900-a272-a49243224a65	Hamburguesas 	2025-11-29 22:50:00		JetSet	Jesus Leon Rangel	\N	\N	2025-11-30 01:51:04.462	2025-11-30 01:52:25.923	\N
8646479f-faa1-40a6-a191-71ee459a1a54	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	4550.00	a9f9b431-7a73-4992-99f1-3db31d4422be	Rapi turbo aceitunas para oma bakery	2025-11-28 22:54:00		Rappi	Jesus Leon Rangel	\N	132afb3f-2d58-49c6-8db4-35acf85ed773	2025-11-30 01:54:51.1	2025-11-30 01:54:51.1	\N
7a07302e-18c5-40c4-ad21-2bfe8ea6d31d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	15000.00	08d3cd3f-450f-42a2-8237-759260009483	Gasolina	2025-11-29 22:55:00		Shell	Jesus Leon Rangel	\N	dac8989b-541c-4875-a086-d347fb1168d0	2025-11-30 01:55:42.28	2025-11-30 02:02:40.262	\N
cd887186-962c-49d8-a479-0220d58cd97e	346b32d1-b21f-4ce9-ac27-a69e67abb103	34d0aa36-bc91-4383-95fb-578fbbc09e04	INCOME	14390.00	15105246-edc9-41df-ba6a-531c6f7cb324	Pago de su parte de Jetset	2025-11-30 02:03:46.76		Miguel Guerra	Jesus Leon Rangel	\N	\N	2025-11-30 02:03:49.77	2025-11-30 02:03:49.77	\N
2f2b6b64-f9a4-4756-948f-cdcec40a1d20	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	2940.00	27fccd39-52ef-4715-821b-ab85fa57f46f	Patas de pollo para dustin	2025-11-29 09:43:00		Carnes El Parral	Jesus Leon Rangel	\N	5c595cc5-bb18-4234-8143-afe9185268f7	2025-12-01 12:44:10.594	2025-12-01 12:44:10.594	\N
d620ab45-51e5-4bb0-847c-43b8fa037472	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	21232.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Compras para la semana	2025-11-30 09:44:00		Lider Express	Jesus Leon Rangel	\N	a92509e9-742c-4594-ad4c-3698ad42f3fb	2025-12-01 12:45:18.807	2025-12-01 12:45:18.807	\N
d580c4ae-6acb-442d-9910-dacb2c022032	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	14000.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Compras Navidad	2025-11-30 09:46:00		Chinos Pedro Valdivia	Jesus Leon Rangel	\N	2ec956fb-f2fd-4845-9a27-6e314d8d9335	2025-12-01 12:47:02.056	2025-12-01 12:47:02.056	\N
27888cc9-f2a4-41c3-b8fa-9b0ae174a3be	346b32d1-b21f-4ce9-ac27-a69e67abb103	2db62b9a-1133-4a34-96bc-429d267a2a2a	EXPENSE	1580.00	b9bdf8b7-2a48-4c91-a0d4-d6531dd010fe	Metro	2025-11-30 10:45:00		Metro/Bus	Jesus Leon Rangel	\N	\N	2025-12-01 13:45:57.853	2025-12-01 13:45:57.853	\N
96fb1f43-2e80-45ef-b5c6-136853ee5a3f	346b32d1-b21f-4ce9-ac27-a69e67abb103	2db62b9a-1133-4a34-96bc-429d267a2a2a	EXPENSE	870.00	b9bdf8b7-2a48-4c91-a0d4-d6531dd010fe	Metro	2025-11-29 10:46:00		Metro/Bus	Jesus Leon Rangel	\N	\N	2025-12-01 13:46:53.773	2025-12-01 13:46:53.773	\N
5561a2f9-534c-4147-896f-903061a8fb52	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	696981.00	15105246-edc9-41df-ba6a-531c6f7cb324	Pago de Noviembre	2025-11-30 10:53:00		Olga Manyoma	Jesus Leon Rangel	\N	\N	2025-12-01 13:54:03.858	2025-12-01 13:54:03.858	\N
8121a1e3-9d74-4b94-abc7-2a1f845ae818	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	1124854.00	\N	Pago TDC mes de Noviembre	2025-11-30 11:13:00			Jesus Leon Rangel	646caf37-7684-45ac-87f3-cec83efb633d	\N	2025-12-01 14:13:26.919	2025-12-01 14:13:26.919	\N
29414eb2-b5e1-432d-9024-94e26851155d	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	76000.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	Proteina en polvo vainilla y cake	2025-11-28 09:56:00		ChileSuplementos	Jesus Leon Rangel	\N	ae157bab-ec8a-47c9-bc09-f6a8cc86d872	2025-11-28 12:56:37.878	2025-12-02 16:29:08.47	\N
b7b7954a-b4f2-477c-b3ac-b3d1ea5afa31	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	1138847.00	\N	Pago deuda mes de Noviembre 	2025-11-30 11:14:00			Jesus Leon Rangel	2e64b401-5a2f-4492-87c9-a618e7ba6f33	\N	2025-12-01 14:14:14.535	2025-12-01 14:14:14.535	\N
c332a162-8f29-484e-a0c2-cc5ff7385a21	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	380234.00	\N	Pago deuda mes de Noviembre	2025-11-30 11:14:00			Jesus Leon Rangel	0c046099-f7ff-4463-bf04-cdc01ecd9c09	\N	2025-12-01 14:14:44.898	2025-12-01 14:14:44.898	\N
199d25e8-90f8-4757-b491-b7ca7e164b02	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	TRANSFER	99997.00	\N	Pago deuda Mes de Noviembre	2025-11-30 11:15:00			Jesus Leon Rangel	2c6743e1-4096-45b1-9ebb-8b998cedda57	\N	2025-12-01 14:15:16.235	2025-12-01 14:15:16.235	\N
63734ffc-dd52-4f54-b4a8-43a153559fd7	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	36179.00	2b7d3206-af2c-4a9c-91fc-9cfb463f0f62	Pago deuda noviembre a Olga	2025-11-30 11:18:00		Jesus Leon	Jesus Leon Rangel	\N	\N	2025-12-01 14:18:52.5	2025-12-01 14:18:52.5	\N
c3e61856-a391-4ab1-a069-5219f4ef1df4	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	14019.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	SetApp suscripción	2025-11-20 11:29:00		SetApp	Jesus Leon Rangel	\N	\N	2025-12-01 14:30:09.519	2025-12-01 14:30:09.519	\N
19bb4331-98ec-45cd-8313-90c013752700	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	30698.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Publicidad Oma	2025-11-18 11:31:00		MetaAds	Jesus Leon Rangel	\N	\N	2025-12-01 14:31:33.26	2025-12-01 14:31:33.26	\N
3cc9552e-7bb4-4eb9-b4c8-9d887cb28ae7	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	11179.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Apple iCloud	2025-11-14 11:32:00		Apple	Jesus Leon Rangel	\N	\N	2025-12-01 14:32:47.494	2025-12-01 14:32:47.494	\N
8a120647-3b95-4866-9b95-1ce8d682aa06	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	EXPENSE	3207.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Subcripcion gorro	2025-11-07 11:33:00		Apple	Jesus Leon Rangel	\N	\N	2025-12-01 14:33:56.018	2025-12-01 14:33:56.018	\N
a4cd7109-e887-4920-ba6f-0fa00237dc44	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	30000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Pago publicidad MetaAds	2025-11-30 11:35:00		Oma Bakery	Jesus Leon Rangel	\N	\N	2025-12-01 14:35:27.863	2025-12-01 14:35:27.863	\N
3f92fa02-d742-4bd2-9c3e-09f8cc3b9e25	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	INCOME	3523600.00	1f9df622-e9b4-4f99-bf09-a97ded3f8330	Sueldo de Noviembre	2025-12-01 11:37:00		TCS	Jesus Leon Rangel	\N	\N	2025-12-01 14:38:07.736	2025-12-01 14:38:07.736	\N
67a47361-5fa5-4bc3-b2f2-f59733d995fc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	830069.00	b872c1ea-c0a5-4504-acd7-f3c441ae5c6f	Cuota 71/360	2025-12-01 12:11:00		Banco Scotiabank	Jesus Leon Rangel	\N	1410a808-8dfa-4536-ba2e-96ed415546b3	2025-12-01 15:12:12.179	2025-12-01 15:12:12.179	\N
aa1c63ee-7f1a-430a-bd7b-541e0bd6dedc	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	7642.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Cascanueces pequeños	2025-12-01 12:12:00		Frank Home	Jesus Leon Rangel	\N	d432f78f-4419-4e3e-a9b4-45b29139169a	2025-12-01 15:13:15.2	2025-12-01 15:13:15.2	\N
9b298745-cc5a-4888-8b93-f34a5edbad3a	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	8250.00	9db1fe37-0ec7-4467-9819-511256db4fe6	Spotify 	2025-12-01 12:13:00		Spotify	Jesus Leon Rangel	\N	95a36900-4535-4104-939b-3dea76745659	2025-12-01 15:14:28.528	2025-12-01 15:14:28.528	\N
96fa2331-d328-4aae-8117-8f9cec003ebb	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	51537.00	6d6c20c0-81f2-4afb-a72e-228c0a3982e0	Seguro Cleopatra	2025-12-05 12:15:00		Bci Seguros	Jesus Leon Rangel	\N	4d389beb-3ce1-4777-8347-fb8313ac388e	2025-12-01 15:15:58.945	2025-12-01 15:15:58.945	\N
f8a00cdf-4aa7-4bfc-a18a-eab88f61c8f3	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	24549.00	74dbaf4c-1b84-4c6b-9383-de2b59a86cca	Plan Tlf Claro	2025-12-01 12:20:00		Claro	Jesus Leon Rangel	\N	\N	2025-12-01 15:21:31.089	2025-12-01 15:21:31.089	\N
79d8f1b0-2ebb-4110-aad1-0bbf8806f976	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	153179.00	90936b66-3ec7-4ebd-bf87-c5f030e12fce	DCA Sp500 Diciembre	2025-12-01 12:45:00		Hapi Broker	Jesus Leon Rangel	\N	\N	2025-12-01 15:45:43.027	2025-12-01 15:45:43.027	\N
14eeb316-84d5-4fe7-9b93-a43aa01d6032	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	EXPENSE	150000.00	5ec041fc-8c57-4f46-a1e9-80ffc95bf107	DCA Crypto	2025-12-01 12:48:00		OrionX	Jesus Leon Rangel	\N	\N	2025-12-01 15:48:55.028	2025-12-01 15:48:55.028	\N
65e7f2ed-d44c-43fd-800a-6a6960315ae5	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	20500.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Compras Navidad	2025-11-30 09:47:00		SuperLida	Jesus Leon Rangel	\N	567b3b22-06c7-43f5-bfd7-439001a241fc	2025-12-01 12:48:15.164	2025-12-01 17:42:31.71	\N
e9833056-ee2d-4e53-a074-5905c82c2d40	346b32d1-b21f-4ce9-ac27-a69e67abb103	d99144b6-5974-40e2-9f17-b36942774c9e	INCOME	45000.00	15105246-edc9-41df-ba6a-531c6f7cb324	Pago de Entradas Hablando Huevadas y Uber	2025-12-01 16:55:00		Jose Alberto	Jesus Leon Rangel	\N	\N	2025-12-01 19:55:33.338	2025-12-01 19:55:33.338	\N
8118bab1-0ab3-4ed2-8d18-a31a837f7ea9	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	64740.00	5a45805d-2461-4e86-a227-7df30c4fd9ae	1 cQ10, 1 mageniso, 1 omega 3	2025-12-02 11:01:00		MixGreen	Jesus Leon Rangel	\N	4f40afb8-d635-43dd-91a0-eadcacbdf008	2025-12-02 14:02:29.253	2025-12-02 16:25:43.051	\N
67d62304-46dc-471b-b664-b3fcd912ca53	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	36300.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	FersitolD, espironolocatona x2, acido folico, trioval	2025-12-02 13:26:00		FarmaOlga	Jesus Leon Rangel	\N	d7b0a41b-c9ef-4360-a958-a86a250ad711	2025-12-02 16:27:14.641	2025-12-02 16:27:14.641	\N
d87fdabb-50b1-47d9-b76c-0d4e8b59c139	d8c5e32f-c64d-4437-b302-3a64d8f3f116	3835a682-e360-443c-8946-98e86c744943	EXPENSE	30526.00	dea5305f-e7c8-42c6-aaeb-063da516d4b5	Agus fria de la casa	2025-12-02 14:18:00		Maihue	Olga Manyoma	\N	b3bb3b35-f059-47c1-9d46-6e0ea3a734ba	2025-12-02 17:19:01.415	2025-12-02 17:19:01.415	\N
abf952a1-3ca3-4b47-b4f5-b1d9d1df7cdd	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	13169.00	0a665b38-c7d3-410e-83ee-16220d67afdb	Harina y levadura para pruebas	2025-12-03 12:21:00		Molino San Cristobal	Jesus Leon Rangel	\N	\N	2025-12-03 15:21:50.911	2025-12-03 15:21:50.911	\N
cd03c32f-1653-4a70-afd3-95518d0a3205	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	1290.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Agua con gas 	2025-12-03 12:22:00		Lider	Jesus Leon Rangel	\N	\N	2025-12-03 15:23:21.851	2025-12-03 15:23:21.851	\N
78853929-e56b-487e-a9c2-e230dd1cbd36	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	12000.00	0064d19b-8a15-415d-a42d-eb3cce9f9e6a	10 cajas espironolactona	2025-12-04 14:12:00	\N	FarmaOlga	Jesus Leon Rangel	\N	aeeb577b-56f1-44ff-a38f-b03cc638b92e	2025-12-04 17:13:26.595	2025-12-04 17:13:26.595	\N
504cd540-7e55-4d27-a378-05e7e767e4c0	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	18000.00	31b3e981-3dff-4973-9bc5-8530fb5f61c9	Caja de huevos	2025-12-04 14:16:00	\N	Distribuidora Catalan	Jesus Leon Rangel	\N	d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b	2025-12-04 17:16:58.042	2025-12-04 17:16:58.042	\N
3a93793a-0236-4959-baff-771080a8c623	346b32d1-b21f-4ce9-ac27-a69e67abb103	6bae5c5c-fa7d-429b-a27d-e5f13fe5025a	TRANSFER	3200000.00	8689ef01-6dad-4b0c-ae9d-0b6e230407d4	Traspaso de fondos	2025-12-01 12:50:00			Jesus Leon Rangel	d99144b6-5974-40e2-9f17-b36942774c9e	\N	2025-12-01 15:50:32.248	2025-12-04 18:44:15.296	\N
cba3a103-4cc6-4d6c-b162-42137d80815f	346b32d1-b21f-4ce9-ac27-a69e67abb103	0c046099-f7ff-4463-bf04-cdc01ecd9c09	EXPENSE	10952.00	a5f1f780-c452-464f-89c4-3246d4ccc87f	Camarones y Aguacate	2025-12-04 22:00:00	\N	Lider Express	Jesus Leon Rangel	\N	bcf29d50-0335-412a-850f-6606c6239140	2025-12-05 01:01:34.647	2025-12-05 01:01:34.647	\N
e6d93e44-11a8-4ec7-a238-b3bbbba05c43	346b32d1-b21f-4ce9-ac27-a69e67abb103	646caf37-7684-45ac-87f3-cec83efb633d	EXPENSE	9446.00	0a665b38-c7d3-410e-83ee-16220d67afdb	rollo de papel film 300 metros	2025-12-04 22:03:00	\N	Distribuidora Pol	Jesus Leon Rangel	\N	cb79af54-88d1-4d25-b3e2-04ab4d6469de	2025-12-05 01:04:08.908	2025-12-05 01:04:08.908	\N
72b3308d-3811-4457-95ae-bd8e99fda281	346b32d1-b21f-4ce9-ac27-a69e67abb103	2e64b401-5a2f-4492-87c9-a618e7ba6f33	EXPENSE	12229.00	9edabfb2-51b8-41c8-aada-2ae5716f4ee9	Maquina al vacío	2025-12-04 22:07:00	\N	MercadoLibre	Jesus Leon Rangel	\N	c4d60af0-5577-4aed-b163-37bc4bda34d5	2025-12-05 01:07:44.144	2025-12-05 01:07:44.144	\N
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
b753ea55-661d-41c2-9f31-9b186b345b57	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Olga Manyoma agregó un gasto de $11000 en Familia	{"amount": 11000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "050960db-eb58-4b40-9491-43e3bd07d6b8", "description": "Gasolina"}	t	2025-11-28 13:00:56.897
5355fe65-0135-425d-aaad-509394d27b07	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $4550 en Familia	{"amount": 4550, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "132afb3f-2d58-49c6-8db4-35acf85ed773", "description": "Rapi turbo aceitunas para oma bakery"}	f	2025-11-30 01:54:47.088
ced2f63f-c5ee-4bae-8023-2493e77f5777	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $15000 en Familia	{"amount": 15000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "dac8989b-541c-4875-a086-d347fb1168d0", "description": "Gasolina"}	f	2025-11-30 01:55:37.282
707dd537-84e1-48ff-abc7-403e2943ed51	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $2940 en Familia	{"amount": 2940, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "5c595cc5-bb18-4234-8143-afe9185268f7", "description": "Patas de pollo para dustin"}	f	2025-12-01 12:44:06.469
a22ac1ed-66c5-4349-ab99-127453957c11	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $21232 en Familia	{"amount": 21232, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "a92509e9-742c-4594-ad4c-3698ad42f3fb", "description": "Compras para la semana"}	f	2025-12-01 12:45:14.636
391c254a-6af0-47a4-add9-5f08954e2554	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $14000 en Familia	{"amount": 14000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "2ec956fb-f2fd-4845-9a27-6e314d8d9335", "description": "Compras Navidad"}	f	2025-12-01 12:46:57.821
3cbae79c-295a-4eea-94fa-5e05d8a42c0f	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $20500 en Familia	{"amount": 20500, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "567b3b22-06c7-43f5-bfd7-439001a241fc", "description": "Compras Navidad"}	f	2025-12-01 12:48:11.095
2b24f6f1-8b2a-4166-9add-3df960b0ca46	d8c5e32f-c64d-4437-b302-3a64d8f3f116	BALANCE_SETTLED	Balance saldado	Saldaste todos los balances con Jesus Leon Rangel ($660802 en 60 gasto(s))	{"amount": 660802.4, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "toUserId": "346b32d1-b21f-4ce9-ac27-a69e67abb103", "settledExpenses": 60}	f	2025-12-01 13:50:00.37
387ebc72-254f-4f4d-8f48-122a87f963b6	346b32d1-b21f-4ce9-ac27-a69e67abb103	BALANCE_SETTLED	Balance saldado	Olga Manyoma saldó todos los balances contigo ($660802 en 60 gasto(s))	{"amount": 660802.4, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "fromUserId": "d8c5e32f-c64d-4437-b302-3a64d8f3f116", "settledExpenses": 60}	t	2025-12-01 13:50:00.37
e6767e52-eb28-449b-b9bb-7a8cafa5b0c6	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $830069 en Familia	{"amount": 830069, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "1410a808-8dfa-4536-ba2e-96ed415546b3", "description": "Cuota 71/360"}	f	2025-12-01 15:12:08.154
cc514b43-2f4f-40a6-8b83-157b8a26e620	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $7642 en Familia	{"amount": 7642, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d432f78f-4419-4e3e-a9b4-45b29139169a", "description": "Cascanueces pequeños"}	f	2025-12-01 15:13:10.941
a9deb4a0-fa99-4d0d-b0ee-558275a636d0	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $8250 en Familia	{"amount": 8250, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "95a36900-4535-4104-939b-3dea76745659", "description": "Spotify "}	f	2025-12-01 15:14:25.303
cf8efee5-dd3f-40b9-a1f6-9daeb120b1ed	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $51537 en Familia	{"amount": 51537, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4d389beb-3ce1-4777-8347-fb8313ac388e", "description": "Seguro Cleopatra"}	f	2025-12-01 15:15:55.685
2b2d8313-dda3-4fef-a9e3-af9109890407	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $64740 en Familia	{"amount": 64740, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "4f40afb8-d635-43dd-91a0-eadcacbdf008", "description": "1 cQ10, 1 mageniso, 1 omega 3"}	f	2025-12-02 14:02:24.337
ad4c066c-902f-41e3-9c72-24de2f688fbd	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $36300 en Familia	{"amount": 36300, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d7b0a41b-c9ef-4360-a958-a86a250ad711", "description": "FersitolD, espironolocatona x2, acido folico, trioval"}	f	2025-12-02 16:27:10.551
8e466ea3-5b7b-4a77-91d1-087588635489	346b32d1-b21f-4ce9-ac27-a69e67abb103	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $30526 en Familia	{"amount": 30526, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "b3bb3b35-f059-47c1-9d46-6e0ea3a734ba", "description": "Agus fria de la casa"}	t	2025-12-02 17:18:57.233
683e3e58-a19d-41f4-b752-402f4cb5ac58	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12000 en Familia	{"amount": 12000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "aeeb577b-56f1-44ff-a38f-b03cc638b92e", "description": "10 cajas espironolactona"}	f	2025-12-04 17:13:22.556
1631d070-6519-4fb8-b7a1-13f0f2ed9d6d	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $18000 en Familia	{"amount": 18000, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "d5dbe8bc-29f1-4c42-8536-b1ecc76b0c6b", "description": "Caja de huevos"}	f	2025-12-04 17:16:54.275
686ae523-7010-4a4a-ad73-acf5c59067e8	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $10952 en Familia	{"amount": 10952, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "bcf29d50-0335-412a-850f-6606c6239140", "description": "Camarones y Aguacate"}	f	2025-12-05 01:01:30.668
b797ccb0-082f-44ab-bfd4-bf863cf01b1e	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $9446 en Familia	{"amount": 9446, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "cb79af54-88d1-4d25-b3e2-04ab4d6469de", "description": "rollo de papel film 300 metros"}	f	2025-12-05 01:04:02.851
5b4392de-9fd2-4848-be9d-13c9430c0b4b	d8c5e32f-c64d-4437-b302-3a64d8f3f116	SHARED_EXPENSE_CREATED	Nuevo gasto compartido	Jesus Leon Rangel agregó un gasto de $12229 en Familia	{"amount": 12229, "groupId": "529a7b84-0680-4735-8fcd-e76fdb185245", "expenseId": "c4d60af0-5577-4aed-b163-37bc4bda34d5", "description": "Maquina al vacío"}	f	2025-12-05 01:07:40.167
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
\.


--
-- Data for Name: transaction_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."transaction_tags" ("id", "transaction_id", "tag_id") FROM stdin;
5f36c7fc-7402-42fd-8aa0-c3a39d0f791a	e36229fe-2250-4b54-96f1-fa9dc72b8bad	b7a3267e-4103-4d99-aaa6-cc4a863392e8
275d0ca6-6142-4950-8cf4-145ea7dec76b	e36229fe-2250-4b54-96f1-fa9dc72b8bad	3685aa15-10da-4fdc-9922-54057186ebc4
5322c55b-a177-4375-8e04-c614687c5b02	201db698-37b2-4f6d-9aa1-9f5b1e4db038	2a10dfa4-fd61-49c3-98e1-81975560b222
077bd14b-9994-4fe0-b14e-a6702a879cff	c46b2db9-4eea-40bb-a674-aedd6f9f14c5	679e1bf5-ab82-473d-aab4-bee383773cf9
479e39a3-8a87-4f7e-8d57-37451fc90d13	d1dcf649-7608-4832-a169-edeb31a23351	c5ce4c8e-ffeb-4838-b307-8ebc0d883db8
b10fa47e-df96-4a2b-84dc-bb44070643ae	7830902c-e299-42aa-a7cd-338cdef047a2	94109937-d8e2-4697-a7aa-57cc965f625d
b40ddbd8-b587-4eb6-b4f3-1f3c1f3064e7	52ed71e2-f25a-42e3-af23-ef665a33752f	f3abc33a-ed51-489e-8385-54a95399c899
eab211ab-f32b-4955-adc9-c4d70ab39ce6	5917db38-79d5-463e-9d9c-93a646b37c8c	051cdf66-73a4-4625-93f3-f311b608fd7f
cbf47f3f-0c8e-44b9-95cd-708991c1e7f4	4e2f33d4-41cf-47f9-8a3f-9e207f01f547	a54475d7-c7fd-489e-9c93-cc6fa6ca29eb
a916a8f3-2f45-41d1-a109-438acef3f1d5	2e762402-3928-4aaa-b718-1a0493c7f516	8fa8a244-3180-4247-a46e-da39bc2b663a
d9482220-f510-475b-afe9-a536642ebecc	3e9350bc-050a-4046-8969-d40e5b50bf4d	311121a8-540b-4ff1-bb60-ed3be3d1ce17
322cf1ce-47b2-47a5-a5a1-3b88fac8f32a	991ccb74-8420-43e0-9286-359a724d27ab	311121a8-540b-4ff1-bb60-ed3be3d1ce17
3c0f6621-ccb7-45df-b7e0-8ccbcf63602a	82145efb-6977-456c-a9c1-e1c1c55b834e	311121a8-540b-4ff1-bb60-ed3be3d1ce17
dbbc26a3-241f-4900-9034-0d69abc1f1e3	eacd6091-41b3-46b5-ad18-53e0ed717c53	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
156e5607-0c78-4fe2-a645-3f51dacfeb76	71bbe3c3-976c-4bf2-8c59-be5bd5351dd0	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
142e9fe9-2980-49a8-bc42-b73a46b6f37a	83b85547-d445-43ac-946b-99e677cc2aea	f3abc33a-ed51-489e-8385-54a95399c899
f268754c-a89f-4393-a4bf-53486381e719	d282d0d7-003f-4ee8-8762-9ac035ce5763	f3abc33a-ed51-489e-8385-54a95399c899
3112b1ba-2cdb-4c72-bfe0-dd00e001c1c8	a37b800e-9326-439b-b44f-931d8586160a	44b07ceb-7cd3-4e21-b787-2e088f329cca
acbb518f-fb4c-4506-ad45-ae0c42c10488	d0cbd012-ca26-4237-a8ab-4e7826aa0a1d	311121a8-540b-4ff1-bb60-ed3be3d1ce17
a1009e72-26d1-4100-8e82-473af745f5fb	02716194-558d-4e15-b3cc-5aae39b51b8f	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
23ef040a-f267-4e28-8e99-a9e715bea6c3	93b272ea-6627-4fd2-9da8-4ca954865109	d2e3b60e-b406-48b3-aa3d-2a09156765f4
1b534180-0a02-4d3c-aecb-0db2ae9d7d9e	26130d97-ed8a-4430-b72e-3061d90cc6e3	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
d7103152-a94f-4431-ac50-0c36b7d3aba9	3f6b6723-4eeb-42bb-9f4a-5f124ef2e779	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
472962a3-7978-4ba9-9748-c2d0f75eb2bf	6317cdaa-abe8-4e22-bac7-f881ba9f9bb2	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
b0902631-30df-497a-aaac-7dbfbacc2800	0a1252a1-c5a5-4ede-9747-f14968e88b2a	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
c302a9c0-7be4-4072-910b-441b86cce5b0	63774e8b-c45c-4d10-8888-0a11f28a5a90	4440c0c5-1c75-44c9-8a6f-797e054bbe26
67ebfb7a-6753-40f6-82e5-c0b07d7a5e87	25d64a0c-821d-43f8-9dda-0ee611b88750	d2e3b60e-b406-48b3-aa3d-2a09156765f4
5da19cf3-937c-4dcc-9cc6-87b5d1e78600	e30ebf2c-e85a-48eb-9eaa-ec07ef1218c5	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
ae6ba16c-b033-4f74-9bf3-6736f9eaa92d	a0505675-d73f-42e8-ac40-39faf8fb6c9c	d65b6183-17ca-43df-b7ec-5eee7c53ac82
07d4914f-a747-40d4-a9e1-aba739531a10	96136e2a-5499-45b7-a525-6dfd955872cf	311121a8-540b-4ff1-bb60-ed3be3d1ce17
1a8ecedd-4468-4b6c-aa7d-3397cc333abc	860eaf70-b19c-48bf-b985-48894956d57c	311121a8-540b-4ff1-bb60-ed3be3d1ce17
3eaf2c05-8c17-464e-8da9-93127db65e84	9e6d877d-2108-4efb-a79c-ff24aa55315c	d2e3b60e-b406-48b3-aa3d-2a09156765f4
b120a328-13a7-420e-9756-569c6000f440	fc2b4492-d292-4052-a730-2b1078c0e64a	98a80c21-7511-45e4-9298-078e2f964f71
118ed0c7-a243-495d-9bc3-6b05688c2c09	75cbca77-3b74-4a6d-999a-f5bbfcf643f2	d2e3b60e-b406-48b3-aa3d-2a09156765f4
83eb55ca-467b-4a25-8d88-306bacd5fe71	836e071c-caa9-4c7a-81b1-b9f2429f9247	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
d58ad799-3961-4731-8ddd-c82ddcb2bd6d	c8a33fdb-3259-48ad-91de-92bd34d9449e	4440c0c5-1c75-44c9-8a6f-797e054bbe26
7f255f08-bbff-4eb9-9350-fcf9701d14fa	2bf0baf3-c376-4c04-a1d7-d7ab44fb2dd9	70d7967a-6690-4ee7-b6df-9f38dae86d13
16470731-085d-4d83-b23d-489ce52e48d9	f1d50213-db84-459c-964c-ac9680e0cabc	8c89fda0-e257-4a04-be77-2db68903ebe4
4cad4d73-faea-41db-8b82-d06b9b36010d	96803d92-4d21-4bad-850a-953ef722ef80	f96a2dd1-30b9-4c62-ad54-0e9109654e6a
ace96d07-ae40-469b-a119-b91134c87d28	d45f4ca4-1bde-4562-81f2-f02a9af9c3aa	6090553d-5ad4-4ad4-ba63-d88992ae9354
bd5edfb7-863d-4e70-9a83-430b7d03db71	d175e7cd-ffc1-4e66-832c-f986102e8874	4f701527-c603-421e-8953-4fe9e881fdc4
f9bbc5c6-3047-4651-855f-4cc5efdbda62	44344cf1-72cd-4be2-a7b4-707ff68ef943	350ada05-9b98-4ae0-a9d5-e51be1599c96
e316a9d4-d81e-4c36-a98e-db633e8319e7	4e4bc9c9-15b4-4e2b-a7d2-50b995f18a99	311121a8-540b-4ff1-bb60-ed3be3d1ce17
c5761761-a557-4933-8bb7-c9c3f009e359	111a8138-19fe-4a94-bb88-788a29fdac48	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
75173910-567c-4949-ae03-4a664591476d	90709adf-7127-462f-bb68-0a1407c8b948	adf8108e-85d5-45a0-a549-6a079ba02156
7502bed2-1a4c-4a1a-ba24-88dfd15b77c2	37ab8687-c406-45bc-81cd-71974f2c9b17	311121a8-540b-4ff1-bb60-ed3be3d1ce17
89c94dd2-4d20-4af0-90c4-37726dd5b006	7ba04918-3f1e-4d60-b845-3d7ede1667d5	98a80c21-7511-45e4-9298-078e2f964f71
19a5918d-a3b8-48a5-82fd-58c2f1252146	ff7cbd23-fd29-4a5c-a82c-db51344a350e	8fa8a244-3180-4247-a46e-da39bc2b663a
c8d4ffc2-1695-4efc-a307-97bbe5a00324	9f847ae5-9526-4101-8ed3-8b6688eb0f3e	d2e3b60e-b406-48b3-aa3d-2a09156765f4
db71aad4-ea41-46f3-b695-1e8098c7020c	362304d7-b232-4124-a39d-9005062f2cb1	4f701527-c603-421e-8953-4fe9e881fdc4
e5f25916-f9a7-49e4-a21c-d15511f4d980	fb2ac9f7-a02a-4561-9f98-5902d309e288	98a80c21-7511-45e4-9298-078e2f964f71
7eb8b6a9-fe64-49dc-8402-38fec9680013	18ad6b45-3a19-4ed8-8011-3bd43f4a8067	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
bda77844-ccea-4a96-b9c9-42ee758ad6e4	7c33282f-6c3c-4bfe-8588-c904f3c69d74	350ada05-9b98-4ae0-a9d5-e51be1599c96
903a48c0-a530-4a6e-9aad-94dcabe4edf0	71b9d2ab-985e-4b2a-babd-f4de05853ab0	4687b1c3-fc46-4104-a4ba-167e28374d4c
e0504323-dad8-42a0-8377-584f173817ef	f7224a43-debf-4aae-9301-987d0bc4a957	350ada05-9b98-4ae0-a9d5-e51be1599c96
fe25d53e-5384-41be-bcfb-9095371887a3	afd93b8d-6ba2-444b-bb2b-479b63cc376d	2a10dfa4-fd61-49c3-98e1-81975560b222
02f6b3e1-f70e-402a-9216-3978a3121e6d	cd5f249f-e6fc-4988-bda6-c0015edc011f	679e1bf5-ab82-473d-aab4-bee383773cf9
f23828a1-b6b2-426f-ad35-9def3ed6355d	a3609f32-d19d-4a62-bc40-5a0030275260	a0db0537-b558-4931-a81c-a5336bff0b8a
506b5685-6d8c-41ce-9657-3bcd1d8c4d0e	db4c1cec-f65b-4a22-a1f5-797e872cff80	11a915a4-f55c-4493-b946-48e8c3d5915b
7e704b9b-4fa7-4ad8-a448-df760b23edf4	e105d4ab-f723-4da5-a45b-6896e214b06b	679e1bf5-ab82-473d-aab4-bee383773cf9
ed4c2b93-8043-420c-8fc5-3b581721c2a2	32946ca3-60e7-4862-a171-076495bd94ad	8fa8a244-3180-4247-a46e-da39bc2b663a
e38061c3-3568-4ef6-b746-00104a44c80c	d7f0a0eb-5547-4736-8a1f-6aa1bd19f540	311121a8-540b-4ff1-bb60-ed3be3d1ce17
d732457d-7c1c-4f3e-bdfc-cd281e3536f1	74d11c84-29bb-4d03-9021-af8a2650e00a	d2e3b60e-b406-48b3-aa3d-2a09156765f4
b0b43a87-dbfd-44b0-bea7-ee0f33ed7641	a2a51a09-603a-479a-bf26-695d44ea7171	d2e3b60e-b406-48b3-aa3d-2a09156765f4
99dd4490-497d-42b5-a015-eb42ceed6b76	35a2656d-d3ed-41d9-83cf-fba955dd36fe	d2e3b60e-b406-48b3-aa3d-2a09156765f4
bd2f896d-ed4c-467b-8db4-20b959e8293c	177726e6-d51e-49c4-a509-ea7187f659f0	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
3d7d28da-14cf-4d3e-8077-c9ca767724c2	66282541-2d2d-47c6-a81e-9aa2db94d25b	d20fc59b-b3e7-404b-a4c7-70506f80a56b
34b52c8a-f1d8-41ce-bd97-159f4344e37c	5c326385-413e-4c07-8a9c-1b2c09b5b3a3	2a10dfa4-fd61-49c3-98e1-81975560b222
e22e17f1-31c0-4c96-b715-823189acc604	811ba69e-ed27-432c-8aeb-517806b1850a	311121a8-540b-4ff1-bb60-ed3be3d1ce17
4bba59bf-3d37-4d01-82df-a793d72ab51f	d4851312-215a-43f8-9145-2e924aec0953	2a10dfa4-fd61-49c3-98e1-81975560b222
6defc3e9-8446-4e79-840b-8d7516163eb3	da9fcd04-4250-409d-903f-4298204268d0	e38d70e9-deff-4eec-8d0e-c8fb0e61c04a
614a9f5e-7175-4802-9432-68e92c5c0b74	90947fce-c421-4cb0-aa27-f7ec042e515f	2a10dfa4-fd61-49c3-98e1-81975560b222
13a12f05-9a39-48b7-b1e0-5038672b4427	1150ca65-8a8a-42ad-95b7-727d1f57c369	f800c628-19ef-4a37-8109-dc2fa17127c5
d2e297df-e53a-48ed-b4d9-99d5343b6183	0479ba6b-dac6-45d0-b3b6-1d8b0afafc1a	98a80c21-7511-45e4-9298-078e2f964f71
55dab26f-b79e-4893-9568-5454579136e3	33e621bf-1d97-43df-80ab-4a13c1244b8e	a0db0537-b558-4931-a81c-a5336bff0b8a
1e043e4b-b788-4f7c-bcd9-c5827a31d88c	7a07302e-18c5-40c4-ad21-2bfe8ea6d31d	8fa8a244-3180-4247-a46e-da39bc2b663a
41ea807a-52b8-4027-a8cc-935954b31c5e	cd887186-962c-49d8-a479-0220d58cd97e	a0db0537-b558-4931-a81c-a5336bff0b8a
27bac40f-b407-4706-8d56-a46ab594979a	2f2b6b64-f9a4-4756-948f-cdcec40a1d20	e3e0608e-c6c4-4e6d-b1c8-9cb88620fc26
d778e20e-223e-4eaa-8e47-a1c3abc14a99	d620ab45-51e5-4bb0-847c-43b8fa037472	d2e3b60e-b406-48b3-aa3d-2a09156765f4
d21ec81a-be22-4426-8590-2926948c47ff	d580c4ae-6acb-442d-9910-dacb2c022032	311121a8-540b-4ff1-bb60-ed3be3d1ce17
1113235a-5388-4c89-875f-38160bed4211	27888cc9-f2a4-41c3-b8fa-9b0ae174a3be	ffbb78ce-0bb5-4fd1-b8c1-5b8158d42cb3
070d7b87-6723-4517-a598-0191efc383ba	96fb1f43-2e80-45ef-b5c6-136853ee5a3f	ffbb78ce-0bb5-4fd1-b8c1-5b8158d42cb3
9fa44afd-7bf6-43db-9772-e071a67d2f65	5561a2f9-534c-4147-896f-903061a8fb52	ba8d6ae0-fef5-43a2-82b2-f45ca9cb7136
adf0deb4-abe6-44fe-85dc-9bd9bf384943	c3e61856-a391-4ab1-a069-5219f4ef1df4	679e1bf5-ab82-473d-aab4-bee383773cf9
0e080860-9711-4676-a2ed-b6d8df60e406	19bb4331-98ec-45cd-8313-90c013752700	4dd1529e-6980-4e7f-94e3-4dfcdaee8d92
63703866-05f0-42d1-90ce-59c0238a0d8d	3cc9552e-7bb4-4eb9-b4c8-9d887cb28ae7	679e1bf5-ab82-473d-aab4-bee383773cf9
d3189b2d-730a-41bf-8f3d-c4db1be92f7a	8a120647-3b95-4866-9b95-1ce8d682aa06	679e1bf5-ab82-473d-aab4-bee383773cf9
b8319bc8-fabf-461a-a1f0-ed27b6c83cb7	3f92fa02-d742-4bd2-9c3e-09f8cc3b9e25	70d7967a-6690-4ee7-b6df-9f38dae86d13
ef421d69-b777-4e37-bc13-51de7a250864	67a47361-5fa5-4bc3-b2f2-f59733d995fc	b7a3267e-4103-4d99-aaa6-cc4a863392e8
89671f9d-717c-4f66-a2e6-f89e681cc324	aa1c63ee-7f1a-430a-bd7b-541e0bd6dedc	311121a8-540b-4ff1-bb60-ed3be3d1ce17
706c1a8f-544d-4238-a7af-3f61a93b7dac	9b298745-cc5a-4888-8b93-f34a5edbad3a	350ada05-9b98-4ae0-a9d5-e51be1599c96
896d1d84-73c8-4d84-94b9-dd9f2d8559e7	96fa2331-d328-4aae-8117-8f9cec003ebb	d65b6183-17ca-43df-b7ec-5eee7c53ac82
5ea74afe-d885-4175-a312-dd911128124b	f8a00cdf-4aa7-4bfc-a18a-eab88f61c8f3	679e1bf5-ab82-473d-aab4-bee383773cf9
8424e470-918b-4a52-beeb-088425a3fcf8	79d8f1b0-2ebb-4110-aad1-0bbf8806f976	0c6f2d96-be7d-4734-afb4-89e15b301f8b
1c439c1e-7a2c-4e92-a11c-b3c587df30fb	14eeb316-84d5-4fe7-9b93-a43aa01d6032	0c6f2d96-be7d-4734-afb4-89e15b301f8b
6fcd1b1c-b4f4-4b92-81ee-68f3234bee32	8118bab1-0ab3-4ed2-8d18-a31a837f7ea9	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
0b201a49-a57a-4602-9d18-a440490bbfbd	67d62304-46dc-471b-b664-b3fcd912ca53	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
caa40db9-9e1e-47c8-8423-92b5147c1a19	29414eb2-b5e1-432d-9024-94e26851155d	2b3f0d7d-6ffe-4a3b-bd8d-c01e7718e6ab
1fb3b2fc-bdf8-4ca9-aaca-468700555e31	abf952a1-3ca3-4b47-b4f5-b1d9d1df7cdd	2a10dfa4-fd61-49c3-98e1-81975560b222
efb7ed07-72e3-481a-a64b-dcd7d373b59f	cd03c32f-1653-4a70-afd3-95518d0a3205	43d3671f-e0d1-48fe-9eb4-61468276f3bd
2fa1bee8-fc3f-435e-8089-4461ce65f8c4	78853929-e56b-487e-a9c2-e230dd1cbd36	ef0469eb-0281-4787-9bd4-3297f1fdc4f1
686939d0-659b-4d2b-a956-e7b6217b82b9	504cd540-7e55-4d27-a378-05e7e767e4c0	8a7a4a27-61a9-4eff-a87a-0c2a8699e92e
4fe4640c-524d-43ff-9afc-08ba54d57f1e	cba3a103-4cc6-4d6c-b162-42137d80815f	d2e3b60e-b406-48b3-aa3d-2a09156765f4
fe25afaf-e620-4539-9db2-1f2f0e33b232	e6d93e44-11a8-4ec7-a238-b3bbbba05c43	311121a8-540b-4ff1-bb60-ed3be3d1ce17
677ad49a-3f16-4452-9e2a-1d26f7bf057a	72b3308d-3811-4457-95ae-bd8e99fda281	311121a8-540b-4ff1-bb60-ed3be3d1ce17
\.


--
-- Data for Name: user_category_overrides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_category_overrides" ("id", "user_id", "template_id", "name", "icon", "color", "is_active", "is_custom", "created_at", "updated_at", "type", "parent_override_id") FROM stdin;
c0731c85-71c3-4cf6-bfc2-0a61cc363f2c	346b32d1-b21f-4ce9-ac27-a69e67abb103	00dd2da5-0a63-45f7-b534-6aaa0b27f5c2	Comida y Bebidas	🍔	#FF6B6B	t	f	2025-11-14 00:25:58.274	2025-11-14 00:25:58.274	EXPENSE	\N
27fccd39-52ef-4715-821b-ab85fa57f46f	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Feria	🛒	#06A77D	t	t	2025-11-18 16:50:57.213	2025-11-18 16:50:57.213	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
629fe010-c524-4a31-a7b0-efd7b64d9bbc	346b32d1-b21f-4ce9-ac27-a69e67abb103	d5123d46-4430-4a6e-8ef2-a9e395dd4061	Otros Gastos	📌	#C7CEEA	t	f	2025-11-18 16:51:25.34	2025-11-18 16:51:25.34	EXPENSE	\N
74dbaf4c-1b84-4c6b-9383-de2b59a86cca	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suscripciónes	📱	#8338EC	t	t	2025-11-18 16:51:25.834	2025-11-18 16:51:25.834	EXPENSE	629fe010-c524-4a31-a7b0-efd7b64d9bbc
c2787ad3-49d1-4bfd-bbd7-db9383803d1e	346b32d1-b21f-4ce9-ac27-a69e67abb103	13df9098-65cd-4149-aac3-71a01cdc60c3	Vivienda	🏠	#FFE66D	t	f	2025-11-18 16:51:47.258	2025-11-18 16:51:47.258	EXPENSE	\N
9db1fe37-0ec7-4467-9819-511256db4fe6	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suscripciones	📱	#F77F00	t	t	2025-11-18 16:51:47.753	2025-11-18 16:51:57.527	EXPENSE	c2787ad3-49d1-4bfd-bbd7-db9383803d1e
88a43547-8d29-426d-b9eb-bf2bb38fe3e1	346b32d1-b21f-4ce9-ac27-a69e67abb103	0d1a874a-1143-42d9-897e-5f9abb779b05	Transporte	🚗	#4ECDC4	t	f	2025-11-18 18:24:29.964	2025-11-18 18:24:29.964	EXPENSE	\N
43ce1783-37f8-4f27-92a8-04c27a3f070a	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	TAG	🚗	#45B7D1	t	t	2025-11-18 18:24:31.669	2025-11-18 18:24:31.669	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
bb80c962-8810-4dd6-8aa7-6277041dae78	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Credito	💼	#F77F00	t	t	2025-11-18 18:24:53.618	2025-11-18 18:24:53.618	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
31b3e981-3dff-4973-9bc5-8530fb5f61c9	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Huevos y Fiambres	🍽️	#FF6B6B	t	t	2025-11-18 19:18:19.029	2025-11-18 19:18:19.029	EXPENSE	c0731c85-71c3-4cf6-bfc2-0a61cc363f2c
6d6c20c0-81f2-4afb-a72e-228c0a3982e0	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Seguro	🔧	#FF6B6B	t	t	2025-11-18 19:54:14.871	2025-11-18 19:54:14.871	EXPENSE	88a43547-8d29-426d-b9eb-bf2bb38fe3e1
e465270b-669b-44a9-8c8c-3275f4d2af4c	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Inversiones	📊	#52B788	t	t	2025-11-19 16:53:14.712	2025-11-19 16:53:14.712	EXPENSE	\N
5ec041fc-8c57-4f46-a1e9-80ffc95bf107	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Crypto	💎	#06A77D	t	t	2025-11-19 16:53:34.522	2025-11-19 16:53:34.522	EXPENSE	e465270b-669b-44a9-8c8c-3275f4d2af4c
90936b66-3ec7-4ebd-bf87-c5f030e12fce	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Stocks	💰	#06A77D	t	t	2025-11-19 16:53:52.974	2025-11-19 16:53:52.974	EXPENSE	e465270b-669b-44a9-8c8c-3275f4d2af4c
a432fac5-4158-46f6-9ba1-cb2067174a2c	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Comisiones	🎯	#E63946	t	t	2025-11-19 16:58:15.892	2025-11-19 16:58:15.892	EXPENSE	629fe010-c524-4a31-a7b0-efd7b64d9bbc
c9b04f8d-867a-42cf-ba91-e5229101f119	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Condominio	🏠	#F8B739	t	t	2025-11-25 18:27:16.998	2025-11-25 18:27:16.998	EXPENSE	c2787ad3-49d1-4bfd-bbd7-db9383803d1e
b0a6931c-9e07-41ae-ba4a-e72e0b54c9e6	346b32d1-b21f-4ce9-ac27-a69e67abb103	35adb535-b34b-4a6b-9e5f-bd9e690980e6	Compras	🛍️	#95E1D3	t	f	2025-11-28 12:54:56.753	2025-11-28 12:54:56.753	EXPENSE	\N
a04483ea-8923-4cf5-9065-261cf4a16ca8	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Fitness	🏆	#BB8FCE	t	t	2025-11-28 12:54:58.524	2025-11-28 12:54:58.524	EXPENSE	b0a6931c-9e07-41ae-ba4a-e72e0b54c9e6
dce2c10a-5549-4310-b672-0801111fa10e	346b32d1-b21f-4ce9-ac27-a69e67abb103	0cc0ea9b-9c65-4e58-971a-d23a5f1332bb	Salud	⚕️	#FCBAD3	t	f	2025-12-02 16:24:10.797	2025-12-02 16:24:10.797	EXPENSE	\N
5a45805d-2461-4e86-a227-7df30c4fd9ae	346b32d1-b21f-4ce9-ac27-a69e67abb103	\N	Suplementos	🏋️	#F8B739	t	t	2025-12-02 16:24:12.56	2025-12-02 16:24:12.56	EXPENSE	dce2c10a-5549-4310-b672-0801111fa10e
\.


--
-- Data for Name: user_dashboard_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_dashboard_preferences" ("id", "user_id", "widgets", "layout", "created_at", "updated_at") FROM stdin;
625672c1-2a65-4f6d-9fb6-99f5ba4893ca	b88abd1d-92fe-4818-ba01-95681f09b96d	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 2, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-5", "w": 4, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-6", "w": 4, "x": 0, "y": 4, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 8, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-10", "w": 2, "x": 2, "y": 8, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-11", "w": 2, "x": 0, "y": 10, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-12", "w": 4, "x": 0, "y": 12, "minH": 1, "minW": 2}]	2025-11-21 13:28:08.663	2025-11-24 20:13:39.717
0182cccb-9a10-4e0f-acef-3f1b084c1f16	f06079b2-c6a7-421a-8c5c-287dbb21e3ca	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-5", "w": 4, "x": 0, "y": 1, "minH": 1, "minW": 2}, {"h": 1, "i": "widget-6", "w": 4, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 3, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 3, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 5, "minH": 1, "minW": 2}, {"h": 1, "i": "widget-10", "w": 2, "x": 2, "y": 5, "minH": 1, "minW": 2}, {"h": 3, "i": "widget-12", "w": 2, "x": 0, "y": 7, "minH": 1, "minW": 2}]	2025-11-21 13:26:50.465	2025-11-27 20:12:51.97
88647620-e715-453b-bef7-dd8995692515	d8c5e32f-c64d-4437-b302-3a64d8f3f116	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-4", "type": "groups"}, {"id": "widget-5", "type": "quick-actions"}, {"id": "widget-6", "type": "balances"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-8", "type": "expenses-by-category"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-10", "type": "group-balances"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-4", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-5", "w": 4, "x": 0, "y": 1, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-6", "w": 4, "x": 0, "y": 3, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-8", "w": 2, "x": 2, "y": 5, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 7, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-10", "w": 2, "x": 2, "y": 7, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-12", "w": 4, "x": 0, "y": 9, "minH": 1, "minW": 2}]	2025-11-13 16:41:43.26	2025-12-04 00:00:16.936
305eb0c9-02bf-467a-a36f-d3a331ad9607	346b32d1-b21f-4ce9-ac27-a69e67abb103	[{"id": "widget-1", "type": "total-balance"}, {"id": "widget-2", "type": "monthly-income"}, {"id": "widget-3", "type": "monthly-expenses"}, {"id": "widget-7", "type": "cash-flow"}, {"id": "widget-9", "type": "balance-trend"}, {"id": "widget-11", "type": "account-balances"}, {"id": "widget-12", "type": "recent-transactions"}, {"id": "widget-1763575423316-yxrqyg2uk", "type": "expenses-by-parent-category", "settings": {}}, {"id": "widget-1763575444506-tamh8hgq8", "type": "expense-details-pie", "settings": {}}, {"id": "widget-1763659024518-btdbfj5b4", "type": "personal-expenses", "settings": {}}, {"id": "widget-1763659046596-nfgbroz3w", "type": "shared-expenses", "settings": {}}, {"id": "widget-1763659066607-lsil57dug", "type": "savings", "settings": {}}, {"id": "widget-1763665253130-8wd45uwmx", "type": "balances", "settings": {}}]	[{"h": 1, "i": "widget-1", "w": 1, "x": 0, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-2", "w": 1, "x": 1, "y": 0, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-3", "w": 1, "x": 2, "y": 0, "minH": 1, "minW": 1}, {"h": 2, "i": "widget-7", "w": 2, "x": 0, "y": 2, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-9", "w": 2, "x": 0, "y": 4, "minH": 1, "minW": 2}, {"h": 3, "i": "widget-12", "w": 2, "x": 0, "y": 6, "minH": 1, "minW": 2}, {"h": 2, "i": "widget-1763575423316-yxrqyg2uk", "w": 2, "x": 2, "y": 4, "minH": 1, "minW": 1}, {"h": 3, "i": "widget-1763575444506-tamh8hgq8", "w": 2, "x": 2, "y": 6, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659024518-btdbfj5b4", "w": 1, "x": 1, "y": 1, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659046596-nfgbroz3w", "w": 1, "x": 0, "y": 1, "minH": 1, "minW": 1}, {"h": 1, "i": "widget-1763659066607-lsil57dug", "w": 1, "x": 3, "y": 0, "minH": 1, "minW": 1}, {"h": 3, "i": "widget-1763665253130-8wd45uwmx", "w": 2, "x": 2, "y": 1, "minH": 1, "minW": 1}]	2025-11-13 15:47:47.064	2025-12-05 17:55:02.428
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

-- \unrestrict FrI9pkJRkvstYeYNNYgXkho12kbDBP16ikRltbvhs8SROVO73HkZInyXd0EQLms

RESET ALL;
