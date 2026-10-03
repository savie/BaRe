package com.bare.manage;

import android.content.Context;

import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageCoordinator;
import com.bare.storage.StorageSelection;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * F125 — local Manage Space inventory projection.
 *
 * Reference projects the six local backup-artifact categories from the active
 * Swift Backup storage root. Protection metadata is deliberately not inferred
 * from filenames; until the F105 metadata owner supplies it, protection state
 * remains UNKNOWN and cleanup is not enabled.
 */
public final class ManageSpaceInventoryRepository {
    private final Context context;
    private final StorageCoordinator storageCoordinator;

    public ManageSpaceInventoryRepository(Context context) {
        this.context = context.getApplicationContext();
        this.storageCoordinator = new LocalStorageCoordinator(
                this.context,
                new com.bare.storage.AndroidStorageInventory(this.context));
    }

    public List<ManageSpaceReclaimItem> loadLocalInventory() {
        StorageSelection selection = storageCoordinator.resolveSelection();
        if (selection == null) return Collections.emptyList();

        File backupRoot = new File(
                new File(selection.selected.rootPath, "SwiftBackup"),
                "backups");

        List<ManageSpaceReclaimItem> result = new ArrayList<>();
        add(result, "apps", "Apps", new File(backupRoot, "apps/local"));
        add(result, "messages", "Messages", new File(backupRoot, "sms/local"));
        add(result, "calls", "Calls", new File(backupRoot, "calls/local"));
        add(result, "folders", "Folders", new File(backupRoot, "folders/local"));
        add(result, "wallpapers", "Wallpapers", new File(backupRoot, "walls/local"));
        add(result, "wifi", "Wi-Fi", new File(backupRoot, "wifi/local"));
        return result;
    }

    private static void add(
            List<ManageSpaceReclaimItem> result,
            String id,
            String title,
            File root) {
        result.add(new ManageSpaceReclaimItem(
                id,
                title,
                root,
                sizeOf(root),
                ManageSpaceReclaimItem.ProtectionState.UNKNOWN));
    }

    private static long sizeOf(File file) {
        if (!file.exists()) return 0L;
        if (file.isFile()) return Math.max(file.length(), 0L);

        File[] children = file.listFiles();
        if (children == null) return 0L;

        long total = 0L;
        for (File child : children) {
            long size = sizeOf(child);
            if (Long.MAX_VALUE - total < size) return Long.MAX_VALUE;
            total += size;
        }
        return total;
    }
}
