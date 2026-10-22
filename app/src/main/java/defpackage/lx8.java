package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class lx8 extends y0 {
    public final int a;
    public final long b;
    public final long c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public final byte[] n;

    public lx8(v1 v1Var) {
        long jF;
        t0 t0VarX = t0.x(v1Var.C(0));
        if (!t0VarX.y(0) && !t0VarX.y(1)) {
            c6.f("unknown version of sequence");
            throw null;
        }
        this.a = t0VarX.C();
        if (v1Var.size() != 2 && v1Var.size() != 3) {
            c6.f("key sequence wrong size");
            throw null;
        }
        v1 v1VarB = v1.B(v1Var.C(1));
        this.b = t0.x(v1VarB.C(0)).F();
        this.d = ms8.k(j1.x(v1VarB.C(1)).a);
        this.e = ms8.k(j1.x(v1VarB.C(2)).a);
        this.f = ms8.k(j1.x(v1VarB.C(3)).a);
        this.k = ms8.k(j1.x(v1VarB.C(4)).a);
        if (v1VarB.size() == 6) {
            q2 q2VarX = q2.x(v1VarB.C(5));
            if (q2VarX.c != 0) {
                c6.f("unknown tag in XMSSPrivateKey");
                throw null;
            }
            jF = ((t0) t0.c.r(q2VarX, false)).F();
        } else {
            if (v1VarB.size() != 5) {
                c6.f("keySeq should be 5 or 6 in length");
                throw null;
            }
            jF = -1;
        }
        this.c = jF;
        if (v1Var.size() != 3) {
            this.n = null;
        } else {
            this.n = ms8.k(((j1) j1.b.r(q2.x(v1Var.C(2)), true)).a);
        }
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        long j = this.c;
        c0Var.a(j >= 0 ? new t0(1L) : new t0(0L));
        c0 c0Var2 = new c0();
        c0Var2.a(new t0(this.b));
        c0Var2.a(new p82(this.d));
        c0Var2.a(new p82(this.e));
        c0Var2.a(new p82(this.f));
        c0Var2.a(new p82(this.k));
        if (j >= 0) {
            c0Var2.a(new w82(false, 0, new t0(j)));
        }
        t82 t82Var = new t82(c0Var2);
        t82Var.c = -1;
        c0Var.a(t82Var);
        c0Var.a(new w82(true, 0, new p82(this.n)));
        t82 t82Var2 = new t82(c0Var);
        t82Var2.c = -1;
        return t82Var2;
    }

    public lx8(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, long j2) {
        this.a = 1;
        this.b = j;
        this.d = ms8.k(bArr);
        this.e = ms8.k(bArr2);
        this.f = ms8.k(bArr3);
        this.k = ms8.k(bArr4);
        this.n = ms8.k(bArr5);
        this.c = j2;
    }

    public lx8(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.a = 0;
        this.b = j;
        this.d = ms8.k(bArr);
        this.e = ms8.k(bArr2);
        this.f = ms8.k(bArr3);
        this.k = ms8.k(bArr4);
        this.n = ms8.k(bArr5);
        this.c = -1L;
    }
}
