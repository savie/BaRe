package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kp5 extends jp5 {
    public byte[] m;
    public byte[] n;

    public final String toString() {
        StringBuilder sb = new StringBuilder("NtlmNegotiate{\n  domain='");
        byte[] bArr = this.m;
        Charset charset = ip5.a;
        sb.append(bArr != null ? new String(bArr, Charset.forName("Cp850")) : "");
        sb.append("'',\n  workstation='");
        byte[] bArr2 = this.n;
        sb.append(bArr2 != null ? new String(bArr2, Charset.forName("Cp850")) : "");
        sb.append("',\n  negotiateFlags=");
        sb.append(this.j);
        sb.append(",\n  version=");
        sb.append(this.k);
        sb.append("\n}");
        return sb.toString();
    }
}
