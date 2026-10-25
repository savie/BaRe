-- BΛR☰ compatibility envelope for app-owned data formerly stored in Firebase RTDB.
-- This is a private schema owned by BΛR☰; it does not connect to or import the
-- reference application's Firebase project. Keep path_key constrained to known
-- app feature roots so this cannot become an arbitrary cross-user data store.
create table if not exists public.user_realtime_data (
  user_id text not null,
  path_key text not null,
  payload jsonb not null default '{}'::jsonb,
  schema_version integer not null default 1,
  updated_at timestamptz not null default now(),
  primary key (user_id, path_key),
  constraint user_realtime_data_known_path check (
    path_key in (
      'appSettings',
      'favoriteApps',
      'blacklistApps',
      'schedule_data',
      'wifi',
      'cloud_v1',
      'transactions/premium',
      'transactions/premium_history'
    )
  )
);

alter table public.user_realtime_data enable row level security;

drop policy if exists "user_realtime_data Firebase UID rows" on public.user_realtime_data;
create policy "user_realtime_data Firebase UID rows"
  on public.user_realtime_data for all to anon, authenticated
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

grant select, insert, update, delete on public.user_realtime_data to anon, authenticated;
revoke truncate, references, trigger on public.user_realtime_data from anon;
