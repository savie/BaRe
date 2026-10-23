package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pl7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) {
        return Short.valueOf((short) l73.z(bn4Var, "a short", -32768, 32767));
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        dn4Var.v(((Short) obj).intValue());
    }

    public final String toString() {
        return "JsonAdapter(Short)";
    }
}
