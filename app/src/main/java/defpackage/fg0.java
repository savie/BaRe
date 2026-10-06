package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class fg0 implements PublicKey, Key {
    public transient op4 a;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof fg0) {
            try {
                return Arrays.equals(this.a.getEncoded(), ((fg0) obj).a.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "LMS";
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
            return ms8.x(this.a.getEncoded());
        } catch (IOException unused) {
            return -1;
        }
    }
}
