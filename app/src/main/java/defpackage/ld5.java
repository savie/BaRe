package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ld5 extends ol1 implements x74 {
    public final s74 e;

    public ld5(yr7 yr7Var, s74 s74Var) {
        super(yr7Var, 5);
        this.e = s74Var;
    }

    @Override // defpackage.x74
    public final void a(rd5 rd5Var, Object obj, Iterable iterable) {
        rd5Var.c = true;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.e.b(it.next(), obj, rd5Var);
        }
    }
}
