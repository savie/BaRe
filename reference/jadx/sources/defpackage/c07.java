package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c07 implements h07 {
    public final /* synthetic */ Long a;
    public final /* synthetic */ u10 b;
    public final /* synthetic */ my6 c;

    public /* synthetic */ c07(Long l, u10 u10Var, my6 my6Var) {
        this.a = l;
        this.b = u10Var;
        this.c = my6Var;
    }

    @Override // defpackage.h07
    public final void a(f07 f07Var) {
        m07 m07Var = f07Var.d;
        if (f07Var.a == i07.Create && f07Var.b == k07.CreatingArchive) {
            if (m07Var == m07.Progress || m07Var == m07.Completed) {
                l07 l07Var = f07Var.c;
                if (l07Var == l07.Tar || l07Var == l07.Compression || l07Var == l07.Encryption) {
                    long jLongValue = this.a.longValue();
                    if (jLongValue < 0) {
                        jLongValue = 0;
                    }
                    Long lValueOf = Long.valueOf(jLongValue);
                    long j = f07Var.f;
                    long j2 = j >= 0 ? j : 0L;
                    long jLongValue2 = lValueOf.longValue();
                    long j3 = j2 > jLongValue2 ? jLongValue2 : j2;
                    this.b.invoke(new ly6(j3, lValueOf, this.c.a(j3), m07Var == m07.Completed));
                }
            }
        }
    }
}
