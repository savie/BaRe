package defpackage;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zg0 implements PublicKey, Key {
    public transient cw6 a;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zg0)) {
            return false;
        }
        w00 w00Var = this.a.c;
        byte[] bArrP = ms8.p((byte[]) w00Var.b, (byte[]) w00Var.c);
        w00 w00Var2 = ((zg0) obj).a.c;
        return Arrays.equals(bArrP, ms8.p((byte[]) w00Var2.b, (byte[]) w00Var2.c));
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS+-".concat(lq7.d(((aw6) this.a.b).b));
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
        w00 w00Var = this.a.c;
        return ms8.x(ms8.p((byte[]) w00Var.b, (byte[]) w00Var.c));
    }
}
