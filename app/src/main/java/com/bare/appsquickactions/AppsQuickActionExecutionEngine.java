package com.bare.appsquickactions;

import com.bare.appslist.actions.PrivilegedAppActionExecutor;
import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.engine.AppLocalBackupEngine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Concrete Reference-shaped Quick Action consumer.
 *
 * Reference semantics:
 * - ID_DELETE_BACKUPS_UNINSTALLED_APPS is a CLOUD action: the Reference
 *   builds an oy7 delete task with q05.CLOUD and filters protected/latest
 *   cloud backups before handing them to the cloud delete provider.
 * - ID_ENABLE_DISABLE_APPS_APPS is local/privileged and routes through
 *   py7 -> g00.d(), using the current Android user ID.
 * - ID_BACKUP_SYNC_APPS selects installed apps that already have local
 *   backups and carries each latest local backup into the normal Apps upload
 *   task.
 *
 * Cloud operations are provider contracts only. No backend is fabricated.
 */
public final class AppsQuickActionExecutionEngine {

    public static final class EnableDisableResult {
        public final int changed;
        public final int skipped;
        public final List<String> failures;

        EnableDisableResult(int changed, int skipped, List<String> failures) {
            this.changed = changed;
            this.skipped = skipped;
            this.failures = Collections.unmodifiableList(new ArrayList<>(failures));
        }
    }

    public static final class CloudBackupRef {
        public final String id;
        public final boolean protectedBackup;
        public final boolean latest;

        public CloudBackupRef(String id, boolean protectedBackup, boolean latest) {
            if (id == null || id.isEmpty()) throw new IllegalArgumentException("id");
            this.id = id;
            this.protectedBackup = protectedBackup;
            this.latest = latest;
        }
    }

    public static final class CloudDeleteItem {
        public final String packageName;
        public final List<CloudBackupRef> backups;

        CloudDeleteItem(String packageName, List<CloudBackupRef> backups) {
            this.packageName = packageName;
            this.backups = Collections.unmodifiableList(new ArrayList<>(backups));
        }
    }

    public static final class CloudDeletePlan {
        public final List<CloudDeleteItem> items;

        CloudDeletePlan(List<CloudDeleteItem> items) {
            this.items = Collections.unmodifiableList(new ArrayList<>(items));
        }
    }

    public static final class SyncItem {
        public final String packageName;
        public final String backupId;
        public final Set<AppLocalBackupEngine.Part> parts;
        public final boolean protectedBackup;

        SyncItem(String packageName, String backupId,
                 Set<AppLocalBackupEngine.Part> parts, boolean protectedBackup) {
            this.packageName = packageName;
            this.backupId = backupId;
            this.parts = Collections.unmodifiableSet(new LinkedHashSet<>(parts));
            this.protectedBackup = protectedBackup;
        }
    }

    public static final class SyncPlan {
        public final List<SyncItem> items;

        SyncPlan(List<SyncItem> items) {
            this.items = Collections.unmodifiableList(new ArrayList<>(items));
        }
    }

    /** Provider-owned cloud delete boundary. */
    public interface CloudDeleteProvider {
        List<String> listBackupPackageNames() throws Exception;
        List<CloudBackupRef> listBackups(String packageName) throws Exception;
        void deleteBackups(String packageName, List<CloudBackupRef> backups) throws Exception;
    }

    /** Provider-owned cloud sync boundary. */
    public interface CloudSyncProvider {
        void syncLocalBackup(SyncItem item) throws Exception;
    }

    private final AppLocalBackupEngine local;
    private final PrivilegedAppActionExecutor privileged;

    public AppsQuickActionExecutionEngine(android.content.Context context) {
        this(new AppLocalBackupEngine(context), new PrivilegedAppActionExecutor());
    }

    public AppsQuickActionExecutionEngine(AppLocalBackupEngine local,
                                          PrivilegedAppActionExecutor privileged) {
        if (local == null) throw new IllegalArgumentException("local");
        if (privileged == null) throw new IllegalArgumentException("privileged");
        this.local = local;
        this.privileged = privileged;
    }

    /**
     * Reference ik.b()/ly7 filtering: preserve the latest cloud backup and/or
     * protected cloud backups according to the two Quick Action toggles.
     */
    public CloudDeletePlan buildDeleteUninstalledCloudPlan(
            Set<String> installedPackages,
            boolean keepProtected,
            boolean keepLatest,
            CloudDeleteProvider provider) throws Exception {
        if (provider == null) throw new IllegalArgumentException("provider");
        Set<String> installed = installedPackages == null
                ? Collections.<String>emptySet() : new LinkedHashSet<>(installedPackages);
        List<CloudDeleteItem> items = new ArrayList<>();

        for (String packageName : provider.listBackupPackageNames()) {
            if (packageName == null || installed.contains(packageName)) continue;
            List<CloudBackupRef> all = provider.listBackups(packageName);
            if (all == null || all.isEmpty()) continue;

            List<CloudBackupRef> deletable = new ArrayList<>();
            for (CloudBackupRef backup : all) {
                if (keepLatest && backup.latest) continue;
                if (keepProtected && backup.protectedBackup) continue;
                deletable.add(backup);
            }
            if (!deletable.isEmpty()) items.add(new CloudDeleteItem(packageName, deletable));
        }
        return new CloudDeletePlan(items);
    }

    public List<String> executeCloudDelete(
            CloudDeletePlan plan, CloudDeleteProvider provider) {
        if (plan == null) throw new IllegalArgumentException("plan");
        if (provider == null) throw new IllegalArgumentException("provider");
        List<String> failures = new ArrayList<>();
        for (CloudDeleteItem item : plan.items) {
            try {
                provider.deleteBackups(item.packageName, item.backups);
            } catch (Exception e) {
                failures.add(item.packageName + ": "
                        + (e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()));
            }
        }
        return failures;
    }

    /**
     * Reference py7/g00.d parity. The executor resolves the current Android
     * user ID and emits pm enable / pm disable-user commands; the Reference
     * also has a manufacturer workaround after enable, which remains inside
     * the privileged boundary rather than being guessed here.
     */
    public EnableDisableResult enableDisable(
            List<AppInventoryItem> apps, boolean enable) {
        int changed = 0;
        int skipped = 0;
        List<String> failures = new ArrayList<>();
        if (apps == null) return new EnableDisableResult(0, 0, failures);

        for (AppInventoryItem app : apps) {
            if (app == null) continue;
            if (app.enabled == enable) {
                skipped++;
                continue;
            }
            try {
                PrivilegedAppActionExecutor.Result result =
                        privileged.execute(enable
                                ? PrivilegedAppActionExecutor.Action.ENABLE
                                : PrivilegedAppActionExecutor.Action.DISABLE, app.packageName);
                if (result.isSuccess()) changed++;
                else failures.add(app.packageName + ": "
                        + (result.getError() == null ? "privileged action failed" : result.getError()));
            } catch (Exception e) {
                failures.add(app.packageName + ": "
                        + (e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()));
            }
        }
        return new EnableDisableResult(changed, skipped, failures);
    }

    /**
     * Reference ScheduleAppsLoader ID_BACKUP_SYNC_APPS selection:
     * installed apps + at least one local backup, then use the latest local
     * backup as the sync source for the cloud upload task.
     */
    public SyncPlan buildSyncPlan(List<AppInventoryItem> inventory) {
        List<SyncItem> items = new ArrayList<>();
        if (inventory == null) return new SyncPlan(items);

        for (AppInventoryItem app : inventory) {
            if (app == null || !app.installed) continue;
            try {
                List<AppLocalBackupEngine.BackupRecord> backups =
                        local.listBackups(app.packageName);
                if (backups.isEmpty()) continue;
                AppLocalBackupEngine.BackupRecord latest = backups.get(0);
                Set<AppLocalBackupEngine.Part> parts = parseParts(
                        latest.metadata.optJSONArray("parts"));
                items.add(new SyncItem(app.packageName, latest.id, parts,
                        latest.isProtectedBackup()));
            } catch (Exception ignored) {
                // Reference loader omits an app when its local-backup model
                // cannot be compiled into a valid task entry.
            }
        }
        return new SyncPlan(items);
    }

    /** Executes only against an explicitly supplied cloud provider boundary. */
    public List<String> executeSync(SyncPlan plan, CloudSyncProvider provider) {
        if (plan == null) throw new IllegalArgumentException("plan");
        if (provider == null) throw new IllegalArgumentException("provider");
        List<String> failures = new ArrayList<>();
        for (SyncItem item : plan.items) {
            try {
                provider.syncLocalBackup(item);
            } catch (Exception e) {
                failures.add(item.packageName + "/" + item.backupId + ": "
                        + (e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()));
            }
        }
        return failures;
    }

    private static Set<AppLocalBackupEngine.Part> parseParts(org.json.JSONArray array) {
        LinkedHashSet<AppLocalBackupEngine.Part> result = new LinkedHashSet<>();
        if (array == null) return result;
        for (int i = 0; i < array.length(); i++) {
            try {
                result.add(AppLocalBackupEngine.Part.valueOf(array.optString(i, "")));
            } catch (IllegalArgumentException ignored) {
            }
        }
        return result;
    }
}
