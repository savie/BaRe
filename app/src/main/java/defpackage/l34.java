package defpackage;

import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l34 extends xg7 {
    @Override // defpackage.ix7
    public final Collection b() {
        return Arrays.asList("h1", "h2", "h3", "h4", "h5", "h6");
    }

    @Override // defpackage.xg7
    public final Object d(j75 j75Var, di4 di4Var, q64 q64Var) {
        int i;
        sj7 sj7VarA = ((ky3) j75Var.k).a(k34.class);
        if (sj7VarA == null) {
            return null;
        }
        try {
            i = Integer.parseInt(q64Var.a.substring(1));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            i = 0;
        }
        if (i < 1 || i > 6) {
            return null;
        }
        lg7.d.b(di4Var, Integer.valueOf(i));
        return sj7VarA.a(j75Var, di4Var);
    }
}
