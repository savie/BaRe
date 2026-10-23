package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class gg0 implements PrivateKey, Key {
    public transient p45 a;
    public transient String b;
    public transient x1 c;
    public transient byte[] d;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gg0) {
            return Arrays.equals(this.a.getEncoded(), ((gg0) obj).a.getEncoded());
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
            byte[] bArr = this.d;
            return bArr != null ? bArr : cy0.l(this.a, this.c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return ms8.x(this.a.getEncoded());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String str = lq7.a;
        p45 p45Var = this.a;
        byte[] bArrP = ms8.p(p45Var.f, p45Var.k);
        sb.append(this.b);
        sb.append(" Private Key [");
        lr6 lr6Var = new lr6(256);
        lr6Var.update(bArrP, 0, bArrP.length);
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
        sb.append(lq7.a(e44.b(bArrP, bArrP.length)));
        sb.append(str);
        return sb.toString();
    }
}
