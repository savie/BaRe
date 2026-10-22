package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class z92 implements mt3 {
    public final /* synthetic */ ba2 a;
    public final /* synthetic */ int b;

    public /* synthetic */ z92(ba2 ba2Var, int i) {
        this.a = ba2Var;
        this.b = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        qt3 qt3Var = this.a.f;
        if (qt3Var != null) {
            qt3Var.invoke(view, Integer.valueOf(this.b));
        }
        return be8.a;
    }
}
