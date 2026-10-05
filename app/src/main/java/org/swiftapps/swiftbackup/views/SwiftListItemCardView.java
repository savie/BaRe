package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import defpackage.cx4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwiftListItemCardView extends cx4 {
    public final int L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwiftListItemCardView(Context context, AttributeSet attributeSet, int i) {
        int iComplexToDimensionPixelSize;
        super(context, attributeSet, i);
        context.getClass();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.segmentedListItemBottomMargin, typedValue, true)) {
            int i2 = typedValue.resourceId;
            Integer numValueOf = i2 == 0 ? null : Integer.valueOf(i2);
            if (numValueOf != null) {
                Resources resources = context.getResources();
                resources.getClass();
                iComplexToDimensionPixelSize = resources.getDimensionPixelSize(numValueOf.intValue());
            } else {
                iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
            }
        } else {
            iComplexToDimensionPixelSize = 0;
        }
        this.L = iComplexToDimensionPixelSize;
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = this.L;
        }
        super.setLayoutParams(layoutParams);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftListItemCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftListItemCardView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ SwiftListItemCardView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.listItemCardViewStyle : i);
    }
}
