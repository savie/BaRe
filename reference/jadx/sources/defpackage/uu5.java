package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uu5 {
    public static final char[] a;
    public static final byte[] b;
    public static final boolean[] c;

    static {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        a = cArr;
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr["0123456789abcdef".charAt(i2)] = (byte) i2;
        }
        b = bArr;
        boolean[] zArr = new boolean[65535];
        int i3 = 0;
        while (i3 < 65535) {
            zArr[i3] = (48 <= i3 && i3 <= 57) || (97 <= i3 && i3 <= 102);
            i3++;
        }
        c = zArr;
    }
}
