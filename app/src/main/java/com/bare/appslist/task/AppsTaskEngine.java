package com.bare.appslist.task;

import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.engine.AppLocalBackupEngine;
import com.bare.core.model.TaskResult;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Static AppsTask provider boundary reconstructed from Reference c40.
 *
 * Ownership is deliberately above AppLocalBackupEngine: this class owns the
 * ordered multi-app task list, per-item backup/restore dispatch, cancellation
 * intent, and terminal aggregation. Archive/install/provider internals remain
 * owned by the lower-level feature engines.
 *
 * No scheduler, foreground-service, cloud-provider, or runtime success is
 * claimed here.
 */
public final class AppsTaskEngine {
    public enum Mode { BACKUP, RESTORE }

    public static final class Item {
        public final AppInventoryItem app;
        public final String backupId;
        public final Set<AppLocalBackupEngine.Part> parts;

        public Item(AppInventoryItem app, String backupId,
                    Set<AppLocalBackupEngine.Part> parts) {
            if (app == null) throw new IllegalArgumentException("app");
            this.app = app;
            this.backupId = backupId;
            this.parts = Collections.unmodifiableSet(new LinkedHashSet<>(
                    parts == null ? Collections.<AppLocalBackupEngine.Part>emptySet() : parts));
        }

    }

    public static final class Outcome {
        public final TaskResult result;
        public final int completed;
        public final int failed;
        public final int skipped;
        public final List<String> errors;

        Outcome(TaskResult result, int completed, int failed, int skipped,
                List<String> errors) {
            this.result = result;
            this.completed = completed;
            this.failed = failed;
            this.skipped = skipped;
            this.errors = Collections.unmodifiableList(new ArrayList<>(errors));
        }
    }

    private final List<Item> items;
    private volatile boolean cancelled;

    public AppsTaskEngine(List<Item> items) {
        this.items = Collections.unmodifiableList(new ArrayList<>(
                items == null ? Collections.<Item>emptyList() : items));
    }

    public List<Item> getItems() {
        return items;
    }

    /** Reference c40.a(): cancellation is cooperative and owned by AppsTask. */
    public void cancel() {
        cancelled = true;
    }

    public boolean isCancelled() {
        return cancelled;
    }

    /**
     * Sequential AppsTask provider dispatch. This is an orchestration contract;
     * callers still decide when/how the task service invokes it.
     */
    public Outcome runBackup(AppLocalBackupEngine engine) {
        if (engine == null) throw new IllegalArgumentException("engine");
        return run(engine, Mode.BACKUP);
    }

    public Outcome runRestore(AppLocalBackupEngine engine) {
        if (engine == null) throw new IllegalArgumentException("engine");
        return run(engine, Mode.RESTORE);
    }

    private Outcome run(AppLocalBackupEngine engine, Mode mode) {
        int completed = 0;
        int failed = 0;
        int skipped = 0;
        List<String> errors = new ArrayList<>();

        for (Item item : items) {
            if (cancelled) {
                skipped++;
                continue;
            }
            try {
                if (mode == Mode.BACKUP) {
                    AppLocalBackupEngine.BackupResult result =
                            engine.backup(item.app, item.parts);
                    if (result.skipped) skipped++;
                    else completed++;
                } else {
                    if (item.backupId == null || item.backupId.isEmpty()) {
                        throw new IllegalArgumentException("restore backupId");
                    }
                    engine.restore(item.app.packageName, item.backupId, item.parts);
                    completed++;
                }
            } catch (Exception e) {
                failed++;
                errors.add(item.app.packageName + ": " + String.valueOf(e.getMessage()));
            }
        }

        TaskResult terminal;
        if (completed == 0 && cancelled) {
            terminal = TaskResult.CANCELLED;
        } else if (failed == 0) {
            terminal = cancelled ? TaskResult.CANCELLED : TaskResult.COMPLETED;
        } else if (completed > 0) {
            terminal = TaskResult.ERROR;
        } else {
            terminal = TaskResult.ERROR;
        }
        return new Outcome(terminal, completed, failed, skipped, errors);
    }
}
