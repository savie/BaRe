package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class j45 extends ei0 {
    public final byte[] c;
    public final byte[] d;

    public j45(h45 h45Var, byte[] bArr, byte[] bArr2) {
        super((Object) h45Var, false);
        if (bArr == null) {
            f6.n("rho cannot be null");
            throw null;
        }
        if (bArr2 == null) {
            f6.n("t1 cannot be null");
            throw null;
        }
        this.c = ms8.k(bArr);
        this.d = ms8.k(bArr2);
    }

    public j45(h45 h45Var, byte[] bArr) {
        super((Object) h45Var, false);
        this.c = ms8.t(bArr, 0, 32);
        byte[] bArrT = ms8.t(bArr, 32, bArr.length);
        this.d = bArrT;
        if (bArrT.length != 0) {
            return;
        }
        c6.f("encoding too short");
        throw null;
    }
}
