package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l92 {
    public final byte[] a;
    public final int b;

    public l92(byte[] bArr, int i) {
        this.a = ms8.k(bArr);
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l92)) {
            return false;
        }
        l92 l92Var = (l92) obj;
        if (l92Var.b != this.b) {
            return false;
        }
        return Arrays.equals(this.a, l92Var.a);
    }

    public final int hashCode() {
        return this.b ^ ms8.x(this.a);
    }
}
