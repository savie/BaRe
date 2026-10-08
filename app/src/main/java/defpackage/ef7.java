package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef7 extends ly8 {
    public final /* synthetic */ SideSheetBehavior f;

    public ef7(SideSheetBehavior sideSheetBehavior) {
        this.f = sideSheetBehavior;
    }

    @Override // defpackage.ly8
    public final void H(int i) {
        if (i == 1) {
            SideSheetBehavior sideSheetBehavior = this.f;
            if (sideSheetBehavior.g) {
                sideSheetBehavior.x(1);
            }
        }
    }

    @Override // defpackage.ly8
    public final void I(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        SideSheetBehavior sideSheetBehavior = this.f;
        WeakReference weakReference = sideSheetBehavior.q;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
            sideSheetBehavior.a.m0(marginLayoutParams, view.getLeft(), view.getRight());
            view2.setLayoutParams(marginLayoutParams);
        }
        LinkedHashSet linkedHashSet = sideSheetBehavior.v;
        if (linkedHashSet.isEmpty()) {
            return;
        }
        sideSheetBehavior.a.e(i);
        Iterator it = linkedHashSet.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    @Override // defpackage.ly8
    public final void J(View view, float f, float f2) {
        int i;
        SideSheetBehavior sideSheetBehavior = this.f;
        if (!sideSheetBehavior.a.G(f)) {
            if (!sideSheetBehavior.a.e0(view, f)) {
                if (f == 0.0f || Math.abs(f) <= Math.abs(f2)) {
                    int left = view.getLeft();
                    i = Math.abs(left - sideSheetBehavior.a.v()) < Math.abs(left - sideSheetBehavior.a.w()) ? 3 : 5;
                }
            } else if (sideSheetBehavior.a.I(f, f2) || sideSheetBehavior.a.H(view)) {
            }
        }
        sideSheetBehavior.z(view, i, true);
    }

    @Override // defpackage.ly8
    public final boolean Q(View view, int i) {
        WeakReference weakReference;
        SideSheetBehavior sideSheetBehavior = this.f;
        return (sideSheetBehavior.h == 1 || (weakReference = sideSheetBehavior.p) == null || weakReference.get() != view) ? false : true;
    }

    @Override // defpackage.ly8
    public final int l(View view, int i) {
        SideSheetBehavior sideSheetBehavior = this.f;
        return iz1.d(i, sideSheetBehavior.a.y(), sideSheetBehavior.a.x());
    }

    @Override // defpackage.ly8
    public final int m(View view, int i) {
        return view.getTop();
    }

    @Override // defpackage.ly8
    public final int y(View view) {
        SideSheetBehavior sideSheetBehavior = this.f;
        return sideSheetBehavior.l + sideSheetBehavior.o;
    }
}
