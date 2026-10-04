package com.bare.appsquickactions;

import com.bare.appslist.actions.PrivilegedAppActionExecutor;
import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.engine.AppLocalBackupEngine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Concrete Reference-shaped Quick Action consumer.
 *
 * Reference semantics:
 * - delete missing/uninstalled-app backups is owned by AppsTask/oy7 -> jk -> ik;
 * - enable/disable is owned by AppsTask/py7 -> g00.d();
 * - "sync device backups to cloud" selects installed apps that already have
 *   local backups and then enters the normal Apps backup/upload task with the
 *   latest local backup as the sync source.
 *
 * The cloud leg is deliberately an injected provider contract; no cloud
 * backend is fabricated here.
 */
public final class AppsQuickActionExecutionEngine {

    public static final class DeleteResult {
        public final int scannedPackages;
        public final int deletedPackages;
        public final int deletedBackups;
        public final int preservedBackups;
        public final List<String> failures;

        DeleteResult(int scannedPackages, int deletedPackages, int deletedBackups,
                     int preservedBackups, List<String> failures) {
            this.scannedPackages = scannedPackages;
            this.deletedPackages = deletedPackages;
            this.deletedBackups = deletedBackups;
            this.preservedBackups = preservedBackups;
            this.failures = Collections.unmodifiableList(new ArrayList<>(failures));
        }
    }

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

    /** Cloud/provider downstream boundary; no provider is assumed or created here. */
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
     * Reference ly7 semantics: optionally preserve the latest backup and/or
     * protected backups while sweeping package directories that no longer
     * exist in the installed-app inventory.
     */
    public DeleteResult deleteBackupsOfUninstalledApps(
            Set<String> installedPackages, boolean keepProtected, boolean keepLatest) {
        Set<String> installed = installedPackages == null
                ? Collections.<String>emptySet() : new HashSet<>(installedPackages);
        List<String> packages = local.listLocalBackupPackages();
        int deletedPackages = 0;
        int deletedBackups = 0;
        int preserved = 0;
        List<String> failures = new ArrayList<>();

        for (String packageName : packages) {
            if (installed.contains(packageName)) continue;
            try {
                List<AppLocalBackupEngine.BackupRecord> backups = local.listBackups(packageName);
                int deletedForPackage = 0;
                for (int i = 0; i < backups.size(); i++) {
                    AppLocalBackupEngine.BackupRecord record = backups.get(i);
                    if (keepLatest && i == 0) {
                        preserved++;
                        continue;
                    }
                    if (keepProtected && record.isProtectedBackup()) {
                        preserved++;
                        continue;
                    }
                    if (local.deleteBackup(packageName, record.id)) {
                        deletedBackups++;
                        deletedForPackage++;
                    } else {
                        failures.add(packageName + "/" + record.id + ": delete incomplete");
                    }
                }
                if (deletedForPackage > 0 && local.listBackups(packageName).isEmpty()) {
                    // The package directory is intentionally left to the local
                    // engine's filesystem owner; no synthetic cleanup path is added.
                    deletedPackages++;
                }
            } catch (Exception e) {
                failures.add(packageName + ": "
                        + (e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()));
            }
        }
        return new DeleteResult(packages.size(), deletedPackages, deletedBackups, preserved, failures);
    }

    /**
     * Reference py7/g00.d parity. The executor resolves the current Android
     * user ID and emits pm enable / pm disable-user commands; the workaround
     * for manufacturer restrictions remains downstream of the executor.
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
     * backup as the sync source.
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
                // Reference loader simply omits an app when its local backup
                // representation cannot be compiled.
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
