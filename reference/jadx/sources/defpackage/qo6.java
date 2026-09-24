package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qo6 implements h07 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qo6(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.h07
    public final void a(f07 f07Var) {
        Long lValueOf;
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((kh6) obj2).a = f07Var.f;
                ((dp6) obj).a(f07Var);
                break;
            default:
                hj hjVar = (hj) obj2;
                my6 my6Var = (my6) obj;
                m07 m07Var = f07Var.d;
                if (f07Var.a == i07.Extract && f07Var.b == k07.ExtractingArchive && f07Var.c == l07.Extraction) {
                    if (m07Var == m07.Progress || m07Var == m07.Completed) {
                        Long l = f07Var.g;
                        if (l != null) {
                            long jLongValue = l.longValue();
                            if (jLongValue < 0) {
                                jLongValue = 0;
                            }
                            lValueOf = Long.valueOf(jLongValue);
                        } else {
                            lValueOf = null;
                        }
                        Long l2 = lValueOf;
                        long j = f07Var.f;
                        long j2 = j >= 0 ? j : 0L;
                        if (l2 != null) {
                            long jLongValue2 = l2.longValue();
                            if (j2 > jLongValue2) {
                                j2 = jLongValue2;
                            }
                        }
                        long j3 = j2;
                        hjVar.invoke(new ly6(j3, l2, my6Var.a(j3), m07Var == m07.Completed));
                    }
                    break;
                }
                break;
        }
    }
}
