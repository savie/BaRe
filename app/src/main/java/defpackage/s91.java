package defpackage;

import android.content.Context;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s91 extends w5 {
    public final g6 d;

    public s91(Context context, int i) {
        this.d = new g6(16, context.getString(i));
    }

    @Override // defpackage.w5
    public void d(View view, m6 m6Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, m6Var.a);
        m6Var.b(this.d);
    }
}
