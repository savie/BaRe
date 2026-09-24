package defpackage;

import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class fh0 implements PublicKey {
    public transient f1 a;
    public transient px8 b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fh0) {
            fh0 fh0Var = (fh0) obj;
            if (this.a.s(fh0Var.a) && Arrays.equals(this.b.a(), fh0Var.b.a())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return pe4.i(this.b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return (ms8.x(this.b.a()) * 37) + ms8.x(this.a.a);
    }
}
