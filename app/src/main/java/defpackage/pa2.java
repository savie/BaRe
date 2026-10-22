package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pa2 implements hy2 {
    public final int a;
    public final ez2 b;
    public final eb2 c;

    public pa2(int i, ez2 ez2Var, eb2 eb2Var, String str) {
        this.a = i;
        this.b = ez2Var;
        this.c = eb2Var;
    }

    @Override // defpackage.hy2
    public final void a() {
        this.b.d(this);
    }

    @Override // defpackage.hy2
    public final String toString() {
        eb2 eb2Var = this.c;
        sb4 sb4Var = eb2Var.a;
        int i = this.a;
        if (i == 5) {
            StringBuilder sb = new StringBuilder();
            gy5 gy5VarL = eb2Var.b.b;
            if (i != 5) {
                gy5VarL = gy5VarL.l();
            }
            sb.append(gy5VarL);
            sb.append(": ");
            sb.append(xs1.x(i));
            sb.append(": ");
            sb.append(sb4Var.a.g0(true));
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        gy5 gy5VarL2 = eb2Var.b.b;
        if (i != 5) {
            gy5VarL2 = gy5VarL2.l();
        }
        sb2.append(gy5VarL2);
        sb2.append(": ");
        sb2.append(xs1.x(i));
        sb2.append(": { ");
        sb2.append(eb2Var.b.e());
        sb2.append(": ");
        sb2.append(sb4Var.a.g0(true));
        sb2.append(" }");
        return sb2.toString();
    }
}
