package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.tabs.TabLayout;
import com.jcraft.jsch.SftpATTRS;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fw7 extends LinearLayout {
    public static final /* synthetic */ int t = 0;
    public cw7 a;
    public TextView b;
    public ImageView c;
    public View d;
    public wk0 e;
    public View f;
    public TextView k;
    public ImageView n;
    public Drawable p;
    public int q;
    public final /* synthetic */ TabLayout r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fw7(TabLayout tabLayout, Context context) {
        super(context);
        this.r = tabLayout;
        this.q = 2;
        d(context);
        setPaddingRelative(tabLayout.e, tabLayout.f, tabLayout.k, tabLayout.n);
        setGravity(17);
        setOrientation(!tabLayout.V ? 1 : 0);
        setClickable(true);
        PointerIcon systemIcon = PointerIcon.getSystemIcon(getContext(), 1002);
        WeakHashMap weakHashMap = dl8.a;
        wk8.a(this, systemIcon);
    }

    private wk0 getBadge() {
        return this.e;
    }

    private wk0 getOrCreateBadge() {
        if (this.e == null) {
            this.e = new wk0(getContext(), null);
        }
        b();
        wk0 wk0Var = this.e;
        if (wk0Var != null) {
            return wk0Var;
        }
        l0.e("Unable to create badge");
        return null;
    }

    public final void a() {
        if (this.e != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.d;
            if (view != null) {
                wk0 wk0Var = this.e;
                if (wk0Var != null) {
                    if (wk0Var.e() != null) {
                        wk0Var.e().setForeground(null);
                    } else {
                        view.getOverlay().remove(wk0Var);
                    }
                }
                this.d = null;
            }
        }
    }

    public final void b() {
        if (this.e != null) {
            if (this.f != null) {
                a();
                return;
            }
            TextView textView = this.b;
            if (textView == null || this.a == null) {
                a();
                return;
            }
            if (this.d == textView) {
                c(textView);
                return;
            }
            a();
            TextView textView2 = this.b;
            if (this.e == null || textView2 == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            wk0 wk0Var = this.e;
            Rect rect = new Rect();
            textView2.getDrawingRect(rect);
            wk0Var.setBounds(rect);
            wk0Var.j(textView2, null);
            if (wk0Var.e() != null) {
                wk0Var.e().setForeground(wk0Var);
            } else {
                textView2.getOverlay().add(wk0Var);
            }
            this.d = textView2;
        }
    }

    public final void c(View view) {
        wk0 wk0Var = this.e;
        if (wk0Var == null || view != this.d) {
            return;
        }
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        wk0Var.setBounds(rect);
        wk0Var.j(view, null);
    }

    public final void d(Context context) {
        Drawable rippleDrawable;
        TabLayout tabLayout = this.r;
        int i = tabLayout.L;
        if (i != 0) {
            Drawable drawableM = iz1.m(context, i);
            this.p = drawableM;
            if (drawableM != null && drawableM.isStateful()) {
                this.p.setState(getDrawableState());
            }
        } else {
            this.p = null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        Drawable focusRingDrawable = gradientDrawable;
        if (tabLayout.y != null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(1.0E-5f);
            gradientDrawable2.setColor(-1);
            ColorStateList colorStateListA = xn6.a(tabLayout.y);
            if (tabLayout.c0) {
                rippleDrawable = new RippleDrawable(colorStateListA, null, null);
                ColorDrawable colorDrawable = FocusRingDrawable.H;
                if (jm1.R(context.getTheme(), R.attr.focusRingsEnabled, false)) {
                    focusRingDrawable = rippleDrawable;
                    focusRingDrawable = new FocusRingDrawable(context, rippleDrawable);
                }
            } else {
                RippleDrawable rippleDrawable2 = new RippleDrawable(colorStateListA, gradientDrawable, gradientDrawable2);
                FocusRingDrawable.f(context, rippleDrawable2, null);
                focusRingDrawable = rippleDrawable2;
            }
        }
        focusRingDrawable = rippleDrawable;
        setBackground(focusRingDrawable);
        tabLayout.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.p;
        if ((drawable == null || !drawable.isStateful()) ? false : this.p.setState(drawableState)) {
            invalidate();
            this.r.invalidate();
        }
    }

    public final void e() {
        int i;
        ViewParent parent;
        cw7 cw7Var = this.a;
        View view = cw7Var != null ? cw7Var.d : null;
        if (view != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(view);
                }
                View view2 = this.f;
                if (view2 != null && (parent = view2.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.f);
                }
                addView(view);
            }
            this.f = view;
            TextView textView = this.b;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.c;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.c.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(android.R.id.text1);
            this.k = textView2;
            if (textView2 != null) {
                this.q = textView2.getMaxLines();
            }
            this.n = (ImageView) view.findViewById(android.R.id.icon);
        } else {
            View view3 = this.f;
            if (view3 != null) {
                removeView(view3);
                this.f = null;
            }
            this.k = null;
            this.n = null;
        }
        if (this.f == null) {
            if (this.c == null) {
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                this.c = imageView2;
                addView(imageView2, 0);
            }
            if (this.b == null) {
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                this.b = textView3;
                addView(textView3);
                this.q = this.b.getMaxLines();
            }
            TextView textView4 = this.b;
            TabLayout tabLayout = this.r;
            textView4.setTextAppearance(tabLayout.p);
            if (!isSelected() || (i = tabLayout.r) == -1) {
                this.b.setTextAppearance(tabLayout.q);
            } else {
                this.b.setTextAppearance(i);
            }
            ColorStateList colorStateList = tabLayout.t;
            if (colorStateList != null) {
                this.b.setTextColor(colorStateList);
            }
            f(this.b, this.c, true);
            b();
            ImageView imageView3 = this.c;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new ew7(this, imageView3));
            }
            TextView textView5 = this.b;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new ew7(this, textView5));
            }
        } else {
            TextView textView6 = this.k;
            if (textView6 != null || this.n != null) {
                f(textView6, this.n, false);
            }
        }
        if (cw7Var == null || TextUtils.isEmpty(null)) {
            return;
        }
        setContentDescription(null);
    }

    public final void f(TextView textView, ImageView imageView, boolean z) {
        boolean z2;
        cw7 cw7Var = this.a;
        CharSequence charSequence = cw7Var != null ? cw7Var.b : null;
        if (imageView != null) {
            imageView.setVisibility(8);
            imageView.setImageDrawable(null);
        }
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        if (textView != null) {
            if (zIsEmpty) {
                z2 = false;
            } else {
                this.a.getClass();
                z2 = true;
            }
            textView.setText(!zIsEmpty ? charSequence : null);
            textView.setVisibility(z2 ? 0 : 8);
            if (!zIsEmpty) {
                setVisibility(0);
            }
        } else {
            z2 = false;
        }
        if (z && imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int iM = (z2 && imageView.getVisibility() == 0) ? (int) yc9.m(getContext(), 8) : 0;
            if (this.r.V) {
                if (iM != marginLayoutParams.getMarginEnd()) {
                    marginLayoutParams.setMarginEnd(iM);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iM != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iM;
                marginLayoutParams.setMarginEnd(0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        s88.a(this, zIsEmpty ? null : charSequence);
    }

    public int getContentHeight() {
        View[] viewArr = {this.b, this.c, this.f};
        int iMax = 0;
        int iMin = 0;
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            View view = viewArr[i];
            if (view != null && view.getVisibility() == 0) {
                iMin = z ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z = true;
            }
        }
        return iMax - iMin;
    }

    public int getContentWidth() {
        View[] viewArr = {this.b, this.c, this.f};
        int iMax = 0;
        int iMin = 0;
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            View view = viewArr[i];
            if (view != null && view.getVisibility() == 0) {
                iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                z = true;
            }
        }
        return iMax - iMin;
    }

    public cw7 getTab() {
        return this.a;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        wk0 wk0Var = this.e;
        if (wk0Var != null && wk0Var.isVisible()) {
            accessibilityNodeInfo.setContentDescription(this.e.d());
        }
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) om5.e(isSelected(), 0, 1, this.a.c, 1).a);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) g6.g.a);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R.string.item_view_role_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        TabLayout tabLayout = this.r;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i = View.MeasureSpec.makeMeasureSpec(tabLayout.M, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
        super.onMeasure(i, i2);
        if (this.b != null) {
            float f = tabLayout.I;
            if (isSelected() && tabLayout.r != -1) {
                f = tabLayout.J;
            }
            int i3 = this.q;
            ImageView imageView = this.c;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.b;
                if (textView != null && textView.getLineCount() > 1) {
                    f = tabLayout.K;
                }
            } else {
                i3 = 1;
            }
            float textSize = this.b.getTextSize();
            int lineCount = this.b.getLineCount();
            int maxLines = this.b.getMaxLines();
            if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                if (tabLayout.U == 1 && f > textSize && lineCount == 1) {
                    Layout layout = this.b.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.b.setTextSize(0, f);
                this.b.setMaxLines(i3);
                super.onMeasure(i, i2);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.a == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        cw7 cw7Var = this.a;
        TabLayout tabLayout = cw7Var.e;
        if (tabLayout != null) {
            tabLayout.k(cw7Var, true);
            return true;
        }
        c6.f("Tab not attached to a TabLayout");
        return false;
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        isSelected();
        super.setSelected(z);
        TextView textView = this.b;
        if (textView != null) {
            textView.setSelected(z);
        }
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setSelected(z);
        }
        View view = this.f;
        if (view != null) {
            view.setSelected(z);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    public void setTab(cw7 cw7Var) {
        boolean z;
        if (cw7Var != this.a) {
            this.a = cw7Var;
            e();
            cw7 cw7Var2 = this.a;
            if (cw7Var2 == null) {
                z = false;
            } else {
                TabLayout tabLayout = cw7Var2.e;
                if (tabLayout == null) {
                    c6.f("Tab not attached to a TabLayout");
                    return;
                }
                int selectedTabPosition = tabLayout.getSelectedTabPosition();
                if (selectedTabPosition == -1 || selectedTabPosition != cw7Var2.c) {
                    z = false;
                } else {
                    z = true;
                }
            }
            setSelected(z);
        }
    }
}
