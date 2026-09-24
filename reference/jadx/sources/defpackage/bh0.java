package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class bh0 implements PublicKey, Key {
    public transient vi7 a;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof bh0) {
            return Arrays.equals(ms8.k(this.a.b), ms8.k(((bh0) obj).a.b));
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return lq7.d(this.a.c.a);
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
        return ms8.x(ms8.k(this.a.b));
    }
}
