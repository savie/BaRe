package defpackage;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q48 {
    public final int a;
    public final int b;
    public final byte[] c;
    public final int d;

    public q48(byte[] bArr, int i) {
        this.a = i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = BigInteger.valueOf(i).toByteArray();
        int i2 = byteArray[0] == 0 ? 1 : 0;
        byteArrayOutputStream.write(byteArray, i2, byteArray.length - i2);
        int length = bArr == null ? 0 : bArr.length;
        this.b = length;
        if (length < 128) {
            byteArrayOutputStream.write(length);
        } else {
            byte[] byteArray2 = BigInteger.valueOf(length).toByteArray();
            int i3 = byteArray2[0] != 0 ? 0 : 1;
            byteArrayOutputStream.write(128 | (byteArray2.length - i3));
            byteArrayOutputStream.write(byteArray2, i3, byteArray2.length - i3);
        }
        this.d = byteArrayOutputStream.size();
        if (bArr != null) {
            byteArrayOutputStream.write(bArr, 0, length);
        }
        this.c = byteArrayOutputStream.toByteArray();
    }

    public static q48 c(ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        int i = b & 255;
        if ((b & 31) == 31) {
            i = (i << 8) | (byteBuffer.get() & 255);
            while ((i & 128) == 128) {
                i = (byteBuffer.get() & 255) | (i << 8);
            }
        }
        int i2 = byteBuffer.get() & 255;
        if (i2 == 128) {
            c6.f("Indefinite length not supported");
            return null;
        }
        if (i2 > 128) {
            int i3 = i2 - 128;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                i4 = (i4 << 8) | (byteBuffer.get() & 255);
            }
            i2 = i4;
        }
        byte[] bArr = new byte[i2];
        byteBuffer.get(bArr);
        return new q48(bArr, i);
    }

    public final byte[] a() {
        byte[] bArr = this.c;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final byte[] b() {
        int i = this.b;
        int i2 = this.d;
        return Arrays.copyOfRange(this.c, i2, i + i2);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Integer numValueOf = Integer.valueOf(this.a);
        Integer numValueOf2 = Integer.valueOf(this.b);
        byte[] bArrB = b();
        return String.format(locale, "Tlv(0x%x, %d, %s)", numValueOf, numValueOf2, x13.f(bArrB, 0, bArrB.length));
    }
}
