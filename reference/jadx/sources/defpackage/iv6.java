package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv6 {
    public static final byte[] g = l73.x("SMBC2SCipherKey");
    public static final byte[] h = l73.x("SMBS2CCipherKey");
    public static final byte[] i = l73.x("SMB2AESCCM");
    public static final byte[] j = l73.x("ServerIn ");
    public static final byte[] k = l73.x("ServerOut");
    public static final byte[] l = l73.x("SmbSign");
    public static final byte[] m = l73.x("SMB2AESCMAC");
    public static final byte[] n = l73.x("SMBSigningKey");
    public static final byte[] o = l73.x("SmbRpc");
    public static final byte[] p = l73.x("SMB2APP");
    public static final byte[] q = l73.x("SMBAppKey");
    public static final l15 r = o15.b(iv6.class);
    public final di7 a;
    public final xr1 b;
    public final ln5 c;
    public final la d;
    public final la e;
    public final ur1 f;

    public iv6(ur1 ur1Var, di7 di7Var, ln5 ln5Var) {
        this.f = ur1Var;
        this.a = di7Var;
        this.b = ur1Var.c;
        this.d = ur1Var.d;
        this.e = ur1Var.e;
        this.c = ln5Var;
    }

    public final SecretKeySpec a(SecretKey secretKey, byte[] bArr, byte[] bArr2, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(25);
        try {
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(bArr2);
            byteArrayOutputStream.write(new byte[]{0, 0, 0, -128});
            try {
                this.a.h.getClass();
                x23 x23Var = (x23) tf0.a.get("KDF/Counter/HMACSHA256");
                if (x23Var == null) {
                    throw new IllegalArgumentException("Unknown DerivationFunction KDF/Counter/HMACSHA256");
                }
                rf0 rf0Var = (rf0) x23Var.b();
                rf0Var.b(new ey1(secretKey.getEncoded(), byteArrayOutputStream.toByteArray()));
                byte[] bArr3 = new byte[16];
                rf0Var.a(bArr3);
                return new SecretKeySpec(bArr3, str);
            } catch (h67 e) {
                throw new gv6(e);
            }
        } catch (IOException e2) {
            r.f("Unable to format suffix, error occur : ", e2);
            return null;
        }
    }

    public final l80 b(h80 h80Var) {
        di7 di7Var = this.a;
        di7Var.getClass();
        ArrayList arrayList = new ArrayList(new ArrayList(di7Var.b));
        ArrayList arrayList2 = new ArrayList();
        xr1 xr1Var = this.b;
        byte[] bArr = xr1Var.a;
        if (Arrays.copyOf(bArr, bArr.length).length > 0) {
            yl5 yl5Var = new yl5();
            byte[] bArr2 = xr1Var.a;
            try {
                p0 p0Var = new p0(new g82(4), new hw0(new jw0(Arrays.copyOf(bArr2, bArr2.length), true, vw2.b)));
                try {
                    r2 r2Var = (r2) p0Var.g();
                    if (r2Var.a.a != n2.APPLICATION) {
                        throw new fk7("Incorrect GSS-API ASN.1 token received, expected to find an [APPLICATION 0], not: " + r2Var);
                    }
                    ArrayList arrayList3 = ((w1) r2Var.e(m2.m)).b;
                    z0 z0Var = (z0) arrayList3.get(0);
                    if (!(z0Var instanceof g1)) {
                        throw new fk7("Expected to find the SPNEGO OID (" + mr5.a + "), not: " + z0Var);
                    }
                    yl5Var.b((z0) arrayList3.get(1));
                    p0Var.close();
                    arrayList2 = yl5Var.d;
                } catch (Throwable th) {
                    try {
                        p0Var.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                throw new fk7("Could not read NegTokenInit from buffer", e);
            }
        }
        for (v23 v23Var : new ArrayList(arrayList)) {
            if (arrayList2.isEmpty() || arrayList2.contains(new g1(v23Var.getName()))) {
                l80 l80Var = (l80) v23Var.b();
                if (l80Var.b(h80Var)) {
                    return l80Var;
                }
            }
        }
        throw new gv6("Could not find a configured authenticator for mechtypes: " + arrayList2 + " and authentication context: " + h80Var);
    }

    public final j87 c(hv6 hv6Var) {
        h80 h80Var = hv6Var.d;
        ur1 ur1Var = (ur1) this.c.b;
        j87 j87Var = new j87(ur1Var, ur1Var.x, h80Var, ur1Var.G, ur1Var.n, ur1Var.r, ur1Var.t);
        j87Var.a = hv6Var.b;
        byte[] bArr = this.b.h;
        n87 n87Var = j87Var.t;
        n87Var.getClass();
        n87Var.g = Arrays.copyOf(bArr, bArr.length);
        return j87Var;
    }

    public final void d(hv6 hv6Var, byte[] bArr) {
        l80 l80Var = hv6Var.a;
        h80 h80Var = hv6Var.d;
        xr1 xr1Var = this.b;
        kc kcVarA = l80Var.a(h80Var, bArr, xr1Var);
        if (kcVarA == null) {
            return;
        }
        xr1Var.getClass();
        hv6Var.c = (byte[]) kcVarA.c;
        s51 s51Var = (s51) kcVarA.b;
        jw0 jw0Var = new jw0();
        try {
            s51Var.e(jw0Var);
            hv6Var.e = jw0Var.c();
        } catch (fk7 e) {
            throw new IOException(e);
        }
    }

    public final j87 e(hv6 hv6Var) {
        byte[] bArr = hv6Var.e;
        xr1 xr1Var = this.b;
        us6 us6Var = (us6) xr1Var.b.e;
        EnumSet enumSetOf = EnumSet.of((xr1Var.c.f & 2) > 0 ? eu6.SMB2_NEGOTIATE_SIGNING_REQUIRED : eu6.SMB2_NEGOTIATE_SIGNING_ENABLED);
        EnumSet enumSet = xr1Var.e;
        gu6 gu6Var = new gu6(25, us6Var, it6.SMB2_SESSION_SETUP, 0L, 0L);
        gu6Var.e = us6Var;
        gu6Var.f = (byte) sz8.j0(enumSetOf);
        gu6Var.g = sz8.j0(enumSet);
        gu6Var.h = bArr;
        ((ut6) gu6Var.a).h = hv6Var.b;
        hv6Var.f = gu6Var;
        ur1 ur1Var = this.f;
        gu6 gu6Var2 = (gu6) ur1Var.m(gu6Var);
        hv6Var.g = gu6Var2;
        ut6 ut6Var = (ut6) gu6Var2.a;
        long j2 = ut6Var.h;
        hv6Var.b = j2;
        us6 us6Var2 = (us6) xr1Var.b.e;
        long j3 = ut6Var.j;
        us6 us6Var3 = us6.SMB_3_1_1;
        la laVar = this.e;
        if (j3 == 3221225494L) {
            if (us6Var2 == us6Var3) {
                j87 j87VarC = laVar.c(Long.valueOf(j2));
                if (j87VarC == null) {
                    j87VarC = c(hv6Var);
                    Long lValueOf = Long.valueOf(hv6Var.b);
                    ReentrantLock reentrantLock = (ReentrantLock) laVar.a;
                    reentrantLock.lock();
                    try {
                        ((HashMap) laVar.b).put(lValueOf, j87VarC);
                        reentrantLock.unlock();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                n87 n87Var = j87VarC.t;
                f(hv6Var, n87Var, hv6Var.f);
                f(hv6Var, n87Var, hv6Var.g);
            }
            r.m((String) hv6Var.d.b, hv6Var.a, "More processing required for authentication of {} using {}");
            d(hv6Var, gu6Var2.h);
            return e(hv6Var);
        }
        if (j3 != 0) {
            throw new yu6(ut6Var, String.format("Authentication failed for '%s' using %s", (String) hv6Var.d.b, hv6Var.a));
        }
        j87 j87VarC2 = laVar.c(Long.valueOf(j2));
        if (us6Var2 != us6Var3 || j87VarC2 == null) {
            j87VarC2 = c(hv6Var);
        } else {
            laVar.f(Long.valueOf(j87VarC2.a));
        }
        n87 n87Var2 = j87VarC2.t;
        d(hv6Var, gu6Var2.h);
        if (hv6Var.c != null) {
            n87Var2.c = new SecretKeySpec(hv6Var.c, "HmacSHA256");
        }
        if (us6Var2 == us6Var3) {
            f(hv6Var, n87Var2, hv6Var.f);
        }
        this.a.getClass();
        n87Var2.a = (ur1Var.c.c.f & 2) > 0;
        EnumSet enumSet2 = hv6Var.g.i;
        fu6 fu6Var = fu6.SMB2_SESSION_FLAG_IS_NULL;
        if (enumSet2.contains(fu6Var)) {
            n87Var2.a = false;
        }
        EnumSet enumSet3 = hv6Var.g.i;
        fu6 fu6Var2 = fu6.SMB2_SESSION_FLAG_IS_GUEST;
        boolean zContains = enumSet3.contains(fu6Var2);
        if (zContains && n87Var2.a) {
            throw new ct6("Cannot require message signing when authenticating with a guest account");
        }
        if (zContains) {
            n87Var2.a = false;
        }
        if (((us6) ur1Var.c.b.e).a() && ur1Var.c.b() && hv6Var.g.i.contains(fu6.SMB2_SESSION_FLAG_ENCRYPT_DATA)) {
            n87Var2.b = true;
            n87Var2.a = false;
        }
        if (us6Var2.a() && !gu6Var2.i.contains(fu6Var) && !gu6Var2.i.contains(fu6Var2)) {
            SecretKeySpec secretKeySpec = n87Var2.c;
            if (us6Var2 == us6Var3) {
                n87Var2.d = a(secretKeySpec, n, n87Var2.g, "AesCmac");
            } else {
                n87Var2.d = a(secretKeySpec, m, l, "AesCmac");
            }
            if (xr1Var.b()) {
                String str = xr1Var.i.b;
                SecretKeySpec secretKeySpec2 = n87Var2.c;
                if (us6Var2 == us6Var3) {
                    n87Var2.f = a(secretKeySpec2, g, n87Var2.g, str);
                    n87Var2.e = a(n87Var2.c, h, n87Var2.g, str);
                    a(n87Var2.c, q, n87Var2.g, str);
                    return j87VarC2;
                }
                byte[] bArr2 = j;
                byte[] bArr3 = i;
                n87Var2.f = a(secretKeySpec2, bArr3, bArr2, str);
                n87Var2.e = a(n87Var2.c, bArr3, k, str);
                a(n87Var2.c, p, o, str);
            }
        }
        return j87VarC2;
    }

    public final void f(hv6 hv6Var, n87 n87Var, rt6 rt6Var) {
        if (hv6Var.h == null) {
            this.f.c.g.getClass();
            try {
                this.a.h.getClass();
                hv6Var.h = new qg0("SHA-512");
            } catch (h67 e) {
                throw new gv6("Cannot get the message digest for SHA-512", e);
            }
        }
        qg0 qg0Var = hv6Var.h;
        byte[] bArr = n87Var.g;
        byte[] bArrP = vm4.p(rt6Var);
        qg0Var.a.reset();
        qg0Var.b(bArr);
        qg0Var.a.update(bArrP, 0, bArrP.length);
        byte[] bArrA = qg0Var.a();
        n87Var.g = Arrays.copyOf(bArrA, bArrA.length);
    }
}
