package org.swiftapps.swiftbackup.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppItemContentLayout extends ViewGroup {
    public View a;
    public View b;
    public View c;
    public View d;
    public View e;
    public View f;
    public View k;
    public View n;
    public View p;
    public View q;
    public final int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppItemContentLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.r = getResources().getDimensionPixelSize(R.dimen.spacing_normal);
    }

    public static ViewGroup.MarginLayoutParams d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        return (ViewGroup.MarginLayoutParams) layoutParams;
    }

    public static int g(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int measuredHeight = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.getClass();
        return measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
    }

    public static int h(View view, int i) {
        if (view.getVisibility() == 8) {
            return i;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int measuredHeight = view.getMeasuredHeight() + i + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.getClass();
        return measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
    }

    public static int i(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int measuredWidth = view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.getClass();
        return ((ViewGroup.MarginLayoutParams) layoutParams2).getMarginEnd() + measuredWidth;
    }

    public final int a() {
        View view = this.k;
        if (view == null) {
            pe4.F("icon");
            throw null;
        }
        if (view.getVisibility() == 8) {
            return 0;
        }
        View view2 = this.k;
        if (view2 == null) {
            pe4.F("icon");
            throw null;
        }
        int marginStart = d(view2).getMarginStart();
        View view3 = this.k;
        if (view3 == null) {
            pe4.F("icon");
            throw null;
        }
        int measuredWidth = view3.getMeasuredWidth() + marginStart;
        View view4 = this.k;
        if (view4 != null) {
            return d(view4).getMarginEnd() + measuredWidth;
        }
        pe4.F("icon");
        throw null;
    }

    public final void b(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return;
        }
        if (getLayoutDirection() == 1) {
            i = (getMeasuredWidth() - i) - view.getMeasuredWidth();
        }
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    public final int c(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return i2;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int i3 = i2 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        b(view, getPaddingStart() + i, i3);
        int measuredHeight = view.getMeasuredHeight() + i3;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.getClass();
        return measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.getClass();
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    public final int e(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        measureChildWithMargins(view, i, 0, i2, 0);
        return view.getMeasuredState();
    }

    public final int f(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int i3 = paddingBottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        layoutParams2.getClass();
        int i4 = i3 + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
        ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
        layoutParams3.getClass();
        view.measure(iMakeMeasureSpec, ViewGroup.getChildMeasureSpec(i2, i4, ((ViewGroup.MarginLayoutParams) layoutParams3).height));
        return view.getMeasuredState();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        attributeSet.getClass();
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.tv_subtitle1);
        viewFindViewById.getClass();
        this.a = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.tv_title);
        viewFindViewById2.getClass();
        this.b = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.tv_subtitle2);
        viewFindViewById3.getClass();
        this.c = viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.tv_subtitle3);
        viewFindViewById4.getClass();
        this.d = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.rv_labels);
        viewFindViewById5.getClass();
        this.e = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.cb);
        viewFindViewById6.getClass();
        this.f = viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.image_icon);
        viewFindViewById7.getClass();
        this.k = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.iv_favorite);
        viewFindViewById8.getClass();
        this.n = viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.iv_menu);
        viewFindViewById9.getClass();
        this.p = viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.iv_menu_click_listener);
        viewFindViewById10.getClass();
        this.q = viewFindViewById10;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int marginStart;
        int measuredWidth = (getMeasuredWidth() - getPaddingStart()) - getPaddingEnd();
        View view = this.k;
        if (view == null) {
            pe4.F("icon");
            throw null;
        }
        int marginStart2 = d(view).getMarginStart();
        int paddingTop = getPaddingTop();
        View view2 = this.a;
        if (view2 == null) {
            pe4.F("subtitle1");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        layoutParams.getClass();
        int i5 = paddingTop + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        View view3 = this.k;
        if (view3 == null) {
            pe4.F("icon");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams2 = view3.getLayoutParams();
        layoutParams2.getClass();
        int i6 = i5 + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
        View view4 = this.k;
        if (view4 == null) {
            pe4.F("icon");
            throw null;
        }
        b(view4, marginStart2, i6);
        View view5 = this.n;
        if (view5 == null) {
            pe4.F("favorite");
            throw null;
        }
        if (view5.getVisibility() != 8) {
            View view6 = this.k;
            if (view6 == null) {
                pe4.F("icon");
                throw null;
            }
            if (view6.getVisibility() != 8) {
                View view7 = this.k;
                if (view7 == null) {
                    pe4.F("icon");
                    throw null;
                }
                int measuredWidth2 = view7.getMeasuredWidth();
                View view8 = this.n;
                if (view8 == null) {
                    pe4.F("favorite");
                    throw null;
                }
                int measuredWidth3 = ((measuredWidth2 - view8.getMeasuredWidth()) / 2) + marginStart2;
                View view9 = this.k;
                if (view9 == null) {
                    pe4.F("icon");
                    throw null;
                }
                int measuredHeight = view9.getMeasuredHeight() + i6;
                View view10 = this.n;
                if (view10 == null) {
                    pe4.F("favorite");
                    throw null;
                }
                int measuredHeight2 = measuredHeight - view10.getMeasuredHeight();
                View view11 = this.n;
                if (view11 == null) {
                    pe4.F("favorite");
                    throw null;
                }
                b(view11, measuredWidth3, measuredHeight2);
            }
        }
        View view12 = this.k;
        if (view12 == null) {
            pe4.F("icon");
            throw null;
        }
        if (view12.getVisibility() != 8) {
            View view13 = this.b;
            if (view13 == null) {
                pe4.F("title");
                throw null;
            }
            marginStart = d(view13).getMarginStart();
        } else {
            marginStart = 0;
        }
        int iA = a() + marginStart;
        int paddingTop2 = getPaddingTop();
        View view14 = this.a;
        if (view14 == null) {
            pe4.F("subtitle1");
            throw null;
        }
        int iC = c(view14, iA, paddingTop2);
        View view15 = this.b;
        if (view15 == null) {
            pe4.F("title");
            throw null;
        }
        int iC2 = c(view15, iA, iC);
        View view16 = this.c;
        if (view16 == null) {
            pe4.F("subtitle2");
            throw null;
        }
        int iC3 = c(view16, iA, iC2);
        View view17 = this.d;
        if (view17 == null) {
            pe4.F("subtitle3");
            throw null;
        }
        int iC4 = c(view17, iA, iC3);
        View view18 = this.e;
        if (view18 == null) {
            pe4.F("labels");
            throw null;
        }
        c(view18, iA, iC4);
        int measuredHeight3 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) / 2) + getPaddingTop();
        int paddingStart = getPaddingStart() + measuredWidth;
        View view19 = this.q;
        if (view19 == null) {
            pe4.F("menuClickListener");
            throw null;
        }
        int i7 = i(view19);
        View view20 = this.q;
        if (view20 == null) {
            pe4.F("menuClickListener");
            throw null;
        }
        if (view20.getVisibility() != 8) {
            View view21 = this.q;
            if (view21 == null) {
                pe4.F("menuClickListener");
                throw null;
            }
            int marginStart3 = d(view21).getMarginStart() + (paddingStart - i7);
            View view22 = this.q;
            if (view22 == null) {
                pe4.F("menuClickListener");
                throw null;
            }
            b(view21, marginStart3, measuredHeight3 - (view22.getMeasuredHeight() / 2));
        }
        View view23 = this.p;
        if (view23 == null) {
            pe4.F("menu");
            throw null;
        }
        if (view23.getVisibility() != 8) {
            View view24 = this.p;
            if (view24 == null) {
                pe4.F("menu");
                throw null;
            }
            int marginEnd = paddingStart - d(view24).getMarginEnd();
            View view25 = this.p;
            if (view25 == null) {
                pe4.F("menu");
                throw null;
            }
            int measuredWidth4 = marginEnd - view25.getMeasuredWidth();
            View view26 = this.p;
            if (view26 == null) {
                pe4.F("menu");
                throw null;
            }
            b(view24, measuredWidth4, measuredHeight3 - (view26.getMeasuredHeight() / 2));
        }
        View view27 = this.f;
        if (view27 == null) {
            pe4.F("checkbox");
            throw null;
        }
        if (view27.getVisibility() != 8) {
            View view28 = this.q;
            if (view28 == null) {
                pe4.F("menuClickListener");
                throw null;
            }
            if (view28.getVisibility() != 8) {
                paddingStart -= i7;
            }
            View view29 = this.f;
            if (view29 == null) {
                pe4.F("checkbox");
                throw null;
            }
            int marginEnd2 = paddingStart - d(view29).getMarginEnd();
            View view30 = this.f;
            if (view30 == null) {
                pe4.F("checkbox");
                throw null;
            }
            int measuredWidth5 = marginEnd2 - view30.getMeasuredWidth();
            View view31 = this.f;
            if (view31 != null) {
                b(view29, measuredWidth5, measuredHeight3 - (view31.getMeasuredHeight() / 2));
            } else {
                pe4.F("checkbox");
                throw null;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingStart;
        int marginStart;
        int i3;
        int paddingTop;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 0) {
            paddingStart = getSuggestedMinimumWidth();
        } else {
            paddingStart = (size - getPaddingStart()) - getPaddingEnd();
            if (paddingStart < 0) {
                paddingStart = 0;
            }
        }
        View view = this.k;
        if (view == null) {
            pe4.F("icon");
            throw null;
        }
        int iE = e(view, i, i2);
        View view2 = this.n;
        if (view2 == null) {
            pe4.F("favorite");
            throw null;
        }
        int iE2 = iE | e(view2, i, i2);
        View view3 = this.p;
        if (view3 == null) {
            pe4.F("menu");
            throw null;
        }
        int iE3 = iE2 | e(view3, i, i2);
        View view4 = this.q;
        if (view4 == null) {
            pe4.F("menuClickListener");
            throw null;
        }
        int iE4 = iE3 | e(view4, i, i2);
        View view5 = this.f;
        if (view5 == null) {
            pe4.F("checkbox");
            throw null;
        }
        int iE5 = iE4 | e(view5, i, i2);
        View view6 = this.k;
        if (view6 == null) {
            pe4.F("icon");
            throw null;
        }
        if (view6.getVisibility() != 8) {
            View view7 = this.b;
            if (view7 == null) {
                pe4.F("title");
                throw null;
            }
            marginStart = d(view7).getMarginStart();
        } else {
            marginStart = 0;
        }
        int iA = paddingStart - (a() + marginStart);
        View view8 = this.q;
        if (view8 == null) {
            pe4.F("menuClickListener");
            throw null;
        }
        if (view8.getVisibility() != 8) {
            View view9 = this.q;
            if (view9 == null) {
                pe4.F("menuClickListener");
                throw null;
            }
            i3 = i(view9);
        } else {
            View view10 = this.p;
            if (view10 == null) {
                pe4.F("menu");
                throw null;
            }
            if (view10.getVisibility() != 8) {
                View view11 = this.p;
                if (view11 == null) {
                    pe4.F("menu");
                    throw null;
                }
                i3 = i(view11);
            } else {
                i3 = 0;
            }
        }
        View view12 = this.f;
        if (view12 == null) {
            pe4.F("checkbox");
            throw null;
        }
        int i4 = iA - (i(view12) + i3);
        if (i4 < 0) {
            i4 = 0;
        }
        View view13 = this.a;
        if (view13 == null) {
            pe4.F("subtitle1");
            throw null;
        }
        int iF = iE5 | f(view13, i4, i2);
        View view14 = this.b;
        if (view14 == null) {
            pe4.F("title");
            throw null;
        }
        int iF2 = iF | f(view14, i4, i2);
        View view15 = this.c;
        if (view15 == null) {
            pe4.F("subtitle2");
            throw null;
        }
        int iF3 = iF2 | f(view15, i4, i2);
        View view16 = this.d;
        if (view16 == null) {
            pe4.F("subtitle3");
            throw null;
        }
        int iF4 = iF3 | f(view16, i4, i2);
        View view17 = this.e;
        if (view17 == null) {
            pe4.F("labels");
            throw null;
        }
        int iF5 = f(view17, i4, i2) | iF4;
        int paddingTop2 = getPaddingTop();
        View view18 = this.a;
        if (view18 == null) {
            pe4.F("subtitle1");
            throw null;
        }
        int iH = h(view18, paddingTop2);
        View view19 = this.b;
        if (view19 == null) {
            pe4.F("title");
            throw null;
        }
        int iH2 = h(view19, iH);
        View view20 = this.c;
        if (view20 == null) {
            pe4.F("subtitle2");
            throw null;
        }
        int iH3 = h(view20, iH2);
        View view21 = this.d;
        if (view21 == null) {
            pe4.F("subtitle3");
            throw null;
        }
        int iH4 = h(view21, iH3);
        View view22 = this.e;
        if (view22 == null) {
            pe4.F("labels");
            throw null;
        }
        int iH5 = h(view22, iH4);
        View view23 = this.k;
        if (view23 == null) {
            pe4.F("icon");
            throw null;
        }
        if (view23.getVisibility() == 8) {
            paddingTop = getPaddingTop();
        } else {
            int paddingTop3 = getPaddingTop();
            View view24 = this.a;
            if (view24 == null) {
                pe4.F("subtitle1");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = view24.getLayoutParams();
            layoutParams.getClass();
            int i5 = paddingTop3 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            View view25 = this.k;
            if (view25 == null) {
                pe4.F("icon");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = view25.getLayoutParams();
            layoutParams2.getClass();
            int i6 = i5 + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
            View view26 = this.k;
            if (view26 == null) {
                pe4.F("icon");
                throw null;
            }
            int measuredHeight = view26.getMeasuredHeight() + i6;
            View view27 = this.k;
            if (view27 == null) {
                pe4.F("icon");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams3 = view27.getLayoutParams();
            layoutParams3.getClass();
            paddingTop = ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + measuredHeight;
        }
        View view28 = this.f;
        if (view28 == null) {
            pe4.F("checkbox");
            throw null;
        }
        int iG = g(view28);
        View view29 = this.p;
        if (view29 == null) {
            pe4.F("menu");
            throw null;
        }
        int iG2 = g(view29);
        View view30 = this.q;
        if (view30 == null) {
            pe4.F("menuClickListener");
            throw null;
        }
        int iMax = Math.max(iG, Math.max(iG2, g(view30)));
        int i7 = this.r;
        int paddingBottom = getPaddingBottom() + iH5 + i7;
        int[] iArr = {getPaddingBottom() + paddingTop + i7, getPaddingBottom() + getPaddingTop() + iMax, getSuggestedMinimumHeight()};
        for (int i8 = 0; i8 < 3; i8++) {
            paddingBottom = Math.max(paddingBottom, iArr[i8]);
        }
        setMeasuredDimension(View.resolveSizeAndState(size, i, iF5), View.resolveSizeAndState(paddingBottom, i2, iF5 << 16));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.getClass();
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppItemContentLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppItemContentLayout(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ AppItemContentLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
