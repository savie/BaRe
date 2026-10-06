package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mx0 implements ch5 {
    public final kx0 a;

    public mx0(kx0 kx0Var) {
        this.a = kx0Var;
    }

    @Override // defpackage.ch5
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        byte[] bArr = (byte[]) obj;
        return new bh5(new nr5(bArr), new lx0(bArr, this.a));
    }
}
