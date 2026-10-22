package defpackage;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl7 extends LinearLayout {
    public final TextInputLayout a;
    public final tp b;
    public CharSequence c;
    public final CheckableImageButton d;
    public ColorStateList e;
    public PorterDuff.Mode f;
    public int k;
    public ImageView.ScaleType n;
    public View.OnLongClickListener p;
    public boolean q;

    public wl7(TextInputLayout textInputLayout, u94 u94Var) {
        super(textInputLayout.getContext());
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.d = checkableImageButton;
        tp tpVar = new tp(getContext(), null);
        this.b = tpVar;
        if (k55.w(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.p;
        checkableImageButton.setOnClickListener(null);
        wx3.z(checkableImageButton, onLongClickListener);
        this.p = null;
        checkableImageButton.setOnLongClickListener(null);
        wx3.z(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) u94Var.b;
        if (typedArray.hasValue(70)) {
            this.e = k55.l(getContext(), u94Var, 70);
        }
        if (typedArray.hasValue(71)) {
            this.f = yc9.L(typedArray.getInt(71, -1), null);
        }
        if (typedArray.hasValue(67)) {
            c(u94Var.b(67));
            if (typedArray.hasValue(66)) {
                b(typedArray.getText(66));
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            c6.f("startIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.k) {
            this.k = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(69)) {
            ImageView.ScaleType scaleTypeF = wx3.f(typedArray.getInt(69, -1));
            this.n = scaleTypeF;
            checkableImageButton.setScaleType(scaleTypeF);
        }
        tpVar.setVisibility(8);
        tpVar.setId(R.id.textinput_prefix_text);
        tpVar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        tpVar.setAccessibilityLiveRegion(1);
        tpVar.setTextAppearance(typedArray.getResourceId(61, 0));
        if (typedArray.hasValue(62)) {
            tpVar.setTextColor(u94Var.a(62));
        }
        CharSequence text = typedArray.getText(60);
        this.c = TextUtils.isEmpty(text) ? null : text;
        tpVar.setText(text);
        f();
        addView(checkableImageButton);
        addView(tpVar);
        checkableImageButton.setOnFocusableChangedListener(new nb(this, 4));
    }

    public final int a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.d;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        return this.b.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    public final void b(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
            wx3.E(checkableImageButton, charSequence);
        }
    }

    public final void c(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.d;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.e;
            PorterDuff.Mode mode = this.f;
            TextInputLayout textInputLayout = this.a;
            wx3.b(textInputLayout, checkableImageButton, colorStateList, mode);
            d(true);
            wx3.y(textInputLayout, checkableImageButton, this.e);
            return;
        }
        d(false);
        View.OnLongClickListener onLongClickListener = this.p;
        checkableImageButton.setOnClickListener(null);
        wx3.z(checkableImageButton, onLongClickListener);
        this.p = null;
        checkableImageButton.setOnLongClickListener(null);
        wx3.z(checkableImageButton, null);
        b(null);
    }

    public final void d(boolean z) {
        EditText editText;
        CheckableImageButton checkableImageButton = this.d;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            if (!z && checkableImageButton.hasFocus() && (editText = this.a.getEditText()) != null) {
                editText.requestFocus();
            }
            checkableImageButton.setVisibility(z ? 0 : 8);
            e();
            f();
        }
    }

    public final void e() {
        EditText editText = this.a.e;
        if (editText == null) {
            return;
        }
        this.b.setPaddingRelative(this.d.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void f() {
        int i = (this.c == null || this.q) ? 8 : 0;
        setVisibility((this.d.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.b.setVisibility(i);
        this.a.s();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        e();
    }
}
