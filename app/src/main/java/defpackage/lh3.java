package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lh3 extends ByteArrayOutputStream {
    public final byte[] a() throws IOException {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        if (bArr.length == ((ByteArrayOutputStream) this).count) {
            return bArr;
        }
        y5.m("Size supplied is too small");
        return null;
    }
}
