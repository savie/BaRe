package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tn6 extends yc9 {
    public final SideSheetBehavior q;

    public tn6(SideSheetBehavior sideSheetBehavior) {
        this.q = sideSheetBehavior;
    }

    @Override // defpackage.yc9
    public final int A(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // defpackage.yc9
    public final int B() {
        return 0;
    }

    @Override // defpackage.yc9
    public final boolean G(float f) {
        return f < 0.0f;
    }

    @Override // defpackage.yc9
    public final boolean H(View view) {
        return view.getLeft() > (v() + this.q.m) / 2;
    }

    @Override // defpackage.yc9
    public final boolean I(float f, float f2) {
        return Math.abs(f) > Math.abs(f2) && Math.abs(f) > 500.0f;
    }

    @Override // defpackage.yc9
    public final int d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // defpackage.yc9
    public final float e(int i) {
        float f = this.q.m;
        return (f - i) / (f - v());
    }

    @Override // defpackage.yc9
    public final boolean e0(View view, float f) {
        return Math.abs((f * this.q.k) + ((float) view.getRight())) > 0.5f;
    }

    @Override // defpackage.yc9
    public final void l0(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.rightMargin = i;
    }

    @Override // defpackage.yc9
    public final void m0(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int i3 = this.q.m;
        if (i <= i3) {
            marginLayoutParams.rightMargin = i3 - i;
        }
    }

    @Override // defpackage.yc9
    public final int t(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // defpackage.yc9
    public final int v() {
        SideSheetBehavior sideSheetBehavior = this.q;
        return Math.max(0, (sideSheetBehavior.m - sideSheetBehavior.l) - sideSheetBehavior.o);
    }

    @Override // defpackage.yc9
    public final int w() {
        return this.q.m;
    }

    @Override // defpackage.yc9
    public final int x() {
        return this.q.m;
    }

    @Override // defpackage.yc9
    public final int y() {
        return v();
    }

    @Override // defpackage.yc9
    public final int z(View view) {
        return view.getLeft() - this.q.o;
    }
}
