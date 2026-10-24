-- BΛR☰ metadata query/index maintenance.
-- Add covering indexes for foreign keys identified by Supabase advisor.
create index if not exists backup_records_device_id_idx
  on public.backup_records (device_id);
create index if not exists backup_schedules_device_id_idx
  on public.backup_schedules (device_id);
create index if not exists backup_versions_parent_version_id_idx
  on public.backup_versions (parent_version_id);
create index if not exists sync_state_device_id_idx
  on public.sync_state (device_id);
