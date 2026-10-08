package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class kl2 implements hl2 {
    public final jx6 a;
    public final int b;

    public kl2(jx6 jx6Var, int i) {
        this.a = jx6Var;
        this.b = i;
    }

    @Override // defpackage.hl2
    public final void a(byte b) {
        this.a.a(b);
    }

    @Override // defpackage.hl2
    public final int c() {
        return this.b;
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        jx6 jx6Var = this.a;
        byte[] bArr2 = new byte[jx6Var.c()];
        jx6Var.doFinal(bArr2, 0);
        int i2 = this.b;
        System.arraycopy(bArr2, 0, bArr, i, i2);
        return i2;
    }

    @Override // defpackage.hl2
    public final String f() {
        return this.a.f() + "/" + (this.b * 8);
    }

    @Override // defpackage.hl2
    public final void reset() {
        this.a.reset();
    }

    @Override // defpackage.hl2
    public final void update(byte[] bArr, int i, int i2) {
        this.a.update(bArr, i, i2);
    }
}
