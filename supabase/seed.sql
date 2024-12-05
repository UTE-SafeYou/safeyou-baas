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
	('00000000-0000-0000-0000-000000000000', 'dadf3d64-021c-4eb4-be89-e03beaeccf91', '{"action":"login","actor_id":"00904af9-8b6f-4ba2-a0fa-ec52917b24f1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-02 11:34:31.845815+00', ''),
	('00000000-0000-0000-0000-000000000000', '36e0ca23-19b0-4091-aca5-07f4289b123b', '{"action":"user_signedup","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-04 07:56:07.907106+00', ''),
	('00000000-0000-0000-0000-000000000000', '09e9ee0e-53c7-44b2-8f1a-4af03869b079', '{"action":"login","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-04 07:56:07.924778+00', ''),
	('00000000-0000-0000-0000-000000000000', '39717118-6f5b-4be9-944d-afdb1ca35ffb', '{"action":"user_repeated_signup","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-04 08:36:46.298552+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dedfc714-9bcb-4e09-8948-3df6ea26c18b', '{"action":"user_repeated_signup","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-05 04:43:08.664921+00', ''),
	('00000000-0000-0000-0000-000000000000', '97c61ae4-478d-439d-a2d1-66688256955f', '{"action":"login","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-05 04:49:12.594982+00', ''),
	('00000000-0000-0000-0000-000000000000', '276b3d2f-4b6f-4591-9807-16413361dcef', '{"action":"login","actor_id":"cc42df65-e0f7-42ed-b1ed-b265e6f76251","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-05 04:49:33.843671+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', 'authenticated', 'authenticated', 'locn562836@gmail.com', '$2a$10$FLx/owolB2cGmKV9x/ALLeG89f1l1beqd1tNu6y5/YJLRq48tZWxa', '2024-12-04 07:56:07.913755+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-05 04:49:33.844373+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "cc42df65-e0f7-42ed-b1ed-b265e6f76251", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-04 07:56:07.869731+00', '2024-12-05 04:49:33.846669+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('cc42df65-e0f7-42ed-b1ed-b265e6f76251', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', '{"sub": "cc42df65-e0f7-42ed-b1ed-b265e6f76251", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-04 07:56:07.901082+00', '2024-12-04 07:56:07.901693+00', '2024-12-04 07:56:07.901693+00', '415e8d0d-91cd-4019-b78d-2ce07665beea');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('bb9d9721-f5ac-46ec-b06b-9d9205431d9a', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', '2024-12-04 07:56:07.927067+00', '2024-12-04 07:56:07.927067+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '15.164.103.17', NULL),
	('9563b457-160c-4b14-8a9d-3215a6377d55', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', '2024-12-05 04:49:12.596673+00', '2024-12-05 04:49:12.596673+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.212.230.7', NULL),
	('55f3c8de-f1fe-4501-a6a5-5696956141fc', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', '2024-12-05 04:49:33.844446+00', '2024-12-05 04:49:33.844446+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.128.14.146', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('bb9d9721-f5ac-46ec-b06b-9d9205431d9a', '2024-12-04 07:56:07.942324+00', '2024-12-04 07:56:07.942324+00', 'password', 'f5fe0355-799e-41c8-8160-3ff1a2e3c022'),
	('9563b457-160c-4b14-8a9d-3215a6377d55', '2024-12-05 04:49:12.61684+00', '2024-12-05 04:49:12.61684+00', 'password', '41e247bd-a398-43bd-a243-ea9a18444e52'),
	('55f3c8de-f1fe-4501-a6a5-5696956141fc', '2024-12-05 04:49:33.846984+00', '2024-12-05 04:49:33.846984+00', 'password', '234f1197-35b0-4b61-a7e8-01233c9534b4');


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
	('00000000-0000-0000-0000-000000000000', 34, 'iynp32Wv5MHsXQzBhiC7GQ', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', false, '2024-12-04 07:56:07.934082+00', '2024-12-04 07:56:07.934082+00', NULL, 'bb9d9721-f5ac-46ec-b06b-9d9205431d9a'),
	('00000000-0000-0000-0000-000000000000', 35, 'fomHlMB7-d_v9uTrtWwkYw', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', false, '2024-12-05 04:49:12.603743+00', '2024-12-05 04:49:12.603743+00', NULL, '9563b457-160c-4b14-8a9d-3215a6377d55'),
	('00000000-0000-0000-0000-000000000000', 36, 'Upi37Rkb5BdpHpc5BKIc1A', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', false, '2024-12-05 04:49:33.845153+00', '2024-12-05 04:49:33.845153+00', NULL, '55f3c8de-f1fe-4501-a6a5-5696956141fc');


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
	('943691b1-a64c-4841-a67e-c6486e55ad6b', NULL, NULL, NULL, NULL, NULL, '2024-12-01 07:13:11.806107', NULL, NULL, NULL),
	('ea38e229-90be-4455-82c2-95894b4c6edc', NULL, NULL, NULL, NULL, NULL, '2024-12-01 14:15:36.607485', NULL, NULL, NULL),
	('d1a7ea0c-2653-442a-8a99-a32b30c5f587', NULL, NULL, NULL, NULL, NULL, '2024-12-01 15:57:03.741008', NULL, NULL, NULL),
	('5bfa25e7-c1ab-407e-a2ab-324ee3395a87', NULL, NULL, NULL, NULL, NULL, '2024-12-02 10:47:17.794125', NULL, NULL, NULL),
	('855f32ef-28a7-4ed4-8dbb-affae5fc45e9', NULL, NULL, NULL, NULL, NULL, '2024-12-02 10:55:28.96222', NULL, NULL, NULL),
	('014491ab-e6ab-43a6-a83a-7cc87e993c86', NULL, NULL, NULL, NULL, NULL, '2024-12-02 11:34:32.318366', NULL, NULL, NULL),
	('66c88780-1b42-4a1d-8a49-b68b18e2c408', NULL, NULL, NULL, NULL, NULL, '2024-12-04 07:56:08.417762', NULL, NULL, NULL);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: volunteerprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."volunteerprofiles" ("id", "user_id", "assignedtask", "skills") VALUES
	('9f760921-4297-48e4-aa2f-08b377df37cf', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', NULL, 'bưng bê, thể lực tốt');


--
-- Data for Name: assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: donation; Type: TABLE DATA; Schema: public; Owner: postgres
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

INSERT INTO "public"."place" ("id", "created_at", "place_type", "additional_info", "location", "radius", "lattitude", "longitude") VALUES
	('00b587dc-d46c-4519-9f25-d05510bad85d', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"Ghi chú":"Vùng ngập lụt Lâm Đồng"}', '0101000020E61000000000000000205B400000000000002740', 950, 11.5, 108.5),
	('39664ae7-de11-4295-b858-8c41e1522d6d', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu tránh bão Phú Quốc"}', '0101000020E6100000E5D022DBF9FE59408638D6C56D942440', 500, 10.2899, 103.984),
	('1051aa07-ac50-46cf-a68c-12bcffb091d7', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Trung tâm cứu trợ Cà Mau"}', '0101000020E6100000F4FDD478E92E5A404850FC1873F72140', 300, 8.9833, 104.733),
	('6b1e4ef9-7113-4f30-b7ef-3b0441bae2c4', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"note": "Vùng ngập lụt Bến Tre"}', '0101000020E6100000736891ED7C975A4008AC1C5A647B2440', 1000, 10.241, 106.367),
	('8f4b5b34-a55c-4551-ac36-c23708850594', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu sơ tán Vĩnh Long"}', '0101000020E610000083C0CAA1457E5A40A8C64B3789812440', 400, 10.253, 105.973),
	('f57abf03-9a40-48f2-a477-9e3e11073f60', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Trạm y tế khẩn cấp Hậu Giang"}', '0101000020E61000000000000000605A409A99999999992340', 250, 9.8, 105.5),
	('d5a1055a-0204-4534-8424-6d1a6a0c727e', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"note": "Vùng sạt lở An Giang"}', '0101000020E61000006666666666465A400000000000002540', 800, 10.5, 105.1),
	('688a4b16-4994-474c-b238-ac29c2df5b76', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu tránh bão Kiên Giang"}', '0101000020E61000000000000000205A409A99999999992440', 600, 10.3, 104.5),
	('b9f49e78-338c-487d-8395-ecd8568ead89', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Trung tâm cứu hộ Sóc Trăng"}', '0101000020E6100000CDCCCCCCCC7C5A403333333333332340', 350, 9.6, 105.95),
	('92838f3d-f93f-439c-9ef8-e87f9c943c17', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"note": "Vùng ngập úng Long An"}', '0101000020E61000003333333333935A400000000000002540', 1200, 10.5, 106.3),
	('7487cfd0-d50a-40a3-938e-f8e8d5e44e27', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu sơ tán Đồng Tháp"}', '0101000020E61000006666666666665A409A99999999992440', 550, 10.3, 105.6),
	('942bcd8e-295c-4a33-9a59-2a498d536631', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Trạm cấp cứu Bạc Liêu"}', '0101000020E61000000000000000705A406666666666662240', 400, 9.2, 105.75),
	('0a1aa258-64ba-4e06-ad13-07caf36297d5', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"note": "Vùng lũ quét Trà Vinh"}', '0101000020E61000006666666666965A40CDCCCCCCCCCC2340', 900, 9.9, 106.35),
	('a6868283-f1eb-49f7-93c1-471afb2b8f18', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu tránh thiên tai Bình Dương"}', '0101000020E61000003333333333B35A400000000000002640', 700, 11, 106.8),
	('688d4b6c-c7cd-4212-878a-9c283b1edd83', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Điểm tiếp viện Tây Ninh"}', '0101000020E61000006666666666865A409A99999999992640', 300, 11.3, 106.1),
	('4f9c8418-b554-4ac6-b1b5-c5a53e5f27c7', '2024-12-04 06:57:20.842873+00', 'thiên tai', '{"note": "Vùng sạt lở Bình Phước"}', '0101000020E61000000000000000A05A400000000000002740', 1300, 11.5, 106.5),
	('f673d9df-bd8b-42b8-8934-f787c6e0fc7f', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu sơ tán Đắk Lắk"}', '0101000020E61000000000000000205B400000000000002840', 400, 12, 108.5),
	('dba7e78e-3105-4205-b114-facf50b5efde', '2024-12-04 06:57:20.842873+00', 'cứu trợ', '{"note": "Trung tâm ứng phó khẩn cấp Đắk Nông"}', '0101000020E61000000000000000E05A400000000000002940', 250, 12.5, 107.5),
	('2d06c879-0d86-4da4-ba0f-cb380a4d4ce2', '2024-12-04 06:57:20.842873+00', 'an toàn', '{"note": "Khu tránh bão Ninh Thuận"}', '0101000020E61000003333333333335B403333333333332740', NULL, 11.6, 108);


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

INSERT INTO "public"."notification" ("id", "title", "content", "type", "sendtype", "created_at") VALUES
	('35a52e14-dbe0-4340-80e9-39ab274411f5', 'title', 'body Huu Loc', 'Emergency', NULL, '2024-12-04 07:16:58.12161+00'),
	('b8483c73-1635-4a0c-801e-305d11ab1946', 'title', 'body Huu Loc', 'Emergency', NULL, '2024-12-04 07:17:47.902495+00'),
	('74d9f2c4-ee64-4b60-a80e-56bdf3e0de90', 'title', 'body {name}', 'Emergency', NULL, '2024-12-04 08:38:07.545061+00'),
	('59659e55-8ae0-4177-af22-b9dbb28eb9db', 'title', 'body {name}', 'Emergency', NULL, '2024-12-04 09:18:42.620184+00'),
	('fe6d7fbc-0d4f-45f0-922c-b7e86157754e', 'title', 'body {name}', 'Emergency', NULL, '2024-12-04 09:49:33.384469+00'),
	('5f824bfd-42aa-4deb-bded-9fd914ac7323', 'title', 'Con chó {name}', 'Emergency', NULL, '2024-12-04 09:52:29.52696+00');


--
-- Data for Name: notification_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification_user" ("notification_id", "to_user_id") VALUES
	('74d9f2c4-ee64-4b60-a80e-56bdf3e0de90', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251'),
	('59659e55-8ae0-4177-af22-b9dbb28eb9db', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251'),
	('fe6d7fbc-0d4f-45f0-922c-b7e86157754e', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251'),
	('5f824bfd-42aa-4deb-bded-9fd914ac7323', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251');


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profiles" ("profile_id", "user_id", "fullname", "address_id", "created_at", "citizen_id", "email", "phone") VALUES
	('178b50eb-a81f-408e-9916-5bae3ac8a05f', 'cc42df65-e0f7-42ed-b1ed-b265e6f76251', 'Nguyen Huu Loc', '66c88780-1b42-4a1d-8a49-b68b18e2c408', '2024-12-04 07:56:08.767844', NULL, 'locn562836@gmail.com', '0565564250');


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_roles" ("user_id", "role") VALUES
	('cc42df65-e0f7-42ed-b1ed-b265e6f76251', 'user');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 36, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
