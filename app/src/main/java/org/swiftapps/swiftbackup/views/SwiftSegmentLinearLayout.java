package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.widget.LinearLayout;
import defpackage.mt7;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SwiftSegmentLinearLayout extends LinearLayout implements mt7 {
    public /* synthetic */ SwiftSegmentLinearLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z = i != getVisibility();
        super.setVisibility(i);
        if (z) {
            for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
                if (parent instanceof SwiftSegmentedCardGroup) {
                    ((SwiftSegmentedCardGroup) parent).d();
                    return;
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }
}
