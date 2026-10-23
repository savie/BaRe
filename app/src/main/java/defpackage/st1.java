package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class st1 extends InputStream {
    public final z1 a;
    public boolean b = true;
    public InputStream c;

    public st1(z1 z1Var) {
        this.a = z1Var;
    }

    public final l1 a() throws IOException {
        z1 z1Var = this.a;
        int i = ((ou4) z1Var.c).read();
        b0 b0VarA = i < 0 ? null : z1Var.a(i);
        if (b0VarA == null) {
            return null;
        }
        if (b0VarA instanceof l1) {
            return (l1) b0VarA;
        }
        c6.k(b0VarA.getClass(), "unknown object encountered: ");
        return null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        l1 l1VarA;
        int i3 = 0;
        if (this.c == null) {
            if (!this.b || (l1VarA = a()) == null) {
                return -1;
            }
            this.b = false;
            this.c = l1VarA.c();
        }
        while (true) {
            int i4 = this.c.read(bArr, i + i3, i2 - i3);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 == i2) {
                    return i3;
                }
            } else {
                l1 l1VarA2 = a();
                if (l1VarA2 == null) {
                    this.c = null;
                    if (i3 < 1) {
                        return -1;
                    }
                    return i3;
                }
                this.c = l1VarA2.c();
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        l1 l1VarA;
        if (this.c == null) {
            if (!this.b || (l1VarA = a()) == null) {
                return -1;
            }
            this.b = false;
            this.c = l1VarA.c();
        }
        while (true) {
            int i = this.c.read();
            if (i >= 0) {
                return i;
            }
            l1 l1VarA2 = a();
            if (l1VarA2 == null) {
                this.c = null;
                return -1;
            }
            this.c = l1VarA2.c();
        }
    }
}
