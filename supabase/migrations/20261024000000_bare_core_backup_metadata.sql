-- BΛR☰ core metadata schema. Backup archives remain in device/provider storage.
-- Firebase Auth tokens must carry role=authenticated before Supabase RLS access is allowed.
create extension if not exists pgcrypto;

create table if not exists public.profiles (
  user_id uuid primary key,
  email text,
  display_name text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table if not exists public.devices (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  device_key text not null,
  display_name text,
  platform text not null default 'android',
  app_version text,
  last_seen_at timestamptz,
  created_at timestamptz not null default now(),
  unique (user_id, device_key)
);
create table if not exists public.backup_records (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  device_id uuid references public.devices(id) on delete set null,
  backup_kind text not null,
  display_name text,
  storage_kind text not null default 'local',
  provider_key text,
  object_key text,
  archive_format text,
  archive_version text,
  size_bytes bigint check (size_bytes is null or size_bytes >= 0),
  checksum_sha256 text,
  status text not null default 'unknown',
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz
);
create table if not exists public.backup_versions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  backup_record_id uuid not null references public.backup_records(id) on delete cascade,
  version_number integer not null check (version_number > 0),
  parent_version_id uuid references public.backup_versions(id) on delete set null,
  is_incremental boolean not null default false,
  object_key text,
  checksum_sha256 text,
  size_bytes bigint check (size_bytes is null or size_bytes >= 0),
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  unique (backup_record_id, version_number)
);
create table if not exists public.folder_configs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  name text not null,
  config jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table if not exists public.backup_schedules (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  device_id uuid references public.devices(id) on delete set null,
  name text not null,
  enabled boolean not null default true,
  schedule jsonb not null default '{}'::jsonb,
  target jsonb not null default '{}'::jsonb,
  last_run_at timestamptz,
  next_run_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table if not exists public.app_settings (
  user_id uuid primary key,
  settings jsonb not null default '{}'::jsonb,
  schema_version integer not null default 1,
  updated_at timestamptz not null default now()
);
create table if not exists public.sync_state (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null,
  device_id uuid references public.devices(id) on delete set null,
  scope text not null,
  cursor jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  unique (user_id, device_id, scope)
);

create index if not exists backup_records_user_created_idx on public.backup_records (user_id, created_at desc);
create index if not exists backup_records_user_kind_idx on public.backup_records (user_id, backup_kind);
create index if not exists backup_versions_user_record_idx on public.backup_versions (user_id, backup_record_id, version_number desc);
create index if not exists backup_schedules_user_enabled_idx on public.backup_schedules (user_id, enabled);
create index if not exists sync_state_user_scope_idx on public.sync_state (user_id, scope);

alter table public.profiles enable row level security;
alter table public.devices enable row level security;
alter table public.backup_records enable row level security;
alter table public.backup_versions enable row level security;
alter table public.folder_configs enable row level security;
alter table public.backup_schedules enable row level security;
alter table public.app_settings enable row level security;
alter table public.sync_state enable row level security;

create policy "profiles own rows" on public.profiles for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "devices own rows" on public.devices for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "backup_records own rows" on public.backup_records for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "backup_versions own rows" on public.backup_versions for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "folder_configs own rows" on public.folder_configs for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "backup_schedules own rows" on public.backup_schedules for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "app_settings own rows" on public.app_settings for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "sync_state own rows" on public.sync_state for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);

grant select, insert, update, delete on public.profiles, public.devices, public.backup_records, public.backup_versions, public.folder_configs, public.backup_schedules, public.app_settings, public.sync_state to authenticated;
