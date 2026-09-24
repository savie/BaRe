package defpackage;

import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rn5 {
    public static final fa6 a;

    static {
        fa6 ty3Var;
        try {
            try {
                ty3Var = new lk();
            } catch (Throwable unused) {
                ty3Var = new tr9(13);
            }
        } catch (Throwable unused2) {
            ty3Var = new ty3(4);
        }
        a = ty3Var;
    }

    public static lc4 a(Reader reader) {
        gd gdVar = new gd(a.i(reader));
        if (!((pc4) gdVar.d).isEmpty()) {
            return null;
        }
        lc4 lc4VarL = gdVar.l(null);
        if (lc4VarL != null) {
            return lc4VarL;
        }
        throw new sn5("Document has no root element");
    }
}
