package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jb7 extends iy1 {
    public final /* synthetic */ lb7 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb7(lb7 lb7Var, OutputStream outputStream) {
        super(outputStream);
        this.b = lb7Var;
    }

    @Override // defpackage.la6, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        super.write(bArr);
        this.b.d.update(bArr);
    }

    @Override // defpackage.la6, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.b.d.update(bArr, i, i2);
    }

    @Override // defpackage.la6, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        super.write(i);
        this.b.d.update(i);
    }
}
