package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import defpackage.jd4;
import defpackage.km0;
import defpackage.l0;
import defpackage.lm0;
import defpackage.mb4;
import defpackage.pu4;
import defpackage.qk2;
import defpackage.ru4;
import defpackage.su4;
import defpackage.td6;
import defpackage.tp2;
import defpackage.zu4;
import java.util.Objects;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class LinearProgressIndicator extends km0 {
    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        zu4 zu4Var = (zu4) this.a;
        pu4 pu4Var = new pu4(zu4Var);
        pu4Var.f = 300.0f;
        pu4Var.o = new Pair(new tp2(), new tp2());
        Context context2 = getContext();
        setIndeterminateDrawable(new mb4(context2, zu4Var, pu4Var, zu4Var.q == 0 ? new ru4(zu4Var) : new su4(context2, zu4Var)));
        setProgressDrawable(new qk2(getContext(), zu4Var, pu4Var));
        this.q = true;
    }

    @Override // defpackage.km0
    public final lm0 a(Context context, AttributeSet attributeSet) {
        zu4 zu4Var = new zu4(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        jd4.d(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int[] iArr = td6.q;
        jd4.e(context, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        zu4Var.q = typedArrayObtainStyledAttributes.getInt(0, 1);
        zu4Var.r = typedArrayObtainStyledAttributes.getInt(1, 0);
        zu4Var.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            zu4Var.u = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(2);
        if (typedValuePeekValue != null) {
            int i = typedValuePeekValue.type;
            if (i == 5) {
                zu4Var.v = Math.min(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArrayObtainStyledAttributes.getResources().getDisplayMetrics()), zu4Var.a / 2);
                zu4Var.x = false;
                zu4Var.y = true;
            } else if (i == 6) {
                zu4Var.w = Math.min(typedValuePeekValue.getFraction(1.0f, 1.0f), 0.5f);
                zu4Var.x = true;
                zu4Var.y = true;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        zu4Var.d();
        zu4Var.s = zu4Var.r == 1;
        return zu4Var;
    }

    @Override // defpackage.km0
    public final void c(int i, boolean z) {
        lm0 lm0Var = this.a;
        if (lm0Var != null && ((zu4) lm0Var).q == 0 && isIndeterminate()) {
            return;
        }
        super.c(i, z);
    }

    public int getIndeterminateAnimationType() {
        return ((zu4) this.a).q;
    }

    public int getIndicatorDirection() {
        return ((zu4) this.a).r;
    }

    public int getTrackInnerCornerRadius() {
        return ((zu4) this.a).v;
    }

    public Integer getTrackStopIndicatorPadding() {
        return ((zu4) this.a).u;
    }

    public int getTrackStopIndicatorSize() {
        return ((zu4) this.a).t;
    }

    @Override // defpackage.km0, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        lm0 lm0Var = this.a;
        zu4 zu4Var = (zu4) lm0Var;
        boolean z2 = true;
        if (((zu4) lm0Var).r != 1 && ((getLayoutDirection() != 1 || ((zu4) lm0Var).r != 2) && (getLayoutDirection() != 0 || ((zu4) lm0Var).r != 3))) {
            z2 = false;
        }
        zu4Var.s = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        mb4 indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        qk2 progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        lm0 lm0Var = this.a;
        if (((zu4) lm0Var).q == i) {
            return;
        }
        if (d() && isIndeterminate()) {
            l0.e("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
            return;
        }
        ((zu4) lm0Var).q = i;
        ((zu4) lm0Var).d();
        if (i == 0) {
            mb4 indeterminateDrawable = getIndeterminateDrawable();
            ru4 ru4Var = new ru4((zu4) lm0Var);
            indeterminateDrawable.G = ru4Var;
            ru4Var.a = indeterminateDrawable;
        } else {
            mb4 indeterminateDrawable2 = getIndeterminateDrawable();
            su4 su4Var = new su4(getContext(), (zu4) lm0Var);
            indeterminateDrawable2.G = su4Var;
            su4Var.a = indeterminateDrawable2;
        }
        b();
        invalidate();
    }

    @Override // defpackage.km0
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((zu4) this.a).d();
    }

    public void setIndicatorDirection(int i) {
        lm0 lm0Var = this.a;
        ((zu4) lm0Var).r = i;
        zu4 zu4Var = (zu4) lm0Var;
        boolean z = true;
        if (i != 1 && ((getLayoutDirection() != 1 || ((zu4) lm0Var).r != 2) && (getLayoutDirection() != 0 || i != 3))) {
            z = false;
        }
        zu4Var.s = z;
        invalidate();
    }

    @Override // defpackage.km0
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((zu4) this.a).d();
        invalidate();
    }

    public void setTrackInnerCornerRadius(int i) {
        lm0 lm0Var = this.a;
        if (((zu4) lm0Var).v != i) {
            ((zu4) lm0Var).v = Math.round(Math.min(i, ((zu4) lm0Var).a / 2.0f));
            ((zu4) lm0Var).x = false;
            ((zu4) lm0Var).y = true;
            ((zu4) lm0Var).d();
            invalidate();
        }
    }

    public void setTrackInnerCornerRadiusFraction(float f) {
        lm0 lm0Var = this.a;
        if (((zu4) lm0Var).w != f) {
            ((zu4) lm0Var).w = Math.min(f, 0.5f);
            ((zu4) lm0Var).x = true;
            ((zu4) lm0Var).y = true;
            ((zu4) lm0Var).d();
            invalidate();
        }
    }

    public void setTrackStopIndicatorPadding(Integer num) {
        lm0 lm0Var = this.a;
        if (Objects.equals(((zu4) lm0Var).u, num)) {
            return;
        }
        ((zu4) lm0Var).u = num;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i) {
        lm0 lm0Var = this.a;
        if (((zu4) lm0Var).t != i) {
            ((zu4) lm0Var).t = i;
            ((zu4) lm0Var).d();
            invalidate();
        }
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }
}
