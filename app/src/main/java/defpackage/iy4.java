package defpackage;

import android.widget.AbsListView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iy4 implements AbsListView.OnScrollListener {
    public final /* synthetic */ ky4 a;

    public iy4(ky4 ky4Var) {
        this.a = ky4Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        ky4 ky4Var = this.a;
        aq2 aq2Var = ky4Var.J;
        qo qoVar = ky4Var.R;
        if (i != 1 || qoVar.getInputMethodMode() == 2 || qoVar.getContentView() == null) {
            return;
        }
        ky4Var.N.removeCallbacks(aq2Var);
        aq2Var.run();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
