package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rf6 implements yw0 {
    public final nh7 a;
    public final nw0 b;
    public boolean c;

    public rf6(nh7 nh7Var) {
        nh7Var.getClass();
        this.a = nh7Var;
        this.b = new nw0();
    }

    @Override // defpackage.yw0
    public final long B(ij7 ij7Var) throws IOException {
        long j = 0;
        while (true) {
            long jH = ((rc4) ij7Var).H(this.b, 8192L);
            if (jH == -1) {
                return j;
            }
            j += jH;
            a();
        }
    }

    @Override // defpackage.yw0
    public final yw0 K(String str) {
        str.getClass();
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.Z(str);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 P(hy0 hy0Var) {
        hy0Var.getClass();
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.D(hy0Var);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 Q(long j) {
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.S(j);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 V(rc4 rc4Var, long j) throws IOException {
        while (j > 0) {
            long jH = rc4Var.H(this.b, j);
            if (jH == -1) {
                d6.d();
                return null;
            }
            j -= jH;
            a();
        }
        return this;
    }

    public final yw0 a() {
        if (this.c) {
            l0.e("closed");
            return null;
        }
        nw0 nw0Var = this.b;
        long j = nw0Var.b;
        if (j == 0) {
            j = 0;
        } else {
            m67 m67Var = nw0Var.a;
            m67Var.getClass();
            m67 m67Var2 = m67Var.g;
            m67Var2.getClass();
            int i = m67Var2.c;
            if (i < 8192 && m67Var2.e) {
                j -= (long) (i - m67Var2.b);
            }
        }
        if (j > 0) {
            this.a.f0(nw0Var, j);
        }
        return this;
    }

    @Override // defpackage.yw0
    public final nw0 c() {
        return this.b;
    }

    @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        nh7 nh7Var = this.a;
        if (this.c) {
            return;
        }
        nw0 nw0Var = this.b;
        long j = nw0Var.b;
        if (j > 0) {
            nh7Var.f0(nw0Var, j);
        }
        th = null;
        try {
            nh7Var.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.nh7
    public final f48 d() {
        return this.a.d();
    }

    @Override // defpackage.nh7
    public final void f0(nw0 nw0Var, long j) {
        nw0Var.getClass();
        if (this.c) {
            l0.e("closed");
        } else {
            this.b.f0(nw0Var, j);
            a();
        }
    }

    @Override // defpackage.yw0, defpackage.nh7, java.io.Flushable
    public final void flush() {
        if (this.c) {
            l0.e("closed");
            return;
        }
        nw0 nw0Var = this.b;
        long j = nw0Var.b;
        nh7 nh7Var = this.a;
        if (j > 0) {
            nh7Var.f0(nw0Var, j);
        }
        nh7Var.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.c;
    }

    @Override // defpackage.yw0
    public final OutputStream n0() {
        return new qf6(this);
    }

    public final String toString() {
        return "buffer(" + this.a + ')';
    }

    @Override // defpackage.yw0
    public final yw0 write(byte[] bArr) {
        bArr.getClass();
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.m75write(bArr, 0, bArr.length);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 writeByte(int i) {
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.J(i);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 writeInt(int i) {
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.U(i);
        a();
        return this;
    }

    @Override // defpackage.yw0
    public final yw0 writeShort(int i) {
        if (this.c) {
            l0.e("closed");
            return null;
        }
        this.b.W(i);
        a();
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.c) {
            int iWrite = this.b.write(byteBuffer);
            a();
            return iWrite;
        }
        l0.e("closed");
        return 0;
    }

    @Override // defpackage.yw0
    public final yw0 write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (!this.c) {
            this.b.m75write(bArr, i, i2);
            a();
            return this;
        }
        l0.e("closed");
        return null;
    }
}
