package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ui9 {
    public static final si9 a(Object obj, Object obj2) {
        si9 si9Var = (si9) obj;
        si9 si9Var2 = (si9) obj2;
        if (!si9Var2.isEmpty()) {
            if (!si9Var.a) {
                if (si9Var.isEmpty()) {
                    si9Var = new si9();
                } else {
                    si9 si9Var3 = new si9(si9Var);
                    si9Var3.a = true;
                    si9Var = si9Var3;
                }
            }
            si9Var.a();
            if (!si9Var2.isEmpty()) {
                si9Var.putAll(si9Var2);
            }
        }
        return si9Var;
    }
}
