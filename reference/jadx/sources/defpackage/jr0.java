package defpackage;

import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jr0 implements ql6 {
    public final ql6 a;
    public final Resources b;

    public jr0(Resources resources, ql6 ql6Var) {
        this.b = resources;
        this.a = ql6Var;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return this.a.a(obj, ou5Var);
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        ll6 ll6VarB = this.a.b(obj, i, i2, ou5Var);
        if (ll6VarB == null) {
            return null;
        }
        return new qs4(this.b, ll6VarB);
    }
}
