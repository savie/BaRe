package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class r45 extends ei0 {
    public final byte[] c;
    public final byte[] d;

    public r45(o45 o45Var, byte[] bArr, byte[] bArr2) {
        super((Object) o45Var, false);
        k45 k45Var = new k45(o45Var.b);
        if (bArr.length != k45Var.c) {
            c6.f("'t' has invalid length");
            throw null;
        }
        if (bArr2.length != 32) {
            c6.f("'rho' has invalid length");
            throw null;
        }
        byte[] bArrK = ms8.k(bArr);
        this.c = bArrK;
        this.d = ms8.k(bArr2);
        if (k45Var.a(bArrK)) {
            return;
        }
        c6.f("Modulus check failed for ML-KEM public key");
        throw null;
    }

    public final byte[] getEncoded() {
        return ms8.p(this.c, this.d);
    }

    public r45(o45 o45Var, byte[] bArr) {
        super((Object) o45Var, false);
        k45 k45Var = new k45(o45Var.b);
        if (bArr.length != k45Var.e) {
            c6.f("'encoding' has invalid length");
            throw null;
        }
        byte[] bArrT = ms8.t(bArr, 0, bArr.length - 32);
        this.c = bArrT;
        this.d = ms8.t(bArr, bArr.length - 32, bArr.length);
        if (k45Var.a(bArrT)) {
            return;
        }
        c6.f("Modulus check failed for ML-KEM public key");
        throw null;
    }
}
