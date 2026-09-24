package defpackage;

import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eh4 implements yy8 {
    public static final nz8 a = new nz8(51966);
    public static final nz8 b = new nz8(0);

    @Override // defpackage.yy8
    public final nz8 a() {
        return a;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return b;
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 != 0) {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        return wx3.a;
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        return wx3.a;
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        return b;
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) throws ZipException {
        c(bArr, i, i2);
    }
}
