package org.swiftapps.swiftbackup.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.listitem.ListItemLayout;
import defpackage.cx4;
import defpackage.ix4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppListItemLayout extends ListItemLayout {
    public /* synthetic */ AppListItemLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.listItemLayoutStyle : i);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        View childAt;
        int childCount = getChildCount();
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                childAt = null;
                break;
            }
            childAt = getChildAt(i3);
            if (childAt instanceof cx4) {
                break;
            } else {
                i3++;
            }
        }
        View view = childAt;
        if (view == null) {
            super.onMeasure(i, i2);
            return;
        }
        measureChildWithMargins(view, i, 0, i2, 0);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int measuredWidth = view.getMeasuredWidth() + getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        int measuredHeight = view.getMeasuredHeight() + getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (measuredWidth < suggestedMinimumWidth) {
            measuredWidth = suggestedMinimumWidth;
        }
        int iResolveSizeAndState = View.resolveSizeAndState(measuredWidth, i, view.getMeasuredState());
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (measuredHeight < suggestedMinimumHeight) {
            measuredHeight = suggestedMinimumHeight;
        }
        setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(measuredHeight, i2, view.getMeasuredState() << 16));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        int childCount2 = getChildCount();
        for (int i4 = 0; i4 < childCount2; i4++) {
            View childAt2 = getChildAt(i4);
            if ((childAt2 instanceof ix4) && ((ix4) childAt2).getVisibility() != 8) {
                measureChildWithMargins(childAt2, i, 0, iMakeMeasureSpec, 0);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppListItemLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppListItemLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppListItemLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }
}
