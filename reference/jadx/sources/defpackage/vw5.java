package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class vw5 implements z61 {
    public final byte[] a;
    public final z61 b;

    public vw5(z61 z61Var, byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        this.a = bArr2;
        this.b = z61Var;
        System.arraycopy(bArr, 0, bArr2, 0, i);
    }
}
