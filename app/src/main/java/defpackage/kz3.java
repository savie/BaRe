package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class kz3 {
    public final Context a;
    public final String b;
    public final oe c;
    public final me d;
    public final df e;
    public final Looper f;
    public final int g;
    public final i19 h;
    public final lk i;
    public final pz3 j;

    public kz3(Context context, Activity activity, oe oeVar, me meVar, jz3 jz3Var) {
        ly8.i(context, "Null context is not permitted.");
        ly8.i(oeVar, "Api must not be null.");
        ly8.i(jz3Var, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        ly8.i(applicationContext, "The provided context did not have an application context.");
        this.a = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : null;
        this.b = attributionTag;
        this.c = oeVar;
        this.d = meVar;
        this.f = jz3Var.b;
        df dfVar = new df(oeVar, meVar, attributionTag);
        this.e = dfVar;
        this.h = new i19(this);
        pz3 pz3VarG = pz3.g(applicationContext);
        this.j = pz3VarG;
        this.g = pz3VarG.h.getAndIncrement();
        this.i = jz3Var.a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            bu4 fragment = vt4.getFragment(activity);
            a19 a19Var = (a19) fragment.b(a19.class, "ConnectionlessLifecycleHelper");
            if (a19Var == null) {
                Object obj = lz3.c;
                a19Var = new a19(fragment, pz3VarG);
            }
            a19Var.e.add(dfVar);
            pz3VarG.b(a19Var);
        }
        n29 n29Var = pz3VarG.n;
        n29Var.sendMessage(n29Var.obtainMessage(7, this));
    }

    public final vq a() {
        vq vqVar = new vq(3);
        Set set = Collections.EMPTY_SET;
        if (((p50) vqVar.b) == null) {
            vqVar.b = new p50(0);
        }
        ((p50) vqVar.b).addAll(set);
        Context context = this.a;
        vqVar.d = context.getClass().getName();
        vqVar.c = context.getPackageName();
        return vqVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    public final Task b(int i, r19 r19Var) {
        n19 n19Var;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        lk lkVar = this.i;
        pz3 pz3Var = this.j;
        final n29 n29Var = pz3Var.n;
        int i2 = r19Var.c;
        if (i2 != 0) {
            df dfVar = this.e;
            if (pz3Var.c()) {
                kq6 kq6Var = (kq6) jq6.i().b;
                boolean z = true;
                if (kq6Var != null) {
                    if (kq6Var.b) {
                        boolean z2 = kq6Var.c;
                        g19 g19Var = (g19) pz3Var.j.get(dfVar);
                        if (g19Var != null) {
                            ne neVar = g19Var.b;
                            if (neVar instanceof az3) {
                                az3 az3Var = (az3) neVar;
                                if (az3Var.u == null || az3Var.c()) {
                                    z = z2;
                                } else {
                                    is1 is1VarA = n19.a(g19Var, az3Var, i2);
                                    if (is1VarA != null) {
                                        g19Var.t++;
                                        z = is1VarA.c;
                                    }
                                }
                            }
                        } else {
                            z = z2;
                        }
                    }
                    n19Var = null;
                }
                n19Var = new n19(pz3Var, i2, dfVar, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L);
            } else {
                n19Var = null;
            }
            if (n19Var != null) {
                Task task = taskCompletionSource.getTask();
                n29Var.getClass();
                task.addOnCompleteListener(new Executor() { // from class: d19
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        n29Var.post(runnable);
                    }
                }, n19Var);
            }
        }
        n29Var.sendMessage(n29Var.obtainMessage(4, new p19(new y19(i, r19Var, taskCompletionSource, lkVar), pz3Var.i.get(), this)));
        return taskCompletionSource.getTask();
    }
}
