package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class wg0 implements PrivateKey, Key {
    public transient h06 a;
    public transient x1 b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof wg0) {
            return Arrays.equals(ms8.k(this.a.c), ms8.k(((wg0) obj).a.c));
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Picnic";
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        try {
            return cy0.l(this.a, this.b).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public final String getFormat() {
        return "PKCS#8";
    }

    public final int hashCode() {
        return ms8.x(ms8.k(this.a.c));
    }
}
