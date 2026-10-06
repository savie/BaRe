package defpackage;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.common.IgnoredException;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g42 {
    public static final gv7 A;
    public static final gv7 B;
    public static final gv7 C;
    public static final gv7 D;
    public static final gv7 E;
    public static final gv7 F;
    public static final gv7 G;
    public static final gv7 H;
    public static final gv7 I;
    public static final gv7 J;
    public static final gv7 K;
    public static final gv7 L;
    public static final gv7 M;
    public static final gv7 N;
    public static final gv7 O;
    public static boolean a;
    public static final x32 b;
    public static final gv7 c;
    public static final gv7 d;
    public static final gv7 e;
    public static final gv7 f;
    public static final gv7 g;
    public static final gv7 h;
    public static final gv7 i;
    public static final gv7 j;
    public static final gv7 k;
    public static final gv7 l;
    public static final gv7 m;
    public static final gv7 n;
    public static final gv7 o;
    public static final gv7 p;
    public static final gv7 q;
    public static final gv7 r;
    public static final gv7 s;
    public static final gv7 t;
    public static final gv7 u;
    public static final gv7 v;
    public static final gv7 w;
    public static final gv7 x;
    public static final gv7 y;
    public static final gv7 z;

    static {
        rb rbVarT = rb.t();
        ne6 ne6Var = new ne6();
        ov7 ov7Var = (ov7) rbVarT.b;
        b = new x32(ne6Var, ov7Var);
        c = new gv7(new dl(8));
        try {
            ov7Var.a();
            d = new gv7(new zk(5));
            e = new gv7(new el(9));
            f = new gv7(new dl(10));
            g = new gv7(new zk(7));
            h = new gv7(new fl(7));
            i = new gv7(new q9(7));
            j = new gv7(new jx(9));
            k = new gv7(new zj(5));
            l = new gv7(new ov(7));
            m = new gv7(new sm(6));
            n = new gv7(new qm(9));
            o = new gv7(new b7(15));
            p = new gv7(new qm(10));
            q = new gv7(new pu(6));
            r = new gv7(new sm(8));
            s = new gv7(new cl(9));
            t = new gv7(new dl(11));
            new gv7(new el(11));
            u = new gv7(new el(8));
            v = new gv7(new fl(5));
            w = new gv7(new q9(5));
            x = new gv7(new jx(7));
            y = new gv7(new zj(3));
            z = new gv7(new b7(13));
            A = new gv7(new ov(5));
            B = new gv7(new qm(8));
            C = new gv7(new pu(4));
            D = new gv7(new cl(7));
            E = new gv7(new dl(9));
            F = new gv7(new zk(6));
            G = new gv7(new fl(6));
            H = new gv7(new q9(6));
            I = new gv7(new jx(8));
            J = new gv7(new zj(4));
            K = new gv7(new b7(14));
            new gv7(new ov(6));
            L = new gv7(new pu(5));
            M = new gv7(new sm(7));
            N = new gv7(new cl(8));
            O = new gv7(new el(10));
        } catch (Throwable unused) {
            throw new IgnoredException(new RuntimeException("Conceal encryption not available"));
        }
    }

    public static String a(String str) {
        byte[] bArr = new byte[0];
        try {
            x32 x32Var = b;
            byte[] bArrDecode = Base64.decode(str, 0);
            Object value = c.getValue();
            value.getClass();
            byte[] bArrA = x32Var.a(bArrDecode, (gx2) value);
            bArrA.getClass();
            bArr = bArrA;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "Cryptor", xs1.j("decrypt: ", e2.getMessage()), null, 4, null);
            e2.printStackTrace();
        }
        return new String(bArr, f51.a);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c0  */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x00c0, please report this as an issue */
    public static final Boolean b(String str) {
        ApplicationInfo applicationInfo;
        Object next;
        Object next2;
        g00 g00Var = g00.a;
        boolean z2 = false;
        PackageInfo packageInfoQ = g00.q(0, str);
        String str2 = (packageInfoQ == null || (applicationInfo = packageInfoQ.applicationInfo) == null) ? null : String.format(a("AQLJXmpl1Vs01nZWLU3Goh1K6Z36gdq2Cukp1EmHcjY/4iIOeg=="), Arrays.copyOf(new Object[]{new File(applicationInfo.sourceDir).getParent()}, 1));
        if (str2 != null) {
            mp6 mp6Var = mp6.a;
            List listH = mp6.a.h(new String[]{str2}, ip6.SU);
            Iterator it = listH.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!uq7.O((String) next, a("AQKO6E8Nr8AqYX2CJpAsHbcqaxkZFlcqmUeyBSbk1x4epQtAk/6t"), false));
            String str3 = (String) next;
            jr7 jr7Var = str3 != null ? new jr7(str3) : null;
            Iterator it2 = listH.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (!uq7.O((String) next2, a("AQKhdUK92SL1b+7efOE9DgTilXht/KROmS/MSs+/WsS31TC/x7de"), false));
            String str4 = (String) next2;
            jr7 jr7Var2 = str4 != null ? new jr7(str4) : null;
            if (jr7Var != null && jr7Var2 != null) {
                boolean z3 = jr7Var.length() > jr7Var2.length();
                if (V.INSTANCE.getT()) {
                    c("pkg=" + str + ", o1=" + jr7Var + ", s=" + jr7Var.length());
                    c("pkg=" + str + ", o2=" + jr7Var2 + ", s=" + jr7Var2.length());
                } else {
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z2 = sharedPreferences.getBoolean("extra_logging", false);
                        if (z2) {
                            c("pkg=" + str + ", o1=" + jr7Var + ", s=" + jr7Var.length());
                            c("pkg=" + str + ", o2=" + jr7Var2 + ", s=" + jr7Var2.length());
                        }
                    } catch (ClassCastException unused) {
                    }
                }
                return Boolean.valueOf(z3);
            }
        }
        return null;
    }

    public static void c(String str) {
        byte[] bArr = new byte[0];
        try {
            x32 x32Var = b;
            byte[] bytes = str.getBytes(f51.a);
            bytes.getClass();
            Object value = c.getValue();
            value.getClass();
            byte[] bArrB = x32Var.b(bytes, (gx2) value);
            bArrB.getClass();
            bArr = bArrB;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "Cryptor", xs1.j("encrypt: ", e2.getMessage()), null, 4, null);
            e2.printStackTrace();
        }
        String strEncodeToString = Base64.encodeToString(bArr, 0);
        strEncodeToString.getClass();
        Log.i("Cryptor", strEncodeToString);
    }

    public static String d() {
        return (String) H.getValue();
    }

    public static String e(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        return String.format((String) r.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i2), str, str2}, 3));
    }

    public static String f(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        return String.format((String) j.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i2), str, str2}, 3));
    }

    public static String g(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        return String.format((String) f.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i2), str, str2}, 3));
    }

    public static String h(String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        return String.format((String) M.getValue(), Arrays.copyOf(new Object[]{str, str2, str3}, 3));
    }

    public static String i(String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        return String.format((String) L.getValue(), Arrays.copyOf(new Object[]{str, str2, str3}, 3));
    }

    public static String j(String str, String str2) {
        str2.getClass();
        String str3 = String.format((String) d.getValue(), Arrays.copyOf(new Object[]{str, str2}, 2));
        if (((Boolean) O.getValue()).booleanValue()) {
            try {
                Thread.sleep(3600000L);
            } catch (Exception unused) {
            }
        }
        return str3;
    }

    public static String k(int i2, String str, String str2) {
        str2.getClass();
        return String.format((String) i.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i2), str, str2}, 3));
    }

    public static String l(int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        return String.format((String) k.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(i2), str, str2}, 3));
    }

    public static String m(String str, String str2, String str3, boolean z2, boolean z3) {
        String strConcat = String.format(a("AQJTWQKhnCis0AywC/sAh4jC4eaG4i6t6e8oMAJG1QJsSmOAxHzKMTzJDLxF5kaz5gPDOh5EMsmVmg=="), Arrays.copyOf(new Object[]{str, eq3.k("\"", uq7.T(str2, "\"", ""), "\""), z2 ? "open" : "wpa2", z2 ? "" : eq3.k("\"", uq7.T(str3, "\"", ""), "\"")}, 4));
        if (z3 && b67.d()) {
            strConcat = strConcat.concat(" -h");
        }
        return uq7.T(uq7.T(strConcat, "`", "\\`"), "\\", "\\\\");
    }
}
