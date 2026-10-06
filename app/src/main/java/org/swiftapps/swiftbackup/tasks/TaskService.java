package org.swiftapps.swiftbackup.tasks;

import android.app.IntentService;
import android.app.Notification;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.util.Log;
import defpackage.b67;
import defpackage.ez7;
import defpackage.fo8;
import defpackage.fz7;
import defpackage.gv7;
import defpackage.gz7;
import defpackage.hy7;
import defpackage.io4;
import defpackage.jc2;
import defpackage.jy7;
import defpackage.kc2;
import defpackage.ny2;
import defpackage.o37;
import defpackage.pu;
import defpackage.q63;
import defpackage.qc2;
import defpackage.qj;
import defpackage.u48;
import defpackage.vr6;
import defpackage.w14;
import defpackage.zk;
import defpackage.zn4;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.NotificationHelper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskService extends IntentService {
    public static volatile boolean c;
    public static volatile boolean d;
    public volatile String a;
    public static volatile gz7 b = gz7.WAITING;
    public static final gv7 e = new gv7(new zk(18));

    public TaskService() {
        super("TaskService");
    }

    public final void a(jc2 jc2Var) {
        String str;
        synchronized (this) {
            str = this.a;
            this.a = null;
        }
        if (str != null) {
            kc2 kc2Var = kc2.a;
            kc2.c(str, jc2Var);
        }
    }

    public final void b(int i, String str) {
        d = true;
        stopForeground(1);
        stopSelf();
        vr6.w$default(vr6.INSTANCE, "TaskService", u48.k(i, "Foreground service timeout, cancelling tasks: startId=", ", fgsType=", str), null, 4, null);
        hy7 hy7Var = hy7.a;
        jy7 jy7Var = hy7.e;
        if (jy7Var != null) {
            jy7Var.b();
        }
        ez7.b(gz7.CANCELLED);
        zn4 zn4Var = zn4.a;
        zn4.c(new pu(15));
        if (hy7.f()) {
            o37.d();
        }
        zn4.b(null, new qj(this, null, 3));
    }

    @Override // android.app.IntentService, android.app.Service
    public final void onDestroy() {
        Log.d("TaskService", "onDestroy() called");
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0226  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ff A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:94:0x0208  */
    /* JADX WARN: Code duplicated, block: B:97:0x020f  */
    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) throws Throwable {
        PowerManager.WakeLock wakeLockNewWakeLock;
        NotificationTaskCancelReceiver notificationTaskCancelReceiver;
        int i;
        jc2 jc2Var;
        String str;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "TaskService", "Started", null, 4, null);
        ez7.b(gz7.RUNNING);
        boolean z = false;
        c = false;
        d = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        NotificationTaskCancelReceiver notificationTaskCancelReceiver2 = null;
        this.a = null;
        jc2 jc2Var2 = jc2.ERROR;
        try {
            hy7 hy7Var = hy7.a;
            jy7 jy7Var = hy7.e;
            jy7Var.getClass();
            Notification notificationA = jy7Var.a();
            int i2 = 19;
            try {
                if (b67.b()) {
                    try {
                        startForeground(12, notificationA, -1);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        wakeLockNewWakeLock = null;
                        if (z && notificationTaskCancelReceiver2 != null) {
                            Const.S(notificationTaskCancelReceiver2);
                        }
                        if (d) {
                            jc2Var2 = jc2.TIMEOUT;
                        }
                        a(jc2Var2);
                        if (!z) {
                            qc2.a.f("TaskService finished", false);
                        }
                        vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                        if (wakeLockNewWakeLock != null && wakeLockNewWakeLock.isHeld()) {
                            wakeLockNewWakeLock.release();
                        }
                        throw th;
                    }
                } else {
                    startForeground(12, notificationA);
                }
                this.a = kc2.a.h("TaskService", hy7.g, hy7.f(), hy7.f);
                SwiftApp.Companion companion = SwiftApp.d;
                Object systemService = SwiftApp.Companion.c().getSystemService("power");
                systemService.getClass();
                wakeLockNewWakeLock = ((PowerManager) systemService).newWakeLock(1, "TaskService");
                wakeLockNewWakeLock.acquire(1800000L);
                try {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new fz7(2, null));
                    NotificationTaskCancelReceiver notificationTaskCancelReceiver3 = new NotificationTaskCancelReceiver();
                    try {
                        Const.C(notificationTaskCancelReceiver3, new IntentFilter());
                        try {
                            hy7.g();
                            Const.S(notificationTaskCancelReceiver3);
                            try {
                                if (b.isCancelled()) {
                                    i = 19;
                                    notificationTaskCancelReceiver = notificationTaskCancelReceiver3;
                                    vr6.w$default(vr6Var, "TaskService", "Cancelled", null, 4, null);
                                    ez7.b(gz7.CANCEL_COMPLETE);
                                    if (d) {
                                        jy7Var.b();
                                    } else {
                                        NotificationHelper.d().cancelAll();
                                    }
                                    jc2Var = d ? jc2.TIMEOUT : jc2.CANCELLED;
                                } else {
                                    notificationTaskCancelReceiver = notificationTaskCancelReceiver3;
                                    i = 19;
                                    vr6.i$default(vr6Var, "TaskService", "Complete", null, 4, null);
                                    ez7.b(gz7.COMPLETE);
                                    jy7Var.d();
                                    TaskManager$ErrorSummary taskManager$ErrorSummaryC = hy7.c();
                                    boolean zHasErrors = taskManager$ErrorSummaryC.hasErrors();
                                    if (zHasErrors) {
                                        try {
                                            if (taskManager$ErrorSummaryC.hasErrors()) {
                                                w14.g(taskManager$ErrorSummaryC, new q63(SwiftApp.Companion.c().getCacheDir(), "TaskErrors.txt", 2), false);
                                            }
                                        } catch (Exception e2) {
                                            vr6.e$default(vr6.INSTANCE, "TaskManager", String.valueOf(e2.getMessage()), null, 4, null);
                                        }
                                    }
                                    if (!zHasErrors && (str = hy7.d) != null) {
                                        if (str.length() <= 0) {
                                            str = null;
                                        }
                                        if (str != null) {
                                            NotificationHelper.d().cancelAll();
                                            o37.c(str, false);
                                        }
                                    }
                                    jc2Var = jc2.COMPLETED;
                                }
                                jc2Var2 = jc2Var;
                                ny2.b().e(new fo8(i));
                                if (d) {
                                    jc2Var2 = jc2.TIMEOUT;
                                }
                                a(jc2Var2);
                                qc2.a.f("TaskService finished", false);
                                vr6.i$default(vr6Var, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                                if (wakeLockNewWakeLock.isHeld()) {
                                    wakeLockNewWakeLock.release();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                notificationTaskCancelReceiver2 = notificationTaskCancelReceiver;
                                if (z) {
                                    Const.S(notificationTaskCancelReceiver2);
                                }
                                if (d) {
                                    jc2Var2 = jc2.TIMEOUT;
                                }
                                a(jc2Var2);
                                if (!z) {
                                    qc2.a.f("TaskService finished", false);
                                }
                                vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                                if (wakeLockNewWakeLock != null) {
                                    wakeLockNewWakeLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            notificationTaskCancelReceiver = notificationTaskCancelReceiver3;
                            z = true;
                            notificationTaskCancelReceiver2 = notificationTaskCancelReceiver;
                            if (z) {
                                Const.S(notificationTaskCancelReceiver2);
                            }
                            if (d) {
                                jc2Var2 = jc2.TIMEOUT;
                            }
                            a(jc2Var2);
                            if (!z) {
                                qc2.a.f("TaskService finished", false);
                            }
                            vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                            if (wakeLockNewWakeLock != null) {
                                wakeLockNewWakeLock.release();
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        notificationTaskCancelReceiver = notificationTaskCancelReceiver3;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    wakeLockNewWakeLock = wakeLockNewWakeLock;
                    z = false;
                    notificationTaskCancelReceiver2 = null;
                    if (z) {
                        Const.S(notificationTaskCancelReceiver2);
                    }
                    if (d) {
                        jc2Var2 = jc2.TIMEOUT;
                    }
                    a(jc2Var2);
                    if (!z) {
                        qc2.a.f("TaskService finished", false);
                    }
                    vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                    if (wakeLockNewWakeLock != null) {
                        wakeLockNewWakeLock.release();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                if (!ez7.a(e3)) {
                    throw e3;
                }
                String strB = io4.b(e3);
                vr6 vr6Var2 = vr6.INSTANCE;
                vr6.e$default(vr6Var2, "TaskService", "Blocked by dataSync FGS quota: ".concat(strB), null, 4, null);
                jy7Var.b();
                ez7.b(gz7.CANCEL_COMPLETE);
                try {
                    kc2 kc2Var = kc2.a;
                    hy7 hy7Var2 = hy7.a;
                    kc2Var.f("TaskService", hy7.g, strB, hy7.f(), hy7.f);
                    if (hy7.f()) {
                        o37.d();
                    }
                    qc2.a.h("TaskService startForeground blocked", false);
                    ny2.b().e(new fo8(i2));
                    if (d) {
                        jc2Var2 = jc2.TIMEOUT;
                    }
                    a(jc2Var2);
                    vr6.i$default(vr6Var2, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                } catch (Throwable th6) {
                    th = th6;
                    z = true;
                    wakeLockNewWakeLock = null;
                    notificationTaskCancelReceiver2 = null;
                    if (z) {
                        Const.S(notificationTaskCancelReceiver2);
                    }
                    if (d) {
                        jc2Var2 = jc2.TIMEOUT;
                    }
                    a(jc2Var2);
                    if (!z) {
                        qc2.a.f("TaskService finished", false);
                    }
                    vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                    if (wakeLockNewWakeLock != null) {
                        wakeLockNewWakeLock.release();
                    }
                    throw th;
                }
            }
        } catch (Throwable th7) {
            th = th7;
            z = false;
            wakeLockNewWakeLock = null;
            notificationTaskCancelReceiver2 = null;
            if (z) {
                Const.S(notificationTaskCancelReceiver2);
            }
            if (d) {
                jc2Var2 = jc2.TIMEOUT;
            }
            a(jc2Var2);
            if (!z) {
                qc2.a.f("TaskService finished", false);
            }
            vr6.i$default(vr6.INSTANCE, "TaskService", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
            if (wakeLockNewWakeLock != null) {
                wakeLockNewWakeLock.release();
            }
            throw th;
        }
    }

    public final void onTimeout(int i, int i2) {
        b(i, String.valueOf(i2));
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        b(i, "shortService");
    }
}
