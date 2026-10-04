package com.bare.walls;

import android.content.Context;
import android.os.Build;

import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/** Reference up8/c05 local wallpaper backup owner. */
public final class WallpaperBackupRepository {
    private final Context context;
    private final WallpaperLocalRepository inventory;
    private final SecureRandom random = new SecureRandom();

    public WallpaperBackupRepository(Context context) {
        this.context = context.getApplicationContext();
        this.inventory = new WallpaperLocalRepository();
    }

    public Result backupLocal() throws Exception {
        SystemWallpaperRepository.Result captured =
                new SystemWallpaperRepository(context).capture();
        File root = inventory.localRoot(context);
        if (!root.exists() && !root.mkdirs()) {
            throw new IllegalStateException("Cannot create wallpaper backup directory");
        }

        List<File> copied = new ArrayList<>(2);
        if (captured.getHome() != null) copied.add(copyAsBackup(captured.getHome(), root));
        if (captured.getLock() != null
                && (captured.getHome() == null
                || !sameFile(captured.getHome(), captured.getLock()))) {
            copied.add(copyAsBackup(captured.getLock(), root));
        }
        return new Result(copied);
    }

    public List<WallpaperLocalRepository.Item> listLocal() {
        return inventory.list(context);
    }

    private File copyAsBackup(File source, File root) throws Exception {
        String name;
        File target;
        do {
            long stamp = System.currentTimeMillis() + random.nextInt(100) + 1L;
            name = stamp + ".wal";
            target = new File(root, name);
        } while (target.exists());

        try (FileInputStream in = new FileInputStream(source);
             FileOutputStream out = new FileOutputStream(target)) {
            byte[] buffer = new byte[262144];
            int read;
            while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
        }
        return target;
    }

    private static boolean sameFile(File a, File b) {
        try {
            return a.getCanonicalFile().equals(b.getCanonicalFile());
        } catch (Exception ignored) {
            return a.equals(b);
        }
    }

    public static final class Result {
        private final List<File> files;
        Result(List<File> files) { this.files = Collections.unmodifiableList(files); }
        public List<File> getFiles() { return files; }
        public int getCount() { return files.size(); }
    }
}
