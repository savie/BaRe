package defpackage;

import android.view.View;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h88 implements View.OnClickListener {
    public final /* synthetic */ Toolbar a;

    public h88(Toolbar toolbar) {
        this.a = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k88 k88Var = this.a.h0;
        ic5 ic5Var = k88Var == null ? null : k88Var.b;
        if (ic5Var != null) {
            ic5Var.collapseActionView();
        }
    }
}
