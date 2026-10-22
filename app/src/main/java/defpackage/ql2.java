package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ql2 extends ei0 {
    public final byte[] c;
    public final byte[] d;

    public ql2(ol2 ol2Var, byte[] bArr) {
        super((Object) ol2Var, false);
        this.c = ms8.t(bArr, 0, 32);
        this.d = ms8.t(bArr, 32, bArr.length);
    }

    public ql2(ol2 ol2Var, byte[] bArr, byte[] bArr2) {
        super((Object) ol2Var, false);
        this.c = ms8.k(bArr);
        this.d = ms8.k(bArr2);
    }
}
