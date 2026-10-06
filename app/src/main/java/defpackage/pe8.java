package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pe8 implements yy8 {
    public static final nz8 c = new nz8(44225);
    public byte[] a;
    public byte[] b;

    @Override // defpackage.yy8
    public final nz8 a() {
        return c;
    }

    @Override // defpackage.yy8
    public final nz8 b() {
        return nz8.b(this.a);
    }

    @Override // defpackage.yy8
    public final void c(byte[] bArr, int i, int i2) {
        this.a = Arrays.copyOfRange(bArr, i, i2 + i);
    }

    @Override // defpackage.yy8
    public final byte[] d() {
        return pz8.a(this.a);
    }

    @Override // defpackage.yy8
    public final byte[] e() {
        byte[] bArr = this.b;
        return bArr == null ? pz8.a(this.a) : pz8.a(bArr);
    }

    @Override // defpackage.yy8
    public final nz8 f() {
        byte[] bArr = this.b;
        return bArr == null ? nz8.b(this.a) : new nz8(bArr.length);
    }

    @Override // defpackage.yy8
    public final void h(byte[] bArr, int i, int i2) {
        this.b = Arrays.copyOfRange(bArr, i, i + i2);
        if (this.a == null) {
            c(bArr, i, i2);
        }
    }
}
