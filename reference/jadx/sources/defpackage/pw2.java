package defpackage;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pw2 extends LinearLayout {
    public View.OnLongClickListener G;
    public CharSequence H;
    public final tp I;
    public boolean J;
    public EditText K;
    public final AccessibilityManager L;
    public AccessibilityManager.TouchExplorationStateChangeListener M;
    public final lw2 N;
    public final TextInputLayout a;
    public final FrameLayout b;
    public final CheckableImageButton c;
    public ColorStateList d;
    public PorterDuff.Mode e;
    public View.OnLongClickListener f;
    public final CheckableImageButton k;
    public final ow2 n;
    public int p;
    public final LinkedHashSet q;
    public ColorStateList r;
    public PorterDuff.Mode t;
    public int x;
    public ImageView.ScaleType y;

    public pw2(TextInputLayout textInputLayout, u94 u94Var) {
        super(textInputLayout.getContext());
        this.p = 0;
        this.q = new LinkedHashSet();
        this.N = new lw2(this);
        mw2 mw2Var = new mw2(this);
        this.L = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) this, false);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (k55.w(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        this.c = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout, false);
        checkableImageButton2.setId(R.id.text_input_end_icon);
        if (k55.w(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginStart(0);
        }
        this.k = checkableImageButton2;
        this.n = new ow2(this, u94Var);
        tp tpVar = new tp(getContext(), null);
        this.I = tpVar;
        TypedArray typedArray = (TypedArray) u94Var.b;
        if (typedArray.hasValue(38)) {
            this.d = k55.l(getContext(), u94Var, 38);
        }
        if (typedArray.hasValue(39)) {
            this.e = yc9.L(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(u94Var.b(37));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setCheckable(false);
        checkableImageButton.setFocusable(false);
        if (!typedArray.hasValue(54)) {
            if (typedArray.hasValue(32)) {
                this.r = k55.l(getContext(), u94Var, 32);
            }
            if (typedArray.hasValue(33)) {
                this.t = yc9.L(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27)) {
                f(typedArray.getText(27));
            }
            checkableImageButton2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(54)) {
            if (typedArray.hasValue(55)) {
                this.r = k55.l(getContext(), u94Var, 55);
            }
            if (typedArray.hasValue(56)) {
                this.t = yc9.L(typedArray.getInt(56, -1), null);
            }
            g(typedArray.getBoolean(54, false) ? 1 : 0);
            f(typedArray.getText(52));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            c6.f("endIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.x) {
            this.x = dimensionPixelSize;
            checkableImageButton2.setMinimumWidth(dimensionPixelSize);
            checkableImageButton2.setMinimumHeight(dimensionPixelSize);
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeF = wx3.f(typedArray.getInt(31, -1));
            this.y = scaleTypeF;
            checkableImageButton2.setScaleType(scaleTypeF);
            checkableImageButton.setScaleType(scaleTypeF);
        }
        tpVar.setVisibility(8);
        tpVar.setId(R.id.textinput_suffix_text);
        tpVar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        tpVar.setAccessibilityLiveRegion(1);
        tpVar.setTextAppearance(typedArray.getResourceId(73, 0));
        if (typedArray.hasValue(74)) {
            tpVar.setTextColor(u94Var.a(74));
        }
        CharSequence text = typedArray.getText(72);
        this.H = TextUtils.isEmpty(text) ? null : text;
        tpVar.setText(text);
        n();
        frameLayout.addView(checkableImageButton2);
        addView(tpVar);
        addView(frameLayout);
        addView(checkableImageButton);
        checkableImageButton.setOnFocusableChangedListener(new sn1(this, 4));
        checkableImageButton2.setOnFocusableChangedListener(new lb(this));
        textInputLayout.x0.add(mw2Var);
        if (textInputLayout.e != null) {
            mw2Var.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new nw2(this));
    }

    public final qw2 a() {
        qw2 v62Var;
        int i = this.p;
        ow2 ow2Var = this.n;
        SparseArray sparseArray = ow2Var.a;
        qw2 qw2Var = (qw2) sparseArray.get(i);
        if (qw2Var != null) {
            return qw2Var;
        }
        pw2 pw2Var = ow2Var.b;
        if (i != -1) {
            int i2 = 1;
            if (i == 0) {
                v62Var = new v62(pw2Var, i2);
            } else if (i == 1) {
                v62Var = new cy5(pw2Var, ow2Var.d);
            } else if (i == 2) {
                v62Var = new r91(pw2Var);
            } else {
                if (i != 3) {
                    c6.f(fz5.j(i, "Invalid end icon mode: "));
                    return null;
                }
                v62Var = new lr2(pw2Var);
            }
        } else {
            v62Var = new v62(pw2Var, 0);
        }
        sparseArray.append(i, v62Var);
        return v62Var;
    }

    public final int b() {
        int marginStart;
        if (c() || d()) {
            CheckableImageButton checkableImageButton = this.k;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.I.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean c() {
        return this.b.getVisibility() == 0 && this.k.getVisibility() == 0;
    }

    public final boolean d() {
        return this.c.getVisibility() == 0;
    }

    public final void e(boolean z) {
        boolean z2;
        boolean zIsActivated;
        boolean z3;
        qw2 qw2VarA = a();
        boolean zJ = qw2VarA.j();
        CheckableImageButton checkableImageButton = this.k;
        boolean z4 = true;
        if (!zJ || (z3 = checkableImageButton.d) == qw2VarA.k()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(qw2VarA instanceof lr2) || (zIsActivated = checkableImageButton.isActivated()) == ((lr2) qw2VarA).l) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z || z4) {
            wx3.y(this.a, checkableImageButton, this.r);
        }
    }

    public final void f(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.k;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
            wx3.E(checkableImageButton, charSequence);
        }
    }

    public final void g(int i) {
        if (this.p == i) {
            return;
        }
        qw2 qw2VarA = a();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.M;
        AccessibilityManager accessibilityManager = this.L;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        this.M = null;
        qw2VarA.r();
        this.p = i;
        Iterator it = this.q.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
        h(i != 0);
        qw2 qw2VarA2 = a();
        int iD = this.n.c;
        if (iD == 0) {
            iD = qw2VarA2.d();
        }
        Drawable drawableM = iD != 0 ? iz1.m(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.k;
        checkableImageButton.setImageDrawable(drawableM);
        TextInputLayout textInputLayout = this.a;
        if (drawableM != null) {
            wx3.b(textInputLayout, checkableImageButton, this.r, this.t);
            wx3.y(textInputLayout, checkableImageButton, this.r);
        }
        checkableImageButton.setCheckable(qw2VarA2.j());
        if (!qw2VarA2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        qw2VarA2.q();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListenerH = qw2VarA2.h();
        this.M = touchExplorationStateChangeListenerH;
        if (touchExplorationStateChangeListenerH != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.M);
        }
        View.OnClickListener onClickListenerF = qw2VarA2.f();
        View.OnLongClickListener onLongClickListener = this.G;
        checkableImageButton.setOnClickListener(onClickListenerF);
        wx3.z(checkableImageButton, onLongClickListener);
        int iC = qw2VarA2.c();
        f(iC != 0 ? getResources().getText(iC) : null);
        EditText editText = this.K;
        if (editText != null) {
            qw2VarA2.l(editText);
            j(qw2VarA2);
        }
        wx3.b(textInputLayout, checkableImageButton, this.r, this.t);
        e(true);
    }

    public final void h(boolean z) {
        EditText editText;
        if (c() != z) {
            CheckableImageButton checkableImageButton = this.k;
            if (!z && checkableImageButton.hasFocus() && (editText = this.K) != null) {
                editText.requestFocus();
            }
            checkableImageButton.setVisibility(z ? 0 : 8);
            k();
            m();
            this.a.s();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.c;
        checkableImageButton.setImageDrawable(drawable);
        l();
        wx3.b(this.a, checkableImageButton, this.d, this.e);
    }

    public final void j(qw2 qw2Var) {
        if (this.K == null) {
            return;
        }
        if (qw2Var.e() != null) {
            this.K.setOnFocusChangeListener(qw2Var.e());
        }
        if (qw2Var.g() != null) {
            this.k.setOnFocusChangeListener(qw2Var.g());
        }
    }

    public final void k() {
        this.b.setVisibility((this.k.getVisibility() != 0 || d()) ? 8 : 0);
        setVisibility((c() || d() || ((this.H == null || this.J) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final void l() {
        CheckableImageButton checkableImageButton = this.c;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.a;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.r.q && textInputLayout.o()) ? 0 : 8);
        k();
        m();
        if (this.p != 0) {
            return;
        }
        textInputLayout.s();
    }

    public final void m() {
        TextInputLayout textInputLayout = this.a;
        if (textInputLayout.e == null) {
            return;
        }
        this.I.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.e.getPaddingTop(), (c() || d()) ? 0 : textInputLayout.e.getPaddingEnd(), textInputLayout.e.getPaddingBottom());
    }

    public final void n() {
        tp tpVar = this.I;
        int visibility = tpVar.getVisibility();
        int i = (this.H == null || this.J) ? 8 : 0;
        if (visibility != i) {
            a().o(i == 0);
        }
        k();
        tpVar.setVisibility(i);
        this.a.s();
    }
}
