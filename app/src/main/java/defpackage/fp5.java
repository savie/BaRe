package defpackage;

import java.io.IOException;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fp5 implements l80 {
    public static final l15 h = o15.b(fp5.class);
    public static final g1 i = new g1("1.3.6.1.4.1.311.2.2.10");
    public lv1 a;
    public Random b;
    public h80 c;
    public z28 d;
    public int e;
    public AbstractSet f;
    public byte[] g;

    @Override // defpackage.l80
    public final kc a(h80 h80Var, byte[] bArr, xr1 xr1Var) throws IOException {
        try {
            int i2 = this.e;
            if (i2 == 3) {
                return null;
            }
            l15 l15Var = h;
            if (i2 == 1) {
                l15Var.D((String) h80Var.b, "Initialized Authentication of {} using NTLM");
                this.e = 2;
                return e(h80Var);
            }
            l15Var.D(l73.y(bArr), "Received token: {}");
            am5 am5Var = new am5();
            am5Var.g(bArr);
            final gp5 gp5Var = new gp5();
            try {
                gp5Var.N(new jw0(am5Var.f, true, vw2.b));
                l15Var.g(gp5Var, "Received NTLM challenge: {}");
                l15Var.D(gp5Var.q, "Received NTLM challenge from: {}");
                this.f.removeIf(new Predicate() { // from class: dp5
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return !gp5Var.l.contains((lp5) obj);
                    }
                });
                if (!this.f.contains(lp5.NTLMSSP_NEGOTIATE_128)) {
                    throw new hp5("Server does not support 128-bit encryption");
                }
                kc kcVarD = d(h80Var, gp5Var, am5Var.f);
                this.e = 3;
                return kcVarD;
            } catch (iw0 e) {
                throw new IOException(e);
            }
        } catch (fk7 e2) {
            throw new gv6(e2);
        }
    }

    @Override // defpackage.l80
    public final boolean b(h80 h80Var) {
        return h80Var.getClass().equals(h80.class);
    }

    @Override // defpackage.l80
    public final void c(di7 di7Var) {
        this.a = di7Var.h;
        this.b = di7Var.d;
        this.d = di7Var.r;
        this.e = 1;
        this.f = new HashSet();
        Random random = this.b;
        lv1 lv1Var = this.a;
        h80 h80Var = new h80(13, false);
        h80Var.b = random;
        h80Var.c = lv1Var;
        this.c = h80Var;
    }

    public final kc d(h80 h80Var, gp5 gp5Var, byte[] bArr) {
        rx7 rx7Var;
        byte[] bArrC;
        kc kcVar = new kc(1);
        kcVar.d = gp5Var.n;
        rx7 rx7Var2 = gp5Var.r;
        if (rx7Var2 != null) {
            pe0 pe0Var = pe0.MsvAvNbComputerName;
            if (rx7Var2.b(pe0Var)) {
            }
        }
        if (h80Var.f()) {
            String str = (String) h80Var.b;
            z28 z28Var = this.d;
            z28Var.getClass();
            cp5 cp5Var = new cp5(null, null, str, null, this.f, (bw8) z28Var.b);
            am5 am5Var = new am5();
            jw0 jw0Var = new jw0();
            cp5Var.N(jw0Var);
            am5Var.f = jw0Var.c();
            kcVar.b = am5Var;
            return kcVar;
        }
        this.f.add(lp5.NTLMSSP_NEGOTIATE_TARGET_INFO);
        rx7 rx7Var3 = gp5Var.r;
        pe0 pe0Var2 = pe0.MsvAvFlags;
        pe0 pe0Var3 = pe0.MsvAvTimestamp;
        if (rx7Var3 == null) {
            rx7Var = null;
        } else {
            rx7Var = new rx7();
            rx7Var.a = new ArrayList(rx7Var3.a);
            this.d.getClass();
            if (gp5Var.r.b(pe0Var3)) {
                rx7Var.c(new te0(pe0Var2, Long.valueOf(rx7Var.b(pe0Var2) ? ((Long) rx7Var.a(pe0Var2).b).longValue() | 2 : 2L)));
            }
            boolean zContains = gp5Var.l.contains(lp5.NTLMSSP_REQUEST_TARGET);
            pe0 pe0Var4 = pe0.MsvAvTargetName;
            if (zContains) {
                ve0 ve0Var = (ve0) rx7Var.a(pe0.MsvAvDnsComputerName);
                if (ve0Var != null) {
                    rx7Var.c(new ve0(pe0Var4, String.format("cifs/%s", ve0Var.b)));
                }
            } else {
                rx7Var.c(new ve0(pe0Var4, ""));
            }
        }
        long jConvert = (TimeUnit.NANOSECONDS.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) / 100) + 116444736000000000L;
        if (rx7Var != null && rx7Var.b(pe0Var3)) {
            jConvert = ((ga3) ((we0) rx7Var.a(pe0Var3)).b).a;
        }
        h80 h80Var2 = this.c;
        String str2 = (String) h80Var.b;
        char[] cArr = (char[]) h80Var.c;
        byte[] bArr2 = new byte[8];
        ((Random) h80Var2.b).nextBytes(bArr2);
        byte[] bArrA = h80Var2.a(String.valueOf(cArr), str2);
        byte[] bArrA2 = h80Var2.a(String.valueOf(cArr), str2);
        byte[] bArr3 = gp5Var.m;
        jw0 jw0Var2 = new jw0();
        lv1 lv1Var = (lv1) h80Var2.c;
        byte[] bArrA3 = ip5.a(lv1Var, bArrA2, bArr3, bArr2);
        jw0Var2.i(bArrA3, bArrA3.length);
        jw0Var2.i(bArr2, 8);
        jw0Var2.c();
        byte[] bArr4 = gp5Var.m;
        jw0 jw0Var3 = new jw0();
        jw0Var3.f((byte) 1);
        jw0Var3.f((byte) 1);
        jw0Var3.k(0);
        long j = 0;
        jw0Var3.l(0L);
        jw0Var3.g(jConvert);
        jw0Var3.i(bArr2, 8);
        jw0Var3.l(0L);
        if (rx7Var != null) {
            for (qe0 qe0Var : rx7Var.a) {
                rx7.b.B(qe0Var.a, qe0Var.b, "Writing TargetInfo {} --> {}");
                qe0Var.a(jw0Var3);
            }
            jw0Var3.k(0);
            jw0Var3.k(0);
            j = 0;
        }
        jw0Var3.l(j);
        byte[] bArrC2 = jw0Var3.c();
        byte[] bArrA4 = ip5.a(lv1Var, bArrA, bArr4, bArrC2);
        byte[] bArr5 = new byte[bArrA4.length + bArrC2.length];
        System.arraycopy(bArrA4, 0, bArr5, 0, bArrA4.length);
        System.arraycopy(bArrC2, 0, bArr5, bArrA4.length, bArrC2.length);
        byte[] bArrA5 = ip5.a(lv1Var, bArrA, ms8.t(bArr5, 0, 16));
        byte[] bArr6 = new byte[0];
        this.c.getClass();
        EnumSet enumSet = gp5Var.l;
        if (enumSet.contains(lp5.NTLMSSP_NEGOTIATE_KEY_EXCH) && (enumSet.contains(lp5.NTLMSSP_NEGOTIATE_SEAL) || enumSet.contains(lp5.NTLMSSP_NEGOTIATE_SIGN) || enumSet.contains(lp5.NTLMSSP_NEGOTIATE_ALWAYS_SIGN))) {
            byte[] bArr7 = new byte[16];
            this.b.nextBytes(bArr7);
            bArrC = ip5.c(this.a, bArrA5, bArr7);
            bArrA5 = bArr7;
        } else {
            bArrC = bArrA5;
        }
        String str3 = (String) h80Var.b;
        z28 z28Var2 = this.d;
        z28Var2.getClass();
        cp5 cp5Var2 = new cp5(bArr6, bArr5, str3, bArrC, enumSet, (bw8) z28Var2.b);
        te0 te0Var = rx7Var != null ? (te0) rx7Var.a(pe0Var2) : null;
        if (te0Var != null && (((Long) te0Var.b).longValue() & 2) > 0) {
            cp5Var2.s = new byte[16];
            jw0 jw0Var4 = new jw0();
            cp5Var2.N(jw0Var4);
            cp5Var2.s = ip5.a(this.a, bArrA5, this.g, bArr, jw0Var4.c());
        }
        kcVar.c = bArrA5;
        h.g(cp5Var2, "Sending NTLM authenticate message: {}");
        am5 am5Var2 = new am5();
        jw0 jw0Var5 = new jw0();
        cp5Var2.N(jw0Var5);
        am5Var2.f = jw0Var5.c();
        kcVar.b = am5Var2;
        kcVar.e = this.f;
        return kcVar;
    }

    public final kc e(h80 h80Var) {
        kc kcVar = new kc(1);
        EnumSet enumSetOf = EnumSet.of(lp5.NTLMSSP_NEGOTIATE_128, lp5.NTLMSSP_REQUEST_TARGET, lp5.NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY);
        this.f = enumSetOf;
        this.d.getClass();
        lp5 lp5Var = lp5.NTLMSSP_NEGOTIATE_VERSION;
        enumSetOf.add(lp5Var);
        boolean zF = h80Var.f();
        lp5 lp5Var2 = lp5.NTLMSSP_NEGOTIATE_KEY_EXCH;
        if (zF) {
            int i2 = (((String) h80Var.b).equals("Guest") && ((char[]) h80Var.c).length == 0) ? 1 : 0;
            AbstractSet abstractSet = this.f;
            if (i2 != 0) {
                abstractSet.add(lp5Var2);
            } else {
                abstractSet.add(lp5.NTLMSSP_NEGOTIATE_ANONYMOUS);
            }
        } else {
            this.f.add(lp5.NTLMSSP_NEGOTIATE_SIGN);
            this.f.add(lp5.NTLMSSP_NEGOTIATE_ALWAYS_SIGN);
            this.f.add(lp5Var2);
        }
        if (!this.f.contains(lp5Var)) {
            this.d.getClass();
        }
        AbstractSet abstractSet2 = this.f;
        z28 z28Var = this.d;
        z28Var.getClass();
        bw8 bw8Var = (bw8) z28Var.b;
        byte[] bArr = ho6.d;
        kp5 kp5Var = new kp5(abstractSet2, bw8Var);
        kp5Var.m = bArr;
        kp5Var.n = bArr;
        h.g(this.g, "Sending NTLM negotiate message: {}");
        zl5 zl5Var = new zl5();
        zl5Var.d.add(i);
        jw0 jw0Var = new jw0();
        jw0Var.j("NTLMSSP\u0000", h51.a);
        jw0Var.l(1L);
        jw0Var.l(sz8.j0(kp5Var.j));
        int iZ = 40;
        if (kp5Var.j.contains(lp5.NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED)) {
            iZ = ho6.Z(jw0Var, bArr, 40);
        } else {
            jw0Var.k(0);
            jw0Var.k(0);
            jw0Var.l(0L);
        }
        if (kp5Var.j.contains(lp5.NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED)) {
            ho6.Z(jw0Var, bArr, iZ);
        } else {
            jw0Var.k(0);
            jw0Var.k(0);
            jw0Var.l(0L);
        }
        if (kp5Var.j.contains(lp5Var)) {
            bw8 bw8Var2 = kp5Var.k;
            jw0Var.f((byte) bw8Var2.a.a);
            jw0Var.f((byte) bw8Var2.b.a);
            jw0Var.k(bw8Var2.c);
            jw0Var.i(new byte[]{0, 0, 0}, 3);
            jw0Var.f((byte) bw8Var2.d.a);
        } else {
            jw0Var.m(0L);
        }
        jw0Var.i(bArr, bArr.length);
        jw0Var.i(bArr, bArr.length);
        byte[] bArrC = jw0Var.c();
        this.g = bArrC;
        zl5Var.e = bArrC;
        kcVar.b = zl5Var;
        kcVar.e = this.f;
        return kcVar;
    }
}
