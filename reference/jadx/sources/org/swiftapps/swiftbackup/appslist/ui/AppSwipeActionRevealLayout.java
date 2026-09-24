package org.swiftapps.swiftbackup.appslist.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import defpackage.ix4;
import defpackage.jd4;
import defpackage.td6;
import defpackage.u94;
import defpackage.zm5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppSwipeActionRevealLayout extends ix4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSwipeActionRevealLayout(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Material3_ListItemRevealLayout), attributeSet, i);
        context.getClass();
        this.a = -1;
        this.b = -1;
        this.c = 0;
        this.n = -1;
        this.p = -1;
        Context context2 = getContext();
        setClipToPadding(false);
        u94 u94VarC = jd4.C(context2, attributeSet, td6.s, i, R.style.Widget_Material3_ListItemRevealLayout, new int[0]);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.m3_list_reveal_min_child_width);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        this.k = typedArray.getDimensionPixelSize(0, dimensionPixelSize);
        this.q = typedArray.getInt(1, 0);
        u94VarC.f();
    }

    @Override // defpackage.ix4, android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i2);
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                getChildAt(i3).getLayoutParams().width = size;
            }
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppSwipeActionRevealLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    public /* synthetic */ AppSwipeActionRevealLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.listItemRevealLayoutStyle : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppSwipeActionRevealLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }
}
