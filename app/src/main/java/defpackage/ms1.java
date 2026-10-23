package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms1 extends p35 {
    public final /* synthetic */ ns1 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms1(ns1 ns1Var) {
        super(25);
        this.h = ns1Var;
    }

    @Override // defpackage.p35
    public final Object c(Object obj) {
        String str = (String) obj;
        str.getClass();
        return this.h.a.p0(str);
    }

    @Override // defpackage.p35
    public final void d(Object obj, Object obj2, Object obj3) throws Exception {
        ((String) obj).getClass();
        ((nw6) obj2).close();
    }
}
