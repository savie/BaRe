package org.swiftapps.swiftbackup.apptasks;

import android.os.Environment;
import defpackage.be8;
import defpackage.cy0;
import defpackage.d45;
import defpackage.dj7;
import defpackage.dz5;
import defpackage.el1;
import defpackage.eq3;
import defpackage.g84;
import defpackage.mp6;
import defpackage.nc3;
import defpackage.p93;
import defpackage.q;
import defpackage.q63;
import defpackage.qy5;
import defpackage.ry5;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.x50;
import defpackage.xs1;
import defpackage.zn7;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppsWorkingDir {
    private static final String APP_TASKS_DIR_NAME = "app_tasks";
    public static final AppsWorkingDir INSTANCE = new AppsWorkingDir();
    private static boolean isCleanupComplete = false;
    private static final String logTag = "AppsWorkingDir";

    private AppsWorkingDir() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0035  */
    private static final be8 cleanupAppTasksDir$lambda$0() {
        String userFolderCacheDirPath;
        if (!isCleanupComplete) {
            isCleanupComplete = true;
            AppsWorkingDir appsWorkingDir = INSTANCE;
            String filesCacheDirPath = appsWorkingDir.getFilesCacheDirPath();
            SwiftApp.Companion companion = SwiftApp.d;
            String path = SwiftApp.Companion.c().getCacheDir().getPath();
            d45.b.getClass();
            if (d45.a() != null) {
                dz5 dz5Var = dz5.a;
                if (dz5.n()) {
                    userFolderCacheDirPath = appsWorkingDir.getUserFolderCacheDirPath();
                } else {
                    userFolderCacheDirPath = null;
                }
            } else {
                userFolderCacheDirPath = null;
            }
            List listP0 = x50.p0(new String[]{filesCacheDirPath, path, userFolderCacheDirPath});
            File[] externalCacheDirs = SwiftApp.Companion.c().getExternalCacheDirs();
            externalCacheDirs.getClass();
            ArrayList arrayList = new ArrayList();
            for (File file : externalCacheDirs) {
                String path2 = file.getPath();
                if (path2 != null) {
                    arrayList.add(path2);
                }
            }
            Iterator it = el1.g1(listP0, arrayList).iterator();
            while (it.hasNext()) {
                try {
                    cleanupAppTasksDir$lambda$0$1((String) it.next(), "AppsWorkingDir:cleanupAppTasksDir()");
                } catch (Exception unused) {
                }
            }
        }
        return be8.a;
    }

    private static final be8 cleanupAppTasksDir$lambda$0$1(String str, String str2) {
        String[] list;
        q63 q63Var = new q63(str, APP_TASKS_DIR_NAME, 2);
        if (q63Var.j() && q63Var.n().getFile().canWrite() && (list = q63Var.n().getFile().list()) != null && list.length != 0) {
            vr6.i$default(vr6.INSTANCE, str2, "Cleaning " + list.length + " items from dir: " + q63Var, null, 4, null);
            cy0.e(q63Var);
        }
        return be8.a;
    }

    private final q63 getAppTasksDirectory(long j) {
        mp6 mp6Var = mp6.a;
        File shizukuSupportedDir = (!mp6.g && mp6.g()) ? getShizukuSupportedDir() : getNormalDir(j);
        return new q63(shizukuSupportedDir, APP_TASKS_DIR_NAME, 2);
    }

    private final String getFilesCacheDirPath() {
        SwiftApp.Companion companion = SwiftApp.d;
        File filesDir = SwiftApp.Companion.c().getFilesDir();
        filesDir.getClass();
        String path = nc3.U(filesDir, "cache").getPath();
        path.getClass();
        return path;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00cd  */
    private final File getNormalDir(long j) {
        Object next;
        String path;
        File file = new File(getFilesCacheDirPath());
        File file2 = null;
        if (!file.exists() && !file.mkdirs()) {
            q.d(file, "Unable to create files cache dir at ");
            return null;
        }
        String str = ry5.u;
        Long lC = qy5.c(new q63(file, 2));
        if (lC != null && lC.longValue() > 0) {
            if (lC.longValue() <= j) {
                p93 p93Var = p93.a;
                vr6.i$default(vr6.INSTANCE, logTag, dj7.l("Internal Storage doesn't have enough space for the task. Needed: ", p93.c(Long.valueOf(j)), ", Available: ", p93.c(lC)), null, 4, null);
            }
        }
        vr6.i$default(vr6.INSTANCE, logTag, "Invalid free space amount in Internal Storage: " + lC, null, 4, null);
        zn7 zn7VarD = zn7.q.d();
        if (zn7VarD.b) {
            SwiftApp.Companion companion = SwiftApp.d;
            File[] externalCacheDirs = SwiftApp.Companion.c().getExternalCacheDirs();
            if (externalCacheDirs != null) {
                Iterator it = ((ArrayList) x50.p0(externalCacheDirs)).iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    path = ((File) next).getPath();
                    path.getClass();
                } while (!uq7.V(path, zn7VarD.n().v(), false));
                File file3 = (File) next;
                if (file3 == null) {
                    file2 = new File(getUserFolderCacheDirPath());
                } else {
                    file2 = file3.exists() ? file3 : null;
                    if (file2 == null) {
                        file2 = new File(getUserFolderCacheDirPath());
                    }
                }
            } else {
                file2 = new File(getUserFolderCacheDirPath());
            }
        }
        return file2 == null ? file : file2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    /* JADX WARN: Code duplicated, block: B:14:0x0057  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    private final File getShizukuSupportedDir() {
        MFirebaseUser mFirebaseUserA;
        SwiftApp.Companion companion = SwiftApp.d;
        File externalCacheDir = SwiftApp.Companion.c().getExternalCacheDir();
        if (externalCacheDir == null) {
            d45.b.getClass();
            mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
            }
            String str = ry5.u;
            externalCacheDir = new File(new ry5(mFirebaseUserA, new q63(Environment.getExternalStorageDirectory(), "SwiftBackup", 2).v()).e);
        } else {
            if (!externalCacheDir.exists()) {
                externalCacheDir = null;
            }
            if (externalCacheDir == null) {
                d45.b.getClass();
                mFirebaseUserA = d45.a();
                if (mFirebaseUserA != null) {
                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                }
                String str2 = ry5.u;
                externalCacheDir = new File(new ry5(mFirebaseUserA, new q63(Environment.getExternalStorageDirectory(), "SwiftBackup", 2).v()).e);
            }
        }
        vr6.i$default(vr6.INSTANCE, logTag, eq3.k("Need to use working directory at ", externalCacheDir.getPath(), " where Shizuku/ADB can access read/write files"), null, 4, null);
        return externalCacheDir;
    }

    private final String getUserFolderCacheDirPath() {
        String str = ry5.u;
        return qy5.f(false, null).e;
    }

    public final be8 cleanupAppTasksDir() {
        try {
            return cleanupAppTasksDir$lambda$0();
        } catch (Exception unused) {
            return null;
        }
    }

    public final q63 getWorkingDir(String str, long j) {
        str.getClass();
        q63 q63Var = new q63(2, getAppTasksDirectory(j), str);
        if (q63.E(q63Var)) {
            return q63Var;
        }
        g84.f(xs1.i(q63Var, "Unable to create working dir at "));
        return null;
    }
}
