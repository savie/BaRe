package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class st2 {
    public static final long[] e = new long[0];
    public final p77 a;
    public final rj4 b;
    public long c;
    public final long[] d;

    public st2(p77 p77Var, rj4 rj4Var) {
        p77Var.getClass();
        this.a = p77Var;
        this.b = rj4Var;
        int iF = p77Var.f();
        if (iF <= 64) {
            this.c = iF != 64 ? (-1) << iF : 0L;
            this.d = e;
            return;
        }
        this.c = 0L;
        int i = (iF - 1) >>> 6;
        long[] jArr = new long[i];
        if ((iF & 63) != 0) {
            jArr[i - 1] = (-1) << iF;
        }
        this.d = jArr;
    }
}
