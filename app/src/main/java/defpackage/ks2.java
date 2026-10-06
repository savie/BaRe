package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ks2 implements yf7 {
    public final js2 a = new js2();
    public final byte[] b;
    public boolean c;
    public hs2 d;
    public is2 e;

    public ks2(byte[] bArr) {
        this.b = ms8.k(bArr);
    }

    @Override // defpackage.yf7
    public final boolean a(byte[] bArr) {
        is2 is2Var;
        if (!this.c && (is2Var = this.e) != null) {
            return this.a.b(is2Var, this.b, bArr);
        }
        l0.e("Ed448Signer not initialised for verification");
        return false;
    }

    @Override // defpackage.yf7
    public final void b(boolean z, n60 n60Var) {
        this.c = z;
        if (z) {
            this.d = (hs2) n60Var;
            this.e = null;
        } else {
            this.d = null;
            this.e = (is2) n60Var;
        }
        e42.a();
        this.a.reset();
    }

    @Override // defpackage.yf7
    public final byte[] c() {
        hs2 hs2Var;
        if (this.c && (hs2Var = this.d) != null) {
            return this.a.a(hs2Var, this.b);
        }
        l0.e("Ed448Signer not initialised for signature generation.");
        return null;
    }

    @Override // defpackage.yf7
    public final void d(byte[] bArr, int i) throws IOException {
        this.a.write(bArr, 0, i);
    }
}
