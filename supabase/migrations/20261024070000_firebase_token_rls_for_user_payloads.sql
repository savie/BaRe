-- BΛR☰: Firebase Auth ID tokens are the identity provider for Supabase.
-- Standard Firebase ID tokens are evaluated as role anon, so label/config
-- metadata needs the same strict issuer/audience/subject checks as core tables.
-- These tables intentionally store the existing app payloads as JSONB.
alter table public.user_label_data enable row level security;
alter table public.user_config_data enable row level security;

drop policy if exists "user_label_data own rows" on public.user_label_data;
create policy "user_label_data Firebase UID rows"
  on public.user_label_data for all to anon, authenticated
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

drop policy if exists "user_config_data own rows" on public.user_config_data;
create policy "user_config_data Firebase UID rows"
  on public.user_config_data for all to anon, authenticated
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

grant select, insert, update, delete on table
  public.user_label_data, public.user_config_data to anon, authenticated;

revoke truncate, references, trigger on table
  public.user_label_data, public.user_config_data from anon;
