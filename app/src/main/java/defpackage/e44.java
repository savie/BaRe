package defpackage;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class e44 {
    public static final f44 a = new f44();

    public static byte[] a(String str) {
        String str2;
        try {
            f44 f44Var = a;
            int length = str.length();
            byte[] bArr = f44Var.b;
            if (length < 0 || str.length() - length < 0) {
                a6.d("invalid offset and/or length specified");
                return null;
            }
            if ((length & 1) == 0) {
                int i = length >>> 1;
                byte[] bArr2 = new byte[i];
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    int i4 = i2 + 1;
                    byte b = bArr[str.charAt(i2)];
                    i2 += 2;
                    int i5 = bArr[str.charAt(i4)] | (b << 4);
                    if (i5 >= 0) {
                        bArr2[i3] = (byte) i5;
                    } else {
                        str2 = "invalid characters encountered in Hex string";
                    }
                }
                return bArr2;
            }
            str2 = "a hexadecimal encoding must have an even number of characters";
            y5.m(str2);
            return null;
        } catch (Exception e) {
            vd2 vd2Var = new vd2("exception decoding Hex string: " + e.getMessage());
            vd2Var.a = e;
            throw vd2Var;
        }
    }

    public static byte[] b(byte[] bArr, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f44 f44Var = a;
            f44Var.getClass();
            if (i >= 0) {
                byte[] bArr2 = new byte[72];
                int i2 = 0;
                while (i > 0) {
                    int iMin = Math.min(36, i);
                    int i3 = i2 + iMin;
                    int i4 = 0;
                    while (i2 < i3) {
                        int i5 = i2 + 1;
                        byte b = bArr[i2];
                        int i6 = i4 + 1;
                        byte[] bArr3 = f44Var.a;
                        bArr2[i4] = bArr3[(b & 255) >>> 4];
                        i4 += 2;
                        bArr2[i6] = bArr3[b & 15];
                        i2 = i5;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i4);
                    i -= iMin;
                    i2 = i3;
                }
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            p1 p1Var = new p1("exception encoding Hex string: " + e.getMessage(), 1);
            p1Var.b = e;
            throw p1Var;
        }
    }
}
