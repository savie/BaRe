package defpackage;

import android.graphics.Rect;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o25 {
    public static final ib a = ib.k("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    public static final ib b = ib.k("id", "layers", "w", "h", JWKParameterNames.RSA_FIRST_PRIME_FACTOR, "u");
    public static final ib c = ib.k("list");
    public static final ib d = ib.k("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0046. Please report as an issue. */
    public static e25 a(cn4 cn4Var) throws l, EOFException {
        e25 e25Var;
        float f;
        float f2;
        float f3;
        e25 e25Var2;
        float f4;
        float f5;
        float fC = mi8.c();
        v15 v15Var = new v15();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        yj7 yj7Var = new yj7();
        e25 e25Var3 = new e25();
        cn4Var.b();
        float fQ = 0.0f;
        int iR = 0;
        int iR2 = 0;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        while (cn4Var.m()) {
            fC = fC;
            switch (cn4Var.A(a)) {
                case 0:
                    iR = cn4Var.r();
                    fC = fC;
                    map3 = map3;
                    break;
                case 1:
                    iR2 = cn4Var.r();
                    fC = fC;
                    map3 = map3;
                    break;
                case 2:
                    fQ2 = (float) cn4Var.q();
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 3:
                    fQ3 = ((float) cn4Var.q()) - 0.01f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 4:
                    fQ = (float) cn4Var.q();
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 5:
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25Var = e25Var3;
                    f = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    String[] strArrSplit = cn4Var.u().split("\\.");
                    int i = Integer.parseInt(strArrSplit[0]);
                    int i2 = Integer.parseInt(strArrSplit[1]);
                    int i3 = Integer.parseInt(strArrSplit[2]);
                    if (i < 4 || (i <= 4 && (i2 < 4 || (i2 <= 4 && i3 < 0)))) {
                        e25Var.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 6:
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25 e25Var4 = e25Var3;
                    f = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    cn4Var.a();
                    int i4 = 0;
                    while (cn4Var.m()) {
                        e25 e25Var5 = e25Var4;
                        js4 js4VarA = ks4.a(cn4Var, e25Var5);
                        if (js4VarA.e == 3) {
                            i4++;
                        }
                        arrayList.add(js4VarA);
                        v15Var.e(js4VarA, js4VarA.d);
                        if (i4 > 4) {
                            m15.b("You have " + i4 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        e25Var4 = e25Var5;
                    }
                    e25Var = e25Var4;
                    cn4Var.g();
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 7:
                    f = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    cn4Var.a();
                    while (cn4Var.m()) {
                        ArrayList arrayList3 = new ArrayList();
                        v15 v15Var2 = new v15();
                        cn4Var.b();
                        ArrayList arrayList4 = arrayList2;
                        String strU = null;
                        String strU2 = null;
                        int iR3 = 0;
                        int iR4 = 0;
                        while (cn4Var.m()) {
                            map3 = map3;
                            int iA = cn4Var.A(b);
                            if (iA != 0) {
                                yj7 yj7Var2 = yj7Var;
                                if (iA != 1) {
                                    if (iA == 2) {
                                        iR3 = cn4Var.r();
                                    } else if (iA == 3) {
                                        iR4 = cn4Var.r();
                                    } else if (iA == 4) {
                                        strU2 = cn4Var.u();
                                    } else if (iA != 5) {
                                        cn4Var.D();
                                        cn4Var.G();
                                        e25Var2 = e25Var3;
                                    } else {
                                        cn4Var.u();
                                    }
                                    yj7Var = yj7Var2;
                                } else {
                                    cn4Var.a();
                                    while (cn4Var.m()) {
                                        js4 js4VarA2 = ks4.a(cn4Var, e25Var3);
                                        v15Var2.e(js4VarA2, js4VarA2.d);
                                        arrayList3.add(js4VarA2);
                                        e25Var3 = e25Var3;
                                    }
                                    e25Var2 = e25Var3;
                                    cn4Var.g();
                                }
                                e25Var3 = e25Var2;
                                yj7Var = yj7Var2;
                            } else {
                                strU = cn4Var.u();
                            }
                        }
                        HashMap map4 = map3;
                        yj7 yj7Var3 = yj7Var;
                        e25 e25Var6 = e25Var3;
                        cn4Var.h();
                        if (strU2 != null) {
                            map2.put(strU, new d35(strU, iR3, iR4, strU2));
                        } else {
                            map.put(strU, arrayList3);
                        }
                        e25Var3 = e25Var6;
                        arrayList2 = arrayList4;
                        map3 = map4;
                        yj7Var = yj7Var3;
                    }
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    cn4Var.g();
                    e25Var = e25Var3;
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 8:
                    f = fQ;
                    f2 = fQ2;
                    float f6 = fQ3;
                    cn4Var.b();
                    while (cn4Var.m()) {
                        if (cn4Var.A(c) != 0) {
                            cn4Var.D();
                            cn4Var.G();
                        } else {
                            cn4Var.a();
                            while (cn4Var.m()) {
                                ib ibVar = aq3.a;
                                cn4Var.b();
                                String strU3 = null;
                                String strU4 = null;
                                String strU5 = null;
                                while (cn4Var.m()) {
                                    int iA2 = cn4Var.A(aq3.a);
                                    if (iA2 != 0) {
                                        float f7 = f6;
                                        if (iA2 == 1) {
                                            strU4 = cn4Var.u();
                                        } else if (iA2 == 2) {
                                            strU5 = cn4Var.u();
                                        } else if (iA2 != 3) {
                                            cn4Var.D();
                                            cn4Var.G();
                                        } else {
                                            cn4Var.q();
                                        }
                                        f6 = f7;
                                    } else {
                                        strU3 = cn4Var.u();
                                    }
                                }
                                cn4Var.h();
                                map3.put(strU4, new vp3(strU3, strU4, strU5));
                                f6 = f6;
                            }
                            cn4Var.g();
                        }
                    }
                    f3 = f6;
                    cn4Var.h();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25Var = e25Var3;
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    f = fQ;
                    f2 = fQ2;
                    f4 = fQ3;
                    cn4Var.a();
                    while (cn4Var.m()) {
                        ib ibVar2 = zp3.a;
                        ArrayList arrayList5 = new ArrayList();
                        cn4Var.b();
                        double dQ = 0.0d;
                        String strU6 = null;
                        String strU7 = null;
                        char cCharAt = 0;
                        while (cn4Var.m()) {
                            int iA3 = cn4Var.A(zp3.a);
                            if (iA3 == 0) {
                                cCharAt = cn4Var.u().charAt(0);
                            } else if (iA3 == 1) {
                                cn4Var.q();
                            } else if (iA3 == 2) {
                                dQ = cn4Var.q();
                            } else if (iA3 == 3) {
                                strU6 = cn4Var.u();
                            } else if (iA3 == 4) {
                                strU7 = cn4Var.u();
                            } else if (iA3 != 5) {
                                cn4Var.D();
                                cn4Var.G();
                            } else {
                                cn4Var.b();
                                while (cn4Var.m()) {
                                    if (cn4Var.A(zp3.b) != 0) {
                                        cn4Var.D();
                                        cn4Var.G();
                                    } else {
                                        cn4Var.a();
                                        while (cn4Var.m()) {
                                            arrayList5.add((bc7) uu1.a(cn4Var, e25Var3));
                                        }
                                        cn4Var.g();
                                    }
                                }
                                cn4Var.h();
                            }
                        }
                        cn4Var.h();
                        yp3 yp3Var = new yp3(arrayList5, cCharAt, dQ, strU6, strU7);
                        yj7Var.b(yp3Var.hashCode(), yp3Var);
                    }
                    cn4Var.g();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25Var = e25Var3;
                    f3 = f4;
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                case 10:
                    cn4Var.a();
                    while (cn4Var.m()) {
                        cn4Var.b();
                        String strU8 = null;
                        float fQ4 = 0.0f;
                        float fQ5 = 0.0f;
                        while (cn4Var.m()) {
                            int iA4 = cn4Var.A(d);
                            if (iA4 != 0) {
                                f5 = fQ;
                                if (iA4 == 1) {
                                    fQ3 = fQ3;
                                    fQ4 = (float) cn4Var.q();
                                } else if (iA4 != 2) {
                                    cn4Var.D();
                                    cn4Var.G();
                                } else {
                                    fQ3 = fQ3;
                                    fQ5 = (float) cn4Var.q();
                                }
                                fQ = f5;
                                fQ2 = fQ2;
                            } else {
                                f5 = fQ;
                                strU8 = cn4Var.u();
                            }
                            fQ = f5;
                        }
                        cn4Var.h();
                        arrayList2.add(new g75(strU8, fQ4, fQ5));
                        fQ3 = fQ3;
                        fQ2 = fQ2;
                        fQ = fQ;
                    }
                    f = fQ;
                    f2 = fQ2;
                    f4 = fQ3;
                    cn4Var.g();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25Var = e25Var3;
                    f3 = f4;
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
                default:
                    cn4Var.D();
                    cn4Var.G();
                    map3 = map3;
                    arrayList2 = arrayList2;
                    yj7Var = yj7Var;
                    e25Var = e25Var3;
                    f = fQ;
                    f2 = fQ2;
                    f3 = fQ3;
                    e25Var3 = e25Var;
                    fQ2 = f2;
                    fQ3 = f3;
                    fQ = f;
                    arrayList2 = arrayList2;
                    map3 = map3;
                    yj7Var = yj7Var;
                    break;
            }
        }
        float f8 = fC;
        HashMap map5 = map3;
        e25 e25Var7 = e25Var3;
        e25Var7.j = new Rect(0, 0, (int) (iR * f8), (int) (iR2 * f8));
        e25Var7.k = fQ2;
        e25Var7.l = fQ3;
        e25Var7.m = fQ;
        e25Var7.i = arrayList;
        e25Var7.h = v15Var;
        e25Var7.c = map;
        e25Var7.d = map2;
        e25Var7.g = yj7Var;
        e25Var7.e = map5;
        e25Var7.f = arrayList2;
        return e25Var7;
    }
}
