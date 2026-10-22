package defpackage;

import android.content.Context;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gk1 implements lo4 {
    public int a;
    public Object b;

    public gk1(int i) {
        if (i < 1 || i > 256) {
            c6.f(fz5.j(i, "Invalid distance: "));
            throw null;
        }
        this.a = i;
        this.b = new byte[i];
    }

    public static long C(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static y69 E(byte[] bArr, int i, int i2) {
        y69 y69Var = new y69(bArr, i, i2);
        try {
            y69Var.I(i2);
            return y69Var;
        } catch (p79 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract double A();

    public abstract int B();

    public ByteBuffer D(byte[] bArr, int i) {
        int[] iArrG = G(ym9.d(bArr), i);
        int[] iArr = (int[]) iArrG.clone();
        ym9.b(iArr);
        for (int i2 = 0; i2 < iArrG.length; i2++) {
            iArrG[i2] = iArrG[i2] + iArr[i2];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(iArrG, 0, 16);
        return byteBufferOrder;
    }

    public void F(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
        if (bArr.length != B()) {
            throw new GeneralSecurityException(fz5.j(B(), "The nonce length (in bytes) must be "));
        }
        int iRemaining = byteBuffer2.remaining();
        int i = iRemaining / 64;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            ByteBuffer byteBufferD = D(bArr, this.a + i3);
            if (i3 == i) {
                z85.K(byteBuffer, byteBuffer2, byteBufferD, iRemaining % 64);
            } else {
                z85.K(byteBuffer, byteBuffer2, byteBufferD, 64);
            }
        }
    }

    public abstract int[] G(int[] iArr, int i);

    public abstract float H();

    public abstract int I(int i);

    public abstract int J();

    public abstract void K(int i);

    public abstract int L();

    public abstract void M(int i);

    public abstract int N();

    public abstract int O();

    public abstract int P();

    public abstract int Q();

    public abstract int R();

    public abstract int S();

    public abstract long T();

    public abstract long U();

    public abstract long V();

    public abstract long W();

    public abstract long X();

    public abstract x69 Y();

    public abstract String Z();

    public abstract void a(int i);

    public abstract String a0();

    public abstract int b();

    public abstract boolean b0();

    public abstract boolean c();

    public abstract boolean c0();

    public abstract void d(int i);

    public abstract int e(int i);

    public abstract boolean f();

    public abstract gy0 g();

    public abstract double h();

    public abstract int j();

    public abstract int k();

    public abstract long l();

    public abstract float m();

    public abstract int n();

    public abstract long o();

    public abstract int p();

    public abstract long q();

    public abstract int r();

    public abstract long s();

    public abstract String t();

    public abstract String u();

    public abstract int v();

    public abstract int w();

    public abstract long x();

    public abstract boolean y(int i);

    public void z() throws fg4 {
        boolean zY;
        do {
            int iV = v();
            if (iV == 0) {
                return;
            }
            int i = this.a;
            if (i >= 100) {
                throw new fg4("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            this.a = i + 1;
            zY = y(iV);
            this.a--;
        } while (zY);
    }

    public gk1(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.b = ym9.d(bArr);
            this.a = i;
        } else {
            d6.f("The key length in bytes must be 32.");
            throw null;
        }
    }

    public gk1(Context context) {
        context.getSharedPreferences("crypto.".concat("KEY_256"), 0);
        this.b = new kh3();
        this.a = 2;
    }
}
