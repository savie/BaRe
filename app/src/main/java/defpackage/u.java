package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class u extends q1 implements w {
    public static final r b = new r(u.class, 3);
    public static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] a;

    public u(byte[] bArr, int i) {
        if (bArr == null) {
            f6.n("'data' cannot be null");
            throw null;
        }
        if (bArr.length == 0 && i != 0) {
            c6.f("zero length data with non-zero pad bits");
            throw null;
        }
        if (i > 7 || i < 0) {
            c6.f("pad bits cannot be greater than 7 or less than 0");
            throw null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, length);
        bArr2[0] = (byte) i;
        this.a = bArr2;
    }

    public static u B(Object obj) {
        if (obj == null || (obj instanceof u)) {
            return (u) obj;
        }
        if (obj instanceof b0) {
            q1 q1VarD = ((b0) obj).d();
            if (q1VarD instanceof u) {
                return (u) q1VarD;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (u) b.l((byte[]) obj);
            } catch (IOException e) {
                b6.e(e.getMessage(), "failed to construct BIT STRING from byte[]: ");
                return null;
            }
        }
        c6.f("illegal object in getInstance: ".concat(obj.getClass().getName()));
        return null;
    }

    public static u x(byte[] bArr) {
        String str;
        int length = bArr.length;
        if (length >= 1) {
            int i = bArr[0] & 255;
            if (i > 0) {
                if (i > 7 || length < 2) {
                    str = "invalid pad bits detected";
                } else {
                    byte b2 = bArr[length - 1];
                    if (b2 != ((byte) ((255 << i) & b2))) {
                        return new d92(bArr);
                    }
                }
            }
            return new f82(bArr);
        }
        str = "truncated BIT STRING detected";
        c6.f(str);
        return null;
    }

    public final byte[] C() {
        byte[] bArr = this.a;
        if (bArr[0] == 0) {
            return ms8.t(bArr, 1, bArr.length);
        }
        l0.e("attempt to get non-octet aligned data from BIT STRING");
        return null;
    }

    @Override // defpackage.w
    public final InputStream e() {
        byte[] bArr = this.a;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    @Override // defpackage.w
    public final int f() {
        return this.a[0] & 255;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        byte[] bArr = this.a;
        if (bArr.length < 2) {
            return 1;
        }
        int i = 0;
        int i2 = bArr[0] & 255;
        int length = bArr.length;
        int i3 = length - 1;
        byte b2 = (byte) ((255 << i2) & bArr[i3]);
        if (bArr != null) {
            i = length;
            while (true) {
                i3--;
                if (i3 < 0) {
                    break;
                }
                i = (i * 257) ^ bArr[i3];
            }
        }
        return (i * 257) ^ b2;
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (!(q1Var instanceof u)) {
            return false;
        }
        byte[] bArr = ((u) q1Var).a;
        byte[] bArr2 = this.a;
        int length = bArr2.length;
        if (bArr.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int i = length - 1;
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr2[i2] != bArr[i2]) {
                return false;
            }
        }
        int i3 = 255 << (bArr2[0] & 255);
        return ((byte) (bArr2[i] & i3)) == ((byte) (bArr[i] & i3));
    }

    public final String toString() {
        try {
            byte[] encoded = getEncoded();
            StringBuilder sb = new StringBuilder((encoded.length * 2) + 1);
            sb.append('#');
            for (int i = 0; i != encoded.length; i++) {
                byte b2 = encoded[i];
                char[] cArr = c;
                sb.append(cArr[(b2 >>> 4) & 15]);
                sb.append(cArr[b2 & 15]);
            }
            return sb.toString();
        } catch (IOException e) {
            q.e("Internal error encoding BitString: ", e.getMessage(), e);
            return null;
        }
    }

    @Override // defpackage.q1
    public q1 u() {
        return new f82(this.a);
    }

    @Override // defpackage.q1
    public q1 w() {
        return new d92(this.a);
    }

    public final byte[] y() {
        byte[] bArr = this.a;
        if (bArr.length == 1) {
            return j1.c;
        }
        int i = bArr[0] & 255;
        byte[] bArrT = ms8.t(bArr, 1, bArr.length);
        int length = bArrT.length - 1;
        bArrT[length] = (byte) (((byte) (255 << i)) & bArrT[length]);
        return bArrT;
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return this;
    }

    public u(byte[] bArr) {
        this.a = bArr;
    }
}
