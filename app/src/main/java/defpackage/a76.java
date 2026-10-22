package defpackage;

import java.util.AbstractMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a76 extends AbstractMap.SimpleEntry {
    public final /* synthetic */ b76 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a76(b76 b76Var, u66 u66Var) {
        super(u66Var.a, u66Var.a());
        this.a = b76Var;
    }

    @Override // java.util.AbstractMap.SimpleEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.a.g(getKey(), obj, false);
        return super.setValue(obj);
    }
}
