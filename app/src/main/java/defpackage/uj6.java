package defpackage;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uj6 implements Runnable {
    public final /* synthetic */ zc2 a;
    public final /* synthetic */ TaskCompletionSource b;
    public final /* synthetic */ wj6 c;
    public final /* synthetic */ wj6 d;

    public uj6(wj6 wj6Var, zc2 zc2Var, TaskCompletionSource taskCompletionSource, wj6 wj6Var2) {
        this.d = wj6Var;
        this.a = zc2Var;
        this.b = taskCompletionSource;
        this.c = wj6Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wj6 wj6Var = this.d;
        bv7 bv7Var = wj6Var.n;
        uc2 uc2Var = wj6Var.h;
        final zc2 zc2Var = this.a;
        wj6 wj6Var2 = zc2Var.a;
        gy5 gy5Var = zc2Var.b;
        qn5 qn5Var = (qn5) bv7Var.g.a(new mu7(0, bv7Var, zc2Var.f()));
        final TaskCompletionSource taskCompletionSource = this.b;
        if (qn5Var != null) {
            taskCompletionSource.setResult(new eb2(new zc2(wj6Var2, gy5Var), sb4.d(qn5Var)));
            return;
        }
        bv7 bv7Var2 = wj6Var.n;
        bv7Var2.g.a(new ou7(bv7Var2, zc2Var.f()));
        bv7 bv7Var3 = wj6Var.n;
        bv7Var3.getClass();
        zc2 zc2Var2 = new zc2(wj6Var2, gy5Var);
        sb4 sb4Var = bv7Var3.g.b(zc2Var.f()).a;
        final eb2 eb2Var = new eb2(zc2Var2, sb4Var);
        if (!sb4Var.a.isEmpty()) {
            ((lf2) uc2Var.e.b).schedule(new z22(8, taskCompletionSource, eb2Var), 3000L, TimeUnit.MILLISECONDS);
        }
        wz5 wz5Var = wj6Var.c;
        ArrayList arrayListC = gy5Var.c();
        HashMap mapA = zc2Var.f().b.a();
        wz5Var.getClass();
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        long j = wz5Var.j;
        wz5Var.j = 1 + j;
        HashMap map = new HashMap();
        map.put(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, yc9.M(arrayListC));
        map.put(JWKParameterNames.RSA_SECOND_PRIME_FACTOR, mapA);
        wz5Var.o.put(Long.valueOf(j), new sz5(map, new kz5(taskCompletionSource2)));
        if (wz5Var.h == rz5.e) {
            wz5Var.k(Long.valueOf(j));
        }
        wz5Var.b();
        Task task = taskCompletionSource2.getTask();
        lf2 lf2Var = (lf2) uc2Var.e.b;
        final wj6 wj6Var3 = this.c;
        task.addOnCompleteListener(lf2Var, new OnCompleteListener() { // from class: tj6
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                List listG;
                wj6 wj6Var4 = this.a.d;
                TaskCompletionSource taskCompletionSource3 = taskCompletionSource;
                if (taskCompletionSource3.getTask().isComplete()) {
                    return;
                }
                if (!task2.isSuccessful()) {
                    eb2 eb2Var2 = eb2Var;
                    if (!eb2Var2.a.a.isEmpty()) {
                        taskCompletionSource3.setResult(eb2Var2);
                        return;
                    }
                    Exception exception = task2.getException();
                    Objects.requireNonNull(exception);
                    taskCompletionSource3.setException(exception);
                    return;
                }
                qn5 qn5VarA = xh8.a(task2.getResult(), qv2.e);
                zc2 zc2Var3 = zc2Var;
                qc6 qc6VarF = zc2Var3.f();
                gy5 gy5Var2 = qc6VarF.a;
                wj6Var4.h(qc6VarF, true);
                boolean zD = qc6VarF.b.d();
                bv7 bv7Var4 = wj6Var4.n;
                if (zD) {
                    listG = bv7Var4.g(gy5Var2, qn5VarA);
                } else {
                    listG = (List) bv7Var4.g.a(new nu7(bv7Var4, bv7Var4.m(qc6VarF), gy5Var2, qn5VarA, 1));
                }
                wj6Var3.j(listG);
                taskCompletionSource3.setResult(new eb2(new zc2(zc2Var3.a, zc2Var3.b), new sb4(qn5VarA, zc2Var3.f().b.e)));
                wj6Var4.h(qc6VarF, false);
            }
        });
    }
}
