package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bd2 {
    public static final cd2 a;

    static {
        for (lx2 lx2Var : lx2.values()) {
            lx2Var.getClass();
        }
        int i = 0;
        for (dl4 dl4Var : dl4.values()) {
            if (dl4Var.a) {
                i |= dl4Var.b;
            }
        }
        a = new cd2(0, i);
    }
}
