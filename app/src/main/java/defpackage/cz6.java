package defpackage;

public final class cz6 implements h07 {
    public final long a;
    public final Object b;
    public final rt3 c;
    public final kh6 d;
    public final kh6 e;

    public cz6(long j, Object obj, rt3 rt3Var, kh6 kh6Var, kh6 kh6Var2) {
        this.a = j;
        this.b = obj;
        this.c = rt3Var;
        this.d = kh6Var;
        this.e = kh6Var2;
    }

    @Override
    public final void a(f07 f07Var) {
        if (f07Var.a != i07.Extract) {
            return;
        }
        m07 m07Var = f07Var.d;
        if (m07Var != m07.Progress && m07Var != m07.Completed) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = ll73.i(f07Var.f, 0L, this.a);
        synchronized (this.b) {
            long j2 = this.d.a;
            long j3 = currentTimeMillis - j2;
            long j4 = 0L;
            if (m07Var == m07.Progress && j2 > 0L && j3 > 0L) {
                j4 = j - this.e.a;
                if (j4 < 0L) {
                    j4 = 0L;
                }
                j4 = (j4 * 1000L) / j3;
            }
            this.e.a = j;
            this.d.a = currentTimeMillis;
        }
        this.c.a(Long.valueOf(j), Long.valueOf(this.a), Long.valueOf(j4));
    }
}
