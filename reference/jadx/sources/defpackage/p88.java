package defpackage;

import android.content.Context;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p88 implements View.OnClickListener {
    public final d8 a;
    public final /* synthetic */ r88 b;

    public p88(r88 r88Var) {
        this.b = r88Var;
        Context context = r88Var.a.getContext();
        CharSequence charSequence = r88Var.h;
        d8 d8Var = new d8();
        d8Var.e = 4096;
        d8Var.k = 4096;
        d8Var.t = null;
        d8Var.x = null;
        d8Var.y = false;
        d8Var.G = false;
        d8Var.H = 16;
        d8Var.p = context;
        d8Var.a = charSequence;
        this.a = d8Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        r88 r88Var = this.b;
        Window.Callback callback = r88Var.k;
        if (callback == null || !r88Var.l) {
            return;
        }
        callback.onMenuItemSelected(0, this.a);
    }
}
