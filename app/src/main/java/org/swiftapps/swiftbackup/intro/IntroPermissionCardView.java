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
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import defpackage.sz8;
import defpackage.wd6;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class IntroPermissionCardView extends MaterialCardView {
    public final MaterialButton G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntroPermissionCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.iv_permission_icon);
        viewFindViewById.getClass();
        ImageView imageView = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.tv_permission_title);
        viewFindViewById2.getClass();
        TextView textView = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.tv_permission_subtitle);
        viewFindViewById3.getClass();
        TextView textView2 = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.btn_permission_action);
        viewFindViewById4.getClass();
        MaterialButton materialButton = (MaterialButton) viewFindViewById4;
        this.G = materialButton;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, wd6.b);
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0);
            if (resourceId != 0) {
                imageView.setImageResource(resourceId);
            }
            textView.setText(typedArrayObtainStyledAttributes.getText(7));
            materialButton.setText(typedArrayObtainStyledAttributes.getText(0));
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(4);
            if (colorStateList != null) {
                imageView.setBackgroundTintList(colorStateList);
            }
            ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(6);
            if (colorStateList2 != null) {
                int defaultColor = colorStateList2.getDefaultColor();
                imageView.setImageTintList(colorStateList2);
                materialButton.setTextColor(colorStateList2);
                materialButton.setIconTint(colorStateList2);
                materialButton.setStrokeColor(sz8.h0(sz8.U(defaultColor, 50)));
                materialButton.setBackgroundTintList(sz8.h0(sz8.U(defaultColor, 8)));
                materialButton.setRippleColor(sz8.h0(sz8.U(defaultColor, 20)));
            }
            String text = typedArrayObtainStyledAttributes.getText(5);
            text = text == null ? "" : text;
            textView2.setText(typedArrayObtainStyledAttributes.getBoolean(1, false) ? Const.t(textView2.getCurrentTextColor(), context, text.toString()) : text);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(2, -1);
            if (resourceId2 != -1) {
                materialButton.setId(resourceId2);
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final MaterialButton getActionButton() {
        return this.G;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntroPermissionCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntroPermissionCardView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ IntroPermissionCardView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.materialCardViewStyle : i);
    }
}
