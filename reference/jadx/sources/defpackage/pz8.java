package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pz8 {
    public static final long a = b(2162688);
    public static final /* synthetic */ int b = 0;

    public static byte[] a(byte[] bArr) {
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    public static long b(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, ((int) ((j >> 25) & 127)) + 1980);
        calendar.set(2, ((int) ((j >> 21) & 15)) - 1);
        calendar.set(5, ((int) (j >> 16)) & 31);
        calendar.set(11, ((int) (j >> 11)) & 31);
        calendar.set(12, ((int) (j >> 5)) & 63);
        calendar.set(13, ((int) (j << 1)) & 62);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static String c(m5 m5Var, byte[] bArr) {
        if (m5Var != null) {
            CRC32 crc32 = new CRC32();
            crc32.update(bArr);
            if (crc32.getValue() == m5Var.a) {
                try {
                    xm5 xm5Var = wy8.a;
                    byte[] bArr2 = m5Var.b;
                    return xm5Var.a(bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : null);
                } catch (IOException unused) {
                }
            }
        }
        return null;
    }

    public static void d(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b2 = bArr[i];
            int i2 = length - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b2;
        }
    }

    public static byte e(int i) {
        if (i <= 255 && i >= 0) {
            return i < 128 ? (byte) i : (byte) (i - 256);
        }
        c6.f(xs1.h(i, "Can only convert non-negative integers between [0,255] to byte: [", "]"));
        return (byte) 0;
    }
}
