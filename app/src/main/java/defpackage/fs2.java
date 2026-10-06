package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class fs2 implements yf7 {
    public final es2 a = new es2();
    public boolean b;
    public cs2 c;
    public ds2 d;

    @Override // defpackage.yf7
    public final boolean a(byte[] bArr) {
        ds2 ds2Var;
        if (!this.b && (ds2Var = this.d) != null) {
            return this.a.b(ds2Var, bArr);
        }
        l0.e("Ed25519Signer not initialised for verification");
        return false;
    }

    @Override // defpackage.yf7
    public final void b(boolean z, n60 n60Var) {
        this.b = z;
        if (z) {
            this.c = (cs2) n60Var;
            this.d = null;
        } else {
            this.c = null;
            this.d = (ds2) n60Var;
        }
        e42.a();
        this.a.reset();
    }

    @Override // defpackage.yf7
    public final byte[] c() {
        cs2 cs2Var;
        if (this.b && (cs2Var = this.c) != null) {
            return this.a.a(cs2Var);
        }
        l0.e("Ed25519Signer not initialised for signature generation.");
        return null;
    }

    @Override // defpackage.yf7
    public final void d(byte[] bArr, int i) throws IOException {
        this.a.write(bArr, 0, i);
    }
}
