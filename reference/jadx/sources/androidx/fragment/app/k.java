package androidx.fragment.app;

import android.os.Bundle;
import defpackage.cy0;
import defpackage.fr3;
import defpackage.vx6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends fr3 {
    public final /* synthetic */ o a;

    public k(o oVar) {
        this.a = oVar;
    }

    @Override // defpackage.fr3
    public final void a() {
        o oVar = this.a;
        ((vx6) oVar.mSavedStateRegistryController.b).a();
        cy0.q(oVar);
        Bundle bundle = oVar.mSavedFragmentState;
        oVar.mSavedStateRegistryController.u(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
