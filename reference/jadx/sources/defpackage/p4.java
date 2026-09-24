package defpackage;

import java.util.Collection;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p4 extends m4 implements Set {
    public final /* synthetic */ y24 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p4(y24 y24Var, Object obj, Set set) {
        super(y24Var, obj, set, null);
        this.f = y24Var;
    }

    @Override // defpackage.m4, java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zK = ly8.K((Set) this.b, collection);
        if (zK) {
            this.f.e += this.b.size() - size;
            e();
        }
        return zK;
    }
}
