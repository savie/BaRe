package defpackage;

import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka1 extends InputStream {
    public static final ka1 a = new ka1();

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3 = n84.a;
        Objects.requireNonNull(bArr, "byte array");
        n84.a(i, i2, bArr.length);
        return i2 == 0 ? 0 : -1;
    }

    @Override // java.io.InputStream
    public final int read() {
        return -1;
    }
}
