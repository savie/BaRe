package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nb8 implements gu1, ul0 {
    public final boolean a;
    public final ArrayList b = new ArrayList();
    public final int c;
    public final xh3 d;
    public final xh3 e;
    public final xh3 f;

    public nb8(am0 am0Var, rc7 rc7Var) {
        this.a = rc7Var.e;
        this.c = rc7Var.a;
        yl0 yl0VarN = rc7Var.b.n();
        this.d = (xh3) yl0VarN;
        yl0 yl0VarN2 = rc7Var.c.n();
        this.e = (xh3) yl0VarN2;
        yl0 yl0VarN3 = rc7Var.d.n();
        this.f = (xh3) yl0VarN3;
        am0Var.g(yl0VarN);
        am0Var.g(yl0VarN2);
        am0Var.g(yl0VarN3);
        yl0VarN.a(this);
        yl0VarN2.a(this);
        yl0VarN3.a(this);
    }

    @Override // defpackage.ul0
    public final void b() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return;
            }
            ((ul0) arrayList.get(i)).b();
            i++;
        }
    }

    public final void d(ul0 ul0Var) {
        this.b.add(ul0Var);
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
    }
}
