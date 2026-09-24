package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jcraft.jsch.SftpATTRS;
import defpackage.b3;
import defpackage.dl8;
import defpackage.fc5;
import defpackage.g8;
import defpackage.ge6;
import defpackage.iz1;
import defpackage.l0;
import defpackage.lm8;
import defpackage.o8;
import defpackage.s8;
import defpackage.u7;
import defpackage.xm8;
import defpackage.zc5;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {
    public TextView G;
    public TextView H;
    public final int I;
    public final int J;
    public boolean K;
    public final int L;
    public final b3 a;
    public final Context b;
    public ActionMenuView c;
    public o8 d;
    public int e;
    public lm8 f;
    public boolean k;
    public boolean n;
    public CharSequence p;
    public CharSequence q;
    public View r;
    public View t;
    public View x;
    public LinearLayout y;

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        int resourceId;
        super(context, attributeSet, i);
        this.a = new b3(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ge6.d, i, 0);
        setBackground((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : iz1.m(context, resourceId));
        this.I = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED), i2);
        return Math.max(0, i - view.getMeasuredWidth());
    }

    public static int g(int i, int i2, int i3, View view, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public final void c(s8 s8Var) {
        View view = this.r;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.L, (ViewGroup) this, false);
            this.r = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.r);
        }
        View viewFindViewById = this.r.findViewById(R.id.action_mode_close_button);
        this.t = viewFindViewById;
        viewFindViewById.setOnClickListener(new u7(s8Var));
        fc5 fc5VarC = s8Var.c();
        o8 o8Var = this.d;
        if (o8Var != null) {
            o8Var.b();
            g8 g8Var = o8Var.M;
            if (g8Var != null && g8Var.b()) {
                g8Var.j.dismiss();
            }
        }
        o8 o8Var2 = new o8(getContext());
        this.d = o8Var2;
        o8Var2.x = true;
        o8Var2.y = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        fc5VarC.b(this.d, this.b);
        o8 o8Var3 = this.d;
        zc5 zc5Var = o8Var3.n;
        if (zc5Var == null) {
            zc5 zc5Var2 = (zc5) o8Var3.d.inflate(o8Var3.f, (ViewGroup) this, false);
            o8Var3.n = zc5Var2;
            zc5Var2.b(o8Var3.c);
            o8Var3.c(true);
        }
        zc5 zc5Var3 = o8Var3.n;
        if (zc5Var != zc5Var3) {
            ((ActionMenuView) zc5Var3).setPresenter(o8Var3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) zc5Var3;
        this.c = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.c, layoutParams);
    }

    public final void d() {
        if (this.y == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.y = linearLayout;
            this.G = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.H = (TextView) this.y.findViewById(R.id.action_bar_subtitle);
            int i = this.I;
            if (i != 0) {
                this.G.setTextAppearance(getContext(), i);
            }
            int i2 = this.J;
            if (i2 != 0) {
                this.H.setTextAppearance(getContext(), i2);
            }
        }
        this.G.setText(this.p);
        this.H.setText(this.q);
        boolean zIsEmpty = TextUtils.isEmpty(this.p);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.q);
        this.H.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.y.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.y.getParent() == null) {
            addView(this.y);
        }
    }

    public final void e() {
        removeAllViews();
        this.x = null;
        this.c = null;
        this.d = null;
        View view = this.t;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f != null ? this.a.a : getVisibility();
    }

    public int getContentHeight() {
        return this.e;
    }

    public CharSequence getSubtitle() {
        return this.q;
    }

    public CharSequence getTitle() {
        return this.p;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i) {
        if (i != getVisibility()) {
            lm8 lm8Var = this.f;
            if (lm8Var != null) {
                lm8Var.b();
            }
            super.setVisibility(i);
        }
    }

    public final lm8 i(int i, long j) {
        lm8 lm8Var = this.f;
        if (lm8Var != null) {
            lm8Var.b();
        }
        b3 b3Var = this.a;
        if (i != 0) {
            lm8 lm8VarA = dl8.a(this);
            lm8VarA.a(0.0f);
            lm8VarA.c(j);
            ((ActionBarContextView) b3Var.c).f = lm8VarA;
            b3Var.a = i;
            lm8VarA.d(b3Var);
            return lm8VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        lm8 lm8VarA2 = dl8.a(this);
        lm8VarA2.a(1.0f);
        lm8VarA2.c(j);
        ((ActionBarContextView) b3Var.c).f = lm8VarA2;
        b3Var.a = i;
        lm8VarA2.d(b3Var);
        return lm8VarA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, ge6.a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        o8 o8Var = this.d;
        if (o8Var != null) {
            Configuration configuration2 = o8Var.b.getResources().getConfiguration();
            int i2 = configuration2.screenWidthDp;
            int i3 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
                i = 5;
            } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
                i = 4;
            } else {
                i = i2 >= 360 ? 3 : 2;
            }
            o8Var.I = i;
            fc5 fc5Var = o8Var.c;
            if (fc5Var != null) {
                fc5Var.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o8 o8Var = this.d;
        if (o8Var != null) {
            o8Var.b();
            g8 g8Var = this.d.M;
            if (g8Var == null || !g8Var.b()) {
                return;
            }
            g8Var.j.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.n = false;
        }
        if (!this.n) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.n = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.n = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = xm8.a;
        boolean z3 = getLayoutDirection() == 1;
        int paddingRight = z3 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.r;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.r.getLayoutParams();
            int i5 = z3 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = z3 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = z3 ? paddingRight - i5 : paddingRight + i5;
            int iG = g(i7, paddingTop, paddingTop2, this.r, z3) + i7;
            paddingRight = z3 ? iG - i6 : iG + i6;
        }
        LinearLayout linearLayout = this.y;
        if (linearLayout != null && this.x == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(paddingRight, paddingTop, paddingTop2, this.y, z3);
        }
        View view2 = this.x;
        if (view2 != null) {
            g(paddingRight, paddingTop, paddingTop2, view2, z3);
        }
        int paddingLeft = z3 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.c;
        if (actionMenuView != null) {
            g(paddingLeft, paddingTop, paddingTop2, actionMenuView, !z3);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            l0.e(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
            return;
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            l0.e(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        View view = this.r;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.r.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.y;
        if (linearLayout != null && this.x == null) {
            if (this.K) {
                this.y.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.y.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.y.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.x;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i3 = layoutParams.width;
            int i4 = i3 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i3 >= 0) {
                paddingLeft = Math.min(i3, paddingLeft);
            }
            int i5 = layoutParams.height;
            int i6 = i5 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i5 >= 0) {
                iMin = Math.min(i5, iMin);
            }
            this.x.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i4), View.MeasureSpec.makeMeasureSpec(iMin, i6));
        }
        if (this.e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            int measuredHeight = getChildAt(i8).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i7) {
                i7 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i7);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.k = false;
        }
        if (!this.k) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.k = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.k = false;
        return true;
    }

    public void setContentHeight(int i) {
        this.e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.x;
        if (view2 != null) {
            removeView(view2);
        }
        this.x = view;
        if (view != null && (linearLayout = this.y) != null) {
            removeView(linearLayout);
            this.y = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.q = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.p = charSequence;
        d();
        dl8.o(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.K) {
            requestLayout();
        }
        this.K = z;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }
}
