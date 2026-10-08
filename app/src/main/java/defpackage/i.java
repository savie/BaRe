package defpackage;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends j3 {
    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) {
        return new g(inputStream, kk1Var, str, bArr);
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) {
        return new h((f) obj, outputStream);
    }

    @Override // defpackage.j3
    public final byte[] c(Object obj) {
        ((f) obj).getClass();
        throw null;
    }
}
