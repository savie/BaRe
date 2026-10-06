package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ll1 implements f77 {
    public final /* synthetic */ Iterable a;

    public ll1(Iterable iterable) {
        this.a = iterable;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return this.a.iterator();
    }
}
