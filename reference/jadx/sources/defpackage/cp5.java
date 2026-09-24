package defpackage;

import java.nio.charset.Charset;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp5 extends jp5 {
    public final byte[] m;
    public final byte[] n;
    public final byte[] o;
    public final byte[] p;
    public final byte[] q;
    public final byte[] r;
    public byte[] s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cp5(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, Set set, bw8 bw8Var) {
        super(set, bw8Var);
        byte[] bArr4 = ho6.d;
        this.m = bArr == null ? bArr4 : bArr;
        this.n = bArr2 == null ? bArr4 : bArr2;
        this.o = str != null ? str.getBytes(ip5.a) : bArr4;
        this.p = bArr4;
        this.q = bArr4;
        this.r = bArr3 == null ? bArr4 : bArr3;
        this.j = set;
    }

    public final void N(jw0 jw0Var) {
        jw0Var.j("NTLMSSP\u0000", h51.a);
        jw0Var.l(3L);
        Set set = this.j;
        lp5 lp5Var = lp5.NTLMSSP_NEGOTIATE_VERSION;
        int i = (set.contains(lp5Var) || this.s != null) ? 72 : 64;
        if (this.s != null) {
            i += 16;
        }
        byte[] bArr = this.m;
        int iZ = ho6.Z(jw0Var, bArr, i);
        byte[] bArr2 = this.n;
        int iZ2 = ho6.Z(jw0Var, bArr2, iZ);
        byte[] bArr3 = this.p;
        int iZ3 = ho6.Z(jw0Var, bArr3, iZ2);
        byte[] bArr4 = this.o;
        int iZ4 = ho6.Z(jw0Var, bArr4, iZ3);
        byte[] bArr5 = this.q;
        int iZ5 = ho6.Z(jw0Var, bArr5, iZ4);
        byte[] bArr6 = this.r;
        ho6.Z(jw0Var, bArr6, iZ5);
        jw0Var.l(sz8.j0(this.j));
        if (this.j.contains(lp5Var)) {
            jw0 jw0Var2 = new jw0();
            jw0Var2.f((byte) 6);
            jw0Var2.f((byte) 1);
            jw0Var2.k(7600);
            jw0Var2.i(new byte[]{0, 0, 0}, 3);
            jw0Var2.f((byte) 15);
            byte[] bArrC = jw0Var2.c();
            jw0Var.i(bArrC, bArrC.length);
        } else if (this.s != null) {
            jw0Var.m(0L);
        }
        byte[] bArr7 = this.s;
        if (bArr7 != null) {
            jw0Var.i(bArr7, 16);
        }
        jw0Var.i(bArr, bArr.length);
        jw0Var.i(bArr2, bArr2.length);
        jw0Var.i(bArr3, bArr3.length);
        jw0Var.i(bArr4, bArr4.length);
        jw0Var.i(bArr5, bArr5.length);
        jw0Var.i(bArr6, bArr6.length);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("NtlmAuthenticate{\n  mic=");
        byte[] bArr = this.s;
        sb.append(bArr != null ? l73.y(bArr) : "[]");
        sb.append(",\n  lmResponse=");
        sb.append(l73.y(this.m));
        sb.append(",\n  ntResponse=");
        sb.append(l73.y(this.n));
        sb.append(",\n  domainName='");
        byte[] bArr2 = this.p;
        if (bArr2 != null) {
            str = new String(bArr2, ip5.a);
        } else {
            Charset charset = ip5.a;
            str = "";
        }
        sb.append(str);
        sb.append("',\n  userName='");
        byte[] bArr3 = this.o;
        sb.append(bArr3 != null ? new String(bArr3, ip5.a) : "");
        sb.append("',\n  workstation='");
        byte[] bArr4 = this.q;
        return dj7.n(sb, bArr4 != null ? new String(bArr4, ip5.a) : "", "',\n  encryptedRandomSessionKey=[<secret>],\n}");
    }
}
