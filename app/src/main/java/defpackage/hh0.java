package defpackage;

import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class hh0 implements PublicKey {
    public transient vx8 a;
    public transient f1 b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hh0) {
            hh0 hh0Var = (hh0) obj;
            try {
                if (this.b.s(hh0Var.b) && Arrays.equals(this.a.getEncoded(), hh0Var.a.getEncoded())) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSS";
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
        try {
            return (ms8.x(this.a.getEncoded()) * 37) + ms8.x(this.b.a);
        } catch (IOException unused) {
            return ms8.x(this.b.a);
        }
    }
}
