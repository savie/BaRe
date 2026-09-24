package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class nx8 extends uv6 implements wv2 {
    public final kx8 c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public volatile long n;
    public volatile mh0 p;

    /* JADX WARN: Illegal instructions before constructor call */
    public nx8(mx8 mx8Var) {
        kx8 kx8Var = mx8Var.a;
        rx8 rx8Var = kx8Var.b;
        super(rx8Var.e, true);
        this.c = kx8Var;
        int i = rx8Var.f;
        this.n = mx8Var.b;
        byte[] bArr = mx8Var.d;
        if (bArr == null) {
            this.d = new byte[i];
        } else {
            if (bArr.length != i) {
                c6.f("size of secretKeySeed needs to be equal size of digest");
                throw null;
            }
            this.d = bArr;
        }
        byte[] bArr2 = mx8Var.e;
        if (bArr2 == null) {
            this.e = new byte[i];
        } else {
            if (bArr2.length != i) {
                c6.f("size of secretKeyPRF needs to be equal size of digest");
                throw null;
            }
            this.e = bArr2;
        }
        byte[] bArr3 = mx8Var.f;
        if (bArr3 == null) {
            this.f = new byte[i];
        } else {
            if (bArr3.length != i) {
                c6.f("size of publicSeed needs to be equal size of digest");
                throw null;
            }
            this.f = bArr3;
        }
        byte[] bArr4 = mx8Var.g;
        if (bArr4 == null) {
            this.k = new byte[i];
        } else {
            if (bArr4.length != i) {
                c6.f("size of root needs to be equal size of digest");
                throw null;
            }
            this.k = bArr4;
        }
        mh0 mh0Var = mx8Var.h;
        if (mh0Var == null) {
            mh0Var = (!jd4.u(kx8Var.c, mx8Var.b) || bArr3 == null || bArr == null) ? new mh0(mx8Var.c + 1) : new mh0(kx8Var, mx8Var.b, bArr3, bArr);
        }
        this.p = mh0Var;
        long j = mx8Var.c;
        if (j < 0 || j == this.p.b) {
            return;
        }
        c6.f("maxIndex set but not reflected in state");
        throw null;
    }

    public final byte[] a() {
        byte[] bArrP;
        synchronized (this) {
            try {
                kx8 kx8Var = this.c;
                int i = kx8Var.b.f;
                int i2 = (kx8Var.c + 7) / 8;
                int i3 = i2 + i;
                int i4 = i3 + i;
                int i5 = i4 + i;
                byte[] bArr = new byte[i + i5];
                jd4.i(0, bArr, jd4.J(i2, this.n));
                jd4.i(i2, bArr, this.d);
                jd4.i(i3, bArr, this.e);
                jd4.i(i4, bArr, this.f);
                jd4.i(i5, bArr, this.k);
                try {
                    mh0 mh0Var = this.p;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    objectOutputStream.writeObject(mh0Var);
                    objectOutputStream.flush();
                    bArrP = ms8.p(bArr, byteArrayOutputStream.toByteArray());
                } catch (IOException e) {
                    throw new IllegalStateException("error serializing bds state: " + e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrP;
    }

    @Override // defpackage.wv2
    public final byte[] getEncoded() {
        byte[] bArrA;
        synchronized (this) {
            bArrA = a();
        }
        return bArrA;
    }
}
