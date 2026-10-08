package androidx.fragment.app;

import defpackage.fr3;
import defpackage.h9;
import defpackage.j9;
import defpackage.km5;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n extends fr3 {
    public final /* synthetic */ km5 a;
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ j9 c;
    public final /* synthetic */ h9 d;
    public final /* synthetic */ o e;

    public n(o oVar, km5 km5Var, AtomicReference atomicReference, j9 j9Var, h9 h9Var) {
        this.e = oVar;
        this.a = km5Var;
        this.b = atomicReference;
        this.c = j9Var;
        this.d = h9Var;
    }

    @Override // defpackage.fr3
    public final void a() {
        o oVar = this.e;
        String strGenerateActivityResultKey = oVar.generateActivityResultKey();
        o oVar2 = (o) this.a.b;
        t tVar = oVar2.mHost;
        this.b.set((tVar != null ? tVar.n.getActivityResultRegistry() : oVar2.requireActivity().getActivityResultRegistry()).c(strGenerateActivityResultKey, oVar, this.c, this.d));
    }
}
