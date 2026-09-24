package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu7 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ hx7 b;
    public final /* synthetic */ gy5 c;
    public final /* synthetic */ bv7 d;
    public final /* synthetic */ Object e;

    public /* synthetic */ nu7(bv7 bv7Var, hx7 hx7Var, gy5 gy5Var, Object obj, int i) {
        this.a = i;
        this.d = bv7Var;
        this.b = hx7Var;
        this.c = gy5Var;
        this.e = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        hx7 hx7Var = this.b;
        bv7 bv7Var = this.d;
        gy5 gy5Var = this.c;
        Object obj = this.e;
        switch (i) {
            case 0:
                qc6 qc6Var = (qc6) bv7Var.c.get(hx7Var);
                if (qc6Var == null) {
                    return Collections.EMPTY_LIST;
                }
                gy5 gy5VarO = gy5.o(qc6Var.a, gy5Var);
                np1 np1VarI = np1.i((HashMap) obj);
                bv7Var.g.c();
                return bv7.b(bv7Var, qc6Var, new bd5(new eu5(2, qc6Var.b, true), gy5VarO, np1VarI));
            default:
                qn5 qn5Var = (qn5) obj;
                qc6 qc6Var2 = (qc6) bv7Var.c.get(hx7Var);
                if (qc6Var2 == null) {
                    return Collections.EMPTY_LIST;
                }
                gy5 gy5VarO2 = gy5.o(qc6Var2.a, gy5Var);
                if (!gy5VarO2.isEmpty()) {
                    qc6.a(gy5Var);
                }
                bv7Var.g.c();
                return bv7.b(bv7Var, qc6Var2, new jv5(new eu5(2, qc6Var2.b, true), gy5VarO2, qn5Var));
        }
    }
}
