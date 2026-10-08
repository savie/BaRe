package androidx.fragment.app;

import android.view.View;
import defpackage.eq3;
import defpackage.l0;
import defpackage.ms8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l extends ms8 {
    public final /* synthetic */ o d;

    public l(o oVar) {
        this.d = oVar;
    }

    @Override // defpackage.ms8
    public final View C(int i) {
        o oVar = this.d;
        View view = oVar.mView;
        if (view != null) {
            return view.findViewById(i);
        }
        l0.e(eq3.i("Fragment ", oVar, " does not have a view"));
        return null;
    }

    @Override // defpackage.ms8
    public final boolean D() {
        return this.d.mView != null;
    }
}
