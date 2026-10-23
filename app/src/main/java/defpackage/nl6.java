package defpackage;

import android.graphics.drawable.Drawable;
import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nl6 implements ql6 {
    public final sl6 a;
    public final nr0 b;

    public nl6(sl6 sl6Var, nr0 nr0Var) {
        this.a = sl6Var;
        this.b = nr0Var;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return "android.resource".equals(((Uri) obj).getScheme());
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        ll6 ll6VarC = this.a.c((Uri) obj, ou5Var);
        if (ll6VarC == null) {
            return null;
        }
        return sz8.k(this.b, (Drawable) ((xo2) ll6VarC).get(), i, i2);
    }
}
