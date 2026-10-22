package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v31 extends y31 {
    public final TextView u;
    public final TextView v;
    public final /* synthetic */ z31 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v31(z31 z31Var, e41 e41Var) {
        super((LinearLayout) e41Var.b);
        this.w = z31Var;
        this.u = (TextView) e41Var.d;
        this.v = (TextView) e41Var.c;
    }

    @Override // defpackage.y31
    public final void r(d41 d41Var) {
        d41Var.getClass();
        sz8.d0(this.v, d41Var.d);
        this.w.i.c(this.u, d41Var.a);
    }
}
