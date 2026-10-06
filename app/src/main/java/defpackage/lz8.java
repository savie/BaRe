package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz8 implements Cloneable, Serializable {
    public final long a;

    public lz8(byte[] bArr, int i) {
        this.a = wx3.j(bArr, i, 4);
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[4];
        wx3.C(j, bArr, 0, 4);
        return bArr;
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new UnsupportedOperationException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof lz8) {
            return this.a == ((lz8) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.a;
    }

    public final String toString() {
        return "ZipLong value: " + this.a;
    }

    public lz8(long j) {
        this.a = j;
    }
}
