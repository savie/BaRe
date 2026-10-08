package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.dl8;
import defpackage.j38;
import defpackage.jm1;
import defpackage.jy2;
import defpackage.w61;
import defpackage.x61;
import defpackage.z85;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChipTextInputComboView extends FrameLayout implements Checkable {
    public static final /* synthetic */ int G = 0;
    public final Chip a;
    public final TextInputLayout b;
    public final EditText c;
    public final w61 d;
    public final x61 e;
    public final TextView f;
    public String k;
    public boolean n;
    public ColorStateList p;
    public ColorStateList q;
    public ColorStateList r;
    public ColorStateList t;
    public ColorStateList x;
    public int y;

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = "";
        this.n = false;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.a = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.c = editText;
        editText.setVisibility(4);
        x61 x61Var = new x61(this);
        this.e = x61Var;
        editText.addTextChangedListener(x61Var);
        editText.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        addView(chip);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(R.id.material_label);
        this.f = textView;
        editText.setId(View.generateViewId());
        textView.setLabelFor(editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
        this.d = new w61(this);
    }

    public final void a(boolean z) {
        if (this.n == z) {
            return;
        }
        this.n = z;
        TextInputLayout textInputLayout = this.b;
        TextView textView = this.f;
        EditText editText = this.c;
        Chip chip = this.a;
        if (!z) {
            chip.setChipBackgroundColor(this.p);
            chip.setTextColor(this.q);
            editText.setTextColor(this.r);
            textInputLayout.setBoxStrokeColor(this.y);
            textView.setTextColor(this.x);
            if (Build.VERSION.SDK_INT >= 29) {
                textInputLayout.setCursorColor(this.t);
                return;
            }
            return;
        }
        this.p = chip.getChipBackgroundColor();
        this.q = chip.getTextColors();
        this.r = editText.getTextColors();
        this.x = textView.getTextColors();
        this.y = textInputLayout.getBoxStrokeColor();
        int iC = z85.C(getContext(), jm1.U(this, R.attr.colorError));
        ColorStateList colorStateListQ = z85.q(getContext(), R.attr.colorErrorContainer);
        ColorStateList colorStateListQ2 = z85.q(getContext(), R.attr.colorOnErrorContainer);
        if (colorStateListQ == null || colorStateListQ2 == null) {
            return;
        }
        chip.setChipBackgroundColor(colorStateListQ);
        chip.setTextColor(colorStateListQ2);
        editText.setTextColor(colorStateListQ2);
        textInputLayout.setBoxStrokeColor(iC);
        textView.setTextColor(iC);
        if (Build.VERSION.SDK_INT >= 29) {
            this.t = textInputLayout.getCursorColor();
            textInputLayout.setCursorColor(colorStateListQ2);
        }
    }

    public final void b(String str) {
        String strC = j38.c(getResources(), str, "%02d");
        this.k = strC;
        this.a.setText(strC);
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        EditText editText = this.c;
        x61 x61Var = this.e;
        editText.removeTextChangedListener(x61Var);
        editText.setText(strC);
        dl8.n(editText, this.d);
        editText.addTextChangedListener(x61Var);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.a.isChecked();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        Chip chip = this.a;
        chip.setChecked(z);
        if (z) {
            chip.setText("");
            chip.setImportantForAccessibility(2);
        } else {
            chip.setText(this.k);
            chip.setImportantForAccessibility(1);
        }
        int i = 4;
        int i2 = z ? 0 : 4;
        EditText editText = this.c;
        editText.setVisibility(i2);
        if (chip.isChecked()) {
            editText.requestFocus();
            editText.post(new jy2(editText, i));
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setTag(int i, Object obj) {
        this.a.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        this.a.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context) {
        this(context, null);
    }
}
