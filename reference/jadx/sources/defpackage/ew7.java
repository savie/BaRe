package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ew7 implements View.OnLayoutChangeListener {
    public final /* synthetic */ View a;
    public final /* synthetic */ fw7 b;

    public ew7(fw7 fw7Var, View view) {
        this.b = fw7Var;
        this.a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        View view2 = this.a;
        if (view2.getVisibility() == 0) {
            this.b.c(view2);
        }
    }
}
