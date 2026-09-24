package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.ao;
import defpackage.fm6;
import defpackage.jd4;
import defpackage.k55;
import defpackage.km0;
import defpackage.l0;
import defpackage.l71;
import defpackage.lm0;
import defpackage.mb4;
import defpackage.o71;
import defpackage.q71;
import defpackage.qj8;
import defpackage.qk2;
import defpackage.rj8;
import defpackage.td6;
import defpackage.v71;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CircularProgressIndicator extends km0 {
    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        v71 v71Var = (v71) this.a;
        l71 l71Var = new l71(v71Var);
        Context context2 = getContext();
        mb4 mb4Var = new mb4(context2, v71Var, l71Var, v71Var.q == 1 ? new q71(context2, v71Var) : new o71(v71Var));
        Resources resources = context2.getResources();
        rj8 rj8Var = new rj8();
        ThreadLocal threadLocal = fm6.a;
        rj8Var.a = resources.getDrawable(R.drawable.ic_mtrl_arrow_circle, null);
        new qj8(rj8Var.a.getConstantState());
        mb4Var.H = rj8Var;
        setIndeterminateDrawable(mb4Var);
        setProgressDrawable(new qk2(getContext(), v71Var, l71Var));
        this.q = true;
    }

    @Override // defpackage.km0
    public final lm0 a(Context context, AttributeSet attributeSet) {
        v71 v71Var = new v71(context, attributeSet, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        jd4.d(context, attributeSet, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int[] iArr = td6.i;
        jd4.e(context, attributeSet, iArr, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.circularProgressIndicatorStyle, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        v71Var.q = typedArrayObtainStyledAttributes.getInt(0, 0);
        v71Var.r = Math.max(k55.o(context, typedArrayObtainStyledAttributes, 4, dimensionPixelSize), v71Var.a * 2);
        v71Var.s = k55.o(context, typedArrayObtainStyledAttributes, 3, dimensionPixelSize2);
        v71Var.t = typedArrayObtainStyledAttributes.getInt(2, 0);
        v71Var.u = typedArrayObtainStyledAttributes.getBoolean(1, true);
        typedArrayObtainStyledAttributes.recycle();
        v71Var.d();
        return v71Var;
    }

    public int getIndeterminateAnimationType() {
        return ((v71) this.a).q;
    }

    public int getIndicatorDirection() {
        return ((v71) this.a).t;
    }

    public int getIndicatorInset() {
        return ((v71) this.a).s;
    }

    public int getIndicatorSize() {
        return ((v71) this.a).r;
    }

    public void setIndeterminateAnimationType(int i) {
        lm0 lm0Var = this.a;
        if (((v71) lm0Var).q == i) {
            return;
        }
        if (d() && isIndeterminate()) {
            l0.e("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
            return;
        }
        ((v71) lm0Var).q = i;
        ((v71) lm0Var).d();
        ao q71Var = i == 1 ? new q71(getContext(), (v71) lm0Var) : new o71((v71) lm0Var);
        mb4 indeterminateDrawable = getIndeterminateDrawable();
        indeterminateDrawable.G = q71Var;
        q71Var.a = indeterminateDrawable;
        b();
        invalidate();
    }

    public void setIndicatorDirection(int i) {
        ((v71) this.a).t = i;
        invalidate();
    }

    public void setIndicatorInset(int i) {
        lm0 lm0Var = this.a;
        if (((v71) lm0Var).s != i) {
            ((v71) lm0Var).s = i;
            invalidate();
        }
    }

    public void setIndicatorSize(int i) {
        int iMax = Math.max(i, getTrackThickness() * 2);
        lm0 lm0Var = this.a;
        if (((v71) lm0Var).r != iMax) {
            ((v71) lm0Var).r = iMax;
            ((v71) lm0Var).d();
            requestLayout();
            invalidate();
        }
    }

    @Override // defpackage.km0
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((v71) this.a).d();
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }
}
