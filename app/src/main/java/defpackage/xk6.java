package defpackage;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xk6 implements os1 {
    public final j23 a;
    public final /* synthetic */ yk6 b;

    public xk6(yk6 yk6Var, j23 j23Var) {
        this.b = yk6Var;
        this.a = j23Var;
    }

    @Override // defpackage.os1
    public final void a(boolean z) {
        if (z) {
            synchronized (this.b) {
                j23 j23Var = this.a;
                for (kk6 kk6Var : xh8.p((Set) j23Var.c)) {
                    if (!kk6Var.k() && !kk6Var.i()) {
                        kk6Var.clear();
                        if (j23Var.b) {
                            ((HashSet) j23Var.d).add(kk6Var);
                        } else {
                            kk6Var.j();
                        }
                    }
                }
            }
        }
    }
}
