package defpackage;

import android.graphics.Path;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uu1 {
    public static final ib a = ib.k("ty", "d");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:406:0x070f A[LOOP:1: B:404:0x0709->B:406:0x070f, LOOP_END] */
    public static tu1 a(cn4 cn4Var, e25 e25Var) throws l, EOFException {
        String strU;
        tu1 i71Var;
        tu1 zb7Var;
        tu1 h14Var;
        tu1 bc7Var;
        int i;
        cn4Var.b();
        int iR = 2;
        while (true) {
            if (!cn4Var.m()) {
                strU = null;
                break;
            }
            int iA = cn4Var.A(a);
            if (iA == 0) {
                strU = cn4Var.u();
                break;
            }
            if (iA != 1) {
                cn4Var.D();
                cn4Var.G();
            } else {
                iR = cn4Var.r();
            }
        }
        if (strU == null) {
            return null;
        }
        boolean zN = false;
        int i2 = 0;
        int i3 = 3;
        switch (strU) {
            case "el":
                ib ibVar = j71.a;
                boolean z = iR == 3;
                boolean zN2 = false;
                String strU2 = null;
                oc ocVarB = null;
                fc fcVarQ = null;
                while (cn4Var.m()) {
                    int iA2 = cn4Var.A(j71.a);
                    if (iA2 == 0) {
                        strU2 = cn4Var.u();
                    } else if (iA2 == 1) {
                        ocVarB = ec.b(cn4Var, e25Var);
                    } else if (iA2 == 2) {
                        fcVarQ = sz8.Q(cn4Var, e25Var);
                    } else if (iA2 == 3) {
                        zN2 = cn4Var.n();
                    } else if (iA2 != 4) {
                        cn4Var.D();
                        cn4Var.G();
                    } else {
                        z = cn4Var.r() == 3;
                    }
                }
                i71Var = new i71(strU2, ocVarB, fcVarQ, z, zN2);
                h14Var = i71Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "fl":
                ib ibVar2 = ac7.a;
                int iR2 = 1;
                boolean zN3 = false;
                boolean zN4 = false;
                dc dcVar = null;
                String strU3 = null;
                ac acVarN = null;
                while (cn4Var.m()) {
                    int iA3 = cn4Var.A(ac7.a);
                    if (iA3 == 0) {
                        strU3 = cn4Var.u();
                    } else if (iA3 == 1) {
                        acVarN = sz8.N(cn4Var, e25Var);
                    } else if (iA3 == 2) {
                        dcVar = sz8.P(cn4Var, e25Var);
                    } else if (iA3 == 3) {
                        zN3 = cn4Var.n();
                    } else if (iA3 == 4) {
                        iR2 = cn4Var.r();
                    } else if (iA3 != 5) {
                        cn4Var.D();
                        cn4Var.G();
                    } else {
                        zN4 = cn4Var.n();
                    }
                }
                if (dcVar == null) {
                    dcVar = new dc(Collections.singletonList(new wo4(100)), 6);
                }
                zb7Var = new zb7(strU3, zN3, iR2 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, acVarN, dcVar, zN4);
                h14Var = zb7Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "gf":
                ib ibVar3 = j14.a;
                Path.FillType fillType = Path.FillType.WINDING;
                int i4 = 0;
                boolean zN5 = false;
                dc dcVar2 = null;
                String strU4 = null;
                cc ccVar = null;
                fc fcVarQ2 = null;
                fc fcVarQ3 = null;
                while (cn4Var.m()) {
                    switch (cn4Var.A(j14.a)) {
                        case 0:
                            strU4 = cn4Var.u();
                            break;
                        case 1:
                            cn4Var.b();
                            int iR3 = -1;
                            while (cn4Var.m()) {
                                int iA4 = cn4Var.A(j14.b);
                                if (iA4 == 0) {
                                    iR3 = cn4Var.r();
                                } else if (iA4 != 1) {
                                    cn4Var.D();
                                    cn4Var.G();
                                } else {
                                    g14 g14Var = new g14();
                                    g14Var.a = iR3;
                                    ccVar = new cc(zo4.a(cn4Var, e25Var, 1.0f, g14Var, false), 6);
                                }
                            }
                            cn4Var.h();
                            break;
                        case 2:
                            dcVar2 = sz8.P(cn4Var, e25Var);
                            break;
                        case 3:
                            i4 = cn4Var.r() != 1 ? 2 : 1;
                            break;
                        case 4:
                            fcVarQ2 = sz8.Q(cn4Var, e25Var);
                            break;
                        case 5:
                            fcVarQ3 = sz8.Q(cn4Var, e25Var);
                            break;
                        case 6:
                            fillType = cn4Var.r() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 7:
                            zN5 = cn4Var.n();
                            break;
                        default:
                            cn4Var.D();
                            cn4Var.G();
                            break;
                    }
                }
                if (dcVar2 == null) {
                    dcVar2 = new dc(Collections.singletonList(new wo4(100)), 6);
                }
                h14Var = new h14(strU4, i4, fillType, ccVar, dcVar2, fcVarQ2, fcVarQ3, zN5);
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "gr":
                ib ibVar4 = cc7.a;
                ArrayList arrayList = new ArrayList();
                String strU5 = null;
                while (cn4Var.m()) {
                    int iA5 = cn4Var.A(cc7.a);
                    if (iA5 == 0) {
                        strU5 = cn4Var.u();
                    } else if (iA5 == 1) {
                        zN = cn4Var.n();
                    } else if (iA5 != 2) {
                        cn4Var.G();
                    } else {
                        cn4Var.a();
                        while (cn4Var.m()) {
                            tu1 tu1VarA = a(cn4Var, e25Var);
                            if (tu1VarA != null) {
                                arrayList.add(tu1VarA);
                            }
                        }
                        cn4Var.g();
                    }
                }
                bc7Var = new bc7(strU5, arrayList, zN);
                h14Var = bc7Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "gs":
                ib ibVar5 = m14.a;
                ArrayList arrayList2 = new ArrayList();
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                boolean zN6 = false;
                dc dcVar3 = null;
                String strU6 = null;
                cc ccVar2 = null;
                fc fcVarQ4 = null;
                fc fcVarQ5 = null;
                bc bcVarO = null;
                bc bcVar = null;
                float fQ = 0.0f;
                while (cn4Var.m()) {
                    switch (cn4Var.A(m14.a)) {
                        case 0:
                            strU6 = cn4Var.u();
                            break;
                        case 1:
                            cn4Var.b();
                            int iR4 = -1;
                            while (cn4Var.m()) {
                                int iA6 = cn4Var.A(m14.b);
                                if (iA6 == 0) {
                                    iR4 = cn4Var.r();
                                } else if (iA6 != 1) {
                                    cn4Var.D();
                                    cn4Var.G();
                                } else {
                                    g14 g14Var2 = new g14();
                                    g14Var2.a = iR4;
                                    ccVar2 = new cc(zo4.a(cn4Var, e25Var, 1.0f, g14Var2, false), 6);
                                }
                            }
                            cn4Var.h();
                            break;
                        case 2:
                            dcVar3 = sz8.P(cn4Var, e25Var);
                            continue;
                        case 3:
                            if (cn4Var.r() == 1) {
                                i5 = 1;
                            } else {
                                i5 = 2;
                                continue;
                            }
                            break;
                        case 4:
                            fcVarQ4 = sz8.Q(cn4Var, e25Var);
                            continue;
                        case 5:
                            fcVarQ5 = sz8.Q(cn4Var, e25Var);
                            continue;
                        case 6:
                            bcVarO = sz8.O(cn4Var, e25Var, true);
                            continue;
                        case 7:
                            i6 = dj7.C(i3)[cn4Var.r() - 1];
                            continue;
                        case 8:
                            i7 = dj7.C(i3)[cn4Var.r() - 1];
                            continue;
                        case XmlPullParser.COMMENT /* 9 */:
                            fQ = (float) cn4Var.q();
                            continue;
                        case 10:
                            zN6 = cn4Var.n();
                            continue;
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            cn4Var.a();
                            while (cn4Var.m()) {
                                cn4Var.b();
                                String strU7 = null;
                                bc bcVarO2 = null;
                                while (cn4Var.m()) {
                                    int iA7 = cn4Var.A(m14.c);
                                    if (iA7 == 0) {
                                        strU7 = cn4Var.u();
                                    } else if (iA7 != 1) {
                                        cn4Var.D();
                                        cn4Var.G();
                                    } else {
                                        bcVarO2 = sz8.O(cn4Var, e25Var, true);
                                    }
                                }
                                cn4Var.h();
                                if (strU7.equals("o")) {
                                    bcVar = bcVarO2;
                                } else if (strU7.equals("d") || strU7.equals("g")) {
                                    e25Var.n = true;
                                    arrayList2.add(bcVarO2);
                                }
                            }
                            cn4Var.g();
                            if (arrayList2.size() == 1) {
                                arrayList2.add((bc) arrayList2.get(0));
                            } else {
                                continue;
                            }
                            break;
                        default:
                            cn4Var.D();
                            cn4Var.G();
                            continue;
                    }
                    i3 = 3;
                }
                if (dcVar3 == null) {
                    dcVar3 = new dc(Collections.singletonList(new wo4(100)), 6);
                }
                zb7Var = new k14(strU6, i5, ccVar2, dcVar3, fcVarQ4, fcVarQ5, bcVarO, i6, i7, fQ, arrayList2, bcVar, zN6);
                h14Var = zb7Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "mm":
                ib ibVar6 = ed5.a;
                boolean zN7 = false;
                String strU8 = null;
                while (cn4Var.m()) {
                    int iA8 = cn4Var.A(ed5.a);
                    if (iA8 == 0) {
                        strU8 = cn4Var.u();
                    } else if (iA8 == 1) {
                        int iR5 = cn4Var.r();
                        if (iR5 != 1) {
                            if (iR5 == 2) {
                                i2 = 2;
                            } else if (iR5 == 3) {
                                i2 = 3;
                            } else if (iR5 == 4) {
                                i2 = 4;
                            } else if (iR5 == 5) {
                                i2 = 5;
                            }
                        }
                        i2 = 1;
                    } else if (iA8 != 2) {
                        cn4Var.D();
                        cn4Var.G();
                    } else {
                        zN7 = cn4Var.n();
                    }
                }
                cd5 cd5Var = new cd5(strU8, i2, zN7);
                e25Var.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                h14Var = cd5Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "rc":
                ib ibVar7 = dg6.a;
                boolean zN8 = false;
                String strU9 = null;
                oc ocVarB2 = null;
                fc fcVarQ6 = null;
                bc bcVarO3 = null;
                while (cn4Var.m()) {
                    int iA9 = cn4Var.A(dg6.a);
                    if (iA9 == 0) {
                        strU9 = cn4Var.u();
                    } else if (iA9 == 1) {
                        ocVarB2 = ec.b(cn4Var, e25Var);
                    } else if (iA9 == 2) {
                        fcVarQ6 = sz8.Q(cn4Var, e25Var);
                    } else if (iA9 == 3) {
                        bcVarO3 = sz8.O(cn4Var, e25Var, true);
                    } else if (iA9 != 4) {
                        cn4Var.G();
                    } else {
                        zN8 = cn4Var.n();
                    }
                }
                i71Var = new cg6(strU9, ocVarB2, fcVarQ6, bcVarO3, zN8);
                h14Var = i71Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "rp":
                ib ibVar8 = oj6.a;
                boolean zN9 = false;
                String strU10 = null;
                bc bcVarO4 = null;
                bc bcVarO5 = null;
                mc mcVarA = null;
                while (cn4Var.m()) {
                    int iA10 = cn4Var.A(oj6.a);
                    if (iA10 == 0) {
                        strU10 = cn4Var.u();
                    } else if (iA10 == 1) {
                        bcVarO4 = sz8.O(cn4Var, e25Var, false);
                    } else if (iA10 == 2) {
                        bcVarO5 = sz8.O(cn4Var, e25Var, false);
                    } else if (iA10 == 3) {
                        mcVarA = nc.a(cn4Var, e25Var);
                    } else if (iA10 != 4) {
                        cn4Var.G();
                    } else {
                        zN9 = cn4Var.n();
                    }
                }
                i71Var = new mj6(strU10, bcVarO4, bcVarO5, mcVarA, zN9);
                h14Var = i71Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "sh":
                ib ibVar9 = oc7.a;
                int iR6 = 0;
                boolean zN10 = false;
                hc hcVar = null;
                String strU11 = null;
                while (cn4Var.m()) {
                    int iA11 = cn4Var.A(oc7.a);
                    if (iA11 == 0) {
                        strU11 = cn4Var.u();
                    } else if (iA11 == 1) {
                        iR6 = cn4Var.r();
                    } else if (iA11 == 2) {
                        hcVar = new hc(zo4.a(cn4Var, e25Var, mi8.c(), yb7.a, false), 6);
                    } else if (iA11 != 3) {
                        cn4Var.G();
                    } else {
                        zN10 = cn4Var.n();
                    }
                }
                bc7Var = new nc7(strU11, iR6, hcVar, zN10);
                h14Var = bc7Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "sr":
                ib ibVar10 = n26.a;
                int i8 = 0;
                boolean zN11 = false;
                String strU12 = null;
                bc bcVarO6 = null;
                oc ocVarB3 = null;
                bc bcVarO7 = null;
                bc bcVarO8 = null;
                bc bcVarO9 = null;
                bc bcVarO10 = null;
                bc bcVarO11 = null;
                while (cn4Var.m()) {
                    switch (cn4Var.A(n26.a)) {
                        case 0:
                            strU12 = cn4Var.u();
                            break;
                        case 1:
                            int iR7 = cn4Var.r();
                            int[] iArrC = dj7.C(2);
                            int length = iArrC.length;
                            int i9 = 0;
                            while (true) {
                                if (i9 >= length) {
                                    i8 = 0;
                                }
                                int i10 = iArrC[i9];
                                if (i10 == 1) {
                                    i = 1;
                                } else {
                                    if (i10 != 2) {
                                        throw null;
                                    }
                                    i = 2;
                                }
                                if (i == iR7) {
                                    i8 = i10;
                                }
                                i9++;
                                break;
                                break;
                            }
                            break;
                        case 2:
                            bcVarO6 = sz8.O(cn4Var, e25Var, false);
                            break;
                        case 3:
                            ocVarB3 = ec.b(cn4Var, e25Var);
                            break;
                        case 4:
                            bcVarO7 = sz8.O(cn4Var, e25Var, false);
                            break;
                        case 5:
                            bcVarO9 = sz8.O(cn4Var, e25Var, true);
                            break;
                        case 6:
                            bcVarO11 = sz8.O(cn4Var, e25Var, false);
                            break;
                        case 7:
                            bcVarO8 = sz8.O(cn4Var, e25Var, true);
                            break;
                        case 8:
                            bcVarO10 = sz8.O(cn4Var, e25Var, false);
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            zN11 = cn4Var.n();
                            break;
                        default:
                            cn4Var.D();
                            cn4Var.G();
                            break;
                    }
                }
                i71Var = new m26(strU12, i8, bcVarO6, ocVarB3, bcVarO7, bcVarO8, bcVarO9, bcVarO10, bcVarO11, zN11);
                h14Var = i71Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "st":
                ib ibVar11 = qc7.a;
                ArrayList arrayList3 = new ArrayList();
                int i11 = 0;
                int i12 = 0;
                boolean zN12 = false;
                dc dcVar4 = null;
                String strU13 = null;
                bc bcVar2 = null;
                ac acVarN2 = null;
                bc bcVarO12 = null;
                float fQ2 = 0.0f;
                while (cn4Var.m()) {
                    switch (cn4Var.A(qc7.a)) {
                        case 0:
                            strU13 = cn4Var.u();
                            break;
                        case 1:
                            acVarN2 = sz8.N(cn4Var, e25Var);
                            break;
                        case 2:
                            bcVarO12 = sz8.O(cn4Var, e25Var, true);
                            break;
                        case 3:
                            dcVar4 = sz8.P(cn4Var, e25Var);
                            break;
                        case 4:
                            i11 = dj7.C(3)[cn4Var.r() - 1];
                            break;
                        case 5:
                            i12 = dj7.C(3)[cn4Var.r() - 1];
                            break;
                        case 6:
                            fQ2 = (float) cn4Var.q();
                            break;
                        case 7:
                            zN12 = cn4Var.n();
                            break;
                        case 8:
                            cn4Var.a();
                            while (cn4Var.m()) {
                                cn4Var.b();
                                String strU14 = null;
                                bc bcVarO13 = null;
                                while (cn4Var.m()) {
                                    int iA12 = cn4Var.A(qc7.b);
                                    if (iA12 == 0) {
                                        strU14 = cn4Var.u();
                                    } else if (iA12 != 1) {
                                        cn4Var.D();
                                        cn4Var.G();
                                    } else {
                                        bcVarO13 = sz8.O(cn4Var, e25Var, true);
                                    }
                                }
                                cn4Var.h();
                                strU14.getClass();
                                switch (strU14) {
                                    case "d":
                                    case "g":
                                        e25Var.n = true;
                                        arrayList3.add(bcVarO13);
                                        break;
                                    case "o":
                                        bcVar2 = bcVarO13;
                                        break;
                                }
                            }
                            cn4Var.g();
                            if (arrayList3.size() == 1) {
                                arrayList3.add((bc) arrayList3.get(0));
                            }
                            break;
                        default:
                            cn4Var.G();
                            break;
                    }
                }
                if (dcVar4 == null) {
                    dcVar4 = new dc(Collections.singletonList(new wo4(100)), 6);
                }
                zb7Var = new pc7(strU13, bcVar2, arrayList3, acVarN2, dcVar4, bcVarO12, i11, i12, fQ2, zN12);
                h14Var = zb7Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "tm":
                ib ibVar12 = sc7.a;
                int i13 = 0;
                boolean zN13 = false;
                String strU15 = null;
                bc bcVarO14 = null;
                bc bcVarO15 = null;
                bc bcVarO16 = null;
                while (cn4Var.m()) {
                    int iA13 = cn4Var.A(sc7.a);
                    if (iA13 == 0) {
                        bcVarO14 = sz8.O(cn4Var, e25Var, false);
                    } else if (iA13 == 1) {
                        bcVarO15 = sz8.O(cn4Var, e25Var, false);
                    } else if (iA13 == 2) {
                        bcVarO16 = sz8.O(cn4Var, e25Var, false);
                    } else if (iA13 == 3) {
                        strU15 = cn4Var.u();
                    } else if (iA13 == 4) {
                        int iR8 = cn4Var.r();
                        if (iR8 == 1) {
                            i13 = 1;
                        } else {
                            if (iR8 != 2) {
                                c6.f(fz5.j(iR8, "Unknown trim path type "));
                                return null;
                            }
                            i13 = 2;
                        }
                    } else if (iA13 != 5) {
                        cn4Var.G();
                    } else {
                        zN13 = cn4Var.n();
                    }
                }
                i71Var = new rc7(strU15, i13, bcVarO14, bcVarO15, bcVarO16, zN13);
                h14Var = i71Var;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            case "tr":
                h14Var = nc.a(cn4Var, e25Var);
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
            default:
                m15.b("Unknown shape type ".concat(strU));
                h14Var = null;
                while (cn4Var.m()) {
                    cn4Var.G();
                }
                cn4Var.h();
                return h14Var;
        }
    }
}
