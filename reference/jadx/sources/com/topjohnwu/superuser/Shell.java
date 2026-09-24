package com.topjohnwu.superuser;

import defpackage.ex0;
import defpackage.j55;
import defpackage.j70;
import defpackage.ji8;
import defpackage.k55;
import defpackage.md7;
import defpackage.md8;
import defpackage.nd7;
import defpackage.nd8;
import defpackage.od7;
import defpackage.pd7;
import defpackage.vy5;
import defpackage.zd7;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Shell implements Closeable {
    public static final int FLAG_MOUNT_MASTER = 2;
    public static final int FLAG_NON_ROOT_SHELL = 1;
    public static final int FLAG_REDIRECT_STDERR = 8;
    public static final int NON_ROOT_SHELL = 0;
    public static final int ROOT_MOUNT_MASTER = 2;
    public static final int ROOT_SHELL = 1;
    public static final int UNKNOWN = -1;
    public static ExecutorService EXECUTOR = Executors.newCachedThreadPool();
    public static boolean enableVerboseLogging = false;

    public static od7 cmd(String... strArr) {
        vy5 vy5Var = new vy5(false);
        vy5Var.a(strArr);
        return vy5Var;
    }

    public static Shell getCachedShell() {
        return k55.k();
    }

    public static void getShell(nd7 nd7Var) {
        md8 md8Var = nd8.b;
        zd7 zd7VarK = k55.k();
        if (zd7VarK == null) {
            EXECUTOR.execute(new j70(md8Var, 3));
        } else {
            md8Var.getClass();
            md8Var.execute(new j55(zd7VarK));
        }
    }

    public static Boolean isAppGrantedRoot() {
        return ji8.x();
    }

    @Deprecated
    public static boolean rootAccess() {
        return Objects.equals(ji8.x(), Boolean.TRUE);
    }

    public static void setDefaultBuilder(md7 md7Var) {
        synchronized (k55.class) {
            if (k55.b || k55.k() != null) {
                throw new IllegalStateException("The main shell was already created");
            }
            k55.c = (ex0) md7Var;
        }
    }

    @Deprecated
    public static od7 sh(String... strArr) {
        vy5 vy5Var = new vy5(false);
        vy5Var.a(strArr);
        return vy5Var;
    }

    @Deprecated
    public static od7 su(String... strArr) {
        vy5 vy5Var = new vy5(true);
        vy5Var.a(strArr);
        return vy5Var;
    }

    public abstract void execTask(pd7 pd7Var) throws IOException;

    public abstract int getStatus();

    public abstract boolean isAlive();

    public final boolean isRoot() {
        return getStatus() >= 1;
    }

    public abstract od7 newJob();

    public final void waitAndClose() throws IOException {
        while (!waitAndClose(Long.MAX_VALUE, TimeUnit.NANOSECONDS)) {
        }
    }

    public abstract boolean waitAndClose(long j, TimeUnit timeUnit) throws InterruptedException, IOException;

    public static od7 cmd(InputStream inputStream) {
        return k55.z(inputStream, false);
    }

    @Deprecated
    public static od7 sh(InputStream inputStream) {
        return k55.z(inputStream, false);
    }

    @Deprecated
    public static od7 su(InputStream inputStream) {
        return k55.z(inputStream, true);
    }

    public static Shell getShell() {
        return k55.j();
    }

    public static void getShell(Executor executor, nd7 nd7Var) {
        zd7 zd7VarK = k55.k();
        if (zd7VarK != null) {
            executor.getClass();
            executor.execute(new j55(zd7VarK));
        } else {
            EXECUTOR.execute(new j70(executor, 3));
        }
    }
}
