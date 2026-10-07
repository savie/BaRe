package defpackage;

public final class lq2 implements mt3 {
    public final mq2 a;
    public final long b;

    public lq2(mq2 mq2Var, long j) {
        this.a = mq2Var;
        this.b = j;
    }

    @Override
    public final Object invoke(Object obj) {
        long longValue = ((Long) obj).longValue() + this.b;
        this.a.a(longValue);
        return be8.a;
    }
}
