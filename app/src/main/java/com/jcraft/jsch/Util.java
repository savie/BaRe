package com.jcraft.jsch;

import com.nimbusds.jose.jwk.JWKParameterNames;
import defpackage.fz5;
import java.io.File;
import java.io.FileInputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class Util {
    public static final byte[] a;
    public static final String[] b;
    public static final byte[] c;

    static {
        Charset charset = StandardCharsets.UTF_8;
        a = p("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=", charset);
        b = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", JWKParameterNames.RSA_EXPONENT, "f"};
        c = p("", charset);
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }

    public static String c(byte[] bArr) {
        return new String(bArr, 0, bArr.length, StandardCharsets.UTF_8);
    }

    public static String d(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, StandardCharsets.UTF_8);
    }

    public static void e(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    public static String f(String str) {
        try {
            return str.startsWith("~") ? str.replace("~", System.getProperty("user.home")) : str;
        } catch (SecurityException unused) {
            return str;
        }
    }

    public static Socket g(int i, int i2, String str) throws JSchException {
        Socket socket = new Socket();
        try {
            socket.connect(new InetSocketAddress(str, i), i2);
            return socket;
        } catch (Exception e) {
            try {
                socket.close();
            } catch (Exception unused) {
            }
            throw new JSchException(e instanceof SocketTimeoutException ? "timeout: socket is not established" : e.toString(), e);
        }
    }

    public static String h(String str, String[] strArr) {
        String[] strArrO = o(str);
        String string = null;
        for (int i = 0; i < strArrO.length; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    if (string != null) {
                        StringBuilder sbN = fz5.n(string, ",");
                        sbN.append(strArrO[i]);
                        string = sbN.toString();
                        break;
                    }
                    string = strArrO[i];
                    break;
                }
                if (strArrO[i].equals(strArr[i2])) {
                    break;
                }
                i2++;
            }
        }
        return string;
    }

    public static byte[] i(byte[] bArr, int i, int i2) throws JSchException {
        try {
            byte[] bArr2 = new byte[i2];
            int i3 = 0;
            for (int i4 = i; i4 < i + i2; i4 += 4) {
                int i5 = i4 + 1;
                bArr2[i3] = (byte) ((u(bArr[i4]) << 2) | ((u(bArr[i5]) & 48) >>> 4));
                int i6 = i4 + 2;
                if (bArr[i6] == 61) {
                    i3++;
                    break;
                }
                bArr2[i3 + 1] = (byte) (((u(bArr[i5]) & 15) << 4) | ((u(bArr[i6]) & 60) >>> 2));
                int i7 = i4 + 3;
                if (bArr[i7] == 61) {
                    i3 += 2;
                    break;
                }
                bArr2[i3 + 2] = (byte) (((u(bArr[i6]) & 3) << 6) | (u(bArr[i7]) & 63));
                i3 += 3;
            }
            byte[] bArr3 = new byte[i3];
            System.arraycopy(bArr2, 0, bArr3, 0, i3);
            return bArr3;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new JSchException("fromBase64: invalid base64 data", e);
        }
    }

    public static byte[] j(String str) {
        String strF = f(str);
        File file = new File(strF);
        FileInputStream fileInputStream = new FileInputStream(strF);
        try {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            int i = 0;
            while (true) {
                int i2 = fileInputStream.read(bArr, i, length - i);
                if (i2 <= 0) {
                    fileInputStream.close();
                    return bArr;
                }
                i += i2;
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String k(HASH hash, byte[] bArr) {
        try {
            hash.init();
            int i = 0;
            hash.update(bArr, 0, bArr.length);
            byte[] bArrDigest = hash.digest();
            StringBuilder sb = new StringBuilder();
            sb.append(hash.name());
            sb.append(":");
            if (hash.name().equals("MD5")) {
                while (i < bArrDigest.length) {
                    byte b2 = bArrDigest[i];
                    String[] strArr = b;
                    sb.append(strArr[((b2 & 255) >>> 4) & 15]);
                    sb.append(strArr[b2 & 15]);
                    i++;
                    if (i < bArrDigest.length) {
                        sb.append(":");
                    }
                }
            } else {
                byte[] bArrQ = q(bArrDigest.length, false, bArrDigest);
                sb.append(d(bArrQ, 0, bArrQ.length));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "???";
        }
    }

    public static boolean l(byte[] bArr, byte[] bArr2) {
        if (bArr2.length <= 0 || bArr2[0] != 46) {
            return m(bArr, bArr2, 0, 0);
        }
        if (bArr.length <= 0 || bArr[0] != 46) {
            return false;
        }
        if (bArr.length == 2 && bArr[1] == 42) {
            return true;
        }
        return m(bArr, bArr2, 1, 1);
    }

    public static boolean m(byte[] bArr, byte[] bArr2, int i, int i2) {
        byte b2;
        int iN;
        int length = bArr.length;
        if (length == 0) {
            return false;
        }
        int length2 = bArr2.length;
        while (i < length && i2 < length2) {
            byte b3 = bArr[i];
            if (b3 == 92) {
                int i3 = i + 1;
                if (i3 == length || (b2 = bArr[i3]) != bArr2[i2]) {
                    return false;
                }
                i = i3 + n(b2);
                iN = n(bArr2[i2]);
            } else {
                if (b3 == 42) {
                    while (i < length && bArr[i] == 42) {
                        i++;
                    }
                    if (length == i) {
                        return true;
                    }
                    byte b4 = bArr[i];
                    if (b4 == 63) {
                        while (i2 < length2) {
                            if (m(bArr, bArr2, i, i2)) {
                                return true;
                            }
                            i2 += n(bArr2[i2]);
                        }
                        return false;
                    }
                    if (b4 != 92) {
                        while (i2 < length2) {
                            if (b4 == bArr2[i2] && m(bArr, bArr2, i, i2)) {
                                return true;
                            }
                            i2 += n(bArr2[i2]);
                        }
                        return false;
                    }
                    int i4 = i + 1;
                    if (i4 == length) {
                        return false;
                    }
                    byte b5 = bArr[i4];
                    while (i2 < length2) {
                        if (b5 == bArr2[i2] && m(bArr, bArr2, n(b5) + i4, n(bArr2[i2]) + i2)) {
                            return true;
                        }
                        i2 += n(bArr2[i2]);
                    }
                    return false;
                }
                if (b3 == 63) {
                    i++;
                    iN = n(bArr2[i2]);
                } else {
                    if (b3 != bArr2[i2]) {
                        return false;
                    }
                    i += n(b3);
                    i2 += n(bArr2[i2]);
                    if (i2 < length2) {
                        continue;
                    } else {
                        if (i >= length) {
                            return true;
                        }
                        if (bArr[i] == 42) {
                            break;
                        }
                    }
                }
            }
            i2 += iN;
        }
        if (i == length && i2 == length2) {
            return true;
        }
        if (i2 < length2 || bArr[i] != 42) {
            return false;
        }
        while (i < length) {
            int i5 = i + 1;
            if (bArr[i] != 42) {
                return false;
            }
            i = i5;
        }
        return true;
    }

    public static int n(byte b2) {
        if (((byte) (b2 & 128)) == 0) {
            return 1;
        }
        if (((byte) (b2 & 224)) == -64) {
            return 2;
        }
        return ((byte) (b2 & 240)) == -32 ? 3 : 1;
    }

    public static String[] o(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(",", i);
            if (iIndexOf < 0) {
                arrayList.add(d(bytes, i, bytes.length - i));
                return (String[]) arrayList.toArray(new String[0]);
            }
            arrayList.add(d(bytes, i, iIndexOf - i));
            i = iIndexOf + 1;
        }
    }

    public static byte[] p(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        return str.getBytes(charset);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x007c A[PHI: r13
      0x007c: PHI (r13v2 int) = (r13v1 int), (r13v3 int) binds: [B:14:0x00ac, B:9:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
    public static byte[] q(int i, boolean z, byte[] bArr) {
        byte[] bArr2;
        int i2;
        byte[] bArr3 = new byte[i * 2];
        int i3 = (i / 3) * 3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            bArr2 = a;
            if (i4 >= i3) {
                break;
            }
            bArr3[i5] = bArr2[(bArr[i4] >>> 2) & 63];
            int i6 = i4 + 1;
            bArr3[i5 + 1] = bArr2[((bArr[i4] & 3) << 4) | ((bArr[i6] >>> 4) & 15)];
            int i7 = i4 + 2;
            int i8 = i5 + 3;
            bArr3[i5 + 2] = bArr2[((bArr[i6] & 15) << 2) | ((bArr[i7] >>> 6) & 3)];
            i5 += 4;
            bArr3[i8] = bArr2[bArr[i7] & 63];
            i4 += 3;
        }
        int i9 = i - i3;
        if (i9 == 1) {
            bArr3[i5] = bArr2[(bArr[i4] >>> 2) & 63];
            int i10 = ((bArr[i4] & 3) << 4) & 63;
            i2 = i5 + 2;
            bArr3[i5 + 1] = bArr2[i10];
            if (z) {
                int i11 = i5 + 3;
                bArr3[i2] = 61;
                i5 += 4;
                bArr3[i11] = 61;
            } else {
                i5 = i2;
            }
        } else if (i9 == 2) {
            bArr3[i5] = bArr2[(bArr[i4] >>> 2) & 63];
            int i12 = (bArr[i4] & 3) << 4;
            int i13 = i4 + 1;
            bArr3[i5 + 1] = bArr2[i12 | ((bArr[i13] >>> 4) & 15)];
            int i14 = ((bArr[i13] & 15) << 2) & 63;
            i2 = i5 + 3;
            bArr3[i5 + 2] = bArr2[i14];
            if (z) {
                i5 += 4;
                bArr3[i2] = 61;
            } else {
                i5 = i2;
            }
        }
        byte[] bArr4 = new byte[i5];
        System.arraycopy(bArr3, 0, bArr4, 0, i5);
        return bArr4;
    }

    public static String r(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < bArr.length) {
            String hexString = Integer.toHexString(bArr[i] & 255);
            StringBuilder sb2 = new StringBuilder("0x");
            sb2.append(hexString.length() == 1 ? "0" : "");
            sb2.append(hexString);
            sb.append(sb2.toString());
            i++;
            if (i < bArr.length) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    public static String s(String str) {
        Charset charset = StandardCharsets.UTF_8;
        byte[] bArrP = p(str, charset);
        byte[] bArrT = t(bArrP);
        return bArrP.length == bArrT.length ? str : new String(bArrT, 0, bArrT.length, charset);
    }

    public static byte[] t(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            if (bArr[i] == 92) {
                int i2 = i + 1;
                if (i2 == length) {
                    break;
                }
                System.arraycopy(bArr, i2, bArr, i, bArr.length - i2);
                length--;
                i = i2;
            } else {
                i++;
            }
        }
        if (length == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static byte u(byte b2) {
        if (b2 == 61) {
            return (byte) 0;
        }
        int i = 0;
        while (true) {
            byte[] bArr = a;
            if (i >= bArr.length) {
                return (byte) 0;
            }
            if (b2 == bArr[i]) {
                return (byte) i;
            }
            i++;
        }
    }
}
