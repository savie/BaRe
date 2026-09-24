package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fl5 extends ViewGroup implements zc5 {
    public static final int[] r0 = {R.attr.state_checked};
    public static final int[] s0 = {-16842910};
    public int G;
    public int H;
    public int I;
    public boolean J;
    public Drawable K;
    public ColorStateList L;
    public int M;
    public final SparseArray N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public int T;
    public int U;
    public int V;
    public int W;
    public final pb0 a;
    public int a0;
    public final el5 b;
    public int b0;
    public f36 c;
    public int c0;
    public final SparseArray d;
    public tb7 d0;
    public int e;
    public boolean e0;
    public int f;
    public ColorStateList f0;
    public hl5 g0;
    public cl5 h0;
    public boolean i0;
    public boolean j0;
    public dl5[] k;
    public int k0;
    public int l0;
    public boolean m0;
    public int n;
    public MenuItem n0;
    public int o0;
    public int p;
    public boolean p0;
    public ColorStateList q;
    public final Rect q0;
    public int r;
    public ColorStateList t;
    public final ColorStateList x;
    public int y;

    public fl5(Context context) {
        super(context);
        this.d = new SparseArray();
        this.n = -1;
        this.p = -1;
        this.N = new SparseArray();
        this.O = -1;
        this.P = -1;
        this.Q = -1;
        this.R = -1;
        this.c0 = 49;
        this.e0 = false;
        this.k0 = 1;
        this.l0 = 0;
        this.n0 = null;
        this.o0 = 7;
        this.p0 = false;
        this.q0 = new Rect();
        this.x = c();
        if (isInEditMode()) {
            this.a = null;
        } else {
            pb0 pb0Var = new pb0();
            this.a = pb0Var;
            pb0Var.R(0);
            pb0Var.p();
            pb0Var.G(ji8.F(getContext(), org.swiftapps.swiftbackup.R.attr.motionDurationMedium4, getResources().getInteger(org.swiftapps.swiftbackup.R.integer.material_motion_duration_long_1)));
            pb0Var.I(ji8.G(getContext(), org.swiftapps.swiftbackup.R.attr.motionEasingStandard, ed.b));
            pb0Var.O(new u18());
        }
        this.b = new el5(this);
        setImportantForAccessibility(1);
    }

    public static boolean g(int i, int i2) {
        if (i == -1) {
            return i2 > 3;
        }
        return i == 0;
    }

    private int getCollapsedVisibleItemCount() {
        return Math.min(this.o0, this.h0.e);
    }

    private al5 getNewItem() {
        f36 f36Var = this.c;
        al5 al5Var = f36Var != null ? (al5) f36Var.d() : null;
        return al5Var == null ? f(getContext()) : al5Var;
    }

    private void setBadgeIfNeeded(al5 al5Var) {
        wk0 wk0Var;
        int id = al5Var.getId();
        if (id == -1 || (wk0Var = (wk0) this.N.get(id)) == null) {
            return;
        }
        al5Var.setBadge(wk0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        al5 al5VarE;
        View viewE;
        wk5 wk5Var;
        removeAllViews();
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null && this.c != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    al5 al5Var = (al5) dl5Var;
                    this.c.c(al5Var);
                    ImageView imageView = al5Var.L;
                    if (al5Var.s0 != null) {
                        if (imageView != null) {
                            al5Var.setClipChildren(true);
                            al5Var.setClipToPadding(true);
                            wk0 wk0Var = al5Var.s0;
                            if (wk0Var != null) {
                                if (wk0Var.e() != null) {
                                    wk0Var.e().setForeground(null);
                                } else {
                                    imageView.getOverlay().remove(wk0Var);
                                }
                            }
                        }
                        al5Var.s0 = null;
                    }
                    al5Var.d0 = null;
                    al5Var.j0 = 0.0f;
                    al5Var.a = false;
                }
            }
        }
        this.g0.b = true;
        this.h0.b();
        this.g0.b = false;
        int i = this.h0.c;
        if (i == 0) {
            this.n = 0;
            this.p = 0;
            this.k = null;
            this.c = null;
            return;
        }
        if (this.c == null || this.l0 != i) {
            this.l0 = i;
            this.c = new f36(i);
        }
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < this.h0.b.size(); i2++) {
            hashSet.add(Integer.valueOf(this.h0.a(i2).getItemId()));
        }
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = this.N;
            if (i3 >= sparseArray.size()) {
                break;
            }
            int iKeyAt = sparseArray.keyAt(i3);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                sparseArray.delete(iKeyAt);
            }
            i3++;
        }
        int size = this.h0.b.size();
        this.k = new dl5[size];
        boolean zG = g(this.e, getCurrentVisibleContentItemCount());
        int size2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            MenuItem menuItemA = this.h0.a(i5);
            boolean z = menuItemA instanceof nn2;
            if (z) {
                Context context = getContext();
                wk5Var = new wk5(context);
                LayoutInflater.from(context).inflate(org.swiftapps.swiftbackup.R.layout.m3_navigation_menu_divider, (ViewGroup) wk5Var, true);
                wk5Var.b();
                wk5Var.setOnlyShowWhenExpanded(true);
                wk5Var.setDividersEnabled(this.p0);
            } else if (menuItemA.hasSubMenu()) {
                if (size2 > 0) {
                    c6.f("Only one layer of submenu is supported; a submenu inside a submenu is not supported by the Navigation Bar.");
                    return;
                }
                jl5 jl5Var = new jl5(getContext());
                int i6 = this.I;
                if (i6 == 0) {
                    i6 = this.G;
                }
                jl5Var.setTextAppearance(i6);
                jl5Var.setTextColor(this.t);
                jl5Var.setOnlyShowWhenExpanded(true);
                jl5Var.a((ic5) menuItemA);
                size2 = menuItemA.getSubMenu().size();
                viewE = jl5Var;
            } else if (size2 > 0) {
                al5VarE = e(i5, (ic5) menuItemA, zG, true);
                size2--;
            } else {
                ic5 ic5Var = (ic5) menuItemA;
                boolean z2 = i4 >= this.o0;
                i4++;
                viewE = e(i5, ic5Var, zG, z2);
            }
            if (z) {
                viewE = al5VarE;
                viewE = wk5Var;
            } else {
                viewE = al5VarE;
                if (menuItemA.isCheckable() && this.p == -1) {
                    viewE = wk5Var;
                    this.p = i5;
                } else {
                    viewE = wk5Var;
                }
            }
            this.k[i5] = viewE;
            addView(viewE);
        }
        int iMin = Math.min(size - 1, this.p);
        this.p = iMin;
        setCheckedItem(this.k[iMin].getItemData());
    }

    @Override // defpackage.zc5
    public final void b(fc5 fc5Var) {
        this.h0 = new cl5(fc5Var);
    }

    public final ColorStateList c() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.textColorSecondary, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListQ = zh8.q(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(org.swiftapps.swiftbackup.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i = typedValue.data;
        int defaultColor = colorStateListQ.getDefaultColor();
        int[] iArr = r0;
        int[] iArr2 = ViewGroup.EMPTY_STATE_SET;
        int[] iArr3 = s0;
        return new ColorStateList(new int[][]{iArr3, iArr, iArr2}, new int[]{colorStateListQ.getColorForState(iArr3, defaultColor), i, defaultColor});
    }

    public final c95 d() {
        if (this.d0 == null || this.f0 == null) {
            return null;
        }
        c95 c95Var = new c95(this.d0);
        c95Var.t(this.f0);
        return c95Var;
    }

    public final al5 e(int i, ic5 ic5Var, boolean z, boolean z2) {
        this.g0.b = true;
        ic5Var.setCheckable(true);
        this.g0.b = false;
        al5 newItem = getNewItem();
        newItem.setShifting(z);
        newItem.setLabelMaxLines(this.k0);
        newItem.setIconTintList(this.q);
        newItem.setIconSize(this.r);
        newItem.setTextColor(this.x);
        newItem.setTextAppearanceInactive(this.y);
        newItem.setTextAppearanceActive(this.G);
        newItem.setHorizontalTextAppearanceInactive(this.H);
        newItem.setHorizontalTextAppearanceActive(this.I);
        newItem.setTextAppearanceActiveBoldEnabled(this.J);
        newItem.setTextColor(this.t);
        int i2 = this.O;
        if (i2 != -1) {
            newItem.setItemPaddingTop(i2);
        }
        int i3 = this.P;
        if (i3 != -1) {
            newItem.setItemPaddingBottom(i3);
        }
        newItem.setMeasureBottomPaddingFromLabelBaseline(this.i0);
        newItem.setLabelFontScalingEnabled(this.j0);
        int i4 = this.Q;
        if (i4 != -1) {
            newItem.setActiveIndicatorLabelPadding(i4);
        }
        int i5 = this.R;
        if (i5 != -1) {
            newItem.setIconLabelHorizontalSpacing(i5);
        }
        newItem.setActiveIndicatorWidth(this.T);
        newItem.setActiveIndicatorHeight(this.U);
        newItem.setActiveIndicatorExpandedWidth(this.V);
        newItem.setActiveIndicatorExpandedHeight(this.W);
        newItem.setActiveIndicatorMarginHorizontal(this.a0);
        newItem.setItemGravity(this.c0);
        newItem.setActiveIndicatorExpandedPadding(this.q0);
        newItem.setActiveIndicatorExpandedMarginHorizontal(this.b0);
        newItem.setActiveIndicatorDrawable(d());
        newItem.setActiveIndicatorResizeable(this.e0);
        newItem.setActiveIndicatorEnabled(this.S);
        Drawable drawable = this.K;
        if (drawable != null) {
            newItem.setItemBackground(drawable);
        } else {
            newItem.setItemBackground(this.M);
        }
        newItem.setItemRippleColor(this.L);
        newItem.setLabelVisibilityMode(this.e);
        newItem.setItemIconGravity(this.f);
        newItem.setOnlyShowWhenExpanded(z2);
        newItem.setExpanded(this.m0);
        newItem.a(ic5Var);
        newItem.setItemPosition(i);
        int i6 = ic5Var.a;
        newItem.setOnTouchListener((View.OnTouchListener) this.d.get(i6));
        newItem.setOnClickListener(this.b);
        int i7 = this.n;
        if (i7 != 0 && i6 == i7) {
            this.p = i;
        }
        setBadgeIfNeeded(newItem);
        return newItem;
    }

    public abstract al5 f(Context context);

    public int getActiveIndicatorLabelPadding() {
        return this.Q;
    }

    public SparseArray<wk0> getBadgeDrawables() {
        return this.N;
    }

    public int getCurrentVisibleContentItemCount() {
        return this.m0 ? this.h0.d : getCollapsedVisibleItemCount();
    }

    public int getHorizontalItemTextAppearanceActive() {
        return this.I;
    }

    public int getHorizontalItemTextAppearanceInactive() {
        return this.H;
    }

    public int getIconLabelHorizontalSpacing() {
        return this.R;
    }

    public ColorStateList getIconTintList() {
        return this.q;
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.f0;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.S;
    }

    public int getItemActiveIndicatorExpandedHeight() {
        return this.W;
    }

    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        return this.b0;
    }

    public int getItemActiveIndicatorExpandedWidth() {
        return this.V;
    }

    public int getItemActiveIndicatorHeight() {
        return this.U;
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.a0;
    }

    public tb7 getItemActiveIndicatorShapeAppearance() {
        return this.d0;
    }

    public int getItemActiveIndicatorWidth() {
        return this.T;
    }

    public Drawable getItemBackground() {
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null && dl5VarArr.length > 0) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    return ((al5) dl5Var).getBackground();
                }
            }
        }
        return this.K;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.M;
    }

    public int getItemGravity() {
        return this.c0;
    }

    public int getItemIconGravity() {
        return this.f;
    }

    public int getItemIconSize() {
        return this.r;
    }

    public int getItemPaddingBottom() {
        return this.P;
    }

    public int getItemPaddingTop() {
        return this.O;
    }

    public ColorStateList getItemRippleColor() {
        return this.L;
    }

    public int getItemTextAppearanceActive() {
        return this.G;
    }

    public int getItemTextAppearanceInactive() {
        return this.y;
    }

    public ColorStateList getItemTextColor() {
        return this.t;
    }

    public int getLabelMaxLines() {
        return this.k0;
    }

    public int getLabelVisibilityMode() {
        return this.e;
    }

    public cl5 getMenu() {
        return this.h0;
    }

    public boolean getScaleLabelTextWithFont() {
        return this.j0;
    }

    public int getSelectedItemId() {
        return this.n;
    }

    public int getSelectedItemPosition() {
        return this.p;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getCurrentVisibleContentItemCount(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(int i) {
        this.Q = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorLabelPadding(i);
                }
            }
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        if (this.n0 == menuItem || !menuItem.isCheckable()) {
            return;
        }
        MenuItem menuItem2 = this.n0;
        if (menuItem2 != null && menuItem2.isChecked()) {
            this.n0.setChecked(false);
        }
        menuItem.setChecked(true);
        this.n0 = menuItem;
    }

    public void setCollapsedMaxItemCount(int i) {
        this.o0 = i;
    }

    public void setExpanded(boolean z) {
        this.m0 = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                dl5Var.setExpanded(z);
            }
        }
    }

    public void setHorizontalItemTextAppearanceActive(int i) {
        this.I = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setHorizontalTextAppearanceActive(i);
                }
            }
        }
    }

    public void setHorizontalItemTextAppearanceInactive(int i) {
        this.H = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setHorizontalTextAppearanceInactive(i);
                }
            }
        }
    }

    public void setIconLabelHorizontalSpacing(int i) {
        this.R = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setIconLabelHorizontalSpacing(i);
                }
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.q = colorStateList;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setIconTintList(colorStateList);
                }
            }
        }
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.f0 = colorStateList;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorDrawable(d());
                }
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.S = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorEnabled(z);
                }
            }
        }
    }

    public void setItemActiveIndicatorExpandedHeight(int i) {
        this.W = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorExpandedHeight(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(int i) {
        this.b0 = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorExpandedMarginHorizontal(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorExpandedWidth(int i) {
        this.V = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorExpandedWidth(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorHeight(int i) {
        this.U = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorHeight(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(int i) {
        this.a0 = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorMarginHorizontal(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorResizeable(boolean z) {
        this.e0 = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorResizeable(z);
                }
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(tb7 tb7Var) {
        this.d0 = tb7Var;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorDrawable(d());
                }
            }
        }
    }

    public void setItemActiveIndicatorWidth(int i) {
        this.T = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setActiveIndicatorWidth(i);
                }
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.K = drawable;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemBackground(drawable);
                }
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.M = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemBackground(i);
                }
            }
        }
    }

    public void setItemGravity(int i) {
        this.c0 = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemGravity(i);
                }
            }
        }
    }

    public void setItemIconGravity(int i) {
        this.f = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemIconGravity(i);
                }
            }
        }
    }

    public void setItemIconSize(int i) {
        this.r = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setIconSize(i);
                }
            }
        }
    }

    public void setItemPaddingBottom(int i) {
        this.P = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemPaddingBottom(this.P);
                }
            }
        }
    }

    public void setItemPaddingTop(int i) {
        this.O = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemPaddingTop(i);
                }
            }
        }
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.L = colorStateList;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setItemRippleColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.G = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setTextAppearanceActive(i);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.J = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setTextAppearanceActiveBoldEnabled(z);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        this.y = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setTextAppearanceInactive(i);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.t = colorStateList;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setTextColor(colorStateList);
                }
            }
        }
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.j0 = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setLabelFontScalingEnabled(z);
                }
            }
        }
    }

    public void setLabelMaxLines(int i) {
        this.k0 = i;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setLabelMaxLines(i);
                }
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.e = i;
    }

    public void setMeasurePaddingFromLabelBaseline(boolean z) {
        this.i0 = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    ((al5) dl5Var).setMeasureBottomPaddingFromLabelBaseline(z);
                }
            }
        }
    }

    public void setPresenter(hl5 hl5Var) {
        this.g0 = hl5Var;
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.p0 == z) {
            return;
        }
        this.p0 = z;
        dl5[] dl5VarArr = this.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof wk5) {
                    ((wk5) dl5Var).setDividersEnabled(z);
                }
            }
        }
    }
}
