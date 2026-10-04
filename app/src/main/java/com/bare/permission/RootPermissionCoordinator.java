package com.bare.permission;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class RootPermissionCoordinator {
    public enum State { IDLE, CHECKING_ROOT, AWAITING_SHIZUKU, GRANTING_PERMISSIONS }

    public interface Listener {
        void onStateChanged(State state, boolean ready);
    }

    private static final int REQUEST_CODE = 6201;
    public static final String PREF_ROOT_READY = "root_permission_ready";
    private final Context context;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final Handler main = new Handler(Looper.getMainLooper());
    private State state = State.IDLE;
    private boolean ready;

    public RootPermissionCoordinator(Context context) {
        this.context = context.getApplicationContext();
    }

    public synchronized State getState() { return state; }
    public synchronized boolean isReady() { return ready; }

    public void grantAll(Listener listener) {
        synchronized (this) {
            if (state != State.IDLE) return;
            state = State.CHECKING_ROOT;
        }
        notifyState(listener);
        executor.execute(() -> {
            boolean root = hasRoot();
            if (root) {
                setState(State.GRANTING_PERMISSIONS, listener);
                boolean granted = grantWithRoot();
                finish(granted, listener);
                return;
            }
            setState(State.AWAITING_SHIZUKU, listener);
            if (!requestShizukuPermission()) {
                finish(false, listener);
                return;
            }
            for (int i = 0; i < 10 && !hasShizukuPermission(); i++) {
                try { Thread.sleep(500L); } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    finish(false, listener);
                    return;
                }
            }
            if (hasShizukuPermission()) {
                setState(State.GRANTING_PERMISSIONS, listener);
                boolean granted = grantWithShizuku();
                finish(granted, listener);
            } else {
                finish(false, listener);
            }
        });
    }

    public void refresh(Listener listener) {
        executor.execute(() -> {
            boolean available = hasRoot() || hasShizukuPermission();
            synchronized (this) { ready = available && requiredPermissionsGranted(); }
            notifyState(listener);
        });
    }

    private void finish(boolean granted, Listener listener) {
        boolean complete = granted && requiredPermissionsGranted();
        synchronized (this) {
            ready = complete;
            state = State.IDLE;
        }
        context.getSharedPreferences(context.getPackageName() + "_preferences", Context.MODE_PRIVATE)
                .edit().putBoolean(PREF_ROOT_READY, complete).apply();
        notifyState(listener);
    }

    private void setState(State next, Listener listener) {
        synchronized (this) { state = next; }
        notifyState(listener);
    }

    private void notifyState(Listener listener) {
        if (listener == null) return;
        main.post(() -> listener.onStateChanged(getState(), isReady()));
    }

    private boolean hasRoot() {
        try {
            Process p = new ProcessBuilder("su", "-c", "id").redirectErrorStream(true).start();
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = r.readLine();
            int exit = p.waitFor();
            r.close();
            return exit == 0 && line != null && line.contains("uid=0");
        } catch (Exception ignored) {
            return false;
        }
    }

    private boolean hasShizukuPermission() {
        try {
            Class<?> shizuku = Class.forName("rikka.shizuku.Shizuku");
            Method ping = shizuku.getMethod("pingBinder");
            Method check = shizuku.getMethod("checkSelfPermission");
            return Boolean.TRUE.equals(ping.invoke(null))
                    && ((Integer) check.invoke(null)) == PackageManager.PERMISSION_GRANTED;
        } catch (Exception ignored) {
            return false;
        }
    }

    private boolean requestShizukuPermission() {
        try {
            Class<?> shizuku = Class.forName("rikka.shizuku.Shizuku");
            Method ping = shizuku.getMethod("pingBinder");
            if (!Boolean.TRUE.equals(ping.invoke(null))) return false;
            Method check = shizuku.getMethod("checkSelfPermission");
            if (((Integer) check.invoke(null)) == PackageManager.PERMISSION_GRANTED) return true;
            Method request = shizuku.getMethod("requestPermission", int.class);
            request.invoke(null, REQUEST_CODE);
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }

    private boolean grantWithRoot() {
        return runRootCommands(permissionCommands());
    }

    private boolean grantWithShizuku() {
        try {
            Class<?> shizuku = Class.forName("rikka.shizuku.Shizuku");
            Method check = shizuku.getMethod("checkSelfPermission");
            if (((Integer) check.invoke(null)) != PackageManager.PERMISSION_GRANTED) return false;
            Method newProcess = shizuku.getMethod(
                    "newProcess", String[].class, String[].class, String.class);
            for (String command : permissionCommands()) {
                Object process = newProcess.invoke(null,
                        new String[]{"sh", "-c", command}, null, null);
                Method waitFor = process.getClass().getMethod("waitFor");
                if (((Integer) waitFor.invoke(process)) != 0) return false;
            }
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }

    private boolean runRootCommands(String[] commands) {
        try {
            for (String command : commands) {
                Process p = new ProcessBuilder("su", "-c", command)
                        .redirectErrorStream(true).start();
                if (p.waitFor() != 0) return false;
            }
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }

    private String[] permissionCommands() {
        String pkg = context.getPackageName();
        java.util.ArrayList<String> commands = new java.util.ArrayList<>();
        if (Build.VERSION.SDK_INT >= 23) {
            commands.add("pm grant " + pkg + " android.permission.READ_EXTERNAL_STORAGE");
            commands.add("pm grant " + pkg + " android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (Build.VERSION.SDK_INT >= 33) {
            commands.add("pm grant " + pkg + " android.permission.POST_NOTIFICATIONS");
        }
        commands.add("pm grant " + pkg + " com.android.permission.GET_INSTALLED_APPS");
        if (Build.VERSION.SDK_INT >= 30) {
            commands.add("appops set " + pkg + " android:manage_external_storage allow");
        }
        return commands;
    }

    private boolean requiredPermissionsGranted() {
        PermissionAccessService access = new PermissionAccessService(context);
        return access.read().get(PermissionCapability.STORAGE).isReady()
                && access.read().get(PermissionCapability.INSTALLED_APPS).isReady();
    }
}
