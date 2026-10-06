package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteBlobTooBigException;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vr6 {
    private static final int MAX_MESSAGES_TO_LOAD = 10000;
    private static final String logTag = "SLog";
    public static final vr6 INSTANCE = new vr6();
    private static final os4 executor$delegate = new gv7(new jx(19));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        DEFAULT,
        GREEN,
        YELLOW,
        RED;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b extends ws7 implements qt3 {
        final /* synthetic */ il0 $ctx;
        final /* synthetic */ mt3 $onCleared;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(il0 il0Var, mt3 mt3Var, jv1 jv1Var) {
            super(2, jv1Var);
            this.$ctx = il0Var;
            this.$onCleared = mt3Var;
        }

        @Override // defpackage.ml0
        public final jv1 create(Object obj, jv1 jv1Var) {
            return new b(this.$ctx, this.$onCleared, jv1Var);
        }

        @Override // defpackage.qt3
        public final Object invoke(xx1 xx1Var, jv1 jv1Var) {
            return ((b) create(xx1Var, jv1Var)).invokeSuspend(be8.a);
        }

        @Override // defpackage.ml0
        public final Object invokeSuspend(Object obj) {
            if (this.label != 0) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
            vr6.INSTANCE.getDao().deleteAll();
            if (!this.$ctx.isFinishing()) {
                this.$ctx.H();
                this.$onCleared.invoke(Boolean.TRUE);
            }
            return be8.a;
        }
    }

    private vr6() {
    }

    private final void addLog(int i, String str, String str2, a aVar) {
        synchronized (this) {
            try {
                try {
                    INSTANCE.getDao().put(new jv6(System.currentTimeMillis(), i, str, str2, aVar != null ? aVar.toString() : null));
                } catch (Exception e) {
                    Log.e(logTag, "addLog", e);
                    System.exit(0);
                    throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void addLog$default(vr6 vr6Var, int i, String str, String str2, a aVar, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            aVar = null;
        }
        vr6Var.addLog(i, str, str2, aVar);
    }

    public static /* synthetic */ void d$default(vr6 vr6Var, String str, String str2, a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar = null;
        }
        vr6Var.d(str, str2, aVar);
    }

    public static /* synthetic */ void de$default(vr6 vr6Var, String str, String str2, a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar = null;
        }
        vr6Var.de(str, str2, aVar);
    }

    public static /* synthetic */ void e$default(vr6 vr6Var, String str, String str2, a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar = null;
        }
        vr6Var.e(str, str2, aVar);
    }

    public static /* synthetic */ List filterLogs$default(vr6 vr6Var, List list, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        if ((i & 8) != 0) {
            z3 = false;
        }
        return vr6Var.filterLogs(list, z, z2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kv6 getDao() {
        return y35.a().m();
    }

    private final ExecutorService getExecutor() {
        return (ExecutorService) executor$delegate.getValue();
    }

    public static /* synthetic */ void i$default(vr6 vr6Var, String str, String str2, a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar = null;
        }
        vr6Var.i(str, str2, aVar);
    }

    private final void log(final int i, final String str, final String str2, final a aVar) {
        Log.println(i, str, str2);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            className.getClass();
            if (uq7.V(className, "org.junit.", false)) {
                return;
            }
        }
        str.getClass();
        str2.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        List<FirebaseApp> apps = FirebaseApp.getApps(SwiftApp.Companion.c());
        apps.getClass();
        if (!apps.isEmpty()) {
            FirebaseCrashlytics.getInstance().log(str + ": " + str2);
        }
        getExecutor().execute(new Runnable() { // from class: ur6
            @Override // java.lang.Runnable
            public final void run() {
                vr6.log$lambda$0(i, str, str2, aVar);
            }
        });
    }

    public static /* synthetic */ void log$default(vr6 vr6Var, int i, String str, String str2, a aVar, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            aVar = null;
        }
        vr6Var.log(i, str, str2, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log$lambda$0(int i, String str, String str2, a aVar) {
        INSTANCE.addLog(i, str, str2, aVar);
    }

    public static /* synthetic */ void w$default(vr6 vr6Var, String str, String str2, a aVar, int i, Object obj) {
        if ((i & 4) != 0) {
            aVar = null;
        }
        vr6Var.w(str, str2, aVar);
    }

    public final void clearMessages(il0 il0Var, mt3 mt3Var) {
        il0Var.getClass();
        mt3Var.getClass();
        il0Var.M(R.string.processing);
        zn4 zn4Var = zn4.a;
        zn4.b(null, new b(il0Var, mt3Var, null));
    }

    public final void d(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
    }

    public final void de(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
    }

    public final void e(String str, String str2, Throwable th, a aVar) {
        str.getClass();
        str2.getClass();
        th.getClass();
        log(6, str, dj7.k(str2, ": ", io4.b(th)), aVar);
        Log.e(logTag, str2, th);
    }

    public final List<jv6> filterLogs(List<jv6> list, boolean z, boolean z2, boolean z3) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (jv6 jv6Var : list) {
            if ((!z && pe4.d(jv6Var.getTitle(), "BillingManager")) || ((!z2 && pe4.d(jv6Var.getTitle(), "RootHelper") && nq7.Z(jv6Var.getMsg(), "runCommand", false)) || (!z3 && pe4.d(jv6Var.getTitle(), "JAM")))) {
                jv6Var = null;
            }
            if (jv6Var != null) {
                arrayList.add(jv6Var);
            }
        }
        return arrayList;
    }

    public final List<jv6> getMessages() {
        int iDeleteOlderThan;
        vr6 vr6Var;
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -3);
        try {
            iDeleteOlderThan = getDao().deleteOlderThan(calendar.getTimeInMillis());
        } catch (Exception unused) {
            iDeleteOlderThan = 0;
        }
        if (iDeleteOlderThan > 0) {
            Log.i(logTag, "inBackground: Clearing old log lines out of " + iDeleteOlderThan + " log lines");
            vr6Var = this;
            i$default(vr6Var, logTag, "Cleared SLogs older than 3 days", null, 4, null);
        } else {
            vr6Var = this;
        }
        try {
            int iCount = vr6Var.getDao().count();
            if (iCount > 10000) {
                Log.i(logTag, "Loading latest 10000 SLogs out of " + iCount);
            }
            return vr6Var.getDao().loadLatestMessages(10000);
        } catch (SQLiteBlobTooBigException e) {
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String strB = io4.b(e);
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, contextC, strB));
            e$default(vr6Var, logTag, io4.b(e), null, 4, null);
            return ov2.a;
        }
    }

    public final void i(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
        log(4, str, str2, aVar);
    }

    public final void w(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
        log(5, str, str2, aVar);
    }

    public static /* synthetic */ void e$default(vr6 vr6Var, String str, String str2, Throwable th, a aVar, int i, Object obj) {
        if ((i & 8) != 0) {
            aVar = null;
        }
        vr6Var.e(str, str2, th, aVar);
    }

    public final void e(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
        log(6, str, str2, aVar);
    }
}
