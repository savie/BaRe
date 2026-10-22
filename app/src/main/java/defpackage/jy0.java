package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jy0 implements ll6 {
    public final byte[] a;

    public jy0(byte[] bArr) {
        ms8.j(bArr, "Argument must not be null");
        this.a = bArr;
    }

    @Override // defpackage.ll6
    public final int c() {
        return this.a.length;
    }

    @Override // defpackage.ll6
    public final Class d() {
        return byte[].class;
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.a;
    }

    @Override // defpackage.ll6
    public final void b() {
    }
}
