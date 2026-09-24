package defpackage;

import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fv2 extends xg7 {
    public final /* synthetic */ int a;

    public /* synthetic */ fv2(int i) {
        this.a = i;
    }

    @Override // defpackage.ix7
    public final Collection b() {
        switch (this.a) {
            case 0:
                return Arrays.asList("i", "em", "cite", "dfn");
            default:
                return Arrays.asList("b", "strong");
        }
    }

    @Override // defpackage.xg7
    public final Object d(j75 j75Var, di4 di4Var, q64 q64Var) {
        switch (this.a) {
            case 0:
                sj7 sj7VarA = ((ky3) j75Var.k).a(dv2.class);
                if (sj7VarA == null) {
                    return null;
                }
                return sj7VarA.a(j75Var, di4Var);
            default:
                sj7 sj7VarA2 = ((ky3) j75Var.k).a(ar7.class);
                if (sj7VarA2 == null) {
                    return null;
                }
                return sj7VarA2.a(j75Var, di4Var);
        }
    }
}
