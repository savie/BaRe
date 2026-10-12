package com.bareapps.rootservice;

import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;

/**
 * Shizuku UserService binder. Shizuku launches this Binder in its authorized shell/root process;
 * this class intentionally extends the generated AIDL Stub, as required by the UserService API.
 */
public final class ShizukuAidlService extends IRootAidlInterface.Stub {
    private static final String SERVICE_VERSION = "bare-rootservice-1";

    public ShizukuAidlService() { }

    /** Shizuku 13+ may prefer this constructor; the context is not retained or used for app APIs. */
    public ShizukuAidlService(Context context) { }

    @Override
    public Bundle execute(String[] command, long timeoutMillis) throws RemoteException {
        try {
            return CommandExecutor.execute(command, timeoutMillis);
        } catch (IllegalArgumentException e) {
            Bundle result = new Bundle();
            result.putString("output", "");
            result.putInt("exitCode", -1);
            result.putBoolean("timedOut", false);
            result.putString("error", e.getMessage());
            return result;
        }
    }

    @Override public int getPid() { return Process.myPid(); }
    @Override public int getUid() { return Process.myUid(); }
    @Override public String getServiceVersion() { return SERVICE_VERSION; }
}
