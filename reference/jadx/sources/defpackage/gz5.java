package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gz5 implements Runnable {
    public final /* synthetic */ wz5 a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ boolean c;

    public /* synthetic */ gz5(wz5 wz5Var, boolean z, boolean z2) {
        this.a = wz5Var;
        this.b = z;
        this.c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final wz5 wz5Var = this.a;
        ScheduledExecutorService scheduledExecutorService = wz5Var.x;
        u00 u00Var = wz5Var.y;
        rz5 rz5Var = wz5Var.h;
        yc9.D(rz5Var == rz5.a, "Not in disconnected state: %s", rz5Var);
        wz5Var.h = rz5.b;
        final long j = wz5Var.B + 1;
        wz5Var.B = j;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        u00Var.c("Trying to fetch auth token", null, new Object[0]);
        yu1 yu1Var = wz5Var.v;
        int i = 3;
        ((k58) yu1Var.a).a(this.b, new ro(i, (ScheduledExecutorService) yu1Var.b, new ty3(taskCompletionSource)));
        final Task task = taskCompletionSource.getTask();
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        u00Var.c("Trying to fetch app check token", null, new Object[0]);
        yu1 yu1Var2 = wz5Var.w;
        ((k58) yu1Var2.a).a(this.c, new ro(i, (ScheduledExecutorService) yu1Var2.b, new z28(taskCompletionSource2, 13)));
        final Task task2 = taskCompletionSource2.getTask();
        Tasks.whenAll((Task<?>[]) new Task[]{task, task2}).addOnSuccessListener(scheduledExecutorService, new OnSuccessListener() { // from class: hz5
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                wz5 wz5Var2 = wz5Var;
                u00 u00Var2 = wz5Var2.y;
                if (j != wz5Var2.B) {
                    u00Var2.c("Ignoring getToken result, because this was not the latest attempt.", null, new Object[0]);
                    return;
                }
                rz5 rz5Var2 = wz5Var2.h;
                rz5 rz5Var3 = rz5.b;
                if (rz5Var2 != rz5Var3) {
                    if (rz5Var2 == rz5.a) {
                        u00Var2.c("Not opening connection after token refresh, because connection was set to disconnected", null, new Object[0]);
                        return;
                    }
                    return;
                }
                u00Var2.c("Successfully fetched token, opening connection", null, new Object[0]);
                String str = (String) task.getResult();
                String str2 = (String) task2.getResult();
                rz5 rz5Var4 = wz5Var2.h;
                yc9.D(rz5Var4 == rz5Var3, "Trying to open network connection while in the wrong state: %s", rz5Var4);
                if (str == null) {
                    wj6 wj6Var = wz5Var2.a;
                    wj6Var.getClass();
                    wj6Var.p(vs1.c, Boolean.FALSE);
                }
                wz5Var2.q = str;
                wz5Var2.s = str2;
                wz5Var2.h = rz5.c;
                vr1 vr1Var = new vr1(wz5Var2.u, wz5Var2.b, wz5Var2.c, wz5Var2, wz5Var2.A, str2);
                wz5Var2.g = vr1Var;
                u00 u00Var3 = (u00) vr1Var.f;
                if (u00Var3.e()) {
                    u00Var3.c("Opening a connection", null, new Object[0]);
                }
                nr8 nr8Var = (nr8) vr1Var.d;
                c00 c00Var = nr8Var.a;
                ar8 ar8Var = (ar8) c00Var.b;
                u00 u00Var4 = ((nr8) c00Var.c).j;
                try {
                    ar8Var.c();
                } catch (br8 e) {
                    if (u00Var4.e()) {
                        u00Var4.c("Error connecting", e, new Object[0]);
                    }
                    ar8Var.a();
                    try {
                        dr8 dr8Var = ar8Var.g;
                        if (dr8Var.g.getState() != Thread.State.NEW) {
                            dr8Var.g.join();
                        }
                        ar8Var.k.join();
                    } catch (InterruptedException e2) {
                        u00Var4.d("Interrupted while shutting down websocket threads", e2);
                    }
                }
                nr8Var.h = nr8Var.i.schedule(new ib0(nr8Var, 11), 30000L, TimeUnit.MILLISECONDS);
            }
        }).addOnFailureListener(scheduledExecutorService, new iz5(wz5Var, j));
    }
}
