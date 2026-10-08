package defpackage;

import java.util.AbstractMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zb9 extends ib9 {
    public final /* synthetic */ ac9 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zb9(ac9 ac9Var) {
        super(3);
        this.k = ac9Var;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        dc9 dc9Var = this.k.n;
        return new AbstractMap.SimpleImmutableEntry(dc9Var.c.q.get(i), dc9Var.d.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.k.n.d.size();
    }
}
