SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

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
	('00000000-0000-0000-0000-000000000000', '1bb6598d-340f-4e2e-a2ea-22b4c0e1f4b9', '{"action":"user_signedup","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-05-16 14:32:29.201748+00', ''),
	('00000000-0000-0000-0000-000000000000', '7c979183-4602-46d2-ba44-f8272af2e5ba', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:32:29.212705+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ea63f13-7e78-4e0f-8111-9eb9ba79a64c', '{"action":"user_repeated_signup","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2025-05-16 14:33:11.71457+00', ''),
	('00000000-0000-0000-0000-000000000000', '231fb1d6-c8f2-4375-ac4e-f2f98633a4de', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:33:18.847359+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bef39d57-a75b-4e99-a7e5-7b90c357c584', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:39:05.767736+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f651df4-6662-4937-87c2-e6320a1c67b6', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:39:12.182388+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd920835e-ab74-4901-93db-fc1454993d2c', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:45:23.205134+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a425c96-4309-41c4-a8b8-cff1691b93a8', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:48:39.156492+00', ''),
	('00000000-0000-0000-0000-000000000000', '3caf5247-8081-47a2-8010-d9320d9235e4', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:48:41.655082+00', ''),
	('00000000-0000-0000-0000-000000000000', '8867cc48-d8c8-4907-af86-1ad0eba44ca9', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:48:47.82223+00', ''),
	('00000000-0000-0000-0000-000000000000', '22275d27-729b-4282-861d-f9b1775f1ad3', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:48:49.423954+00', ''),
	('00000000-0000-0000-0000-000000000000', '69c6ef4f-6322-4928-927f-54b3d60ab9f1', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:53:07.870777+00', ''),
	('00000000-0000-0000-0000-000000000000', '075f93db-c869-4061-9009-48adb2e4b2d7', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:56:02.223662+00', ''),
	('00000000-0000-0000-0000-000000000000', '7191a141-dec6-41c8-bfd1-dad5770f0fbd', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:56:05.504541+00', ''),
	('00000000-0000-0000-0000-000000000000', 'affec989-8ee3-486e-8d22-b3e795445019', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 14:59:19.067854+00', ''),
	('00000000-0000-0000-0000-000000000000', '90a75948-f674-46d6-98cf-1ffd81e35b52', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 14:59:24.232395+00', ''),
	('00000000-0000-0000-0000-000000000000', '9747b2a4-6681-46a6-91a9-b3592040daac', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 15:58:16.67739+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c87957bd-659b-4b93-b93e-90745a4395ae', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 15:58:16.678898+00', ''),
	('00000000-0000-0000-0000-000000000000', '964b0c82-b525-4211-b6e8-1f01687f6bec', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 16:57:41.535131+00', ''),
	('00000000-0000-0000-0000-000000000000', '07717775-8e14-45cf-87cb-707c7b247eac', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 16:57:41.537322+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce3ef8e7-eeb2-4e97-abb2-6d1cdbce8b76', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:04:03.303713+00', ''),
	('00000000-0000-0000-0000-000000000000', '27d2fce4-c0ed-45f3-b856-573b154b1ca6', '{"action":"user_signedup","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-05-16 17:04:14.298002+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e4fa70d-7801-40f6-a2d5-266632480f98', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:04:14.303746+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e4bd166-5412-412a-82e2-3c8ba0047acf', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:04:30.812325+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f157d64-5800-44cf-8422-88a9fcb6e1f1', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:04:35.850125+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a819f4ef-a38b-43f0-ae28-65f678f2d3f3', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:04:37.780776+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f61387c5-7f13-4a09-af79-7a3a52231c7a', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:04:44.826949+00', ''),
	('00000000-0000-0000-0000-000000000000', '5e4d1089-eaab-444e-8529-5e68f29e89aa', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:07:08.114871+00', ''),
	('00000000-0000-0000-0000-000000000000', '314425d2-6ae2-4194-baeb-631920ddf5ee', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:07:13.15756+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b446271d-6e03-44e4-a330-bcf57c7a5b74', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:07:14.846371+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f163f746-c45b-40f3-9c34-d4c640fde122', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:07:23.145837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0f5e0f3-f540-48bf-9635-5c7530cd993c', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:12:41.474162+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d9ad4ca-f755-4db0-83f8-8daac48f8485', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:15:28.418101+00', ''),
	('00000000-0000-0000-0000-000000000000', '91cbeeff-8e2e-4819-8d26-531cf3f8dd5b', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:15:38.187129+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd716dac5-0f9a-4b0f-9de1-41302ca61515', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:17:14.312849+00', ''),
	('00000000-0000-0000-0000-000000000000', '5db1615d-b2cf-4173-ae81-ff2ff002b534', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:17:21.005221+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8c42fcd-7031-4990-a988-af2ea648b4fb', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:17:35.802344+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d9a4847-3392-4d32-889c-b2d378e47866', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:17:40.365775+00', ''),
	('00000000-0000-0000-0000-000000000000', '4626892a-b4b9-47e0-95dd-64a8e88ddbf8', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:18:09.042781+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c9557ee-cb00-4391-a7b1-283b9bdde64f', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:18:14.020432+00', ''),
	('00000000-0000-0000-0000-000000000000', '40202695-f119-41a4-80b4-791707413ae2', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:18:21.88364+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2fdbfa0-dd13-444c-a279-5d0c321d351e', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:23:54.537217+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bd7cf8f-5cb0-446c-8661-881bf13e43c3', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:31:48.922939+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c612b154-43f0-4884-8910-822f0d16562b', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:35:12.197444+00', ''),
	('00000000-0000-0000-0000-000000000000', '17c633b2-22ef-424c-a187-708061825898', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:35:34.169518+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ade15b3-b9f4-4da8-9b17-6292f226e890', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-16 17:35:38.554909+00', ''),
	('00000000-0000-0000-0000-000000000000', '37460727-a85d-44f9-a7e8-a477a6adea6b', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-16 17:38:40.035384+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f9d19ee-1621-4f74-8c6b-51b3e619f719', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 19:32:34.247536+00', ''),
	('00000000-0000-0000-0000-000000000000', '5aa345d0-d652-4cfb-94af-42861b4ab163', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 19:32:34.249127+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a154cd4-b9d0-4bc1-a337-07c350ce8cd8', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 23:35:34.324817+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ae5e30f-3a97-4f4e-aab5-c3056a9c4e1e', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-16 23:35:34.327067+00', ''),
	('00000000-0000-0000-0000-000000000000', '3c7ee2a8-ff2d-48d6-a774-7c7c50050758', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 02:08:05.91085+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3d8b4fe-b540-4d67-bdf3-c8ef7a80e09c', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 02:08:05.912423+00', ''),
	('00000000-0000-0000-0000-000000000000', '392f1174-131d-4b72-8e4e-a11822324ad8', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 06:43:22.449213+00', ''),
	('00000000-0000-0000-0000-000000000000', '25a66621-0f93-4423-88bd-166abc0e8402', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 06:43:22.458046+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b84af0bc-d6f1-41b4-9de1-1200abb93c2d', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 09:45:04.263027+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b3e228c-29c4-434c-93f5-2d2f9bd88744', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 09:45:04.267412+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d3136ed-1a7c-479c-a963-3fe5adb9aaaa', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 14:19:08.204069+00', ''),
	('00000000-0000-0000-0000-000000000000', '37348608-5313-492e-bcd0-a549863cf1ed', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 14:19:08.206022+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e15db1a-a58d-47c0-a721-cccff9189b3f', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 16:29:00.013758+00', ''),
	('00000000-0000-0000-0000-000000000000', '8df2c517-b062-4e59-b7ea-0056aae7c2a8', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 16:29:00.015896+00', ''),
	('00000000-0000-0000-0000-000000000000', '294294e3-158b-4746-9a73-9d8863e63b0a', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 18:31:52.59344+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2496c58-250b-492f-b426-63f360fcc5c7', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-17 18:31:52.596284+00', ''),
	('00000000-0000-0000-0000-000000000000', '08f514ff-b72b-4208-9ef8-6bb11184942e', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-17 18:53:40.622609+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a12e7f89-3e48-41b0-8c68-63de6fa7f699', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-17 19:06:58.190642+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d4e581b-f9c8-4262-be9f-43b86546836a', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-17 19:07:11.252068+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd91ff269-da75-43f1-aa7f-f6d4a8fa8bce', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-17 19:12:58.106634+00', ''),
	('00000000-0000-0000-0000-000000000000', '1f7fc8e3-fae4-4de9-b9a3-1a9e7d841911', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-17 19:15:13.763065+00', ''),
	('00000000-0000-0000-0000-000000000000', '8964189a-73bb-4b8b-97f4-f43d26c0a281', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 09:16:19.832216+00', ''),
	('00000000-0000-0000-0000-000000000000', '0e3461c0-68ef-4823-9854-1e3b033beef2', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 10:23:56.078869+00', ''),
	('00000000-0000-0000-0000-000000000000', '20090202-359a-498f-b20b-9cfccf42f091', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 10:23:56.082977+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de437999-f10d-41d8-88da-9956f0336b85', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 11:23:09.000252+00', ''),
	('00000000-0000-0000-0000-000000000000', '60bf4fee-4e96-4c04-98e7-cb06b069239e', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 11:23:09.002392+00', ''),
	('00000000-0000-0000-0000-000000000000', '5404087a-bf6d-4547-a9b3-395eae1127ee', '{"action":"token_refreshed","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 12:24:33.063088+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b35b5bb5-3c13-41b9-bc3e-7bd1d6d13136', '{"action":"token_revoked","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-05-18 12:24:33.064647+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f2e24f4-eb9e-4ce2-a37a-e47688286313', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:01:49.514594+00', ''),
	('00000000-0000-0000-0000-000000000000', '64ae7869-952a-4579-887d-85796fa783cf', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:01:57.328139+00', ''),
	('00000000-0000-0000-0000-000000000000', '21667e6f-a109-488d-a893-334c77e96da9', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:03:13.331546+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aae25511-e9b4-4c85-8747-3b87e0809704', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:03:16.479635+00', ''),
	('00000000-0000-0000-0000-000000000000', '835ce060-84f3-4f84-bdcb-3e78c7587499', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:03:18.877993+00', ''),
	('00000000-0000-0000-0000-000000000000', '0970d490-96a5-464e-92e4-ed3a5cd7ef5a', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:03:25.555707+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c6de57e-4c9a-49af-a8f1-9cfb0a3a0582', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:03:26.88666+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e69a79a1-c809-4ad5-9c1c-bbd19e462f03', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:03:34.134235+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2251bdb-4afd-4201-9d38-7238e1acf352', '{"action":"logout","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:03:36.347446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4cbede4-3ac1-4c2d-b1e4-8545c6d236b0', '{"action":"login","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:03:41.048689+00', ''),
	('00000000-0000-0000-0000-000000000000', '05a5374d-aaf5-460a-b08c-3b90300c8575', '{"action":"logout","actor_id":"5a3dd72c-1a8d-4852-9fee-5df9f6a4656b","actor_username":"milan@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-05-18 13:05:34.310579+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7a53213-66b3-4925-8947-ae3acd4d3bdf', '{"action":"login","actor_id":"1e324f98-a6a4-4e63-8e0b-76d97a954189","actor_username":"mln6stankovic@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-05-18 13:05:37.179625+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', 'authenticated', 'authenticated', 'milan@gmail.com', '$2a$10$/Vn22P.RdlP3e9V3nG8X8OaF3Mp3O6.Xe0q2TDVtV.8sSarxjZSAm', '2025-05-16 17:04:14.298553+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-05-18 13:03:41.05007+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "5a3dd72c-1a8d-4852-9fee-5df9f6a4656b", "email": "milan@gmail.com", "email_verified": true, "phone_verified": false}', NULL, '2025-05-16 17:04:14.279299+00', '2025-05-18 13:03:41.053083+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '1e324f98-a6a4-4e63-8e0b-76d97a954189', 'authenticated', 'authenticated', 'mln6stankovic@gmail.com', '$2a$10$jqkeG7xJ.vzC1fznYKhmuuZkYB2abHglD/Sj.SpCDBydNu3M9QW3G', '2025-05-16 14:32:29.205885+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-05-18 13:05:37.18034+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "1e324f98-a6a4-4e63-8e0b-76d97a954189", "email": "mln6stankovic@gmail.com", "email_verified": true, "phone_verified": false}', NULL, '2025-05-16 14:32:29.173868+00', '2025-05-18 13:05:37.183037+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('1e324f98-a6a4-4e63-8e0b-76d97a954189', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '{"sub": "1e324f98-a6a4-4e63-8e0b-76d97a954189", "email": "mln6stankovic@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-05-16 14:32:29.197044+00', '2025-05-16 14:32:29.197101+00', '2025-05-16 14:32:29.197101+00', 'ef4d1622-65d4-4388-b232-1a5add48b6e6'),
	('5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', '{"sub": "5a3dd72c-1a8d-4852-9fee-5df9f6a4656b", "email": "milan@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-05-16 17:04:14.294199+00', '2025-05-16 17:04:14.294261+00', '2025-05-16 17:04:14.294261+00', '890dd917-aaa7-43af-8dab-30abc0367500');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('d3c13283-90b3-46af-8274-a7335e317879', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '2025-05-18 13:05:37.180411+00', '2025-05-18 13:05:37.180411+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '188.255.129.207', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('d3c13283-90b3-46af-8274-a7335e317879', '2025-05-18 13:05:37.183633+00', '2025-05-18 13:05:37.183633+00', 'password', '565abee9-f2e6-4ea6-8c8c-1db081d8254e');


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
	('00000000-0000-0000-0000-000000000000', 43, '437m43slpsqt', '1e324f98-a6a4-4e63-8e0b-76d97a954189', false, '2025-05-18 13:05:37.18202+00', '2025-05-18 13:05:37.18202+00', NULL, 'd3c13283-90b3-46af-8274-a7335e317879');


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
-- Data for Name: entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."entries" ("id", "created_at", "name", "amount", "paid", "order", "user_id") VALUES
	('15e54b6a-2bb2-4a2b-a7c1-4311aac85254', '2025-05-16 17:07:04.129409', 'savo teleci', 43.23, false, 1, '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b'),
	('869d616c-cf61-484a-9737-63770b20cf98', '2025-05-16 17:04:28.618387', 'ajzak cavo ledeni u kuci', 69, false, 2, '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b'),
	('9770f40f-06d4-4ba5-815b-00211591bed1', '2025-05-16 09:53:48.852775', 'Prviiii', 1, false, 1, '1e324f98-a6a4-4e63-8e0b-76d97a954189'),
	('888e5375-61a7-4b9a-a314-006f6f0975eb', '2025-05-16 09:55:09.398735', 'Sekunda', 2, false, 2, '1e324f98-a6a4-4e63-8e0b-76d97a954189'),
	('91dc2318-1448-4a58-a996-8a718aa13372', '2025-05-16 10:03:02.762418', 'tri', 3, false, 3, '1e324f98-a6a4-4e63-8e0b-76d97a954189'),
	('57ee2bdf-6e29-4202-9e5a-e000e0078b0a', '2025-05-17 19:07:07.0962', 'cetr', 44, false, 4, '1e324f98-a6a4-4e63-8e0b-76d97a954189'),
	('c047c335-1e58-46f3-ac84-38556e918bca', '2025-05-17 19:13:02.270601', 'banana', -1, false, 5, '1e324f98-a6a4-4e63-8e0b-76d97a954189'),
	('0a4c6479-d135-4019-9a21-556d92f2a488', '2025-05-17 19:13:26.578141', 'oranges', -2, false, 6, '1e324f98-a6a4-4e63-8e0b-76d97a954189');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "created_at", "avatar_filename") VALUES
	('1e324f98-a6a4-4e63-8e0b-76d97a954189', '2025-05-18 12:59:02.247012+00', '1747573145522_avatar-2.png'),
	('5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', '2025-05-18 13:05:32.15908+00', '1747573531742_avatar-5.jpg');


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."stats" ("id", "created_at", "name", "value") VALUES
	(1, '2025-05-17 18:58:24.34981+00', 'entries_count', 8);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('avatars', 'avatars', NULL, '2025-05-18 09:11:44.409706+00', '2025-05-18 09:11:44.409706+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('880bb074-613f-4822-8f4c-1f786125968d', 'avatars', '.emptyFolderPlaceholder', NULL, '2025-05-18 09:12:20.162792+00', '2025-05-18 09:12:20.162792+00', '2025-05-18 09:12:20.162792+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T09:12:21.000Z", "contentLength": 0, "httpStatusCode": 200}', '261b7998-c857-4de6-b0c3-5c002fc8d3bb', NULL, '{}'),
	('03debef5-123b-4d11-9ee8-c26c54ab800d', 'avatars', '1e324f98-a6a4-4e63-8e0b-76d97a954189/1747573141661_avatar-3.png', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '2025-05-18 12:59:02.108997+00', '2025-05-18 12:59:02.108997+00', '2025-05-18 12:59:02.108997+00', '{"eTag": "\"7ca50ff104919fb1c4f35a7d5d453ba5\"", "size": 5174, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T12:59:03.000Z", "contentLength": 5174, "httpStatusCode": 200}', '3a8543fc-6b2d-484e-80fc-068140063982', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '{}'),
	('f5308b68-803d-43d6-b2fc-d4c005d02b4c', 'avatars', '1e324f98-a6a4-4e63-8e0b-76d97a954189/1747573145522_avatar-2.png', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '2025-05-18 12:59:05.731514+00', '2025-05-18 12:59:05.731514+00', '2025-05-18 12:59:05.731514+00', '{"eTag": "\"b92436bf43acf0687d7e526741cae598\"", "size": 5664, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T12:59:06.000Z", "contentLength": 5664, "httpStatusCode": 200}', '7a0a07cf-5a9d-4f73-8386-69de34141682', '1e324f98-a6a4-4e63-8e0b-76d97a954189', '{}'),
	('65b43700-e0b1-4e8d-9d7f-4700e5470969', 'avatars', '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b/1747573531742_avatar-5.jpg', '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', '2025-05-18 13:05:32.025667+00', '2025-05-18 13:05:32.025667+00', '2025-05-18 13:05:32.025667+00', '{"eTag": "\"53c5b3b9fb9d8cc1b74ce22a0cfe2b83\"", "size": 8205, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-05-18T13:05:32.000Z", "contentLength": 8205, "httpStatusCode": 200}', '73a88878-0e76-43e6-a46d-65c0a797d909', '5a3dd72c-1a8d-4852-9fee-5df9f6a4656b', '{}');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 43, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."stats_id_seq"', 1, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
