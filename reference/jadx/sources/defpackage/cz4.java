package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class cz4 implements cj8, dh5, es9, gt9, cs9, sr9 {
    public static boolean e;
    public static SharedPreferences f;
    public static SharedPreferences.Editor k;
    public static cz4 p;
    public final /* synthetic */ int a;
    public static final cz4 b = new cz4(1);
    public static final cz4 c = new cz4(3);
    public static final cz4 d = new cz4(4);
    public static final cz4 n = new cz4(6);

    public /* synthetic */ cz4(int i) {
        this.a = i;
    }

    public static final List b() throws FileNotFoundException {
        int i = nk7.b;
        gv7 gv7Var = mk7.a;
        jr7 jr7VarH = b05.h();
        if (!jr7VarH.b("[ -e @@ ]")) {
            return null;
        }
        InputStream inputStreamX = xx3.x(jr7VarH);
        try {
            Charset charsetDefaultCharset = Charset.defaultCharset();
            int i2 = n84.a;
            int i3 = g51.a;
            if (charsetDefaultCharset == null) {
                charsetDefaultCharset = Charset.defaultCharset();
            }
            List list = (List) new BufferedReader(new InputStreamReader(inputStreamX, charsetDefaultCharset)).lines().collect(Collectors.toList());
            rs9.c(inputStreamX, null);
            return list;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(inputStreamX, th);
                throw th2;
            }
        }
    }

    public static final boolean c(Exception exc, List list, String str) {
        String strB = io4.b(exc);
        if (str == null || str.length() == 0) {
            return false;
        }
        List listA0 = fl1.A0("code:DATAERROR", "code:CRCERROR");
        if (listA0.isEmpty()) {
            return false;
        }
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            if (nq7.Z(strB, (String) it.next(), true)) {
                if (list == null) {
                    return false;
                }
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        char[] cArr = (char[]) it2.next();
                        String strE = null;
                        if (cArr != null && cArr.length != 0) {
                            String str2 = new String(cArr);
                            if (str2.length() != 0 && !nq7.j0(str2)) {
                                strE = sz8.E(str2);
                            }
                        }
                        if (pe4.d(strE, str)) {
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void g(long j, String str) {
        SharedPreferences.Editor editor = k;
        if (editor != null) {
            editor.putLong(str, j).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void h(String str, String str2) {
        SharedPreferences.Editor editor = k;
        if (editor != null) {
            editor.putString(str, str2).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static void i(String str) {
        SharedPreferences.Editor editor = k;
        if (editor != null) {
            editor.remove(str).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static int j(ca4 ca4Var, float f2) {
        boolean zEquals = "em".equals(ca4Var.b);
        float f3 = ca4Var.a;
        if (zEquals) {
            f3 *= f2;
        }
        return (int) (f3 + 0.5f);
    }

    public static long k(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j == 0) {
            return 0L;
        }
        long j2 = 1000 * j;
        return Math.abs(jCurrentTimeMillis - j) <= Math.abs(jCurrentTimeMillis - j2) ? j : j2;
    }

    public static SharedPreferences l(Context context, String str) {
        return context.getSharedPreferences("com.google.firebase.auth.internal.browserSignInSessionStore." + str, 0);
    }

    public static void m(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        Iterator<String> it = sharedPreferences.getAll().keySet().iterator();
        while (it.hasNext()) {
            editorEdit.remove(it.next());
        }
        editorEdit.apply();
    }

    @Override // defpackage.sr9
    public byte[] a(byte[] bArr, byte[] bArr2) {
        return nc8.w0(bArr, bArr2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r7 == r5) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [qg3] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object d(defpackage.qg3 r8, defpackage.kv1 r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.xc4
            if (r0 == 0) goto L13
            r0 = r9
            xc4 r0 = (defpackage.xc4) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            xc4 r0 = new xc4
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r7 = r0.b
            int r9 = r0.d
            java.lang.String r1 = "FirebaseSessions"
            r2 = 2
            r3 = 1
            java.lang.String r4 = ""
            yx1 r5 = defpackage.yx1.a
            if (r9 == 0) goto L46
            if (r9 == r3) goto L3c
            if (r9 != r2) goto L35
            java.lang.Object r8 = r0.a
            java.lang.String r8 = (java.lang.String) r8
            defpackage.lg7.H(r7)     // Catch: java.lang.Exception -> L32
            goto L8b
        L32:
            r7 = move-exception
            goto L92
        L35:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            r7 = 0
            return r7
        L3c:
            java.lang.Object r8 = r0.a
            qg3 r8 = (defpackage.qg3) r8
            defpackage.lg7.H(r7)     // Catch: java.lang.Exception -> L44
            goto L61
        L44:
            r7 = move-exception
            goto L70
        L46:
            defpackage.lg7.H(r7)
            r7 = r8
            pg3 r7 = (defpackage.pg3) r7     // Catch: java.lang.Exception -> L44
            com.google.android.gms.tasks.Task r8 = r7.d()     // Catch: java.lang.Exception -> L44
            r8.getClass()     // Catch: java.lang.Exception -> L6c
            r0.a = r7     // Catch: java.lang.Exception -> L6c
            r0.d = r3     // Catch: java.lang.Exception -> L6c
            java.lang.Object r8 = defpackage.sz8.c(r8, r0)     // Catch: java.lang.Exception -> L6c
            if (r8 != r5) goto L5e
            goto L8a
        L5e:
            r6 = r8
            r8 = r7
            r7 = r6
        L61:
            vd0 r7 = (defpackage.vd0) r7     // Catch: java.lang.Exception -> L44
            java.lang.String r7 = r7.a     // Catch: java.lang.Exception -> L44
            r7.getClass()     // Catch: java.lang.Exception -> L44
            r6 = r8
            r8 = r7
            r7 = r6
            goto L77
        L6c:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L70:
            java.lang.String r9 = "Error getting authentication token."
            android.util.Log.w(r1, r9, r7)
            r7 = r8
            r8 = r4
        L77:
            pg3 r7 = (defpackage.pg3) r7     // Catch: java.lang.Exception -> L32
            com.google.android.gms.tasks.Task r7 = r7.c()     // Catch: java.lang.Exception -> L32
            r7.getClass()     // Catch: java.lang.Exception -> L32
            r0.a = r8     // Catch: java.lang.Exception -> L32
            r0.d = r2     // Catch: java.lang.Exception -> L32
            java.lang.Object r7 = defpackage.sz8.c(r7, r0)     // Catch: java.lang.Exception -> L32
            if (r7 != r5) goto L8b
        L8a:
            return r5
        L8b:
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L32
            if (r7 != 0) goto L90
            goto L97
        L90:
            r4 = r7
            goto L97
        L92:
            java.lang.String r9 = "Error getting Firebase installation id ."
            android.util.Log.w(r1, r9, r7)
        L97:
            yc4 r7 = new yc4
            r7.<init>(r4, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cz4.d(qg3, kv1):java.lang.Object");
    }

    public Signature[] e(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    @Override // defpackage.es9
    public pt9 f(vm4 vm4Var) {
        uf9 uf9Var = (uf9) vm4Var;
        al9.c(uf9Var.d);
        kw9 kw9VarW = lw9.w();
        byte[] bArrB = ((d2a) uf9Var.e.a).b();
        x69 x69VarG = t69.g(bArrB, 0, bArrB.length);
        kw9VarW.c();
        lw9.v((lw9) kw9VarW.b, x69VarG);
        return pt9.a("type.googleapis.com/google.crypto.tink.AesGcmKey", ((lw9) kw9VarW.b()).b(), 2, al9.b(uf9Var.d.d), uf9Var.k);
    }

    @Override // defpackage.cs9
    public vm4 n(pt9 pt9Var) throws GeneralSecurityException {
        switch (this.a) {
            case 26:
                if (!pt9Var.a.equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
                    c6.f("Wrong type URL in call to AesSivParameters.parseParameters");
                    return null;
                }
                try {
                    yw9 yw9VarU = yw9.u(pt9Var.c, f79.a);
                    if (yw9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    wc9 wc9VarB = dp9.b();
                    wc9VarB.g(yw9VarU.x().d());
                    wc9VarB.c = lp9.a(pt9Var.e);
                    dp9 dp9VarF = wc9VarB.f();
                    dr drVar = new dr(7);
                    drVar.c = null;
                    drVar.d = null;
                    drVar.b = dp9VarF;
                    drVar.c = new km8(d2a.a(yw9VarU.x().w()));
                    drVar.d = pt9Var.f;
                    return drVar.i();
                } catch (p79 unused) {
                    m0.h("Parsing AesSivKey failed");
                    return null;
                }
            default:
                String str = pt9Var.a;
                Integer num = pt9Var.f;
                if (!str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
                    c6.f(xs1.j("Wrong type URL in call to EciesProtoSerialization.parsePrivateKey: ", str));
                    return null;
                }
                try {
                    tx9 tx9VarU = tx9.u(pt9Var.c, f79.a);
                    if (tx9VarU.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    wx9 wx9VarZ = tx9VarU.z();
                    if (wx9VarZ.t() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    cq9 cq9VarB = gr9.b(pt9Var.e, wx9VarZ.y());
                    return cq9VarB.a.equals(yp9.e) ? fq9.L(nq9.L(cq9VarB, d2a.a(wx9VarZ.C().w()), num), new km8(d2a.a(tx9VarU.A().w()))) : fq9.M(nq9.K(cq9VarB, new ECPoint(wx3.G(wx9VarZ.C().w()), wx3.G(wx9VarZ.D().w())), num), new vk9(wx3.G(tx9VarU.A().w()), 22));
                } catch (IllegalArgumentException | p79 unused2) {
                    m0.h("Parsing EcdsaPrivateKey failed");
                    return null;
                }
        }
    }

    @Override // defpackage.gt9
    public ot9 p(bd9 bd9Var) {
        switch (this.a) {
            case 25:
                lz9 lz9VarT = mz9.t();
                lz9VarT.f("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
                lz9VarT.h(g1a.v().b());
                lz9VarT.e(ao9.b(((ik9) bd9Var).a));
                return ot9.m((mz9) lz9VarT.b());
            default:
                lq9 lq9Var = (lq9) bd9Var;
                lz9 lz9VarT2 = mz9.t();
                lz9VarT2.f("type.googleapis.com/google.crypto.tink.HpkePrivateKey");
                vy9 vy9VarV = wy9.v();
                az9 az9VarD = rq9.d(lq9Var);
                vy9VarV.c();
                wy9.u((wy9) vy9VarV.b, az9VarD);
                lz9VarT2.h(((wy9) vy9VarV.b()).b());
                lz9VarT2.e((r0a) rq9.g.k(lq9Var.d));
                return ot9.m((mz9) lz9VarT2.b());
        }
    }

    @Override // defpackage.cj8
    public Object r(ul4 ul4Var, float f2) {
        return Integer.valueOf(Math.round(gn4.d(ul4Var) * f2));
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new fe8(2);
    }
}
