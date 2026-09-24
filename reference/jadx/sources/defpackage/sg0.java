package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class sg0 implements Key, PublicKey {
    public transient oj5 a;

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof sg0)) {
            return false;
        }
        return Arrays.equals(ms8.k(this.a.b), ms8.k(((sg0) obj).a.b));
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
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
