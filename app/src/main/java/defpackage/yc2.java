package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yc2 implements Runnable {
    public final /* synthetic */ qn5 a;
    public final /* synthetic */ qw5 b;
    public final /* synthetic */ zc2 c;

    public yc2(zc2 zc2Var, qn5 qn5Var, qw5 qw5Var) {
        this.c = zc2Var;
        this.a = qn5Var;
        this.b = qw5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zc2 zc2Var = this.c;
        wj6 wj6Var = zc2Var.a;
        gy5 gy5Var = zc2Var.b;
        ci8 ci8Var = (ci8) this.b.b;
        u00 u00Var = wj6Var.k;
        u00 u00Var2 = wj6Var.i;
        if (u00Var2.e()) {
            u00Var2.c("set: " + gy5Var, null, new Object[0]);
        }
        boolean zE = u00Var.e();
        qn5 qn5Var = this.a;
        if (zE) {
            u00Var.c("set: " + gy5Var + TokenAuthenticationScheme.SCHEME_DELIMITER + qn5Var, null, new Object[0]);
        }
        qn5 qn5VarL = ms8.L(qn5Var, new ej8(wj6Var.n.i(gy5Var, new ArrayList())), ms8.v(wj6Var.b));
        long j = wj6Var.l;
        wj6Var.l = 1 + j;
        wj6Var.j(wj6Var.n.h(gy5Var, qn5Var, qn5VarL, j, true, true));
        wj6Var.c.e(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, gy5Var.c(), qn5Var.g0(true), null, new sj6(wj6Var, gy5Var, j, ci8Var));
        gy5 gy5VarG = wj6Var.g(gy5Var).g();
        if (wj6Var.j.e()) {
            u00Var2.c("Aborting transactions for path: " + gy5Var + ". Affected: " + gy5VarG, null, new Object[0]);
        }
        gd gdVarN = wj6Var.f.n(gy5Var);
        for (gd gdVar = (gd) gdVarN.c; gdVar != null; gdVar = (gd) gdVar.c) {
            wj6Var.a(gdVar);
        }
        wj6Var.a(gdVarN);
        ty3 ty3Var = new ty3(wj6Var);
        for (Object obj : ((eb8) gdVarN.d).a.entrySet().toArray()) {
            Map.Entry entry = (Map.Entry) obj;
            new gd(7, (m61) entry.getKey(), gdVarN, (eb8) entry.getValue()).f(ty3Var, true);
        }
        wj6Var.m(gy5VarG);
    }
}
