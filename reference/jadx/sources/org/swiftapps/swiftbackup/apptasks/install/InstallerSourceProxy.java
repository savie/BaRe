package org.swiftapps.swiftbackup.apptasks.install;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import defpackage.ad4;
import defpackage.bd4;
import defpackage.bn6;
import defpackage.cd4;
import defpackage.cy0;
import defpackage.dj7;
import defpackage.ed4;
import defpackage.en6;
import defpackage.eq3;
import defpackage.fd4;
import defpackage.pe4;
import defpackage.rs9;
import defpackage.zm5;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class InstallerSourceProxy {
    private static final String EXTRA_PACKAGE_NAME = "android.content.pm.extra.PACKAGE_NAME";
    private static final String EXTRA_STATUS = "android.content.pm.extra.STATUS";
    private static final String EXTRA_STATUS_MESSAGE = "android.content.pm.extra.STATUS_MESSAGE";
    public static final InstallerSourceProxy INSTANCE = new InstallerSourceProxy();
    private static final String PREFIX = "SB_INSTALL";
    private static final long RESULT_TIMEOUT_MILLIS = 120000;
    private static final int STATUS_FAILURE_TIMEOUT_COMPAT = 8;

    private InstallerSourceProxy() {
    }

    private final cd4 commitAndAwaitResult(Context context, PackageInstaller.Session session, String str, String str2) {
        ed4 ed4Var = new ed4();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.getClass();
        try {
            parcelObtain.writeStrongBinder(ed4Var.c);
            parcelObtain.setDataPosition(0);
            IntentSender intentSenderOrNullFromParcel = IntentSender.readIntentSenderOrNullFromParcel(parcelObtain);
            if (intentSenderOrNullFromParcel == null) {
                throw new IllegalStateException("Failed to create local PackageInstaller result sender");
            }
            parcelObtain.recycle();
            session.commit(intentSenderOrNullFromParcel);
            Intent intent = ed4Var.a.await(RESULT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS) ? ed4Var.b : null;
            if (intent == null) {
                return new cd4(8, "Timed out waiting for PackageInstaller result intent", null, bd4.Internal);
            }
            cd4 cd4VarInstallResultFromIntent$app = installResultFromIntent$app(intent);
            if (cd4VarInstallResultFromIntent$app == null) {
                return new cd4(1, "PackageInstaller result intent did not include an install status", str, bd4.Internal);
            }
            return cd4VarInstallResultFromIntent$app.a == 0 ? verifyInstallSource(context, str, str2) : cd4VarInstallResultFromIntent$app;
        } catch (Throwable th) {
            parcelObtain.recycle();
            throw th;
        }
    }

    private final Context createInstallerContext(String str) throws IllegalAccessException, PackageManager.NameNotFoundException, ClassNotFoundException, InvocationTargetException {
        if (Looper.myLooper() == null) {
            prepareAppProcessMainLooper();
        }
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Object objInvoke = cls.getDeclaredMethod("getSystemContext", null).invoke(cls.getDeclaredMethod("systemMain", null).invoke(null, null), null);
        objInvoke.getClass();
        Context contextCreatePackageContext = ((Context) objInvoke).createPackageContext(str, 0);
        contextCreatePackageContext.getClass();
        return contextCreatePackageContext;
    }

    private final int install(fd4 fd4Var) throws IllegalAccessException, PackageManager.NameNotFoundException, ClassNotFoundException, InvocationTargetException {
        Throwable targetException;
        int iCreateSession;
        String str = fd4Var.a;
        ArrayList<ad4> arrayList = fd4Var.c;
        Context contextCreateInstallerContext = createInstallerContext(str);
        PackageInstaller packageInstaller = contextCreateInstallerContext.getPackageManager().getPackageInstaller();
        packageInstaller.getClass();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        String str2 = fd4Var.b;
        sessionParams.setAppPackageName(str2);
        sessionParams.setInstallReason(4);
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            sessionParams.setInstallerPackageName(str);
        }
        if (i >= 33) {
            sessionParams.setPackageSource(2);
        }
        if (i >= 31) {
            sessionParams.setRequireUserAction(2);
        }
        Iterator it = arrayList.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += ((ad4) it.next()).c;
        }
        sessionParams.setSize(j);
        try {
            iCreateSession = packageInstaller.createSession(sessionParams);
            try {
                PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(iCreateSession);
                try {
                    for (ad4 ad4Var : arrayList) {
                        FileInputStream fileInputStream = new FileInputStream(new File(ad4Var.b));
                        try {
                            OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(ad4Var.a, 0L, ad4Var.c);
                            try {
                                outputStreamOpenWrite.getClass();
                                cy0.j(fileInputStream, outputStreamOpenWrite, 262144);
                                sessionOpenSession.fsync(outputStreamOpenWrite);
                                outputStreamOpenWrite.close();
                                fileInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(outputStreamOpenWrite, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(fileInputStream, th3);
                                throw th4;
                            }
                        }
                    }
                    InstallerSourceProxy installerSourceProxy = INSTANCE;
                    sessionOpenSession.getClass();
                    cd4 cd4VarCommitAndAwaitResult = installerSourceProxy.commitAndAwaitResult(contextCreateInstallerContext, sessionOpenSession, str2, str);
                    int i2 = 0;
                    if (cd4VarCommitAndAwaitResult.a == 0) {
                        String str3 = cd4VarCommitAndAwaitResult.c;
                        if (str3 == null) {
                            str3 = "";
                        }
                        System.out.println((Object) ("SB_INSTALL:Success [session=" + iCreateSession + ", package=" + str3 + "]"));
                    } else {
                        System.out.println((Object) installerSourceProxy.failureOutput$app(cd4VarCommitAndAwaitResult));
                        i2 = 1;
                    }
                    sessionOpenSession.close();
                    return i2;
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        rs9.c(sessionOpenSession, th5);
                        throw th6;
                    }
                }
            } catch (Exception e) {
                targetException = e;
                if (iCreateSession >= 0) {
                    try {
                        packageInstaller.abandonSession(iCreateSession);
                    } catch (Throwable unused) {
                    }
                }
                if (targetException instanceof InvocationTargetException) {
                    InvocationTargetException invocationTargetException = (InvocationTargetException) targetException;
                    if (invocationTargetException.getTargetException() != null) {
                        targetException = invocationTargetException.getTargetException();
                    }
                }
                String simpleName = targetException.getClass().getSimpleName();
                String message = targetException.getMessage();
                System.out.println((Object) eq3.k("SB_INSTALL:Failure [", dj7.k(simpleName, ": ", message != null ? message : ""), "]"));
                return 1;
            }
        } catch (Exception e2) {
            targetException = e2;
            iCreateSession = -1;
        }
    }

    public static final void main(String[] strArr) {
        Object bn6Var;
        strArr.getClass();
        try {
            bn6Var = Integer.valueOf(INSTANCE.install(zm5.w(strArr)));
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            if (thA instanceof InvocationTargetException) {
                InvocationTargetException invocationTargetException = (InvocationTargetException) thA;
                if (invocationTargetException.getTargetException() != null) {
                    thA = invocationTargetException.getTargetException();
                }
            }
            String simpleName = thA.getClass().getSimpleName();
            String message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            System.out.println((Object) eq3.k("SB_INSTALL:Failure [", dj7.k(simpleName, ": ", message), "]"));
            bn6Var = 1;
        }
        System.exit(((Number) bn6Var).intValue());
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    private final void prepareAppProcessMainLooper() {
        Looper.prepareMainLooper();
    }

    private final cd4 verifyInstallSource(Context context, String str, String str2) throws PackageManager.NameNotFoundException {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(str);
        if (!pe4.d(installerPackageName, str2)) {
            if (installerPackageName == null) {
                installerPackageName = "";
            }
            return new cd4(1, "Install verification failed: installerPackageName=".concat(installerPackageName), str, bd4.Internal);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            InstallSourceInfo installSourceInfo = context.getPackageManager().getInstallSourceInfo(str);
            installSourceInfo.getClass();
            if (!pe4.d(installSourceInfo.getInitiatingPackageName(), str2) || !pe4.d(installSourceInfo.getInstallingPackageName(), str2)) {
                String initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                if (initiatingPackageName == null) {
                    initiatingPackageName = "";
                }
                String installingPackageName = installSourceInfo.getInstallingPackageName();
                return new cd4(1, dj7.l("Install verification failed: initiatingPackageName=", initiatingPackageName, ", installingPackageName=", installingPackageName != null ? installingPackageName : ""), str, bd4.Internal);
            }
        }
        return new cd4(0, null, str, bd4.PackageInstaller);
    }

    public final String failureOutput$app(cd4 cd4Var) {
        cd4Var.getClass();
        String displayName = cd4Var.d.getDisplayName();
        int i = cd4Var.a;
        String str = cd4Var.b;
        if (str == null) {
            str = "";
        }
        return dj7.n(dj7.v("SB_INSTALL:Failure [source=", displayName, ", status=", i, ", message="), str, "]");
    }

    public final cd4 installResultFromIntent$app(Intent intent) {
        intent.getClass();
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        Object obj = extras.get(EXTRA_STATUS);
        if (!(obj instanceof Integer) && !(obj instanceof Number)) {
            return null;
        }
        int iIntValue = ((Number) obj).intValue();
        return new cd4(iIntValue, extras.getString(EXTRA_STATUS_MESSAGE), extras.getString(EXTRA_PACKAGE_NAME), bd4.PackageInstaller);
    }
}
