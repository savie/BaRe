package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class i48 {
    public final String a;
    public final byte[] b;
    public final int c;
    public final int d;
    public final int e;

    public i48(String str, byte[] bArr, int i, int i2, int i3) {
        str.getClass();
        bArr.getClass();
        this.a = str;
        this.b = bArr;
        this.c = i;
        this.d = i2;
        this.e = i3;
    }

    public final byte[] a() {
        int i = this.c;
        int i2 = this.e;
        if (i2 == 1) {
            byte[] bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(i).array();
            bArrArray.getClass();
            return bArrArray;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                return new byte[0];
            }
            if (i2 != 4) {
                throw new GeneralSecurityException(fz5.j(i2, "Unsupported output prefix type: "));
            }
        }
        byte[] bArrArray2 = ByteBuffer.allocate(5).put((byte) 0).putInt(i).array();
        bArrArray2.getClass();
        return bArrArray2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i48)) {
            return false;
        }
        i48 i48Var = (i48) obj;
        return pe4.d(this.a, i48Var.a) && Arrays.equals(this.b, i48Var.b) && this.c == i48Var.c && this.d == i48Var.d && this.e == i48Var.e;
    }

    public final int hashCode() {
        return ((((((Arrays.hashCode(this.b) + (this.a.hashCode() * 31)) * 31) + this.c) * 31) + this.d) * 31) + this.e;
    }
}
