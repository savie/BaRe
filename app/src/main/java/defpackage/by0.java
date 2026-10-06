package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class by0 extends ByteArrayOutputStream {
    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public byte[] b() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public void g(wd7 wd7Var) throws IOException {
        wd7Var.write(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
    }
}
