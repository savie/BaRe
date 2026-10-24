-- User-scoped JSON payloads for the app's LabelsData and ConfigsData models.
-- Firebase UID remains the identity key until auth migration is intentionally completed.
create table if not exists public.user_label_data (
  user_id text primary key,
  labels jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.user_config_data (
  user_id text primary key,
  configs jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.user_label_data enable row level security;
alter table public.user_config_data enable row level security;

drop policy if exists "user_label_data own rows" on public.user_label_data;
create policy "user_label_data own rows"
  on public.user_label_data for all to authenticated
  using ((select auth.jwt()->>'sub') = user_id)
  with check ((select auth.jwt()->>'sub') = user_id);

drop policy if exists "user_config_data own rows" on public.user_config_data;
create policy "user_config_data own rows"
  on public.user_config_data for all to authenticated
  using ((select auth.jwt()->>'sub') = user_id)
  with check ((select auth.jwt()->>'sub') = user_id);

grant select, insert, update, delete on public.user_label_data to authenticated;
grant select, insert, update, delete on public.user_config_data to authenticated;
