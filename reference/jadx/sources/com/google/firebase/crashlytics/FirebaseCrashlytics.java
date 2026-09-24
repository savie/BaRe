package com.google.firebase.crashlytics;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import defpackage.f6;
import defpackage.o02;
import defpackage.sy1;
import defpackage.vy1;
import defpackage.xu1;
import defpackage.xy1;
import defpackage.y62;
import defpackage.zy1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseCrashlytics {
    public final zy1 a;

    public FirebaseCrashlytics(zy1 zy1Var) {
        this.a = zy1Var;
    }

    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) FirebaseApp.getInstance().get(FirebaseCrashlytics.class);
        if (firebaseCrashlytics != null) {
            return firebaseCrashlytics;
        }
        f6.n("FirebaseCrashlytics component is not present.");
        return null;
    }

    public Task<Boolean> checkForUnsentReports() {
        sy1 sy1Var = this.a.h;
        if (sy1Var.r.compareAndSet(false, true)) {
            return sy1Var.o.getTask();
        }
        Log.w("FirebaseCrashlytics", "checkForUnsentReports should only be called once per execution.", null);
        return Tasks.forResult(Boolean.FALSE);
    }

    public void deleteUnsentReports() {
        sy1 sy1Var = this.a.h;
        sy1Var.p.trySetResult(Boolean.FALSE);
        sy1Var.q.getTask();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.a.g;
    }

    public boolean isCrashlyticsCollectionEnabled() {
        return this.a.b.b();
    }

    public void log(final String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        final zy1 zy1Var = this.a;
        final long j = jCurrentTimeMillis - zy1Var.d;
        ((o02) zy1Var.p.a).b(new Callable() { // from class: wy1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                final zy1 zy1Var2 = zy1Var;
                o02 o02Var = (o02) zy1Var2.p.b;
                final long j2 = j;
                final String str2 = str;
                return o02Var.a(new Runnable() { // from class: yy1
                    @Override // java.lang.Runnable
                    public final void run() {
                        sy1 sy1Var = zy1Var2.h;
                        m02 m02Var = sy1Var.n;
                        if (m02Var == null || !m02Var.e.get()) {
                            ((w83) sy1Var.i.b).n(j2, str2);
                        }
                    }
                });
            }
        });
    }

    public void recordException(Throwable th) {
        if (th == null) {
            Log.w("FirebaseCrashlytics", "A null value was passed to recordException. Ignoring.", null);
            return;
        }
        Map map = Collections.EMPTY_MAP;
        zy1 zy1Var = this.a;
        ((o02) zy1Var.p.a).a(new vy1(zy1Var, th, map));
    }

    public void sendUnsentReports() {
        sy1 sy1Var = this.a.h;
        sy1Var.p.trySetResult(Boolean.TRUE);
        sy1Var.q.getTask();
    }

    public void setCrashlyticsCollectionEnabled(boolean z) {
        this.a.d(Boolean.valueOf(z));
    }

    public void setCustomKey(String str, boolean z) {
        this.a.e(str, Boolean.toString(z));
    }

    public void setCustomKeys(y62 y62Var) {
        HashMap map = y62Var.a;
        if (map.isEmpty()) {
            return;
        }
        zy1 zy1Var = this.a;
        ((o02) zy1Var.p.a).a(new xy1(0, zy1Var, map));
    }

    public void setUserId(String str) {
        zy1 zy1Var = this.a;
        ((o02) zy1Var.p.a).a(new xu1(1, zy1Var, str));
    }

    public void setCrashlyticsCollectionEnabled(Boolean bool) {
        this.a.d(bool);
    }

    public void setCustomKey(String str, double d) {
        this.a.e(str, Double.toString(d));
    }

    public void setCustomKey(String str, float f) {
        this.a.e(str, Float.toString(f));
    }

    public void setCustomKey(String str, int i) {
        this.a.e(str, Integer.toString(i));
    }

    public void setCustomKey(String str, long j) {
        this.a.e(str, Long.toString(j));
    }

    public void setCustomKey(String str, String str2) {
        this.a.e(str, str2);
    }

    public void recordException(Throwable th, y62 y62Var) {
        if (th == null) {
            Log.w("FirebaseCrashlytics", "A null value was passed to recordException. Ignoring.", null);
            return;
        }
        HashMap map = y62Var.a;
        zy1 zy1Var = this.a;
        ((o02) zy1Var.p.a).a(new vy1(zy1Var, th, map));
    }
}
