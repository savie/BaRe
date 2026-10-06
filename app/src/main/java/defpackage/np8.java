package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class np8 implements gk6 {
    public final /* synthetic */ pp8 a;

    public np8(pp8 pp8Var) {
        this.a = pp8Var;
    }

    @Override // defpackage.gk6
    public final void a(ik6 ik6Var) {
        ex6 ex6Var = this.a.s;
        switch (mp8.a[((hk6) ik6Var.d).ordinal()]) {
            case 1:
                ex6Var.k(hp8.a);
                break;
            case 2:
                ex6Var.k(new ip8(new ArrayList(el1.p1(el1.n1((List) ik6Var.c, new xg(11)), 50))));
                break;
            case 3:
                ex6Var.k(gp8.a);
                break;
            case 4:
            case 5:
            case 6:
                break;
            default:
                q.j();
                break;
        }
    }
}
