package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ud8 implements li3 {
    public final ox1 a;
    public final Object b;
    public final hh4 c;

    public ud8(li3 li3Var, ox1 ox1Var) {
        this.a = ox1Var;
        this.b = pe4.E(ox1Var);
        this.c = new hh4(li3Var, null);
    }

    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) throws Throwable {
        Object objO = ji8.O(this.a, obj, this.b, this.c, jv1Var);
        return objO == yx1.a ? objO : be8.a;
    }
}
