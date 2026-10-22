package defpackage;

import android.content.Context;
import android.content.Intent;
import com.bareapps.barebackup.R;
import com.bareapps.barebackup.BareApp;
import com.bareapps.barebackup.common.Const;
import com.bareapps.barebackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rs1 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ rs1(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws InterruptedException {
        int i = this.a;
        boolean z = true;
        String str = this.b;
        switch (i) {
            case 0:
                Thread.sleep(3000L);
                Const.g(str, true);
                throw null;
            default:
                hy7.h = null;
                hy7.e = new jy7();
                hy7.d = str;
                gz7 gz7Var = TaskService.b;
                TaskService.c = true;
                ez7.b(gz7.WAITING);
                BareApp.Companion companion = BareApp.d;
                try {
                    BareApp.Companion.c().startForegroundService(new Intent(BareApp.Companion.c(), (Class<?>) TaskService.class));
                    break;
                } catch (Exception e) {
                    TaskService.c = false;
                    String strB = io4.b(e);
                    vr6.e$default(vr6.INSTANCE, "TaskService", strB, null, 4, null);
                    if (ez7.a(e)) {
                        hy7 hy7Var = hy7.a;
                        if (hy7.f()) {
                            o37.d();
                        }
                        kc2.a.f("TaskService", hy7.g, strB, hy7.f(), hy7.f);
                        strB = strB;
                        qc2.a.h("TaskService start blocked", true);
                        ez7.b(gz7.CANCEL_COMPLETE);
                    }
                    BareApp.Companion companion2 = BareApp.d;
                    Context contextC = BareApp.Companion.c();
                    String strK = dj7.k(BareApp.Companion.c().getString(R.string.error), ": ", strB);
                    zn4 zn4Var = zn4.a;
                    zn4.e(new l30(15, contextC, strK));
                    z = false;
                }
                return Boolean.valueOf(z);
        }
    }
}
