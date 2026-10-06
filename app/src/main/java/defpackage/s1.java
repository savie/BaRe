package defpackage;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class s1 extends q1 {
    public static final ConcurrentHashMap c = new ConcurrentHashMap();
    public final byte[] a;
    public String b = null;

    public s1(byte[] bArr) {
        this.a = bArr;
    }

    public static boolean B(int i, String str) {
        int length = str.length();
        int i2 = 0;
        while (true) {
            int i3 = length - 1;
            if (i3 < i) {
                if (i2 == 0 || (i2 > 1 && str.charAt(length) == '0')) {
                    break;
                }
                return true;
            }
            char cCharAt = str.charAt(i3);
            if (cCharAt == '.') {
                if (i2 == 0 || (i2 > 1 && str.charAt(length) == '0')) {
                    break;
                }
                i2 = 0;
                length = i3;
            } else {
                if ('0' > cCharAt || cCharAt > '9') {
                    break;
                }
                i2++;
                length = i3;
            }
        }
        return false;
    }

    public static void C(ByteArrayOutputStream byteArrayOutputStream, long j) {
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        while (j >= 128) {
            j >>= 7;
            i--;
            bArr[i] = (byte) (((int) j) | 128);
        }
        byteArrayOutputStream.write(bArr, i, 9 - i);
    }

    public static void E(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int iBitLength = (bigInteger.bitLength() + 6) / 7;
        if (iBitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[iBitLength];
        int i = iBitLength - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            bArr[i2] = (byte) (bigInteger.intValue() | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i] = (byte) (bArr[i] & 127);
        byteArrayOutputStream.write(bArr, 0, iBitLength);
    }

    public static s1 x(byte[] bArr, boolean z) {
        if (bArr.length > 4096) {
            c6.f("exceeded relative OID contents length limit");
            return null;
        }
        s1 s1Var = (s1) c.get(new c1(bArr));
        if (s1Var != null) {
            return s1Var;
        }
        if (!y(bArr)) {
            c6.f("invalid relative OID contents");
            return null;
        }
        if (z) {
            bArr = ms8.k(bArr);
        }
        return new s1(bArr);
    }

    public static boolean y(byte[] bArr) {
        if (u86.a("org.bouncycastle.asn1.allow_wrong_oid_enc")) {
            return true;
        }
        if (bArr.length < 1) {
            return false;
        }
        boolean z = true;
        for (int i = 0; i < bArr.length; i++) {
            if (z && (bArr[i] & 255) == 128) {
                return false;
            }
            z = (bArr[i] & 128) == 0;
        }
        return z;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ms8.x(this.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (this == q1Var) {
            return true;
        }
        if (q1Var instanceof s1) {
            return Arrays.equals(this.a, ((s1) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(13, z, this.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(this.a.length, z);
    }

    public final String toString() {
        String str;
        synchronized (this) {
            try {
                if (this.b == null) {
                    byte[] bArr = this.a;
                    StringBuilder sb = new StringBuilder();
                    boolean z = true;
                    BigInteger bigIntegerShiftLeft = null;
                    long j = 0;
                    for (int i = 0; i != bArr.length; i++) {
                        byte b = bArr[i];
                        if (j <= 72057594037927808L) {
                            long j2 = j + ((long) (b & 127));
                            if ((b & 128) == 0) {
                                if (z) {
                                    z = false;
                                } else {
                                    sb.append('.');
                                }
                                sb.append(j2);
                                j = 0;
                            } else {
                                j = j2 << 7;
                            }
                        } else {
                            if (bigIntegerShiftLeft == null) {
                                bigIntegerShiftLeft = BigInteger.valueOf(j);
                            }
                            BigInteger bigIntegerOr = bigIntegerShiftLeft.or(BigInteger.valueOf(b & 127));
                            if ((b & 128) == 0) {
                                if (z) {
                                    z = false;
                                } else {
                                    sb.append('.');
                                }
                                sb.append(bigIntegerOr);
                                bigIntegerShiftLeft = null;
                                j = 0;
                            } else {
                                bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                            }
                        }
                    }
                    this.b = sb.toString();
                }
                str = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
