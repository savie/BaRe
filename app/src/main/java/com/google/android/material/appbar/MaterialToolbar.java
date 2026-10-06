package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import defpackage.c95;
import defpackage.du;
import defpackage.jd4;
import defpackage.tb7;
import defpackage.td6;
import defpackage.vm4;
import defpackage.xh8;
import defpackage.y09;
import defpackage.zm5;
import java.util.ArrayList;
import java.util.Collections;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] u0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer p0;
    public boolean q0;
    public boolean r0;
    public ImageView.ScaleType s0;
    public Boolean t0;

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_Toolbar), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.J, i, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayB.hasValue(2)) {
            setNavigationIconTint(typedArrayB.getColor(2, -1));
        }
        this.q0 = typedArrayB.getBoolean(6, false);
        this.r0 = typedArrayB.getBoolean(5, false);
        int i2 = typedArrayB.getInt(1, -1);
        if (i2 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = u0;
            if (i2 < scaleTypeArr.length) {
                this.s0 = scaleTypeArr[i2];
            }
        }
        if (typedArrayB.hasValue(0)) {
            this.t0 = Boolean.valueOf(typedArrayB.getBoolean(0, false));
        }
        typedArrayB.recycle();
        tb7 tb7VarA = tb7.h(context2, attributeSet, i, R.style.Widget_MaterialComponents_Toolbar).a();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : du.d(background);
        if (colorStateListValueOf != null) {
            c95 c95Var = new c95(tb7VarA);
            c95Var.t(colorStateListValueOf);
            c95Var.p(context2);
            c95Var.s(getElevation());
            setBackground(c95Var);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.s0;
    }

    public Integer getNavigationIconTint() {
        return this.p0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh8.E(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        y09 y09Var = vm4.c;
        ImageView imageView2 = null;
        if (this.q0 || this.r0) {
            ArrayList arrayListR = vm4.r(this, getTitle());
            TextView textView = arrayListR.isEmpty() ? null : (TextView) Collections.min(arrayListR, y09Var);
            ArrayList arrayListR2 = vm4.r(this, getSubtitle());
            TextView textView2 = arrayListR2.isEmpty() ? null : (TextView) Collections.max(arrayListR2, y09Var);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i5 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i6 = 0; i6 < getChildCount(); i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i5 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i5 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.q0 && textView != null) {
                    w(textView, pair);
                }
                if (this.r0 && textView2 != null) {
                    w(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt2 = getChildAt(i7);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.t0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.s0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        xh8.C(this, f);
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.t0;
        if (bool == null || bool.booleanValue() != z) {
            this.t0 = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.s0 != scaleType) {
            this.s0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.p0 != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.p0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.p0 = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.r0 != z) {
            this.r0 = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.q0 != z) {
            this.q0 = z;
            requestLayout();
        }
    }

    public final void w(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i += iMax;
            i2 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public MaterialToolbar(Context context) {
        this(context, null);
    }
}
