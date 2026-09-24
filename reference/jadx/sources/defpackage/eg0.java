package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class eg0 implements PrivateKey, Key {
    public transient op4 a;
    public transient x1 b;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof eg0) {
            try {
                return Arrays.equals(this.a.getEncoded(), ((eg0) obj).a.getEncoded());
            } catch (IOException unused) {
                l0.e("unable to perform equals");
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
        try {
            return ms8.x(this.a.getEncoded());
        } catch (IOException unused) {
            l0.e("unable to calculate hashCode");
            return 0;
        }
    }
}
