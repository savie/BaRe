package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ms8 {
    public static final ap0 a = new ap0();
    public static final int[] b = {0, 25847, -2608894, -518909, 237124, -777960, -876248, 466468, 1826347, 2353451, -359251, -2091905, 3119733, -2884855, 3111497, 2680103, 2725464, 1024112, -1079900, 3585928, -549488, -1119584, 2619752, -2108549, -2118186, -3859737, -1399561, -3277672, 1757237, -19422, 4010497, 280005, 2706023, 95776, 3077325, 3530437, -1661693, -3592148, -2537516, 3915439, -3861115, -3043716, 3574422, -2867647, 3539968, -300467, 2348700, -539299, -1699267, -1643818, 3505694, -3821735, 3507263, -2140649, -1600420, 3699596, 811944, 531354, 954230, 3881043, 3900724, -2556880, 2071892, -2797779, -3930395, -1528703, -3677745, -3041255, -1452451, 3475950, 2176455, -1585221, -1257611, 1939314, -4083598, -1000202, -3190144, -3157330, -3632928, 126922, 3412210, -983419, 2147896, 2715295, -2967645, -3693493, -411027, -2477047, -671102, -1228525, -22981, -1308169, -381987, 1349076, 1852771, -1430430, -3343383, 264944, 508951, 3097992, 44288, -1100098, 904516, 3958618, -3724342, -8578, 1653064, -3249728, 2389356, -210977, 759969, -1316856, 189548, -3553272, 3159746, -1851402, -2409325, -177440, 1315589, 1341330, 1285669, -1584928, -812732, -1439742, -3019102, -3881060, -3628969, 3839961, 2091667, 3407706, 2316500, 3817976, -3342478, 2244091, -2446433, -3562462, 266997, 2434439, -1235728, 3513181, -3520352, -3759364, -1197226, -3193378, 900702, 1859098, 909542, 819034, 495491, -1613174, -43260, -522500, -655327, -3122442, 2031748, 3207046, -3556995, -525098, -768622, -3595838, 342297, 286988, -2437823, 4108315, 3437287, -3342277, 1735879, 203044, 2842341, 2691481, -2590150, 1265009, 4055324, 1247620, 2486353, 1595974, -3767016, 1250494, 2635921, -3548272, -2994039, 1869119, 1903435, -1050970, -1333058, 1237275, -3318210, -1430225, -451100, 1312455, 3306115, -1962642, -1279661, 1917081, -2546312, -1374803, 1500165, 777191, 2235880, 3406031, -542412, -2831860, -1671176, -1846953, -2584293, -3724270, 594136, -3776993, -2013608, 2432395, 2454455, -164721, 1957272, 3369112, 185531, -1207385, -3183426, 162844, 1616392, 3014001, 810149, 1652634, -3694233, -1799107, -3038916, 3523897, 3866901, 269760, 2213111, -975884, 1717735, 472078, -426683, 1723600, -1803090, 1910376, -1667432, -1104333, -260646, -3833893, -2939036, -2235985, -420899, -2286327, 183443, -976891, 1612842, -3545687, -554416, 3919660, -48306, -1362209, 3937738, 1400424, -846154, 1976782};
    public static final byte[] c = new byte[0];

    public static void A(int i, l15 l15Var, String str, Object obj) {
        int iA = dj7.A(i);
        if (iA == 0) {
            l15Var.t(obj, str);
            return;
        }
        if (iA == 1) {
            l15Var.i(obj, str);
            return;
        }
        if (iA == 2) {
            l15Var.a(obj, str);
        } else if (iA == 3) {
            l15Var.D(obj, str);
        } else {
            if (iA != 4) {
                return;
            }
            l15Var.g(obj, str);
        }
    }

    public static void B(int i, l15 l15Var, String str, Object obj, Object obj2) {
        int iA = dj7.A(i);
        if (iA == 0) {
            l15Var.e(obj, obj2, str);
            return;
        }
        if (iA == 1) {
            l15Var.C(obj, obj2, str);
            return;
        }
        if (iA == 2) {
            l15Var.y(obj, obj2, str);
        } else if (iA == 3) {
            l15Var.m(obj, obj2, str);
        } else {
            if (iA != 4) {
                return;
            }
            l15Var.B(obj, obj2, str);
        }
    }

    public static void E(ga3 ga3Var, ow0 ow0Var) {
        long j = ga3Var.a;
        ow0Var.l(j & 4294967295L);
        ow0Var.l((j >> 32) & 4294967295L);
    }

    public static byte[] F(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 < 0) {
                l0.e(fz5.j(i, "Not enough bytes to read: "));
                return null;
            }
            i2 += i3;
        }
        return bArr;
    }

    public static byte[] G(FileInputStream fileInputStream, int i, int i2) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i2];
            byte[] bArr2 = new byte[RSAKeyGenerator.MIN_KEY_SIZE_BITS];
            int i3 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i3 < i) {
                int i4 = fileInputStream.read(bArr2);
                if (i4 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i + " bytes");
                }
                inflater.setInput(bArr2, 0, i4);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i2 - iInflate);
                    i3 += i4;
                } catch (DataFormatException e) {
                    throw new IllegalStateException(e.getMessage());
                }
            }
            if (i3 == i) {
                if (!inflater.finished()) {
                    throw new IllegalStateException("Inflater did not finish");
                }
                inflater.end();
                return bArr;
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i + " actual=" + i3);
        } catch (Throwable th) {
            inflater.end();
            throw th;
        }
    }

    public static ga3 H(ow0 ow0Var) {
        return new ga3(ow0Var.b.e(ow0Var) | (ow0Var.b.e(ow0Var) << 32));
    }

    public static long I(InputStream inputStream, int i) throws IOException {
        byte[] bArrF = F(inputStream, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += ((long) (bArrF[i2] & 255)) << (i2 * 8);
        }
        return j;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008c  */
    public static Object J(Object obj, ji8 ji8Var, HashMap map) {
        Object objValueOf;
        Number number;
        Object obj2;
        if (!(obj instanceof Map)) {
            return obj;
        }
        Map map2 = (Map) obj;
        if (map2.containsKey(".sv")) {
            Object obj3 = map2.get(".sv");
            objValueOf = null;
            objValueOf = null;
            objValueOf = null;
            objValueOf = null;
            objValueOf = null;
            if (obj3 instanceof String) {
                String str = (String) obj3;
                if ("timestamp".equals(str) && map.containsKey(str)) {
                    obj2 = map.get(str);
                }
            } else if (obj3 instanceof Map) {
                Map map3 = (Map) obj3;
                if (map3.containsKey("increment")) {
                    Object obj4 = map3.get("increment");
                    if (obj4 instanceof Number) {
                        number = (Number) obj4;
                        qn5 qn5VarD = ji8Var.D();
                        if (qn5VarD.Z() && (qn5VarD.getValue() instanceof Number)) {
                            Number number2 = (Number) qn5VarD.getValue();
                            if ((number instanceof Double) || (number instanceof Float) || (number2 instanceof Double) || (number2 instanceof Float)) {
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = number;
                                objValueOf = Double.valueOf(number2.doubleValue() + number.doubleValue());
                            } else {
                                long jLongValue = number.longValue();
                                long jLongValue2 = number2.longValue();
                                long j = jLongValue + jLongValue2;
                                if (((jLongValue ^ j) & (jLongValue2 ^ j)) >= 0) {
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = Long.valueOf(j);
                                } else {
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = number;
                                    objValueOf = Double.valueOf(number2.doubleValue() + number.doubleValue());
                                }
                            }
                        }
                    }
                }
            }
            if (objValueOf != null) {
                objValueOf = obj2;
                return objValueOf;
            }
        }
        objValueOf = obj2;
        return obj;
    }

    public static np1 K(np1 np1Var, bv7 bv7Var, gy5 gy5Var, HashMap map) {
        np1 np1VarC = np1.b;
        for (Map.Entry entry : np1Var.a) {
            np1VarC = np1VarC.c((gy5) entry.getKey(), L((qn5) entry.getValue(), new dj8(bv7Var, gy5Var.e((gy5) entry.getKey())), map));
        }
        return np1VarC;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        if (r4 == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.qn5 L(defpackage.qn5 r5, defpackage.ji8 r6, java.util.HashMap r7) {
        /*
            qn5 r0 = r5.n()
            java.lang.Object r0 = r0.getValue()
            java.lang.String r1 = ".priority"
            m61 r1 = defpackage.m61.b(r1)
            ji8 r1 = r6.o(r1)
            java.lang.Object r1 = J(r0, r1, r7)
            boolean r2 = r5.Z()
            r3 = 0
            r4 = 0
            if (r2 == 0) goto L48
            java.lang.Object r2 = r5.getValue()
            java.lang.Object r6 = J(r2, r6, r7)
            java.lang.Object r7 = r5.getValue()
            boolean r7 = r6.equals(r7)
            if (r7 == 0) goto L3f
            if (r1 != r0) goto L34
            r4 = 1
            goto L3d
        L34:
            if (r1 == 0) goto L3d
            if (r0 != 0) goto L39
            goto L3d
        L39:
            boolean r4 = r1.equals(r0)
        L3d:
            if (r4 != 0) goto L4e
        L3f:
            qn5 r5 = defpackage.xh8.z(r3, r1)
            qn5 r5 = defpackage.xh8.a(r6, r5)
            return r5
        L48:
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto L4f
        L4e:
            return r5
        L4f:
            q61 r5 = (defpackage.q61) r5
            nh r0 = new nh
            r2 = 16
            r0.<init>(r5, r2)
            h87 r2 = new h87
            r2.<init>(r6, r7, r0)
            r5.d(r2, r4)
            java.lang.Object r5 = r0.b
            qn5 r5 = (defpackage.qn5) r5
            qn5 r5 = r5.n()
            boolean r5 = r5.equals(r1)
            java.lang.Object r6 = r0.b
            qn5 r6 = (defpackage.qn5) r6
            if (r5 != 0) goto L7b
            qn5 r5 = defpackage.xh8.z(r3, r1)
            qn5 r5 = r6.q(r5)
            return r5
        L7b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ms8.L(qn5, ji8, java.util.HashMap):qn5");
    }

    public static void M(int i, et1 et1Var, ot1 ot1Var, boolean z) {
        float f = ot1Var.d0;
        ys1 ys1Var = ot1Var.I;
        int iD = ys1Var.f.d();
        ys1 ys1Var2 = ot1Var.K;
        int iD2 = ys1Var2.f.d();
        int iE = ys1Var.e() + iD;
        int iE2 = iD2 - ys1Var2.e();
        if (iD == iD2) {
            f = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iQ = ot1Var.q();
        int i2 = (iD2 - iD) - iQ;
        if (iD > iD2) {
            i2 = (iD - iD2) - iQ;
        }
        int i3 = ((int) (i2 > 0 ? (f * i2) + 0.5f : f * i2)) + iD;
        int i4 = i3 + iQ;
        if (iD > iD2) {
            i4 = i3 - iQ;
        }
        ot1Var.J(i3, i4);
        y(i + 1, et1Var, ot1Var, z);
    }

    public static void N(int i, ot1 ot1Var, et1 et1Var, ot1 ot1Var2, boolean z) {
        float f = ot1Var2.d0;
        ys1 ys1Var = ot1Var2.I;
        int iE = ys1Var.e() + ys1Var.f.d();
        ys1 ys1Var2 = ot1Var2.K;
        int iD = ys1Var2.f.d() - ys1Var2.e();
        if (iD >= iE) {
            int iQ = ot1Var2.q();
            if (ot1Var2.g0 != 8) {
                int i2 = ot1Var2.r;
                if (i2 == 2) {
                    iQ = (int) (ot1Var2.d0 * 0.5f * (ot1Var instanceof pt1 ? ot1Var.q() : ot1Var.T.q()));
                } else if (i2 == 0) {
                    iQ = iD - iE;
                }
                iQ = Math.max(ot1Var2.u, iQ);
                int i3 = ot1Var2.v;
                if (i3 > 0) {
                    iQ = Math.min(i3, iQ);
                }
            }
            int i4 = iE + ((int) ((f * ((iD - iE) - iQ)) + 0.5f));
            ot1Var2.J(i4, iQ + i4);
            y(i + 1, et1Var, ot1Var2, z);
        }
    }

    public static void O(int i, et1 et1Var, ot1 ot1Var) {
        float f = ot1Var.e0;
        ys1 ys1Var = ot1Var.J;
        int iD = ys1Var.f.d();
        ys1 ys1Var2 = ot1Var.L;
        int iD2 = ys1Var2.f.d();
        int iE = ys1Var.e() + iD;
        int iE2 = iD2 - ys1Var2.e();
        if (iD == iD2) {
            f = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iK = ot1Var.k();
        int i2 = (iD2 - iD) - iK;
        if (iD > iD2) {
            i2 = (iD - iD2) - iK;
        }
        int i3 = (int) (i2 > 0 ? (f * i2) + 0.5f : f * i2);
        int i4 = iD + i3;
        int i5 = i4 + iK;
        if (iD > iD2) {
            i4 = iD - i3;
            i5 = i4 - iK;
        }
        ot1Var.K(i4, i5);
        Q(i + 1, et1Var, ot1Var);
    }

    public static void P(int i, ot1 ot1Var, et1 et1Var, ot1 ot1Var2) {
        float f = ot1Var2.e0;
        ys1 ys1Var = ot1Var2.J;
        int iE = ys1Var.e() + ys1Var.f.d();
        ys1 ys1Var2 = ot1Var2.L;
        int iD = ys1Var2.f.d() - ys1Var2.e();
        if (iD >= iE) {
            int iK = ot1Var2.k();
            if (ot1Var2.g0 != 8) {
                int i2 = ot1Var2.s;
                if (i2 == 2) {
                    iK = (int) (f * 0.5f * (ot1Var instanceof pt1 ? ot1Var.k() : ot1Var.T.k()));
                } else if (i2 == 0) {
                    iK = iD - iE;
                }
                iK = Math.max(ot1Var2.x, iK);
                int i3 = ot1Var2.y;
                if (i3 > 0) {
                    iK = Math.min(i3, iK);
                }
            }
            int i4 = iE + ((int) ((f * ((iD - iE) - iK)) + 0.5f));
            ot1Var2.K(i4, iK + i4);
            Q(i + 1, et1Var, ot1Var2);
        }
    }

    public static void Q(int i, et1 et1Var, ot1 ot1Var) {
        boolean z;
        ys1 ys1Var;
        ys1 ys1Var2;
        ys1 ys1Var3;
        ys1 ys1Var4;
        if (ot1Var.n) {
            return;
        }
        if (!(ot1Var instanceof pt1) && ot1Var.z() && g(ot1Var)) {
            pt1.V(ot1Var, et1Var, new ap0());
        }
        ys1 ys1VarI = ot1Var.i(3);
        ys1 ys1VarI2 = ot1Var.i(5);
        int iD = ys1VarI.d();
        int iD2 = ys1VarI2.d();
        HashSet<ys1> hashSet = ys1VarI.a;
        if (hashSet != null && ys1VarI.c) {
            for (ys1 ys1Var5 : hashSet) {
                ot1 ot1Var2 = ys1Var5.d;
                int i2 = i + 1;
                boolean zG = g(ot1Var2);
                ys1 ys1Var6 = ot1Var2.J;
                ys1 ys1Var7 = ot1Var2.L;
                if (ot1Var2.z() && zG) {
                    pt1.V(ot1Var2, et1Var, new ap0());
                }
                boolean z2 = (ys1Var5 == ys1Var6 && (ys1Var4 = ys1Var7.f) != null && ys1Var4.c) || (ys1Var5 == ys1Var7 && (ys1Var3 = ys1Var6.f) != null && ys1Var3.c);
                int i3 = ot1Var2.p0[1];
                if (i3 != 3 || zG) {
                    if (!ot1Var2.z()) {
                        if (ys1Var5 == ys1Var6 && ys1Var7.f == null) {
                            int iE = ys1Var6.e() + iD;
                            ot1Var2.K(iE, ot1Var2.k() + iE);
                            Q(i2, et1Var, ot1Var2);
                        } else if (ys1Var5 == ys1Var7 && ys1Var6.f == null) {
                            int iE2 = iD - ys1Var7.e();
                            ot1Var2.K(iE2 - ot1Var2.k(), iE2);
                            Q(i2, et1Var, ot1Var2);
                        } else if (z2 && !ot1Var2.y()) {
                            O(i2, et1Var, ot1Var2);
                        }
                    }
                } else if (i3 == 3 && ot1Var2.y >= 0 && ot1Var2.x >= 0 && (ot1Var2.g0 == 8 || (ot1Var2.s == 0 && ot1Var2.W == 0.0f))) {
                    if (!ot1Var2.y() && !ot1Var2.F && z2 && !ot1Var2.y()) {
                        P(i2, ot1Var, et1Var, ot1Var2);
                    }
                }
            }
        }
        boolean z3 = true;
        z3 = true;
        z3 = true;
        if (ot1Var instanceof b24) {
            return;
        }
        HashSet<ys1> hashSet2 = ys1VarI2.a;
        if (hashSet2 != null && ys1VarI2.c) {
            for (ys1 ys1Var8 : hashSet2) {
                ot1 ot1Var3 = ys1Var8.d;
                int i4 = i + 1;
                boolean zG2 = g(ot1Var3);
                ys1 ys1Var9 = ot1Var3.J;
                ys1 ys1Var10 = ot1Var3.L;
                if (ot1Var3.z() && zG2) {
                    pt1.V(ot1Var3, et1Var, new ap0());
                }
                boolean z4 = (ys1Var8 == ys1Var9 && (ys1Var2 = ys1Var10.f) != null && ys1Var2.c) || (ys1Var8 == ys1Var10 && (ys1Var = ys1Var9.f) != null && ys1Var.c);
                int i5 = ot1Var3.p0[1];
                if (i5 != 3 || zG2) {
                    if (!ot1Var3.z()) {
                        if (ys1Var8 == ys1Var9 && ys1Var10.f == null) {
                            int iE3 = ys1Var9.e() + iD2;
                            ot1Var3.K(iE3, ot1Var3.k() + iE3);
                            Q(i4, et1Var, ot1Var3);
                        } else if (ys1Var8 == ys1Var10 && ys1Var9.f == null) {
                            int iE4 = iD2 - ys1Var10.e();
                            ot1Var3.K(iE4 - ot1Var3.k(), iE4);
                            Q(i4, et1Var, ot1Var3);
                        } else if (z4 && !ot1Var3.y()) {
                            O(i4, et1Var, ot1Var3);
                        }
                    }
                } else if (i5 == 3 && ot1Var3.y >= 0 && ot1Var3.x >= 0 && (ot1Var3.g0 == 8 || (ot1Var3.s == 0 && ot1Var3.W == 0.0f))) {
                    if (!ot1Var3.y() && !ot1Var3.F && z4 && !ot1Var3.y()) {
                        P(i4, ot1Var, et1Var, ot1Var3);
                    }
                }
            }
        }
        ys1 ys1VarI3 = ot1Var.i(6);
        if (ys1VarI3.a != null && ys1VarI3.c) {
            int iD3 = ys1VarI3.d();
            for (ys1 ys1Var11 : ys1VarI3.a) {
                ot1 ot1Var4 = ys1Var11.d;
                int i6 = i + 1;
                boolean zG3 = g(ot1Var4);
                ys1 ys1Var12 = ot1Var4.M;
                if (ot1Var4.z() && zG3) {
                    pt1.V(ot1Var4, et1Var, new ap0());
                }
                if (ot1Var4.p0[z3 ? 1 : 0] != 3 || zG3) {
                    if (!ot1Var4.z()) {
                        if (ys1Var11 == ys1Var12) {
                            int iE5 = ys1Var11.e() + iD3;
                            if (ot1Var4.E) {
                                int i7 = iE5 - ot1Var4.a0;
                                int i8 = ot1Var4.V + i7;
                                ot1Var4.Z = i7;
                                ot1Var4.J.l(i7);
                                ot1Var4.L.l(i8);
                                ys1Var12.l(iE5);
                                z = z3 ? 1 : 0;
                                ot1Var4.l = z;
                            } else {
                                z = z3 ? 1 : 0;
                            }
                            Q(i6, et1Var, ot1Var4);
                        }
                        z3 = z;
                    }
                }
                z = z3 ? 1 : 0;
                z3 = z;
            }
        }
        ot1Var.n = z3;
    }

    public static void R(ByteArrayOutputStream byteArrayOutputStream, long j, int i) throws IOException {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((j >> (i2 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void S(ByteArrayOutputStream byteArrayOutputStream, int i) throws IOException {
        R(byteArrayOutputStream, i, 2);
    }

    public static xe9 T(xe9 xe9Var) {
        if ((xe9Var instanceof af9) || (xe9Var instanceof ye9)) {
            return xe9Var;
        }
        if (xe9Var instanceof Serializable) {
            return new ye9(xe9Var);
        }
        af9 af9Var = new af9();
        af9Var.a = xe9Var;
        return af9Var;
    }

    public static void U(String str, e59 e59Var, n59 n59Var, f59 f59Var, xt1 xt1Var) {
        try {
            ly8.h(e59Var);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoOutput(true);
            byte[] bytes = e59Var.zza().getBytes(Charset.defaultCharset());
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setConnectTimeout(60000);
            xt1Var.a(httpURLConnection);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream(), bytes.length);
            try {
                bufferedOutputStream.write(bytes, 0, bytes.length);
                bufferedOutputStream.close();
                V(httpURLConnection, n59Var, f59Var);
            } catch (Throwable th) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            n59Var.zza("TIMEOUT");
        } catch (IOException e) {
            e = e;
            n59Var.zza(e.getMessage());
        } catch (NullPointerException e2) {
            e = e2;
            n59Var.zza(e.getMessage());
        } catch (UnknownHostException unused2) {
            n59Var.zza("<<Network Error>>");
        } catch (JSONException e3) {
            e = e3;
            n59Var.zza(e.getMessage());
        }
    }

    public static void V(HttpURLConnection httpURLConnection, n59 n59Var, f59 f59Var) {
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                boolean z = false;
                InputStream inputStream = responseCode >= 200 && responseCode < 300 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line);
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                bufferedReader.close();
                String string = sb.toString();
                if (responseCode >= 200 && responseCode < 300) {
                    z = true;
                }
                if (z) {
                    n59Var.h(zh8.O(string, f59Var));
                } else {
                    n59Var.zza(zh8.N(string));
                }
                httpURLConnection.disconnect();
            } catch (Throwable th3) {
                httpURLConnection.disconnect();
                throw th3;
            }
        } catch (d49 e) {
            e = e;
            n59Var.zza(e.getMessage());
            httpURLConnection.disconnect();
        } catch (SocketTimeoutException unused) {
            n59Var.zza("TIMEOUT");
            httpURLConnection.disconnect();
        } catch (IOException e2) {
            e = e2;
            n59Var.zza(e.getMessage());
            httpURLConnection.disconnect();
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        int[] iArr5 = iArr;
        int i2 = 16;
        int i3 = 0;
        System.arraycopy(iArr5, iArr5.length - 16, iArr2, 0, 16);
        int i4 = 1;
        int length = iArr5.length >>> 1;
        char c2 = 2;
        int i5 = i * 2;
        int i6 = 0;
        int i7 = 0;
        while (i5 > 0) {
            for (int length2 = iArr3.length - i4; length2 >= 0; length2--) {
                iArr3[length2] = iArr2[length2] ^ iArr5[i6 + length2];
            }
            int[] iArr6 = h31.p;
            if (iArr3.length != i2) {
                c6.b();
                return;
            }
            if (iArr2.length != i2) {
                c6.b();
                return;
            }
            int iRotateLeft = iArr3[i3];
            int i8 = iArr3[i4];
            int i9 = iArr3[c2];
            int iRotateLeft2 = iArr3[3];
            int i10 = iArr3[4];
            int i11 = iArr3[5];
            int i12 = iArr3[6];
            int i13 = i4;
            int i14 = 7;
            int i15 = iArr3[7];
            int i16 = iArr3[8];
            char c3 = c2;
            int i17 = 9;
            int i18 = iArr3[9];
            int iRotateLeft3 = iArr3[10];
            int i19 = iArr3[11];
            int i20 = iArr3[12];
            int i21 = 13;
            int iRotateLeft4 = iArr3[13];
            int iRotateLeft5 = iArr3[14];
            int iRotateLeft6 = iArr3[15];
            int i22 = 8;
            while (i22 > 0) {
                int iRotateLeft7 = i10 ^ Integer.rotateLeft(iRotateLeft + i20, i14);
                int i23 = i3;
                int iRotateLeft8 = i16 ^ Integer.rotateLeft(iRotateLeft7 + iRotateLeft, i17);
                int iRotateLeft9 = i20 ^ Integer.rotateLeft(iRotateLeft8 + iRotateLeft7, i21);
                int iRotateLeft10 = iRotateLeft ^ Integer.rotateLeft(iRotateLeft9 + iRotateLeft8, 18);
                int iRotateLeft11 = i18 ^ Integer.rotateLeft(i11 + i8, 7);
                int iRotateLeft12 = iRotateLeft4 ^ Integer.rotateLeft(iRotateLeft11 + i11, 9);
                int iRotateLeft13 = i8 ^ Integer.rotateLeft(iRotateLeft12 + iRotateLeft11, 13);
                int iRotateLeft14 = i11 ^ Integer.rotateLeft(iRotateLeft13 + iRotateLeft12, 18);
                int iRotateLeft15 = iRotateLeft5 ^ Integer.rotateLeft(iRotateLeft3 + i12, 7);
                int iRotateLeft16 = i9 ^ Integer.rotateLeft(iRotateLeft15 + iRotateLeft3, 9);
                int iRotateLeft17 = i12 ^ Integer.rotateLeft(iRotateLeft16 + iRotateLeft15, 13);
                int iRotateLeft18 = iRotateLeft3 ^ Integer.rotateLeft(iRotateLeft17 + iRotateLeft16, 18);
                int iRotateLeft19 = iRotateLeft2 ^ Integer.rotateLeft(iRotateLeft6 + i19, 7);
                int iRotateLeft20 = i15 ^ Integer.rotateLeft(iRotateLeft19 + iRotateLeft6, 9);
                int iRotateLeft21 = i19 ^ Integer.rotateLeft(iRotateLeft20 + iRotateLeft19, 13);
                int iRotateLeft22 = iRotateLeft6 ^ Integer.rotateLeft(iRotateLeft21 + iRotateLeft20, 18);
                int iRotateLeft23 = iRotateLeft13 ^ Integer.rotateLeft(iRotateLeft10 + iRotateLeft19, 7);
                int iRotateLeft24 = iRotateLeft16 ^ Integer.rotateLeft(iRotateLeft23 + iRotateLeft10, 9);
                iRotateLeft2 = iRotateLeft19 ^ Integer.rotateLeft(iRotateLeft24 + iRotateLeft23, 13);
                iRotateLeft = iRotateLeft10 ^ Integer.rotateLeft(iRotateLeft2 + iRotateLeft24, 18);
                int iRotateLeft25 = Integer.rotateLeft(iRotateLeft14 + iRotateLeft7, 7) ^ iRotateLeft17;
                int iRotateLeft26 = Integer.rotateLeft(iRotateLeft25 + iRotateLeft14, 9) ^ iRotateLeft20;
                int iRotateLeft27 = iRotateLeft7 ^ Integer.rotateLeft(iRotateLeft26 + iRotateLeft25, 13);
                int iRotateLeft28 = iRotateLeft14 ^ Integer.rotateLeft(iRotateLeft27 + iRotateLeft26, 18);
                int iRotateLeft29 = iRotateLeft21 ^ Integer.rotateLeft(iRotateLeft18 + iRotateLeft11, 7);
                int iRotateLeft30 = iRotateLeft8 ^ Integer.rotateLeft(iRotateLeft29 + iRotateLeft18, 9);
                int iRotateLeft31 = Integer.rotateLeft(iRotateLeft30 + iRotateLeft29, 13) ^ iRotateLeft11;
                iRotateLeft3 = iRotateLeft18 ^ Integer.rotateLeft(iRotateLeft31 + iRotateLeft30, 18);
                int iRotateLeft32 = Integer.rotateLeft(iRotateLeft22 + iRotateLeft15, 7) ^ iRotateLeft9;
                iRotateLeft4 = iRotateLeft12 ^ Integer.rotateLeft(iRotateLeft32 + iRotateLeft22, 9);
                iRotateLeft5 = iRotateLeft15 ^ Integer.rotateLeft(iRotateLeft4 + iRotateLeft32, 13);
                iRotateLeft6 = iRotateLeft22 ^ Integer.rotateLeft(iRotateLeft5 + iRotateLeft4, 18);
                i22 -= 2;
                i16 = iRotateLeft30;
                i10 = iRotateLeft27;
                i11 = iRotateLeft28;
                i19 = iRotateLeft29;
                i12 = iRotateLeft25;
                i8 = iRotateLeft23;
                i9 = iRotateLeft24;
                i17 = 9;
                i21 = 13;
                i15 = iRotateLeft26;
                i18 = iRotateLeft31;
                i20 = iRotateLeft32;
                i3 = i23;
                i14 = 7;
            }
            int i24 = i3;
            iArr2[i24] = iRotateLeft + iArr3[i24];
            iArr2[i13] = i8 + iArr3[i13];
            iArr2[c3] = i9 + iArr3[c3];
            iArr2[3] = iRotateLeft2 + iArr3[3];
            iArr2[4] = i10 + iArr3[4];
            iArr2[5] = i11 + iArr3[5];
            iArr2[6] = i12 + iArr3[6];
            iArr2[7] = i15 + iArr3[7];
            iArr2[8] = i16 + iArr3[8];
            iArr2[9] = i18 + iArr3[9];
            iArr2[10] = iRotateLeft3 + iArr3[10];
            iArr2[11] = i19 + iArr3[11];
            iArr2[12] = i20 + iArr3[12];
            iArr2[13] = iRotateLeft4 + iArr3[13];
            iArr2[14] = iRotateLeft5 + iArr3[14];
            iArr2[15] = iRotateLeft6 + iArr3[15];
            System.arraycopy(iArr2, i24, iArr4, i7, 16);
            i7 = (length + i6) - i7;
            i6 += 16;
            i5--;
            iArr5 = iArr;
            i3 = i24;
            i4 = i13;
            c2 = c3;
            i2 = 16;
        }
    }

    public static uw0 c(int i, pw0 pw0Var, int i2) {
        int i3 = i2 & 2;
        pw0 pw0Var2 = pw0.a;
        if (i3 != 0) {
            pw0Var = pw0Var2;
        }
        if (i == -2) {
            if (pw0Var != pw0Var2) {
                return new rr1(1, pw0Var);
            }
            h41.i.getClass();
            return new uw0(g41.b);
        }
        if (i == -1) {
            if (pw0Var == pw0Var2) {
                return new rr1(1, pw0.b);
            }
            c6.f("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (i == 0) {
            return pw0Var == pw0Var2 ? new uw0(0) : new rr1(1, pw0Var);
        }
        if (i != Integer.MAX_VALUE) {
            return pw0Var == pw0Var2 ? new uw0(i) : new rr1(i, pw0Var);
        }
        return new uw0(Integer.MAX_VALUE);
    }

    public static void d(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            if (iArr2 != null) {
                Arrays.fill(iArr2, 0);
            }
        }
    }

    public static void e(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = i2 >>> i3;
        int i6 = 1 << i3;
        int i7 = i5 - 1;
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2) - i3;
        int i8 = i4 * 32;
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[i8];
        int[] iArr5 = new int[i8];
        int[][] iArr6 = new int[i6][];
        try {
            System.arraycopy(iArr, i, iArr5, 0, i8);
            int i9 = 0;
            while (i9 < i6) {
                int[] iArr7 = new int[i5 * i8];
                iArr6[i9] = iArr7;
                int i10 = iNumberOfTrailingZeros;
                int i11 = i6;
                int i12 = 0;
                for (int i13 = 0; i13 < i5; i13 += 2) {
                    System.arraycopy(iArr5, 0, iArr7, i12, i8);
                    int i14 = i12 + i8;
                    b(iArr5, iArr2, iArr3, iArr4, i4);
                    System.arraycopy(iArr4, 0, iArr7, i14, i8);
                    i12 = i14 + i8;
                    b(iArr4, iArr2, iArr3, iArr5, i4);
                }
                i9++;
                iNumberOfTrailingZeros = i10;
                i6 = i11;
            }
            int i15 = iNumberOfTrailingZeros;
            int i16 = i2 - 1;
            for (int i17 = 0; i17 < i2; i17++) {
                int i18 = iArr5[i8 - 16] & i16;
                System.arraycopy(iArr6[i18 >>> i15], (i18 & i7) * i8, iArr4, 0, i8);
                for (int i19 = i8 - 1; i19 >= 0; i19--) {
                    iArr4[i19] = iArr4[i19] ^ iArr5[i19];
                }
                b(iArr4, iArr2, iArr3, iArr5, i4);
            }
            System.arraycopy(iArr5, 0, iArr, i, i8);
            d(iArr6);
            d(new int[][]{iArr5, iArr2, iArr3, iArr4});
        } catch (Throwable th) {
            d(iArr6);
            d(new int[][]{iArr5, iArr2, iArr3, iArr4});
            throw th;
        }
    }

    public static byte[] f(int i, byte[] bArr, byte[] bArr2) {
        h24 h24Var = new h24(new hr6());
        int i2 = h24Var.b;
        byte[] bArr3 = new byte[i2];
        int i3 = (i * 8) / 8;
        int i4 = ((i3 + i2) - 1) / i2;
        byte[] bArr4 = new byte[4];
        byte[] bArr5 = new byte[i4 * i2];
        h24Var.c(new oo4(bArr, bArr.length));
        int i5 = 0;
        for (int i6 = 1; i6 <= i4; i6++) {
            int i7 = 3;
            while (true) {
                byte b2 = (byte) (bArr4[i7] + 1);
                bArr4[i7] = b2;
                if (b2 != 0) {
                    break;
                }
                i7--;
            }
            if (bArr2 != null) {
                h24Var.update(bArr2, 0, bArr2.length);
            }
            h24Var.update(bArr4, 0, 4);
            h24Var.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr5, i5, i2);
            i5 += i2;
        }
        byte[] bArr6 = new byte[i3];
        System.arraycopy(bArr5, 0, bArr6, 0, i3);
        return bArr6;
    }

    public static boolean g(ot1 ot1Var) {
        int[] iArr = ot1Var.p0;
        int i = iArr[0];
        int i2 = iArr[1];
        ot1 ot1Var2 = ot1Var.T;
        pt1 pt1Var = ot1Var2 != null ? (pt1) ot1Var2 : null;
        if (pt1Var != null) {
            int i3 = pt1Var.p0[0];
        }
        if (pt1Var != null) {
            int i4 = pt1Var.p0[1];
        }
        boolean z = i == 1 || ot1Var.A() || i == 2 || (i == 3 && ot1Var.r == 0 && ot1Var.W == 0.0f && ot1Var.t(0)) || (i == 3 && ot1Var.r == 1 && ot1Var.u(0, ot1Var.q()));
        boolean z2 = i2 == 1 || ot1Var.B() || i2 == 2 || (i2 == 3 && ot1Var.s == 0 && ot1Var.W == 0.0f && ot1Var.t(1)) || (i2 == 3 && ot1Var.s == 1 && ot1Var.u(1, ot1Var.k()));
        return (ot1Var.W > 0.0f && (z || z2)) || (z && z2);
    }

    public static void h(String str, boolean z) {
        if (z) {
            return;
        }
        c6.f(str);
    }

    public static void i(Object obj) {
        j(obj, "Argument must not be null");
    }

    public static void j(Object obj, String str) {
        if (obj != null) {
            return;
        }
        f6.n(str);
    }

    public static byte[] k(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static short[] l(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [zm1] */
    public static zm1 m(final mt3... mt3VarArr) {
        if (mt3VarArr.length > 0) {
            return new Comparator() { // from class: zm1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    for (mt3 mt3Var : mt3VarArr) {
                        int iN = ms8.n((Comparable) mt3Var.invoke(obj), (Comparable) mt3Var.invoke(obj2));
                        if (iN != 0) {
                            return iN;
                        }
                    }
                    return 0;
                }
            };
        }
        c6.f("Failed requirement.");
        return null;
    }

    public static int n(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static byte[] o(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            deflater.end();
            throw th3;
        }
    }

    public static byte[] p(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return k(bArr2);
        }
        if (bArr2 == null) {
            return k(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] q(byte[][] bArr) {
        int length = 0;
        for (int i = 0; i != bArr.length; i++) {
            length += bArr[i].length;
        }
        byte[] bArr2 = new byte[length];
        int length2 = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            byte[] bArr3 = bArr[i2];
            System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
            length2 += bArr[i2].length;
        }
        return bArr2;
    }

    public static boolean r(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr2 != null) {
            if (bArr == bArr2) {
                return true;
            }
            int length = bArr.length < bArr2.length ? bArr.length : bArr2.length;
            int length2 = bArr.length ^ bArr2.length;
            for (int i = 0; i != length; i++) {
                length2 |= bArr[i] ^ bArr2[i];
            }
            while (length < bArr2.length) {
                byte b2 = bArr2[length];
                length2 |= b2 ^ (~b2);
                length++;
            }
            if (length2 == 0) {
                return true;
            }
        }
        return false;
    }

    public static int s(int i, int i2) {
        if (i2 <= 1073741823) {
            return Math.min(Math.max(i, i2), 1073741823);
        }
        c6.f(y13.t("min (%s) must be less than or equal to max (%s)", Integer.valueOf(i2), 1073741823));
        return 0;
    }

    public static byte[] t(byte[] bArr, int i, int i2) {
        int iW = w(i, i2);
        byte[] bArr2 = new byte[iW];
        System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, iW));
        return bArr2;
    }

    public static View u(View view, int i) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View viewFindViewById = viewGroup.getChildAt(i2).findViewById(i);
            if (viewFindViewById != null) {
                return viewFindViewById;
            }
        }
        return null;
    }

    public static HashMap v(aa1 aa1Var) {
        HashMap map = new HashMap();
        map.put("timestamp", Long.valueOf(aa1Var.millis()));
        return map;
    }

    public static int w(int i, int i2) {
        int i3 = i2 - i;
        if (i3 >= 0) {
            return i3;
        }
        throw new IllegalArgumentException(i + " > " + i2);
    }

    public static int x(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ bArr[length];
        }
    }

    public static void y(int i, et1 et1Var, ot1 ot1Var, boolean z) {
        ys1 ys1Var;
        ys1 ys1Var2;
        boolean z2;
        ys1 ys1Var3;
        ys1 ys1Var4;
        if (ot1Var.m) {
            return;
        }
        if (!(ot1Var instanceof pt1) && ot1Var.z() && g(ot1Var)) {
            pt1.V(ot1Var, et1Var, new ap0());
        }
        ys1 ys1VarI = ot1Var.i(2);
        ys1 ys1VarI2 = ot1Var.i(4);
        int iD = ys1VarI.d();
        int iD2 = ys1VarI2.d();
        HashSet<ys1> hashSet = ys1VarI.a;
        if (hashSet != null && ys1VarI.c) {
            for (ys1 ys1Var5 : hashSet) {
                ot1 ot1Var2 = ys1Var5.d;
                int i2 = i + 1;
                boolean zG = g(ot1Var2);
                ys1 ys1Var6 = ot1Var2.I;
                ys1 ys1Var7 = ot1Var2.K;
                if (ot1Var2.z() && zG) {
                    z2 = true;
                    pt1.V(ot1Var2, et1Var, new ap0());
                } else {
                    z2 = true;
                }
                boolean z3 = ((ys1Var5 == ys1Var6 && (ys1Var4 = ys1Var7.f) != null && ys1Var4.c) || (ys1Var5 == ys1Var7 && (ys1Var3 = ys1Var6.f) != null && ys1Var3.c)) ? z2 : false;
                int i3 = ot1Var2.p0[0];
                if (i3 != 3 || zG) {
                    if (!ot1Var2.z()) {
                        if (ys1Var5 == ys1Var6 && ys1Var7.f == null) {
                            int iE = ys1Var6.e() + iD;
                            ot1Var2.J(iE, ot1Var2.q() + iE);
                            y(i2, et1Var, ot1Var2, z);
                        } else if (ys1Var5 == ys1Var7 && ys1Var6.f == null) {
                            int iE2 = iD - ys1Var7.e();
                            ot1Var2.J(iE2 - ot1Var2.q(), iE2);
                            y(i2, et1Var, ot1Var2, z);
                        } else if (z3 && !ot1Var2.x()) {
                            M(i2, et1Var, ot1Var2, z);
                        }
                    }
                } else if (i3 == 3 && ot1Var2.v >= 0 && ot1Var2.u >= 0 && (ot1Var2.g0 == 8 || (ot1Var2.r == 0 && ot1Var2.W == 0.0f))) {
                    if (!ot1Var2.x() && !ot1Var2.F && z3 && !ot1Var2.x()) {
                        N(i2, ot1Var, et1Var, ot1Var2, z);
                    }
                }
            }
        }
        if (ot1Var instanceof b24) {
            return;
        }
        HashSet<ys1> hashSet2 = ys1VarI2.a;
        if (hashSet2 != null && ys1VarI2.c) {
            for (ys1 ys1Var8 : hashSet2) {
                ot1 ot1Var3 = ys1Var8.d;
                int i4 = i + 1;
                boolean zG2 = g(ot1Var3);
                ys1 ys1Var9 = ot1Var3.I;
                ys1 ys1Var10 = ot1Var3.K;
                if (ot1Var3.z() && zG2) {
                    pt1.V(ot1Var3, et1Var, new ap0());
                }
                boolean z4 = (ys1Var8 == ys1Var9 && (ys1Var2 = ys1Var10.f) != null && ys1Var2.c) || (ys1Var8 == ys1Var10 && (ys1Var = ys1Var9.f) != null && ys1Var.c);
                int i5 = ot1Var3.p0[0];
                if (i5 != 3 || zG2) {
                    if (!ot1Var3.z()) {
                        if (ys1Var8 == ys1Var9 && ys1Var10.f == null) {
                            int iE3 = ys1Var9.e() + iD2;
                            ot1Var3.J(iE3, ot1Var3.q() + iE3);
                            y(i4, et1Var, ot1Var3, z);
                        } else if (ys1Var8 == ys1Var10 && ys1Var9.f == null) {
                            int iE4 = iD2 - ys1Var10.e();
                            ot1Var3.J(iE4 - ot1Var3.q(), iE4);
                            y(i4, et1Var, ot1Var3, z);
                        } else if (z4 && !ot1Var3.x()) {
                            M(i4, et1Var, ot1Var3, z);
                        }
                    }
                } else if (i5 == 3 && ot1Var3.v >= 0 && ot1Var3.u >= 0) {
                    if (ot1Var3.g0 == 8 || (ot1Var3.r == 0 && ot1Var3.W == 0.0f)) {
                        if (!ot1Var3.x() && !ot1Var3.F && z4 && !ot1Var3.x()) {
                            N(i4, ot1Var, et1Var, ot1Var3, z);
                        }
                    }
                }
            }
        }
        ot1Var.m = true;
    }

    public static boolean z() {
        try {
            return Class.forName("android.os.Looper").getDeclaredMethod("getMainLooper", null).invoke(null, null) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    public abstract View C(int i);

    public abstract boolean D();
}
