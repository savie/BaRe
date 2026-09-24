package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.dl8;
import defpackage.fc5;
import defpackage.ge6;
import defpackage.h88;
import defpackage.ic5;
import defpackage.iz1;
import defpackage.j88;
import defpackage.k88;
import defpackage.ka;
import defpackage.ks7;
import defpackage.l88;
import defpackage.m88;
import defpackage.mr3;
import defpackage.n88;
import defpackage.nh;
import defpackage.no;
import defpackage.o8;
import defpackage.on;
import defpackage.qq6;
import defpackage.r88;
import defpackage.rb;
import defpackage.rc6;
import defpackage.s79;
import defpackage.s88;
import defpackage.tp;
import defpackage.u94;
import defpackage.vn1;
import defpackage.wd2;
import defpackage.xc5;
import defpackage.xm8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public final int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public qq6 L;
    public int M;
    public int N;
    public final int O;
    public CharSequence P;
    public CharSequence Q;
    public ColorStateList R;
    public ColorStateList S;
    public boolean T;
    public boolean U;
    public final ArrayList V;
    public final ArrayList W;
    public ActionMenuView a;
    public final int[] a0;
    public tp b;
    public final ka b0;
    public tp c;
    public ArrayList c0;
    public no d;
    public m88 d0;
    public AppCompatImageView e;
    public final s79 e0;
    public final Drawable f;
    public r88 f0;
    public o8 g0;
    public k88 h0;
    public rc6 i0;
    public nh j0;
    public final CharSequence k;
    public boolean k0;
    public OnBackInvokedCallback l0;
    public OnBackInvokedDispatcher m0;
    public no n;
    public boolean n0;
    public final on o0;
    public View p;
    public Context q;
    public int r;
    public int t;
    public int x;
    public final int y;

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.O = 8388627;
        this.V = new ArrayList();
        this.W = new ArrayList();
        this.a0 = new int[2];
        this.b0 = new ka(new vn1(this, 7));
        this.c0 = new ArrayList();
        this.e0 = new s79(this, 10);
        this.o0 = new on(this, 2);
        Context context2 = getContext();
        int[] iArr = ge6.x;
        u94 u94VarE = u94.e(i, 0, context2, attributeSet, iArr);
        dl8.m(this, context, iArr, attributeSet, (TypedArray) u94VarE.b, i);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        this.t = typedArray.getResourceId(28, 0);
        this.x = typedArray.getResourceId(19, 0);
        this.O = typedArray.getInteger(0, 8388627);
        this.y = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.K = dimensionPixelOffset;
        this.J = dimensionPixelOffset;
        this.I = dimensionPixelOffset;
        this.H = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.H = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.I = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.J = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.K = dimensionPixelOffset5;
        }
        this.G = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        qq6 qq6Var = this.L;
        qq6Var.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            qq6Var.e = dimensionPixelSize;
            qq6Var.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            qq6Var.f = dimensionPixelSize2;
            qq6Var.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            qq6Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.M = typedArray.getDimensionPixelOffset(10, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        this.N = typedArray.getDimensionPixelOffset(6, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        this.f = u94VarE.b(4);
        this.k = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.q = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableB = u94VarE.b(16);
        if (drawableB != null) {
            setNavigationIcon(drawableB);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableB2 = u94VarE.b(11);
        if (drawableB2 != null) {
            setLogo(drawableB2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(u94VarE.a(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(u94VarE.a(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        u94VarE.f();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new ks7(getContext());
    }

    public static l88 h() {
        l88 l88Var = new l88(-2, -2);
        l88Var.b = 0;
        l88Var.a = 8388627;
        return l88Var;
    }

    public static l88 i(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof l88;
        if (z) {
            l88 l88Var = (l88) layoutParams;
            l88 l88Var2 = new l88(l88Var);
            l88Var2.b = 0;
            l88Var2.b = l88Var.b;
            return l88Var2;
        }
        if (z) {
            l88 l88Var3 = new l88((l88) layoutParams);
            l88Var3.b = 0;
            return l88Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            l88 l88Var4 = new l88(layoutParams);
            l88Var4.b = 0;
            return l88Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        l88 l88Var5 = new l88(marginLayoutParams);
        l88Var5.b = 0;
        ((ViewGroup.MarginLayoutParams) l88Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) l88Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) l88Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) l88Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return l88Var5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                l88 l88Var = (l88) childAt.getLayoutParams();
                if (l88Var.b == 0 && t(childAt)) {
                    int i3 = l88Var.a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            l88 l88Var2 = (l88) childAt2.getLayoutParams();
            if (l88Var2.b == 0 && t(childAt2)) {
                int i5 = l88Var2.a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z) {
        l88 l88VarI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            l88VarI = h();
        } else {
            l88VarI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (l88) layoutParams;
        }
        l88VarI.b = 1;
        if (!z || this.p == null) {
            addView(view, l88VarI);
        } else {
            view.setLayoutParams(l88VarI);
            this.W.add(view);
        }
    }

    public final void c() {
        if (this.n == null) {
            no noVar = new no(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.n = noVar;
            noVar.setImageDrawable(this.f);
            this.n.setContentDescription(this.k);
            l88 l88VarH = h();
            l88VarH.a = (this.y & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) | 8388611;
            l88VarH.b = 2;
            this.n.setLayoutParams(l88VarH);
            this.n.setOnClickListener(new h88(this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof l88);
    }

    public final void d() {
        if (this.L == null) {
            qq6 qq6Var = new qq6();
            qq6Var.a = 0;
            qq6Var.b = 0;
            qq6Var.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            qq6Var.d = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            qq6Var.e = 0;
            qq6Var.f = 0;
            qq6Var.g = false;
            qq6Var.h = false;
            this.L = qq6Var;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView.H == null) {
            fc5 fc5Var = (fc5) actionMenuView.getMenu();
            if (this.h0 == null) {
                this.h0 = new k88(this);
            }
            this.a.setExpandedActionViewsExclusive(true);
            fc5Var.b(this.h0, this.q);
            v();
        }
    }

    public final void f() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.r);
            this.a.setOnMenuItemClickListener(this.e0);
            ActionMenuView actionMenuView2 = this.a;
            rc6 rc6Var = this.i0;
            rb rbVar = new rb(this, 24);
            actionMenuView2.M = rc6Var;
            actionMenuView2.N = rbVar;
            l88 l88VarH = h();
            l88VarH.a = (this.y & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) | 8388613;
            this.a.setLayoutParams(l88VarH);
            b(this.a, false);
        }
    }

    public final void g() {
        if (this.d == null) {
            this.d = new no(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            l88 l88VarH = h();
            l88VarH.a = (this.y & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) | 8388611;
            this.d.setLayoutParams(l88VarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        l88 l88Var = new l88(context, attributeSet);
        l88Var.a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ge6.b);
        l88Var.a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        l88Var.b = 0;
        return l88Var;
    }

    public CharSequence getCollapseContentDescription() {
        no noVar = this.n;
        if (noVar != null) {
            return noVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        no noVar = this.n;
        if (noVar != null) {
            return noVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        qq6 qq6Var = this.L;
        if (qq6Var != null) {
            return qq6Var.g ? qq6Var.a : qq6Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.N;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        qq6 qq6Var = this.L;
        if (qq6Var != null) {
            return qq6Var.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        qq6 qq6Var = this.L;
        if (qq6Var != null) {
            return qq6Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        qq6 qq6Var = this.L;
        if (qq6Var != null) {
            return qq6Var.g ? qq6Var.b : qq6Var.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.M;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        fc5 fc5Var;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (fc5Var = actionMenuView.H) == null || !fc5Var.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.N, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.M, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        no noVar = this.d;
        if (noVar != null) {
            return noVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        no noVar = this.d;
        if (noVar != null) {
            return noVar.getDrawable();
        }
        return null;
    }

    public o8 getOuterActionMenuPresenter() {
        return this.g0;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.q;
    }

    public int getPopupTheme() {
        return this.r;
    }

    public CharSequence getSubtitle() {
        return this.Q;
    }

    public final TextView getSubtitleTextView() {
        return this.c;
    }

    public CharSequence getTitle() {
        return this.P;
    }

    public int getTitleMarginBottom() {
        return this.K;
    }

    public int getTitleMarginEnd() {
        return this.I;
    }

    public int getTitleMarginStart() {
        return this.H;
    }

    public int getTitleMarginTop() {
        return this.J;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    public wd2 getWrapper() {
        if (this.f0 == null) {
            this.f0 = new r88(this, true);
        }
        return this.f0;
    }

    public final int j(View view, int i) {
        l88 l88Var = (l88) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = l88Var.a & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.O & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) l88Var).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) l88Var).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) l88Var).bottomMargin;
            if (i5 < i6) {
                iMax = Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    public final void m() {
        Iterator it = this.c0.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.b0.b).iterator();
        while (it2.hasNext()) {
            ((xc5) it2.next()).c(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.c0 = currentMenuItems2;
    }

    public final boolean n(View view) {
        return view.getParent() == this || this.W.contains(view);
    }

    public final boolean o() {
        o8 o8Var;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (o8Var = actionMenuView.L) == null || !o8Var.k()) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        v();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.o0);
        v();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.U = false;
        }
        if (!this.U) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.U = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.U = false;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x024b  */
    /* JADX WARN: Code duplicated, block: B:102:0x024e  */
    /* JADX WARN: Code duplicated, block: B:103:0x0270  */
    /* JADX WARN: Code duplicated, block: B:105:0x0273  */
    /* JADX WARN: Code duplicated, block: B:108:0x0285 A[LOOP:0: B:107:0x0283->B:108:0x0285, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x029d A[LOOP:1: B:110:0x029b->B:111:0x029d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:114:0x02bd A[LOOP:2: B:113:0x02bb->B:114:0x02bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:118:0x0303 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0305  */
    /* JADX WARN: Code duplicated, block: B:120:0x0309  */
    /* JADX WARN: Code duplicated, block: B:123:0x0310 A[LOOP:3: B:122:0x030e->B:123:0x0310, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x0060  */
    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:29:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:48:0x0115  */
    /* JADX WARN: Code duplicated, block: B:51:0x011b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x011d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0120  */
    /* JADX WARN: Code duplicated, block: B:55:0x0124  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:59:0x0139  */
    /* JADX WARN: Code duplicated, block: B:61:0x0141 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x015a  */
    /* JADX WARN: Code duplicated, block: B:70:0x015e  */
    /* JADX WARN: Code duplicated, block: B:72:0x016f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0171  */
    /* JADX WARN: Code duplicated, block: B:75:0x017d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0189  */
    /* JADX WARN: Code duplicated, block: B:78:0x0193  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:86:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:88:0x01df  */
    /* JADX WARN: Code duplicated, block: B:89:0x0203  */
    /* JADX WARN: Code duplicated, block: B:91:0x0206  */
    /* JADX WARN: Code duplicated, block: B:93:0x020e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x0210  */
    /* JADX WARN: Code duplicated, block: B:96:0x0214  */
    /* JADX WARN: Code duplicated, block: B:99:0x0228  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iP;
        int iQ;
        int iMax;
        int iMin;
        boolean zT;
        boolean zT2;
        int measuredHeight;
        tp tpVar;
        tp tpVar2;
        l88 l88Var;
        l88 l88Var2;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int paddingTop;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int iMax2;
        int i14;
        int i15;
        int i16;
        int i17;
        ArrayList arrayList;
        int size;
        int iP2;
        int i18;
        int size2;
        int i19;
        int i20;
        int size3;
        int i21;
        int i22;
        int measuredWidth;
        int i23;
        int i24;
        int i25;
        int size4;
        AppCompatImageView appCompatImageView;
        View view;
        ActionMenuView actionMenuView;
        no noVar;
        boolean z3 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i26 = width - paddingRight;
        int[] iArr = this.a0;
        iArr[1] = 0;
        iArr[0] = 0;
        WeakHashMap weakHashMap = dl8.a;
        int minimumHeight = getMinimumHeight();
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i4 - i2) : 0;
        if (t(this.d)) {
            no noVar2 = this.d;
            if (z3) {
                iQ = q(noVar2, i26, iMin2, iArr);
                iP = paddingLeft;
            } else {
                iP = p(noVar2, paddingLeft, iMin2, iArr);
            }
            if (t(this.n)) {
                noVar = this.n;
                if (z3) {
                    iQ = q(noVar, iQ, iMin2, iArr);
                } else {
                    iP = p(noVar, iP, iMin2, iArr);
                }
            }
            if (t(this.a)) {
                actionMenuView = this.a;
                if (z3) {
                    iP = p(actionMenuView, iP, iMin2, iArr);
                } else {
                    iQ = q(actionMenuView, iQ, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iP);
            iArr[1] = Math.max(0, currentContentInsetRight - (i26 - iQ));
            iMax = Math.max(iP, currentContentInsetLeft);
            iMin = Math.min(iQ, i26 - currentContentInsetRight);
            if (t(this.p)) {
                view = this.p;
                if (z3) {
                    iMin = q(view, iMin, iMin2, iArr);
                } else {
                    iMax = p(view, iMax, iMin2, iArr);
                }
            }
            if (t(this.e)) {
                appCompatImageView = this.e;
                if (z3) {
                    iMin = q(appCompatImageView, iMin, iMin2, iArr);
                } else {
                    iMax = p(appCompatImageView, iMax, iMin2, iArr);
                }
            }
            zT = t(this.b);
            zT2 = t(this.c);
            if (zT) {
                l88 l88Var3 = (l88) this.b.getLayoutParams();
                measuredHeight = this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) l88Var3).topMargin + ((ViewGroup.MarginLayoutParams) l88Var3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zT2) {
                l88 l88Var4 = (l88) this.c.getLayoutParams();
                measuredHeight = this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) l88Var4).topMargin + ((ViewGroup.MarginLayoutParams) l88Var4).bottomMargin + measuredHeight;
            }
            if (zT || zT2) {
                if (zT) {
                    tpVar = this.b;
                } else {
                    tpVar = this.c;
                }
                if (zT2) {
                    tpVar2 = this.c;
                } else {
                    tpVar2 = this.b;
                }
                l88Var = (l88) tpVar.getLayoutParams();
                l88Var2 = (l88) tpVar2.getLayoutParams();
                i5 = measuredHeight;
                z2 = (!zT && this.b.getMeasuredWidth() > 0) || (zT2 && this.c.getMeasuredWidth() > 0);
                i6 = this.O & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
                i7 = iMax;
                if (i6 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
                } else if (i6 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - i5) / 2;
                    i14 = ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
                    if (iMax2 < i14) {
                        iMax2 = i14;
                    } else {
                        i15 = (((height - paddingBottom) - i5) - iMax2) - paddingTop2;
                        i16 = ((ViewGroup.MarginLayoutParams) l88Var).bottomMargin;
                        i17 = this.K;
                        if (i15 < i16 + i17) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin + i17) - i15));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin) - this.K) - i5;
                }
                if (z3) {
                    if (z2) {
                        i11 = this.H;
                    } else {
                        i11 = 0;
                    }
                    int i27 = i11 - iArr[1];
                    iMin -= Math.max(0, i27);
                    iArr[1] = Math.max(0, -i27);
                    if (zT) {
                        l88 l88Var5 = (l88) this.b.getLayoutParams();
                        int measuredWidth2 = iMin - this.b.getMeasuredWidth();
                        int measuredHeight2 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i12 = measuredWidth2 - this.I;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) l88Var5).bottomMargin;
                    } else {
                        i12 = iMin;
                    }
                    if (zT2) {
                        int i28 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                        this.c.layout(iMin - this.c.getMeasuredWidth(), i28, iMin, this.c.getMeasuredHeight() + i28);
                        i13 = iMin - this.I;
                    } else {
                        i13 = iMin;
                    }
                    if (z2) {
                        iMin = Math.min(i12, i13);
                    }
                    iMax = i7;
                } else {
                    if (z2) {
                        i8 = this.H;
                    } else {
                        i8 = 0;
                    }
                    int i29 = i8 - iArr[0];
                    iMax = Math.max(0, i29) + i7;
                    iArr[0] = Math.max(0, -i29);
                    if (zT) {
                        l88 l88Var6 = (l88) this.b.getLayoutParams();
                        int measuredWidth3 = this.b.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i9 = measuredWidth3 + this.I;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) l88Var6).bottomMargin;
                    } else {
                        i9 = iMax;
                    }
                    if (zT2) {
                        int i30 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.c.getMeasuredWidth() + iMax;
                        this.c.layout(iMax, i30, measuredWidth4, this.c.getMeasuredHeight() + i30);
                        i10 = measuredWidth4 + this.I;
                    } else {
                        i10 = iMax;
                    }
                    if (z2) {
                        iMax = Math.max(i9, i10);
                    }
                }
            }
            arrayList = this.V;
            a(arrayList, 3);
            size = arrayList.size();
            iP2 = iMax;
            for (i18 = 0; i18 < size; i18++) {
                iP2 = p((View) arrayList.get(i18), iP2, iMin2, iArr);
            }
            a(arrayList, 5);
            size2 = arrayList.size();
            for (i19 = 0; i19 < size2; i19++) {
                iMin = q((View) arrayList.get(i19), iMin, iMin2, iArr);
            }
            a(arrayList, 1);
            int i31 = iArr[0];
            i20 = iArr[1];
            size3 = arrayList.size();
            i21 = i31;
            i22 = 0;
            measuredWidth = 0;
            while (i22 < size3) {
                View view2 = (View) arrayList.get(i22);
                l88 l88Var7 = (l88) view2.getLayoutParams();
                int i32 = i20;
                int i33 = ((ViewGroup.MarginLayoutParams) l88Var7).leftMargin - i21;
                int i34 = ((ViewGroup.MarginLayoutParams) l88Var7).rightMargin - i32;
                int iMax3 = Math.max(0, i33);
                int iMax4 = Math.max(0, i34);
                int iMax5 = Math.max(0, -i33);
                int iMax6 = Math.max(0, -i34);
                measuredWidth += view2.getMeasuredWidth() + iMax3 + iMax4;
                i22++;
                i21 = iMax5;
                i20 = iMax6;
            }
            i24 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
            i25 = measuredWidth + i24;
            if (i24 >= iP2) {
                if (i25 > iMin) {
                    iP2 = i24 - (i25 - iMin);
                } else {
                    iP2 = i24;
                }
            }
            size4 = arrayList.size();
            for (i23 = 0; i23 < size4; i23++) {
                iP2 = p((View) arrayList.get(i23), iP2, iMin2, iArr);
            }
            arrayList.clear();
        }
        iP = paddingLeft;
        iQ = i26;
        if (t(this.n)) {
            noVar = this.n;
            if (z3) {
                iQ = q(noVar, iQ, iMin2, iArr);
            } else {
                iP = p(noVar, iP, iMin2, iArr);
            }
        }
        if (t(this.a)) {
            actionMenuView = this.a;
            if (z3) {
                iP = p(actionMenuView, iP, iMin2, iArr);
            } else {
                iQ = q(actionMenuView, iQ, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iP);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i26 - iQ));
        iMax = Math.max(iP, currentContentInsetLeft2);
        iMin = Math.min(iQ, i26 - currentContentInsetRight2);
        if (t(this.p)) {
            view = this.p;
            if (z3) {
                iMin = q(view, iMin, iMin2, iArr);
            } else {
                iMax = p(view, iMax, iMin2, iArr);
            }
        }
        if (t(this.e)) {
            appCompatImageView = this.e;
            if (z3) {
                iMin = q(appCompatImageView, iMin, iMin2, iArr);
            } else {
                iMax = p(appCompatImageView, iMax, iMin2, iArr);
            }
        }
        zT = t(this.b);
        zT2 = t(this.c);
        if (zT) {
            l88 l88Var8 = (l88) this.b.getLayoutParams();
            measuredHeight = this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) l88Var8).topMargin + ((ViewGroup.MarginLayoutParams) l88Var8).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zT2) {
            l88 l88Var9 = (l88) this.c.getLayoutParams();
            measuredHeight = this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) l88Var9).topMargin + ((ViewGroup.MarginLayoutParams) l88Var9).bottomMargin + measuredHeight;
        }
        if (zT) {
            if (zT) {
                tpVar = this.b;
            } else {
                tpVar = this.c;
            }
            if (zT2) {
                tpVar2 = this.c;
            } else {
                tpVar2 = this.b;
            }
            l88Var = (l88) tpVar.getLayoutParams();
            l88Var2 = (l88) tpVar2.getLayoutParams();
            i5 = measuredHeight;
            if (zT) {
            }
            i6 = this.O & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
            i7 = iMax;
            if (i6 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
            } else if (i6 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i5) / 2;
                i14 = ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
                if (iMax2 < i14) {
                    iMax2 = i14;
                } else {
                    i15 = (((height - paddingBottom) - i5) - iMax2) - paddingTop2;
                    i16 = ((ViewGroup.MarginLayoutParams) l88Var).bottomMargin;
                    i17 = this.K;
                    if (i15 < i16 + i17) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin + i17) - i15));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin) - this.K) - i5;
            }
            if (z3) {
                if (z2) {
                    i11 = this.H;
                } else {
                    i11 = 0;
                }
                int i210 = i11 - iArr[1];
                iMin -= Math.max(0, i210);
                iArr[1] = Math.max(0, -i210);
                if (zT) {
                    l88 l88Var10 = (l88) this.b.getLayoutParams();
                    int measuredWidth5 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight4 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i12 = measuredWidth5 - this.I;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) l88Var10).bottomMargin;
                } else {
                    i12 = iMin;
                }
                if (zT2) {
                    int i211 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                    this.c.layout(iMin - this.c.getMeasuredWidth(), i211, iMin, this.c.getMeasuredHeight() + i211);
                    i13 = iMin - this.I;
                } else {
                    i13 = iMin;
                }
                if (z2) {
                    iMin = Math.min(i12, i13);
                }
                iMax = i7;
            } else {
                if (z2) {
                    i8 = this.H;
                } else {
                    i8 = 0;
                }
                int i212 = i8 - iArr[0];
                iMax = Math.max(0, i212) + i7;
                iArr[0] = Math.max(0, -i212);
                if (zT) {
                    l88 l88Var11 = (l88) this.b.getLayoutParams();
                    int measuredWidth6 = this.b.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i9 = measuredWidth6 + this.I;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) l88Var11).bottomMargin;
                } else {
                    i9 = iMax;
                }
                if (zT2) {
                    int i35 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.c.getMeasuredWidth() + iMax;
                    this.c.layout(iMax, i35, measuredWidth7, this.c.getMeasuredHeight() + i35);
                    i10 = measuredWidth7 + this.I;
                } else {
                    i10 = iMax;
                }
                if (z2) {
                    iMax = Math.max(i9, i10);
                }
            }
        } else {
            if (zT) {
                tpVar = this.b;
            } else {
                tpVar = this.c;
            }
            if (zT2) {
                tpVar2 = this.c;
            } else {
                tpVar2 = this.b;
            }
            l88Var = (l88) tpVar.getLayoutParams();
            l88Var2 = (l88) tpVar2.getLayoutParams();
            i5 = measuredHeight;
            if (zT) {
            }
            i6 = this.O & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
            i7 = iMax;
            if (i6 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
            } else if (i6 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i5) / 2;
                i14 = ((ViewGroup.MarginLayoutParams) l88Var).topMargin + this.J;
                if (iMax2 < i14) {
                    iMax2 = i14;
                } else {
                    i15 = (((height - paddingBottom) - i5) - iMax2) - paddingTop2;
                    i16 = ((ViewGroup.MarginLayoutParams) l88Var).bottomMargin;
                    i17 = this.K;
                    if (i15 < i16 + i17) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin + i17) - i15));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) l88Var2).bottomMargin) - this.K) - i5;
            }
            if (z3) {
                if (z2) {
                    i11 = this.H;
                } else {
                    i11 = 0;
                }
                int i213 = i11 - iArr[1];
                iMin -= Math.max(0, i213);
                iArr[1] = Math.max(0, -i213);
                if (zT) {
                    l88 l88Var12 = (l88) this.b.getLayoutParams();
                    int measuredWidth8 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight6 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i12 = measuredWidth8 - this.I;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) l88Var12).bottomMargin;
                } else {
                    i12 = iMin;
                }
                if (zT2) {
                    int i214 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                    this.c.layout(iMin - this.c.getMeasuredWidth(), i214, iMin, this.c.getMeasuredHeight() + i214);
                    i13 = iMin - this.I;
                } else {
                    i13 = iMin;
                }
                if (z2) {
                    iMin = Math.min(i12, i13);
                }
                iMax = i7;
            } else {
                if (z2) {
                    i8 = this.H;
                } else {
                    i8 = 0;
                }
                int i215 = i8 - iArr[0];
                iMax = Math.max(0, i215) + i7;
                iArr[0] = Math.max(0, -i215);
                if (zT) {
                    l88 l88Var13 = (l88) this.b.getLayoutParams();
                    int measuredWidth9 = this.b.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i9 = measuredWidth9 + this.I;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) l88Var13).bottomMargin;
                } else {
                    i9 = iMax;
                }
                if (zT2) {
                    int i36 = paddingTop + ((ViewGroup.MarginLayoutParams) ((l88) this.c.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.c.getMeasuredWidth() + iMax;
                    this.c.layout(iMax, i36, measuredWidth10, this.c.getMeasuredHeight() + i36);
                    i10 = measuredWidth10 + this.I;
                } else {
                    i10 = iMax;
                }
                if (z2) {
                    iMax = Math.max(i9, i10);
                }
            }
        }
        arrayList = this.V;
        a(arrayList, 3);
        size = arrayList.size();
        iP2 = iMax;
        while (i18 < size) {
            iP2 = p((View) arrayList.get(i18), iP2, iMin2, iArr);
        }
        a(arrayList, 5);
        size2 = arrayList.size();
        while (i19 < size2) {
            iMin = q((View) arrayList.get(i19), iMin, iMin2, iArr);
        }
        a(arrayList, 1);
        int i37 = iArr[0];
        i20 = iArr[1];
        size3 = arrayList.size();
        i21 = i37;
        i22 = 0;
        measuredWidth = 0;
        while (i22 < size3) {
            View view3 = (View) arrayList.get(i22);
            l88 l88Var14 = (l88) view3.getLayoutParams();
            int i38 = i20;
            int i39 = ((ViewGroup.MarginLayoutParams) l88Var14).leftMargin - i21;
            int i310 = ((ViewGroup.MarginLayoutParams) l88Var14).rightMargin - i38;
            int iMax7 = Math.max(0, i39);
            int iMax8 = Math.max(0, i310);
            int iMax9 = Math.max(0, -i39);
            int iMax10 = Math.max(0, -i310);
            measuredWidth += view3.getMeasuredWidth() + iMax7 + iMax8;
            i22++;
            i21 = iMax9;
            i20 = iMax10;
        }
        i24 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        i25 = measuredWidth + i24;
        if (i24 >= iP2) {
            if (i25 > iMin) {
                iP2 = i24 - (i25 - iMin);
            } else {
                iP2 = i24;
            }
        }
        size4 = arrayList.size();
        while (i23 < size4) {
            iP2 = p((View) arrayList.get(i23), iP2, iMin2, iArr);
        }
        arrayList.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        char c;
        Object[] objArr;
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iL;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean z = xm8.a;
        int i3 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c = 0;
        } else {
            c = 1;
            objArr = false;
        }
        if (t(this.d)) {
            s(this.d, i, 0, i2, this.G);
            iK = k(this.d) + this.d.getMeasuredWidth();
            iMax = Math.max(0, l(this.d) + this.d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (t(this.n)) {
            s(this.n, i, 0, i2, this.G);
            iK = k(this.n) + this.n.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.n) + this.n.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.n.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        Object[] objArr2 = objArr;
        int[] iArr = this.a0;
        iArr[objArr2 == true ? 1 : 0] = iMax4;
        if (t(this.a)) {
            s(this.a, i, iMax3, i2, this.G);
            iK2 = k(this.a) + this.a.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.a) + this.a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.a.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[c] = Math.max(0, currentContentInsetEnd - iK2);
        if (t(this.p)) {
            iMax5 += r(this.p, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, l(this.p) + this.p.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.p.getMeasuredState());
        }
        if (t(this.e)) {
            iMax5 += r(this.e, i, iMax5, i2, 0, iArr);
            iMax = Math.max(iMax, l(this.e) + this.e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (((l88) childAt.getLayoutParams()).b == 0 && t(childAt)) {
                iMax5 += r(childAt, i, iMax5, i2, 0, iArr);
                int iMax6 = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i5 = iMax5;
        int i6 = this.J + this.K;
        int i7 = this.H + this.I;
        if (t(this.b)) {
            r(this.b, i, i5 + i7, i2, i6, iArr);
            int iK3 = k(this.b) + this.b.getMeasuredWidth();
            iL = l(this.b) + this.b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.b.getMeasuredState());
            iMax2 = iK3;
        } else {
            iL = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (t(this.c)) {
            iMax2 = Math.max(iMax2, r(this.c, i, i5 + i7, i2, i6 + iL, iArr));
            iL += l(this.c) + this.c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.c.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i5 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16);
        if (!this.k0) {
            i3 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i8 = 0; i8 < childCount2; i8++) {
            View childAt2 = getChildAt(i8);
            if (t(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i3 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i3);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof n88)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        n88 n88Var = (n88) parcelable;
        super.onRestoreInstanceState(n88Var.a);
        ActionMenuView actionMenuView = this.a;
        fc5 fc5Var = actionMenuView != null ? actionMenuView.H : null;
        int i = n88Var.c;
        if (i != 0 && this.h0 != null && fc5Var != null && (menuItemFindItem = fc5Var.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (n88Var.d) {
            on onVar = this.o0;
            removeCallbacks(onVar);
            post(onVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        qq6 qq6Var = this.L;
        boolean z = i == 1;
        if (z == qq6Var.g) {
            return;
        }
        qq6Var.g = z;
        if (!qq6Var.h) {
            qq6Var.a = qq6Var.e;
            qq6Var.b = qq6Var.f;
            return;
        }
        if (z) {
            int i2 = qq6Var.d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = qq6Var.e;
            }
            qq6Var.a = i2;
            int i3 = qq6Var.c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = qq6Var.f;
            }
            qq6Var.b = i3;
            return;
        }
        int i4 = qq6Var.c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = qq6Var.e;
        }
        qq6Var.a = i4;
        int i5 = qq6Var.d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = qq6Var.f;
        }
        qq6Var.b = i5;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ic5 ic5Var;
        n88 n88Var = new n88(super.onSaveInstanceState());
        k88 k88Var = this.h0;
        if (k88Var != null && (ic5Var = k88Var.b) != null) {
            n88Var.c = ic5Var.a;
        }
        n88Var.d = o();
        return n88Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.T = false;
        }
        if (!this.T) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.T = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.T = false;
        return true;
    }

    public final int p(View view, int i, int i2, int[] iArr) {
        l88 l88Var = (l88) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) l88Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int iJ = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) l88Var).rightMargin + iMax;
    }

    public final int q(View view, int i, int i2, int[] iArr) {
        l88 l88Var = (l88) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) l88Var).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iJ = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) l88Var).leftMargin);
    }

    public final int r(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void s(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.n0 != z) {
            this.n0 = z;
            v();
        }
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        no noVar = this.n;
        if (noVar != null) {
            noVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.n.setImageDrawable(drawable);
        } else {
            no noVar = this.n;
            if (noVar != null) {
                noVar.setImageDrawable(this.f);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.k0 = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        if (i != this.N) {
            this.N = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        if (i != this.M) {
            this.M = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        AppCompatImageView appCompatImageView = this.e;
        if (drawable != null) {
            if (appCompatImageView == null) {
                this.e = new AppCompatImageView(getContext());
            }
            if (!n(this.e)) {
                b(this.e, true);
            }
        } else if (appCompatImageView != null && n(appCompatImageView)) {
            removeView(this.e);
            this.W.remove(this.e);
        }
        AppCompatImageView appCompatImageView2 = this.e;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.e == null) {
            this.e = new AppCompatImageView(getContext());
        }
        AppCompatImageView appCompatImageView = this.e;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        no noVar = this.d;
        if (noVar != null) {
            noVar.setContentDescription(charSequence);
            s88.a(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.d)) {
                b(this.d, true);
            }
        } else {
            no noVar = this.d;
            if (noVar != null && n(noVar)) {
                removeView(this.d);
                this.W.remove(this.d);
            }
        }
        no noVar2 = this.d;
        if (noVar2 != null) {
            noVar2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(m88 m88Var) {
        this.d0 = m88Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.r != i) {
            this.r = i;
            if (i == 0) {
                this.q = getContext();
            } else {
                this.q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        tp tpVar = this.c;
        if (!zIsEmpty) {
            if (tpVar == null) {
                Context context = getContext();
                tp tpVar2 = new tp(context, null);
                this.c = tpVar2;
                tpVar2.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.x;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.S;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!n(this.c)) {
                b(this.c, true);
            }
        } else if (tpVar != null && n(tpVar)) {
            removeView(this.c);
            this.W.remove(this.c);
        }
        tp tpVar3 = this.c;
        if (tpVar3 != null) {
            tpVar3.setText(charSequence);
        }
        this.Q = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.S = colorStateList;
        tp tpVar = this.c;
        if (tpVar != null) {
            tpVar.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        tp tpVar = this.b;
        if (!zIsEmpty) {
            if (tpVar == null) {
                Context context = getContext();
                tp tpVar2 = new tp(context, null);
                this.b = tpVar2;
                tpVar2.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.t;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.R;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!n(this.b)) {
                b(this.b, true);
            }
        } else if (tpVar != null && n(tpVar)) {
            removeView(this.b);
            this.W.remove(this.b);
        }
        tp tpVar3 = this.b;
        if (tpVar3 != null) {
            tpVar3.setText(charSequence);
        }
        this.P = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.K = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.I = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.H = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.J = i;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.R = colorStateList;
        tp tpVar = this.b;
        if (tpVar != null) {
            tpVar.setTextColor(colorStateList);
        }
    }

    public final boolean t(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final boolean u() {
        o8 o8Var;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (o8Var = actionMenuView.L) == null || !o8Var.n()) ? false : true;
    }

    public final void v() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = j88.a(this);
            k88 k88Var = this.h0;
            boolean z = (k88Var == null || k88Var.b == null || onBackInvokedDispatcherA == null || !isAttachedToWindow() || !this.n0) ? false : true;
            if (z && this.m0 == null) {
                if (this.l0 == null) {
                    this.l0 = j88.b(new mr3(this, 5));
                }
                j88.c(onBackInvokedDispatcherA, this.l0);
                this.m0 = onBackInvokedDispatcherA;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.m0) == null) {
                return;
            }
            j88.d(onBackInvokedDispatcher, this.l0);
            this.m0 = null;
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(iz1.m(getContext(), i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(iz1.m(getContext(), i));
    }

    public void setLogo(int i) {
        setLogo(iz1.m(getContext(), i));
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context) {
        this(context, null);
    }
}
