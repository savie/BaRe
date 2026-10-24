-- Firebase ID tokens normally omit the PostgreSQL role claim. Supabase can
-- therefore execute them as role "anon". Allow that role only when all three
-- signed Firebase claims match this specific project and the row belongs to sub.
-- A plain Supabase anon-key JWT has no matching Firebase issuer/audience/subject.
--
-- Keep the same project/subject checks for the authenticated role as well.

drop policy if exists "profiles own rows" on public.profiles;
create policy "profiles Firebase UID rows" on public.profiles
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "devices own rows" on public.devices;
create policy "devices Firebase UID rows" on public.devices
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "backup_records own rows" on public.backup_records;
create policy "backup_records Firebase UID rows" on public.backup_records
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "backup_versions own rows" on public.backup_versions;
create policy "backup_versions Firebase UID rows" on public.backup_versions
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "folder_configs own rows" on public.folder_configs;
create policy "folder_configs Firebase UID rows" on public.folder_configs
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "backup_schedules own rows" on public.backup_schedules;
create policy "backup_schedules Firebase UID rows" on public.backup_schedules
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "app_settings own rows" on public.app_settings;
create policy "app_settings Firebase UID rows" on public.app_settings
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );

drop policy if exists "sync_state own rows" on public.sync_state;
create policy "sync_state Firebase UID rows" on public.sync_state
  for all to anon, authenticated
  using (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  )
  with check (
    (select auth.jwt() ->> 'iss') = 'https://securetoken.google.com/bare-6f8d6'
    and (select auth.jwt() ->> 'aud') = 'bare-6f8d6'
    and (select auth.jwt() ->> 'sub') = user_id
  );
