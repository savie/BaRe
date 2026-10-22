package defpackage;

import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.button.MaterialButton;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ix4 extends ViewGroup {
    public int a;
    public int b;
    public int c;
    public int[] d;
    public int[] e;
    public WeakReference f;
    public int k;
    public int n;
    public int p;
    public int q;

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getIntrinsicWidth() {
        int i = this.a;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    public int getMinChildWidth() {
        return this.k;
    }

    public int getPrimaryActionSwipeMode() {
        return this.q;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = this.c;
        int i7 = this.a;
        float f = i6 >= i7 ? 1.0f : i6 / i7;
        int paddingLeft = (int) (getPaddingLeft() * f);
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int i8 = 1;
        if (getLayoutDirection() == 1) {
            i5 = childCount - 1;
            i8 = -1;
        } else {
            i5 = 0;
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt((i8 * i9) + i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = marginLayoutParams.topMargin + paddingTop;
                int i11 = (int) (marginLayoutParams.leftMargin * f);
                int i12 = (int) (marginLayoutParams.rightMargin * f);
                int i13 = paddingLeft + i11;
                childAt.layout(i13, i10, i13 + measuredWidth, measuredHeight + i10);
                paddingLeft = i11 + measuredWidth + i12 + paddingLeft;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:152:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0042  */
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x005b  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00db  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f5  */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childCount;
        int measuredWidth;
        int i3;
        int iMax;
        int iCombineMeasuredStates;
        int i4;
        View childAt;
        View childAt2;
        View childAt3;
        int mode;
        int mode2;
        int childCount2 = getChildCount();
        int i5 = this.p;
        int i6 = this.b;
        if (i6 != -1 && (i5 == i2 || (mode2 = View.MeasureSpec.getMode(i2)) == 0 || (mode2 == 1073741824 && View.MeasureSpec.getSize(i2) == i6))) {
            int i7 = this.n;
            int i8 = this.a;
            if (i8 == -1 || (i7 != i && (mode = View.MeasureSpec.getMode(i)) != 0 && (mode != 1073741824 || View.MeasureSpec.getSize(i) != i8))) {
                this.p = i2;
                this.n = i;
                childCount = getChildCount();
                measuredWidth = 0;
                iMax = 0;
                iCombineMeasuredStates = 0;
                for (i3 = 0; i3 < childCount; i3++) {
                    childAt2 = getChildAt(i3);
                    if (childAt2.getVisibility() == 8) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
                        measureChildWithMargins(childAt2, i, measuredWidth, i2, 0);
                        measuredWidth += childAt2.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                        iMax = Math.max(iMax, childAt2.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt2.getMeasuredState());
                    }
                }
                int iMax2 = Math.max(getPaddingRight() + getPaddingLeft() + measuredWidth, getSuggestedMinimumWidth());
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax, getSuggestedMinimumHeight()), i2, 0) & 16777215;
                this.a = View.resolveSizeAndState(iMax2, i, 0);
                this.b = View.resolveSizeAndState(iResolveSizeAndState, i2, iCombineMeasuredStates << 16);
                this.d = new int[childCount2];
                this.e = new int[childCount2];
                for (i4 = 0; i4 < childCount2; i4++) {
                    childAt = getChildAt(i4);
                    if (childAt.getVisibility() != 8) {
                        this.d[i4] = childAt.getMeasuredWidth();
                        this.e[i4] = childAt.getMeasuredHeight();
                        if (((ViewGroup.MarginLayoutParams) childAt.getLayoutParams()).height == -1) {
                            this.e[i4] = this.b;
                        }
                    }
                }
            }
        } else {
            this.p = i2;
            this.n = i;
            childCount = getChildCount();
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
            while (i3 < childCount) {
                childAt2 = getChildAt(i3);
                if (childAt2.getVisibility() == 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
                    measureChildWithMargins(childAt2, i, measuredWidth, i2, 0);
                    measuredWidth += childAt2.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                    iMax = Math.max(iMax, childAt2.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt2.getMeasuredState());
                }
            }
            int iMax3 = Math.max(getPaddingRight() + getPaddingLeft() + measuredWidth, getSuggestedMinimumWidth());
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax, getSuggestedMinimumHeight()), i2, 0) & 16777215;
            this.a = View.resolveSizeAndState(iMax3, i, 0);
            this.b = View.resolveSizeAndState(iResolveSizeAndState2, i2, iCombineMeasuredStates << 16);
            this.d = new int[childCount2];
            this.e = new int[childCount2];
            while (i4 < childCount2) {
                childAt = getChildAt(i4);
                if (childAt.getVisibility() != 8) {
                    this.d[i4] = childAt.getMeasuredWidth();
                    this.e[i4] = childAt.getMeasuredHeight();
                    if (((ViewGroup.MarginLayoutParams) childAt.getLayoutParams()).height == -1) {
                        this.e[i4] = this.b;
                    }
                }
            }
        }
        WeakReference weakReference = this.f;
        Integer numValueOf = null;
        if (weakReference == null || weakReference.get() == null) {
            if (!(getParent() instanceof ViewGroup)) {
                childAt3 = null;
                break;
            }
            ViewGroup viewGroup = (ViewGroup) getParent();
            int childCount3 = viewGroup.getChildCount();
            int i9 = 0;
            while (true) {
                if (i9 >= childCount3) {
                    childAt3 = null;
                    break;
                }
                childAt3 = viewGroup.getChildAt(i9);
                if (childAt3 instanceof cx4) {
                    break;
                } else {
                    i9++;
                }
            }
            this.f = new WeakReference(childAt3);
        }
        int swipeMaxOvershoot = this.f.get() != null ? ((cx4) this.f.get()).getSwipeMaxOvershoot() : 0;
        WeakReference weakReference2 = this.f;
        int measuredWidth2 = (weakReference2 == null || weakReference2.get() == null) ? getParent() instanceof View ? ((View) getParent()).getMeasuredWidth() : this.a : ((View) this.f.get()).getMeasuredWidth();
        setVisibility(this.c == 0 ? 4 : 0);
        int i10 = this.c;
        if (i10 == 0) {
            setMeasuredDimension(0, this.b);
            return;
        }
        if (childCount2 == 0) {
            setMeasuredDimension(i10, this.b);
            return;
        }
        if (this.q != 0) {
            int i11 = this.a;
            if (i10 > swipeMaxOvershoot + i11 && measuredWidth2 > i11) {
                if (lg7.w(this) == (getLayoutDirection() == 1)) {
                    int childCount4 = getChildCount();
                    for (int i12 = 0; i12 < childCount4; i12++) {
                        if (getChildAt(i12).getVisibility() != 8) {
                            numValueOf = Integer.valueOf(i12);
                            break;
                        }
                    }
                } else {
                    for (int childCount5 = getChildCount() - 1; childCount5 >= 0; childCount5--) {
                        if (getChildAt(childCount5).getVisibility() != 8) {
                            numValueOf = Integer.valueOf(childCount5);
                            break;
                        }
                    }
                }
                if (numValueOf != null) {
                    int paddingEnd = getPaddingEnd() + getPaddingStart();
                    int i13 = this.c;
                    int i14 = this.a;
                    float fMax = Math.max(0.0f, Math.min(1.0f, (i13 - i14) / (measuredWidth2 - i14)));
                    int childCount6 = getChildCount();
                    for (int i15 = 0; i15 < childCount6; i15++) {
                        View childAt4 = getChildAt(i15);
                        if (childAt4.getVisibility() != 8 && i15 != numValueOf.intValue()) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(ed.c(fMax, Math.max(this.d[i15], this.k), this.k), 1073741824), View.MeasureSpec.makeMeasureSpec(this.e[i15], 1073741824));
                            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) childAt4.getLayoutParams();
                            int i16 = marginLayoutParams3.leftMargin + marginLayoutParams3.rightMargin + this.k + paddingEnd;
                            if (childAt4 instanceof MaterialButton) {
                                MaterialButton materialButton = (MaterialButton) childAt4;
                                if (materialButton.getIcon() != null) {
                                    materialButton.getIcon().setAlpha(ed.c(fMax, 255, 0));
                                }
                            }
                            paddingEnd = i16;
                        }
                    }
                    View childAt5 = getChildAt(numValueOf.intValue());
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) childAt5.getLayoutParams();
                    childAt5.measure(View.MeasureSpec.makeMeasureSpec(ed.c(fMax, this.d[numValueOf.intValue()], ((measuredWidth2 - paddingEnd) - marginLayoutParams4.rightMargin) - marginLayoutParams4.leftMargin) + Math.max(this.c - measuredWidth2, 0), 1073741824), View.MeasureSpec.makeMeasureSpec(this.e[numValueOf.intValue()], 1073741824));
                    if (childAt5 instanceof MaterialButton) {
                        MaterialButton materialButton2 = (MaterialButton) childAt5;
                        if (materialButton2.getIcon() != null) {
                            materialButton2.getIcon().setAlpha(255);
                        }
                    }
                }
                setMeasuredDimension(this.c, this.b);
                return;
            }
        }
        float f = this.a;
        int iB = (int) ed.b(0.0f, 255.0f, f / 4.0f, f / 2.0f, i10);
        float f2 = this.c / this.a;
        int paddingLeft = (int) (getPaddingLeft() * f2);
        int paddingRight = (int) (getPaddingRight() * f2);
        int i17 = 0;
        for (int i18 = 0; i18 < childCount2; i18++) {
            View childAt6 = getChildAt(i18);
            if (childAt6.getVisibility() != 8) {
                int iMax4 = Math.max(this.k, (int) (this.d[i18] * f2));
                childAt6.measure(View.MeasureSpec.makeMeasureSpec(iMax4, 1073741824), View.MeasureSpec.makeMeasureSpec(this.e[i18], 1073741824));
                ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) childAt6.getLayoutParams();
                int i19 = iMax4 + ((int) (marginLayoutParams5.leftMargin * f2)) + ((int) (marginLayoutParams5.rightMargin * f2)) + i17;
                if (childAt6 instanceof MaterialButton) {
                    MaterialButton materialButton3 = (MaterialButton) childAt6;
                    if (materialButton3.getIcon() != null) {
                        materialButton3.getIcon().setAlpha(iB);
                    }
                }
                i17 = i19;
            }
        }
        setMeasuredDimension(Math.max(this.c, i17 + paddingLeft + paddingRight), this.b);
    }

    public void setMinChildWidth(int i) {
        if (this.k == i) {
            return;
        }
        this.k = i;
        requestLayout();
    }

    public void setPrimaryActionSwipeMode(int i) {
        this.q = i;
    }

    public void setRevealedWidth(int i) {
        int iMax = Math.max(0, i);
        if (this.c == iMax) {
            return;
        }
        this.c = iMax;
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
