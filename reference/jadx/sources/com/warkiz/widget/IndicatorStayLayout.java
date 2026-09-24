package com.warkiz.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import defpackage.c6;
import defpackage.hu0;
import defpackage.l0;
import defpackage.tu0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class IndicatorStayLayout extends LinearLayout {
    public IndicatorStayLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt instanceof IndicatorSeekBar) {
                IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) childAt;
                indicatorSeekBar.setIndicatorStayAlways(true);
                View indicatorContentView = indicatorSeekBar.getIndicatorContentView();
                if (indicatorContentView == null) {
                    l0.e("Can not find any indicator in the IndicatorSeekBar, please make sure you have called the attr: SHOW_INDICATOR_TYPE for IndicatorSeekBar and the value is not IndicatorType.NONE.");
                    return;
                }
                if (indicatorContentView instanceof IndicatorSeekBar) {
                    l0.e("IndicatorSeekBar can not be a contentView for Indicator in case this inflating loop.");
                    return;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, tu0.j(indicatorSeekBar.getContext(), 2.0f) - indicatorSeekBar.getPaddingTop());
                addView(indicatorContentView, childCount, marginLayoutParams);
                indicatorSeekBar.o0.setVisibility(4);
                indicatorSeekBar.postDelayed(new hu0(indicatorSeekBar, 1), 300L);
            }
        }
        super.onFinishInflate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
        } else {
            c6.f("IndicatorStayLayout is always vertical and does not support horizontal orientation");
        }
    }

    public IndicatorStayLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IndicatorStayLayout(Context context) {
        this(context, null);
    }
}
