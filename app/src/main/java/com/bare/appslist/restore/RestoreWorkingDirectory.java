package com.bare.appslist.restore;

import android.content.Context;

import java.io.File;
import java.io.IOException;

/**
 * Per-restore temporary folder handling based on the Reference app_tasks layout.
 * It keeps temporary files inside app-owned cache locations and removes stale
 * task folders before a new restore starts.
 */
public final class RestoreWorkingDirectory {
    private static final String ROOT_NAME = "app_tasks";

    public enum Access {
        INTERNAL,
        EXTERNAL
    }

    public static final class Result {
        private final File directory;
        private final Access access;
        private final String error;

        Result(File directory, Access access, String error) {
            this.directory = directory;
            this.access = access;
            this.error = error;
        }

        public boolean isReady() { return directory != null && error == null; }
        public File getDirectory() { return directory; }
        public Access getAccess() { return access; }
        public String getError() { return error; }
    }

    public Result open(Context context, String taskId) {
        if (context == null) throw new IllegalArgumentException("context");
        if (taskId == null || taskId.trim().isEmpty()) {
            return new Result(null, Access.INTERNAL, context.getString(com.bare.R.string.restore_task_missing_id));
        }
        if (!safeName(taskId)) {
            return new Result(null, Access.INTERNAL, context.getString(com.bare.R.string.restore_task_invalid_id));
        }

        File external = context.getExternalCacheDir();
        File base = external != null ? external : context.getCacheDir();
        Access access = external != null ? Access.EXTERNAL : Access.INTERNAL;

        File root = new File(base, ROOT_NAME);
        File task = new File(root, taskId);

        try {
            if (!root.exists() && !root.mkdirs() && !root.isDirectory()) {
                return new Result(null, access, context.getString(com.bare.R.string.restore_task_root_error));
            }
            if (!task.exists() && !task.mkdirs() && !task.isDirectory()) {
                return new Result(null, access, context.getString(com.bare.R.string.restore_task_directory_error));
            }

            String rootPath = root.getCanonicalPath();
            String taskPath = task.getCanonicalPath();
            if (!taskPath.startsWith(rootPath + File.separator)) {
                return new Result(null, access, context.getString(com.bare.R.string.restore_task_invalid_path));
            }
            return new Result(task, access, null);
        } catch (IOException | SecurityException e) {
            return new Result(null, access,
                    context.getString(com.bare.R.string.restore_task_create_error));
        }
    }

    public boolean cleanup(Context context) {
        if (context == null) return false;
        boolean ok = cleanupRoot(context.getCacheDir());
        File external = context.getExternalCacheDir();
        if (external != null && !sameFile(context.getCacheDir(), external)) {
            ok &= cleanupRoot(external);
        }
        return ok;
    }

    public boolean deleteTask(File taskDirectory) {
        if (taskDirectory == null || !taskDirectory.exists()) return true;
        return deleteRecursively(taskDirectory);
    }

    private boolean cleanupRoot(File base) {
        if (base == null) return true;
        File root = new File(base, ROOT_NAME);
        return !root.exists() || deleteRecursively(root);
    }

    private boolean sameFile(File a, File b) {
        try {
            return a.getCanonicalFile().equals(b.getCanonicalFile());
        } catch (IOException e) {
            return a.equals(b);
        }
    }

    private boolean deleteRecursively(File file) {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children != null) {
                for (File child : children) {
                    if (!deleteRecursively(child)) return false;
                }
            }
        }
        return file.delete() || !file.exists();
    }

    private boolean safeName(String value) {
        return value.indexOf('/') < 0
                && value.indexOf('\\') < 0
                && !value.equals(".")
                && !value.equals("..");
    }
}
