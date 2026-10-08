package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class he2 {
    public static final qg2 a;

    static {
        String property;
        r24 r24Var;
        qg2 qg2Var;
        int i = pv7.a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null ? Boolean.parseBoolean(property) : false) {
            rf2 rf2Var = cn2.a;
            r24Var = i55.a;
            r24 r24Var2 = r24Var.e;
            if (r24Var == null) {
                qg2Var = r24Var;
                qg2Var = ge2.t;
            }
        } else {
            qg2Var = ge2.t;
        }
        qg2Var = r24Var;
        a = qg2Var;
    }
}
