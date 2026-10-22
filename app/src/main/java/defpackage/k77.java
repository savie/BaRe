package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k77 implements Iterable, bo4 {
    public final /* synthetic */ zh2 a;

    public k77(zh2 zh2Var) {
        this.a = zh2Var;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new yh2(this.a);
    }
}
