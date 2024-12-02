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
	('00000000-0000-0000-0000-000000000000', 'a3bd0cbc-a8bb-4c2e-9964-03e1e59dee67', '{"action":"user_signedup","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-01 07:13:11.350422+00', ''),
	('00000000-0000-0000-0000-000000000000', '5dc68296-6952-44d8-b348-632a37e42401', '{"action":"login","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 07:13:11.361301+00', ''),
	('00000000-0000-0000-0000-000000000000', '068da24d-b741-4f46-af9f-2056232770b5', '{"action":"user_repeated_signup","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-01 07:14:07.960155+00', ''),
	('00000000-0000-0000-0000-000000000000', '1861cfa1-52cd-45e2-ab56-4077772c40cd', '{"action":"login","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 07:29:26.702756+00', ''),
	('00000000-0000-0000-0000-000000000000', '2aa15259-f6de-4c9d-aba1-6e02d0acb278', '{"action":"login","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 07:35:54.169701+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0888a71-4448-4be4-811d-1790ede0813f', '{"action":"user_repeated_signup","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-01 07:54:26.045646+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b6fd72f-631e-4012-aecc-0e01f8d354ed', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"tctoan1024@gmail.com","user_id":"74a15515-e14c-4f6e-9065-e8016d3bb93c","user_phone":""}}', '2024-12-01 14:12:56.347396+00', ''),
	('00000000-0000-0000-0000-000000000000', '992313f3-8042-4b45-a158-f8a4a8b33022', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"tctoan1024@gmail.com","user_id":"74a15515-e14c-4f6e-9065-e8016d3bb93c","user_phone":""}}', '2024-12-01 14:13:19.886551+00', ''),
	('00000000-0000-0000-0000-000000000000', '31268591-8273-4cc3-a590-d0afcaa4f81d', '{"action":"user_repeated_signup","actor_id":"71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef","actor_username":"sxzc@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-01 14:15:09.548337+00', ''),
	('00000000-0000-0000-0000-000000000000', '91e51ca8-3d78-4a8f-8afb-49a74d1617c5', '{"action":"user_signedup","actor_id":"1c947692-2d9f-46b4-935e-dad1570df2e5","actor_username":"xxxsxzc@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-01 14:15:36.131517+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eeaeacc4-736e-4f0a-8826-f5dd14b39f4f', '{"action":"login","actor_id":"1c947692-2d9f-46b4-935e-dad1570df2e5","actor_username":"xxxsxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 14:15:36.135146+00', ''),
	('00000000-0000-0000-0000-000000000000', '46353187-8f4a-4ccd-ab1b-9017ba6beee6', '{"action":"login","actor_id":"1c947692-2d9f-46b4-935e-dad1570df2e5","actor_username":"xxxsxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 14:15:49.796665+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1481888-6206-44be-aa99-cdff0e579ae1', '{"action":"login","actor_id":"1c947692-2d9f-46b4-935e-dad1570df2e5","actor_username":"xxxsxzc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 14:17:59.631556+00', ''),
	('00000000-0000-0000-0000-000000000000', '0605e089-3c74-45a4-8894-9aef4d316a06', '{"action":"user_signedup","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-01 15:57:03.347736+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d22e3d0-5a2f-4248-b725-9db67b614992', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 15:57:03.352363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'defa87e2-abe6-411b-9e1b-44ac68a18e8d', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:05:06.445607+00', ''),
	('00000000-0000-0000-0000-000000000000', '76032b3f-f033-47b3-96a8-8bef1280f2f0', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:05:49.238854+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f34e75a-2aab-47ab-9ef8-ed384ba4ec08', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:06:16.878748+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9d7bf55-1bd9-41b5-9b8d-adad0d68d7b4', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:06:38.328454+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4c3a83b-3beb-46af-a2f1-9432ce423f86', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:06:56.900945+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c26a725-dc7c-4cad-996a-a3c9f48c6ae0', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:07:10.22367+00', ''),
	('00000000-0000-0000-0000-000000000000', '61ea70d8-df09-4120-ab5c-443e23e6185f', '{"action":"user_repeated_signup","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-01 16:22:27.65373+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fc649d7c-3209-45a3-95da-4c97cc7b569d', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:22:32.954121+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7b5f250-1ef8-4362-885d-e7dda15a33da', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:23:42.37876+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f2fba2a-e0b5-4b0e-a4e0-381535828e7a', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:23:49.499636+00', ''),
	('00000000-0000-0000-0000-000000000000', '9cc0408d-e506-4f36-931a-c6f0aefe12b2', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:26:50.5291+00', ''),
	('00000000-0000-0000-0000-000000000000', '804fb48a-c5e5-42c6-8011-e225c462f4f9', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:27:56.61674+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6f10d04-d684-415f-afbe-ee85988998be', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:28:21.619499+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c988401-8ead-4823-8ebb-8ae5fcfafd65', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:28:38.981232+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d2d0635-6b08-4551-a3d3-0f11fe4fc4d2', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:39:42.323807+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e661d81-588e-4e5e-bd49-33b1b6c8b01b', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:42:57.007895+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e1bc0cb-2d3b-4d29-9f4e-38cb3395a235', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:46:01.279834+00', ''),
	('00000000-0000-0000-0000-000000000000', '466ff1c2-e87d-4be2-b90e-f7209823a3df', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:46:16.123953+00', ''),
	('00000000-0000-0000-0000-000000000000', '83d1a1ac-2f65-405d-ba27-3027266cc85b', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:46:23.845765+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a57d1b2-8b73-4501-b823-b510db55a579', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:46:41.188111+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e697af0-d325-463e-a1b0-9f36cc41a5d6', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 16:47:14.614558+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c543411-2424-4c3a-ac4f-359743834730', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 19:00:18.749315+00', ''),
	('00000000-0000-0000-0000-000000000000', '6792eb64-adfd-43c9-b84b-ab2f6a00ff6f', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 19:19:06.185912+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c89f6019-9220-4390-bca0-95a749d101c8', '{"action":"login","actor_id":"2c870618-b675-4fa8-b778-2b2084ce638b","actor_username":"22zzzzs110x248@student.hcmute.edu.vn","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-01 19:21:44.760157+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c44fd1cf-45a4-49f8-a71c-e65c4afac74e', '{"action":"user_signedup","actor_id":"3c60f994-7a19-433c-ac8e-9fda8ff8d31a","actor_username":"abc@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-02 10:47:17.581619+00', ''),
	('00000000-0000-0000-0000-000000000000', '403b77c6-fbfe-47de-9fe3-d24291ad539f', '{"action":"login","actor_id":"3c60f994-7a19-433c-ac8e-9fda8ff8d31a","actor_username":"abc@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 10:47:17.592774+00', ''),
	('00000000-0000-0000-0000-000000000000', '48922dce-a62e-4ece-a134-64043a9c7bd4', '{"action":"user_repeated_signup","actor_id":"3c60f994-7a19-433c-ac8e-9fda8ff8d31a","actor_username":"abc@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-02 10:55:00.586827+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb430bba-9fa2-4bf9-a332-cbfd7e630c6d', '{"action":"user_signedup","actor_id":"d026dae4-ad41-4841-8982-51f4aab96b7b","actor_username":"abc1@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-02 10:55:28.814722+00', ''),
	('00000000-0000-0000-0000-000000000000', '6671fcb5-fb6a-42e5-85df-fa58425b656a', '{"action":"login","actor_id":"d026dae4-ad41-4841-8982-51f4aab96b7b","actor_username":"abc1@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 10:55:28.818628+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0facf96-20bc-4f2d-b890-5774a9061997', '{"action":"user_signedup","actor_id":"00904af9-8b6f-4ba2-a0fa-ec52917b24f1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-02 11:34:31.84092+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dadf3d64-021c-4eb4-be89-e03beaeccf91', '{"action":"login","actor_id":"00904af9-8b6f-4ba2-a0fa-ec52917b24f1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 11:34:31.845815+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '2c870618-b675-4fa8-b778-2b2084ce638b', 'authenticated', 'authenticated', '22zzzzs110x248@student.hcmute.edu.vn', '$2a$10$AFUq6660SRghN0MIk5ykle0n29Fn6StAGwXQ.XcS62el/v2ewCHxy', '2024-12-01 15:57:03.348434+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-01 19:21:44.761065+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "2c870618-b675-4fa8-b778-2b2084ce638b", "email": "22zzzzs110x248@student.hcmute.edu.vn", "email_verified": false, "phone_verified": false}', NULL, '2024-12-01 15:57:03.325114+00', '2024-12-01 19:21:44.764144+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '00904af9-8b6f-4ba2-a0fa-ec52917b24f1', 'authenticated', 'authenticated', 'locn562836@gmail.com', '$2a$10$IR.UYY0QoaYgqPbVi/nufe5nArtRrfrU94zmUURUHZooAhd0NGCIy', '2024-12-02 11:34:31.843225+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-02 11:34:31.846303+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "00904af9-8b6f-4ba2-a0fa-ec52917b24f1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-02 11:34:31.832407+00', '2024-12-02 11:34:31.852666+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', 'authenticated', 'authenticated', 'sxzc@gmail.com', '$2a$10$tS9nYQffwMpeOliQXoW9v.3UnX9W.hHzYUtjzt4PuSmt.xY15P8Mm', '2024-12-01 07:13:11.356747+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-01 07:35:54.171311+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef", "email": "sxzc@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-01 07:13:11.32451+00', '2024-12-01 07:35:54.175286+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '3c60f994-7a19-433c-ac8e-9fda8ff8d31a', 'authenticated', 'authenticated', 'abc@gmail.com', '$2a$10$PJopPqh2S7PzUrC9.hucw.baePnOAGbOrfh0lL7aDACHV.qWbk9Bi', '2024-12-02 10:47:17.585217+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-02 10:47:17.593361+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "3c60f994-7a19-433c-ac8e-9fda8ff8d31a", "email": "abc@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-02 10:47:17.534734+00', '2024-12-02 10:47:17.619585+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'd026dae4-ad41-4841-8982-51f4aab96b7b', 'authenticated', 'authenticated', 'abc1@gmail.com', '$2a$10$2vhYD1sMDnaw42ceLyaoxe.g5pAFqOzpjvU4dj6C/zNWjRsnwEVzi', '2024-12-02 10:55:28.815185+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-02 10:55:28.819085+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "d026dae4-ad41-4841-8982-51f4aab96b7b", "email": "abc1@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-02 10:55:28.805673+00', '2024-12-02 10:55:28.825431+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '1c947692-2d9f-46b4-935e-dad1570df2e5', 'authenticated', 'authenticated', 'xxxsxzc@gmail.com', '$2a$10$Gd0tbZK5dKkJRosyd0ydSu6QnHqUGcCqr5IAeH/C9aaOdGFiEE8b2', '2024-12-01 14:15:36.132554+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-01 14:17:59.632969+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "1c947692-2d9f-46b4-935e-dad1570df2e5", "email": "xxxsxzc@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-01 14:15:36.120977+00', '2024-12-01 14:17:59.639871+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', '{"sub": "71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef", "email": "sxzc@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-01 07:13:11.341744+00', '2024-12-01 07:13:11.341797+00', '2024-12-01 07:13:11.341797+00', '86005533-3db9-486d-82ce-9dfe13338fd3'),
	('1c947692-2d9f-46b4-935e-dad1570df2e5', '1c947692-2d9f-46b4-935e-dad1570df2e5', '{"sub": "1c947692-2d9f-46b4-935e-dad1570df2e5", "email": "xxxsxzc@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-01 14:15:36.127342+00', '2024-12-01 14:15:36.127393+00', '2024-12-01 14:15:36.127393+00', '5c4a6f13-0f1a-404e-92b3-a1c23a5e08e0'),
	('2c870618-b675-4fa8-b778-2b2084ce638b', '2c870618-b675-4fa8-b778-2b2084ce638b', '{"sub": "2c870618-b675-4fa8-b778-2b2084ce638b", "email": "22zzzzs110x248@student.hcmute.edu.vn", "email_verified": false, "phone_verified": false}', 'email', '2024-12-01 15:57:03.341415+00', '2024-12-01 15:57:03.34147+00', '2024-12-01 15:57:03.34147+00', '00784b9f-2181-4da1-8e3a-1503bd6f3a1c'),
	('3c60f994-7a19-433c-ac8e-9fda8ff8d31a', '3c60f994-7a19-433c-ac8e-9fda8ff8d31a', '{"sub": "3c60f994-7a19-433c-ac8e-9fda8ff8d31a", "email": "abc@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-02 10:47:17.57127+00', '2024-12-02 10:47:17.571347+00', '2024-12-02 10:47:17.571347+00', '61ddcb05-f3e9-4086-acc2-4bb2fd8d051b'),
	('d026dae4-ad41-4841-8982-51f4aab96b7b', 'd026dae4-ad41-4841-8982-51f4aab96b7b', '{"sub": "d026dae4-ad41-4841-8982-51f4aab96b7b", "email": "abc1@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-02 10:55:28.810913+00', '2024-12-02 10:55:28.810962+00', '2024-12-02 10:55:28.810962+00', '0132a8d9-c8b8-480b-9bf2-eb08c7567377'),
	('00904af9-8b6f-4ba2-a0fa-ec52917b24f1', '00904af9-8b6f-4ba2-a0fa-ec52917b24f1', '{"sub": "00904af9-8b6f-4ba2-a0fa-ec52917b24f1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-02 11:34:31.837876+00', '2024-12-02 11:34:31.837921+00', '2024-12-02 11:34:31.837921+00', '0d420fa9-76ac-4c6e-a8c7-2a74e27e9b7b');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('19015e31-9a18-4905-b279-536ad3ad4f30', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', '2024-12-01 07:13:11.361947+00', '2024-12-01 07:13:11.361947+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.125.248.59', NULL),
	('119f4ff3-3bb0-484b-909f-abe7441b8e57', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', '2024-12-01 07:29:26.70694+00', '2024-12-01 07:29:26.70694+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '52.193.171.28', NULL),
	('9a508de9-aaf8-424f-9fde-0dc9791cc6fd', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', '2024-12-01 07:35:54.171382+00', '2024-12-01 07:35:54.171382+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '18.183.16.230', NULL),
	('9a1f3a22-4819-4265-98f2-94cf2810f015', '1c947692-2d9f-46b4-935e-dad1570df2e5', '2024-12-01 14:15:36.136451+00', '2024-12-01 14:15:36.136451+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.231.233.233', NULL),
	('dec9c466-e21c-427f-a430-f07fb76dcf42', '1c947692-2d9f-46b4-935e-dad1570df2e5', '2024-12-01 14:15:49.798297+00', '2024-12-01 14:15:49.798297+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.212.68.86', NULL),
	('0256c4ef-4048-4780-9ab7-2977b26ff2db', '1c947692-2d9f-46b4-935e-dad1570df2e5', '2024-12-01 14:17:59.633099+00', '2024-12-01 14:17:59.633099+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '47.128.234.93', NULL),
	('7a1db4b9-ce97-4e71-8f3a-4fa0c7e13008', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 15:57:03.352979+00', '2024-12-01 15:57:03.352979+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.125.62.21', NULL),
	('701feaa9-1475-4f06-babf-9a6eefb65b22', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:05:06.447307+00', '2024-12-01 16:05:06.447307+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.125.62.21', NULL),
	('a659fbfc-1858-4124-bfe1-5d05c6b804a7', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:05:49.240763+00', '2024-12-01 16:05:49.240763+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '18.142.125.243', NULL),
	('20dae527-2014-49b2-a040-1ef1908b32f9', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:06:16.879545+00', '2024-12-01 16:06:16.879545+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '15.164.250.9', NULL),
	('3bf48854-8fe7-4db4-b0b6-fbf613c3e2c5', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:06:38.329234+00', '2024-12-01 16:06:38.329234+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '47.129.248.113', NULL),
	('a5160029-bf5b-48b9-91f6-ae8de85d99fe', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:06:56.901755+00', '2024-12-01 16:06:56.901755+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '18.176.53.113', NULL),
	('96de7ee6-cc47-4ed4-8c7d-6980177cc1a1', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:07:10.224545+00', '2024-12-01 16:07:10.224545+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.125.62.21', NULL),
	('4495418c-54a6-4f8d-9148-d91420925116', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:22:32.954845+00', '2024-12-01 16:22:32.954845+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.125.62.21', NULL),
	('590e0420-1bc7-4766-8504-1185ef204a6a', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:23:42.379786+00', '2024-12-01 16:23:42.379786+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.115.191.10', NULL),
	('2f607bbb-a811-4617-8250-d2c49693bd8f', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:23:49.500395+00', '2024-12-01 16:23:49.500395+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '15.164.250.9', NULL),
	('cd56eaac-4ad8-4169-a777-2caec37451ed', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:26:50.530801+00', '2024-12-01 16:26:50.530801+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.180.2.195', NULL),
	('78783f6c-07eb-428d-b8e4-2c9a3c93dc36', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:27:56.617753+00', '2024-12-01 16:27:56.617753+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '47.129.154.15', NULL),
	('f623bde0-b839-4ceb-ad7a-a38f4da1eaf3', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:28:21.620302+00', '2024-12-01 16:28:21.620302+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.64.97.55', NULL),
	('44222ef7-8d0c-46f1-a008-babb5f1403d9', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:28:38.982008+00', '2024-12-01 16:28:38.982008+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.180.240.189', NULL),
	('eff4f3b9-717b-4d8a-ad3f-dba2fdb5e5b2', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:39:42.326266+00', '2024-12-01 16:39:42.326266+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '3.36.92.155', NULL),
	('d16b5359-2c2d-41df-b8c8-3a6f268abaf7', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:42:57.008875+00', '2024-12-01 16:42:57.008875+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '18.143.152.101', NULL),
	('6d0874cd-238c-48c3-95b7-ae3f60c7d47c', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:46:01.281298+00', '2024-12-01 16:46:01.281298+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.255.218.24', NULL),
	('45a88987-92be-4b13-96cb-319dbb8efc48', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:46:16.124713+00', '2024-12-01 16:46:16.124713+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.255.226.210', NULL),
	('8d329909-c19c-484f-bd85-f592bd2b277a', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:46:23.846549+00', '2024-12-01 16:46:23.846549+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.64.97.55', NULL),
	('a811d287-8a14-4887-88e7-baa3f2c32f82', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:46:41.188933+00', '2024-12-01 16:46:41.188933+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '54.180.240.189', NULL),
	('64948398-9a0e-471d-959a-aede9ad8f2a0', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 16:47:14.615291+00', '2024-12-01 16:47:14.615291+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '15.164.170.135', NULL),
	('a934366a-5233-466c-9c52-31d147248864', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 19:00:18.750513+00', '2024-12-01 19:00:18.750513+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.212.68.86', NULL),
	('e5c07df0-e352-40f3-aaeb-7dfaba4cfa72', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 19:19:06.186942+00', '2024-12-01 19:19:06.186942+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '3.36.92.155', NULL),
	('d56878d2-4d3b-4b35-87f4-8519317b66a2', '2c870618-b675-4fa8-b778-2b2084ce638b', '2024-12-01 19:21:44.761135+00', '2024-12-01 19:21:44.761135+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '13.124.164.209', NULL),
	('c4d23e32-6d5b-4c96-9dd6-5938986d6689', '3c60f994-7a19-433c-ac8e-9fda8ff8d31a', '2024-12-02 10:47:17.593447+00', '2024-12-02 10:47:17.593447+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '47.129.114.222', NULL),
	('f7b23098-2403-4957-adbc-0044087c75ba', 'd026dae4-ad41-4841-8982-51f4aab96b7b', '2024-12-02 10:55:28.81915+00', '2024-12-02 10:55:28.81915+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '18.143.185.88', NULL),
	('dd95a856-368f-4252-8dd8-4611d29a11a7', '00904af9-8b6f-4ba2-a0fa-ec52917b24f1', '2024-12-02 11:34:31.846369+00', '2024-12-02 11:34:31.846369+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.3)', '15.164.221.167', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('19015e31-9a18-4905-b279-536ad3ad4f30', '2024-12-01 07:13:11.384717+00', '2024-12-01 07:13:11.384717+00', 'password', '01575540-d180-487b-8959-a48da7a961b1'),
	('119f4ff3-3bb0-484b-909f-abe7441b8e57', '2024-12-01 07:29:26.710111+00', '2024-12-01 07:29:26.710111+00', 'password', 'd9313f68-0c10-4465-8304-71aecbe7af04'),
	('9a508de9-aaf8-424f-9fde-0dc9791cc6fd', '2024-12-01 07:35:54.176006+00', '2024-12-01 07:35:54.176006+00', 'password', 'd292a8e1-e0b0-44ac-9387-e4391f9d9d13'),
	('9a1f3a22-4819-4265-98f2-94cf2810f015', '2024-12-01 14:15:36.153419+00', '2024-12-01 14:15:36.153419+00', 'password', 'f08dd415-cd11-402a-b942-b5f10253c63a'),
	('dec9c466-e21c-427f-a430-f07fb76dcf42', '2024-12-01 14:15:49.802866+00', '2024-12-01 14:15:49.802866+00', 'password', 'ef145227-4528-4623-9716-1520bb6febb2'),
	('0256c4ef-4048-4780-9ab7-2977b26ff2db', '2024-12-01 14:17:59.640471+00', '2024-12-01 14:17:59.640471+00', 'password', '79891d64-c289-4b01-a364-c7f50b73b8c3'),
	('7a1db4b9-ce97-4e71-8f3a-4fa0c7e13008', '2024-12-01 15:57:03.356289+00', '2024-12-01 15:57:03.356289+00', 'password', '7025a5bc-93a4-4ed9-8ed8-bbb0c65f0687'),
	('701feaa9-1475-4f06-babf-9a6eefb65b22', '2024-12-01 16:05:06.450985+00', '2024-12-01 16:05:06.450985+00', 'password', 'e14133a4-cf1f-4bb0-9216-4f58ce063a65'),
	('a659fbfc-1858-4124-bfe1-5d05c6b804a7', '2024-12-01 16:05:49.243341+00', '2024-12-01 16:05:49.243341+00', 'password', 'e89b0922-537f-4321-b3e3-7acd3f6f82d0'),
	('20dae527-2014-49b2-a040-1ef1908b32f9', '2024-12-01 16:06:16.881413+00', '2024-12-01 16:06:16.881413+00', 'password', '70c8aac3-33f5-4630-9b5c-b1b4e3605e7a'),
	('3bf48854-8fe7-4db4-b0b6-fbf613c3e2c5', '2024-12-01 16:06:38.331161+00', '2024-12-01 16:06:38.331161+00', 'password', '081bb261-e18e-4d00-832c-2a43b157634f'),
	('a5160029-bf5b-48b9-91f6-ae8de85d99fe', '2024-12-01 16:06:56.903829+00', '2024-12-01 16:06:56.903829+00', 'password', 'c7ffba5e-6df5-4203-ac5b-f2d807643de0'),
	('96de7ee6-cc47-4ed4-8c7d-6980177cc1a1', '2024-12-01 16:07:10.226645+00', '2024-12-01 16:07:10.226645+00', 'password', '6d8f1575-c2bc-47eb-aa4e-ae00f3f8b027'),
	('4495418c-54a6-4f8d-9148-d91420925116', '2024-12-01 16:22:32.95981+00', '2024-12-01 16:22:32.95981+00', 'password', '63aab411-b516-432f-a0d7-f02bf896fe48'),
	('590e0420-1bc7-4766-8504-1185ef204a6a', '2024-12-01 16:23:42.38279+00', '2024-12-01 16:23:42.38279+00', 'password', 'a1094a6b-fb37-477d-8076-96e8b2ce6b75'),
	('2f607bbb-a811-4617-8250-d2c49693bd8f', '2024-12-01 16:23:49.502313+00', '2024-12-01 16:23:49.502313+00', 'password', '95999c0a-0a35-4ece-9eb8-88f39959b8c7'),
	('cd56eaac-4ad8-4169-a777-2caec37451ed', '2024-12-01 16:26:50.533806+00', '2024-12-01 16:26:50.533806+00', 'password', '2b5df54e-8d10-4668-a81d-e5f82401aa64'),
	('78783f6c-07eb-428d-b8e4-2c9a3c93dc36', '2024-12-01 16:27:56.620837+00', '2024-12-01 16:27:56.620837+00', 'password', 'e5776337-785c-4db3-a92c-bc980f5e1745'),
	('f623bde0-b839-4ceb-ad7a-a38f4da1eaf3', '2024-12-01 16:28:21.622339+00', '2024-12-01 16:28:21.622339+00', 'password', '23e4f82b-d66b-44b6-91b8-1c3d0d0e8744'),
	('44222ef7-8d0c-46f1-a008-babb5f1403d9', '2024-12-01 16:28:38.9839+00', '2024-12-01 16:28:38.9839+00', 'password', '666d1746-550e-4ed2-994e-ced5036e3ed3'),
	('eff4f3b9-717b-4d8a-ad3f-dba2fdb5e5b2', '2024-12-01 16:39:42.329446+00', '2024-12-01 16:39:42.329446+00', 'password', '10de2350-81af-40d1-af3f-7c7f420d6a5c'),
	('d16b5359-2c2d-41df-b8c8-3a6f268abaf7', '2024-12-01 16:42:57.01271+00', '2024-12-01 16:42:57.01271+00', 'password', 'b87a5c54-cd9d-4092-abe2-7e2d004959f9'),
	('6d0874cd-238c-48c3-95b7-ae3f60c7d47c', '2024-12-01 16:46:01.286846+00', '2024-12-01 16:46:01.286846+00', 'password', '45d6ac72-4270-461a-b3a6-6c594e29d39d'),
	('45a88987-92be-4b13-96cb-319dbb8efc48', '2024-12-01 16:46:16.126549+00', '2024-12-01 16:46:16.126549+00', 'password', '4af51a79-53b5-4d0f-bd04-cc714c34edc8'),
	('8d329909-c19c-484f-bd85-f592bd2b277a', '2024-12-01 16:46:23.849219+00', '2024-12-01 16:46:23.849219+00', 'password', '27230f9a-f552-4f0b-9b14-4be79a3311af'),
	('a811d287-8a14-4887-88e7-baa3f2c32f82', '2024-12-01 16:46:41.191706+00', '2024-12-01 16:46:41.191706+00', 'password', 'c68da698-f487-4a9e-8255-0cfaa4db9213'),
	('64948398-9a0e-471d-959a-aede9ad8f2a0', '2024-12-01 16:47:14.617205+00', '2024-12-01 16:47:14.617205+00', 'password', 'a7a21488-def9-4d3c-8954-327a4152685a'),
	('a934366a-5233-466c-9c52-31d147248864', '2024-12-01 19:00:18.75517+00', '2024-12-01 19:00:18.75517+00', 'password', 'a03049f2-5d9d-478f-b679-a0f582a0a621'),
	('e5c07df0-e352-40f3-aaeb-7dfaba4cfa72', '2024-12-01 19:19:06.191823+00', '2024-12-01 19:19:06.191823+00', 'password', 'a0e0a330-6893-484d-8940-343ae9708899'),
	('d56878d2-4d3b-4b35-87f4-8519317b66a2', '2024-12-01 19:21:44.764664+00', '2024-12-01 19:21:44.764664+00', 'password', '81124d65-9a6c-4096-8feb-765f12594b35'),
	('c4d23e32-6d5b-4c96-9dd6-5938986d6689', '2024-12-02 10:47:17.620155+00', '2024-12-02 10:47:17.620155+00', 'password', 'a6a6da16-8147-48b6-976b-1e898aaabce5'),
	('f7b23098-2403-4957-adbc-0044087c75ba', '2024-12-02 10:55:28.825964+00', '2024-12-02 10:55:28.825964+00', 'password', '660e1685-868a-4030-a6c9-96b90b124207'),
	('dd95a856-368f-4252-8dd8-4611d29a11a7', '2024-12-02 11:34:31.853121+00', '2024-12-02 11:34:31.853121+00', 'password', '943b3e99-c415-459f-a7ea-aa0e301eeef5');


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
	('00000000-0000-0000-0000-000000000000', 1, '00VcwTDQ4AihbElaPP2jVg', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', false, '2024-12-01 07:13:11.369746+00', '2024-12-01 07:13:11.369746+00', NULL, '19015e31-9a18-4905-b279-536ad3ad4f30'),
	('00000000-0000-0000-0000-000000000000', 2, 'RfWcKaCptEQ9TvaHl5cX9Q', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', false, '2024-12-01 07:29:26.708011+00', '2024-12-01 07:29:26.708011+00', NULL, '119f4ff3-3bb0-484b-909f-abe7441b8e57'),
	('00000000-0000-0000-0000-000000000000', 3, 'FL8JgaW68KVISWbzPBq9vQ', '71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', false, '2024-12-01 07:35:54.173276+00', '2024-12-01 07:35:54.173276+00', NULL, '9a508de9-aaf8-424f-9fde-0dc9791cc6fd'),
	('00000000-0000-0000-0000-000000000000', 4, 'iguQp2xpCPqq48VXL9vWpg', '1c947692-2d9f-46b4-935e-dad1570df2e5', false, '2024-12-01 14:15:36.142213+00', '2024-12-01 14:15:36.142213+00', NULL, '9a1f3a22-4819-4265-98f2-94cf2810f015'),
	('00000000-0000-0000-0000-000000000000', 5, 'I_1DDc2xJHiZNF-A9fYf7A', '1c947692-2d9f-46b4-935e-dad1570df2e5', false, '2024-12-01 14:15:49.800221+00', '2024-12-01 14:15:49.800221+00', NULL, 'dec9c466-e21c-427f-a430-f07fb76dcf42'),
	('00000000-0000-0000-0000-000000000000', 6, 'NAoJSpS7WYsNvW0WjC0nCg', '1c947692-2d9f-46b4-935e-dad1570df2e5', false, '2024-12-01 14:17:59.636226+00', '2024-12-01 14:17:59.636226+00', NULL, '0256c4ef-4048-4780-9ab7-2977b26ff2db'),
	('00000000-0000-0000-0000-000000000000', 7, 'Mv92emjA_OhWSugrf_g8SA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 15:57:03.353957+00', '2024-12-01 15:57:03.353957+00', NULL, '7a1db4b9-ce97-4e71-8f3a-4fa0c7e13008'),
	('00000000-0000-0000-0000-000000000000', 8, 'k7MRZH32SCgcUhts8A1k4Q', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:05:06.448397+00', '2024-12-01 16:05:06.448397+00', NULL, '701feaa9-1475-4f06-babf-9a6eefb65b22'),
	('00000000-0000-0000-0000-000000000000', 9, 'H3nXrcsz4AcoSheO5-kzvw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:05:49.241491+00', '2024-12-01 16:05:49.241491+00', NULL, 'a659fbfc-1858-4124-bfe1-5d05c6b804a7'),
	('00000000-0000-0000-0000-000000000000', 10, '-uN7C8qDU8a-O6272m5dOw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:06:16.880231+00', '2024-12-01 16:06:16.880231+00', NULL, '20dae527-2014-49b2-a040-1ef1908b32f9'),
	('00000000-0000-0000-0000-000000000000', 11, 'au8RDIeVjoIDqfURVVkNOA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:06:38.32994+00', '2024-12-01 16:06:38.32994+00', NULL, '3bf48854-8fe7-4db4-b0b6-fbf613c3e2c5'),
	('00000000-0000-0000-0000-000000000000', 12, 'WMeOaSeNy07lSQew_QkYuQ', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:06:56.902534+00', '2024-12-01 16:06:56.902534+00', NULL, 'a5160029-bf5b-48b9-91f6-ae8de85d99fe'),
	('00000000-0000-0000-0000-000000000000', 13, '5GVkFV7ps_uYxkODew7HFw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:07:10.225378+00', '2024-12-01 16:07:10.225378+00', NULL, '96de7ee6-cc47-4ed4-8c7d-6980177cc1a1'),
	('00000000-0000-0000-0000-000000000000', 14, 'fbVaIoXIkrPvkIgQyOqh1w', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:22:32.956652+00', '2024-12-01 16:22:32.956652+00', NULL, '4495418c-54a6-4f8d-9148-d91420925116'),
	('00000000-0000-0000-0000-000000000000', 15, 'EyRlqorceFsnxgCqMQiWEw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:23:42.380844+00', '2024-12-01 16:23:42.380844+00', NULL, '590e0420-1bc7-4766-8504-1185ef204a6a'),
	('00000000-0000-0000-0000-000000000000', 16, 'ONk7TLtG0RQd47lNtDYhLA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:23:49.501121+00', '2024-12-01 16:23:49.501121+00', NULL, '2f607bbb-a811-4617-8250-d2c49693bd8f'),
	('00000000-0000-0000-0000-000000000000', 17, 'SufgItabYLWizkZoYlEGug', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:26:50.531834+00', '2024-12-01 16:26:50.531834+00', NULL, 'cd56eaac-4ad8-4169-a777-2caec37451ed'),
	('00000000-0000-0000-0000-000000000000', 18, 'ToGX1UfFC9UIMl6N2q0-BQ', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:27:56.6189+00', '2024-12-01 16:27:56.6189+00', NULL, '78783f6c-07eb-428d-b8e4-2c9a3c93dc36'),
	('00000000-0000-0000-0000-000000000000', 19, 'Z2fI_LtBpgeP9mWS0swvaA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:28:21.621077+00', '2024-12-01 16:28:21.621077+00', NULL, 'f623bde0-b839-4ceb-ad7a-a38f4da1eaf3'),
	('00000000-0000-0000-0000-000000000000', 20, 'zzFtOHqKJwV03qWeR5gAjw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:28:38.982735+00', '2024-12-01 16:28:38.982735+00', NULL, '44222ef7-8d0c-46f1-a008-babb5f1403d9'),
	('00000000-0000-0000-0000-000000000000', 21, 'DySl6AV4KETwtE3NxeaNUA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:39:42.327406+00', '2024-12-01 16:39:42.327406+00', NULL, 'eff4f3b9-717b-4d8a-ad3f-dba2fdb5e5b2'),
	('00000000-0000-0000-0000-000000000000', 22, 'V4vD1mZhlx4UwhDTfrp9tA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:42:57.009928+00', '2024-12-01 16:42:57.009928+00', NULL, 'd16b5359-2c2d-41df-b8c8-3a6f268abaf7'),
	('00000000-0000-0000-0000-000000000000', 23, 'DggiUGTqiS7rGJGCUntZfQ', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:46:01.283994+00', '2024-12-01 16:46:01.283994+00', NULL, '6d0874cd-238c-48c3-95b7-ae3f60c7d47c'),
	('00000000-0000-0000-0000-000000000000', 24, 'giV6zCOArhSWylMACIWXTA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:46:16.125387+00', '2024-12-01 16:46:16.125387+00', NULL, '45a88987-92be-4b13-96cb-319dbb8efc48'),
	('00000000-0000-0000-0000-000000000000', 25, 'BMRN3CW58TsJuxR6JHweQg', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:46:23.847267+00', '2024-12-01 16:46:23.847267+00', NULL, '8d329909-c19c-484f-bd85-f592bd2b277a'),
	('00000000-0000-0000-0000-000000000000', 26, 'ENFMic683CZHmMyvW3l_zQ', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:46:41.189916+00', '2024-12-01 16:46:41.189916+00', NULL, 'a811d287-8a14-4887-88e7-baa3f2c32f82'),
	('00000000-0000-0000-0000-000000000000', 27, '0yFHHnT4ymmu-H-d0CRDkA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 16:47:14.616014+00', '2024-12-01 16:47:14.616014+00', NULL, '64948398-9a0e-471d-959a-aede9ad8f2a0'),
	('00000000-0000-0000-0000-000000000000', 28, 'ed4XpC_IHCCaInT-cWM_Hw', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 19:00:18.7524+00', '2024-12-01 19:00:18.7524+00', NULL, 'a934366a-5233-466c-9c52-31d147248864'),
	('00000000-0000-0000-0000-000000000000', 29, 'ov5tJbbHvDkf0WzOuDijLA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 19:19:06.189295+00', '2024-12-01 19:19:06.189295+00', NULL, 'e5c07df0-e352-40f3-aaeb-7dfaba4cfa72'),
	('00000000-0000-0000-0000-000000000000', 30, '08CUpUfTwGD-lvDavDgjfA', '2c870618-b675-4fa8-b778-2b2084ce638b', false, '2024-12-01 19:21:44.76291+00', '2024-12-01 19:21:44.76291+00', NULL, 'd56878d2-4d3b-4b35-87f4-8519317b66a2'),
	('00000000-0000-0000-0000-000000000000', 31, '9HcW2IZY-dV1eVkS5Zx6mw', '3c60f994-7a19-433c-ac8e-9fda8ff8d31a', false, '2024-12-02 10:47:17.599536+00', '2024-12-02 10:47:17.599536+00', NULL, 'c4d23e32-6d5b-4c96-9dd6-5938986d6689'),
	('00000000-0000-0000-0000-000000000000', 32, 'EHR3l0pnMMHvG-o8GCZzKQ', 'd026dae4-ad41-4841-8982-51f4aab96b7b', false, '2024-12-02 10:55:28.821812+00', '2024-12-02 10:55:28.821812+00', NULL, 'f7b23098-2403-4957-adbc-0044087c75ba'),
	('00000000-0000-0000-0000-000000000000', 33, 'QTUv_QgssbtQwa4qM6imLA', '00904af9-8b6f-4ba2-a0fa-ec52917b24f1', false, '2024-12-02 11:34:31.848607+00', '2024-12-02 11:34:31.848607+00', NULL, 'dd95a856-368f-4252-8dd8-4611d29a11a7');


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

INSERT INTO "public"."address" ("address_id", "street_number", "street", "district", "city", "location", "created_at", "ward") VALUES
	('943691b1-a64c-4841-a67e-c6486e55ad6b', NULL, NULL, NULL, NULL, NULL, '2024-12-01 07:13:11.806107', NULL),
	('ea38e229-90be-4455-82c2-95894b4c6edc', NULL, NULL, NULL, NULL, NULL, '2024-12-01 14:15:36.607485', NULL),
	('d1a7ea0c-2653-442a-8a99-a32b30c5f587', NULL, NULL, NULL, NULL, NULL, '2024-12-01 15:57:03.741008', NULL),
	('5bfa25e7-c1ab-407e-a2ab-324ee3395a87', NULL, NULL, NULL, NULL, NULL, '2024-12-02 10:47:17.794125', NULL),
	('855f32ef-28a7-4ed4-8dbb-affae5fc45e9', NULL, NULL, NULL, NULL, NULL, '2024-12-02 10:55:28.96222', NULL),
	('014491ab-e6ab-43a6-a83a-7cc87e993c86', NULL, NULL, NULL, NULL, NULL, '2024-12-02 11:34:32.318366', NULL);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: volunteerprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: geometries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."geometries" ("name", "geom") VALUES
	('Point', '010100000000000000000000000000000000000000'),
	('Linestring', '01020000000400000000000000000000000000000000000000000000000000F03F000000000000F03F0000000000000040000000000000F03F00000000000000400000000000000040'),
	('Polygon', '0103000000010000000500000000000000000000000000000000000000000000000000F03F0000000000000000000000000000F03F000000000000F03F0000000000000000000000000000F03F00000000000000000000000000000000'),
	('PolygonWithHole', '01030000000200000005000000000000000000000000000000000000000000000000002440000000000000000000000000000024400000000000002440000000000000000000000000000024400000000000000000000000000000000005000000000000000000F03F000000000000F03F000000000000F03F0000000000000040000000000000004000000000000000400000000000000040000000000000F03F000000000000F03F000000000000F03F'),
	('Collection', '0107000000020000000101000000000000000000004000000000000000000103000000010000000500000000000000000000000000000000000000000000000000F03F0000000000000000000000000000F03F000000000000F03F0000000000000000000000000000F03F00000000000000000000000000000000');


--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."place" ("id", "created_at", "place_type", "additional_info", "location", "radius") VALUES
	('550e8400-e29b-41d4-a716-446655440000', '2024-12-02 10:00:00+00', 'restaurant', NULL, '0101000020E61000001FF64201DB7B52C0B610E4A0845D4440', 5),
	('550e8400-e29b-41d4-a716-446655440001', '2024-12-02 10:30:00+00', 'cafe', NULL, '0101000020E6100000AAF1D24D628052C05E4BC8073D5B4440', 3),
	('550e8400-e29b-41d4-a716-446655440002', '2024-12-02 11:00:00+00', 'park', NULL, '0101000020E6100000448B6CE7FB7D52C0780B24287E644440', 10),
	('550e8400-e29b-41d4-a716-446655440003', '2024-12-02 11:30:00+00', 'museum', NULL, '0101000020E610000003780B24287E52C04F401361C3634440', 2),
	('550e8400-e29b-41d4-a716-446655440004', '2024-12-02 12:00:00+00', 'hotel', NULL, '0101000020E61000002D211FF46C7E52C039B4C876BE5F4440', 50),
	('550e8400-e29b-41d4-a716-446655440005', '2024-12-02 12:30:00+00', 'store', NULL, '0101000020E61000002FDD2406817D52C042CF66D5E75A4440', 5),
	('550e8400-e29b-41d4-a716-446655440006', '2024-12-02 13:00:00+00', 'gym', NULL, '0101000020E610000005A3923A018152C02E90A0F8315E4440', 3.5),
	('550e8400-e29b-41d4-a716-446655440007', '2024-12-02 13:30:00+00', 'restaurant', NULL, '0101000020E610000007CE1951DA7B52C01B2FDD2406614440', 7),
	('550e8400-e29b-41d4-a716-446655440008', '2024-12-02 14:00:00+00', 'cafe', NULL, '0101000020E610000012A5BDC1177E52C07A36AB3E57634440', 2.5),
	('550e8400-e29b-41d4-a716-446655440009', '2024-12-02 14:30:00+00', 'library', NULL, '0101000020E61000009D8026C2867F52C095D40968225C4440', 1.5),
	('550e8400-e29b-41d4-a716-446655440010', '2024-12-02 15:00:00+00', 'movie_theater', NULL, '0101000020E6100000AC8BDB68007F52C0B6F3FDD478614440', 3),
	('550e8400-e29b-41d4-a716-446655440011', '2024-12-02 15:30:00+00', 'restaurant', NULL, '0101000020E6100000D8F0F44A597E52C0D3BCE3141D614440', 6),
	('550e8400-e29b-41d4-a716-446655440012', '2024-12-02 16:00:00+00', 'mall', NULL, '0101000020E610000024B9FC87F47F52C082E2C798BB5E4440', 20),
	('550e8400-e29b-41d4-a716-446655440013', '2024-12-02 16:30:00+00', 'hotel', NULL, '0101000020E6100000462575029A8052C011363CBD525E4440', 30),
	('550e8400-e29b-41d4-a716-446655440014', '2024-12-02 17:00:00+00', 'store', NULL, '0101000020E6100000933A014D847D52C0FE43FAEDEB604440', 2),
	('550e8400-e29b-41d4-a716-446655440015', '2024-12-02 17:30:00+00', 'gym', NULL, '0101000020E61000005BB1BFEC9E7C52C012A5BDC1175E4440', 4),
	('550e8400-e29b-41d4-a716-446655440016', '2024-12-02 18:00:00+00', 'restaurant', NULL, '0101000020E6100000C8073D9B557F52C068226C787A5D4440', 5),
	('550e8400-e29b-41d4-a716-446655440017', '2024-12-02 18:30:00+00', 'park', NULL, '0101000020E61000001FF46C567D7E52C00DE02D90A0604440', 15),
	('550e8400-e29b-41d4-a716-446655440018', '2024-12-02 19:00:00+00', 'museum', NULL, '0101000020E6100000F931E6AE257C52C097FF907EFB5A4440', 2.5),
	('550e8400-e29b-41d4-a716-446655440019', '2024-12-02 19:30:00+00', 'cafe', NULL, '0101000020E61000006C09F9A0677F52C0D7A3703D0A5F4440', 4),
	('550e8400-e29b-41d4-a716-446655440020', '2024-12-02 20:00:00+00', 'restaurant', NULL, '0101000020E61000006688635DDC7E52C046B6F3FDD4604440', 8);


--
-- Data for Name: issue_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."issue_event" ("id", "created_at", "place_id", "title", "description", "label") VALUES
	('915521f3-5ec3-4b5a-b91f-fa46eb27b3be', '2024-12-02 05:26:52.342559+00', NULL, 't', 't', 't'),
	('1a350395-f4ff-4d95-9466-8539bc8cbff5', '2024-12-02 05:34:37.008545+00', NULL, NULL, 'xx', NULL),
	('ff32ae9a-19e0-4d55-b226-0c9d09e66c5b', '2024-12-02 05:27:43.577071+00', NULL, NULL, '33', '33'),
	('c344b895-5892-480c-9715-0b465029f601', '2024-12-02 05:32:58.819369+00', NULL, NULL, NULL, NULL),
	('9118a4c6-3f20-4e6d-9011-49cb75314b5f', '2024-12-02 05:39:38.845375+00', NULL, 'ccasd', NULL, NULL),
	('0f4e77a1-d0b5-4501-bcf0-b7d922eb33a1', '2024-12-02 05:40:04.006196+00', NULL, NULL, 'xxx', NULL),
	('69668622-dbdf-48ca-b9ce-8215b0f75e26', '2024-12-02 05:45:55.79325+00', NULL, '3333', NULL, NULL),
	('0be4256a-73ec-4033-a222-33682c1685f7', '2024-12-02 06:02:50.415901+00', NULL, NULL, 'zzz', NULL),
	('165319a6-bbbd-46b4-b82a-e68e6da4eab8', '2024-12-02 06:03:03.542189+00', NULL, 'dddas', NULL, NULL),
	('012b26ce-f719-40dd-93e7-2e0aa1f74636', '2024-12-02 06:03:15.436366+00', NULL, NULL, NULL, 'cc'),
	('ca063c5e-d3a7-49ad-96d2-817e1a6d4b10', '2024-12-02 06:03:28.953994+00', NULL, NULL, 'xx', NULL),
	('ea16d403-f07c-4e10-8ee9-edaa87f7dcc0', '2024-12-02 06:03:49.501937+00', NULL, 'asd', NULL, 'asd'),
	('acffc4b9-4d68-4c7a-9a1c-d29825326f27', '2024-12-02 06:06:43.408819+00', NULL, NULL, 'z', NULL);


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification" ("id", "title", "content", "type", "sendtype") VALUES
	('cb27dbd7-bdc2-4dc9-b938-bc3b22e86230', 'Toan lon', 'Loan ton', 'Emergency', 'All');


--
-- Data for Name: notification_user; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profiles" ("profile_id", "user_id", "fullname", "address_id", "created_at", "citizen_id", "email") VALUES
	('45dbfc85-c9c0-4f6e-9cb9-345a24c7f7e4', 'd026dae4-ad41-4841-8982-51f4aab96b7b', 'Nguyen Huu Loc', '855f32ef-28a7-4ed4-8dbb-affae5fc45e9', '2024-12-02 10:55:29.045894', NULL, 'abc1@gmail.com'),
	('db4801a4-2b54-4870-a396-9db869f3171e', '00904af9-8b6f-4ba2-a0fa-ec52917b24f1', 'Nguyen Huu Loc', '014491ab-e6ab-43a6-a83a-7cc87e993c86', '2024-12-02 11:34:32.676926', NULL, 'locn562836@gmail.com');


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_roles" ("user_id", "role") VALUES
	('1c947692-2d9f-46b4-935e-dad1570df2e5', 'user'),
	('71ae0ceb-d8f5-4c45-9d9c-031b2e8e43ef', 'admin'),
	('2c870618-b675-4fa8-b778-2b2084ce638b', 'admin'),
	('3c60f994-7a19-433c-ac8e-9fda8ff8d31a', 'user'),
	('d026dae4-ad41-4841-8982-51f4aab96b7b', 'user'),
	('00904af9-8b6f-4ba2-a0fa-ec52917b24f1', 'user');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 33, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
