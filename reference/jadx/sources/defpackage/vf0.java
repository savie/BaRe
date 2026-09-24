package defpackage;

import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class vf0 implements PublicKey, Key {
    public transient ql2 a;
    public transient String b;
    public transient byte[] c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof vf0) {
            return Arrays.equals(getEncoded(), ((vf0) obj).getEncoded());
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
            this.c = cy0.v(this.a);
        }
        return ms8.k(this.c);
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return ms8.x(getEncoded());
    }
}
