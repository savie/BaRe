package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ec {
    public static final ib a = ib.k(JWKParameterNames.OCT_KEY_VALUE, "x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE);

    public static zq8 a(cn4 cn4Var, e25 e25Var) {
        ArrayList arrayList = new ArrayList();
        if (cn4Var.v() == 1) {
            cn4Var.a();
            while (cn4Var.m()) {
                cn4 cn4Var2 = cn4Var;
                e25 e25Var2 = e25Var;
                arrayList.add(new iy5(e25Var2, yo4.b(cn4Var2, e25Var2, mi8.c(), us2.c, cn4Var.v() == 3, false)));
                cn4Var = cn4Var2;
                e25Var = e25Var2;
            }
            cn4Var.g();
            zo4.b(arrayList);
        } else {
            arrayList.add(new wo4(gn4.b(cn4Var, mi8.c())));
        }
        return new zq8(arrayList, 3);
    }

    public static oc b(cn4 cn4Var, e25 e25Var) {
        cn4Var.b();
        zq8 zq8VarA = null;
        bc bcVarO = null;
        boolean z = false;
        bc bcVarO2 = null;
        while (cn4Var.v() != 4) {
            int iA = cn4Var.A(a);
            if (iA == 0) {
                zq8VarA = a(cn4Var, e25Var);
            } else if (iA != 1) {
                if (iA != 2) {
                    cn4Var.D();
                    cn4Var.G();
                } else if (cn4Var.v() == 6) {
                    cn4Var.G();
                    z = true;
                } else {
                    bcVarO = sz8.O(cn4Var, e25Var, true);
                }
            } else if (cn4Var.v() == 6) {
                cn4Var.G();
                z = true;
            } else {
                bcVarO2 = sz8.O(cn4Var, e25Var, true);
            }
        }
        cn4Var.h();
        if (z) {
            e25Var.a("Lottie doesn't support expressions.");
        }
        return zq8VarA != null ? zq8VarA : new ic(bcVarO2, bcVarO);
    }
}
