-- Firebase UID values are opaque strings, not UUIDs. Store them as text and
-- bind row ownership to the signed JWT subject (sub) from Firebase Auth.
-- Mirrors applied migration firebase_uid_text_and_sub_rls in Supabase.

drop policy if exists "profiles own rows" on public.profiles;
drop policy if exists "devices own rows" on public.devices;
drop policy if exists "backup_records own rows" on public.backup_records;
drop policy if exists "backup_versions own rows" on public.backup_versions;
drop policy if exists "folder_configs own rows" on public.folder_configs;
drop policy if exists "backup_schedules own rows" on public.backup_schedules;
drop policy if exists "app_settings own rows" on public.app_settings;
drop policy if exists "sync_state own rows" on public.sync_state;

alter table public.profiles alter column user_id type text using user_id::text;
alter table public.devices alter column user_id type text using user_id::text;
alter table public.backup_records alter column user_id type text using user_id::text;
alter table public.backup_versions alter column user_id type text using user_id::text;
alter table public.folder_configs alter column user_id type text using user_id::text;
alter table public.backup_schedules alter column user_id type text using user_id::text;
alter table public.app_settings alter column user_id type text using user_id::text;
alter table public.sync_state alter column user_id type text using user_id::text;

create policy "profiles own rows" on public.profiles for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "devices own rows" on public.devices for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "backup_records own rows" on public.backup_records for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "backup_versions own rows" on public.backup_versions for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "folder_configs own rows" on public.folder_configs for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "backup_schedules own rows" on public.backup_schedules for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "app_settings own rows" on public.app_settings for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
create policy "sync_state own rows" on public.sync_state for all to authenticated using ((select auth.jwt()->>'sub') = user_id) with check ((select auth.jwt()->>'sub') = user_id);
