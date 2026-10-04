package com.bare.walls;

import com.bare.account.local.AccountNamespace;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Local wallpaper-backup inventory reconstructed from Reference ry5/c05.
 *
 * Reference stores wallpaper backup artifacts directly under:
 * backups/walls/local/
 *
 * Cloud inventory is intentionally not represented here; it remains owned by
 * the external provider adapter.
 */
public final class WallpaperLocalRepository {
    private static final String ROOT_DIR = "BΛR☰";
    private static final String BACKUPS_DIR = "backups";
    private static final String WALLS_DIR = "walls";
    private static final String LOCAL_DIR = "local";

    public List<Item> list(File storageRoot, String uid) {
        if (storageRoot == null || uid == null || uid.isEmpty()) {
            return Collections.emptyList();
        }

        File root = localRoot(storageRoot, uid);
        File[] files = root.listFiles(File::isFile);
        if (files == null) return Collections.emptyList();

        List<Item> result = new ArrayList<>(files.length);
        for (File file : files) {
            if (file.length() <= 0L) continue;
            result.add(new Item(file));
        }

        result.sort(Comparator
                .comparingLong(Item::getModifiedTime)
                .reversed()
                .thenComparing(Item::getName));
        return Collections.unmodifiableList(result);
    }

    public List<Item> list(android.content.Context context) {
        StorageSelection selection = new LocalStorageCoordinator(
                context.getApplicationContext(), new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) return Collections.emptyList();
        return list(selection.selected.rootPath, selection.selected.uid);
    }

    public File localRoot(android.content.Context context) {
        StorageSelection selection = new LocalStorageCoordinator(
                context.getApplicationContext(), new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) {
            throw new IllegalStateException("No selected local storage");
        }
        return localRoot(selection.selected.rootPath, selection.selected.uid);
    }

    public File appliedRoot(android.content.Context context) {
        StorageSelection selection = new LocalStorageCoordinator(
                context.getApplicationContext(), new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) {
            throw new IllegalStateException("No selected local storage");
        }
        return new File(new File(new File(new File(new File(selection.selected.rootPath,
                "BaRe"), "backups"), "walls"), "applied");
    }

    public File localRoot(File storageRoot, String uid) {
        if (storageRoot == null) throw new IllegalArgumentException("storageRoot");
        if (uid == null || uid.isEmpty()) throw new IllegalArgumentException("uid");

        return new File(
                new File(
                        new File(
                                new File(
                                        new File(storageRoot, ROOT_DIR),
                                        "accounts"),
                                AccountNamespace.keyForUid(uid)),
                        BACKUPS_DIR),
                WALLS_DIR + File.separator + LOCAL_DIR);
    }

    public boolean delete(Item item) {
        return item != null && item.getFile().isFile() && item.getFile().delete();
    }

    public static final class Item {
        private final File file;
        private final long modifiedTime;
        private final long size;

        Item(File file) {
            this.file = file;
            this.modifiedTime = file.lastModified();
            this.size = file.length();
        }

        public File getFile() { return file; }
        public String getName() { return file.getName(); }
        public long getModifiedTime() { return modifiedTime; }
        public long getSize() { return size; }
    }
}
