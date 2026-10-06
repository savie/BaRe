package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jg5 implements Iterable {
    public final /* synthetic */ ij6 a;
    public final /* synthetic */ pg5 b;

    public jg5(pg5 pg5Var, ij6 ij6Var) {
        this.b = pg5Var;
        this.a = ij6Var;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ig5(this);
    }
}
