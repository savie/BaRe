package com.bareapps.rootservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;

import com.topjohnwu.superuser.Shell;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import rikka.shizuku.Shizuku;

/**
 * Runtime privilege and execution selector for BΛR☰.
 * Root and Shizuku are opt-in paths; without either, commands execute as the app UID.
 */
public final class PrivilegeManager implements AutoCloseable {
    private static final String TAG = "BarePrivilege";
    private static final int SHIZUKU_REQUEST_CODE = 6205;

    public enum Mode { ROOT, SHIZUKU, NON_ROOT }

    public static final class Status {
        public final Mode mode;
        public final boolean rootGranted;
        public final boolean shizukuAvailable;
        public final boolean shizukuAuthorized;
        public final boolean shizukuConnected;
        public final int executionUid;

        Status(Mode mode, boolean rootGranted, boolean shizukuAvailable,
               boolean shizukuAuthorized, boolean shizukuConnected, int executionUid) {
            this.mode = mode;
            this.rootGranted = rootGranted;
            this.shizukuAvailable = shizukuAvailable;
            this.shizukuAuthorized = shizukuAuthorized;
            this.shizukuConnected = shizukuConnected;
            this.executionUid = executionUid;
        }

        public boolean hasPrivilegedExecution() {
            return mode == Mode.ROOT || mode == Mode.SHIZUKU;
        }
    }

    public interface StatusListener { void onStatusChanged(Status status); }
    public interface CommandCallback { void onComplete(Bundle result, Mode mode); }

    private final Context appContext;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newCachedThreadPool();
    private final Shizuku.UserServiceArgs userServiceArgs;
    private volatile Shell rootShell;
    private volatile IRootAidlInterface shizukuService;
    private volatile boolean userServiceBound;
    private volatile boolean closed;
    private volatile StatusListener statusListener;

    private final Shizuku.OnBinderReceivedListener binderReceivedListener = () -> {
        publishStatus();
        if (isShizukuAuthorized()) bindShizukuService();
    };
    private final Shizuku.OnBinderDeadListener binderDeadListener = () -> {
        shizukuService = null;
        userServiceBound = false;
        publishStatus();
    };
    private final Shizuku.OnRequestPermissionResultListener permissionResultListener =
            (requestCode, grantResult) -> {
                if (requestCode != SHIZUKU_REQUEST_CODE) return;
                if (grantResult == PackageManager.PERMISSION_GRANTED) bindShizukuService();
                publishStatus();
            };

    private final ServiceConnection serviceConnection = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder binder) {
            shizukuService = IRootAidlInterface.Stub.asInterface(binder);
            publishStatus();
        }

        @Override public void onServiceDisconnected(ComponentName name) {
            shizukuService = null;
            userServiceBound = false;
            publishStatus();
        }
    };

    public PrivilegeManager(Context context) {
        appContext = context.getApplicationContext();
        userServiceArgs = new Shizuku.UserServiceArgs(new ComponentName(
                appContext.getPackageName(), ShizukuAidlService.class.getName()))
                .daemon(false)
                .processNameSuffix("bare-rootservice")
                .version(1)
                .tag("bare-rootservice-v1");
        Shizuku.addBinderReceivedListenerSticky(binderReceivedListener);
        Shizuku.addBinderDeadListener(binderDeadListener);
        Shizuku.addRequestPermissionResultListener(permissionResultListener);
        if (isShizukuAuthorized()) bindShizukuService();
    }

    public void setStatusListener(StatusListener listener) {
        statusListener = listener;
        publishStatus();
    }

    /** Request root explicitly. This may display the installed superuser manager's prompt. */
    public void requestRootAccess() {
        requestRootAccess(null);
    }

    /** Request root and invoke completion after the actual shell result is known. */
    public void requestRootAccess(StatusListener completion) {
        worker.execute(() -> {
            Shell candidate = null;
            try {
                candidate = Shell.Builder.create().setContext(appContext).setTimeout(10).build();
                if (candidate.getStatus() == Shell.ROOT_SHELL) {
                    Shell previous = rootShell;
                    rootShell = candidate;
                    candidate = null;
                    closeQuietly(previous);
                }
            } catch (Throwable error) {
                Log.w(TAG, "Root shell initialization failed", error);
            } finally {
                closeQuietly(candidate);
                Status status = getStatus();
                publishStatus();
                if (completion != null) {
                    mainHandler.post(() -> completion.onStatusChanged(status));
                }
            }
        });
    }

    /** Request Shizuku authorization, or bind immediately if it is already granted. */
    public void requestShizukuAccess() {
        if (!Shizuku.pingBinder()) {
            publishStatus();
            return;
        }
        if (isShizukuAuthorized()) bindShizukuService();
        else Shizuku.requestPermission(SHIZUKU_REQUEST_CODE);
        publishStatus();
    }

    public Status getStatus() {
        Shell cached = rootShell != null ? rootShell : Shell.getCachedShell();
        boolean root = cached != null && cached.getStatus() == Shell.ROOT_SHELL;
        boolean available = Shizuku.pingBinder();
        boolean authorized = available && isShizukuAuthorized();
        boolean connected = shizukuService != null && shizukuService.asBinder().isBinderAlive();
        Mode mode = root ? Mode.ROOT : connected ? Mode.SHIZUKU : Mode.NON_ROOT;
        int uid = root ? 0 : connected ? serviceUid() : android.os.Process.myUid();
        return new Status(mode, root, available, authorized, connected, uid);
    }

    /** Executes argv in the strongest currently authorized mode, otherwise app UID. */
    public void execute(String[] command, long timeoutMillis, CommandCallback callback) {
        CommandExecutor.validate(command);
        worker.execute(() -> {
            Bundle result;
            Mode mode;
            Shell shell = rootShell;
            if (shell == null) {
                Shell cached = Shell.getCachedShell();
                if (cached != null && cached.getStatus() == Shell.ROOT_SHELL) shell = cached;
            }
            if (shell != null && shell.getStatus() == Shell.ROOT_SHELL) {
                mode = Mode.ROOT;
                result = ShellHelper.executeAsRoot(shell, command, timeoutMillis);
            } else {
                IRootAidlInterface service = shizukuService;
                if (service != null && service.asBinder().isBinderAlive()) {
                    mode = Mode.SHIZUKU;
                    try {
                        result = service.execute(command, timeoutMillis);
                    } catch (RemoteException | RuntimeException error) {
                        Log.w(TAG, "Shizuku execution failed; using app UID", error);
                        mode = Mode.NON_ROOT;
                        result = CommandExecutor.execute(command, timeoutMillis);
                    }
                } else {
                    mode = Mode.NON_ROOT;
                    result = CommandExecutor.execute(command, timeoutMillis);
                }
            }
            final Bundle completed = result;
            final Mode usedMode = mode;
            mainHandler.post(() -> {
                if (callback != null) callback.onComplete(completed, usedMode);
            });
        });
    }

    private void bindShizukuService() {
        if (closed || !Shizuku.pingBinder() || !isShizukuAuthorized() || userServiceBound) return;
        try {
            Shizuku.bindUserService(userServiceArgs, serviceConnection);
            userServiceBound = true;
        } catch (RuntimeException error) {
            userServiceBound = false;
            shizukuService = null;
            Log.w(TAG, "Unable to bind Shizuku UserService", error);
            publishStatus();
        }
    }

    private boolean isShizukuAuthorized() {
        try {
            return Shizuku.pingBinder()
                    && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED;
        } catch (RuntimeException error) {
            return false;
        }
    }

    private int serviceUid() {
        try { return shizukuService.getUid(); }
        catch (RemoteException error) { return -1; }
    }

    private void publishStatus() {
        if (closed) return;
        Status status = getStatus();
        mainHandler.post(() -> {
            StatusListener listener = statusListener;
            if (!closed && listener != null) listener.onStatusChanged(status);
        });
    }

    private static void closeQuietly(Shell shell) {
        if (shell == null) return;
        try { shell.close(); } catch (IOException ignored) { }
    }

    @Override
    public void close() {
        if (closed) return;
        closed = true;
        Shizuku.removeBinderReceivedListener(binderReceivedListener);
        Shizuku.removeBinderDeadListener(binderDeadListener);
        Shizuku.removeRequestPermissionResultListener(permissionResultListener);
        if (userServiceBound) {
            try { Shizuku.unbindUserService(userServiceArgs, serviceConnection, true); }
            catch (RuntimeException error) { Log.w(TAG, "Unable to unbind Shizuku service", error); }
        }
        userServiceBound = false;
        shizukuService = null;
        closeQuietly(rootShell);
        rootShell = null;
        worker.shutdownNow();
        statusListener = null;
    }
}
