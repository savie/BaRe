package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class hg0 implements PublicKey, Key {
    public transient r45 a;
    public transient String b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hg0) {
            return Arrays.equals(getEncoded(), ((hg0) obj).getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return this.b;
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return pe4.i(this.a).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return ms8.x(getEncoded());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String str = lq7.a;
        byte[] encoded = this.a.getEncoded();
        sb.append(this.b);
        sb.append(" Public Key [");
        lr6 lr6Var = new lr6(256);
        lr6Var.update(encoded, 0, encoded.length);
        byte[] bArr = new byte[20];
        lr6Var.l(bArr, 0, 20);
        StringBuilder sb2 = new StringBuilder();
        for (int i = 0; i != 20; i++) {
            if (i > 0) {
                sb2.append(":");
            }
            char[] cArr = zv1.b;
            sb2.append(cArr[(bArr[i] >>> 4) & 15]);
            sb2.append(cArr[bArr[i] & 15]);
        }
        sb.append(sb2.toString());
        sb.append("]");
        sb.append(str);
        sb.append("    public data: ");
        sb.append(lq7.a(e44.b(encoded, encoded.length)));
        sb.append(str);
        return sb.toString();
    }
}
