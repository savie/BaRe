package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class rt1 extends InputStream {
    public final z1 a;
    public boolean b = true;
    public int c = 0;
    public w d;
    public InputStream e;

    public rt1(z1 z1Var) {
        this.a = z1Var;
    }

    public final w a() throws IOException {
        z1 z1Var = this.a;
        int i = ((ou4) z1Var.c).read();
        b0 b0VarA = i < 0 ? null : z1Var.a(i);
        if (b0VarA == null) {
            return null;
        }
        if (!(b0VarA instanceof w)) {
            c6.k(b0VarA.getClass(), "unknown object encountered: ");
            return null;
        }
        if (this.c == 0) {
            return (w) b0VarA;
        }
        y5.m("only the last nested bitstring can have padding");
        return null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (this.e == null) {
            if (!this.b) {
                return -1;
            }
            w wVarA = a();
            this.d = wVarA;
            if (wVarA == null) {
                return -1;
            }
            this.b = false;
            this.e = wVarA.e();
        }
        while (true) {
            int i4 = this.e.read(bArr, i + i3, i2 - i3);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 == i2) {
                    return i3;
                }
            } else {
                this.c = this.d.f();
                w wVarA2 = a();
                this.d = wVarA2;
                if (wVarA2 == null) {
                    this.e = null;
                    if (i3 < 1) {
                        return -1;
                    }
                    return i3;
                }
                this.e = wVarA2.e();
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.e == null) {
            if (this.b) {
                w wVarA = a();
                this.d = wVarA;
                if (wVarA != null) {
                    this.b = false;
                    this.e = wVarA.e();
                }
            }
            return -1;
        }
        while (true) {
            int i = this.e.read();
            if (i >= 0) {
                return i;
            }
            this.c = this.d.f();
            w wVarA2 = a();
            this.d = wVarA2;
            if (wVarA2 == null) {
                this.e = null;
                return -1;
            }
            this.e = wVarA2.e();
        }
    }
}
