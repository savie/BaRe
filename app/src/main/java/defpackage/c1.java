package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c1 {
    public final int a;
    public final byte[] b;

    public c1(byte[] bArr) {
        this.a = ms8.x(bArr);
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c1)) {
            return false;
        }
        return Arrays.equals(this.b, ((c1) obj).b);
    }

    public final int hashCode() {
        return this.a;
    }
}
