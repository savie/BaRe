package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nz8 implements Cloneable, Serializable {
    public final int a;

    public nz8(byte[] bArr, int i) {
        this.a = (int) wx3.j(bArr, i, 2);
    }

    public static nz8 b(byte[] bArr) {
        return new nz8(od2.m(bArr));
    }

    public final byte[] a() {
        byte[] bArr = new byte[2];
        wx3.C(this.a, bArr, 0, 2);
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
        if (obj instanceof nz8) {
            return this.a == ((nz8) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return "ZipShort value: " + this.a;
    }

    public nz8(int i) {
        this.a = i;
    }
}
