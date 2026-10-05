package org.swiftapps.swiftbackup.intro;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import defpackage.wd6;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class IntroBenefitCardView extends MaterialCardView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntroBenefitCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.card_benefit_icon);
        viewFindViewById.getClass();
        MaterialCardView materialCardView = (MaterialCardView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.iv_benefit_icon);
        viewFindViewById2.getClass();
        ImageView imageView = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.tv_benefit_title);
        viewFindViewById3.getClass();
        TextView textView = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.tv_benefit_subtitle);
        viewFindViewById4.getClass();
        TextView textView2 = (TextView) viewFindViewById4;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, wd6.a);
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            if (resourceId != 0) {
                imageView.setImageResource(resourceId);
            }
            textView.setText(typedArrayObtainStyledAttributes.getText(4));
            textView2.setText(typedArrayObtainStyledAttributes.getText(3));
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(1);
            if (colorStateList != null) {
                materialCardView.setCardBackgroundColor(colorStateList);
            }
            ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(2);
            if (colorStateList2 != null) {
                imageView.setImageTintList(colorStateList2);
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntroBenefitCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntroBenefitCardView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ IntroBenefitCardView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.materialCardViewStyle : i);
    }
}
