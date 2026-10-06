package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x03 extends cm0 {
    public final a13 g;
    public final boolean h;
    public final /* synthetic */ ExtendedFloatingActionButton i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x03(ExtendedFloatingActionButton extendedFloatingActionButton, tr9 tr9Var, a13 a13Var, boolean z) {
        super(extendedFloatingActionButton, tr9Var);
        this.i = extendedFloatingActionButton;
        this.g = a13Var;
        this.h = z;
    }

    @Override // defpackage.cm0
    public final AnimatorSet a() {
        ph5 ph5Var = this.f;
        if (ph5Var == null) {
            if (this.e == null) {
                this.e = ph5.b(this.a, c());
            }
            ph5Var = this.e;
            ph5Var.getClass();
        }
        boolean zG = ph5Var.g("width");
        a13 a13Var = this.g;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.i;
        if (zG) {
            PropertyValuesHolder[] propertyValuesHolderArrE = ph5Var.e("width");
            propertyValuesHolderArrE[0].setFloatValues(extendedFloatingActionButton.getWidth(), a13Var.b());
            ph5Var.h("width", propertyValuesHolderArrE);
        }
        if (ph5Var.g("height")) {
            PropertyValuesHolder[] propertyValuesHolderArrE2 = ph5Var.e("height");
            propertyValuesHolderArrE2[0].setFloatValues(extendedFloatingActionButton.getHeight(), a13Var.a());
            ph5Var.h("height", propertyValuesHolderArrE2);
        }
        if (ph5Var.g("paddingStart")) {
            PropertyValuesHolder[] propertyValuesHolderArrE3 = ph5Var.e("paddingStart");
            propertyValuesHolderArrE3[0].setFloatValues(extendedFloatingActionButton.getPaddingStart(), a13Var.getPaddingStart());
            ph5Var.h("paddingStart", propertyValuesHolderArrE3);
        }
        if (ph5Var.g("paddingEnd")) {
            PropertyValuesHolder[] propertyValuesHolderArrE4 = ph5Var.e("paddingEnd");
            propertyValuesHolderArrE4[0].setFloatValues(extendedFloatingActionButton.getPaddingEnd(), a13Var.getPaddingEnd());
            ph5Var.h("paddingEnd", propertyValuesHolderArrE4);
        }
        if (ph5Var.g("labelOpacity")) {
            PropertyValuesHolder[] propertyValuesHolderArrE5 = ph5Var.e("labelOpacity");
            int iAlpha = Color.alpha(extendedFloatingActionButton.getCurrentOriginalTextColor());
            propertyValuesHolderArrE5[0].setFloatValues(iAlpha != 0 ? Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / iAlpha : 0.0f, this.h ? 1.0f : 0.0f);
            ph5Var.h("labelOpacity", propertyValuesHolderArrE5);
        }
        return b(ph5Var);
    }

    @Override // defpackage.cm0
    public final int c() {
        return this.h ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
    }

    @Override // defpackage.cm0
    public final void e() {
        this.d.b = null;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.i;
        extendedFloatingActionButton.w0 = false;
        extendedFloatingActionButton.setHorizontallyScrolling(false);
        ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        a13 a13Var = this.g;
        layoutParams.width = a13Var.i().width;
        layoutParams.height = a13Var.i().height;
    }

    @Override // defpackage.cm0
    public final void f(Animator animator) {
        tr9 tr9Var = this.d;
        Animator animator2 = (Animator) tr9Var.b;
        if (animator2 != null) {
            animator2.cancel();
        }
        tr9Var.b = animator;
        boolean z = this.h;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.i;
        extendedFloatingActionButton.v0 = z;
        extendedFloatingActionButton.w0 = true;
        extendedFloatingActionButton.setHorizontallyScrolling(true);
        extendedFloatingActionButton.A();
    }

    @Override // defpackage.cm0
    public final void g() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.i;
        boolean z = this.h;
        extendedFloatingActionButton.v0 = z;
        ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (!z) {
            extendedFloatingActionButton.z0 = layoutParams.width;
            extendedFloatingActionButton.A0 = layoutParams.height;
        }
        a13 a13Var = this.g;
        layoutParams.width = a13Var.i().width;
        layoutParams.height = a13Var.i().height;
        if (z) {
            extendedFloatingActionButton.z(extendedFloatingActionButton.y0);
        } else if (extendedFloatingActionButton.getText() != null && extendedFloatingActionButton.getText() != "") {
            extendedFloatingActionButton.z(ColorStateList.valueOf(0));
        }
        extendedFloatingActionButton.setPaddingRelative(a13Var.getPaddingStart(), extendedFloatingActionButton.getPaddingTop(), a13Var.getPaddingEnd(), extendedFloatingActionButton.getPaddingBottom());
        extendedFloatingActionButton.requestLayout();
        extendedFloatingActionButton.A();
    }

    @Override // defpackage.cm0
    public final boolean h() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.i;
        return this.h == extendedFloatingActionButton.v0 || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
    }
}
