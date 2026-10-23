package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class dh0 implements PublicKey, Key {
    public transient f1 a;
    public transient ew6 b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof dh0) {
            dh0 dh0Var = (dh0) obj;
            if (this.a.s(dh0Var.a) && Arrays.equals(ms8.k(this.b.c), ms8.k(dh0Var.b.c))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            ew6 ew6Var = this.b;
            String str = ew6Var.b;
            return pe4.i(ew6Var).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "X.509";
    }

    public final int hashCode() {
        return (ms8.x(ms8.k(this.b.c)) * 37) + ms8.x(this.a.a);
    }
}
