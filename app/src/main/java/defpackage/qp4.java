package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class qp4 extends op4 {
    public static final pp4 t;
    public static final pp4[] x;
    public final byte[] b;
    public final up4 c;
    public final lp4 d;
    public final int e;
    public final byte[] f;
    public final WeakHashMap k;
    public final int n;
    public final hl2 p;
    public int q;
    public rp4 r;

    static {
        pp4 pp4Var = new pp4(1);
        t = pp4Var;
        pp4[] pp4VarArr = new pp4[129];
        x = pp4VarArr;
        pp4VarArr[1] = pp4Var;
        int i = 2;
        while (true) {
            pp4[] pp4VarArr2 = x;
            if (i >= pp4VarArr2.length) {
                return;
            }
            pp4VarArr2[i] = new pp4(i);
            i++;
        }
    }

    public qp4(up4 up4Var, lp4 lp4Var, int i, byte[] bArr, int i2, byte[] bArr2) {
        super(true);
        this.c = up4Var;
        this.d = lp4Var;
        this.q = i;
        this.b = ms8.k(bArr);
        this.e = i2;
        this.f = ms8.k(bArr2);
        this.n = 1 << (up4Var.c + 1);
        this.k = new WeakHashMap();
        this.p = xh8.f(up4Var.b, up4Var.d);
    }

    public static qp4 e(Object obj) throws Throwable {
        Throwable th;
        if (obj instanceof qp4) {
            return (qp4) obj;
        }
        DataInputStream dataInputStream = null;
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream2 = (DataInputStream) obj;
            if (dataInputStream2.readInt() != 0) {
                l0.e("expected version 0 lms private key");
                return null;
            }
            up4 up4Var = (up4) up4.e.get(Integer.valueOf(dataInputStream2.readInt()));
            lp4 lp4Var = (lp4) lp4.g.get(Integer.valueOf(dataInputStream2.readInt()));
            byte[] bArr = new byte[16];
            dataInputStream2.readFully(bArr);
            int i = dataInputStream2.readInt();
            int i2 = dataInputStream2.readInt();
            int i3 = dataInputStream2.readInt();
            if (i3 < 0) {
                l0.e("secret length less than zero");
                return null;
            }
            if (i3 <= dataInputStream2.available()) {
                byte[] bArr2 = new byte[i3];
                dataInputStream2.readFully(bArr2);
                return new qp4(up4Var, lp4Var, i, bArr, i2, bArr2);
            }
            throw new IOException("secret length exceeded " + dataInputStream2.available());
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return e(iz1.v((InputStream) obj));
            }
            g84.k(obj, "cannot parse ");
            return null;
        }
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                qp4 qp4VarE = e(dataInputStream3);
                dataInputStream3.close();
                return qp4VarE;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream = dataInputStream3;
                if (dataInputStream == null) {
                    throw th;
                }
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final byte[] a(int i) {
        byte[] bArr;
        int i2 = 1 << this.c.c;
        byte[] bArr2 = this.b;
        hl2 hl2Var = this.p;
        if (i < i2) {
            int i3 = i * 2;
            byte[] bArrB = b(i3);
            byte[] bArrB2 = b(i3 + 1);
            byte[] bArrK = ms8.k(bArr2);
            hl2Var.update(bArrK, 0, bArrK.length);
            nc8.q0(i, hl2Var);
            hl2Var.a((byte) -125);
            hl2Var.a((byte) -125);
            hl2Var.update(bArrB, 0, bArrB.length);
            hl2Var.update(bArrB2, 0, bArrB2.length);
            byte[] bArr3 = new byte[hl2Var.c()];
            hl2Var.doFinal(bArr3, 0);
            return bArr3;
        }
        byte[] bArrK2 = ms8.k(bArr2);
        hl2Var.update(bArrK2, 0, bArrK2.length);
        nc8.q0(i, hl2Var);
        hl2Var.a((byte) -126);
        hl2Var.a((byte) -126);
        byte[] bArrK3 = ms8.k(bArr2);
        int i4 = i - i2;
        byte[] bArrK4 = ms8.k(this.f);
        lp4 lp4Var = this.d;
        hl2 hl2VarO = xh8.o(lp4Var);
        f1 f1Var = lp4Var.f;
        int i5 = lp4Var.b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(bArrK3);
            byte b = (byte) (i4 >>> 24);
            byteArrayOutputStream.write(b);
            byte b2 = (byte) (i4 >>> 16);
            byteArrayOutputStream.write(b2);
            byte b3 = (byte) (i4 >>> 8);
            byteArrayOutputStream.write(b3);
            byte b4 = (byte) i4;
            byteArrayOutputStream.write(b4);
            byteArrayOutputStream.write(-128);
            byteArrayOutputStream.write(-128);
            while (true) {
                bArr = null;
                if (byteArrayOutputStream.size() >= 22) {
                    break;
                }
                byteArrayOutputStream.write(0);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            hl2VarO.update(byteArray, 0, byteArray.length);
            hl2 hl2VarF = xh8.f(i5, f1Var);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream2.write(bArrK3);
                byteArrayOutputStream2.write(b);
                byteArrayOutputStream2.write(b2);
                byteArrayOutputStream2.write(b3);
                byteArrayOutputStream2.write(b4);
                int iC = hl2VarF.c() + 23;
                while (byteArrayOutputStream2.size() < iC) {
                    byteArrayOutputStream2.write(0);
                }
                byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                i67 i67Var = new i67(bArrK3, bArrK4, xh8.f(i5, f1Var));
                i67Var.d = i4;
                i67Var.e = 0;
                int i6 = lp4Var.d;
                int i7 = (1 << lp4Var.c) - 1;
                int i8 = 0;
                while (i8 < i6) {
                    i67Var.a(23, i8 < i6 + (-1), byteArray2);
                    short s = (short) i8;
                    byteArray2[20] = (byte) (s >>> 8);
                    byteArray2[21] = (byte) s;
                    for (int i9 = 0; i9 < i7; i9++) {
                        byteArray2[22] = (byte) i9;
                        hl2VarF.update(byteArray2, 0, byteArray2.length);
                        hl2VarF.doFinal(byteArray2, 23);
                    }
                    hl2VarO.update(byteArray2, 23, i5);
                    i8++;
                }
                int iC2 = hl2VarO.c();
                byte[] bArr4 = new byte[iC2];
                hl2VarO.doFinal(bArr4, 0);
                hl2Var.update(bArr4, 0, iC2);
                byte[] bArr5 = new byte[hl2Var.c()];
                hl2Var.doFinal(bArr5, 0);
                return bArr5;
            } catch (Exception e) {
                e = e;
                e6.i(e.getMessage(), e);
                return bArr;
            }
        } catch (Exception e2) {
            e = e2;
            bArr = null;
        }
    }

    public final byte[] b(int i) {
        if (i < this.n) {
            return c(i < 129 ? x[i] : new pp4(i));
        }
        return a(i);
    }

    public final byte[] c(pp4 pp4Var) {
        synchronized (this.k) {
            try {
                byte[] bArr = (byte[]) this.k.get(pp4Var);
                if (bArr != null) {
                    return bArr;
                }
                byte[] bArrA = a(pp4Var.a);
                this.k.put(pp4Var, bArrA);
                return bArrA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized int d() {
        return this.q;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qp4.class != obj.getClass()) {
            return false;
        }
        qp4 qp4Var = (qp4) obj;
        if (this.q != qp4Var.q || this.e != qp4Var.e || !Arrays.equals(this.b, qp4Var.b)) {
            return false;
        }
        up4 up4Var = qp4Var.c;
        up4 up4Var2 = this.c;
        if (up4Var2 == null ? up4Var != null : !up4Var2.equals(up4Var)) {
            return false;
        }
        lp4 lp4Var = qp4Var.d;
        lp4 lp4Var2 = this.d;
        if (lp4Var2 == null ? lp4Var == null : lp4Var2.equals(lp4Var)) {
            return Arrays.equals(this.f, qp4Var.f);
        }
        return false;
    }

    public final rp4 f() {
        rp4 rp4Var;
        synchronized (this) {
            try {
                if (this.r == null) {
                    this.r = new rp4(this.c, this.d, c(t), this.b);
                }
                rp4Var = this.r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rp4Var;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        ty3 ty3Var = new ty3(2);
        ty3Var.g(0);
        ty3Var.g(this.c.a);
        ty3Var.g(this.d.a);
        ty3Var.b(this.b);
        ty3Var.g(this.q);
        ty3Var.g(this.e);
        byte[] bArr = this.f;
        ty3Var.g(bArr.length);
        ty3Var.b(bArr);
        return ((ByteArrayOutputStream) ty3Var.a).toByteArray();
    }

    public final int hashCode() {
        int iX = (ms8.x(this.b) + (this.q * 31)) * 31;
        up4 up4Var = this.c;
        int iHashCode = (iX + (up4Var != null ? up4Var.hashCode() : 0)) * 31;
        lp4 lp4Var = this.d;
        return ms8.x(this.f) + ((((iHashCode + (lp4Var != null ? lp4Var.hashCode() : 0)) * 31) + this.e) * 31);
    }
}
