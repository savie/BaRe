package defpackage;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f1 extends q1 {
    public static final ConcurrentHashMap c;
    public final byte[] a;
    public String b;

    static {
        new b1(0, f1.class);
        c = new ConcurrentHashMap();
    }

    public f1(String str) {
        char cCharAt;
        String strSubstring;
        int i;
        String strSubstring2;
        String strSubstring3;
        if (str.length() > 16385) {
            c6.f("exceeded OID contents length limit");
            throw null;
        }
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2' || !s1.B(2, str) || !(cCharAt == '2' || str.length() == 3 || str.charAt(3) == '.' || ((str.length() == 4 || str.charAt(4) == '.') && str.charAt(2) < '4'))) {
            c6.f(eq3.k("string ", str, " not a valid OID"));
            throw null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int iIndexOf = str.indexOf(46, 0);
        if (iIndexOf == -1) {
            strSubstring = str.substring(0);
            i = -1;
        } else {
            strSubstring = str.substring(0, iIndexOf);
            i = iIndexOf + 1;
        }
        int i2 = Integer.parseInt(strSubstring) * 40;
        if (i == -1) {
            strSubstring2 = null;
        } else {
            int iIndexOf2 = str.indexOf(46, i);
            if (iIndexOf2 == -1) {
                strSubstring2 = str.substring(i);
                i = -1;
            } else {
                String strSubstring4 = str.substring(i, iIndexOf2);
                i = 1 + iIndexOf2;
                strSubstring2 = strSubstring4;
            }
        }
        if (strSubstring2.length() <= 18) {
            s1.C(byteArrayOutputStream, Long.parseLong(strSubstring2) + ((long) i2));
        } else {
            s1.E(byteArrayOutputStream, new BigInteger(strSubstring2).add(BigInteger.valueOf(i2)));
        }
        while (i != -1) {
            if (i == -1) {
                strSubstring3 = null;
            } else {
                int iIndexOf3 = str.indexOf(46, i);
                if (iIndexOf3 == -1) {
                    strSubstring3 = str.substring(i);
                    i = -1;
                } else {
                    String strSubstring5 = str.substring(i, iIndexOf3);
                    i = iIndexOf3 + 1;
                    strSubstring3 = strSubstring5;
                }
            }
            if (strSubstring3.length() <= 18) {
                s1.C(byteArrayOutputStream, Long.parseLong(strSubstring3));
            } else {
                s1.E(byteArrayOutputStream, new BigInteger(strSubstring3));
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        y(byteArray.length);
        this.a = byteArray;
        this.b = str;
    }

    public static f1 B(byte[] bArr, boolean z) {
        y(bArr.length);
        f1 f1Var = (f1) c.get(new c1(bArr));
        if (f1Var != null) {
            return f1Var;
        }
        if (!s1.y(bArr)) {
            c6.f("invalid OID contents");
            return null;
        }
        if (z) {
            bArr = ms8.k(bArr);
        }
        return new f1(null, bArr);
    }

    public static String H(byte[] bArr) {
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
                        if (j2 < 40) {
                            sb.append('0');
                        } else if (j2 < 80) {
                            sb.append('1');
                            j2 -= 40;
                        } else {
                            sb.append('2');
                            j2 -= 80;
                        }
                        z = false;
                    }
                    sb.append('.');
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
                        sb.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z = false;
                    }
                    sb.append('.');
                    sb.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        return sb.toString();
    }

    public static void y(int i) {
        if (i <= 4096) {
            return;
        }
        c6.f("exceeded OID contents length limit");
    }

    public final synchronized String C() {
        try {
            if (this.b == null) {
                this.b = H(this.a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    public final f1 E() {
        c1 c1Var = new c1(this.a);
        ConcurrentHashMap concurrentHashMap = c;
        f1 f1Var = (f1) concurrentHashMap.get(c1Var);
        if (f1Var != null) {
            return f1Var;
        }
        synchronized (concurrentHashMap) {
            try {
                if (concurrentHashMap.containsKey(c1Var)) {
                    this = (f1) concurrentHashMap.get(c1Var);
                } else {
                    concurrentHashMap.put(c1Var, this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    public final boolean F(f1 f1Var) {
        byte[] bArr = f1Var.a;
        int length = bArr.length;
        byte[] bArr2 = this.a;
        if (bArr2.length > length) {
            for (int i = 0; i < length; i++) {
                if (bArr2[i] == bArr[i]) {
                }
            }
            return true;
        }
        return false;
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
        if (q1Var instanceof f1) {
            return Arrays.equals(this.a, ((f1) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) {
        m1Var.k(6, z, this.a);
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
        return C();
    }

    public final f1 x(String str) {
        String strK;
        byte[] bArrP;
        String strSubstring;
        ConcurrentHashMap concurrentHashMap = s1.c;
        if (str.length() <= 16383) {
            int i = 0;
            if (s1.B(0, str)) {
                int length = str.length();
                byte[] bArr = this.a;
                if (length <= 2) {
                    y(bArr.length + 1);
                    int iCharAt = str.charAt(0) - '0';
                    if (str.length() == 2) {
                        iCharAt = (iCharAt * 10) + (str.charAt(1) - '0');
                    }
                    int length2 = bArr.length;
                    bArrP = new byte[length2 + 1];
                    System.arraycopy(bArr, 0, bArrP, 0, length2);
                    bArrP[length2] = (byte) iCharAt;
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int i2 = -1;
                        if (i == -1) {
                            break;
                        }
                        if (i == -1) {
                            i2 = i;
                            strSubstring = null;
                        } else {
                            int iIndexOf = str.indexOf(46, i);
                            if (iIndexOf == -1) {
                                strSubstring = str.substring(i);
                            } else {
                                strSubstring = str.substring(i, iIndexOf);
                                i2 = iIndexOf + 1;
                            }
                        }
                        if (strSubstring.length() <= 18) {
                            s1.C(byteArrayOutputStream, Long.parseLong(strSubstring));
                        } else {
                            s1.E(byteArrayOutputStream, new BigInteger(strSubstring));
                        }
                        i = i2;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    y(bArr.length + byteArray.length);
                    bArrP = ms8.p(bArr, byteArray);
                }
                return new f1(dj7.k(C(), ".", str), bArrP);
            }
            strK = eq3.k("string ", str, " not a valid relative OID");
        } else {
            strK = "exceeded relative OID contents length limit";
        }
        c6.f(strK);
        return null;
    }

    public f1(String str, byte[] bArr) {
        this.a = bArr;
        this.b = str;
    }
}
