package defpackage;

import android.graphics.Color;
import android.view.animation.Interpolator;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ks4 {
    public static final ib a = ib.k("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");
    public static final ib b = ib.k("d", "a");
    public static final ib c = ib.k("ty", "nm");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0063. Please report as an issue. */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v36 */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v44 */
    /* JADX WARN: Type inference failed for: r13v45 */
    /* JADX WARN: Type inference failed for: r13v48 */
    /* JADX WARN: Type inference failed for: r13v49 */
    /* JADX WARN: Type inference failed for: r13v52 */
    /* JADX WARN: Type inference failed for: r13v53 */
    /* JADX WARN: Type inference failed for: r13v54 */
    /* JADX WARN: Type inference failed for: r13v59 */
    public static js4 a(cn4 cn4Var, e25 e25Var) {
        String str;
        String str2;
        boolean z;
        String str3;
        int i;
        int i2;
        bc bcVar;
        bc bcVar2;
        bc bcVar3;
        bc bcVar4;
        ?? r13;
        Float fValueOf = Float.valueOf(1.0f);
        Float fValueOf2 = Float.valueOf(0.0f);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        cn4Var.b();
        boolean z2 = false;
        boolean z3 = true;
        String strU = "UNSET";
        float fQ = 1.0f;
        int i3 = 0;
        int iC = 0;
        int iC2 = 0;
        int color = 0;
        int iC3 = 0;
        int iC4 = 0;
        boolean zN = false;
        int i4 = 1;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        long jR = 0;
        long jR2 = -1;
        String strU2 = null;
        jc jcVar = null;
        kc kcVar = null;
        String strU3 = null;
        z28 z28Var = null;
        nz4 nz4Var = null;
        mc mcVarA = null;
        bc bcVarO = null;
        while (cn4Var.m()) {
            Object obj = null;
            int i5 = 7;
            jcVar = jcVar;
            switch (cn4Var.A(a)) {
                case 0:
                    strU = cn4Var.u();
                    jcVar = jcVar;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 1:
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    jR = cn4Var.r();
                    jcVar = jcVar;
                    strU2 = strU2;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 2:
                    strU3 = cn4Var.u();
                    jcVar = jcVar;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 3:
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    z = z3;
                    str3 = strU2;
                    int iR = cn4Var.r();
                    if (iR < 6) {
                        i3 = dj7.C(7)[iR];
                        strU2 = str3;
                    } else {
                        strU2 = str3;
                        i3 = 7;
                    }
                    z3 = z;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 4:
                    jR2 = cn4Var.r();
                    jcVar = jcVar;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 5:
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    z = z3;
                    iC = (int) (mi8.c() * cn4Var.r());
                    z3 = z;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 6:
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    z = z3;
                    iC2 = (int) (mi8.c() * cn4Var.r());
                    z3 = z;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 7:
                    color = Color.parseColor(cn4Var.u());
                    jcVar = jcVar;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 8:
                    mcVarA = nc.a(cn4Var, e25Var);
                    jcVar = jcVar;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    str3 = strU2;
                    int iR2 = cn4Var.r();
                    if (iR2 < dj7.C(6).length) {
                        i4 = dj7.C(6)[iR2];
                        int iA = dj7.A(i4);
                        if (iA == 3) {
                            e25Var.a("Unsupported matte type: Luma");
                        } else if (iA == 4) {
                            e25Var.a("Unsupported matte type: Luma Inverted");
                        }
                        z = true;
                        e25Var.o++;
                        strU2 = str3;
                        z3 = z;
                        z2 = z2;
                        fValueOf2 = fValueOf2;
                    } else {
                        e25Var.a("Unsupported matte type: " + iR2);
                        strU2 = str3;
                        jcVar = jcVar;
                        z3 = true;
                        z2 = z2;
                        fValueOf2 = fValueOf2;
                    }
                    break;
                case 10:
                    str3 = strU2;
                    cn4Var.a();
                    while (cn4Var.m()) {
                        cn4Var.b();
                        hc hcVar = null;
                        dc dcVarP = null;
                        boolean zN2 = false;
                        int i6 = 0;
                        while (cn4Var.m()) {
                            String strY = cn4Var.Y();
                            strY.getClass();
                            switch (strY) {
                                case "o":
                                    fValueOf2 = fValueOf2;
                                    dcVarP = sz8.P(cn4Var, e25Var);
                                    break;
                                case "pt":
                                    fValueOf2 = fValueOf2;
                                    hcVar = new hc(zo4.a(cn4Var, e25Var, mi8.c(), yb7.a, false), 6);
                                    break;
                                case "inv":
                                    zN2 = cn4Var.n();
                                    break;
                                case "mode":
                                    String strU4 = cn4Var.u();
                                    strU4.getClass();
                                    switch (strU4) {
                                        case "a":
                                            i = 1;
                                            break;
                                        case "i":
                                            e25Var.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            i = 3;
                                            break;
                                        case "n":
                                            i = 4;
                                            break;
                                        case "s":
                                            i = 2;
                                            break;
                                        default:
                                            m15.b("Unknown mask mode " + strY + ". Defaulting to Add.");
                                            i = 1;
                                            break;
                                    }
                                    i6 = i;
                                    break;
                                default:
                                    cn4Var.G();
                                    break;
                            }
                            fValueOf2 = fValueOf2;
                        }
                        cn4Var.h();
                        arrayList.add(new q75(i6, hcVar, dcVarP, zN2));
                        fValueOf2 = fValueOf2;
                    }
                    fValueOf2 = fValueOf2;
                    z2 = false;
                    e25Var.o += arrayList.size();
                    cn4Var.g();
                    strU2 = str3;
                    jcVar = jcVar;
                    z3 = true;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                    str3 = strU2;
                    cn4Var.a();
                    while (cn4Var.m()) {
                        tu1 tu1VarA = uu1.a(cn4Var, e25Var);
                        if (tu1VarA != null) {
                            arrayList2.add(tu1VarA);
                        }
                    }
                    cn4Var.g();
                    fValueOf2 = fValueOf2;
                    z2 = false;
                    strU2 = str3;
                    jcVar = jcVar;
                    z3 = true;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
                case 12:
                    cn4Var.b();
                    while (cn4Var.m()) {
                        int iA2 = cn4Var.A(b);
                        if (iA2 == 0) {
                            strU2 = strU2;
                            jcVar = new jc(zo4.a(cn4Var, e25Var, 1.0f, sn2.a, false), 6);
                        } else if (iA2 != 1) {
                            cn4Var.D();
                            cn4Var.G();
                        } else {
                            cn4Var.a();
                            if (cn4Var.m()) {
                                ib ibVar = lc.a;
                                cn4Var.b();
                                kc kcVar2 = null;
                                while (cn4Var.m()) {
                                    if (cn4Var.A(lc.a) != 0) {
                                        cn4Var.D();
                                        cn4Var.G();
                                    } else {
                                        cn4Var.b();
                                        ac acVarN = null;
                                        ac acVarN2 = null;
                                        bc bcVarO2 = null;
                                        bc bcVarO3 = null;
                                        while (cn4Var.m()) {
                                            int iA3 = cn4Var.A(lc.b);
                                            if (iA3 == 0) {
                                                acVarN = sz8.N(cn4Var, e25Var);
                                            } else if (iA3 == 1) {
                                                acVarN2 = sz8.N(cn4Var, e25Var);
                                            } else if (iA3 == 2) {
                                                bcVarO2 = sz8.O(cn4Var, e25Var, true);
                                            } else if (iA3 != 3) {
                                                cn4Var.D();
                                                cn4Var.G();
                                            } else {
                                                bcVarO3 = sz8.O(cn4Var, e25Var, true);
                                            }
                                        }
                                        cn4Var.h();
                                        kcVar2 = new kc(acVarN, acVarN2, bcVarO2, bcVarO3, 0);
                                    }
                                }
                                cn4Var.h();
                                kcVar = kcVar2 == null ? new kc(obj, obj, obj, obj, 0) : kcVar2;
                            }
                            while (cn4Var.m()) {
                                cn4Var.G();
                            }
                            cn4Var.g();
                        }
                        strU2 = strU2;
                    }
                    cn4Var.h();
                    jcVar = jcVar;
                    z2 = false;
                    z3 = true;
                    break;
                case 13:
                    cn4Var.a();
                    ArrayList arrayList3 = new ArrayList();
                    while (cn4Var.m()) {
                        cn4Var.b();
                        while (cn4Var.m()) {
                            int iA4 = cn4Var.A(c);
                            if (iA4 == 0) {
                                int iR3 = cn4Var.r();
                                if (iR3 == 29) {
                                    ib ibVar2 = mt0.a;
                                    z28Var = null;
                                    while (cn4Var.m()) {
                                        if (cn4Var.A(mt0.a) != 0) {
                                            cn4Var.D();
                                            cn4Var.G();
                                        } else {
                                            cn4Var.a();
                                            while (cn4Var.m()) {
                                                cn4Var.b();
                                                boolean z4 = z2;
                                                z28 z28Var2 = null;
                                                while (cn4Var.m()) {
                                                    int iA5 = cn4Var.A(mt0.b);
                                                    if (iA5 == 0) {
                                                        z4 = cn4Var.r() == 0 ? z3 : false;
                                                    } else if (iA5 != z3) {
                                                        cn4Var.D();
                                                        cn4Var.G();
                                                    } else if (z4) {
                                                        z28Var2 = new z28(sz8.O(cn4Var, e25Var, z3), i5);
                                                    } else {
                                                        cn4Var.G();
                                                    }
                                                }
                                                cn4Var.h();
                                                if (z28Var2 != null) {
                                                    z28Var = z28Var2;
                                                }
                                                z2 = false;
                                            }
                                            cn4Var.g();
                                            z2 = false;
                                        }
                                    }
                                } else {
                                    if (iR3 == 25) {
                                        fq2 fq2Var = new fq2();
                                        while (cn4Var.m()) {
                                            if (cn4Var.A(fq2.f) != 0) {
                                                cn4Var.D();
                                                cn4Var.G();
                                            } else {
                                                cn4Var.a();
                                                while (cn4Var.m()) {
                                                    cn4Var.b();
                                                    String strU5 = "";
                                                    while (cn4Var.m()) {
                                                        int iA6 = cn4Var.A(fq2.g);
                                                        if (iA6 != 0) {
                                                            if (iA6 != z3) {
                                                                cn4Var.D();
                                                                cn4Var.G();
                                                            } else {
                                                                strU5.getClass();
                                                                switch (strU5.hashCode()) {
                                                                    case 353103893:
                                                                        r13 = !strU5.equals("Distance") ? -1 : 0;
                                                                        break;
                                                                    case 397447147:
                                                                        r13 = !strU5.equals("Opacity") ? -1 : z3;
                                                                        break;
                                                                    case 1041377119:
                                                                        r13 = !strU5.equals("Direction") ? -1 : 2;
                                                                        break;
                                                                    case 1379387491:
                                                                        r13 = !strU5.equals("Shadow Color") ? -1 : 3;
                                                                        break;
                                                                    case 1383710113:
                                                                        r13 = !strU5.equals("Softness") ? -1 : 4;
                                                                        break;
                                                                    default:
                                                                        r13 = -1;
                                                                        break;
                                                                }
                                                                switch (r13) {
                                                                    case 0:
                                                                        fq2Var.d = sz8.O(cn4Var, e25Var, z3);
                                                                        break;
                                                                    case 1:
                                                                        fq2Var.b = sz8.O(cn4Var, e25Var, false);
                                                                        break;
                                                                    case 2:
                                                                        fq2Var.c = sz8.O(cn4Var, e25Var, false);
                                                                        break;
                                                                    case 3:
                                                                        fq2Var.a = sz8.N(cn4Var, e25Var);
                                                                        break;
                                                                    case 4:
                                                                        fq2Var.e = sz8.O(cn4Var, e25Var, z3);
                                                                        break;
                                                                    default:
                                                                        cn4Var.G();
                                                                        break;
                                                                }
                                                                i5 = i5;
                                                            }
                                                            i5 = i5;
                                                        } else {
                                                            strU5 = cn4Var.u();
                                                        }
                                                    }
                                                    cn4Var.h();
                                                }
                                                cn4Var.g();
                                            }
                                        }
                                        i2 = i5;
                                        ac acVar = fq2Var.a;
                                        nz4Var = (acVar == null || (bcVar = fq2Var.b) == null || (bcVar2 = fq2Var.c) == null || (bcVar3 = fq2Var.d) == null || (bcVar4 = fq2Var.e) == null) ? null : new nz4(acVar, bcVar, bcVar2, bcVar3, bcVar4, 3);
                                    }
                                    i5 = i2;
                                    z2 = false;
                                    z3 = true;
                                }
                            } else if (iA4 != z3) {
                                cn4Var.D();
                                cn4Var.G();
                            } else {
                                arrayList3.add(cn4Var.u());
                            }
                            i2 = i5;
                            i5 = i2;
                            z2 = false;
                            z3 = true;
                        }
                        cn4Var.h();
                        z2 = false;
                        z3 = true;
                    }
                    cn4Var.g();
                    e25Var.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    jcVar = jcVar;
                    z2 = false;
                    z3 = true;
                    break;
                case 14:
                    fQ = (float) cn4Var.q();
                    jcVar = jcVar;
                    break;
                case 15:
                    fQ4 = (float) cn4Var.q();
                    jcVar = jcVar;
                    break;
                case Argon2.V10 /* 16 */:
                    iC3 = (int) (mi8.c() * cn4Var.r());
                    jcVar = jcVar;
                    break;
                case 17:
                    iC4 = (int) (mi8.c() * cn4Var.r());
                    jcVar = jcVar;
                    break;
                case 18:
                    fQ2 = (float) cn4Var.q();
                    jcVar = jcVar;
                    break;
                case Argon2.V13 /* 19 */:
                    fQ3 = (float) cn4Var.q();
                    jcVar = jcVar;
                    break;
                case 20:
                    bcVarO = sz8.O(cn4Var, e25Var, z2);
                    jcVar = jcVar;
                    break;
                case 21:
                    strU2 = cn4Var.u();
                    jcVar = jcVar;
                    break;
                case 22:
                    zN = cn4Var.n();
                    jcVar = jcVar;
                    break;
                default:
                    cn4Var.D();
                    cn4Var.G();
                    fValueOf2 = fValueOf2;
                    z2 = z2;
                    str3 = strU2;
                    strU2 = str3;
                    jcVar = jcVar;
                    z3 = true;
                    z2 = z2;
                    fValueOf2 = fValueOf2;
                    break;
            }
        }
        Float f = fValueOf2;
        String str4 = strU2;
        jc jcVar2 = jcVar;
        cn4Var.h();
        ArrayList arrayList4 = new ArrayList();
        if (fQ2 > 0.0f) {
            str = str4;
            str2 = strU;
            arrayList4.add(new wo4(e25Var, f, f, (Interpolator) null, 0.0f, Float.valueOf(fQ2)));
        } else {
            str = str4;
            str2 = strU;
        }
        if (fQ3 <= 0.0f) {
            fQ3 = e25Var.l;
        }
        arrayList4.add(new wo4(e25Var, fValueOf, fValueOf, (Interpolator) null, fQ2, Float.valueOf(fQ3)));
        arrayList4.add(new wo4(e25Var, f, f, (Interpolator) null, fQ3, Float.valueOf(Float.MAX_VALUE)));
        if (str2.endsWith(".ai") || "ai".equals(str)) {
            e25Var.a("Convert your Illustrator layers to shape layers.");
        }
        return new js4(arrayList2, e25Var, str2, jR, i3, jR2, strU3, arrayList, mcVarA, iC, iC2, color, fQ, fQ4, iC3, iC4, jcVar2, kcVar, arrayList4, i4, bcVarO, zN, z28Var, nz4Var);
    }
}
