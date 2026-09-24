package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zy1 {
    public final Context a;
    public final ka2 b;
    public yf1 e;
    public yf1 f;
    public boolean g;
    public sy1 h;
    public final k94 i;
    public final ca3 j;
    public final bb k;
    public final cb l;
    public final oy1 m;
    public final cz1 n;
    public final nh o;
    public final s02 p;
    public final long d = System.currentTimeMillis();
    public final c00 c = new c00(9);

    public zy1(FirebaseApp firebaseApp, k94 k94Var, cz1 cz1Var, ka2 ka2Var, bb bbVar, cb cbVar, ca3 ca3Var, oy1 oy1Var, nh nhVar, s02 s02Var) {
        this.b = ka2Var;
        this.a = firebaseApp.getApplicationContext();
        this.i = k94Var;
        this.n = cz1Var;
        this.k = bbVar;
        this.l = cbVar;
        this.j = ca3Var;
        this.m = oy1Var;
        this.o = nhVar;
        this.p = s02Var;
    }

    public final void a(f80 f80Var) {
        s02.a();
        s02.a();
        this.e.p();
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Initialization marker file was created.", null);
        }
        try {
            try {
                this.k.c(new q(6));
                this.h.h();
                if (!f80Var.c().b.a) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Collection of crash reports disabled in Crashlytics settings.", null);
                    }
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.h.e(f80Var)) {
                    Log.w("FirebaseCrashlytics", "Previous sessions could not be finalized.", null);
                }
                this.h.i(((TaskCompletionSource) ((AtomicReference) f80Var.i).get()).getTask());
                c();
            } catch (Exception e) {
                Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during asynchronous initialization.", e);
                c();
            }
        } catch (Throwable th) {
            c();
            throw th;
        }
    }

    public final void b(f80 f80Var) {
        Future<?> futureSubmit = ((o02) this.p.a).a.submit(new pb(2, this, f80Var));
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.", null);
        }
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Log.e("FirebaseCrashlytics", "Crashlytics was interrupted during initialization.", e);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
            Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            Log.e("FirebaseCrashlytics", "Crashlytics timed out during initialization.", e3);
        }
    }

    public final void c() {
        s02.a();
        try {
            yf1 yf1Var = this.e;
            ca3 ca3Var = (ca3) yf1Var.c;
            String str = (String) yf1Var.b;
            ca3Var.getClass();
            if (new File((File) ca3Var.c, str).delete()) {
                return;
            }
            Log.w("FirebaseCrashlytics", "Initialization marker file was not properly removed.", null);
        } catch (Exception e) {
            Log.e("FirebaseCrashlytics", "Problem encountered deleting Crashlytics initialization marker.", e);
        }
    }

    public final void d(Boolean bool) {
        ka2 ka2Var = this.b;
        synchronized (ka2Var) {
            if (bool != null) {
                try {
                    ka2Var.f = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            ka2Var.g = bool != null ? bool : ka2Var.a(ka2Var.b.getApplicationContext());
            SharedPreferences.Editor editorEdit = ka2Var.a.edit();
            if (bool != null) {
                editorEdit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
            } else {
                editorEdit.remove("firebase_crashlytics_collection_enabled");
            }
            editorEdit.apply();
            synchronized (ka2Var.c) {
                try {
                    boolean zB = ka2Var.b();
                    boolean z = ka2Var.e;
                    if (zB) {
                        if (!z) {
                            ka2Var.d.trySetResult(null);
                            ka2Var.e = true;
                        }
                    } else if (z) {
                        ka2Var.d = new TaskCompletionSource();
                        ka2Var.e = false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void e(String str, String str2) {
        ((o02) this.p.a).a(new uy1(0, this, str, str2));
    }
}
