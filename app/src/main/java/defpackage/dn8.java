package defpackage;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dn8 extends cn8 {
    @Override // defpackage.cn8
    public final void I(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // defpackage.cn8
    public final void J(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // defpackage.cn8
    public final void K(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // defpackage.cn8
    public final void L(ViewGroup viewGroup, Matrix matrix) {
        viewGroup.transformMatrixToLocal(matrix);
    }

    @Override // defpackage.rs9
    public final float m(View view) {
        return view.getTransitionAlpha();
    }

    @Override // defpackage.rs9
    public final void t(View view, float f) {
        view.setTransitionAlpha(f);
    }
}
