package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class rg0 implements Key, PrivateKey {
    public transient nj5 a;
    public transient x1 b;

    public final boolean equals(Object obj) {
        if (obj instanceof rg0) {
            return Arrays.equals(ms8.l(this.a.b), ms8.l(((rg0) obj).a.b));
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
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
        short[] sArrL = ms8.l(this.a.b);
        if (sArrL == null) {
            return 0;
        }
        int length = sArrL.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ (sArrL[length] & 255);
        }
    }
}
