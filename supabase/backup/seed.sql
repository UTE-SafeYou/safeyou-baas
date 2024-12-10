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
	('00000000-0000-0000-0000-000000000000', 'ed423ec8-8215-4fe5-8cf7-76d9f7ba68a2', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 03:29:41.697423+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcf336c1-074a-4286-b09d-5868f78783ba', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 03:46:15.862908+00', ''),
	('00000000-0000-0000-0000-000000000000', '97b54b2c-7ba8-49c3-90d0-cf200fdf3441', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 04:03:24.472063+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1b1a5c2-9392-47ff-99da-a009eae5fb63', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 06:05:04.460878+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8e1efed-9769-4c2f-9f80-d44605e33b8f', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 06:08:05.288939+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c13e20cf-97f1-4b2a-993f-860e15afc27a', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 06:09:26.249709+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e30fada9-50fd-4bc8-a550-b8e95be8dfcc', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 08:20:03.788464+00', ''),
	('00000000-0000-0000-0000-000000000000', 'afe3c502-0aac-4216-8f2b-db56f1f8e3dc', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 09:18:17.014978+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dea96bea-7965-4b73-b288-6f90fccc31d2', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 09:26:26.180495+00', ''),
	('00000000-0000-0000-0000-000000000000', '041ca8e6-5caf-4e21-b97c-dacfe2c6760c', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 10:26:46.199376+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e504eda-0a53-432a-a6cc-b4961c9c57b9', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 10:29:36.555524+00', ''),
	('00000000-0000-0000-0000-000000000000', '2266fe59-7c39-4576-bc8e-3c7ec9cd4e24', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 11:46:24.247661+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e4dacfe-d89c-4642-976a-56cd69e2cb39', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 12:02:56.007461+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1efce61-cfea-4daf-b369-feb12bcf3fe1', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-07 13:14:03.425136+00', ''),
	('00000000-0000-0000-0000-000000000000', '01679967-e160-4c80-a3b4-f4dc99d6eac3', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 02:30:12.363997+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ccd8b660-1800-4d4a-80bd-266ddd6189c9', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 04:04:21.567473+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad858c7d-af62-41fc-9726-cd643cb09e6b', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 04:29:37.84704+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e45274c2-f7e2-476b-af97-5f9c8414d94f', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 05:07:36.617779+00', ''),
	('00000000-0000-0000-0000-000000000000', '912a0596-81b1-42a6-bddf-a4a28097861e', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 05:08:33.801332+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eb2b2353-b46d-47d9-b373-4c170ea87dec', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:17:05.406933+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e62d7665-e7f6-42dd-8edb-74c66f150815', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:17:21.036183+00', ''),
	('00000000-0000-0000-0000-000000000000', '680eb991-f2a6-4c35-acee-6e30020329cb', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:19:42.197631+00', ''),
	('00000000-0000-0000-0000-000000000000', '000832f6-ea10-4a06-a03c-d478278cf01e', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:51:34.616963+00', ''),
	('00000000-0000-0000-0000-000000000000', '4cddd2bf-f332-4de5-b2e1-c4aceea84f1f', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:52:55.672479+00', ''),
	('00000000-0000-0000-0000-000000000000', '09c9b981-fb40-4c18-abc1-579d475d4d70', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:57:35.276521+00', ''),
	('00000000-0000-0000-0000-000000000000', '3cbdfa7e-6973-4dde-ba40-7f7f94a426f7', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 06:59:14.417448+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0dd2124-777e-43b0-a1bd-52f7685cec66', '{"action":"login","actor_id":"3ffd668d-8871-47ff-aefa-2b55afad5f26","actor_username":"watanabilinlin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 07:11:44.590377+00', ''),
	('00000000-0000-0000-0000-000000000000', '5726f039-603b-4c3f-9596-fbb307188bd9', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:11:05.114436+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8c78b6b-4f24-4098-89c0-042917fe25b1', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:11:30.458983+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c216d9fc-2ed8-4091-9440-7d19ed6a60a4', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:11:58.788972+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b37de9bc-868b-4ccf-96ba-40283902a417', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:12:32.899076+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e35a215-7e85-4452-9bb3-d9b270fca13e', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:13:52.034854+00', ''),
	('00000000-0000-0000-0000-000000000000', '61d3d6c6-be24-4c80-90ab-8f5c4e290d7e', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:14:17.124771+00', ''),
	('00000000-0000-0000-0000-000000000000', '78654fe4-7539-4f24-bf85-7e291959dd72', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:15:29.419042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0eda21e-d27c-4669-9bbe-daaed55f42c6', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:16:22.124812+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aee858f0-0068-4ba4-974a-8a965be51893', '{"action":"user_signedup","actor_id":"c69c18c5-8a8b-4136-84e9-9f13303c41c4","actor_username":"ngan@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-08 08:50:09.429118+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e89d9184-fdca-477a-8452-502c77d500a2', '{"action":"login","actor_id":"c69c18c5-8a8b-4136-84e9-9f13303c41c4","actor_username":"ngan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:50:09.43382+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d2f0f7d-e06e-4ca5-876d-7349bb339ff3', '{"action":"user_repeated_signup","actor_id":"c69c18c5-8a8b-4136-84e9-9f13303c41c4","actor_username":"ngan@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-08 08:50:31.438844+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e3811b8-4028-4dfb-9117-86917f7d94cd', '{"action":"user_signedup","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-08 08:51:46.431991+00', ''),
	('00000000-0000-0000-0000-000000000000', '7aaf092a-fc16-463d-992f-fcd2e8835d7b', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:51:46.434839+00', ''),
	('00000000-0000-0000-0000-000000000000', '96665f9a-808d-49e3-8dce-a475bb9dce06', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 08:51:59.91437+00', ''),
	('00000000-0000-0000-0000-000000000000', '0410fe4b-7a66-47bb-9f4d-2c1a35dd1e01', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 09:26:16.268049+00', ''),
	('00000000-0000-0000-0000-000000000000', '61ab7121-98bc-4115-b82b-b92557cc2adc', '{"action":"user_repeated_signup","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-08 09:36:31.557078+00', ''),
	('00000000-0000-0000-0000-000000000000', '15599ba3-b9b1-4573-a7e0-033f34705b4c', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 09:48:46.759208+00', ''),
	('00000000-0000-0000-0000-000000000000', '53d0860e-652d-4784-a6a8-bae9a886bd20', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 10:09:08.367419+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f6731b7-c08b-4270-9c2f-5f7b09f1f4df', '{"action":"user_signedup","actor_id":"e7e01a1c-2e85-4ddf-839c-beb651530d1c","actor_username":"a@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-08 10:35:03.917363+00', ''),
	('00000000-0000-0000-0000-000000000000', '482b2785-9a41-4abf-ae3c-03abd8492cde', '{"action":"login","actor_id":"e7e01a1c-2e85-4ddf-839c-beb651530d1c","actor_username":"a@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 10:35:03.924818+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca1114a8-b307-470a-9334-829601ba40b8', '{"action":"user_repeated_signup","actor_id":"e7e01a1c-2e85-4ddf-839c-beb651530d1c","actor_username":"a@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-08 10:35:25.484061+00', ''),
	('00000000-0000-0000-0000-000000000000', '15daf3f3-89cd-4065-b8b0-538535b8f1b7', '{"action":"user_repeated_signup","actor_id":"e7e01a1c-2e85-4ddf-839c-beb651530d1c","actor_username":"a@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-08 10:35:38.867371+00', ''),
	('00000000-0000-0000-0000-000000000000', '01241371-980b-48e3-a538-c3d41cd6cef9', '{"action":"user_repeated_signup","actor_id":"e7e01a1c-2e85-4ddf-839c-beb651530d1c","actor_username":"a@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-12-08 10:36:11.540994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0f00617-30fb-47ce-8d25-a890d40b1cee', '{"action":"user_signedup","actor_id":"e8e86293-d754-4dc5-9fed-568dd150b879","actor_username":"adsad@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-08 10:36:28.906283+00', ''),
	('00000000-0000-0000-0000-000000000000', '42b6fbe2-8000-4a0b-92ec-038584eed9fe', '{"action":"login","actor_id":"e8e86293-d754-4dc5-9fed-568dd150b879","actor_username":"adsad@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 10:36:28.908547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f28ec3ef-a7aa-46b8-a5ef-8cf90483ca0f', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 11:08:43.11215+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d00b636-0e35-4f9c-b31b-444d2c02ad89', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 12:29:23.774254+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1bd3c80-d253-4f3b-8fbb-7561f48a7adb', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-08 12:44:26.518547+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc7e81af-7a91-49dc-8443-622042248745', '{"action":"user_signedup","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-09 00:55:11.581543+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ef3fac9a-4f12-4052-99d8-7b81e5210dd6', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 00:55:11.588799+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2a081e6-e76f-4a7f-82b7-0638d588a530', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 00:55:40.543133+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd44751e3-5225-429d-a04c-5357958c4a40', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 01:07:12.740748+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ada63bea-f0f3-44b8-ad05-de48a0e8106d', '{"action":"login","actor_id":"e0302377-4801-411f-a3ca-3e0feb598eac","actor_username":"ngan123@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 02:15:58.300437+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ff25642-3169-4166-bfab-b843a336655e', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 02:33:16.332333+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e44ced8a-4dab-442b-8470-b108bcef3ba2', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 02:34:50.606993+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce0a4db3-34ae-4634-8bc0-db1090b4c58c', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 02:37:45.848594+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2598157-0fc6-4092-bfa9-7da33d2833db', '{"action":"login","actor_id":"b43ff9f9-a028-461e-95d7-1f64f98f74a0","actor_username":"safeyouteam@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 02:38:52.803078+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3740e96-37fb-416f-8583-43b2d40cbebd', '{"action":"user_signedup","actor_id":"7dc1480a-1f3b-4d4c-a97f-1eb8c0fd55fd","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-09 03:18:03.110906+00', ''),
	('00000000-0000-0000-0000-000000000000', '483ab507-073d-4d73-b2ec-5f8670aeed3d', '{"action":"login","actor_id":"7dc1480a-1f3b-4d4c-a97f-1eb8c0fd55fd","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 03:18:03.116757+00', ''),
	('00000000-0000-0000-0000-000000000000', '94ab34fe-f915-486c-b062-8543a3fcc205', '{"action":"login","actor_id":"7dc1480a-1f3b-4d4c-a97f-1eb8c0fd55fd","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 03:19:21.744556+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcc33588-496f-461c-a294-8e811a70a267', '{"action":"user_signedup","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-12-09 03:29:08.926046+00', ''),
	('00000000-0000-0000-0000-000000000000', '46261ef5-1c39-494e-869f-ba79e7e2ad19', '{"action":"login","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 03:29:08.931019+00', ''),
	('00000000-0000-0000-0000-000000000000', '56d18a46-08e7-4ea4-bcd3-58160659c73e', '{"action":"login","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 03:30:07.344221+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd2c8b33d-a30c-4539-86b0-ce156edcce62', '{"action":"login","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 05:22:47.636029+00', ''),
	('00000000-0000-0000-0000-000000000000', '3749182c-18d2-48d4-8400-484bd2eb1b5c', '{"action":"login","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 05:44:33.54226+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f565470b-15b5-4007-9ec8-0a7ae1b06e65', '{"action":"login","actor_id":"5f1591f6-bdf0-4224-9a00-8276abcbe310","actor_username":"lamhoaikimngan91@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 08:12:00.892593+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd146033-0b25-4186-be5c-5de2fe7ac4cd', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 11:58:40.429932+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a002386f-77d1-477a-91c9-af4dcde96d84', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-09 12:00:30.54989+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b7fc3f9-6d4c-44bd-ab8c-ba6543b14276', '{"action":"login","actor_id":"668f130c-e8bf-41d7-b9a6-239c9e0cf4a1","actor_username":"locn562836@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-12-10 00:41:56.414396+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '6ca30b44-a094-4919-81a1-c17d4310a637', 'authenticated', 'authenticated', 'safeyou@gmail.com', '$2a$10$lOYHQoRr0AFAvEMG9mtXu.x5AwlQ4fvO6A2LeSH5i6o7o5mpBxksy', '2024-12-06 05:42:52.332564+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-06 07:47:35.132368+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "6ca30b44-a094-4919-81a1-c17d4310a637", "email": "safeyou@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-06 05:42:52.31865+00', '2024-12-06 07:47:35.137073+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '5f1591f6-bdf0-4224-9a00-8276abcbe310', 'authenticated', 'authenticated', 'lamhoaikimngan91@gmail.com', '$2a$10$8hzCeKcv3tK4Equzybf2Duz1gMx0tARUQw4sirvkuuLpZLX774HH2', '2024-12-09 03:29:08.927979+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-09 08:12:00.905547+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "5f1591f6-bdf0-4224-9a00-8276abcbe310", "email": "lamhoaikimngan91@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-09 03:29:08.918953+00', '2024-12-09 08:12:00.918652+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'authenticated', 'authenticated', 'locn562836@gmail.com', '$2a$10$vQ24O6gS7BQ/001yicJiXexrEjtWFLmDCuXTDVhm48AmuYbs/IFLq', '2024-12-06 03:17:43.852119+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-12-10 00:41:56.434553+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "668f130c-e8bf-41d7-b9a6-239c9e0cf4a1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-12-06 03:17:43.839156+00', '2024-12-10 00:41:56.481314+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '{"sub": "668f130c-e8bf-41d7-b9a6-239c9e0cf4a1", "email": "locn562836@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 03:17:43.84564+00', '2024-12-06 03:17:43.846994+00', '2024-12-06 03:17:43.846994+00', '0a7437a8-61bd-4c6b-8751-4112fafd1651'),
	('6ca30b44-a094-4919-81a1-c17d4310a637', '6ca30b44-a094-4919-81a1-c17d4310a637', '{"sub": "6ca30b44-a094-4919-81a1-c17d4310a637", "email": "safeyou@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-06 05:42:52.324046+00', '2024-12-06 05:42:52.32411+00', '2024-12-06 05:42:52.32411+00', 'ed1243f5-1ec7-4636-9285-b966666859e3'),
	('5f1591f6-bdf0-4224-9a00-8276abcbe310', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '{"sub": "5f1591f6-bdf0-4224-9a00-8276abcbe310", "email": "lamhoaikimngan91@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-12-09 03:29:08.922686+00', '2024-12-09 03:29:08.922735+00', '2024-12-09 03:29:08.922735+00', '6e047163-4ed5-4cb4-9eea-1ff8f31ae453');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('8ef83892-7df0-4dd3-931d-ddda77b83588', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '2024-12-09 03:29:08.931678+00', '2024-12-09 03:29:08.931678+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.183.6.184', NULL),
	('c0fd27e3-cf62-4e32-bf7a-46b0ab05decf', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '2024-12-09 03:30:07.34503+00', '2024-12-09 03:30:07.34503+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.214.186.84', NULL),
	('31ef6174-9d06-4350-b663-8736bc4b709d', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '2024-12-09 05:44:33.5456+00', '2024-12-09 05:44:33.5456+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.169.231.184', NULL),
	('5f5b1653-e4a9-421c-ab8b-56c5647616e1', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-09 11:58:40.435463+00', '2024-12-09 11:58:40.435463+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.254.204.37', NULL),
	('1b09cfdb-7e7a-4995-b770-b9af91be1e10', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-10 00:41:56.434638+00', '2024-12-10 00:41:56.434638+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.121.133', NULL),
	('9a6d6080-60e8-4c1e-8dca-a8eedd730cd2', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-06 03:17:43.855215+00', '2024-12-06 03:17:43.855215+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '43.202.60.36', NULL),
	('fa65ff04-3fd3-439f-b354-00e7d0e29ae4', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 05:42:52.335422+00', '2024-12-06 05:42:52.335422+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.196.217', NULL),
	('82c5c99d-df11-4414-8de2-7ddf4ffac725', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 05:43:22.830918+00', '2024-12-06 05:43:22.830918+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.125.255.203', NULL),
	('24c2306f-2df5-4ae2-8f63-29fa91b06944', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 07:47:13.873311+00', '2024-12-06 07:47:13.873311+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.178.9.235', NULL),
	('2845c45d-8da2-432c-a118-d3e37bd7b256', '6ca30b44-a094-4919-81a1-c17d4310a637', '2024-12-06 07:47:35.132436+00', '2024-12-06 07:47:35.132436+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '3.35.131.169', NULL),
	('aaa0a761-2685-4e89-b127-204386ef44eb', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-07 03:29:41.698781+00', '2024-12-07 03:29:41.698781+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.174.33', NULL),
	('d76bcd91-204a-4b53-abca-72ec7d03d457', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-07 03:46:15.864028+00', '2024-12-07 03:46:15.864028+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.238.155.8', NULL),
	('3c23014a-6936-4a02-bc88-cf6f36e69eb3', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '2024-12-09 05:22:47.648989+00', '2024-12-09 05:22:47.648989+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.142.118.168', NULL),
	('bbff6692-6f16-4d39-a272-599b14d6e2ee', '5f1591f6-bdf0-4224-9a00-8276abcbe310', '2024-12-09 08:12:00.905642+00', '2024-12-09 08:12:00.905642+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '54.254.251.76', NULL),
	('2b12c05f-c335-423d-a617-3111cde183ad', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-09 12:00:30.555797+00', '2024-12-09 12:00:30.555797+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.214.202.25', NULL),
	('8c39bdec-1327-4ab4-aa2c-98811bd37202', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 06:51:34.619335+00', '2024-12-08 06:51:34.619335+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.141.195.138', NULL),
	('36f40551-0ef4-43e6-93c3-82b6ea84ce88', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:11:05.116219+00', '2024-12-08 08:11:05.116219+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '3.0.49.44', NULL),
	('cda9a6cc-9ede-44bf-9f8f-928fe6a92b37', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:11:30.459728+00', '2024-12-08 08:11:30.459728+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.143.186.0', NULL),
	('61867ec3-3fb3-4062-bce3-e56962af0d40', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:11:58.789696+00', '2024-12-08 08:11:58.789696+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.251.114.13', NULL),
	('6fe95a48-d38e-42a0-95ad-ebc70bcde4bd', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:12:32.899846+00', '2024-12-08 08:12:32.899846+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.170.158', NULL),
	('5feedda5-ae6e-4b42-8a90-74e80f809d38', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:13:52.037238+00', '2024-12-08 08:13:52.037238+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '47.129.187.186', NULL),
	('951cee72-7264-4745-8e65-80e21662cb74', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:14:17.125524+00', '2024-12-08 08:14:17.125524+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '18.143.185.48', NULL),
	('f44c35a5-2b8d-485e-8782-d484576936f5', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:15:29.420048+00', '2024-12-08 08:15:29.420048+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.251.114.13', NULL),
	('857461d2-fc7e-4655-8b4d-c839c61ea9a0', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', '2024-12-08 08:16:22.125662+00', '2024-12-08 08:16:22.125662+00', NULL, 'aal1', NULL, NULL, 'Deno/1.45.2 (variant; SupabaseEdgeRuntime/1.65.4)', '13.212.167.144', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('8ef83892-7df0-4dd3-931d-ddda77b83588', '2024-12-09 03:29:08.936074+00', '2024-12-09 03:29:08.936074+00', 'password', 'd8c52995-5dc0-42f9-8c54-6373799b6241'),
	('c0fd27e3-cf62-4e32-bf7a-46b0ab05decf', '2024-12-09 03:30:07.346885+00', '2024-12-09 03:30:07.346885+00', 'password', '108062d6-c835-4bcb-93c6-74af6949bb03'),
	('3c23014a-6936-4a02-bc88-cf6f36e69eb3', '2024-12-09 05:22:47.657509+00', '2024-12-09 05:22:47.657509+00', 'password', '1f521446-bd30-4898-88b6-d778f5018e9a'),
	('31ef6174-9d06-4350-b663-8736bc4b709d', '2024-12-09 05:44:33.550808+00', '2024-12-09 05:44:33.550808+00', 'password', '14021090-53ca-485e-9cff-09030e4248a9'),
	('bbff6692-6f16-4d39-a272-599b14d6e2ee', '2024-12-09 08:12:00.919378+00', '2024-12-09 08:12:00.919378+00', 'password', '03feeca0-fe4e-49b8-a33b-13899997ef61'),
	('5f5b1653-e4a9-421c-ab8b-56c5647616e1', '2024-12-09 11:58:40.44546+00', '2024-12-09 11:58:40.44546+00', 'password', 'b076f9d5-4ea1-41fd-8d9a-3bbcf0435545'),
	('2b12c05f-c335-423d-a617-3111cde183ad', '2024-12-09 12:00:30.559624+00', '2024-12-09 12:00:30.559624+00', 'password', '43620998-a5b6-45fd-b812-7b9fc766edab'),
	('1b09cfdb-7e7a-4995-b770-b9af91be1e10', '2024-12-10 00:41:56.486443+00', '2024-12-10 00:41:56.486443+00', 'password', 'a702bbb8-e7ee-43a4-bb4c-a1fde2fdb78b'),
	('9a6d6080-60e8-4c1e-8dca-a8eedd730cd2', '2024-12-06 03:17:43.860771+00', '2024-12-06 03:17:43.860771+00', 'password', 'e0085f5e-8579-43f4-8c55-dad75000c4e1'),
	('fa65ff04-3fd3-439f-b354-00e7d0e29ae4', '2024-12-06 05:42:52.339422+00', '2024-12-06 05:42:52.339422+00', 'password', '593af6ca-7311-4f89-b005-8dca7b4bf203'),
	('82c5c99d-df11-4414-8de2-7ddf4ffac725', '2024-12-06 05:43:22.833431+00', '2024-12-06 05:43:22.833431+00', 'password', '4035ee8b-e263-4222-8f74-44f5f6bd8fe0'),
	('24c2306f-2df5-4ae2-8f63-29fa91b06944', '2024-12-06 07:47:13.891952+00', '2024-12-06 07:47:13.891952+00', 'password', '7a98cbe4-c285-43a9-b5cf-5e6d8eba5907'),
	('2845c45d-8da2-432c-a118-d3e37bd7b256', '2024-12-06 07:47:35.137409+00', '2024-12-06 07:47:35.137409+00', 'password', 'fd052aad-7143-4162-8312-d3948bf284b3'),
	('aaa0a761-2685-4e89-b127-204386ef44eb', '2024-12-07 03:29:41.704815+00', '2024-12-07 03:29:41.704815+00', 'password', '54a90651-19d8-4a6e-81d2-b19bfc52fcc8'),
	('d76bcd91-204a-4b53-abca-72ec7d03d457', '2024-12-07 03:46:15.867844+00', '2024-12-07 03:46:15.867844+00', 'password', '24fff49c-77b0-4b98-ae8c-a979ffedf4ea'),
	('8c39bdec-1327-4ab4-aa2c-98811bd37202', '2024-12-08 06:51:34.626124+00', '2024-12-08 06:51:34.626124+00', 'password', 'f7609bea-8c2e-4290-a202-c0aa82a470a2'),
	('36f40551-0ef4-43e6-93c3-82b6ea84ce88', '2024-12-08 08:11:05.125835+00', '2024-12-08 08:11:05.125835+00', 'password', 'acea47df-b5a7-4c3d-bc5d-e8c92bcfca0c'),
	('cda9a6cc-9ede-44bf-9f8f-928fe6a92b37', '2024-12-08 08:11:30.462614+00', '2024-12-08 08:11:30.462614+00', 'password', '80cfd552-2c05-4287-aa06-bb23e22c3711'),
	('61867ec3-3fb3-4062-bce3-e56962af0d40', '2024-12-08 08:11:58.791748+00', '2024-12-08 08:11:58.791748+00', 'password', 'efd418ec-bcd3-455b-b992-169bcc42438d'),
	('6fe95a48-d38e-42a0-95ad-ebc70bcde4bd', '2024-12-08 08:12:32.902477+00', '2024-12-08 08:12:32.902477+00', 'password', 'bbbde7be-f85b-41b4-87ee-4aca2f306e7f'),
	('5feedda5-ae6e-4b42-8a90-74e80f809d38', '2024-12-08 08:13:52.044158+00', '2024-12-08 08:13:52.044158+00', 'password', 'd15dc10b-7381-437e-a2ba-0954e3a24a81'),
	('951cee72-7264-4745-8e65-80e21662cb74', '2024-12-08 08:14:17.129238+00', '2024-12-08 08:14:17.129238+00', 'password', '8a4d12d9-c701-4ac2-8ba8-9dbf80c20a99'),
	('f44c35a5-2b8d-485e-8782-d484576936f5', '2024-12-08 08:15:29.423068+00', '2024-12-08 08:15:29.423068+00', 'password', '3844e585-8710-434d-be5d-0121ff2edb98'),
	('857461d2-fc7e-4655-8b4d-c839c61ea9a0', '2024-12-08 08:16:22.12767+00', '2024-12-08 08:16:22.12767+00', 'password', 'e0f852aa-56a5-456e-b971-22305f12a251');


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
	('00000000-0000-0000-0000-000000000000', 73, 'qkNYjIaahgW-MyBWmOXDUw', '5f1591f6-bdf0-4224-9a00-8276abcbe310', false, '2024-12-09 03:29:08.932754+00', '2024-12-09 03:29:08.932754+00', NULL, '8ef83892-7df0-4dd3-931d-ddda77b83588'),
	('00000000-0000-0000-0000-000000000000', 74, 'zJib3sG2NZXHbWpxmiGjKg', '5f1591f6-bdf0-4224-9a00-8276abcbe310', false, '2024-12-09 03:30:07.345742+00', '2024-12-09 03:30:07.345742+00', NULL, 'c0fd27e3-cf62-4e32-bf7a-46b0ab05decf'),
	('00000000-0000-0000-0000-000000000000', 76, '77PObmTJIVwmoq1uCY7jsQ', '5f1591f6-bdf0-4224-9a00-8276abcbe310', false, '2024-12-09 05:44:33.54814+00', '2024-12-09 05:44:33.54814+00', NULL, '31ef6174-9d06-4350-b663-8736bc4b709d'),
	('00000000-0000-0000-0000-000000000000', 78, '2JIWH2ARJTPjlazIDX0UyQ', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-09 11:58:40.440448+00', '2024-12-09 11:58:40.440448+00', NULL, '5f5b1653-e4a9-421c-ab8b-56c5647616e1'),
	('00000000-0000-0000-0000-000000000000', 80, '3QhAKlsO8kT_KpAKM7T34g', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-10 00:41:56.454157+00', '2024-12-10 00:41:56.454157+00', NULL, '1b09cfdb-7e7a-4995-b770-b9af91be1e10'),
	('00000000-0000-0000-0000-000000000000', 3, 'TcdPmgtF1Tl3p7uaBtEfWA', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-06 03:17:43.856803+00', '2024-12-06 03:17:43.856803+00', NULL, '9a6d6080-60e8-4c1e-8dca-a8eedd730cd2'),
	('00000000-0000-0000-0000-000000000000', 6, 'dEyV2luDMLZUEjZY9lyiLw', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 05:42:52.336829+00', '2024-12-06 05:42:52.336829+00', NULL, 'fa65ff04-3fd3-439f-b354-00e7d0e29ae4'),
	('00000000-0000-0000-0000-000000000000', 7, 'UrSoIqR4Bp4ZM9u_EQrDfg', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 05:43:22.832258+00', '2024-12-06 05:43:22.832258+00', NULL, '82c5c99d-df11-4414-8de2-7ddf4ffac725'),
	('00000000-0000-0000-0000-000000000000', 8, 'xT5OF3VUy7UGC1JkGOchZQ', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 07:47:13.8822+00', '2024-12-06 07:47:13.8822+00', NULL, '24c2306f-2df5-4ae2-8f63-29fa91b06944'),
	('00000000-0000-0000-0000-000000000000', 9, 'Ul39j95vc4leuANSKS2U8Q', '6ca30b44-a094-4919-81a1-c17d4310a637', false, '2024-12-06 07:47:35.134967+00', '2024-12-06 07:47:35.134967+00', NULL, '2845c45d-8da2-432c-a118-d3e37bd7b256'),
	('00000000-0000-0000-0000-000000000000', 17, 'FQLOciMtsBMKv9KhG9u9fg', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-07 03:29:41.700503+00', '2024-12-07 03:29:41.700503+00', NULL, 'aaa0a761-2685-4e89-b127-204386ef44eb'),
	('00000000-0000-0000-0000-000000000000', 18, '5IRxWqDSEMbtl21EeuPxeA', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-07 03:46:15.8652+00', '2024-12-07 03:46:15.8652+00', NULL, 'd76bcd91-204a-4b53-abca-72ec7d03d457'),
	('00000000-0000-0000-0000-000000000000', 75, 'EQeNUNP8GMaQ4njdQVGz4g', '5f1591f6-bdf0-4224-9a00-8276abcbe310', false, '2024-12-09 05:22:47.652357+00', '2024-12-09 05:22:47.652357+00', NULL, '3c23014a-6936-4a02-bc88-cf6f36e69eb3'),
	('00000000-0000-0000-0000-000000000000', 77, '6XOyBnS2dx9P2u89mxcARQ', '5f1591f6-bdf0-4224-9a00-8276abcbe310', false, '2024-12-09 08:12:00.911563+00', '2024-12-09 08:12:00.911563+00', NULL, 'bbff6692-6f16-4d39-a272-599b14d6e2ee'),
	('00000000-0000-0000-0000-000000000000', 79, '3a4yXa6UFccoior7U_cr2A', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-09 12:00:30.557704+00', '2024-12-09 12:00:30.557704+00', NULL, '2b12c05f-c335-423d-a617-3111cde183ad'),
	('00000000-0000-0000-0000-000000000000', 39, '2qebhLcdHen_zRyIgRznow', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 06:51:34.622362+00', '2024-12-08 06:51:34.622362+00', NULL, '8c39bdec-1327-4ab4-aa2c-98811bd37202'),
	('00000000-0000-0000-0000-000000000000', 44, 'VFiegB3L_9oBXbDW0xN3ng', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:11:05.120079+00', '2024-12-08 08:11:05.120079+00', NULL, '36f40551-0ef4-43e6-93c3-82b6ea84ce88'),
	('00000000-0000-0000-0000-000000000000', 45, 'GnQFfViAto9ymEgiwpsd8w', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:11:30.460424+00', '2024-12-08 08:11:30.460424+00', NULL, 'cda9a6cc-9ede-44bf-9f8f-928fe6a92b37'),
	('00000000-0000-0000-0000-000000000000', 46, 'ETPL6G8iL6IkplXo8UlihQ', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:11:58.790451+00', '2024-12-08 08:11:58.790451+00', NULL, '61867ec3-3fb3-4062-bce3-e56962af0d40'),
	('00000000-0000-0000-0000-000000000000', 47, 'xDreCpKum8jNdbDQ0Hdv2g', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:12:32.900561+00', '2024-12-08 08:12:32.900561+00', NULL, '6fe95a48-d38e-42a0-95ad-ebc70bcde4bd'),
	('00000000-0000-0000-0000-000000000000', 48, '6eBrnJ_VcHWD5NUicZNavg', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:13:52.040222+00', '2024-12-08 08:13:52.040222+00', NULL, '5feedda5-ae6e-4b42-8a90-74e80f809d38'),
	('00000000-0000-0000-0000-000000000000', 49, 'Dz7slhlU0aMjSP1AW16e_Q', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:14:17.126825+00', '2024-12-08 08:14:17.126825+00', NULL, '951cee72-7264-4745-8e65-80e21662cb74'),
	('00000000-0000-0000-0000-000000000000', 50, 'bufqJWYE8vRb8ZLePvn5LA', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:15:29.421184+00', '2024-12-08 08:15:29.421184+00', NULL, 'f44c35a5-2b8d-485e-8782-d484576936f5'),
	('00000000-0000-0000-0000-000000000000', 51, 'U30EHubY9zBXmkmpc7XccQ', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', false, '2024-12-08 08:16:22.126439+00', '2024-12-08 08:16:22.126439+00', NULL, '857461d2-fc7e-4655-8b4d-c839c61ea9a0');


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
	('68a57702-8b83-4aaf-a48b-606eff8f086a', '93D', 'Nguyễn Tri Phương', 'Tiền Giang', 'Mỹ Tho', '0101000020E6100000DED6CC107D975A404B3CA06CCAB92440', '2024-12-07 03:11:38.080892', '1', 10.362872, 106.36701),
	('4c384653-7642-4f34-96a6-3753923ed9d4', '1', 'Võ Văn Ngân', 'Thủ Đức', 'Hồ Chí Minh', '0101000020E6100000C641CF7A59B05A40D6469610CFB32540', '2024-12-07 04:05:44.450185', 'Linh Chiểu', 10.85119, 106.75546),
	('ded96203-ce31-4616-ab4a-803bfbf44fe2', '01', 'Võ Văn Ngân', 'Thủ Đức', 'Hồ Chí Minh', '0101000020E6100000C641CF7A59B05A40D6469610CFB32540', '2024-12-07 04:07:02.459857', 'Linh Chiểu', 10.85119, 106.75546),
	('12e595f0-52f8-457d-bdfc-a704c39073a5', '123', 'Lê Văn Việt', 'Thủ Đức', 'Hồ Chí Minh', '0101000020E610000008EBE27DCFB15A404003DC0D51B12540', '2024-12-07 09:10:32.092744', 'Phường Hiệp Phú', 10.846321, 106.77829),
	('69d0986d-918d-4bf0-9bce-7e0ac61701a3', '1', 'Võ Văn Ngân', 'Thủ Đức', 'thủ đức', '0101000020E6100000C641CF7A59B05A40D6469610CFB32540', '2024-12-07 11:50:41.359443', 'Linh Chiểu', 10.85119, 106.75546),
	('76f59e35-9d82-458b-ace5-07d2c3c2b48e', '1', 'Võ Văn Ngân', 'Thủ Đức', 'thủ đức', '0101000020E6100000C641CF7A59B05A40D6469610CFB32540', '2024-12-07 11:51:21.901195', 'Linh Chiểu', 10.85119, 106.75546),
	('ea806062-af76-4be7-b6ad-6f5981c0c5b0', '1', 'Võ Văn Ngân', 'Thủ Đức', 'thủ đức', '0101000020E6100000C641CF7A59B05A40D6469610CFB32540', '2024-12-07 11:51:38.73567', 'Linh Chiểu', 10.85119, 106.75546),
	('96094319-d797-45c5-9871-8120ab327f62', NULL, '1', 'Huyện Cái Bè', 'Tỉnh Tiền Giang', '0101000020E6100000E4068DAA70785A40B50C82D8E39B2440', '2024-12-08 04:17:17.563247', 'Xã An Hữu', 10.304473, 105.881874),
	('15162853-ea89-4061-b93c-fe627c65f8b2', NULL, '1', 'Huyện Gò Công Đông', 'Tỉnh Tiền Giang', '0101000020E610000032EF27196FAF5A4047CF882D98E32440', '2024-12-08 04:44:53.440998', 'Xã Gia Thuận', 10.44452, 106.74116),
	('853a55ff-9771-45d2-ab81-f2b126416e6b', NULL, NULL, NULL, NULL, NULL, '2024-12-08 08:50:09.53968', NULL, NULL, NULL),
	('e14be96a-fce5-4041-8ea6-c0351b154bb4', NULL, NULL, NULL, NULL, NULL, '2024-12-08 08:51:46.505606', NULL, NULL, NULL),
	('f23cba09-6b31-4063-a873-18b355fa7bdd', NULL, '1', 'Huyện Châu Thành', 'Tỉnh Tiền Giang', '0101000020E6100000BC934F8FED935A40019B1837DAAE2440', '2024-12-08 10:35:04.160189', 'Xã Bình Đức', 10.341509, 106.31137),
	('eb7554b5-d82d-4506-86ab-fe98d9f81acf', NULL, '1', 'Huyện Châu Thành', 'Tỉnh Tiền Giang', '0101000020E6100000BC934F8FED935A40019B1837DAAE2440', '2024-12-08 10:36:29.077576', 'Xã Bình Đức', 10.341509, 106.31137),
	('4bcbb77f-2713-4108-b4c0-c8d43dd8638a', NULL, '76A/7 đường Cây Sộp, ấp Mỹ An', 'Mỹ Tho', 'Tiền Giang', '0101000020E61000002D33B62110985A409AFFA1AA53B72440', '2024-12-09 00:55:12.063128', 'Mỹ Phong', 10.35806, 106.375984),
	('1ce1c28b-2de3-4078-911d-d2796ef80fd4', NULL, '1, Lý Công Uẩn', 'Thành phố Mỹ Tho', 'Tỉnh Tiền Giang', '0101000020E6100000CC935D967A975A408078373F93B62440', '2024-12-09 03:18:03.327078', 'Phường 1', 10.356592, 106.36686),
	('0666e26a-16a5-4ccb-a66c-b5967874d3fd', NULL, '76A/7 đường Cây Sộp, ấp Mỹ An', 'Mỹ Tho', 'Tiền Giang', '0101000020E61000002D33B62110985A409AFFA1AA53B72440', '2024-12-09 03:29:09.921416', 'Mỹ Phong', 10.35806, 106.375984);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: volunteerprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."volunteerprofiles" ("id", "user_id", "assignedtask", "skills") VALUES
	('d86d2f01-341d-4125-9a60-ccadd2a960c6', '6ca30b44-a094-4919-81a1-c17d4310a637', NULL, 'văn nghệ, trồng cây'),
	('13ab50df-8618-45d8-943d-f9d4073dc091', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', NULL, 'ngoại ngữ'),
	('5db4808f-fe5c-47f2-9ff1-0774578893e1', '5f1591f6-bdf0-4224-9a00-8276abcbe310', NULL, '');

--
-- Data for Name: donation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."donation" ("id", "role", "fullname", "email", "phonenumber", "cango", "mask", "rice", "noodle", "vegetable", "meat", "address_id") VALUES
	('f0a940f4-5626-489c-9a9c-382c2ea9beb2', 'RECEIVER', 'Nguyễn Văn A', 'nguyenvana@example.com', '0901234567', true, 5.5, 10, 3, 2, 4, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('25db64e9-1d69-48d5-b345-60ba186485b1', 'GIVER', 'Trần Thị B', 'tranthib@example.com', '0912345678', true, 2, 8, 4.5, 3, 5, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('e2f31ebe-2d89-48c3-ba8c-a88693af6385', 'RECEIVER', 'Lê Minh C', 'leminhc@example.com', '0923456789', false, 3.5, 7, 2, 1, 2.5, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('3a409bb3-86bf-4468-9d5e-f98ba50c6163', 'GIVER', 'Phan Hữu D', 'phanhuud@example.com', '0934567890', true, 1, 6, 3.5, 4, 6, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('1126d45c-8c06-4d35-8c3e-a8b01f789fb1', 'RECEIVER', 'Hoàng Thị E', 'hoangthie@example.com', '0945678901', true, 4, 5.5, 3.5, 1.5, 4.5, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('158c5e66-053f-4ae1-93a0-3411c81e942c', 'GIVER', 'Vũ Minh F', 'vuminhf@example.com', '0956789012', true, 6, 9.5, 4, 2.5, 3, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('558d9f41-b17c-4be6-be7e-d5c7359ae95e', 'RECEIVER', 'Bùi Thị G', 'buihig@example.com', '0967890123', false, 2.5, 4, 3, 2, 1.5, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('f5d85c68-f6fa-49dd-90bb-cc7de0f1c47b', 'GIVER', 'Ngô Văn H', 'ngovanh@example.com', '0978901234', true, 3, 7.5, 5, 1, 2, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('96ee42f7-66a4-4732-b517-9ad912086271', 'RECEIVER', 'Đỗ Minh I', 'dominhi@example.com', '0989012345', true, 4.5, 6, 2.5, 3.5, 2, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('e61e3a11-db39-4a4d-88d6-5197676e0ed2', 'GIVER', 'Phạm Thị J', 'phamthij@example.com', '0990123456', true, 3.5, 8, 4.5, 2.5, 5.5, '3d3692ba-7d9e-457a-a582-7a76a7e4de26'),
	('8c94f9d2-dc0c-4ea5-aedd-d2a1fdd25a27', 'volunteer', 'Nguyễn Văn A', 'nguyenvana@example.com', '0123456789', true, 100, 50, 100, 30, 20, '12e595f0-52f8-457d-bdfc-a704c39073a5');


--
-- Data for Name: geometries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: issue_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."issue_event" ("id", "created_at", "title", "description", "label") VALUES
	('b69e2246-4706-4f81-b265-5a8bef469662', '2024-12-09 00:38:12.812709+00', '', 'Mô tả về tình trạng này', '4441231\'),
	('1363ed34-2e86-40b0-a99d-f88623ca38b8', '2024-12-09 00:19:29.613971+00', '', 'CON GI', ''),
	('7673e6ba-5e71-429a-8d67-0a278debacff', '2024-12-09 00:40:02.497889+00', '', 'q@@', ''),
	('b3af1ed3-6d31-4bb0-9762-50422299ee97', '2024-12-09 03:10:56.555928+00', '', 'Mô tả về tình trạng này', ''),
	('cea86699-6515-4eef-9fcc-c358dce31df6', '2024-12-09 03:11:10.940374+00', 'Carm', 'Mô tả về tình trạng này', ''),
	('fc35680f-9f4d-4637-954c-24e5fe2c1a39', '2024-12-09 07:33:06+00', '12123', 'Mô tả về tình trạng này', ''),
	('e33892c3-32fb-4859-8e5d-67b3003a3280', '2024-12-09 07:33:39+00', 'Đất Phương Nam', 'Mô tả về tình trạng này', ''),
	('fec994c4-8fcd-42e2-a024-620f1f1586f0', '2024-12-09 08:12:33+00', '132123', 'Mô tả về tình trạng này', ''),
	('d48dcd1e-2b61-425e-af95-eb32c23533f9', '2024-12-09 08:17:42+00', 'An Giang', 'Mô tả về tình trạng này', 'thiên tai'),
	('67e78e73-2240-4e6e-a6f1-7c1b514c7b9c', '2024-12-09 08:11:36+00', 'Chaua', 'Mô tả về tình trạng này', '444
22\'),
	('b4faf832-aee8-4ace-920b-b8d5dc9114c4', '2024-12-09 08:16:07+00', '44', 'Mô tả về tình trạng này', '3\123123'),
	('3deb219b-6250-410e-bd20-ed331b1089dc', '2024-12-09 03:39:15.361347+00', 'Carm', 'Mô tả về tình trạng này', ''),
	('305b9d2a-2433-4824-abf8-016a93a92cef', '2024-12-09 04:29:54.691027+00', 'Carm', 'Mô tả về tình trạng này', ''),
	('af5894ee-1343-47f3-9335-11aa38d6a9c3', '2024-12-09 04:31:01.359116+00', 'Carm', 'Mô tả về tình trạng này', ''),
	('dac2a159-9712-4a93-91b1-049bd5c96443', '2024-12-09 04:32:48.60964+00', 'Carm', 'Mô tả về tình trạng này', ''),
	('ff679dcf-d915-4051-b233-90d5e15ba577', '2024-12-09 04:35:46.115419+00', 'Carm', 'Mô tả về tình trạng này', '');
--
-- Data for Name: issue_event_place; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."issue_event_place" ("issue_event_id", "place_id") VALUES
	('d48dcd1e-2b61-425e-af95-eb32c23533f9', '5c7ce363-9c6d-4ca3-83e1-63a6547e9f27'),
	('3deb219b-6250-410e-bd20-ed331b1089dc', '8a255516-0be4-4236-b344-f72acc76c9c5'),
	('305b9d2a-2433-4824-abf8-016a93a92cef', '6b30301d-0f8f-4068-9e5e-78cb55adf3cb'),
	('305b9d2a-2433-4824-abf8-016a93a92cef', 'e2438351-f356-4cad-a8a7-d56cd14390a5'),
	('af5894ee-1343-47f3-9335-11aa38d6a9c3', '5f318f4e-3fb3-4cbb-aac9-8872875f1a88'),
	('af5894ee-1343-47f3-9335-11aa38d6a9c3', '277725dd-f6cc-4634-acfd-8af7c1bb2f15'),
	('dac2a159-9712-4a93-91b1-049bd5c96443', 'b9e859ae-0ef4-47db-8ee5-831397d16bd6'),
	('dac2a159-9712-4a93-91b1-049bd5c96443', '5cbbd005-6acc-44b4-bd9d-0df3a7721087'),
	('ff679dcf-d915-4051-b233-90d5e15ba577', '3b169e46-a19c-4164-bd34-3bb7dfd7f616'),
	('ff679dcf-d915-4051-b233-90d5e15ba577', 'b0da68ae-24aa-4bc0-87bd-8dfe09bd88e4');


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification" ("id", "title", "content", "type", "sendtype", "created_at") VALUES
	('fa854ccc-8f00-45e4-a4b8-6db1f9a6ffc7', 'Carm', '
					<h1>Carm</h1>
					<br/>
					<p>Mô tả về tình trạng này</p>
					<br/>
					Cập nhật thời gian thực cho tình huống này: <a href={https://olp-asm.huuloc.id.vn/app/safeyou-internals/admin-67543a23fd51167a0308d7b8/edit/jsObjects/67543a23fd51167a0308d7ec?branch=feat%252Fblog}>Tổng hợp thông tin cho tình huống này</a>
				', 'Emergency', NULL, '2024-12-09 03:39:16.818643+00');


--
-- Data for Name: notification_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."notification_user" ("notification_id", "to_user_id") VALUES
	('fa854ccc-8f00-45e4-a4b8-6db1f9a6ffc7', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1');


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profiles" ("profile_id", "user_id", "fullname", "address_id", "created_at", "citizen_id", "email", "phone", "last_location", "latitude", "longitude") VALUES
	('6424c86e-9de4-4c63-b89e-0ff5d0b74881', '6ca30b44-a094-4919-81a1-c17d4310a637', 'Safe You Admin', 'b4a79ee0-bfcf-4e29-b16f-ed83440caa98', '2024-12-06 05:42:52.488154', '', 'safeyou@gmail.com', '', NULL, NULL, NULL),
	('d17f3901-1ba9-49dc-84cc-843ec55b2ad8', '668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'Nguyễn Hữu Lộc', '79a56b5e-aa48-4421-ac81-be512e95902f', '2024-12-06 03:17:44.755713', NULL, 'locn562836@gmail.com', '0565564250', '0101000020E6100000B164332C6BB15A403F9CD1A0B2B32540', 10.850972, 106.77216),
	('abaf7b83-f19a-4d91-abb1-e5729689a32f', '5f1591f6-bdf0-4224-9a00-8276abcbe310', 'Lâm Hoài Kim Ngân', '0666e26a-16a5-4ccb-a66c-b5967874d3fd', '2024-12-09 03:29:10.065361', NULL, 'lamhoaikimngan91@gmail.com', '0898576009', '0101000020E610000055CE28A707B25A402AA33616B9B82540', 10.860787, 106.781715);


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_roles" ("user_id", "role") VALUES
	('668f130c-e8bf-41d7-b9a6-239c9e0cf4a1', 'user'),
	('6ca30b44-a094-4919-81a1-c17d4310a637', 'admin'),
	('5f1591f6-bdf0-4224-9a00-8276abcbe310', 'user');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

-- INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
-- 	('places', 'places', NULL, '2024-12-02 10:15:56.043835+00', '2024-12-02 10:15:56.043835+00', false, false, NULL, NULL, NULL),
-- 	('posts', 'posts', NULL, '2024-12-07 05:53:09.21322+00', '2024-12-07 05:53:09.21322+00', false, false, NULL, NULL, NULL);


-- --
-- -- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
-- --

-- INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
-- 	('82c85c13-6e7f-4c1a-a5e2-fced8daf2a90', 'posts', 'strapi/.emptyFolderPlaceholder', NULL, '2024-12-07 05:57:20.987725+00', '2024-12-07 05:57:20.987725+00', '2024-12-07 05:57:20.987725+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2024-12-07T05:57:21.000Z", "contentLength": 0, "httpStatusCode": 200}', '9a21c2ac-9679-43a7-b019-2cd61e7a7812', NULL, '{}');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 80, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: commune_idcommune_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."commune_idcommune_seq"', 10337, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
