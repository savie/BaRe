package defpackage;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v94 extends xg7 {
    @Override // defpackage.ix7
    public final Collection b() {
        return Collections.singleton("img");
    }

    @Override // defpackage.xg7
    public final Object d(j75 j75Var, di4 di4Var, q64 q64Var) {
        sj7 sj7VarA;
        ca4 ca4VarT;
        ca4 ca4VarT2;
        String str = (String) q64Var.a().get("src");
        da4 da4Var = null;
        if (TextUtils.isEmpty(str) || (sj7VarA = ((ky3) j75Var.k).a(s94.class)) == null) {
            return null;
        }
        ((hx0) j75Var.e).getClass();
        Map mapA = q64Var.a();
        String str2 = (String) mapA.get("style");
        if (!TextUtils.isEmpty(str2)) {
            n62 n62Var = new n62(new o62(str2));
            ca4VarT = null;
            ca4VarT2 = null;
            while (n62Var.hasNext()) {
                h80 h80Var = (h80) n62Var.next();
                String str3 = (String) h80Var.b;
                if ("width".equals(str3)) {
                    ca4VarT = lk.t((String) h80Var.c);
                } else if ("height".equals(str3)) {
                    ca4VarT2 = lk.t((String) h80Var.c);
                }
                if (ca4VarT != null && ca4VarT2 != null) {
                    break;
                }
            }
        } else {
            ca4VarT = null;
            ca4VarT2 = null;
        }
        if (ca4VarT == null || ca4VarT2 == null) {
            if (ca4VarT == null) {
                ca4VarT = lk.t((String) mapA.get("width"));
            }
            if (ca4VarT2 == null) {
                ca4VarT2 = lk.t((String) mapA.get("height"));
            }
            if (ca4VarT != null || ca4VarT2 != null) {
                da4Var = new da4(ca4VarT, ca4VarT2);
            }
        } else {
            da4Var = new da4(ca4VarT, ca4VarT2);
        }
        xx3.b.b(di4Var, str);
        xx3.d.b(di4Var, da4Var);
        xx3.c.b(di4Var, Boolean.FALSE);
        return sj7VarA.a(j75Var, di4Var);
    }
}
