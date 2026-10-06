package defpackage;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nk1 extends j3 {
    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) {
        return new uj0(inputStream);
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) {
        return new wj0(outputStream, j3.e(9, obj));
    }
}
