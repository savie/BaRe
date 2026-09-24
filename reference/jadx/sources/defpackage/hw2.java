package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hw2 {
    public static iw2 a(int i) {
        Object next;
        z3 z3Var = (z3) iw2.getEntries();
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        do {
            if (!w3Var.hasNext()) {
                next = null;
                break;
            }
            next = w3Var.next();
        } while (((iw2) next).getId() != i);
        iw2 iw2Var = (iw2) next;
        if (iw2Var != null) {
            return iw2Var;
        }
        throw new SecurityException(fz5.j(i, "Unknown type ID for encrypted pref value: "));
    }
}
