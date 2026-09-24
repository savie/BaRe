package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class df6 extends bf6 {
    public final OutputStream m;

    public df6(OutputStream outputStream) {
        this.m = outputStream;
        this.h = 0L;
        this.i = -1;
        this.k = (byte) 0;
        this.j = 1L;
    }

    @Override // defpackage.bf6
    public final void X(int i) throws IOException {
        this.m.write(i);
    }
}
