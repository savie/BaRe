package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l65 {
    public static k65 a(Object obj, Object obj2) {
        k65 k65VarB = (k65) obj;
        k65 k65Var = (k65) obj2;
        if (!k65Var.isEmpty()) {
            if (!k65VarB.a) {
                k65VarB = k65VarB.b();
            }
            k65VarB.a();
            if (!k65Var.isEmpty()) {
                k65VarB.putAll(k65Var);
            }
        }
        return k65VarB;
    }
}
