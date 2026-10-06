package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.internal.bind.JsonElementTypeAdapter;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class od2 {
    public static final Field[] a = new Field[0];
    public static final Object[] b = new Object[0];
    public static final Throwable[] c = new Throwable[0];
    public static final lk d = new lk();
    public static final int[] e = {-1420278541, 595116690, -1916432555, 560775794, -1361693040, -1001465015, 2093622249, -1, -1, -1, -1, -1, -1, 1073741823};
    public static final int[] f = {463601321, -1045562440, 1239460018, -1189350089, -412821483, 1160071467, -1564970643, 1256291574, -1170454588, -240530412, 2118977290, -1845154869, -1618855054, -1019204973, 1437344377, -1849925303, 1189267370, 280387897, -680846520, -500732508, -1100672524, -1, -1, -1, -1, -1, -1, 268435455};
    public static final mm9 g = new mm9("id");
    public static final mm9 h = new mm9("type");

    public static ArrayList A(List list) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            e69 e69Var = (e69) it.next();
            Object v88Var = null;
            if (e69Var != null) {
                if (TextUtils.isEmpty(e69Var.a)) {
                    i69 i69Var = e69Var.e;
                    if (i69Var != null) {
                        v88Var = new v88(e69Var.b, e69Var.c, e69Var.d, i69Var);
                    }
                } else {
                    String str = e69Var.b;
                    String str2 = e69Var.c;
                    long j = e69Var.d;
                    String str3 = e69Var.a;
                    ly8.e(str3);
                    v88Var = new yz5(str, str2, j, str3);
                }
            }
            if (v88Var != null) {
                arrayList.add(v88Var);
            }
        }
        return arrayList;
    }

    public static boolean B(byte b2) {
        return b2 > -65;
    }

    public static final Exception a(zn2 zn2Var, String str, Exception exc) {
        if (exc instanceof d22) {
            return new d22(zn2Var, str);
        }
        if (exc instanceof vw3) {
            return new vw3(zn2Var, str);
        }
        throw new fs3();
    }

    public static void c(byte[] bArr, int[] iArr) {
        g67.m(bArr, 14, iArr);
    }

    public static boolean d(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : fileArrListFiles) {
            z = d(file2) && z;
        }
        return z;
    }

    public static final Object e(t26 t26Var, String str, kv1 kv1Var) {
        Object objC = t26Var.c(str, new rx(6), kv1Var);
        return objC == yx1.a ? objC : be8.a;
    }

    public static String f(q63 q63Var) {
        String strP = q63Var.p();
        int iK0 = nq7.k0('.', 0, 6, strP);
        if (iK0 < 0 || iK0 >= strP.length() - 1) {
            return "";
        }
        String strSubstring = strP.substring(iK0 + 1);
        Locale locale = Locale.ROOT;
        return dj7.q(locale, strSubstring, locale);
    }

    public static Object h(mx1 mx1Var, Object obj, qt3 qt3Var) {
        qt3Var.getClass();
        return qt3Var.invoke(obj, mx1Var);
    }

    public static char[] i(Integer num, String str, String str2) {
        str.getClass();
        str2.getClass();
        if (num.intValue() == 1) {
            char[] charArray = sz8.E(nq7.u0(str).toString().concat(nq7.u0(uq7.T(str2, ".", "")).toString())).toCharArray();
            charArray.getClass();
            return charArray;
        }
        char[] charArray2 = str.toCharArray();
        charArray2.getClass();
        return charArray2;
    }

    public static qp4 j(up4 up4Var, lp4 lp4Var, int i, byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr2.length >= up4Var.b) {
            return new qp4(up4Var, lp4Var, i, bArr, 1 << up4Var.c, bArr2);
        }
        z5.c(up4Var.b, "root seed is less than ");
        return null;
    }

    public static mx1 k(mx1 mx1Var, nx1 nx1Var) {
        nx1Var.getClass();
        if (pe4.d(mx1Var.getKey(), nx1Var)) {
            return mx1Var;
        }
        return null;
    }

    public static final String l(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static int m(Object obj) {
        if (obj != null) {
            return Array.getLength(obj);
        }
        return 0;
    }

    public static boolean o(Object obj) {
        return m(obj) == 0;
    }

    public static boolean p(Object obj) {
        if (obj == null) {
            return true;
        }
        if ((obj instanceof String) && ((String) obj).trim().length() == 0) {
            return true;
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        if (obj instanceof List) {
            return ((List) obj).isEmpty();
        }
        return (obj instanceof Object[]) && ((Object[]) obj).length == 0;
    }

    public static boolean q(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static ox1 r(mx1 mx1Var, nx1 nx1Var) {
        nx1Var.getClass();
        return pe4.d(mx1Var.getKey(), nx1Var) ? lv2.a : mx1Var;
    }

    public static qj4 t(tl4 tl4Var) {
        boolean z;
        try {
            try {
                tl4Var.peek();
                z = false;
                try {
                    JsonElementTypeAdapter.a.getClass();
                    return JsonElementTypeAdapter.a(tl4Var);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return el4.a;
                    }
                    throw new km4(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (NumberFormatException e4) {
            throw new km4(e4);
        } catch (m55 e5) {
            throw new km4(e5);
        } catch (IOException e6) {
            throw new ik4(e6);
        }
    }

    public static ox1 u(mx1 mx1Var, ox1 ox1Var) {
        ox1Var.getClass();
        return iz1.s(mx1Var, ox1Var);
    }

    public static byte[] w(byte[] bArr) {
        long jL = ((long) g67.l(bArr, 0)) & 4294967295L;
        long jK = ((long) (g67.k(bArr, 4) << 4)) & 4294967295L;
        long jL2 = ((long) g67.l(bArr, 7)) & 4294967295L;
        long jK2 = ((long) (g67.k(bArr, 11) << 4)) & 4294967295L;
        long jL3 = ((long) g67.l(bArr, 14)) & 4294967295L;
        long jK3 = ((long) (g67.k(bArr, 18) << 4)) & 4294967295L;
        long jL4 = ((long) g67.l(bArr, 21)) & 4294967295L;
        long jK4 = ((long) (g67.k(bArr, 25) << 4)) & 4294967295L;
        long jL5 = ((long) g67.l(bArr, 28)) & 4294967295L;
        long jK5 = ((long) (g67.k(bArr, 32) << 4)) & 4294967295L;
        long jL6 = ((long) g67.l(bArr, 35)) & 4294967295L;
        long jK6 = ((long) (g67.k(bArr, 39) << 4)) & 4294967295L;
        long jL7 = ((long) g67.l(bArr, 42)) & 4294967295L;
        long jK7 = ((long) (g67.k(bArr, 46) << 4)) & 4294967295L;
        long jL8 = ((long) g67.l(bArr, 49)) & 4294967295L;
        long jK8 = ((long) (g67.k(bArr, 53) << 4)) & 4294967295L;
        long jL9 = ((long) g67.l(bArr, 56)) & 4294967295L;
        long jK9 = ((long) (g67.k(bArr, 60) << 4)) & 4294967295L;
        long jL10 = ((long) g67.l(bArr, 63)) & 4294967295L;
        long jK10 = ((long) (g67.k(bArr, 67) << 4)) & 4294967295L;
        long jL11 = ((long) g67.l(bArr, 70)) & 4294967295L;
        long jK11 = ((long) (g67.k(bArr, 74) << 4)) & 4294967295L;
        long jL12 = ((long) g67.l(bArr, 77)) & 4294967295L;
        long jK12 = ((long) (g67.k(bArr, 81) << 4)) & 4294967295L;
        long jL13 = g67.l(bArr, 84);
        long j = jL13 & 4294967295L;
        long jK13 = ((long) (g67.k(bArr, 88) << 4)) & 4294967295L;
        long jL14 = g67.l(bArr, 91);
        long j2 = jL14 & 4294967295L;
        long jK14 = ((long) (g67.k(bArr, 95) << 4)) & 4294967295L;
        long jL15 = g67.l(bArr, 98);
        long j3 = jL15 & 4294967295L;
        long jK15 = ((long) (g67.k(bArr, 102) << 4)) & 4294967295L;
        long jL16 = g67.l(bArr, 105);
        long jK16 = ((long) (g67.k(bArr, 109) << 4)) & 4294967295L;
        long j4 = ((long) ((bArr[112] & 255) | ((bArr[113] & 255) << 8))) & 4294967295L;
        long j5 = jK16 + ((jL16 & 4294967295L) >>> 28);
        long j6 = jL16 & 268435455;
        long j7 = (j6 * 163752818) + (j5 * 30366549) + (j4 * 43969588) + jL9;
        long j8 = (j6 * 258169998) + (j5 * 163752818) + (j4 * 30366549) + jK9;
        long j9 = (j6 * 96434764) + (j5 * 258169998) + (j4 * 163752818) + jL10;
        long j10 = (j6 * 227822194) + (j5 * 96434764) + (j4 * 258169998) + jK10;
        long j11 = (j6 * 149865618) + (j5 * 227822194) + (j4 * 96434764) + jL11;
        long j12 = jK15 + (j3 >>> 28);
        long j13 = jL15 & 268435455;
        long j14 = (j12 * 43969588) + jK7;
        long j15 = (j12 * 30366549) + (j6 * 43969588) + jL8;
        long j16 = (j12 * 163752818) + (j6 * 30366549) + (j5 * 43969588) + jK8;
        long j17 = (j12 * 258169998) + j7;
        long j18 = (j12 * 96434764) + j8;
        long j19 = (j12 * 227822194) + j9;
        long j20 = (j12 * 149865618) + j10;
        long j21 = (j12 * 550336261) + j11;
        long j22 = (j13 * 43969588) + jL7;
        long j23 = (j13 * 30366549) + j14;
        long j24 = (j13 * 163752818) + j15;
        long j25 = (j13 * 258169998) + j16;
        long j26 = (j13 * 96434764) + j17;
        long j27 = (j13 * 227822194) + j18;
        long j28 = (j13 * 149865618) + j19;
        long j29 = (j13 * 550336261) + j20;
        long j30 = jK14 + (j2 >>> 28);
        long j31 = jL14 & 268435455;
        long j32 = (j30 * 163752818) + j23;
        long j33 = (j30 * 258169998) + j24;
        long j34 = (j30 * 149865618) + j27;
        long j35 = (j31 * 43969588) + jL6;
        long j36 = (j31 * 30366549) + (j30 * 43969588) + jK6;
        long j37 = (j31 * 163752818) + (j30 * 30366549) + j22;
        long j38 = (j31 * 258169998) + j32;
        long j39 = (j31 * 96434764) + j33;
        long j40 = (j31 * 227822194) + (j30 * 96434764) + j25;
        long j41 = (j31 * 149865618) + (j30 * 227822194) + j26;
        long j42 = (j31 * 550336261) + j34;
        long j43 = jK13 + (j >>> 28);
        long j44 = (j43 * 30366549) + j35;
        long j45 = (j43 * 163752818) + j36;
        long j46 = (j43 * 258169998) + j37;
        long j47 = (j43 * 149865618) + j40;
        long j48 = (j6 * 550336261) + (j5 * 149865618) + (j4 * 227822194) + jK11 + (j21 >>> 28);
        long j49 = j21 & 268435455;
        long j50 = (j5 * 550336261) + (j4 * 149865618) + jL12 + (j48 >>> 28);
        long j51 = (j4 * 550336261) + jK12 + (j50 >>> 28);
        long j52 = j50 & 268435455;
        long j53 = (jL13 & 268435455) + (j51 >>> 28);
        long j54 = j51 & 268435455;
        long j55 = (j53 * 43969588) + jL5;
        long j56 = (j53 * 30366549) + (j43 * 43969588) + jK5;
        long j57 = (j53 * 163752818) + j44;
        long j58 = (j53 * 258169998) + j45;
        long j59 = (j53 * 96434764) + j46;
        long j60 = (j53 * 227822194) + (j43 * 96434764) + j38;
        long j61 = (j53 * 149865618) + (j43 * 227822194) + j39;
        long j62 = (j53 * 550336261) + j47;
        long j63 = (j54 * 43969588) + jK4;
        long j64 = (j54 * 30366549) + j55;
        long j65 = (j54 * 163752818) + j56;
        long j66 = (j54 * 258169998) + j57;
        long j67 = (j54 * 96434764) + j58;
        long j68 = (j54 * 227822194) + j59;
        long j69 = (j54 * 149865618) + j60;
        long j70 = (j54 * 550336261) + j61;
        long j71 = (j52 * 43969588) + jL4;
        long j72 = (j52 * 30366549) + j63;
        long j73 = (j52 * 163752818) + j64;
        long j74 = (j52 * 258169998) + j65;
        long j75 = (j52 * 96434764) + j66;
        long j76 = (j52 * 227822194) + j67;
        long j77 = (j52 * 149865618) + j68;
        long j78 = (j52 * 550336261) + j69;
        long j79 = (j30 * 550336261) + j28 + (j42 >>> 28);
        long j80 = j42 & 268435455;
        long j81 = j29 + (j79 >>> 28);
        long j82 = j79 & 268435455;
        long j83 = j49 + (j81 >>> 28);
        long j84 = j81 & 268435455;
        long j85 = (j48 & 268435455) + (j83 >>> 28);
        long j86 = j83 & 268435455;
        long j87 = (j85 * 43969588) + jK3;
        long j88 = (j85 * 30366549) + j71;
        long j89 = (j85 * 163752818) + j72;
        long j90 = (j85 * 258169998) + j73;
        long j91 = (j85 * 96434764) + j74;
        long j92 = (j85 * 227822194) + j75;
        long j93 = (j85 * 149865618) + j76;
        long j94 = (j85 * 550336261) + j77;
        long j95 = (j86 * 163752818) + j88;
        long j96 = (j86 * 258169998) + j89;
        long j97 = (j86 * 96434764) + j90;
        long j98 = (j86 * 227822194) + j91;
        long j99 = (j86 * 149865618) + j92;
        long j100 = (j84 * 43969588) + jK2;
        long j101 = (j84 * 30366549) + (j86 * 43969588) + jL3;
        long j102 = (j84 * 163752818) + (j86 * 30366549) + j87;
        long j103 = (j84 * 258169998) + j95;
        long j104 = (j84 * 96434764) + j96;
        long j105 = (j84 * 227822194) + j97;
        long j106 = (j84 * 149865618) + j98;
        long j107 = (j84 * 550336261) + j99;
        long j108 = j62 + (j70 >>> 28);
        long j109 = (j43 * 550336261) + j41 + (j108 >>> 28);
        long j110 = j80 + (j109 >>> 28);
        long j111 = j109 & 268435455;
        long j112 = j82 + (j110 >>> 28);
        long j113 = j110 & 268435455;
        long j114 = (j112 * 43969588) + jL2;
        long j115 = (j112 * 30366549) + j100;
        long j116 = (j112 * 163752818) + j101;
        long j117 = (j112 * 258169998) + j102;
        long j118 = (j112 * 96434764) + j103;
        long j119 = (43969588 * j113) + jK;
        long j120 = (163752818 * j113) + j115;
        long j121 = j108 & 67108863;
        long j122 = (j111 * 4) + ((j108 & 268435455) >>> 26) + 1;
        long j123 = (j122 * 78101261) + jL;
        long j124 = (j122 * 141809365) + j119;
        long j125 = (j122 * 175155932) + (30366549 * j113) + j114;
        long j126 = (j122 * 64542499) + j120;
        long j127 = (j122 * 158326419) + (258169998 * j113) + j116;
        long j128 = (j122 * 191173276) + (96434764 * j113) + j117;
        long j129 = (j122 * 104575268) + (227822194 * j113) + j118;
        long j130 = j124 + (j123 >>> 28);
        long j131 = j125 + (j130 >>> 28);
        long j132 = j126 + (j131 >>> 28);
        long j133 = j127 + (j132 >>> 28);
        long j134 = j128 + (j133 >>> 28);
        long j135 = j129 + (j134 >>> 28);
        long j136 = (j122 * 137584065) + (149865618 * j113) + (j112 * 227822194) + j104 + (j135 >>> 28);
        long j137 = (j113 * 550336261) + (j112 * 149865618) + j105 + (j136 >>> 28);
        long j138 = (j112 * 550336261) + j106 + (j137 >>> 28);
        long j139 = j107 + (j138 >>> 28);
        long j140 = (j86 * 550336261) + j93 + (j139 >>> 28);
        long j141 = j94 + (j140 >>> 28);
        long j142 = j78 + (j141 >>> 28);
        long j143 = (j70 & 268435455) + (j142 >>> 28);
        long j144 = j121 + (j143 >>> 28);
        long j145 = (j144 >>> 26) - 1;
        long j146 = (j123 & 268435455) - (j145 & 78101261);
        long j147 = ((j130 & 268435455) - (j145 & 141809365)) + (j146 >> 28);
        long j148 = ((j131 & 268435455) - (j145 & 175155932)) + (j147 >> 28);
        long j149 = j147 & 268435455;
        long j150 = ((j132 & 268435455) - (j145 & 64542499)) + (j148 >> 28);
        long j151 = ((j133 & 268435455) - (j145 & 158326419)) + (j150 >> 28);
        long j152 = ((j134 & 268435455) - (j145 & 191173276)) + (j151 >> 28);
        long j153 = ((j135 & 268435455) - (j145 & 104575268)) + (j152 >> 28);
        long j154 = ((j136 & 268435455) - (j145 & 137584065)) + (j153 >> 28);
        long j155 = (j137 & 268435455) + (j154 >> 28);
        long j156 = (j138 & 268435455) + (j155 >> 28);
        long j157 = (j139 & 268435455) + (j156 >> 28);
        long j158 = (j140 & 268435455) + (j157 >> 28);
        long j159 = (j141 & 268435455) + (j158 >> 28);
        long j160 = (j142 & 268435455) + (j159 >> 28);
        long j161 = (j143 & 268435455) + (j160 >> 28);
        long j162 = j160 & 268435455;
        byte[] bArr2 = new byte[57];
        g67.p(0, (j146 & 268435455) | (j149 << 28), bArr2);
        g67.p(7, ((j150 & 268435455) << 28) | (j148 & 268435455), bArr2);
        g67.p(14, ((j152 & 268435455) << 28) | (j151 & 268435455), bArr2);
        g67.p(21, (j153 & 268435455) | ((j154 & 268435455) << 28), bArr2);
        g67.p(28, (j155 & 268435455) | ((j156 & 268435455) << 28), bArr2);
        g67.p(35, (j157 & 268435455) | ((j158 & 268435455) << 28), bArr2);
        g67.p(42, (j159 & 268435455) | (j162 << 28), bArr2);
        g67.p(49, (j161 & 268435455) | (((j144 & 67108863) + (j161 >> 28)) << 28), bArr2);
        return bArr2;
    }

    public static final String z(jv1 jv1Var) {
        Object bn6Var;
        if (jv1Var instanceof ym2) {
            return ((ym2) jv1Var).toString();
        }
        try {
            bn6Var = jv1Var + '@' + l(jv1Var);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) != null) {
            bn6Var = jv1Var.getClass().getName() + '@' + l(jv1Var);
        }
        return (String) bn6Var;
    }

    public abstract int b();

    public ib g(gc8 gc8Var, c87 c87Var, kp0 kp0Var) {
        em4 em4VarI = c87Var.i(gc8Var, kp0Var);
        return new ib(9, em4VarI, s(gc8Var.f, em4VarI));
    }

    public abstract boolean n();

    public abstract od2 s(Class cls, em4 em4Var);

    public abstract int v(byte[] bArr, int i, int i2);

    public abstract em4 x(Class cls);

    public abstract int y();
}
