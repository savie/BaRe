package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.chip.Chip;
import defpackage.ha6;
import defpackage.iz1;
import defpackage.tu0;
import defpackage.y13;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ProviderChipGroup extends FlexboxLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProviderChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        setAlignItems(2);
        setFlexWrap(1);
    }

    public final void setChips(List<ha6> list) {
        LayerDrawable layerDrawable;
        Drawable drawableMutate;
        list.getClass();
        removeAllViews();
        for (ha6 ha6Var : list) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.s3_provider_chip, (ViewGroup) this, false);
            viewInflate.getClass();
            Chip chip = (Chip) viewInflate;
            chip.setText(ha6Var.a);
            Context context = chip.getContext();
            context.getClass();
            int i = ha6Var.b;
            Drawable drawableM = iz1.m(context, i);
            if (drawableM == null || (drawableMutate = drawableM.mutate()) == null) {
                layerDrawable = null;
            } else {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(1);
                gradientDrawable.setColor(-1);
                gradientDrawable.setStroke(tu0.v(1.0f * context.getResources().getDisplayMetrics().density), 570425344);
                int iV = tu0.v(y13.A(i, 2.0f) * context.getResources().getDisplayMetrics().density);
                layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, drawableMutate});
                layerDrawable.setLayerInset(1, iV, iV, iV, iV);
            }
            chip.setChipIcon(layerDrawable);
            chip.setChipIconTint(null);
            chip.setCheckable(false);
            chip.setClickable(false);
            chip.setFocusable(false);
            addView(chip);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProviderChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProviderChipGroup(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ ProviderChipGroup(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
