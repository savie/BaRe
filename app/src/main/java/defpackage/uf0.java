package defpackage;

import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class uf0 implements PrivateKey, Key {
    public transient pl2 a;
    public transient String b;
    public transient byte[] c;
    public transient x1 d;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uf0) {
            return Arrays.equals(getEncoded(), ((uf0) obj).getEncoded());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return this.b;
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        if (this.c == null) {
            pl2 pl2Var = this.a;
            x1 x1Var = this.d;
            byte[] bArrI = null;
            if (!pl2Var.a) {
                c6.f("public key found");
                return null;
            }
            try {
                bArrI = cy0.l(pl2Var, x1Var).i();
            } catch (Exception unused) {
            }
            this.c = bArrI;
        }
        return ms8.k(this.c);
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return ms8.x(getEncoded());
    }
}
