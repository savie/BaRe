package defpackage;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mv4 extends xg7 {
    @Override // defpackage.ix7
    public final Collection b() {
        return Collections.singleton("a");
    }

    @Override // defpackage.xg7
    public final Object d(j75 j75Var, di4 di4Var, q64 q64Var) {
        sj7 sj7VarA;
        String str = (String) q64Var.a().get("href");
        if (TextUtils.isEmpty(str) || (sj7VarA = ((ky3) j75Var.k).a(lv4.class)) == null) {
            return null;
        }
        lg7.e.b(di4Var, str);
        return sj7VarA.a(j75Var, di4Var);
    }
}
