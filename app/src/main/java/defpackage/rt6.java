package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rt6 extends ev6 {
    public final int c;
    public s40 d;

    public rt6(int i, us6 us6Var, it6 it6Var, long j, long j2) {
        ut6 ut6Var = new ut6();
        super(ut6Var);
        this.c = i;
        ut6Var.a = us6Var;
        ut6Var.e = it6Var;
        ut6Var.h = j;
        ut6Var.i = j2;
    }

    @Override // defpackage.ev6
    public final zu6 b() {
        return this.b;
    }

    public int d() {
        return 65536;
    }

    public void f(zu6 zu6Var) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    @Override // defpackage.hw5
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void a(zu6 zu6Var) {
        this.b = zu6Var;
        ut6 ut6Var = (ut6) this.a;
        ut6Var.getClass();
        ut6Var.n = zu6Var.d;
        zu6Var.i(ut6.q, 4);
        zu6Var.k(64);
        int iOrdinal = ut6Var.a.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            zu6Var.u(2);
        } else {
            zu6Var.k(ut6Var.b);
        }
        if (ut6Var.a.a()) {
            zu6Var.i(new byte[]{0, 0}, 2);
            zu6Var.u(2);
        } else {
            zu6Var.w();
        }
        zu6Var.k(ut6Var.e.a);
        zu6Var.k(ut6Var.c + ut6Var.b);
        zu6Var.l(ut6Var.k);
        zu6Var.l(ut6Var.l);
        zu6Var.g(ut6Var.f);
        if (sz8.H(ut6Var.k, kt6.SMB2_FLAGS_ASYNC_COMMAND)) {
            zu6Var.g(ut6Var.g);
        } else {
            zu6Var.w();
            zu6Var.l(ut6Var.i);
        }
        zu6Var.g(ut6Var.h);
        zu6Var.i(ut6.p, 16);
        h(zu6Var);
        ((ut6) this.a).o = zu6Var.d;
    }

    public void h(zu6 zu6Var) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(((ut6) this.a).e);
        sb.append(" with message id << ");
        return dj7.h(((ut6) this.a).f, " >>", sb);
    }

    public rt6 e() {
        return this;
    }

    public rt6() {
        super(new ut6());
    }
}
