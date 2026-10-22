package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tc6 extends InputStream {
    public int a;
    public int b;
    public final /* synthetic */ vc6 c;

    public tc6(vc6 vc6Var, sc6 sc6Var) {
        this.c = vc6Var;
        this.a = vc6Var.v(sc6Var.b + 4);
        this.b = sc6Var.c;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            f6.n("buffer");
            return 0;
        }
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.b;
        if (i3 <= 0) {
            return -1;
        }
        if (i2 > i3) {
            i2 = i3;
        }
        int i4 = this.a;
        vc6 vc6Var = this.c;
        vc6Var.q(i4, bArr, i, i2);
        this.a = vc6Var.v(this.a + i2);
        this.b -= i2;
        return i2;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        vc6 vc6Var = this.c;
        RandomAccessFile randomAccessFile = vc6Var.a;
        if (this.b == 0) {
            return -1;
        }
        randomAccessFile.seek(this.a);
        int i = randomAccessFile.read();
        this.a = vc6Var.v(this.a + 1);
        this.b--;
        return i;
    }
}
