package defpackage;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.BaselineLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class al5 extends FrameLayout implements dl5 {
    public static final int[] B0 = {R.attr.state_checked};
    public static final us2 C0;
    public static final zk5 D0;
    public Rect A0;
    public boolean G;
    public final LinearLayout H;
    public final LinearLayout I;
    public final View J;
    public final FrameLayout K;
    public final ImageView L;
    public final BaselineLayout M;
    public final TextView N;
    public final TextView O;
    public final BaselineLayout P;
    public final TextView Q;
    public final TextView R;
    public BaselineLayout S;
    public int T;
    public int U;
    public int V;
    public int W;
    public boolean a;
    public int a0;
    public ColorStateList b;
    public ColorStateList b0;
    public Drawable c;
    public boolean c0;
    public int d;
    public ic5 d0;
    public int e;
    public ColorStateList e0;
    public int f;
    public Drawable f0;
    public Drawable g0;
    public ValueAnimator h0;
    public us2 i0;
    public float j0;
    public int k;
    public boolean k0;
    public int l0;
    public int m0;
    public float n;
    public int n0;
    public int o0;
    public float p;
    public boolean p0;
    public float q;
    public int q0;
    public float r;
    public int r0;
    public wk0 s0;
    public float t;
    public int t0;
    public int u0;
    public int v0;
    public boolean w0;
    public float x;
    public boolean x0;
    public int y;
    public boolean y0;
    public boolean z0;

    static {
        int i = 18;
        C0 = new us2(i);
        D0 = new zk5(i);
    }

    public al5(Context context) {
        super(context);
        this.a = false;
        this.T = -1;
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.a0 = 0;
        this.c0 = false;
        this.i0 = C0;
        this.j0 = 0.0f;
        this.k0 = false;
        this.l0 = 0;
        this.m0 = 0;
        this.n0 = -2;
        this.o0 = 0;
        this.p0 = false;
        this.q0 = 0;
        this.r0 = 0;
        this.u0 = 0;
        this.v0 = 49;
        this.w0 = false;
        this.x0 = false;
        this.y0 = false;
        this.z0 = false;
        this.A0 = new Rect();
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.H = (LinearLayout) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_content_container);
        LinearLayout linearLayout = (LinearLayout) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_inner_content_container);
        this.I = linearLayout;
        this.J = findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_active_indicator_view);
        this.K = (FrameLayout) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_icon_container);
        this.L = (ImageView) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_icon_view);
        BaselineLayout baselineLayout = (BaselineLayout) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_labels_group);
        this.M = baselineLayout;
        TextView textView = (TextView) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_small_label_view);
        this.N = textView;
        TextView textView2 = (TextView) findViewById(org.swiftapps.swiftbackup.R.id.navigation_bar_item_large_label_view);
        this.O = textView2;
        float dimension = getResources().getDimension(org.swiftapps.swiftbackup.R.dimen.default_navigation_text_size);
        float dimension2 = getResources().getDimension(org.swiftapps.swiftbackup.R.dimen.default_navigation_active_text_size);
        BaselineLayout baselineLayout2 = new BaselineLayout(getContext());
        this.P = baselineLayout2;
        baselineLayout2.setVisibility(8);
        this.P.setDuplicateParentStateEnabled(true);
        this.P.setMeasurePaddingFromBaseline(this.y0);
        TextView textView3 = new TextView(getContext());
        this.Q = textView3;
        textView3.setMaxLines(1);
        TextView textView4 = this.Q;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.Q.setDuplicateParentStateEnabled(true);
        this.Q.setIncludeFontPadding(false);
        this.Q.setGravity(16);
        this.Q.setTextSize(dimension);
        TextView textView5 = new TextView(getContext());
        this.R = textView5;
        textView5.setMaxLines(1);
        this.R.setEllipsize(truncateAt);
        this.R.setDuplicateParentStateEnabled(true);
        this.R.setVisibility(4);
        this.R.setIncludeFontPadding(false);
        this.R.setGravity(16);
        this.R.setTextSize(dimension2);
        this.P.addView(this.Q);
        this.P.addView(this.R);
        this.S = baselineLayout;
        setBackgroundResource(getItemBackgroundResId());
        this.d = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.e = baselineLayout.getPaddingBottom();
        this.f = 0;
        this.k = 0;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        this.Q.setImportantForAccessibility(2);
        this.R.setImportantForAccessibility(2);
        setFocusable(true);
        b();
        this.o0 = getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.m3_navigation_item_expanded_active_indicator_height_default);
        linearLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: xk5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                boolean z;
                wk0 wk0Var;
                al5 al5Var = this.a;
                View view2 = al5Var.J;
                ImageView imageView = al5Var.L;
                if (imageView.getVisibility() == 0 && (wk0Var = al5Var.s0) != null) {
                    Rect rect = new Rect();
                    imageView.getDrawingRect(rect);
                    wk0Var.setBounds(rect);
                    wk0Var.j(imageView, null);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) al5Var.I.getLayoutParams();
                int i9 = (i3 - i) + layoutParams.rightMargin + layoutParams.leftMargin;
                int i10 = (i4 - i2) + layoutParams.topMargin + layoutParams.bottomMargin;
                boolean z2 = true;
                if (al5Var.t0 == 1 && al5Var.n0 == -2) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
                    if (al5Var.n0 != -2 || view2.getMeasuredWidth() == i9) {
                        z = false;
                    } else {
                        layoutParams2.width = Math.max(i9, Math.min(al5Var.l0, al5Var.getMeasuredWidth() - (al5Var.q0 * 2)));
                        z = true;
                    }
                    if (view2.getMeasuredHeight() < i10) {
                        layoutParams2.height = i10;
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        view2.setLayoutParams(layoutParams2);
                    }
                }
            }
        });
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < iIndexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof al5) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconWidth() {
        wk0 wk0Var = this.s0;
        int minimumWidth = wk0Var == null ? 0 : wk0Var.getMinimumWidth() - this.s0.e.b.O.intValue();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.K.getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.L.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    public static void i(int i, int i2, int i3, View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    private void setLabelPivots(TextView textView) {
        textView.setPivotX(textView.getWidth() / 2);
        textView.setPivotY(textView.getBaseline());
    }

    @Override // defpackage.yc5
    public final void a(ic5 ic5Var) {
        this.d0 = ic5Var;
        setCheckable(ic5Var.isCheckable());
        setChecked(ic5Var.isChecked());
        setEnabled(ic5Var.isEnabled());
        setIcon(ic5Var.getIcon());
        setTitle(ic5Var.e);
        setId(ic5Var.a);
        if (!TextUtils.isEmpty(ic5Var.I)) {
            setContentDescription(ic5Var.I);
        }
        s88.a(this, !TextUtils.isEmpty(ic5Var.J) ? ic5Var.J : ic5Var.e);
        l();
        this.a = true;
    }

    public final void b() {
        float textSize = this.N.getTextSize();
        float textSize2 = this.O.getTextSize();
        this.n = textSize - textSize2;
        this.p = (textSize2 * 1.0f) / textSize;
        this.q = (textSize * 1.0f) / textSize2;
        float textSize3 = this.Q.getTextSize();
        float textSize4 = this.R.getTextSize();
        this.r = textSize3 - textSize4;
        this.t = (textSize4 * 1.0f) / textSize3;
        this.x = (textSize3 * 1.0f) / textSize4;
    }

    public final void c() {
        Drawable focusRingDrawable = this.c;
        Drawable drawable = null;
        drawable = null;
        drawable = null;
        drawable = null;
        boolean z = true;
        if (this.b != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.k0 && activeIndicatorDrawable != null) {
                RippleDrawable rippleDrawable = new RippleDrawable(xn6.c(this.b), null, activeIndicatorDrawable);
                FocusRingDrawable.f(getContext(), rippleDrawable, activeIndicatorDrawable instanceof c95 ? (c95) activeIndicatorDrawable : null);
                drawable = rippleDrawable;
                z = false;
            } else if (focusRingDrawable == null) {
                RippleDrawable rippleDrawable2 = new RippleDrawable(xn6.a(this.b), null, null);
                Context context = getContext();
                ColorDrawable colorDrawable = FocusRingDrawable.H;
                focusRingDrawable = !jm1.R(context.getTheme(), org.swiftapps.swiftbackup.R.attr.focusRingsEnabled, false) ? rippleDrawable2 : new FocusRingDrawable(context, rippleDrawable2);
            }
        }
        FrameLayout frameLayout = this.K;
        frameLayout.setPadding(0, 0, 0, 0);
        frameLayout.setForeground(drawable);
        setBackground(focusRingDrawable);
        setDefaultFocusHighlightEnabled(z);
    }

    public final void d(float f, float f2) {
        us2 us2Var = this.i0;
        us2Var.getClass();
        float fA = ed.a(0.4f, 1.0f, f);
        View view = this.J;
        view.setScaleX(fA);
        view.setScaleY(us2Var.x(f));
        view.setAlpha(ed.b(0.0f, 1.0f, f2 == 0.0f ? 0.8f : 0.0f, f2 == 0.0f ? 1.0f : 0.2f, f));
        this.j0 = f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.k0) {
            this.K.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e() {
        int i = this.L.getLayoutParams().width > 0 ? this.k : 0;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.P.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.rightMargin = getLayoutDirection() == 1 ? i : 0;
            layoutParams.leftMargin = getLayoutDirection() != 1 ? i : 0;
        }
    }

    public final void f(TextView textView, TextView textView2, float f, float f2) {
        i(this.t0 == 0 ? (int) (this.d + f2) : 0, 0, this.v0, this.H);
        int i = this.t0;
        i(i == 0 ? 0 : this.A0.top, i == 0 ? 0 : this.A0.bottom, i == 0 ? 17 : 8388627, this.I);
        int i2 = this.e;
        BaselineLayout baselineLayout = this.M;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), i2);
        this.S.setVisibility(0);
        textView.setScaleX(1.0f);
        textView.setScaleY(1.0f);
        textView.setVisibility(0);
        textView2.setScaleX(f);
        textView2.setScaleY(f);
        textView2.setVisibility(4);
    }

    public final void g() {
        int i = this.d;
        i(i, i, this.t0 == 0 ? 17 : this.v0, this.H);
        i(0, 0, 17, this.I);
        BaselineLayout baselineLayout = this.M;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), 0);
        this.S.setVisibility(8);
    }

    public Drawable getActiveIndicatorDrawable() {
        return this.J.getBackground();
    }

    public wk0 getBadge() {
        return this.s0;
    }

    public BaselineLayout getExpandedLabelGroup() {
        return this.P;
    }

    public int getItemBackgroundResId() {
        return org.swiftapps.swiftbackup.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // defpackage.yc5
    public ic5 getItemData() {
        return this.d0;
    }

    public int getItemDefaultMarginResId() {
        return org.swiftapps.swiftbackup.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.T;
    }

    public BaselineLayout getLabelGroup() {
        return this.M;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        LinearLayout linearLayout = this.H;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
        return linearLayout.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        if (this.t0 == 1) {
            LinearLayout linearLayout = this.I;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            return linearLayout.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        }
        BaselineLayout baselineLayout = this.M;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) baselineLayout.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), baselineLayout.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public final void h(TextView textView, int i) {
        int iRound;
        if (this.z0) {
            textView.setTextAppearance(i);
            return;
        }
        textView.setTextAppearance(i);
        Context context = textView.getContext();
        if (i == 0) {
            iRound = 0;
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, ge6.w);
            TypedValue typedValue = new TypedValue();
            boolean value = typedArrayObtainStyledAttributes.getValue(0, typedValue);
            typedArrayObtainStyledAttributes.recycle();
            if (value) {
                int complexUnit = typedValue.getComplexUnit();
                int i2 = typedValue.data;
                iRound = complexUnit == 2 ? Math.round(TypedValue.complexToFloat(i2) * context.getResources().getDisplayMetrics().density) : TypedValue.complexToDimensionPixelSize(i2, context.getResources().getDisplayMetrics());
            } else {
                iRound = 0;
            }
        }
        if (iRound != 0) {
            textView.setTextSize(0, iRound);
        }
    }

    public final void j(int i) {
        if (i > 0 || getVisibility() != 0) {
            int iMin = Math.min(this.l0, i - (this.q0 * 2));
            int iMax = this.m0;
            if (this.t0 == 1) {
                int measuredWidth = i - (this.r0 * 2);
                int i2 = this.n0;
                if (i2 != -1) {
                    measuredWidth = i2 == -2 ? this.H.getMeasuredWidth() : Math.min(i2, measuredWidth);
                }
                iMin = measuredWidth;
                iMax = Math.max(this.o0, this.I.getMeasuredHeight());
            }
            View view = this.J;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            if (this.p0 && this.y == 2) {
                iMax = iMin;
            }
            layoutParams.height = iMax;
            layoutParams.width = Math.max(0, iMin);
            view.setLayoutParams(layoutParams);
        }
    }

    public final void k(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        h(textView, i);
        b();
        textView.setMinimumHeight(k55.v(textView.getContext(), i));
        ColorStateList colorStateList = this.b0;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        TextView textView2 = this.O;
        textView2.setTypeface(textView2.getTypeface(), this.c0 ? 1 : 0);
        TextView textView3 = this.R;
        textView3.setTypeface(textView3.getTypeface(), this.c0 ? 1 : 0);
    }

    public final void l() {
        ic5 ic5Var = this.d0;
        if (ic5Var != null) {
            setVisibility((!ic5Var.isVisible() || (!this.w0 && this.x0)) ? 8 : 0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        ic5 ic5Var = this.d0;
        if (ic5Var != null && ic5Var.isCheckable() && this.d0.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, B0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        wk0 wk0Var = this.s0;
        if (wk0Var != null && wk0Var.isVisible()) {
            ic5 ic5Var = this.d0;
            CharSequence charSequence = ic5Var.e;
            if (!TextUtils.isEmpty(ic5Var.I)) {
                charSequence = this.d0.I;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.s0.d()));
        }
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) om5.e(isSelected(), 0, 1, getItemVisiblePosition(), 1).a);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) g6.g.a);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(org.swiftapps.swiftbackup.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new xz0(this, i, 1));
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        this.J.setBackground(drawable);
        c();
    }

    public void setActiveIndicatorEnabled(boolean z) {
        this.k0 = z;
        c();
        this.J.setVisibility(z ? 0 : 8);
        requestLayout();
    }

    public void setActiveIndicatorExpandedHeight(int i) {
        this.o0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorExpandedMarginHorizontal(int i) {
        this.r0 = i;
        if (this.t0 == 1) {
            setPadding(i, 0, i, 0);
        }
        j(getWidth());
    }

    public void setActiveIndicatorExpandedPadding(Rect rect) {
        this.A0 = rect;
    }

    public void setActiveIndicatorExpandedWidth(int i) {
        this.n0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorHeight(int i) {
        this.m0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i) {
        if (this.f != i) {
            this.f = i;
            ((LinearLayout.LayoutParams) this.M.getLayoutParams()).topMargin = i;
            BaselineLayout baselineLayout = this.P;
            if (baselineLayout.getLayoutParams() != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) baselineLayout.getLayoutParams();
                layoutParams.rightMargin = getLayoutDirection() == 1 ? i : 0;
                if (getLayoutDirection() == 1) {
                    i = 0;
                }
                layoutParams.leftMargin = i;
                requestLayout();
            }
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i) {
        this.q0 = i;
        j(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z) {
        this.p0 = z;
    }

    public void setActiveIndicatorWidth(int i) {
        this.l0 = i;
        j(getWidth());
    }

    public void setBadge(wk0 wk0Var) {
        wk0 wk0Var2 = this.s0;
        if (wk0Var2 == wk0Var) {
            return;
        }
        ImageView imageView = this.L;
        if (wk0Var2 != null && imageView != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            if (this.s0 != null) {
                setClipChildren(true);
                setClipToPadding(true);
                wk0 wk0Var3 = this.s0;
                if (wk0Var3 != null) {
                    if (wk0Var3.e() != null) {
                        wk0Var3.e().setForeground(null);
                    } else {
                        imageView.getOverlay().remove(wk0Var3);
                    }
                }
                this.s0 = null;
            }
        }
        this.s0 = wk0Var;
        int i = this.u0;
        yk0 yk0Var = wk0Var.e;
        if (yk0Var.l != i) {
            yk0Var.l = i;
            wk0Var.k();
        }
        if (imageView == null || this.s0 == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        wk0 wk0Var4 = this.s0;
        Rect rect = new Rect();
        imageView.getDrawingRect(rect);
        wk0Var4.setBounds(rect);
        wk0Var4.j(imageView, null);
        if (wk0Var4.e() != null) {
            wk0Var4.e().setForeground(wk0Var4);
        } else {
            imageView.getOverlay().add(wk0Var4);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.O;
        setLabelPivots(textView);
        TextView textView2 = this.N;
        setLabelPivots(textView2);
        TextView textView3 = this.R;
        setLabelPivots(textView3);
        TextView textView4 = this.Q;
        setLabelPivots(textView4);
        float f = z ? 1.0f : 0.0f;
        if (this.k0 && this.a && isAttachedToWindow()) {
            ValueAnimator valueAnimator = this.h0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.h0 = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.j0, f);
            this.h0 = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new yk5(this, f));
            this.h0.setInterpolator(ji8.G(getContext(), org.swiftapps.swiftbackup.R.attr.motionEasingEmphasizedInterpolator, ed.b));
            this.h0.setDuration(ji8.F(getContext(), org.swiftapps.swiftbackup.R.attr.motionDurationLong2, getResources().getInteger(org.swiftapps.swiftbackup.R.integer.material_motion_duration_long_1)));
            this.h0.start();
        } else {
            d(f, f);
        }
        float f2 = this.n;
        float f3 = this.p;
        float f4 = this.q;
        if (this.t0 == 1) {
            f2 = this.r;
            f3 = this.t;
            f4 = this.x;
            textView = textView3;
            textView2 = textView4;
        }
        int i = this.y;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        g();
                    }
                } else if (z) {
                    f(textView, textView2, f3, f2);
                } else {
                    f(textView2, textView, f4, 0.0f);
                }
            } else if (z) {
                f(textView, textView2, f3, 0.0f);
            } else {
                g();
            }
        } else if (this.G) {
            if (z) {
                f(textView, textView2, f3, 0.0f);
            } else {
                g();
            }
        } else if (z) {
            f(textView, textView2, f3, f2);
        } else {
            f(textView2, textView, f4, 0.0f);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.N.setEnabled(z);
        this.O.setEnabled(z);
        this.Q.setEnabled(z);
        this.R.setEnabled(z);
        this.L.setEnabled(z);
    }

    @Override // defpackage.dl5
    public void setExpanded(boolean z) {
        this.w0 = z;
        l();
    }

    public void setHorizontalTextAppearanceActive(int i) {
        this.W = i;
        if (i == 0) {
            i = this.U;
        }
        k(this.R, i);
    }

    public void setHorizontalTextAppearanceInactive(int i) {
        this.a0 = i;
        if (i == 0) {
            i = this.V;
        }
        TextView textView = this.Q;
        if (textView == null) {
            return;
        }
        h(textView, i);
        b();
        textView.setMinimumHeight(k55.v(textView.getContext(), i));
        ColorStateList colorStateList = this.b0;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f0) {
            return;
        }
        this.f0 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = drawable.mutate();
            this.g0 = drawable;
            ColorStateList colorStateList = this.e0;
            if (colorStateList != null) {
                drawable.setTintList(colorStateList);
            }
        }
        this.L.setImageDrawable(drawable);
    }

    public void setIconLabelHorizontalSpacing(int i) {
        if (this.k != i) {
            this.k = i;
            e();
            requestLayout();
        }
    }

    public void setIconSize(int i) {
        ImageView imageView = this.L;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        imageView.setLayoutParams(layoutParams);
        e();
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.e0 = colorStateList;
        if (this.d0 == null || (drawable = this.g0) == null) {
            return;
        }
        drawable.setTintList(colorStateList);
        this.g0.invalidateSelf();
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.c = drawable;
        c();
    }

    public void setItemGravity(int i) {
        this.v0 = i;
        requestLayout();
    }

    public void setItemIconGravity(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.t0 != i) {
            this.t0 = i;
            this.u0 = 0;
            BaselineLayout baselineLayout = this.M;
            this.S = baselineLayout;
            BaselineLayout baselineLayout2 = this.P;
            LinearLayout linearLayout = this.I;
            int i8 = 8;
            if (i == 1) {
                if (baselineLayout2.getParent() == null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    linearLayout.addView(baselineLayout2, layoutParams);
                    e();
                }
                Rect rect = this.A0;
                int i9 = rect.left;
                int i10 = rect.right;
                int i11 = rect.top;
                i2 = rect.bottom;
                this.u0 = 1;
                int i12 = this.r0;
                this.S = baselineLayout2;
                i6 = i11;
                i5 = i10;
                i4 = i9;
                i3 = i12;
                i7 = 0;
            } else {
                i2 = 0;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 8;
                i8 = 0;
            }
            baselineLayout.setVisibility(i8);
            baselineLayout2.setVisibility(i7);
            ((FrameLayout.LayoutParams) this.H.getLayoutParams()).gravity = this.v0;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams2.leftMargin = i4;
            layoutParams2.rightMargin = i5;
            layoutParams2.topMargin = i6;
            layoutParams2.bottomMargin = i2;
            setPadding(i3, 0, i3, 0);
            j(getWidth());
            c();
        }
    }

    public void setItemPaddingBottom(int i) {
        if (this.e != i) {
            this.e = i;
            ic5 ic5Var = this.d0;
            if (ic5Var != null) {
                setChecked(ic5Var.isChecked());
            }
        }
    }

    public void setItemPaddingTop(int i) {
        if (this.d != i) {
            this.d = i;
            ic5 ic5Var = this.d0;
            if (ic5Var != null) {
                setChecked(ic5Var.isChecked());
            }
        }
    }

    public void setItemPosition(int i) {
        this.T = i;
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.b = colorStateList;
        c();
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.z0 = z;
        setTextAppearanceActive(this.U);
        setTextAppearanceInactive(this.V);
        setHorizontalTextAppearanceActive(this.W);
        setHorizontalTextAppearanceInactive(this.a0);
    }

    public void setLabelMaxLines(int i) {
        TextView textView = this.N;
        textView.setMaxLines(i);
        TextView textView2 = this.O;
        textView2.setMaxLines(i);
        this.Q.setMaxLines(i);
        this.R.setMaxLines(i);
        if (Build.VERSION.SDK_INT > 34) {
            textView.setGravity(17);
            textView2.setGravity(17);
        } else if (i > 1) {
            textView.setEllipsize(null);
            textView2.setEllipsize(null);
            textView.setGravity(17);
            textView2.setGravity(17);
        } else {
            textView.setGravity(16);
            textView2.setGravity(16);
        }
        requestLayout();
    }

    public void setLabelVisibilityMode(int i) {
        if (this.y != i) {
            this.y = i;
            if (this.p0 && i == 2) {
                this.i0 = D0;
            } else {
                this.i0 = C0;
            }
            j(getWidth());
            ic5 ic5Var = this.d0;
            if (ic5Var != null) {
                setChecked(ic5Var.isChecked());
            }
        }
    }

    public void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        this.y0 = z;
        this.M.setMeasurePaddingFromBaseline(z);
        this.N.setIncludeFontPadding(z);
        this.O.setIncludeFontPadding(z);
        this.P.setMeasurePaddingFromBaseline(z);
        this.Q.setIncludeFontPadding(z);
        this.R.setIncludeFontPadding(z);
        requestLayout();
    }

    @Override // defpackage.dl5
    public void setOnlyShowWhenExpanded(boolean z) {
        this.x0 = z;
        l();
    }

    public void setShifting(boolean z) {
        if (this.G != z) {
            this.G = z;
            ic5 ic5Var = this.d0;
            if (ic5Var != null) {
                setChecked(ic5Var.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(int i) {
        this.U = i;
        k(this.O, i);
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z) {
        this.c0 = z;
        setTextAppearanceActive(this.U);
        setHorizontalTextAppearanceActive(this.W);
        TextView textView = this.O;
        textView.setTypeface(textView.getTypeface(), this.c0 ? 1 : 0);
        TextView textView2 = this.R;
        textView2.setTypeface(textView2.getTypeface(), this.c0 ? 1 : 0);
    }

    public void setTextAppearanceInactive(int i) {
        this.V = i;
        TextView textView = this.N;
        if (textView == null) {
            return;
        }
        h(textView, i);
        b();
        textView.setMinimumHeight(k55.v(textView.getContext(), i));
        ColorStateList colorStateList = this.b0;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.b0 = colorStateList;
        if (colorStateList != null) {
            this.N.setTextColor(colorStateList);
            this.O.setTextColor(colorStateList);
            this.Q.setTextColor(colorStateList);
            this.R.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.N.setText(charSequence);
        this.O.setText(charSequence);
        this.Q.setText(charSequence);
        this.R.setText(charSequence);
        ic5 ic5Var = this.d0;
        if (ic5Var == null || TextUtils.isEmpty(ic5Var.I)) {
            setContentDescription(charSequence);
        }
        ic5 ic5Var2 = this.d0;
        if (ic5Var2 != null && !TextUtils.isEmpty(ic5Var2.J)) {
            charSequence = this.d0.J;
        }
        s88.a(this, charSequence);
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : getContext().getDrawable(i));
    }
}
