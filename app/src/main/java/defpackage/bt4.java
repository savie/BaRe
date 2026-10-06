package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bt4 extends yc9 {
    public final SideSheetBehavior q;

    public bt4(SideSheetBehavior sideSheetBehavior) {
        this.q = sideSheetBehavior;
    }

    @Override // defpackage.yc9
    public final int A(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // defpackage.yc9
    public final int B() {
        return 1;
    }

    @Override // defpackage.yc9
    public final boolean G(float f) {
        return f > 0.0f;
    }

    @Override // defpackage.yc9
    public final boolean H(View view) {
        return view.getRight() < (v() - w()) / 2;
    }

    @Override // defpackage.yc9
    public final boolean I(float f, float f2) {
        return Math.abs(f) > Math.abs(f2) && Math.abs(f) > 500.0f;
    }

    @Override // defpackage.yc9
    public final int d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // defpackage.yc9
    public final float e(int i) {
        float fW = w();
        return (i - fW) / (v() - fW);
    }

    @Override // defpackage.yc9
    public final boolean e0(View view, float f) {
        return Math.abs((f * this.q.k) + ((float) view.getLeft())) > 0.5f;
    }

    @Override // defpackage.yc9
    public final void l0(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.leftMargin = i;
    }

    @Override // defpackage.yc9
    public final void m0(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        if (i <= this.q.m) {
            marginLayoutParams.leftMargin = i2;
        }
    }

    @Override // defpackage.yc9
    public final int t(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // defpackage.yc9
    public final int v() {
        SideSheetBehavior sideSheetBehavior = this.q;
        return Math.max(0, sideSheetBehavior.n + sideSheetBehavior.o);
    }

    @Override // defpackage.yc9
    public final int w() {
        SideSheetBehavior sideSheetBehavior = this.q;
        return (-sideSheetBehavior.l) - sideSheetBehavior.o;
    }

    @Override // defpackage.yc9
    public final int x() {
        return this.q.o;
    }

    @Override // defpackage.yc9
    public final int y() {
        return -this.q.l;
    }

    @Override // defpackage.yc9
    public final int z(View view) {
        return view.getRight() + this.q.o;
    }
}
