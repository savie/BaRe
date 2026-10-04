package com.bare.appslist.restore;

import android.content.pm.PackageManager;

import rikka.shizuku.Shizuku;

/**
 * Capability gate for the privileged half of Apps SBA.
 *
 * Reference separates archive crypto from privileged filesystem access:
 * Root/Shizuku is needed to reach protected app-data trees; the SBA native
 * engine itself is a normal in-process native library.
 */
public final class SbaPrivilegeGate {
    public enum Mode { NONE, SHIZUKU, ROOT }

    public Mode detect() {
        if (hasShizuku()) return Mode.SHIZUKU;
        if (hasRootShell()) return Mode.ROOT;
        return Mode.NONE;
    }

    public boolean canAccessProtectedAppData() {
        return detect() != Mode.NONE;
    }

    public boolean hasShizuku() {
        try {
            return Shizuku.pingBinder()
                    && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public boolean hasRootShell() {
        Process process = null;
        try {
            process = Runtime.getRuntime().exec(new String[]{"su", "-c", "id"});
            int exit = process.waitFor();
            return exit == 0;
        } catch (Throwable ignored) {
            return false;
        } finally {
            if (process != null) process.destroy();
        }
    }
}
