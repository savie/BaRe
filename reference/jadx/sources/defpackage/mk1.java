package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mk1 extends j3 {
    public final bg0 b;

    public mk1(bg0 bg0Var) {
        super(new Class[0]);
        this.b = bg0Var;
    }

    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) throws IOException {
        try {
            bg0 bg0Var = this.b;
            bg0Var.getClass();
            return bg0Var.a(inputStream, v40.a);
        } catch (AssertionError e) {
            throw new IOException(eq3.k("BCJ filter used in ", str, " needs XZ for Java > 1.4 - see https://commons.apache.org/proper/commons-compress/limitations.html#7Z"), e);
        }
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) {
        bg0 bg0Var = this.b;
        pe3 pe3Var = new pe3(outputStream);
        bg0Var.getClass();
        return new dj3(bg0Var.b(pe3Var, v40.a));
    }
}
