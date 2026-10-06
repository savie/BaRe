package defpackage;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sk1 extends j3 {
    public static final byte[] b = new byte[1];

    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) {
        Inflater inflater = new Inflater(true);
        return new qk1(new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(b)), inflater), inflater);
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) {
        Deflater deflater = new Deflater(j3.e(9, obj), true);
        return new rk1(new DeflaterOutputStream(outputStream, deflater), deflater);
    }
}
