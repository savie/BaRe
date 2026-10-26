-- BΛR☰: permit a complete users/{uid} JSON snapshot in the RTDB mirror.
-- Firebase is canonical; this stores the complete user subtree under path_key='__root__'
-- while preserving the existing per-path mirrors used by the app.
do $$
declare r record; d text;
begin
  for r in
    select c.conrelid::regclass as tbl, c.conname
    from pg_constraint c
    join pg_class t on t.oid=c.conrelid
    join pg_namespace n on n.oid=t.relnamespace
    where n.nspname='public'
      and t.relname in ('user_realtime_data','rtdb_mirror_queue','rtdb_mirror_cursors')
      and c.contype='c'
      and pg_get_constraintdef(c.oid) ilike '%path_key%'
  loop
    execute format('alter table %s drop constraint %I',r.tbl,r.conname);
  end loop;

  alter table public.user_realtime_data
    add constraint user_realtime_data_path_key_check
    check (path_key = any(array['__root__','appSettings','labelsData','configs','favoriteApps','blacklistApps','schedule_data','wifi','cloud_v1','transactions/premium','transactions/premium_history']::text[]));
  alter table public.rtdb_mirror_queue
    add constraint rtdb_mirror_queue_path_key_check
    check (path_key = any(array['__root__','appSettings','labelsData','configs','favoriteApps','blacklistApps','schedule_data','wifi','cloud_v1','transactions/premium','transactions/premium_history','userInfo']::text[]));
  alter table public.rtdb_mirror_cursors
    add constraint rtdb_mirror_cursors_path_key_check
    check (path_key = any(array['__root__','appSettings','labelsData','configs','favoriteApps','blacklistApps','schedule_data','wifi','cloud_v1','transactions/premium','transactions/premium_history','userInfo']::text[]));

  select pg_get_functiondef('public.enqueue_firebase_rtdb_mirror(text,text,jsonb,timestamptz,text)'::regprocedure) into d;
  d := replace(d, '''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',', '''__root__'',''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',');
  if d not like '%''__root__''%' then raise exception 'Could not patch enqueue allowlist safely'; end if;
  execute d;

  select pg_get_functiondef('public.apply_firebase_rtdb_mirror_internal(text,text,jsonb,timestamptz)'::regprocedure) into d;
  d := replace(d, '''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',', '''__root__'',''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',');
  if d not like '%''__root__''%' then raise exception 'Could not patch apply allowlist safely'; end if;
  execute d;

  select pg_get_functiondef('public.process_firebase_rtdb_mirror_queue(integer)'::regprocedure) into d;
  d := replace(d, '''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',', '''__root__'',''appSettings'',''labelsData'',''configs'',''favoriteApps'',''blacklistApps'',');
  if d not like '%''__root__''%' then raise exception 'Could not patch worker allowlist safely'; end if;
  execute d;
end $$;
