package defpackage;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class eh0 implements PrivateKey {
    public transient f1 a;
    public transient nx8 b;
    public transient x1 c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof eh0) {
            eh0 eh0Var = (eh0) obj;
            if (this.a.s(eh0Var.a) && Arrays.equals(this.b.a(), eh0Var.b.a())) {
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
            return cy0.l(this.b, this.c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (ms8.x(this.b.a()) * 37) + ms8.x(this.a.a);
    }
}
