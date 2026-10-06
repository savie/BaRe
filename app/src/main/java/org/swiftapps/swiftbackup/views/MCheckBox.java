package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.util.AttributeSet;
import defpackage.en;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MCheckBox extends en {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        setButtonDrawable(context.getDrawable(R.drawable.checkbox_selector));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MCheckBox(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ MCheckBox(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.checkboxStyle : i);
    }
}
