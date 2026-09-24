package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z95 {
    public final /* synthetic */ int a = 0;
    public long b;
    public final long c;
    public final /* synthetic */ Object d;

    public z95(vb5 vb5Var) {
        this.d = vb5Var;
        this.c = vb5Var.a.a.A();
    }

    public final void a(long j) {
        int i = this.a;
        long j2 = this.c;
        Object obj = this.d;
        switch (i) {
            case 0:
                aa5 aa5Var = (aa5) obj;
                if (aa5Var.d.isRunning()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (j >= j2 || jCurrentTimeMillis - this.b >= 2000) {
                        this.b = jCurrentTimeMillis;
                        no2.h(aa5Var, Long.valueOf(j));
                    }
                    break;
                }
                break;
            default:
                vb5 vb5Var = (vb5) obj;
                if (vb5Var.c.isRunning()) {
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (j >= j2 || jCurrentTimeMillis2 - this.b >= 2000) {
                        this.b = jCurrentTimeMillis2;
                        ag8.g(vb5Var, Long.valueOf(j));
                    }
                    break;
                }
                break;
        }
    }

    public z95(aa5 aa5Var) {
        this.d = aa5Var;
        this.c = aa5Var.p.c;
    }
}
