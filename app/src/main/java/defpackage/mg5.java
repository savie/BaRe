package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mg5 implements Iterable {
    public final /* synthetic */ ay4 a;
    public final /* synthetic */ pg5 b;

    public mg5(pg5 pg5Var, ay4 ay4Var) {
        this.b = pg5Var;
        this.a = ay4Var;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new lg5(this);
    }
}
