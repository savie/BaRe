package com.bare.walls;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.ParcelFileDescriptor;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Reference tv7 system-wall capture/materialization boundary.
 *
 * Reference artifacts:
 *   backups/walls/applied/home_wall.wal
 *   backups/walls/applied/lock_wall.wal
 */
public final class SystemWallpaperRepository {
    public static final String HOME_WALL = "home_wall.wal";
    public static final String LOCK_WALL = "lock_wall.wal";

    private final Context context;
    private final WallpaperLocalRepository paths;

    public SystemWallpaperRepository(Context context) {
        this.context = context.getApplicationContext();
        this.paths = new WallpaperLocalRepository();
    }

    public Result capture() throws Exception {
        File root = paths.appliedRoot(context);
        if (!root.exists() && !root.mkdirs()) {
            throw new IllegalStateException("Cannot create wallpaper applied directory");
        }

        File home = new File(root, HOME_WALL);
        File lock = new File(root, LOCK_WALL);

        ParcelFileDescriptor homeFd = null;
        ParcelFileDescriptor lockFd = null;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                WallpaperManager manager = WallpaperManager.getInstance(context);
                homeFd = manager.getWallpaperFile(WallpaperManager.FLAG_SYSTEM);
                lockFd = manager.getWallpaperFile(WallpaperManager.FLAG_LOCK);
            }

            boolean homeCaptured = copyDescriptorOrBuiltIn(homeFd, home, WallpaperManager.FLAG_SYSTEM);
            boolean lockCaptured = copyDescriptor(lockFd, lock);

            // Reference falls back to the home artifact for lock when a lock
            // wallpaper descriptor is unavailable.
            if (!lockCaptured && home.isFile()) {
                copyFile(home, lock);
                lockCaptured = true;
            }

            return new Result(
                    homeCaptured && home.isFile() ? home : null,
                    lockCaptured && lock.isFile() ? lock : null);
        } finally {
            close(homeFd);
            close(lockFd);
        }
    }

    private boolean copyDescriptorOrBuiltIn(
            ParcelFileDescriptor fd, File destination, int which) throws Exception {
        if (fd != null) {
            copyDescriptor(fd, destination);
            return destination.isFile();
        }

        WallpaperManager manager = WallpaperManager.getInstance(context);
        BitmapDrawable drawable = (BitmapDrawable) manager.getBuiltInDrawable(which);
        Bitmap bitmap = drawable != null ? drawable.getBitmap() : null;
        if (bitmap == null) return false;

        try (OutputStream out = new FileOutputStream(destination)) {
            if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, out)) {
                throw new IllegalStateException("Unable to materialize built-in wallpaper");
            }
        }
        return destination.isFile();
    }

    private boolean copyDescriptor(ParcelFileDescriptor fd, File destination) throws Exception {
        if (fd == null) return false;
        if (destination.isFile() && destination.length() == fd.getStatSize()) return true;

        try (InputStream in = new ParcelFileDescriptor.AutoCloseInputStream(fd);
             OutputStream out = new FileOutputStream(destination)) {
            byte[] buffer = new byte[262144];
            int read;
            while ((read = in.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            out.flush();
        }
        return destination.isFile();
    }

    private static void copyFile(File source, File destination) throws Exception {
        try (InputStream in = new java.io.FileInputStream(source);
             OutputStream out = new FileOutputStream(destination)) {
            byte[] buffer = new byte[262144];
            int read;
            while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
        }
    }

    private static void close(ParcelFileDescriptor fd) {
        if (fd != null) {
            try { fd.close(); } catch (Exception ignored) {}
        }
    }

    public static final class Result {
        private final File home;
        private final File lock;

        Result(File home, File lock) {
            this.home = home;
            this.lock = lock;
        }

        public File getHome() { return home; }
        public File getLock() { return lock; }
        public int count() {
            return (home != null ? 1 : 0) + (lock != null ? 1 : 0);
        }
    }
}
