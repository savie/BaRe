package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ch0 implements PrivateKey, Key {
    public transient f1 a;
    public transient dw6 b;
    public transient x1 c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ch0) {
            ch0 ch0Var = (ch0) obj;
            if (this.a.s(ch0Var.a) && Arrays.equals(ms8.k(this.b.c), ms8.k(ch0Var.b.c))) {
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
            dw6 dw6Var = this.b;
            String str = dw6Var.b;
            return cy0.l(dw6Var, this.c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (ms8.x(ms8.k(this.b.c)) * 37) + ms8.x(this.a.a);
    }
}
