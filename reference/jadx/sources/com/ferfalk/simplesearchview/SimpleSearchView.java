package com.ferfalk.simplesearchview;

import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.material.tabs.TabLayout;
import defpackage.bg7;
import defpackage.cg7;
import defpackage.g7;
import defpackage.h7;
import defpackage.ho6;
import defpackage.i53;
import defpackage.k52;
import defpackage.k55;
import defpackage.m85;
import defpackage.nf;
import defpackage.qg7;
import defpackage.rd6;
import defpackage.rg7;
import defpackage.sg7;
import defpackage.tg7;
import defpackage.tu0;
import defpackage.ug7;
import defpackage.vg7;
import defpackage.wg7;
import java.lang.reflect.Field;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SimpleSearchView extends FrameLayout {
    public static final /* synthetic */ int O = 0;
    public final ImageButton G;
    public final View H;
    public TabLayout I;
    public int J;
    public ug7 K;
    public wg7 L;
    public boolean M;
    public boolean N;
    public final Context a;
    public int b;
    public Point c;
    public CharSequence d;
    public String e;
    public final boolean f;
    public boolean k;
    public boolean n;
    public String p;
    public int q;
    public final ViewGroup r;
    public final EditText t;
    public final ImageButton x;
    public final ImageButton y;

    public SimpleSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 250;
        this.f = false;
        this.k = false;
        this.n = false;
        this.p = "";
        this.q = 0;
        this.M = false;
        this.N = false;
        this.a = context;
        LayoutInflater.from(context).inflate(R.layout.search_view, (ViewGroup) this, true);
        this.r = (ViewGroup) findViewById(R.id.searchContainer);
        this.t = (EditText) findViewById(R.id.searchEditText);
        this.x = (ImageButton) findViewById(R.id.buttonBack);
        this.y = (ImageButton) findViewById(R.id.buttonClear);
        this.G = (ImageButton) findViewById(R.id.buttonVoice);
        this.H = findViewById(R.id.bottomLine);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, rd6.a, i, 0);
        int i2 = 2;
        int i3 = 15;
        int i4 = 11;
        if (typedArrayObtainStyledAttributes == null) {
            setCardStyle(this.q);
        } else {
            if (typedArrayObtainStyledAttributes.hasValue(13)) {
                setCardStyle(typedArrayObtainStyledAttributes.getInt(13, this.q));
            }
            if (typedArrayObtainStyledAttributes.hasValue(3)) {
                setBackIconAlpha(typedArrayObtainStyledAttributes.getFloat(3, 0.87f));
            }
            if (typedArrayObtainStyledAttributes.hasValue(7)) {
                setIconsAlpha(typedArrayObtainStyledAttributes.getFloat(7, 0.54f));
            }
            if (typedArrayObtainStyledAttributes.hasValue(4)) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
                setBackIconColor(typedArrayObtainStyledAttributes.getColor(4, typedValue.data));
            }
            if (typedArrayObtainStyledAttributes.hasValue(8)) {
                setIconsColor(typedArrayObtainStyledAttributes.getColor(8, -16777216));
            }
            if (typedArrayObtainStyledAttributes.hasValue(5)) {
                TypedValue typedValue2 = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.colorAccent, typedValue2, true);
                setCursorColor(typedArrayObtainStyledAttributes.getColor(5, typedValue2.data));
            }
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                setHintTextColor(typedArrayObtainStyledAttributes.getColor(6, getResources().getColor(R.color.default_textColorHint)));
            }
            if (typedArrayObtainStyledAttributes.hasValue(10)) {
                setSearchBackground(typedArrayObtainStyledAttributes.getDrawable(10));
            }
            if (typedArrayObtainStyledAttributes.hasValue(9)) {
                setBackIconDrawable(typedArrayObtainStyledAttributes.getDrawable(9));
            }
            if (typedArrayObtainStyledAttributes.hasValue(11)) {
                setClearIconDrawable(typedArrayObtainStyledAttributes.getDrawable(11));
            }
            if (typedArrayObtainStyledAttributes.hasValue(12)) {
                setVoiceIconDrawable(typedArrayObtainStyledAttributes.getDrawable(12));
            }
            if (typedArrayObtainStyledAttributes.hasValue(14)) {
                this.f = typedArrayObtainStyledAttributes.getBoolean(14, this.f);
            }
            if (typedArrayObtainStyledAttributes.hasValue(15)) {
                setVoiceSearchPrompt(typedArrayObtainStyledAttributes.getString(15));
            }
            if (typedArrayObtainStyledAttributes.hasValue(1)) {
                setHint(typedArrayObtainStyledAttributes.getString(1));
            }
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                setInputType(typedArrayObtainStyledAttributes.getInt(2, 524288));
            }
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                setTextColor(typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.default_textColor)));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.t.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: og7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                int i6 = SimpleSearchView.O;
                SimpleSearchView simpleSearchView = this.a;
                Editable text = simpleSearchView.t.getText();
                if (text != null && TextUtils.getTrimmedLength(text) > 0) {
                    ug7 ug7Var = simpleSearchView.K;
                    if (ug7Var != null) {
                        text.toString();
                        ug7Var.z();
                    } else {
                        simpleSearchView.a(true);
                        simpleSearchView.M = true;
                        simpleSearchView.t.setText((CharSequence) null);
                        simpleSearchView.M = false;
                    }
                }
                return true;
            }
        });
        this.t.addTextChangedListener(new k52(this, i2));
        this.t.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: pg7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (!z) {
                    int i5 = SimpleSearchView.O;
                    return;
                }
                EditText editText = this.a.t;
                editText.requestFocus();
                InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(editText, 2);
                }
            }
        });
        this.x.setOnClickListener(new nf(this, i4));
        this.y.setOnClickListener(new g7(this, i3));
        this.G.setOnClickListener(new h7(this, i3));
        c(true);
        if (isInEditMode()) {
            return;
        }
        setVisibility(4);
    }

    private GradientDrawable getCardStyleBackground() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(tu0.c(this.a, 4));
        return gradientDrawable;
    }

    public final void a(boolean z) {
        if (this.k) {
            this.M = true;
            this.t.setText((CharSequence) null);
            this.M = false;
            clearFocus();
            if (z) {
                rg7 rg7Var = new rg7();
                int i = this.b;
                Point revealAnimationCenter = getRevealAnimationCenter();
                if (revealAnimationCenter == null) {
                    revealAnimationCenter = new Point(getWidth() / 2, getHeight() / 2);
                }
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(this, revealAnimationCenter.x, revealAnimationCenter.y, k55.r(revealAnimationCenter, this), 0.0f);
                animatorCreateCircularReveal.addListener(new cg7(this, rg7Var));
                animatorCreateCircularReveal.setDuration(i);
                animatorCreateCircularReveal.setInterpolator(new i53());
                animatorCreateCircularReveal.start();
            } else {
                setVisibility(4);
            }
            TabLayout tabLayout = this.I;
            if (tabLayout != null) {
                if (z) {
                    k55.I(0, this.J, this.b, tabLayout).start();
                } else {
                    tabLayout.setVisibility(0);
                }
            }
            this.k = false;
            wg7 wg7Var = this.L;
            if (wg7Var != null) {
                wg7Var.f();
            }
        }
    }

    public final void b(boolean z) {
        if (this.k) {
            return;
        }
        CharSequence charSequence = this.N ? this.d : null;
        EditText editText = this.t;
        editText.setText(charSequence);
        editText.requestFocus();
        if (z) {
            qg7 qg7Var = new qg7();
            int i = this.b;
            Point revealAnimationCenter = getRevealAnimationCenter();
            if (revealAnimationCenter == null) {
                revealAnimationCenter = new Point(getWidth() / 2, getHeight() / 2);
            }
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(this, revealAnimationCenter.x, revealAnimationCenter.y, 0.0f, k55.r(revealAnimationCenter, this));
            animatorCreateCircularReveal.addListener(new bg7(this, qg7Var));
            animatorCreateCircularReveal.setDuration(i);
            animatorCreateCircularReveal.setInterpolator(new i53());
            animatorCreateCircularReveal.start();
        } else {
            setVisibility(0);
        }
        TabLayout tabLayout = this.I;
        if (tabLayout != null) {
            if (z) {
                k55.I(tabLayout.getHeight(), 0, this.b, tabLayout).start();
            } else {
                tabLayout.setVisibility(8);
            }
        }
        this.k = true;
        wg7 wg7Var = this.L;
        if (wg7Var != null) {
            wg7Var.e();
        }
    }

    public final void c(boolean z) {
        if (z) {
            if ((isInEditMode() ? true : true ^ getContext().getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).isEmpty()) && this.f) {
                this.G.setVisibility(0);
                return;
            }
        }
        this.G.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.n = true;
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
        super.clearFocus();
        this.t.clearFocus();
        this.n = false;
    }

    public int getAnimationDuration() {
        return this.b;
    }

    public int getCardStyle() {
        return this.q;
    }

    public Point getRevealAnimationCenter() {
        Point point = this.c;
        if (point != null) {
            return point;
        }
        Point point2 = new Point(getWidth() - tu0.c(this.a, 26), getHeight() / 2);
        this.c = point2;
        return point2;
    }

    public EditText getSearchEditText() {
        return this.t;
    }

    public TabLayout getTabLayout() {
        return this.I;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof vg7)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        vg7 vg7Var = (vg7) parcelable;
        this.d = vg7Var.a;
        this.b = vg7Var.c;
        this.p = vg7Var.d;
        this.N = vg7Var.e;
        if (vg7Var.b) {
            b(false);
            String str = vg7Var.a;
            EditText editText = this.t;
            editText.setText(str);
            if (str != null) {
                editText.setSelection(editText.length());
                this.d = str;
            }
        }
        super.onRestoreInstanceState(vg7Var.getSuperState());
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        vg7 vg7Var = new vg7(super.onSaveInstanceState());
        CharSequence charSequence = this.d;
        vg7Var.a = charSequence != null ? charSequence.toString() : null;
        vg7Var.b = this.k;
        vg7Var.c = this.b;
        vg7Var.e = this.N;
        return vg7Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        if (!this.n && isFocusable()) {
            return this.t.requestFocus(i, rect);
        }
        return false;
    }

    public void setAnimationDuration(int i) {
        this.b = i;
    }

    public void setBackIconAlpha(float f) {
        this.x.setAlpha(f);
    }

    public void setBackIconColor(int i) {
        this.x.setImageTintList(ColorStateList.valueOf(i));
    }

    public void setBackIconDrawable(Drawable drawable) {
        this.x.setImageDrawable(drawable);
    }

    public void setCardStyle(int i) {
        float fC;
        this.q = i;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ViewGroup viewGroup = this.r;
        if (i != 1) {
            viewGroup.setBackgroundColor(-1);
            this.H.setVisibility(0);
            fC = 0.0f;
        } else {
            viewGroup.setBackground(getCardStyleBackground());
            this.H.setVisibility(8);
            Context context = this.a;
            int iC = tu0.c(context, 6);
            layoutParams.setMargins(iC, iC, iC, iC);
            fC = tu0.c(context, 2);
        }
        this.r.setLayoutParams(layoutParams);
        this.r.setElevation(fC);
    }

    public void setClearIconDrawable(Drawable drawable) {
        this.y.setImageDrawable(drawable);
    }

    public void setCursorColor(int i) {
        EditText editText = this.t;
        int i2 = ho6.e;
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i3 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Drawable drawable = editText.getContext().getDrawable(i3);
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Exception e) {
            Log.e("ho6", e.getMessage(), e);
        }
    }

    public void setCursorDrawable(int i) {
        EditText editText = this.t;
        int i2 = ho6.e;
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            declaredField.set(editText, Integer.valueOf(i));
        } catch (Exception e) {
            Log.e("ho6", e.getMessage(), e);
        }
    }

    public void setHint(CharSequence charSequence) {
        this.t.setHint(charSequence);
    }

    public void setHintTextColor(int i) {
        this.t.setHintTextColor(i);
    }

    public void setIconsAlpha(float f) {
        this.y.setAlpha(f);
        this.G.setAlpha(f);
    }

    public void setIconsColor(int i) {
        this.y.setImageTintList(ColorStateList.valueOf(i));
        this.G.setImageTintList(ColorStateList.valueOf(i));
    }

    public void setInputType(int i) {
        this.t.setInputType(i);
    }

    public void setKeepQuery(boolean z) {
        this.N = z;
    }

    public void setMenuItem(MenuItem menuItem) {
        menuItem.setOnMenuItemClickListener(new m85(this, 1));
    }

    public void setOnQueryTextListener(ug7 ug7Var) {
        this.K = ug7Var;
    }

    public void setOnSearchViewListener(wg7 wg7Var) {
        this.L = wg7Var;
    }

    public void setRevealAnimationCenter(Point point) {
        this.c = point;
    }

    public void setSearchBackground(Drawable drawable) {
        this.r.setBackground(drawable);
    }

    public void setTabLayout(TabLayout tabLayout) {
        this.I = tabLayout;
        tabLayout.getViewTreeObserver().addOnPreDrawListener(new sg7(this, tabLayout));
        this.I.a(new tg7(this));
    }

    public void setTextColor(int i) {
        this.t.setTextColor(i);
    }

    public void setVoiceIconDrawable(Drawable drawable) {
        this.G.setImageDrawable(drawable);
    }

    public void setVoiceSearchPrompt(String str) {
        this.p = str;
    }

    public SimpleSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleSearchView(Context context) {
        this(context, null);
    }
}
