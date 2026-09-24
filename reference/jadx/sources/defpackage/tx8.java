package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class tx8 extends uv6 implements wv2 {
    public final rx8 c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public volatile lh0 n;

    /* JADX WARN: Illegal instructions before constructor call */
    public tx8(vg6 vg6Var) {
        rx8 rx8Var = (rx8) vg6Var.c;
        super(rx8Var.e, true);
        this.c = rx8Var;
        int i = rx8Var.f;
        byte[] bArr = (byte[]) vg6Var.d;
        if (bArr == null) {
            this.d = new byte[i];
        } else {
            if (bArr.length != i) {
                c6.f("size of secretKeySeed needs to be equal size of digest");
                throw null;
            }
            this.d = bArr;
        }
        byte[] bArr2 = (byte[]) vg6Var.e;
        if (bArr2 == null) {
            this.e = new byte[i];
        } else {
            if (bArr2.length != i) {
                c6.f("size of secretKeyPRF needs to be equal size of digest");
                throw null;
            }
            this.e = bArr2;
        }
        byte[] bArr3 = (byte[]) vg6Var.f;
        if (bArr3 == null) {
            this.f = new byte[i];
        } else {
            if (bArr3.length != i) {
                c6.f("size of publicSeed needs to be equal size of digest");
                throw null;
            }
            this.f = bArr3;
        }
        byte[] bArr4 = (byte[]) vg6Var.g;
        if (bArr4 == null) {
            this.k = new byte[i];
        } else {
            if (bArr4.length != i) {
                c6.f("size of root needs to be equal size of digest");
                throw null;
            }
            this.k = bArr4;
        }
        lh0 lh0Var = (lh0) vg6Var.h;
        if (lh0Var != null) {
            this.n = lh0Var;
        } else {
            int i2 = vg6Var.a;
            int i3 = 1 << rx8Var.b;
            if (i2 >= i3 - 2 || bArr3 == null || bArr == null) {
                lh0 lh0Var2 = new lh0(new y8(rx8Var.g), rx8Var.b, rx8Var.c, i2);
                lh0Var2.r = i3 - 1;
                lh0Var2.p = i2;
                lh0Var2.q = true;
                this.n = lh0Var2;
            } else {
                uq5 uq5Var = new uq5(new tq5());
                y8 y8Var = new y8(rx8Var.g);
                int i4 = rx8Var.b;
                lh0 lh0Var3 = new lh0(y8Var, i4, rx8Var.c, (1 << i4) - 1);
                lh0Var3.a(bArr3, bArr, uq5Var);
                while (lh0Var3.p < i2) {
                    lh0Var3.b(bArr3, bArr, uq5Var);
                    lh0Var3.q = false;
                }
                this.n = lh0Var3;
            }
        }
        int i5 = vg6Var.b;
        if (i5 < 0 || i5 == this.n.r) {
            return;
        }
        c6.f("maxIndex set but not reflected in state");
        throw null;
    }

    public final byte[] a() {
        byte[] bArrP;
        synchronized (this) {
            try {
                int i = this.c.f;
                int i2 = i + 4;
                int i3 = i2 + i;
                int i4 = i3 + i;
                byte[] bArr = new byte[i + i4];
                xx3.n(bArr, this.n.p, 0);
                jd4.i(4, bArr, this.d);
                jd4.i(i2, bArr, this.e);
                jd4.i(i3, bArr, this.f);
                jd4.i(i4, bArr, this.k);
                try {
                    lh0 lh0Var = this.n;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    objectOutputStream.writeObject(lh0Var);
                    objectOutputStream.flush();
                    bArrP = ms8.p(bArr, byteArrayOutputStream.toByteArray());
                } catch (IOException e) {
                    throw new RuntimeException("error serializing bds state: " + e.getMessage());
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
