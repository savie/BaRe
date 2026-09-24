package defpackage;

import com.microsoft.identity.common.java.net.HttpRequest;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mu7 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mu7(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                bv7 bv7Var = (bv7) obj2;
                qc6 qc6Var = (qc6) obj;
                bv7Var.getClass();
                gy5 gy5Var = qc6Var.a;
                ua4 ua4VarF = bv7Var.a;
                qn5 qn5VarC = null;
                gy5 gy5VarP = gy5Var;
                boolean z = false;
                while (true) {
                    if (ua4VarF.isEmpty()) {
                        lu7 lu7Var = (lu7) bv7Var.a.e(gy5Var);
                        if (lu7Var == null) {
                            lu7Var = new lu7(bv7Var.g);
                            bv7Var.a = bv7Var.a.i(gy5Var, lu7Var);
                        } else if (qn5VarC == null) {
                            qn5VarC = lu7Var.c(gy5.d);
                        }
                        gz0 gz0Var = new gz0(new sb4(qn5VarC != null ? qn5VarC : qv2.e, qc6Var.b.e), qn5VarC != null, false);
                        vq vqVar = bv7Var.b;
                        vqVar.getClass();
                        return lu7Var.f(qc6Var, new yf1(13, gy5Var, vqVar), gz0Var).c.f();
                    }
                    lu7 lu7Var2 = (lu7) ua4VarF.a;
                    if (lu7Var2 != null) {
                        if (qn5VarC == null) {
                            qn5VarC = lu7Var2.c(gy5VarP);
                        }
                        z = z || lu7Var2.g();
                    }
                    ua4VarF = ua4VarF.f(gy5VarP.isEmpty() ? m61.b("") : gy5VarP.k());
                    gy5VarP = gy5VarP.p();
                }
                break;
            default:
                return UrlConnectionHttpClient.a((UrlConnectionHttpClient) obj2, (HttpRequest) obj);
        }
    }
}
