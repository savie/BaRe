package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.navigationrail.NavigationRailView;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ol5 extends FrameLayout {
    public final bl5 a;
    public final fl5 b;
    public final hl5 c;
    public ks7 d;
    public ll5 e;
    public kl5 f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v9 */
    public ol5(Context context, AttributeSet attributeSet, int i, int i2) {
        ?? r11;
        super(zm5.J(context, attributeSet, i, i2), attributeSet, i);
        hl5 hl5Var = new hl5();
        hl5Var.b = false;
        this.c = hl5Var;
        Context context2 = getContext();
        u94 u94VarC = jd4.C(context2, attributeSet, td6.L, i, i2, 17, 15);
        boolean z = this instanceof NavigationRailView;
        bl5 bl5Var = new bl5(context2, getClass(), getMaxItemCount(), z);
        this.a = bl5Var;
        fl5 fl5VarA = a(context2);
        this.b = fl5VarA;
        fl5VarA.setMinimumHeight(getSuggestedMinimumHeight());
        fl5VarA.setCollapsedMaxItemCount(getCollapsedMaxItemCount());
        hl5Var.a = fl5VarA;
        hl5Var.c = 1;
        fl5VarA.setPresenter(hl5Var);
        bl5Var.b(hl5Var, bl5Var.a);
        hl5Var.l(getContext(), bl5Var);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        if (typedArray.hasValue(11)) {
            fl5VarA.setIconTintList(u94VarC.a(11));
        } else {
            fl5VarA.setIconTintList(fl5VarA.c());
        }
        setItemIconSize(typedArray.getDimensionPixelSize(10, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (typedArray.hasValue(17)) {
            setItemTextAppearanceInactive(typedArray.getResourceId(17, 0));
        }
        if (typedArray.hasValue(15)) {
            setItemTextAppearanceActive(typedArray.getResourceId(15, 0));
        }
        if (typedArray.hasValue(4)) {
            setHorizontalItemTextAppearanceInactive(typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(3)) {
            setHorizontalItemTextAppearanceActive(typedArray.getResourceId(3, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(typedArray.getBoolean(16, true));
        if (typedArray.hasValue(18)) {
            setItemTextColor(u94VarC.a(18));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListD = du.d(background);
        if (background == null || colorStateListD != null) {
            c95 c95Var = new c95(tb7.h(context2, attributeSet, i, i2).a());
            if (colorStateListD != null) {
                c95Var.t(colorStateListD);
            }
            c95Var.p(context2);
            setBackground(c95Var);
        }
        if (typedArray.hasValue(13)) {
            setItemPaddingTop(typedArray.getDimensionPixelSize(13, 0));
        }
        if (typedArray.hasValue(12)) {
            setItemPaddingBottom(typedArray.getDimensionPixelSize(12, 0));
        }
        if (typedArray.hasValue(0)) {
            setActiveIndicatorLabelPadding(typedArray.getDimensionPixelSize(0, 0));
        }
        if (typedArray.hasValue(5)) {
            setIconLabelHorizontalSpacing(typedArray.getDimensionPixelSize(5, 0));
        }
        if (typedArray.hasValue(2)) {
            setElevation(typedArray.getDimensionPixelSize(2, 0));
        }
        getBackground().mutate().setTintList(k55.l(context2, u94VarC, 1));
        setLabelVisibilityMode(typedArray.getInteger(21, -1));
        setItemIconGravity(typedArray.getInteger(9, 0));
        setItemGravity(typedArray.getInteger(8, 49));
        int resourceId = typedArray.getResourceId(7, 0);
        if (resourceId != 0) {
            fl5VarA.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(k55.l(context2, u94VarC, 14));
        }
        setMeasureBottomPaddingFromLabelBaseline(typedArray.getBoolean(22, true));
        setLabelFontScalingEnabled(typedArray.getBoolean(19, false));
        setLabelMaxLines(typedArray.getInteger(20, 1));
        int resourceId2 = typedArray.getResourceId(6, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, td6.K);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
            setItemActiveIndicatorWidth(dimensionPixelSize);
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(10, 0);
            setItemActiveIndicatorMarginHorizontal(dimensionPixelOffset);
            String string = typedArrayObtainStyledAttributes.getString(9);
            int dimensionPixelSize2 = -2;
            if (string != null) {
                if (String.valueOf(-1).equals(string)) {
                    dimensionPixelSize2 = -1;
                } else if (!String.valueOf(-2).equals(string)) {
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -2);
                }
            }
            setItemActiveIndicatorExpandedWidth(dimensionPixelSize2);
            setItemActiveIndicatorExpandedHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(7, dimensionPixelSize));
            setItemActiveIndicatorExpandedMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(8, dimensionPixelOffset));
            int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.m3_navigation_item_leading_trailing_space);
            int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, dimensionPixelSize3);
            int dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, dimensionPixelSize3);
            int i3 = getLayoutDirection() == 1 ? dimensionPixelOffset3 : dimensionPixelOffset2;
            int dimensionPixelOffset4 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, 0);
            dimensionPixelOffset2 = getLayoutDirection() != 1 ? dimensionPixelOffset3 : dimensionPixelOffset2;
            int dimensionPixelOffset5 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
            Rect rect = fl5VarA.q0;
            rect.left = i3;
            rect.top = dimensionPixelOffset4;
            rect.right = dimensionPixelOffset2;
            rect.bottom = dimensionPixelOffset5;
            dl5[] dl5VarArr = fl5VarA.k;
            if (dl5VarArr != null) {
                for (dl5 dl5Var : dl5VarArr) {
                    if (dl5Var instanceof al5) {
                        ((al5) dl5Var).setActiveIndicatorExpandedPadding(rect);
                    }
                }
            }
            setItemActiveIndicatorColor(k55.m(context2, typedArrayObtainStyledAttributes, 2));
            r11 = 0;
            setItemActiveIndicatorShapeAppearance(tb7.g(context2, typedArrayObtainStyledAttributes.getResourceId(11, 0), 0).a());
            typedArrayObtainStyledAttributes.recycle();
        } else {
            r11 = 0;
        }
        if (typedArray.hasValue(23)) {
            int resourceId3 = typedArray.getResourceId(23, r11);
            hl5 hl5Var2 = this.c;
            hl5Var2.b = true;
            getMenuInflater().inflate(resourceId3, this.a);
            hl5Var2.b = r11;
            hl5Var2.c(true);
        }
        u94VarC.f();
        if (!z) {
            addView(this.b);
        }
        this.a.e = new nh(this, 10);
    }

    private MenuInflater getMenuInflater() {
        if (this.d == null) {
            this.d = new ks7(getContext());
        }
        return this.d;
    }

    private void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        this.b.setMeasurePaddingFromLabelBaseline(z);
    }

    public abstract fl5 a(Context context);

    public final wk0 b(int i) {
        fl5 fl5Var = this.b;
        fl5Var.getClass();
        al5 al5Var = null;
        if (i == -1) {
            x5.f(i, " is not a valid view id");
            return null;
        }
        SparseArray sparseArray = fl5Var.N;
        wk0 wk0Var = (wk0) sparseArray.get(i);
        if (wk0Var == null) {
            wk0 wk0Var2 = new wk0(fl5Var.getContext(), null);
            sparseArray.put(i, wk0Var2);
            wk0Var = wk0Var2;
        }
        if (i == -1) {
            x5.f(i, " is not a valid view id");
            return null;
        }
        dl5[] dl5VarArr = fl5Var.k;
        if (dl5VarArr != null) {
            for (dl5 dl5Var : dl5VarArr) {
                if (dl5Var instanceof al5) {
                    al5 al5Var2 = (al5) dl5Var;
                    if (al5Var2.getId() == i) {
                        al5Var = al5Var2;
                        break;
                    }
                }
            }
        }
        if (al5Var != null) {
            al5Var.setBadge(wk0Var);
        }
        return wk0Var;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.b.getActiveIndicatorLabelPadding();
    }

    public int getCollapsedMaxItemCount() {
        return getMaxItemCount();
    }

    public int getHorizontalItemTextAppearanceActive() {
        return this.b.getHorizontalItemTextAppearanceActive();
    }

    public int getHorizontalItemTextAppearanceInactive() {
        return this.b.getHorizontalItemTextAppearanceInactive();
    }

    public int getIconLabelHorizontalSpacing() {
        return this.b.getIconLabelHorizontalSpacing();
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.b.getItemActiveIndicatorColor();
    }

    public int getItemActiveIndicatorExpandedHeight() {
        return this.b.getItemActiveIndicatorExpandedHeight();
    }

    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        return this.b.getItemActiveIndicatorExpandedMarginHorizontal();
    }

    public int getItemActiveIndicatorExpandedWidth() {
        return this.b.getItemActiveIndicatorExpandedWidth();
    }

    public int getItemActiveIndicatorHeight() {
        return this.b.getItemActiveIndicatorHeight();
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.b.getItemActiveIndicatorMarginHorizontal();
    }

    public tb7 getItemActiveIndicatorShapeAppearance() {
        return this.b.getItemActiveIndicatorShapeAppearance();
    }

    public int getItemActiveIndicatorWidth() {
        return this.b.getItemActiveIndicatorWidth();
    }

    public Drawable getItemBackground() {
        return this.b.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.b.getItemBackgroundRes();
    }

    public int getItemGravity() {
        return this.b.getItemGravity();
    }

    public int getItemIconGravity() {
        return this.b.getItemIconGravity();
    }

    public int getItemIconSize() {
        return this.b.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.b.getIconTintList();
    }

    public int getItemPaddingBottom() {
        return this.b.getItemPaddingBottom();
    }

    public int getItemPaddingTop() {
        return this.b.getItemPaddingTop();
    }

    public ColorStateList getItemRippleColor() {
        return this.b.getItemRippleColor();
    }

    public int getItemTextAppearanceActive() {
        return this.b.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.b.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.b.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.b.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.a;
    }

    public zc5 getMenuView() {
        return this.b;
    }

    public ViewGroup getMenuViewGroup() {
        return this.b;
    }

    public hl5 getPresenter() {
        return this.c;
    }

    public boolean getScaleLabelTextWithFont() {
        return this.b.getScaleLabelTextWithFont();
    }

    public int getSelectedItemId() {
        return this.b.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh8.E(this);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof nl5)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        nl5 nl5Var = (nl5) parcelable;
        super.onRestoreInstanceState(nl5Var.a);
        Bundle bundle = nl5Var.c;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.a.N;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        for (WeakReference weakReference : copyOnWriteArrayList) {
            wc5 wc5Var = (wc5) weakReference.get();
            if (wc5Var == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = wc5Var.getId();
                if (id > 0 && (parcelable2 = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    wc5Var.h(parcelable2);
                }
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableM;
        nl5 nl5Var = new nl5(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        nl5Var.c = bundle;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.a.N;
        if (copyOnWriteArrayList.isEmpty()) {
            return nl5Var;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            wc5 wc5Var = (wc5) weakReference.get();
            if (wc5Var == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = wc5Var.getId();
                if (id > 0 && (parcelableM = wc5Var.m()) != null) {
                    sparseArray.put(id, parcelableM);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        return nl5Var;
    }

    public void setActiveIndicatorLabelPadding(int i) {
        this.b.setActiveIndicatorLabelPadding(i);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        xh8.C(this, f);
    }

    public void setHorizontalItemTextAppearanceActive(int i) {
        this.b.setHorizontalItemTextAppearanceActive(i);
    }

    public void setHorizontalItemTextAppearanceInactive(int i) {
        this.b.setHorizontalItemTextAppearanceInactive(i);
    }

    public void setIconLabelHorizontalSpacing(int i) {
        this.b.setIconLabelHorizontalSpacing(i);
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.b.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.b.setItemActiveIndicatorEnabled(z);
    }

    public void setItemActiveIndicatorExpandedHeight(int i) {
        this.b.setItemActiveIndicatorExpandedHeight(i);
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(int i) {
        this.b.setItemActiveIndicatorExpandedMarginHorizontal(i);
    }

    public void setItemActiveIndicatorExpandedWidth(int i) {
        this.b.setItemActiveIndicatorExpandedWidth(i);
    }

    public void setItemActiveIndicatorHeight(int i) {
        this.b.setItemActiveIndicatorHeight(i);
    }

    public void setItemActiveIndicatorMarginHorizontal(int i) {
        this.b.setItemActiveIndicatorMarginHorizontal(i);
    }

    public void setItemActiveIndicatorShapeAppearance(tb7 tb7Var) {
        this.b.setItemActiveIndicatorShapeAppearance(tb7Var);
    }

    public void setItemActiveIndicatorWidth(int i) {
        this.b.setItemActiveIndicatorWidth(i);
    }

    public void setItemBackground(Drawable drawable) {
        this.b.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i) {
        this.b.setItemBackgroundRes(i);
    }

    public void setItemGravity(int i) {
        fl5 fl5Var = this.b;
        if (fl5Var.getItemGravity() != i) {
            fl5Var.setItemGravity(i);
            this.c.c(false);
        }
    }

    public void setItemIconGravity(int i) {
        fl5 fl5Var = this.b;
        if (fl5Var.getItemIconGravity() != i) {
            fl5Var.setItemIconGravity(i);
            this.c.c(false);
        }
    }

    public void setItemIconSize(int i) {
        this.b.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.b.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(int i) {
        this.b.setItemPaddingBottom(i);
    }

    public void setItemPaddingTop(int i) {
        this.b.setItemPaddingTop(i);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.b.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(int i) {
        this.b.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.b.setItemTextAppearanceActiveBoldEnabled(z);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.b.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.b.setItemTextColor(colorStateList);
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.b.setLabelFontScalingEnabled(z);
    }

    public void setLabelMaxLines(int i) {
        this.b.setLabelMaxLines(i);
    }

    public void setLabelVisibilityMode(int i) {
        fl5 fl5Var = this.b;
        if (fl5Var.getLabelVisibilityMode() != i) {
            fl5Var.setLabelVisibilityMode(i);
            this.c.c(false);
        }
    }

    public void setOnItemReselectedListener(kl5 kl5Var) {
        this.f = kl5Var;
    }

    public void setOnItemSelectedListener(ll5 ll5Var) {
        this.e = ll5Var;
    }

    public void setSelectedItemId(int i) {
        bl5 bl5Var = this.a;
        MenuItem menuItemFindItem = bl5Var.findItem(i);
        if (menuItemFindItem != null) {
            boolean zQ = bl5Var.q(menuItemFindItem, this.c, 0);
            if (menuItemFindItem.isCheckable()) {
                if (!zQ || menuItemFindItem.isChecked()) {
                    this.b.setCheckedItem(menuItemFindItem);
                }
            }
        }
    }
}
