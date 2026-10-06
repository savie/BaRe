package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n1 extends FilterOutputStream {
    public final nh4 a;

    public n1(nh4 nh4Var, ByteArrayOutputStream byteArrayOutputStream) {
        super(byteArrayOutputStream);
        this.a = nh4Var;
    }

    public final void a(z0 z0Var) throws IOException {
        m2 m2Var = z0Var.a;
        write((byte) (m2Var.b | m2Var.a.a | m2Var.d.a));
        ol1 ol1VarD = z0Var.a.d(this.a);
        int iE = ol1VarD.E(z0Var);
        if (iE < 127) {
            write(iE);
        } else {
            int i = 1;
            for (int i2 = iE; i2 > 255; i2 >>= 8) {
                i++;
            }
            write(i | 128);
            while (i > 0) {
                write(iE >> ((i - 1) * 8));
                i--;
            }
        }
        ol1VarD.D(z0Var, this);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
