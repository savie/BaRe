package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xv2 {
    public final dw2 a;
    public final byte[] b;

    public xv2(dw2 dw2Var, byte[] bArr) {
        if (dw2Var == null) {
            f6.n("encoding is null");
            throw null;
        }
        if (bArr == null) {
            f6.n("bytes is null");
            throw null;
        }
        this.a = dw2Var;
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xv2)) {
            return false;
        }
        xv2 xv2Var = (xv2) obj;
        if (this.a.equals(xv2Var.a)) {
            return Arrays.equals(this.b, xv2Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
