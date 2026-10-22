package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i46 extends w5 {
    public final /* synthetic */ j46 d;

    public i46(j46 j46Var) {
        this.d = j46Var;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        RecyclerView recyclerView;
        j46 j46Var = this.d;
        j46Var.g.d(view, m6Var);
        RecyclerView recyclerView2 = j46Var.f;
        recyclerView2.getClass();
        fh6 fh6VarL = RecyclerView.L(view);
        int I = -1;
        if (fh6VarL != null && (recyclerView = fh6VarL.r) != null) {
            I = recyclerView.I(fh6VarL);
        }
        hg6 adapter = recyclerView2.getAdapter();
        if (adapter instanceof f46) {
            ((f46) adapter).m(I);
        }
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        return this.d.g.g(view, i, bundle);
    }
}
