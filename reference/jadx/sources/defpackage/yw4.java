package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yw4 {
    public static xd4 a(Object obj, long j) {
        xd4 xd4Var = (xd4) ef8.c.h(obj, j);
        if (((t96) xd4Var).a) {
            return xd4Var;
        }
        t96 t96Var = (t96) xd4Var;
        int i = t96Var.c;
        t96 t96VarE = t96Var.e(i == 0 ? 10 : i * 2);
        ef8.o(obj, j, t96VarE);
        return t96VarE;
    }
}
