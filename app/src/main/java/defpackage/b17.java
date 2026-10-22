package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b17 {
    public final f27 a;
    public final char[] b;
    public final h07 c;
    public final long d;
    public final ny6 e;
    public final boolean f;

    public b17(f27 f27Var, char[] cArr, h07 h07Var, long j, ny6 ny6Var, boolean z) {
        f27Var.getClass();
        ny6Var.getClass();
        this.a = f27Var;
        this.b = cArr;
        this.c = h07Var;
        this.d = j;
        this.e = ny6Var;
        this.f = z;
        if (j >= 0) {
            return;
        }
        f6.g(u48.l(j, "SBA progress update interval must be >= 0 ms: "));
        throw null;
    }

    public /* synthetic */ b17(f27 f27Var, char[] cArr, ny6 ny6Var, int i) {
        this((i & 1) != 0 ? f27.Basic : f27Var, (i & 2) != 0 ? null : cArr, null, 2000L, (i & 16) != 0 ? lv1.e : ny6Var, true);
    }
}
