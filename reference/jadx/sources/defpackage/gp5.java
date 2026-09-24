package defpackage;

import java.util.EnumSet;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gp5 extends cy0 {
    public static final l15 s = o15.b(gp5.class);
    public int j;
    public int k;
    public EnumSet l;
    public byte[] m;
    public bw8 n;
    public int o;
    public int p;
    public String q;
    public rx7 r;

    public final void N(jw0 jw0Var) throws iw0 {
        qe0 qe0Var;
        jw0Var.q(h51.a, 8);
        vw2 vw2Var = jw0Var.b;
        vw2Var.e(jw0Var);
        this.j = vw2Var.d(jw0Var);
        jw0Var.t(2);
        this.k = jw0Var.s();
        this.l = sz8.i0(vw2Var.e(jw0Var), lp5.class);
        byte[] bArr = new byte[8];
        jw0Var.o(bArr, 8);
        this.m = bArr;
        jw0Var.t(8);
        if (this.l.contains(lp5.NTLMSSP_NEGOTIATE_TARGET_INFO)) {
            this.o = vw2Var.d(jw0Var);
            jw0Var.t(2);
            this.p = jw0Var.s();
        } else {
            jw0Var.t(8);
        }
        if (this.l.contains(lp5.NTLMSSP_NEGOTIATE_VERSION)) {
            bw8 bw8Var = new bw8();
            bw8Var.a = (zv8) sz8.k0(jw0Var.n(), zv8.class, null);
            bw8Var.b = (aw8) sz8.k0(jw0Var.n(), aw8.class, null);
            bw8Var.c = vw2Var.d(jw0Var);
            jw0Var.t(3);
            bw8Var.d = (yv8) sz8.k0(jw0Var.n(), yv8.class, null);
            this.n = bw8Var;
            s.D(bw8Var, "Windows version = {}");
        } else {
            jw0Var.t(8);
        }
        int i = this.j;
        if (i > 0) {
            jw0Var.c = this.k;
            this.q = jw0Var.q(h51.c, i / 2);
        }
        if (this.o <= 0) {
            return;
        }
        jw0Var.c = this.p;
        rx7 rx7Var = new rx7();
        while (true) {
            int iD = vw2Var.d(jw0Var);
            pe0 pe0Var = (pe0) sz8.k0(iD, pe0.class, null);
            if (pe0Var == null) {
                l0.e(fz5.j(iD, "Encountered unknown AvId: "));
                return;
            }
            int iOrdinal = pe0Var.ordinal();
            pe0 pe0Var2 = pe0.MsvAvEOL;
            switch (iOrdinal) {
                case 0:
                    se0 se0Var = new se0(pe0Var2);
                    jw0Var.r();
                    qe0Var = se0Var;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case XmlPullParser.COMMENT /* 9 */:
                    ve0 ve0Var = new ve0(pe0Var);
                    ve0Var.b = jw0Var.q(h51.c, vw2Var.d(jw0Var) / 2);
                    qe0Var = ve0Var;
                    break;
                case 6:
                    te0 te0Var = new te0(pe0.MsvAvFlags);
                    jw0Var.r();
                    te0Var.b = Long.valueOf(vw2Var.e(jw0Var));
                    qe0Var = te0Var;
                    break;
                case 7:
                    we0 we0Var = new we0(pe0.MsvAvTimestamp);
                    jw0Var.r();
                    we0Var.b = ms8.H(jw0Var);
                    qe0Var = we0Var;
                    break;
                case 8:
                    ue0 ue0Var = new ue0(pe0.MsvAvSingleHost);
                    jw0Var.r();
                    vw2Var.e(jw0Var);
                    jw0Var.t(4);
                    byte[] bArr2 = new byte[8];
                    jw0Var.o(bArr2, 8);
                    ue0Var.b = bArr2;
                    byte[] bArr3 = new byte[32];
                    jw0Var.o(bArr3, 32);
                    ue0Var.c = bArr3;
                    qe0Var = ue0Var;
                    break;
                case 10:
                    re0 re0Var = new re0(pe0.MsvAvChannelBindings);
                    int iD2 = vw2Var.d(jw0Var);
                    byte[] bArr4 = new byte[iD2];
                    jw0Var.o(bArr4, iD2);
                    re0Var.b = bArr4;
                    qe0Var = re0Var;
                    break;
                default:
                    y5.g(pe0Var, "Encountered unhandled AvId: ");
                    return;
            }
            pe0 pe0Var3 = qe0Var.a;
            if (pe0Var3 == pe0Var2) {
                this.r = rx7Var;
                return;
            } else {
                rx7.b.B(pe0Var3, qe0Var.b, "Read TargetInfo {} --> {}");
                rx7Var.a.add(qe0Var);
            }
        }
    }

    public final String toString() {
        return "NtlmChallenge{\n  targetName='" + this.q + "',\n  negotiateFlags=" + this.l + ",\n  serverChallenge=" + l73.y(this.m) + ",\n  version=" + this.n + ",\n  targetInfo=" + this.r + "\n}";
    }
}
