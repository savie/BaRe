package defpackage;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y45 extends OutputStream {
    public final wd7 a;

    public y45(String str) {
        kr7 kr7Var = new kr7(str);
        this.a = kr7Var.b("[ -b @@ ]") ? new td7(kr7Var, "w") : new wd7(kr7Var, "w");
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) (i & 255)}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        this.a.write(bArr, i, i2);
    }
}
