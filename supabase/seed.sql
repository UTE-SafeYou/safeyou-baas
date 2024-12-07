SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.6

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'b60bc604-e400-4484-a939-e2b821ab0ad1', '{"action":"user_signedup","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-06 03:14:00.104941+00', ''),
	('00000000-0000-0000-0000-000000000000', '36c6c5f3-149b-45c4-866f-fcb307f8b8fb', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 03:14:00.124492+00', ''),
	('00000000-0000-0000-0000-000000000000', '76675fc7-3f89-44b1-982a-7dc43a206b10', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 03:15:08.713341+00', ''),
	('00000000-0000-0000-0000-000000000000', '87f8c5f9-c29b-4876-94e8-03612508bdc1', '{"action":"user_signedup","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-06 03:17:43.851463+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a37d8244-8a58-4ddd-9393-258f6692a45a', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 03:17:43.854632+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d50f4ea-6488-480a-b46e-f5aca165e352', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 03:18:56.070872+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d1a9e7e-3759-48cf-9c86-e10585ce407e', '{"action":"user_signedup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-06 05:09:13.123371+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d33fe97-0a71-42cb-8495-56f8439f4a0a', '{"action":"login","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 05:09:13.128765+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f54c63b3-0d0b-41dc-a01d-86e52d932861', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:09:25.014234+00', ''),
	('00000000-0000-0000-0000-000000000000', '88130fd1-d5dd-4ab4-aa38-d912e0f878a6', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:10:37.530661+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffb972e7-5aeb-4b71-9d81-f321af678b70', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:11:07.002403+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2a9f91e-71a3-45be-b61d-7046a121b608', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:12:19.644079+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ff3b721-1828-4c89-931e-b8ec385698c1', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:12:35.576728+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e6c1ea9-db1c-421e-8fdb-3643512e3a5c', '{"action":"user_repeated_signup","actor_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-06 05:42:32.207041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf0c4aa8-1891-416e-91ef-2f087ab35aca', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"safeyou@gmail.com","user_id":"6a69fb32-1350-4445-8cf9-9e58a9250245","user_phone":""}}', '2024-12-06 05:42:42.952814+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f32415a-ac3f-4703-a4a2-33db3c5af33f', '{"action":"user_signedup","actor_id":"6ca30b44-a094-4919-81a1-c17d4310a637","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-06 05:42:52.331465+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a168c02a-00fc-4e33-ac9d-0e1f73e2496a', '{"action":"login","actor_id":"6ca30b44-a094-4919-81a1-c17d4310a637","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 05:42:52.334864+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd779b3c0-e560-414f-9a70-2d5456107cee', '{"action":"login","actor_id":"6ca30b44-a094-4919-81a1-c17d4310a637","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 05:43:22.830183+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c97d334-057a-4f01-8fd7-97a54f6c1b27', '{"action":"login","actor_id":"6ca30b44-a094-4919-81a1-c17d4310a637","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 07:47:13.862508+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0f76813-0fc2-4873-85ab-bc6c8c1730f2', '{"action":"login","actor_id":"6ca30b44-a094-4919-81a1-c17d4310a637","actor_username":"safeyou@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 07:47:35.131117+00', ''),
	('00000000-0000-0000-0000-000000000000', '517f1d6d-f1ed-4f14-b972-d1c03d918c71', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 09:22:40.096487+00', ''),
	('00000000-0000-0000-0000-000000000000', '0bc27648-8f38-4d76-abbe-669b2f08f043', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 09:23:22.145586+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8bc37ec-a89a-4dcf-b1c9-45ae39fcb2fd', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 12:06:49.069892+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ddc8dc7a-42d8-4c92-8692-ef9b81b64e7d', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 13:01:16.560777+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ad2b858-a270-43e4-b577-c93336ed382b', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-06 13:35:46.456366+00', ''),
	('00000000-0000-0000-0000-000000000000', '07097d82-8e3a-4ae1-b8b1-fb81f75b2ef9', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 01:27:51.240303+00', ''),
	('00000000-0000-0000-0000-000000000000', '8509713b-af0f-4bbc-8fc5-2cba706de301', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 03:27:27.67038+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d170e0f-a447-48ec-81ba-06f393fe80f1', '{"action":"user_repeated_signup","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-07 03:29:30.347679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed423ec8-8215-4fe5-8cf7-76d9f7ba68a2', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 03:29:41.697423+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '6ca30b44-a094-4919-81a1-c17d4310a637', 'authenticated', 'authenticated', 'safeyou@gmail.com', '$2a$10$lOYHQoRr0AFAvEMG9mtXu.x5AwlQ4fvO6A2LeSH5i6o7o5mpBxksy', '2024-12-06 05:42:52.332564+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-06 07:47:35.132368+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "6ca30b44-a094-4919-81a1-c17d4310a637", "email": "safeyou@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-06 05:42:52.31865+00', '2024-12-06 07:47:35.137073+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '3ffd668d-8871-47ff-aefa-2b55afad5f26', 'authenticated', 'authenticated', 'watanabilinlin@gmail.com', '$2a$10$nv2t/jWKsgXBzIXxK1ZsEOS5gzpD/L7RXQeeWuuKB4pPi2dwNeP2G', '2024-12-06 03:14:00.114766+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-07 03:27:27.680603+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "3ffd668d-8871-47ff-aefa-2b55afad5f26", "email": "watanabilinlin@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-06 03:14:00.056985+00', '2024-12-07 03:27:27.69674+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'authenticated', 'authenticated', 'locn562836@gmail.com', '$2a$10$vQ24O6gS7BQ/001yicJiXexrEjtWFLmDCuXTDVhm48AmuYbs/IFLq', '2024-12-06 03:17:43.852119+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-07 03:29:41.698707+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "668f130c-e8bf-41d7-b9a6-239c9e0cf4a1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-06 03:17:43.839156+00', '2024-12-07 03:29:41.704106+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('3ffd668d-8871-47ff-aefa-2b55afad5f26', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '{"sub": "3ffd668d-8871-47ff-aefa-2b55afad5f26", "email": "watanabilinlin@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 03:14:00.096329+00', '2024-12-06 03:14:00.096403+00', '2024-12-06 03:14:00.096403+00', '5d4ee5b7-a0fd-4e96-b405-4e4d77eb8f65'),
	('668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '{"sub": "668f130c-e8bf-41d7-b9a6-239c9e0cf4a1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 03:17:43.84564+00', '2024-12-06 03:17:43.846994+00', '2024-12-06 03:17:43.846994+00', '0a7437a8-61bd-4c6b-8751-4112fafd1651'),
	('6ca30b44-a094-4919-81a1-c17d4310a637', '6ca30b44-a094-4919-81a1-c17d4310a637', '{"sub": "6ca30b44-a094-4919-81a1-c17d4310a637", "email": "safeyou@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 05:42:52.324046+00', '2024-12-06 05:42:52.32411+00', '2024-12-06 05:42:52.32411+00', 'ed1243f5-1ec7-4636-9285-b966666859e3');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('6d0a0245-510f-4ae2-b9a6-1f83ff62fcca', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 03:14:00.126567+00', '2024-12-06 03:14:00.126567+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '35.78.75.34', NULL),
	('3c5813e0-1fbd-4410-918a-ea5f7f12eedb', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 03:15:08.714169+00', '2024-12-06 03:15:08.714169+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.159.53', NULL),
	('9a6d6080-60e8-4c1e-8dca-a8eedd730cd2', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-06 03:17:43.855215+00', '2024-12-06 03:17:43.855215+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '43.202.60.36', NULL),
	('4c182620-3d77-4785-8a71-f376edcffee1', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 03:18:56.071617+00', '2024-12-06 03:18:56.071617+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.10.50', NULL),
	('fa65ff04-3fd3-439f-b354-00e7d0e29ae4', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 05:42:52.335422+00', '2024-12-06 05:42:52.335422+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.196.217', NULL),
	('82c5c99d-df11-4414-8de2-7ddf4ffac725', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 05:43:22.830918+00', '2024-12-06 05:43:22.830918+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.125.255.203', NULL),
	('24c2306f-2df5-4ae2-8f63-29fa91b06944', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 07:47:13.873311+00', '2024-12-06 07:47:13.873311+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.178.9.235', NULL),
	('2845c45d-8da2-432c-a118-d3e37bd7b256', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 07:47:35.132436+00', '2024-12-06 07:47:35.132436+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '3.35.131.169', NULL),
	('173c7f5a-745f-4f29-9017-921aba46078e', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 09:22:40.105879+00', '2024-12-06 09:22:40.105879+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '3.0.49.77', NULL),
	('4cb1b289-bc07-4eb4-9b00-703d4a484229', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 09:23:22.146274+00', '2024-12-06 09:23:22.146274+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.251.23.75', NULL),
	('36b28bec-e721-4a22-9d7b-d976b4be9afc', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 12:06:49.085778+00', '2024-12-06 12:06:49.085778+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.141.167.26', NULL),
	('7500e014-77e9-4a1e-9d89-2cc1c8b0a668', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 13:01:16.568343+00', '2024-12-06 13:01:16.568343+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.184.86', NULL),
	('6301362b-7efb-4779-8356-480b1bdebacd', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-06 13:35:46.464392+00', '2024-12-06 13:35:46.464392+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.212.174.76', NULL),
	('7531033f-7c6e-4272-808c-7fcba85517c5', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-07 01:27:51.256384+00', '2024-12-07 01:27:51.256384+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '52.221.228.207', NULL),
	('28245ea4-f89c-4e62-86cb-9c74083eb00b', '3ffd668d-8871-47ff-aefa-2b55afad5f26', '2024-12-07 03:27:27.681223+00', '2024-12-07 03:27:27.681223+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.173.206', NULL),
	('aaa0a761-2685-4e89-b127-204386ef44eb', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-07 03:29:41.698781+00', '2024-12-07 03:29:41.698781+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.174.33', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('6d0a0245-510f-4ae2-b9a6-1f83ff62fcca', '2024-12-06 03:14:00.143643+00', '2024-12-06 03:14:00.143643+00', 'password', '98653ca5-1c9d-4781-b18e-e6291e3ad26b'),
	('3c5813e0-1fbd-4410-918a-ea5f7f12eedb', '2024-12-06 03:15:08.717155+00', '2024-12-06 03:15:08.717155+00', 'password', 'c8af0ce2-dc2a-48b8-97e9-0d0474763aea'),
	('9a6d6080-60e8-4c1e-8dca-a8eedd730cd2', '2024-12-06 03:17:43.860771+00', '2024-12-06 03:17:43.860771+00', 'password', 'e0085f5e-8579-43f4-8c55-dad75000c4e1'),
	('4c182620-3d77-4785-8a71-f376edcffee1', '2024-12-06 03:18:56.076518+00', '2024-12-06 03:18:56.076518+00', 'password', '8a1cd797-75f3-43a8-84ff-5b74206f3238'),
	('fa65ff04-3fd3-439f-b354-00e7d0e29ae4', '2024-12-06 05:42:52.339422+00', '2024-12-06 05:42:52.339422+00', 'password', '593af6ca-7311-4f89-b005-8dca7b4bf203'),
	('82c5c99d-df11-4414-8de2-7ddf4ffac725', '2024-12-06 05:43:22.833431+00', '2024-12-06 05:43:22.833431+00', 'password', '4035ee8b-e263-4222-8f74-44f5f6bd8fe0'),
	('24c2306f-2df5-4ae2-8f63-29fa91b06944', '2024-12-06 07:47:13.891952+00', '2024-12-06 07:47:13.891952+00', 'password', '7a98cbe4-c285-43a9-b5cf-5e6d8eba5907'),
	('2845c45d-8da2-432c-a118-d3e37bd7b256', '2024-12-06 07:47:35.137409+00', '2024-12-06 07:47:35.137409+00', 'password', 'fd052aad-7143-4162-8312-d3948bf284b3'),
	('173c7f5a-745f-4f29-9017-921aba46078e', '2024-12-06 09:22:40.118272+00', '2024-12-06 09:22:40.118272+00', 'password', 'ff5c0412-caed-4849-a9eb-a9b02a4da5c3'),
	('4cb1b289-bc07-4eb4-9b00-703d4a484229', '2024-12-06 09:23:22.149313+00', '2024-12-06 09:23:22.149313+00', 'password', 'ed26579d-c556-436e-84a5-857f15f95958'),
	('36b28bec-e721-4a22-9d7b-d976b4be9afc', '2024-12-06 12:06:49.09554+00', '2024-12-06 12:06:49.09554+00', 'password', '50734c4e-6520-4b83-8e65-bb253315eec5'),
	('7500e014-77e9-4a1e-9d89-2cc1c8b0a668', '2024-12-06 13:01:16.577562+00', '2024-12-06 13:01:16.577562+00', 'password', 'b98a3dfd-8825-4ca0-baf3-80cdfe829a9a'),
	('6301362b-7efb-4779-8356-480b1bdebacd', '2024-12-06 13:35:46.476299+00', '2024-12-06 13:35:46.476299+00', 'password', '73ceb5a7-7411-4aec-bf31-c4f0559db211'),
	('7531033f-7c6e-4272-808c-7fcba85517c5', '2024-12-07 01:27:51.284992+00', '2024-12-07 01:27:51.284992+00', 'password', 'f449b17d-115f-47b0-ad8b-4d073c0343b2'),
	('28245ea4-f89c-4e62-86cb-9c74083eb00b', '2024-12-07 03:27:27.697515+00', '2024-12-07 03:27:27.697515+00', 'password', 'e4433c69-363b-470f-b5f1-7272c675a2a7'),
	('aaa0a761-2685-4e89-b127-204386ef44eb', '2024-12-07 03:29:41.704815+00', '2024-12-07 03:29:41.704815+00', 'password', '54a90651-19d8-4a6e-81d2-b19bfc52fcc8');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'HZjTRR4aINZ6zcFTOqbcvw', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 03:14:00.132377+00', '2024-12-06 03:14:00.132377+00', NULL, '6d0a0245-510f-4ae2-b9a6-1f83ff62fcca'),
	('00000000-0000-0000-0000-000000000000', 2, 'D3kUeNFO-b0BhLszy9P6pw', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 03:15:08.714891+00', '2024-12-06 03:15:08.714891+00', NULL, '3c5813e0-1fbd-4410-918a-ea5f7f12eedb'),
	('00000000-0000-0000-0000-000000000000', 3, 'TcdPmgtF1Tl3p7uaBtEfWA', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-06 03:17:43.856803+00', '2024-12-06 03:17:43.856803+00', NULL, '9a6d6080-60e8-4c1e-8dca-a8eedd730cd2'),
	('00000000-0000-0000-0000-000000000000', 4, 'qSnYOBFR1ky00t146WT8XA', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 03:18:56.07235+00', '2024-12-06 03:18:56.07235+00', NULL, '4c182620-3d77-4785-8a71-f376edcffee1'),
	('00000000-0000-0000-0000-000000000000', 6, 'dEyV2luDMLZUEjZY9lyiLw', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 05:42:52.336829+00', '2024-12-06 05:42:52.336829+00', NULL, 'fa65ff04-3fd3-439f-b354-00e7d0e29ae4'),
	('00000000-0000-0000-0000-000000000000', 7, 'UrSoIqR4Bp4ZM9u_EQrDfg', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 05:43:22.832258+00', '2024-12-06 05:43:22.832258+00', NULL, '82c5c99d-df11-4414-8de2-7ddf4ffac725'),
	('00000000-0000-0000-0000-000000000000', 8, 'xT5OF3VUy7UGC1JkGOchZQ', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 07:47:13.8822+00', '2024-12-06 07:47:13.8822+00', NULL, '24c2306f-2df5-4ae2-8f63-29fa91b06944'),
	('00000000-0000-0000-0000-000000000000', 9, 'Ul39j95vc4leuANSKS2U8Q', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 07:47:35.134967+00', '2024-12-06 07:47:35.134967+00', NULL, '2845c45d-8da2-432c-a118-d3e37bd7b256'),
	('00000000-0000-0000-0000-000000000000', 10, 'JSjX-ad6wT6kkREUDKLweA', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 09:22:40.109362+00', '2024-12-06 09:22:40.109362+00', NULL, '173c7f5a-745f-4f29-9017-921aba46078e'),
	('00000000-0000-0000-0000-000000000000', 11, 'uyaIyz21TkohqvloVfzxXQ', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 09:23:22.14697+00', '2024-12-06 09:23:22.14697+00', NULL, '4cb1b289-bc07-4eb4-9b00-703d4a484229'),
	('00000000-0000-0000-0000-000000000000', 12, '-2GN94OuifqRh3AWuAoI9w', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 12:06:49.089307+00', '2024-12-06 12:06:49.089307+00', NULL, '36b28bec-e721-4a22-9d7b-d976b4be9afc'),
	('00000000-0000-0000-0000-000000000000', 13, 'Se4zrVAYisUqOmxQiVLLhg', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 13:01:16.572418+00', '2024-12-06 13:01:16.572418+00', NULL, '7500e014-77e9-4a1e-9d89-2cc1c8b0a668'),
	('00000000-0000-0000-0000-000000000000', 14, 'VkMJY-C2sDVIiWtX7n4nDw', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-06 13:35:46.467578+00', '2024-12-06 13:35:46.467578+00', NULL, '6301362b-7efb-4779-8356-480b1bdebacd'),
	('00000000-0000-0000-0000-000000000000', 15, '2BueyQKgaHh-wvYz3e93gA', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-07 01:27:51.267291+00', '2024-12-07 01:27:51.267291+00', NULL, '7531033f-7c6e-4272-808c-7fcba85517c5'),
	('00000000-0000-0000-0000-000000000000', 16, 'Z4kFomP7PhkZryN_T-3cXQ', '3ffd668d-8871-47ff-aefa-2b55afad5f26', false, '2024-12-07 03:27:27.685723+00', '2024-12-07 03:27:27.685723+00', NULL, '28245ea4-f89c-4e62-86cb-9c74083eb00b'),
	('00000000-0000-0000-0000-000000000000', 17, 'FQLOciMtsBMKv9KhG9u9fg', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-07 03:29:41.700503+00', '2024-12-07 03:29:41.700503+00', NULL, 'aaa0a761-2685-4e89-b127-204386ef44eb');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: postgis; Owner: supabase_admin
--



--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."address" ("address_id", "street_number", "street", "district", "city", "location", "created_at", "ward", "latitude", "longitude") VALUES
	('7d2b84d4-7ed9-48c4-afdf-9cfc0cf364f1', NULL, NULL, NULL, NULL, NULL, '2024-12-06 03:14:00.928003', NULL, NULL, NULL),
	('52d84b5c-dd21-4ee1-9aef-fb0419540657', NULL, NULL, NULL, NULL, NULL, '2024-12-06 03:17:44.396091', NULL, NULL, NULL),
	('a57edc13-e84c-4d1a-ba3b-2a17aaec8d53', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 03:23:32.153244', 'Linh Chiểu', 10.852791, 106.77256),
	('33c77d21-9ea1-4058-96ab-7aebbd8dbca2', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 03:24:59.911349', 'Linh Chiểu', 10.852791, 106.77256),
	('3d3692ba-7d9e-457a-a582-7a76a7e4de26', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 04:04:34.722805', 'Linh Chiểu', 10.852791, 106.77256),
	('cd1aebab-a735-45d1-8716-fe1edbaab8f0', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 04:05:12.834757', 'Linh Chiểu', 10.852791, 106.77256),
	('ebfc5a3d-3196-479d-8f1d-94d229584dd7', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 04:05:26.874028', 'Linh Chiểu', 10.852791, 106.77256),
	('af443b64-ce48-4b83-a004-daa600e307f3', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 04:05:53.59373', 'Linh Chiểu', 10.852791, 106.77256),
	('1c1a8a77-4f74-4845-b7dc-bfcf329d65ab', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 04:06:27.43034', 'Linh Chiểu', 10.852791, 106.77256),
	('e834790a-60da-403b-a085-5b07824af6a7', '', '', '', '', NULL, '2024-12-06 05:09:13.702293', NULL, NULL, NULL),
	('5a4d1270-db58-4c7f-9a70-1ec2a573ad65', '346', 'Võ Văn Ngân', 'Thủ Đức', 'Thủ Đức', NULL, '2024-12-06 05:25:00.237607', 'Linh Chiêu', 10.8495655, 106.77129),
	('b4a79ee0-bfcf-4e29-b16f-ed83440caa98', '', '', '', '', NULL, '2024-12-06 05:42:52.420483', NULL, NULL, NULL),
	('7748267b-9d5b-4556-83e4-4673608629ae', 'Đường Cây Sộp', 'Mỹ An', 'Tiền Giang', 'Mỹ Tho', '0101000020E6100000000000000000F87F0F4AF3226EBD2440', '2024-12-07 02:40:36.541899', 'Mỹ phong', 10.369981, NULL),
	('79a56b5e-aa48-4421-ac81-be512e95902f', 'Đường Cây Sộp', 'Mỹ An', 'Tiền Giang', 'Mỹ Tho', '0101000020E61000007DCA31595C975A400F4AF3226EBD2440', '2024-12-07 02:42:48.74411', 'Mỹ phong', 10.369981, 106.36501),
	('68a57702-8b83-4aaf-a48b-606eff8f086a', '93D', 'Nguyễn Tri Phương', 'Tiền Giang', 'Mỹ Tho', '0101000020E6100000DED6CC107D975A404B3CA06CCAB92440', '2024-12-07 03:11:38.080892', '1', 10.362872, 106.36701);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."task" ("id", "title", "description", "required_skills", "urgency", "address_id", "end_date", "start_date", "task_status") VALUES
	('98c43daf-0f0a-4d27-94d0-afae113b9adc', 'a', 'a', 'a', 'HIGH', '3d3692ba-7d9e-457a-a582-7a76a7e4de26', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('8a9dbbac-7f8d-4272-80e7-406c43f76170', 'a', 'a', 'a', 'HIGH', 'cd1aebab-a735-45d1-8716-fe1edbaab8f0', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('f3d746e1-7e17-4f34-adb8-a7e1bbc86d7f', 'b', 'a', 'a', 'HIGH', 'ebfc5a3d-3196-479d-8f1d-94d229584dd7', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('87d74594-6ef3-4724-b9a2-46d88152173d', 'd', 'a', 'a', 'HIGH', '1c1a8a77-4f74-4845-b7dc-bfcf329d65ab', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('06313408-c2e1-475f-9199-bf8e4ccdba21', 'bc', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'a', 'HIGH', 'af443b64-ce48-4b83-a004-daa600e307f3', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('ca9872f8-1048-4844-bf88-3bfeae438f1f', 'd', 'a', 'a', 'HIGH', '5a4d1270-db58-4c7f-9a70-1ec2a573ad65', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO'),
	('f23fdfee-fa8c-4f10-aa75-83dabeb414b8', 'Clean up the park', 'Weekly park cleanup and maintenance', 'Basic cleaning knowledge', 'MEDIUM', '7748267b-9d5b-4556-83e4-4673608629ae', '2024-02-21 00:00:00', '2024-02-20 00:00:00', 'TODO'),
	('b0a1d58d-3220-4c14-be3d-6981c3fa8438', 'Clean up the park', 'Weekly park cleanup and maintenance', 'Basic cleaning knowledge', 'MEDIUM', '79a56b5e-aa48-4421-ac81-be512e95902f', '2024-02-21 00:00:00', '2024-02-20 00:00:00', 'TODO'),
	('4e52dac4-df76-41f9-bcaf-c4df8020b444', 'CHO CHÓ TOẢN ĂN', 'CHÓ', 'BIẾT CHO ĂN', 'HIGH', '68a57702-8b83-4aaf-a48b-606eff8f086a', '2024-11-26 12:51:08.056', '2024-11-26 12:51:08.056', 'TODO');


--
-- Data for Name: volunteerprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."volunteerprofiles" ("id", "user_id", "assignedtask", "skills") VALUES
	('63faefc9-1b1c-4afd-a3a7-031ed6134a75', '3ffd668d-8871-47ff-aefa-2b55afad5f26', NULL, 'văn nghệ, tháo vát');


--
-- Data for Name: assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."documents" ("id", "visibility", "category", "title", "content", "embedding", "created_at", "updated_at") VALUES
	('5dc57f84-c268-4f7f-bc48-4fb5f5b3e304', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:47:55.404919', '2024-12-06 07:47:55.404919'),
	('bd30c4c3-1648-4634-9e96-6dd8f99c5754', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:48:34.425492', '2024-12-06 07:48:34.425492'),
	('e672f2d1-e780-46af-a951-63335799559a', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:48:58.04519', '2024-12-06 07:48:58.04519'),
	('7b4402cd-b917-43b7-869a-fb5fe8787c9d', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:49:10.093266', '2024-12-06 07:49:10.093266'),
	('3d011f82-15ff-4179-9e10-09970758eaf8', 'private', 'default', 'Chưa đặt tiêu đề2222''\', '', NULL, '2024-12-06 07:48:37.05139', '2024-12-06 07:48:37.05139'),
	('a68afb9e-7d87-4bb8-9c1d-afc343f3e0bc', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:59:47.435724', '2024-12-06 07:59:47.435724'),
	('8abeeb6a-56f5-48de-9838-5d37507b7b98', 'private', 'default', 'Chưa đặt tiêu đềssss', '334343242432', NULL, '2024-12-06 07:42:53.967705', '2024-12-06 07:42:53.967705'),
	('e32198d4-45ba-4295-89e2-042953380b3e', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:55:57.209355', '2024-12-06 07:55:57.209355'),
	('f748f984-83f6-4881-af78-665f80829d84', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:56:18.726552', '2024-12-06 07:56:18.726552'),
	('6ae3ba0e-f8ef-4467-a425-83714091ac0c', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:56:32.314941', '2024-12-06 07:56:32.314941'),
	('8bd7035c-08dd-488b-a404-f4b823e9ac57', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:57:43.978499', '2024-12-06 07:57:43.978499'),
	('a8e1ceaa-3caa-46c0-93e8-6af7ead54c20', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 07:59:25.549943', '2024-12-06 07:59:25.549943'),
	('f6e6cbdf-992c-49d8-9306-763da3c4419e', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 08:00:46.157179', '2024-12-06 08:00:46.157179'),
	('ae9c5cef-ba15-4587-8546-3a193e91e276', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 08:01:56.120093', '2024-12-06 08:01:56.120093'),
	('7021ddf4-b8a3-4ef8-a9db-f8cfa9ccfd00', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 08:05:16.845665', '2024-12-06 08:05:16.845665'),
	('4546a8ed-591b-4403-8a31-409924a72a9e', 'private', 'default', 'Chưa đặt tiêu đề', '', NULL, '2024-12-06 08:05:33.754465', '2024-12-06 08:05:33.754465'),
	('673ca364-88f6-4bfb-bdaa-d1f6941bc851', 'private', 'default', 'Chưa đặt tiêu đề', '<p>33</p>', NULL, '2024-12-06 07:43:11.585685', '2024-12-06 07:43:11.585685'),
	('77bd483d-5d1d-4597-83b0-783567c43ea8', 'private', 'default', 'Chưa đặt tiêu đề', '<p>33</p>', NULL, '2024-12-06 08:12:11.698283', '2024-12-06 08:12:11.698283'),
	('2798a38d-bce3-4ab7-9107-ea27a8695b14', 'public', 'Lifestyle', 'Cách phòng chống bão', 'Lũ lụt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễt hiện nay diễn ra một cách báo động và chúng ta', NULL, '2024-12-06 08:42:35.472468', '2024-12-06 08:42:35.472468'),
	('406068b6-0a93-45ef-8f76-eeb861808ff7', 'public', 'Lifestyle', 'Cách phòng chống bão', 'You''re correct that edge functions are often used for lightweight, low-latency tasks like embedding content, performing transformations, or handling quick API requests. They aren''t designed for storing large files, especially due to their resource and size limitations. However, you can still use edge functions effectively in combination with cloud storage to optimize both performance and scalability. Here’s how you can use edge functions while dealing with large file storage: 1. Edge Functions for File Metadata and Preprocessing What it can do: Edge functions can handle smaller tasks like validating file formats, extracting metadata (e.g., file size, type, or a preview), or generating temporary upload links to cloud storage. What it can’t do: Edge functions should not handle the actual file storage itself, especially for large files. 2. Cloud Storage for File Storage What to use: Use cloud storage (like Amazon S3, Google Cloud Storage, or Azure Blob Storage) to store the actual files. Edge functions can generate signed URLs or use temporary links to allow users to upload files directly to cloud storage. How it works: The edge function handles user requests and provides a signed URL to the cloud storage where the file can be uploaded. The user uploads the file directly to cloud storage using that link. Once the file is uploaded, the edge function can process metadata, like creating a record in a database to track the file. 3. Example Workflow User requests file upload: User triggers an upload request through your web application. Edge function generates a signed URL: The edge function checks the request, verifies the user''s permissions, and generates a signed URL for cloud storage (S3, for example). User uploads file to cloud storage: The user uploads the file directly to S3 using the signed URL, bypassing the edge function but ensuring that the file is stored securely. Edge function processes the file: After upload, the edge function may trigger a background process to update the database, generate a thumbnail, or perform any other necessary operations. 4. Benefits of This Approach Scalability: You can handle large files without overloading the edge function, as the heavy lifting (file storage) is done in cloud storage. Low latency: Edge functions are still used to quickly handle tasks like generating signed URLs and processing metadata. Cost-effective: Cloud storage is optimized for large file storage and can scale with demand, potentially saving on resources that would be required if you attempted to store files in the edge environment. Example with Amazon S3: If you''re using AWS, you could use AWS Lambda (edge function) with Amazon S3: Lambda (edge function) creates a pre-signed URL to S3. The user uploads the file directly to S3 using the signed URL. Lambda then triggers a process to handle metadata or further actions like indexing the file. Would this approach work for your needs, or do you need more details on any specific step?', NULL, '2024-12-06 08:48:17.377719', '2024-12-06 08:48:17.377719');


--
-- Data for Name: donation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: geometries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: issue_event; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification" ("id", "title", "content", "type", "sendtype", "created_at") VALUES
	('14b526b1-c05a-4317-a57a-9e695ff5c3d9', 'Khẩn cấp', '{name} gà vãi', 'Emergency', NULL, '2024-12-06 03:14:48.047419+00'),
	('5d37c32a-cb9f-4035-840b-529199f1da1c', 'Khẩn cấp', '{name} gà vãi', 'Emergency', NULL, '2024-12-06 03:18:12.109919+00');


--
-- Data for Name: notification_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification_user" ("notification_id", "to_user_id") VALUES
	('14b526b1-c05a-4317-a57a-9e695ff5c3d9', '3ffd668d-8871-47ff-aefa-2b55afad5f26'),
	('5d37c32a-cb9f-4035-840b-529199f1da1c', '3ffd668d-8871-47ff-aefa-2b55afad5f26'),
	('5d37c32a-cb9f-4035-840b-529199f1da1c', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1');


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."report" ("id", "created_at", "urgency", "meta_data", "title", "report_type", "content", "address_id") VALUES
	('982c0f1f-87a3-47de-a605-def8542690e5', '2024-12-06 03:23:32.198532+00', 'HIGH', NULL, 'a', 'Dịch bệnh', 'a', 'a57edc13-e84c-4d1a-ba3b-2a17aaec8d53'),
	('6ecb3788-0ab4-44f2-80e6-652cdb7d2988', '2024-12-06 03:24:59.964059+00', 'HIGH', NULL, 'a', 'Dịch bệnh', 'a', '33c77d21-9ea1-4058-96ab-7aebbd8dbca2');


--
-- Data for Name: user_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profiles" ("profile_id", "user_id", "fullname", "address_id", "created_at", "citizen_id", "email", "phone") VALUES
	('085b7cb0-9ae4-45d6-9700-9360dd68d848', '3ffd668d-8871-47ff-aefa-2b55afad5f26', 'Ngân Lâm', '7d2b84d4-7ed9-48c4-afdf-9cfc0cf364f1', '2024-12-06 03:14:01.408371', NULL, 'watanabilinlin@gmail.com', '0898576009'),
	('d17f3901-1ba9-49dc-84cc-843ec55b2ad8', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'Nguyen Huu Loc', '52d84b5c-dd21-4ee1-9aef-fb0419540657', '2024-12-06 03:17:44.755713', NULL, 'locn562836@gmail.com', '0565564250'),
	('6424c86e-9de4-4c63-b89e-0ff5d0b74881', '6ca30b44-a094-4919-81a1-c17d4310a637', 'Safe You Admin', 'b4a79ee0-bfcf-4e29-b16f-ed83440caa98', '2024-12-06 05:42:52.488154', '', 'safeyou@gmail.com', '');


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_roles" ("user_id", "role") VALUES
	('3ffd668d-8871-47ff-aefa-2b55afad5f26', 'user'),
	('668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'user'),
	('6ca30b44-a094-4919-81a1-c17d4310a637', 'admin');


--
-- Data for Name: vector_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."vector_documents" ("id", "embedding", "metadata", "content") VALUES
	('b57e947f-18cb-465e-86be-9f78f3113044', '[-0.0251428,0.041718516,-0.059562474,-0.029577449,0.022846043,0.066901326,0.028592346,0.007881821,0.012623136,0.06542224,-0.03312002,0.06745238,0.116367996,0.040870413,0.030094117,-0.040874492,-0.0075265956,0.03291962,-0.026598508,0.028248597,0.030731495,-0.0031138035,0.05393009,0.024935802,-0.06139669,-0.0021884413,0.040289942,-0.024416912,0.0018973552,-0.079437844,0.024499882,0.040313423,1.5303654e-07,-0.013974651,0.02281876,0.020172352,0.034129467,0.029886054,0.023704663,-0.08435368,-0.0020078323,-0.0078447405,-0.042310774,0.025223155,0.021344583,0.005775667,-0.004331584,0.016143091,-0.0026336913,0.031133426,0.05062027,-0.023072045,-0.014120737,0.012739322,-0.00086842454,0.002147785,-0.041297633,-0.039476212,0.056138318,-0.08315144,-0.03163264,-0.003829345,-0.049652666,0.022751557,-0.037802774,-0.0010158484,0.006985723,-0.028790003,-0.01779803,0.030669654,-0.0484539,-0.017054431,-0.04572974,0.011503505,0.021904431,-0.07810419,-0.035096962,-0.0061776517,0.020596808,0.050392877,-0.03954725,-0.028801225,0.06385035,0.045671556,0.03116477,0.023481853,0.047441438,0.005115899,-0.078911655,0.03762097,0.029771209,0.011776834,-0.033138003,-0.020119602,0.05158847,0.028416391,-0.089770354,-0.114096075,0.02556662,0.052684035,0.0320213,0.036821794,-0.012412436,-0.050925016,0.051171925,0.005597691,0.005736137,0.030025255,-0.027281746,-0.026485574,-0.09472914,-0.03882447,0.03385066,-0.028343115,-0.038798705,0.019049361,0.0031391147,-0.008264479,-0.035814468,-0.03528416,0.0013043128,0.043875095,-0.05272044,0.02826408,0.01606173,0.038080137,-0.0113208685,-0.0033787508,-0.02377466,-0.050024673,0.0386637,-0.05697499,-0.02470435,-0.0012242497,-0.020249134,0.012127363,0.000929909,-0.011218547,0.011373307,-0.030331986,-0.01211088,-0.033606954,-0.09937435,0.012170743,-0.064365104,-0.03387604,-0.05240344,0.05296566,-0.020394757,0.021773553,-0.042798914,0.024811791,-0.039928082,0.011388995,-0.027205436,0.00073689077,0.0133092,-0.05813121,0.06482642,-0.016996609,0.029318133,-0.059970673,0.017525595,0.021922382,-0.04703122,-0.014746678,0.018846842,-0.030201694,0.035273734,-0.01753732,-0.015142147,-0.04454333,-0.02477977,-0.01806159,-0.02177616,-0.010127002,-0.01325921,-0.067034304,-0.017621895,-0.048761535,0.020735769,0.042544786,-0.008969926,-0.0046975845,0.007153133,-0.014056507,0.0072941924,0.008785445,0.0035551959,0.023287995,-0.046295654,0.008496758,0.06715418,-0.063771814,0.04101294,-0.02393581,0.03335148,0.004337176,0.015063404,0.0073131137,0.05990421,-0.026560059,-0.03274338,-0.0053047314,-0.03633651,0.020972688,0.020388778,-0.050730202,0.05417787,-0.0006713456,-0.04915007,-0.0042416663,0.014181809,-0.020279951,-0.027031437,0.032772224,0.07746583,-0.0072856396,0.08764337,-0.02734301,0.015908834,-0.037686758,0.05091939,0.031585876,-0.003438116,-0.01949267,-0.057405584,0.010874802,0.025001675,-0.030519798,-0.031192407,0.032899432,0.004769887,0.0118233105,-0.02395395,0.012029722,-0.016334312,-0.057467178,-0.005944993,0.043126453,-0.021361195,0.016066186,0.03668956,0.05289887,0.03467881,-0.019937867,-0.028015187,0.0727234,0.013847613,0.0036207628,0.003998869,-0.08206993,-0.0047147,0.01758374,-0.05523973,0.0021884318,0.05278854,0.041317724,-0.021695474,-0.02878771,0.03874426,-0.043923486,-0.015806124,-0.06531398,-0.0034445985,-0.07178324,-0.022653807,-0.018268708,0.048147473,-0.043643996,-0.010434555,-0.030115403,-0.056039624,-0.008598496,-0.03632464,0.014561752,-0.03309747,-0.0034629935,-0.07570586,-0.0085179405,0.024868723,0.0044561005,0.006928575,-0.015989253,-0.0049914676,-0.02459813,-0.0014419546,-0.0031959375,-0.048142053,-0.032026444,0.032976348,0.0102169,-0.009735552,-0.033242855,0.016408639,0.037891056,0.00790578,0.0653865,0.07021951,-0.019107252,0.044948496,0.02998148,-0.06204964,0.008441161,0.031605337,0.0064308285,-0.036035933,-0.023925586,0.028112723,-0.013572432,0.035758093,0.040521715,0.0021722042,0.0223942,-0.04910643,-0.020676106,-0.12841247,0.011893803,-0.022111397,0.03319089,0.06903067,0.004927175,-0.042768482,0.038480774,0.027355667,0.0019022517,0.012905407,-0.015191187,-0.032688472,0.00402963,0.062129453,-0.02562896,-0.018343728,-0.033010617,0.020041104,-0.006397701,-0.092928424,0.017176598,0.0631515,0.04527644,0.025737166,0.015875658,-0.011446796,0.03870907,-0.030918362,-0.059020445,0.0325849,-0.016891234,-0.016096605,-0.008580004,0.052593496,0.06388419,0.038231373,-0.01659477,-0.011581821,-0.012954897,0.0025489188,0.03670259,0.015230633,-0.03053022,0.018895825,0.011539027,-0.025416767,0.029554365,0.0055225915,0.020346003,0.04829227,0.013217536,-0.017705502,-0.028056385,-0.0049100635,0.060345378,-0.047670234,0.026842609,0.017164905,-0.012603891,0.006689774,0.04392301,0.07875037,-0.08099699,-0.008943432,-0.04566832,-0.012195638,0.009843851,-0.07218164,0.009592636,-0.0688184,-0.0076081078,0.015135841,0.027708903,-0.06074355,0.018756455,0.013176848,0.035388958,0.01322707,0.01768922,-0.03833666,0.009773717,-0.015725672,0.048809435,-0.00887967,-0.040684696,0.07372245,-0.039640777,0.01752291,-0.03023414,0.047276627,-0.005928994,-0.028229915,0.005079688,0.0429201,-0.015715932,0.01758811,0.029064672,-0.056265425,-0.015496629,0.04869004,-0.026604665,0.02462048,0.04217728,-0.04239266,0.055662353,0.023393413,0.037369147,0.00666612,-0.023421811,-0.026573522,-0.04011759,-0.05009134,-0.013647099,0.04778972,0.068305194,-0.028095188,-0.011346472,-0.012983891,0.013043498,0.005477245,0.027541857,-0.006292358,0.021901328,0.042585798,-0.009761627,0.0648263,0.0016645165,-0.039701108,-0.019208515,0.027552474,0.042841833,-0.03838319,-0.0059929146,0.017235914,0.0044127884,0.008303101,-0.01096133,-0.046823855,0.024021544,0.023413861,0.038491294,0.010859933,0.005253297,-0.00449547,0.0059348815,0.11330448,0.016247299,-0.03928504,-0.038029972,-0.053112805,-0.01610071,-0.034923337,-0.013237093,-0.00967119,-0.00274197,0.06294465,0.033451654,0.0030120416,-0.019036949,-0.011172121,0.024912365,0.0046018045,0.013912884,-0.0011602197,0.011016299,-0.0468216,-0.035147116,0.040663827,-0.058420345,-0.0114832455,0.05114617,0.00065177825,-0.00860455,-0.0012771238,0.037626915,-0.020636747,-0.030830266,0.019046918,-0.012075569,0.030407177,-0.027192285,-0.011634463,0.054079037,0.06086441,0.036448654,-0.011766514,0.016774504,0.0080211535,0.015000576,0.007273437,-0.058436044,0.04362224,-0.02789885,0.05118608,0.0028471893,0.066100866,0.018816909,-0.0721562,0.012752224,-0.048889726,0.0146273915,-0.06832963,0.043954562,0.013812211,-0.037551578,0.0137832165,0.01831975,0.02811126,-0.007271788,-0.009203677,0.0006363175,-0.007780094,-0.02590324,-0.021560121,0.08132787,0.033695374,0.055532992,0.015575159,0.056021485,0.04438071,-0.0008333374,0.0053059636,0.0024656856,0.058598462,0.020487718,0.0066653886,0.04947341,0.05037258,0.031811163,-0.0066069523,0.014485296,-0.03732136,0.041429415,-0.015155685,-0.032191917,-0.010896601,-0.03188379,-0.0037182504,-0.031308945,0.012911555,-0.027353467,-0.041618865,0.021682275,0.03289698,-0.02900432,0.048934106,0.029107241,-0.009384364,0.0033181538,-0.022293074,0.047566134,-0.02403617,-0.026422597,0.018103631,0.012829155,0.008825154,-0.019002225,0.019932413,-0.017471934,-0.038103122,0.0070935893,0.02578629,-0.03653496,-0.015627991,0.008228762,0.028023113,-0.019516703,-0.019497063,0.014053117,-0.012684542,-4.5365403e-05,-0.013604747,0.05267743,-0.04359696,0.030268582,-0.005131315,-0.010344816,0.043969803,-0.036672726,-0.041977692,-0.030118998,0.008150119,0.009728796,-0.017958626,0.013052126,-0.00866591,-0.0036601296,-0.021870656,-0.034367774,-0.00837563,-0.055099726,0.037249424,0.052193895,-0.051415946,0.052705117,-0.060939677,-0.016909676,-0.106300585,-0.008514655,-0.07524024,-0.0048033944,0.0327275,-0.012278385,-0.025300618,-0.0070301187,0.024522524,-0.03474543,-0.086725846,0.0076747998,0.012156019,-0.041714635,0.021853164,-0.0047212346,0.005499286,0.042207472,0.011680374,-0.028618282,0.0075448286,0.046307754,0.012737369,-0.036918335,0.018243583,-0.04713545,-0.008211317,0.086022995,0.08077711,-0.014612141,-0.05820557,0.06304316,0.0033909322,0.016582001,0.01844803,0.035535228,0.005818469,-0.014170409,-0.05010578,-0.016969724,0.029633706,-0.028076766,-0.054071873,-0.013404293,0.007343859,-0.022368463,-0.04170882,-0.060702488,-0.03705389,0.032230537,-0.019105693,0.008063024,-0.039928462,0.01945183,-0.013756003,-0.025594119,-0.04932442,0.015262303,0.04705974,0.033185683,0.030805316,-0.00025003776,0.04432469,0.018960524,-0.022216171,0.027745185,-0.023399528,-0.02113003,0.043420527,-0.07056694,-0.0061367294,0.0082851695,0.05101495,-0.013587734,0.03775414,0.0024614595,0.007858738,-0.06824106,-0.015534508,0.0432007,0.00497204,0.02347016,-0.036711883,0.015827112,0.0056128716,-0.043259583,-0.03385308,-0.08298476,-0.03738443,-0.014490214,0.016784078,0.013778377,0.04578227,-0.017611407,0.0058191926,0.028046945,-0.04296609,0.03956309,0.06415418,0.022479773,0.048533734,-0.018701183,0.003399539,0.010864516,-0.023220701,0.050893225,0.016542276,-0.059650466,0.026620248,0.025255412,0.035256647,-0.03751204,-0.027593149,0.026701642,-0.032721132,0.10091242,0.04195287,0.008642088,-0.05532546,0.034246232,-0.044489518,-0.023942348,0.008383369,-0.030859316,-0.0008104535,0.03149217,0.0059852414,-0.045814328,-0.030173007,-0.04196806,-0.033511672,0.013215043,-0.0008391928,-0.019527236,0.0066780485,-0.082613654,-0.044130962,0.038188417,0.023739373,0.046882883,0.034842733,0.026973728,-0.0087515935,-0.047943905,0.05942067,0.020790316,-0.023525372,0.07675635,0.014538059,0.011950396,0.0140067525,-0.021056399,0.0054437807,0.03291844]', '{"id": "154b0ebd-3c1c-4a22-8416-5a2fcff1345c", "loc": {"lines": {"to": 1, "from": 1}}, "source": "blob", "blobType": "text/plain"}', 'Chưa đặt tiêu đề I am not  dog 
text:"showCreateDocshowCreateDocshowCreateDoc"');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('places', 'places', NULL, '2024-12-02 10:15:56.043835+00', '2024-12-02 10:15:56.043835+00', false, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 17, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
