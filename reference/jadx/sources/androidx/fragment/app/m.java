package androidx.fragment.app;

import android.view.View;
import defpackage.au4;
import defpackage.fu4;
import defpackage.rt4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements au4 {
    public final /* synthetic */ o a;

    public m(o oVar) {
        this.a = oVar;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        View view;
        if (rt4Var != rt4.ON_STOP || (view = this.a.mView) == null) {
            return;
        }
        view.cancelPendingInputEvents();
    }
}
