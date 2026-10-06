package com.google.android.material.button;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import defpackage.c6;
import defpackage.dl8;
import defpackage.f95;
import defpackage.o85;
import defpackage.pk8;
import defpackage.zm5;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialSplitButton extends o85 {
    public static final /* synthetic */ int M = 0;

    public MaterialSplitButton(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Material3_MaterialSplitButton), attributeSet, i);
    }

    @Override // defpackage.o85, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            c6.f("MaterialSplitButton can only hold MaterialButtons.");
            return;
        }
        if (getChildCount() > 2) {
            c6.f("MaterialSplitButton can only hold two MaterialButtons.");
            return;
        }
        MaterialButton materialButton = (MaterialButton) view;
        super.addView(view, i, layoutParams);
        if (indexOfChild(view) == 1) {
            materialButton.setCheckable(true);
            materialButton.setA11yClassName(Button.class.getName());
            String string = getResources().getString(materialButton.M ? R.string.mtrl_button_expanded_content_description : R.string.mtrl_button_collapsed_content_description);
            WeakHashMap weakHashMap = dl8.a;
            new pk8(R.id.tag_state_description, CharSequence.class, 64, 30).g(materialButton, string);
            materialButton.e.add(new f95(this, materialButton));
        }
    }

    public MaterialSplitButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSplitButtonStyle);
    }

    public MaterialSplitButton(Context context) {
        this(context, null);
    }
}
