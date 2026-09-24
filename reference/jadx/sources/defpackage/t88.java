package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t88 implements View.OnLayoutChangeListener {
    public final /* synthetic */ u88 a;

    public t88(u88 u88Var) {
        this.a = u88Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i9 = iArr[0];
        u88 u88Var = this.a;
        u88Var.l0 = i9;
        view.getWindowVisibleDisplayFrame(u88Var.e0);
    }
}
