package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nc {
    public static final ib a = ib.k("a", JWKParameterNames.RSA_FIRST_PRIME_FACTOR, "s", "rz", JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR, "o", "so", "eo", "sk", "sa");
    public static final ib b = ib.k(JWKParameterNames.OCT_KEY_VALUE);

    /* JADX WARN: Code duplicated, block: B:22:0x006a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0087  */
    /* JADX WARN: Code duplicated, block: B:25:0x0095  */
    /* JADX WARN: Code duplicated, block: B:75:0x017a  */
    public static mc a(cn4 cn4Var, e25 e25Var) throws l, EOFException {
        gc gcVar;
        bc bcVarO;
        List list;
        bc bcVar;
        bc bcVar2;
        Float fValueOf = Float.valueOf(0.0f);
        boolean z = cn4Var.v() == 3;
        if (z) {
            cn4Var.b();
        }
        bc bcVar3 = null;
        bc bcVarO2 = null;
        zq8 zq8VarA = null;
        oc ocVarB = null;
        gc gcVar2 = null;
        bc bcVarO3 = null;
        dc dcVarP = null;
        bc bcVarO4 = null;
        bc bcVarO5 = null;
        while (cn4Var.m()) {
            switch (cn4Var.A(a)) {
                case 0:
                    cn4Var.b();
                    while (cn4Var.m()) {
                        if (cn4Var.A(b) != 0) {
                            cn4Var.D();
                            cn4Var.G();
                        } else {
                            zq8VarA = ec.a(cn4Var, e25Var);
                        }
                    }
                    cn4Var.h();
                    bcVarO2 = bcVarO2;
                    break;
                case 1:
                    ocVarB = ec.b(cn4Var, e25Var);
                    break;
                case 2:
                    gcVar2 = new gc(zo4.a(cn4Var, e25Var, 1.0f, us2.e, false), 6);
                    bcVarO2 = bcVarO2;
                    break;
                case 3:
                    e25Var.a("Lottie doesn't support 3D layers.");
                    bcVarO = sz8.O(cn4Var, e25Var, false);
                    list = (List) bcVarO.b;
                    if (list.isEmpty()) {
                        bcVar = bcVarO;
                        bcVar2 = bcVarO2;
                        list.add(new wo4(e25Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(e25Var.l)));
                    } else {
                        bcVar = bcVarO;
                        bcVar2 = bcVarO2;
                        if (((wo4) list.get(0)).b == null) {
                            list.set(0, new wo4(e25Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(e25Var.l)));
                        }
                    }
                    bcVarO2 = bcVar2;
                    bcVar3 = bcVar;
                    break;
                case 4:
                    bcVarO = sz8.O(cn4Var, e25Var, false);
                    list = (List) bcVarO.b;
                    if (list.isEmpty()) {
                        bcVar = bcVarO;
                        bcVar2 = bcVarO2;
                        list.add(new wo4(e25Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(e25Var.l)));
                    } else {
                        bcVar = bcVarO;
                        bcVar2 = bcVarO2;
                        if (((wo4) list.get(0)).b == null) {
                            list.set(0, new wo4(e25Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(e25Var.l)));
                        }
                    }
                    bcVarO2 = bcVar2;
                    bcVar3 = bcVar;
                    break;
                case 5:
                    dcVarP = sz8.P(cn4Var, e25Var);
                    break;
                case 6:
                    bcVarO4 = sz8.O(cn4Var, e25Var, false);
                    break;
                case 7:
                    bcVarO5 = sz8.O(cn4Var, e25Var, false);
                    break;
                case 8:
                    bcVarO3 = sz8.O(cn4Var, e25Var, false);
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    bcVarO2 = sz8.O(cn4Var, e25Var, false);
                    break;
                default:
                    cn4Var.D();
                    cn4Var.G();
                    break;
            }
        }
        bc bcVar4 = bcVarO2;
        if (z) {
            cn4Var.h();
        }
        zq8 zq8Var = (zq8VarA == null || (zq8VarA.q() && ((PointF) ((wo4) ((ArrayList) zq8VarA.b).get(0)).b).equals(0.0f, 0.0f))) ? null : zq8VarA;
        if (ocVarB == null || (!(ocVarB instanceof ic) && ocVarB.q() && ((PointF) ((wo4) ocVarB.p().get(0)).b).equals(0.0f, 0.0f))) {
            ocVarB = null;
        }
        bc bcVar5 = (bcVar3 == null || (bcVar3.q() && ((Float) ((wo4) ((List) bcVar3.b).get(0)).b).floatValue() == 0.0f)) ? null : bcVar3;
        if (gcVar2 == null) {
            gcVar = null;
        } else {
            if (gcVar2.q()) {
                p27 p27Var = (p27) ((wo4) ((List) gcVar2.b).get(0)).b;
                if (p27Var.a == 1.0f && p27Var.b == 1.0f) {
                    gcVar = null;
                }
            }
            gcVar = gcVar2;
        }
        return new mc(zq8Var, ocVarB, gcVar, bcVar5, dcVarP, bcVarO4, bcVarO5, (bcVarO3 == null || (bcVarO3.q() && ((Float) ((wo4) ((List) bcVarO3.b).get(0)).b).floatValue() == 0.0f)) ? null : bcVarO3, (bcVar4 == null || (bcVar4.q() && ((Float) ((wo4) ((List) bcVar4.b).get(0)).b).floatValue() == 0.0f)) ? null : bcVar4);
    }
}
