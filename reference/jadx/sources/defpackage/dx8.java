package defpackage;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dx8 implements yy8, Cloneable, Serializable {
    public static final nz8 d = new nz8(30837);
    public static final nz8 e = new nz8(0);
    public static final BigInteger f = BigInteger.valueOf(1000);
    public int a;
    public BigInteger b;
    public BigInteger c;

    public static byte[] i(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length && bArr[i2] == 0; i2++) {
            i++;
        }
        int iMax = Math.max(1, bArr.length - i);
        byte[] bArr2 = new byte[iMax];
        int length2 = iMax - (bArr.length - i);
        System.arraycopy(bArr, i, bArr2, length2, iMax - length2);
        return bArr2;
    }

    @Override // defpackage.yy8
    public final nz8 a() {
        return d;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return new nz8(od2.m(i(this.b.toByteArray())) + 3 + od2.m(i(this.c.toByteArray())));
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        BigInteger bigInteger = f;
        this.b = bigInteger;
        this.c = bigInteger;
        if (i2 < 3) {
            throw new ZipException(xs1.h(i2, "X7875_NewUnix length is too short, only ", " bytes"));
        }
        int i3 = i + 1;
        this.a = Byte.toUnsignedInt(bArr[i]);
        int i4 = i + 2;
        int unsignedInt = Byte.toUnsignedInt(bArr[i3]);
        int i5 = unsignedInt + 3;
        if (i5 > i2) {
            throw new ZipException(dj7.j("X7875_NewUnix invalid: uidSize ", unsignedInt, " doesn't fit into ", " bytes", i2));
        }
        int i6 = unsignedInt + i4;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, i6);
        pz8.d(bArrCopyOfRange);
        this.b = new BigInteger(1, bArrCopyOfRange);
        int i7 = i6 + 1;
        int unsignedInt2 = Byte.toUnsignedInt(bArr[i6]);
        if (i5 + unsignedInt2 > i2) {
            throw new ZipException(dj7.j("X7875_NewUnix invalid: gidSize ", unsignedInt2, " doesn't fit into ", " bytes", i2));
        }
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i7, unsignedInt2 + i7);
        pz8.d(bArrCopyOfRange2);
        this.c = new BigInteger(1, bArrCopyOfRange2);
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        byte[] byteArray = this.b.toByteArray();
        byte[] byteArray2 = this.c.toByteArray();
        byte[] bArrI = i(byteArray);
        int iM = od2.m(bArrI);
        byte[] bArrI2 = i(byteArray2);
        int iM2 = od2.m(bArrI2);
        int i = iM + 3;
        byte[] bArr = new byte[i + iM2];
        if (bArrI != null) {
            pz8.d(bArrI);
        }
        if (bArrI2 != null) {
            pz8.d(bArrI2);
        }
        bArr[0] = pz8.e(this.a);
        bArr[1] = pz8.e(iM);
        if (bArrI != null) {
            System.arraycopy(bArrI, 0, bArr, 2, iM);
        }
        bArr[2 + iM] = pz8.e(iM2);
        if (bArrI2 != null) {
            System.arraycopy(bArrI2, 0, bArr, i, iM2);
        }
        return bArr;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        return wx3.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dx8) {
            dx8 dx8Var = (dx8) obj;
            if (this.a == dx8Var.a && this.b.equals(dx8Var.b) && this.c.equals(dx8Var.c)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return e;
    }

    public final int hashCode() {
        return this.c.hashCode() ^ (Integer.rotateLeft(this.b.hashCode(), 16) ^ (this.a * (-1234567)));
    }

    public final String toString() {
        return "0x7875 Zip Extra Field: UID=" + this.b + " GID=" + this.c;
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) {
    }
}
