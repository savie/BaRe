package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ya3 {
    public final byte[] a;
    public final byte[] b;

    public ya3(byte[] bArr, byte[] bArr2) {
        this.a = bArr;
        this.b = bArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ya3)) {
            return false;
        }
        ya3 ya3Var = (ya3) obj;
        return this.a.equals(ya3Var.a) && this.b.equals(ya3Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (Arrays.hashCode(this.a) * 31);
    }

    public final String toString() {
        return eq3.l("NameHmacKeys(current=", Arrays.toString(this.a), ", legacy=", Arrays.toString(this.b), ")");
    }
}
