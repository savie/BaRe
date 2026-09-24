package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u45 extends l90 implements eu4 {
    public final zm k;
    public final float n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u45(zm zmVar, View view, int i) {
        super(zmVar, view);
        float f = (i & 4) != 0 ? 8.0f : 4.0f;
        zmVar.getClass();
        view.getClass();
        zmVar.getClass();
        this.k = zmVar;
        this.n = f;
    }

    @ct5(rt4.ON_DESTROY)
    public void dismiss() {
        qc5 qc5Var = (qc5) this.d;
        if (qc5Var.b()) {
            qc5Var.j.dismiss();
        }
    }

    public final void j() {
        zm zmVar = this.k;
        zmVar.getLifecycle().a(this);
        fc5 fc5Var = (fc5) this.c;
        fc5Var.getClass();
        sz8.n(zmVar, fc5Var, this.n);
        if (zmVar.isFinishing()) {
            return;
        }
        qc5 qc5Var = (qc5) this.d;
        if (qc5Var.b()) {
            return;
        }
        if (qc5Var.f != null) {
            qc5Var.d(0, 0, false, false);
        } else {
            l0.e("MenuPopupHelper cannot be used without an anchor");
        }
    }
}
