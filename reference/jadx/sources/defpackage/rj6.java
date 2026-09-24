package defpackage;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rj6 implements Runnable {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public /* synthetic */ rj6(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.d = obj;
        this.b = obj2;
        this.c = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall = null;
        switch (this.a) {
            case 0:
                wj6 wj6Var = (wj6) ((nh) this.d).b;
                nh nhVar = wj6Var.d;
                gy5 gy5Var = ((qc6) this.b).a;
                qn5 qn5VarU = ((qn5) nhVar.b).U(gy5Var);
                if (!qn5VarU.isEmpty()) {
                    wj6Var.j(wj6Var.m.g(gy5Var, qn5VarU));
                    ((gd) this.c).k(null);
                }
                break;
            case 1:
                dk6 dk6Var = (dk6) this.d;
                yb0 yb0Var = (yb0) this.b;
                dk6Var.b(yb0Var, (TaskCompletionSource) this.c);
                ((AtomicInteger) dk6Var.i.c).set(0);
                double dMin = Math.min(3600000.0d, Math.pow(dk6Var.b, dk6Var.a()) * (60000.0d / dk6Var.a));
                String str = "Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dMin / 1000.0d)) + " s for report: " + yb0Var.b;
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", str, null);
                }
                try {
                    Thread.sleep((long) dMin);
                } catch (InterruptedException unused) {
                    return;
                }
                break;
            default:
                try {
                    objCall = ((kq3) this.b).call();
                    break;
                } catch (Exception unused2) {
                }
                ((Handler) this.d).post(new vb(2, (lq3) this.c, objCall));
                break;
        }
    }

    public /* synthetic */ rj6() {
        this.a = 2;
    }
}
