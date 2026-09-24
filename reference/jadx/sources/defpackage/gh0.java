package defpackage;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class gh0 implements PrivateKey {
    public transient tx8 a;
    public transient f1 b;
    public transient x1 c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gh0) {
            gh0 gh0Var = (gh0) obj;
            if (this.b.s(gh0Var.b) && Arrays.equals(this.a.a(), gh0Var.a.a())) {
                return true;
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
            return cy0.l(this.a, this.c).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return (ms8.x(this.a.a()) * 37) + ms8.x(this.b.a);
    }
}
