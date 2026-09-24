package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ba8 extends aa8 {
    public final /* synthetic */ k50 a;
    public final /* synthetic */ ca8 b;

    public ba8(ca8 ca8Var, k50 k50Var) {
        this.b = ca8Var;
        this.a = k50Var;
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void c(y98 y98Var) {
        ((ArrayList) this.a.get(this.b.b)).remove(y98Var);
        y98Var.C(this);
    }
}
