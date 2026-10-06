package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.jcraft.jsch.SftpATTRS;
import defpackage.c6;
import defpackage.dl8;
import defpackage.fz5;
import defpackage.l0;
import defpackage.mh3;
import defpackage.nh3;
import defpackage.oh3;
import defpackage.ph3;
import defpackage.qh3;
import defpackage.rh3;
import defpackage.sd6;
import defpackage.sh3;
import defpackage.x5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FlexboxLayout extends ViewGroup implements mh3 {
    public final rh3 G;
    public List H;
    public final ph3 I;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public Drawable k;
    public Drawable n;
    public int p;
    public int q;
    public int r;
    public int t;
    public int[] x;
    public SparseIntArray y;

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = -1;
        this.G = new rh3(this);
        this.H = new ArrayList();
        this.I = new ph3();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sd6.a, i, 0);
        this.a = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.b = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.c = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.d = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(8, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(3);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(4);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(9, 0);
        if (i2 != 0) {
            this.q = i2;
            this.p = i2;
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(11, 0);
        if (i3 != 0) {
            this.q = i3;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(10, 0);
        if (i4 != 0) {
            this.p = i4;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void a(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.H.size();
        for (int i = 0; i < size; i++) {
            oh3 oh3Var = (oh3) this.H.get(i);
            for (int i2 = 0; i2 < oh3Var.h; i2++) {
                int i3 = oh3Var.o + i2;
                View viewO = o(i3);
                if (viewO != null && viewO.getVisibility() != 8) {
                    sh3 sh3Var = (sh3) viewO.getLayoutParams();
                    if (p(i3, i2)) {
                        n(canvas, z ? viewO.getRight() + ((ViewGroup.MarginLayoutParams) sh3Var).rightMargin : (viewO.getLeft() - ((ViewGroup.MarginLayoutParams) sh3Var).leftMargin) - this.t, oh3Var.b, oh3Var.g);
                    }
                    if (i2 == oh3Var.h - 1 && (this.q & 4) > 0) {
                        n(canvas, z ? (viewO.getLeft() - ((ViewGroup.MarginLayoutParams) sh3Var).leftMargin) - this.t : viewO.getRight() + ((ViewGroup.MarginLayoutParams) sh3Var).rightMargin, oh3Var.b, oh3Var.g);
                    }
                }
            }
            if (q(i)) {
                m(canvas, paddingLeft, z2 ? oh3Var.d : oh3Var.b - this.r, iMax);
            }
            if (r(i) && (this.p & 4) > 0) {
                m(canvas, paddingLeft, z2 ? oh3Var.b - this.r : oh3Var.d, iMax);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.y == null) {
            this.y = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.y;
        rh3 rh3Var = this.G;
        mh3 mh3Var = (mh3) rh3Var.a;
        int flexItemCount = mh3Var.getFlexItemCount();
        ArrayList arrayListF = rh3Var.f(flexItemCount);
        qh3 qh3Var = new qh3();
        if (view == null || !(layoutParams instanceof nh3)) {
            qh3Var.b = 1;
        } else {
            qh3Var.b = ((nh3) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount || i >= mh3Var.getFlexItemCount()) {
            qh3Var.a = flexItemCount;
        } else {
            qh3Var.a = i;
            for (int i2 = i; i2 < flexItemCount; i2++) {
                ((qh3) arrayListF.get(i2)).a++;
            }
        }
        arrayListF.add(qh3Var);
        this.x = rh3.t(flexItemCount + 1, arrayListF, sparseIntArray);
        super.addView(view, i, layoutParams);
    }

    @Override // defpackage.mh3
    public final View b(int i) {
        return o(i);
    }

    @Override // defpackage.mh3
    public final int c(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof sh3;
    }

    @Override // defpackage.mh3
    public final void d(View view, int i, int i2, oh3 oh3Var) {
        if (p(i, i2)) {
            boolean zJ = j();
            int i3 = oh3Var.e;
            if (zJ) {
                int i4 = this.t;
                oh3Var.e = i3 + i4;
                oh3Var.f += i4;
            } else {
                int i5 = this.r;
                oh3Var.e = i3 + i5;
                oh3Var.f += i5;
            }
        }
    }

    @Override // defpackage.mh3
    public final View e(int i) {
        return getChildAt(i);
    }

    @Override // defpackage.mh3
    public final int f(View view, int i, int i2) {
        int i3;
        int i4;
        if (j()) {
            i3 = p(i, i2) ? this.t : 0;
            if ((this.q & 4) <= 0) {
                return i3;
            }
            i4 = this.t;
        } else {
            i3 = p(i, i2) ? this.r : 0;
            if ((this.p & 4) <= 0) {
                return i3;
            }
            i4 = this.r;
        }
        return i3 + i4;
    }

    @Override // defpackage.mh3
    public final int g(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof sh3) {
            sh3 sh3Var = (sh3) layoutParams;
            sh3 sh3Var2 = new sh3(sh3Var);
            sh3Var2.a = 1;
            sh3Var2.b = 0.0f;
            sh3Var2.c = 1.0f;
            sh3Var2.d = -1;
            sh3Var2.e = -1.0f;
            sh3Var2.f = -1;
            sh3Var2.k = -1;
            sh3Var2.n = 16777215;
            sh3Var2.p = 16777215;
            sh3Var2.a = sh3Var.a;
            sh3Var2.b = sh3Var.b;
            sh3Var2.c = sh3Var.c;
            sh3Var2.d = sh3Var.d;
            sh3Var2.e = sh3Var.e;
            sh3Var2.f = sh3Var.f;
            sh3Var2.k = sh3Var.k;
            sh3Var2.n = sh3Var.n;
            sh3Var2.p = sh3Var.p;
            sh3Var2.q = sh3Var.q;
            return sh3Var2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            sh3 sh3Var3 = new sh3((ViewGroup.MarginLayoutParams) layoutParams);
            sh3Var3.a = 1;
            sh3Var3.b = 0.0f;
            sh3Var3.c = 1.0f;
            sh3Var3.d = -1;
            sh3Var3.e = -1.0f;
            sh3Var3.f = -1;
            sh3Var3.k = -1;
            sh3Var3.n = 16777215;
            sh3Var3.p = 16777215;
            return sh3Var3;
        }
        sh3 sh3Var4 = new sh3(layoutParams);
        sh3Var4.a = 1;
        sh3Var4.b = 0.0f;
        sh3Var4.c = 1.0f;
        sh3Var4.d = -1;
        sh3Var4.e = -1.0f;
        sh3Var4.f = -1;
        sh3Var4.k = -1;
        sh3Var4.n = 16777215;
        sh3Var4.p = 16777215;
        return sh3Var4;
    }

    @Override // defpackage.mh3
    public int getAlignContent() {
        return this.e;
    }

    @Override // defpackage.mh3
    public int getAlignItems() {
        return this.d;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.k;
    }

    public Drawable getDividerDrawableVertical() {
        return this.n;
    }

    @Override // defpackage.mh3
    public int getFlexDirection() {
        return this.a;
    }

    @Override // defpackage.mh3
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<oh3> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.H.size());
        for (oh3 oh3Var : this.H) {
            if (oh3Var.a() != 0) {
                arrayList.add(oh3Var);
            }
        }
        return arrayList;
    }

    @Override // defpackage.mh3
    public List<oh3> getFlexLinesInternal() {
        return this.H;
    }

    @Override // defpackage.mh3
    public int getFlexWrap() {
        return this.b;
    }

    public int getJustifyContent() {
        return this.c;
    }

    @Override // defpackage.mh3
    public int getLargestMainSize() {
        Iterator it = this.H.iterator();
        int iMax = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((oh3) it.next()).e);
        }
        return iMax;
    }

    @Override // defpackage.mh3
    public int getMaxLine() {
        return this.f;
    }

    public int getShowDividerHorizontal() {
        return this.p;
    }

    public int getShowDividerVertical() {
        return this.q;
    }

    @Override // defpackage.mh3
    public int getSumOfCrossSize() {
        int size = this.H.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            oh3 oh3Var = (oh3) this.H.get(i2);
            if (q(i2)) {
                i += j() ? this.r : this.t;
            }
            if (r(i2)) {
                i += j() ? this.r : this.t;
            }
            i += oh3Var.g;
        }
        return i;
    }

    @Override // defpackage.mh3
    public final void h(oh3 oh3Var) {
        if (j()) {
            if ((this.q & 4) > 0) {
                int i = oh3Var.e;
                int i2 = this.t;
                oh3Var.e = i + i2;
                oh3Var.f += i2;
                return;
            }
            return;
        }
        if ((this.p & 4) > 0) {
            int i3 = oh3Var.e;
            int i4 = this.r;
            oh3Var.e = i3 + i4;
            oh3Var.f += i4;
        }
    }

    @Override // defpackage.mh3
    public final boolean j() {
        int i = this.a;
        return i == 0 || i == 1;
    }

    @Override // defpackage.mh3
    public final int k(View view) {
        return 0;
    }

    public final void l(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.H.size();
        for (int i = 0; i < size; i++) {
            oh3 oh3Var = (oh3) this.H.get(i);
            for (int i2 = 0; i2 < oh3Var.h; i2++) {
                int i3 = oh3Var.o + i2;
                View viewO = o(i3);
                if (viewO != null && viewO.getVisibility() != 8) {
                    sh3 sh3Var = (sh3) viewO.getLayoutParams();
                    if (p(i3, i2)) {
                        m(canvas, oh3Var.a, z2 ? viewO.getBottom() + ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin : (viewO.getTop() - ((ViewGroup.MarginLayoutParams) sh3Var).topMargin) - this.r, oh3Var.g);
                    }
                    if (i2 == oh3Var.h - 1 && (this.p & 4) > 0) {
                        m(canvas, oh3Var.a, z2 ? (viewO.getTop() - ((ViewGroup.MarginLayoutParams) sh3Var).topMargin) - this.r : viewO.getBottom() + ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin, oh3Var.g);
                    }
                }
            }
            if (q(i)) {
                n(canvas, z ? oh3Var.c : oh3Var.a - this.t, paddingTop, iMax);
            }
            if (r(i) && (this.q & 4) > 0) {
                n(canvas, z ? oh3Var.a - this.t : oh3Var.c, paddingTop, iMax);
            }
        }
    }

    public final void m(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.k;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.r + i2);
        this.k.draw(canvas);
    }

    public final void n(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.n;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.t + i, i3 + i2);
        this.n.draw(canvas);
    }

    public final View o(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.x;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.n == null && this.k == null) {
            return;
        }
        if (this.p == 0 && this.q == 0) {
            return;
        }
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = getLayoutDirection();
        int i = this.a;
        if (i == 0) {
            a(canvas, layoutDirection == 1, this.b == 2);
            return;
        }
        if (i == 1) {
            a(canvas, layoutDirection != 1, this.b == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.b == 2) {
                z = !z;
            }
            l(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.b == 2) {
            z2 = !z2;
        }
        l(canvas, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = getLayoutDirection();
        int i5 = this.a;
        if (i5 == 0) {
            s(layoutDirection == 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 1) {
            s(layoutDirection != 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 2) {
            z2 = layoutDirection == 1;
            if (this.b == 2) {
                z2 = !z2;
            }
            t(i, i2, i3, i4, z2, false);
            return;
        }
        if (i5 != 3) {
            x5.g(this.a, "Invalid flex direction is set: ");
            return;
        }
        z2 = layoutDirection == 1;
        if (this.b == 2) {
            z2 = !z2;
        }
        t(i, i2, i3, i4, z2, true);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.y == null) {
            this.y = new SparseIntArray(getChildCount());
        }
        SparseIntArray sparseIntArray = this.y;
        rh3 rh3Var = this.G;
        mh3 mh3Var = (mh3) rh3Var.a;
        int flexItemCount = mh3Var.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            SparseIntArray sparseIntArray2 = this.y;
            int flexItemCount2 = ((mh3) rh3Var.a).getFlexItemCount();
            this.x = rh3.t(flexItemCount2, rh3Var.f(flexItemCount2), sparseIntArray2);
            break;
        }
        for (int i3 = 0; i3 < flexItemCount; i3++) {
            View viewE = mh3Var.e(i3);
            if (viewE != null && ((nh3) viewE.getLayoutParams()).getOrder() != sparseIntArray.get(i3)) {
                SparseIntArray sparseIntArray3 = this.y;
                int flexItemCount3 = ((mh3) rh3Var.a).getFlexItemCount();
                this.x = rh3.t(flexItemCount3, rh3Var.f(flexItemCount3), sparseIntArray3);
                break;
            }
        }
        int i4 = this.a;
        ph3 ph3Var = this.I;
        if (i4 != 0 && i4 != 1) {
            if (i4 != 2 && i4 != 3) {
                x5.g(this.a, "Invalid value for the flex direction is set: ");
                return;
            }
            this.H.clear();
            ph3Var.b = null;
            ph3Var.a = 0;
            this.G.b(this.I, i2, i, Integer.MAX_VALUE, 0, -1, null);
            this.H = ph3Var.b;
            rh3Var.h(i, i2, 0);
            rh3Var.g(i, i2, getPaddingRight() + getPaddingLeft());
            rh3Var.w(0);
            u(this.a, i, i2, ph3Var.a);
            return;
        }
        this.H.clear();
        ph3Var.b = null;
        ph3Var.a = 0;
        this.G.b(this.I, i, i2, Integer.MAX_VALUE, 0, -1, null);
        this.H = ph3Var.b;
        rh3Var.h(i, i2, 0);
        if (this.d == 3) {
            for (oh3 oh3Var : this.H) {
                int iMax = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                for (int i5 = 0; i5 < oh3Var.h; i5++) {
                    View viewO = o(oh3Var.o + i5);
                    if (viewO != null && viewO.getVisibility() != 8) {
                        sh3 sh3Var = (sh3) viewO.getLayoutParams();
                        int i6 = this.b;
                        int i7 = oh3Var.l;
                        iMax = i6 != 2 ? Math.max(iMax, viewO.getMeasuredHeight() + Math.max(i7 - viewO.getBaseline(), ((ViewGroup.MarginLayoutParams) sh3Var).topMargin) + ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin) : Math.max(iMax, viewO.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) sh3Var).topMargin + Math.max(viewO.getBaseline() + (i7 - viewO.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin));
                    }
                }
                oh3Var.g = iMax;
            }
        }
        rh3Var.g(i, i2, getPaddingBottom() + getPaddingTop());
        rh3Var.w(0);
        u(this.a, i, i2, ph3Var.a);
    }

    public final boolean p(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View viewO = o(i - i3);
            if (viewO != null && viewO.getVisibility() != 8) {
                if (j()) {
                    return (this.q & 2) != 0;
                }
                return (this.p & 2) != 0;
            }
        }
        if (j()) {
            return (this.q & 1) != 0;
        }
        return (this.p & 1) != 0;
    }

    public final boolean q(int i) {
        if (i >= 0 && i < this.H.size()) {
            for (int i2 = 0; i2 < i; i2++) {
                if (((oh3) this.H.get(i2)).a() > 0) {
                    if (j()) {
                        return (this.p & 2) != 0;
                    }
                    return (this.q & 2) != 0;
                }
            }
            if (j()) {
                return (this.p & 1) != 0;
            }
            if ((this.q & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean r(int i) {
        if (i >= 0 && i < this.H.size()) {
            for (int i2 = i + 1; i2 < this.H.size(); i2++) {
                if (((oh3) this.H.get(i2)).a() > 0) {
                    return false;
                }
            }
            if (j()) {
                return (this.p & 4) != 0;
            }
            if ((this.q & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00db  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:51:0x0103  */
    /* JADX WARN: Code duplicated, block: B:57:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0122  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:65:0x0169  */
    /* JADX WARN: Code duplicated, block: B:67:0x0179  */
    /* JADX WARN: Code duplicated, block: B:68:0x0191  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x01df  */
    public final void s(boolean z, int i, int i2, int i3, int i4) {
        float measuredWidth;
        float f;
        float f2;
        float fMax;
        int i5;
        int i6;
        View viewO;
        boolean z2;
        int i7;
        int i8;
        float f3;
        float f4;
        int i9;
        float f5;
        int i10;
        View view;
        rh3 rh3Var;
        oh3 oh3Var;
        rh3 rh3Var2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i11 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.H.size();
        for (int i12 = 0; i12 < size; i12++) {
            oh3 oh3Var2 = (oh3) this.H.get(i12);
            if (q(i12)) {
                int i13 = this.r;
                paddingBottom -= i13;
                paddingTop += i13;
            }
            int i14 = paddingBottom;
            int i15 = this.c;
            char c = 4;
            int i16 = 2;
            boolean z3 = true;
            if (i15 == 0) {
                measuredWidth = paddingLeft;
                f = i11 - paddingRight;
            } else if (i15 != 1) {
                if (i15 == 2) {
                    int i17 = oh3Var2.e;
                    measuredWidth = paddingLeft + ((i11 - i17) / 2.0f);
                    f = (i11 - paddingRight) - ((i11 - i17) / 2.0f);
                } else if (i15 == 3) {
                    measuredWidth = paddingLeft;
                    int iA = oh3Var2.a();
                    f2 = (i11 - oh3Var2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f = i11 - paddingRight;
                } else if (i15 == 4) {
                    int iA2 = oh3Var2.a();
                    float f6 = iA2 != 0 ? (i11 - oh3Var2.e) / iA2 : 0.0f;
                    float f7 = f6 / 2.0f;
                    measuredWidth = paddingLeft + f7;
                    float f8 = (i11 - paddingRight) - f7;
                    f2 = f6;
                    f = f8;
                } else {
                    if (i15 != 5) {
                        x5.g(this.c, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = oh3Var2.a();
                    f2 = iA3 != 0 ? (i11 - oh3Var2.e) / (iA3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f2;
                    f = (i11 - paddingRight) - f2;
                }
                fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < oh3Var2.h) {
                    i6 = oh3Var2.o + i5;
                    viewO = o(i6);
                    char c2 = c;
                    if (viewO != null) {
                        z2 = z3;
                        if (viewO.getVisibility() == 8) {
                            z2 = z2;
                        } else {
                            sh3 sh3Var = (sh3) viewO.getLayoutParams();
                            f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) sh3Var).leftMargin;
                            f4 = f - ((ViewGroup.MarginLayoutParams) sh3Var).rightMargin;
                            if (p(i6, i5)) {
                                int i18 = this.t;
                                float f9 = i18;
                                f3 += f9;
                                f4 -= f9;
                                i9 = i18;
                            } else {
                                i9 = 0;
                            }
                            f5 = f4;
                            if (i5 == oh3Var2.h - 1 || (this.q & 4) <= 0) {
                                i10 = 0;
                            } else {
                                i10 = this.t;
                            }
                            if (this.b == i16) {
                                i8 = i16;
                                rh3Var2 = this.G;
                                if (z) {
                                    view = viewO;
                                    rh3Var2.p(view, oh3Var2, Math.round(f5) - viewO.getMeasuredWidth(), i14 - viewO.getMeasuredHeight(), Math.round(f5), i14);
                                } else {
                                    view = viewO;
                                    rh3Var2.p(view, oh3Var2, Math.round(f3), i14 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f3), i14);
                                }
                                i7 = i14;
                            } else {
                                i5 = i5;
                                view = viewO;
                                z2 = z2;
                                i8 = i16;
                                i7 = i14;
                                rh3Var = this.G;
                                if (z) {
                                    rh3Var.p(view, oh3Var2, Math.round(f5) - view.getMeasuredWidth(), paddingTop, Math.round(f5), view.getMeasuredHeight() + paddingTop);
                                } else {
                                    int i19 = paddingTop;
                                    rh3Var.p(view, oh3Var2, Math.round(f3), i19, view.getMeasuredWidth() + Math.round(f3), view.getMeasuredHeight() + i19);
                                    paddingTop = i19;
                                }
                            }
                            measuredWidth = f3 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sh3Var).rightMargin;
                            float measuredWidth2 = f5 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sh3Var).leftMargin);
                            if (z) {
                                oh3Var = oh3Var2;
                                oh3Var.b(view, i10, 0, i9, 0);
                            } else {
                                oh3Var = oh3Var2;
                                oh3Var.b(view, i9, 0, i10, 0);
                            }
                            oh3Var2 = oh3Var;
                            f = measuredWidth2;
                        }
                        i5++;
                        c = c2;
                        i16 = i8;
                        z3 = z2;
                        i14 = i7;
                    } else {
                        z2 = z3;
                    }
                    i8 = i16;
                    i5 = i5;
                    i7 = i14;
                    i5++;
                    c = c2;
                    i16 = i8;
                    z3 = z2;
                    i14 = i7;
                }
                int i20 = oh3Var2.g;
                paddingTop += i20;
                paddingBottom = i14 - i20;
            } else {
                int i21 = oh3Var2.e;
                f = i21 - paddingLeft;
                measuredWidth = (i11 - i21) + paddingRight;
            }
            f2 = 0.0f;
            fMax = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < oh3Var2.h) {
                i6 = oh3Var2.o + i5;
                viewO = o(i6);
                char c3 = c;
                if (viewO != null) {
                    z2 = z3;
                    if (viewO.getVisibility() == 8) {
                        z2 = z2;
                    } else {
                        sh3 sh3Var2 = (sh3) viewO.getLayoutParams();
                        f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) sh3Var2).leftMargin;
                        f4 = f - ((ViewGroup.MarginLayoutParams) sh3Var2).rightMargin;
                        if (p(i6, i5)) {
                            int i110 = this.t;
                            float f10 = i110;
                            f3 += f10;
                            f4 -= f10;
                            i9 = i110;
                        } else {
                            i9 = 0;
                        }
                        f5 = f4;
                        if (i5 == oh3Var2.h - 1) {
                            i10 = 0;
                        } else {
                            i10 = 0;
                        }
                        if (this.b == i16) {
                            i8 = i16;
                            rh3Var2 = this.G;
                            if (z) {
                                view = viewO;
                                rh3Var2.p(view, oh3Var2, Math.round(f5) - viewO.getMeasuredWidth(), i14 - viewO.getMeasuredHeight(), Math.round(f5), i14);
                            } else {
                                view = viewO;
                                rh3Var2.p(view, oh3Var2, Math.round(f3), i14 - view.getMeasuredHeight(), view.getMeasuredWidth() + Math.round(f3), i14);
                            }
                            i7 = i14;
                        } else {
                            i5 = i5;
                            view = viewO;
                            z2 = z2;
                            i8 = i16;
                            i7 = i14;
                            rh3Var = this.G;
                            if (z) {
                                rh3Var.p(view, oh3Var2, Math.round(f5) - view.getMeasuredWidth(), paddingTop, Math.round(f5), view.getMeasuredHeight() + paddingTop);
                            } else {
                                int i111 = paddingTop;
                                rh3Var.p(view, oh3Var2, Math.round(f3), i111, view.getMeasuredWidth() + Math.round(f3), view.getMeasuredHeight() + i111);
                                paddingTop = i111;
                            }
                        }
                        measuredWidth = f3 + view.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sh3Var2).rightMargin;
                        float measuredWidth3 = f5 - ((view.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sh3Var2).leftMargin);
                        if (z) {
                            oh3Var = oh3Var2;
                            oh3Var.b(view, i10, 0, i9, 0);
                        } else {
                            oh3Var = oh3Var2;
                            oh3Var.b(view, i9, 0, i10, 0);
                        }
                        oh3Var2 = oh3Var;
                        f = measuredWidth3;
                    }
                    i5++;
                    c = c3;
                    i16 = i8;
                    z3 = z2;
                    i14 = i7;
                } else {
                    z2 = z3;
                }
                i8 = i16;
                i5 = i5;
                i7 = i14;
                i5++;
                c = c3;
                i16 = i8;
                z3 = z2;
                i14 = i7;
            }
            int i22 = oh3Var2.g;
            paddingTop += i22;
            paddingBottom = i14 - i22;
        }
    }

    public void setAlignContent(int i) {
        if (this.e != i) {
            this.e = i;
            requestLayout();
        }
    }

    public void setAlignItems(int i) {
        if (this.d != i) {
            this.d = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.k) {
            return;
        }
        this.k = drawable;
        if (drawable != null) {
            this.r = drawable.getIntrinsicHeight();
        } else {
            this.r = 0;
        }
        if (this.k == null && this.n == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.n) {
            return;
        }
        this.n = drawable;
        if (drawable != null) {
            this.t = drawable.getIntrinsicWidth();
        } else {
            this.t = 0;
        }
        if (this.k == null && this.n == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
        requestLayout();
    }

    public void setFlexDirection(int i) {
        if (this.a != i) {
            this.a = i;
            requestLayout();
        }
    }

    @Override // defpackage.mh3
    public void setFlexLines(List<oh3> list) {
        this.H = list;
    }

    public void setFlexWrap(int i) {
        if (this.b != i) {
            this.b = i;
            requestLayout();
        }
    }

    public void setJustifyContent(int i) {
        if (this.c != i) {
            this.c = i;
            requestLayout();
        }
    }

    public void setMaxLine(int i) {
        if (this.f != i) {
            this.f = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.p) {
            this.p = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.q) {
            this.q = i;
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00de  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:57:0x010d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0116  */
    /* JADX WARN: Code duplicated, block: B:63:0x0137  */
    /* JADX WARN: Code duplicated, block: B:64:0x0154  */
    /* JADX WARN: Code duplicated, block: B:66:0x015c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    public final void t(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float measuredHeight;
        float f;
        float f2;
        float fMax;
        int i5;
        int i6;
        int i7;
        View viewO;
        char c;
        int i8;
        int i9;
        float f3;
        float f4;
        int i10;
        float f5;
        int i11;
        rh3 rh3Var;
        oh3 oh3Var;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i12 = i4 - i2;
        int i13 = (i3 - i) - paddingRight;
        int size = this.H.size();
        for (int i14 = 0; i14 < size; i14++) {
            oh3 oh3Var2 = (oh3) this.H.get(i14);
            if (q(i14)) {
                int i15 = this.t;
                paddingLeft += i15;
                i13 -= i15;
            }
            int i16 = i13;
            int i17 = this.c;
            char c2 = 4;
            int i18 = 1;
            if (i17 == 0) {
                measuredHeight = paddingTop;
                f = i12 - paddingBottom;
            } else if (i17 != 1) {
                if (i17 == 2) {
                    float f6 = (i12 - oh3Var2.e) / 2.0f;
                    measuredHeight = paddingTop + f6;
                    f = (i12 - paddingBottom) - f6;
                } else if (i17 == 3) {
                    measuredHeight = paddingTop;
                    int iA = oh3Var2.a();
                    f2 = (i12 - oh3Var2.e) / (iA != 1 ? iA - 1 : 1.0f);
                    f = i12 - paddingBottom;
                } else if (i17 == 4) {
                    int iA2 = oh3Var2.a();
                    f2 = iA2 != 0 ? (i12 - oh3Var2.e) / iA2 : 0.0f;
                    float f7 = f2 / 2.0f;
                    measuredHeight = paddingTop + f7;
                    f = (i12 - paddingBottom) - f7;
                } else {
                    if (i17 != 5) {
                        x5.g(this.c, "Invalid justifyContent is set: ");
                        return;
                    }
                    int iA3 = oh3Var2.a();
                    f2 = iA3 != 0 ? (i12 - oh3Var2.e) / (iA3 + 1) : 0.0f;
                    measuredHeight = paddingTop + f2;
                    f = (i12 - paddingBottom) - f2;
                }
                fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < oh3Var2.h) {
                    i6 = oh3Var2.o + i5;
                    i7 = i18;
                    viewO = o(i6);
                    if (viewO != null) {
                        c = c2;
                        if (viewO.getVisibility() == 8) {
                            sh3 sh3Var = (sh3) viewO.getLayoutParams();
                            f3 = measuredHeight + ((ViewGroup.MarginLayoutParams) sh3Var).topMargin;
                            f4 = f - ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin;
                            if (p(i6, i5)) {
                                i10 = this.r;
                                float f8 = i10;
                                f3 += f8;
                                f4 -= f8;
                            } else {
                                i10 = 0;
                            }
                            f5 = f4;
                            if (i5 == oh3Var2.h - i7 || (this.p & 4) <= 0) {
                                i11 = 0;
                            } else {
                                i11 = this.r;
                            }
                            i9 = i5;
                            rh3Var = this.G;
                            if (z) {
                                if (z2) {
                                    rh3Var.q(viewO, oh3Var2, true, i16 - viewO.getMeasuredWidth(), Math.round(f5) - viewO.getMeasuredHeight(), i16, Math.round(f5));
                                } else {
                                    rh3Var.q(viewO, oh3Var2, true, i16 - viewO.getMeasuredWidth(), Math.round(f3), i16, viewO.getMeasuredHeight() + Math.round(f3));
                                }
                                i8 = i16;
                            } else {
                                i9 = i9;
                                i7 = i7;
                                i8 = i16;
                                if (z2) {
                                    rh3Var.q(viewO, oh3Var2, false, paddingLeft, Math.round(f5) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f5));
                                } else {
                                    int i19 = paddingLeft;
                                    rh3Var.q(viewO, oh3Var2, false, i19, Math.round(f3), viewO.getMeasuredWidth() + i19, viewO.getMeasuredHeight() + Math.round(f3));
                                    paddingLeft = i19;
                                }
                            }
                            measuredHeight = f3 + viewO.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sh3Var).bottomMargin;
                            float measuredHeight2 = f5 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sh3Var).topMargin);
                            if (z2) {
                                oh3Var = oh3Var2;
                                oh3Var.b(viewO, 0, i11, 0, i10);
                            } else {
                                oh3Var = oh3Var2;
                                oh3Var.b(viewO, 0, i10, 0, i11);
                            }
                            oh3Var2 = oh3Var;
                            f = measuredHeight2;
                        }
                        i5 = i9 + 1;
                        c2 = c;
                        i18 = i7;
                        i16 = i8;
                    } else {
                        c = c2;
                    }
                    i9 = i5;
                    i7 = i7;
                    i8 = i16;
                    i5 = i9 + 1;
                    c2 = c;
                    i18 = i7;
                    i16 = i8;
                }
                int i20 = oh3Var2.g;
                paddingLeft += i20;
                i13 = i16 - i20;
            } else {
                int i21 = oh3Var2.e;
                f = i21 - paddingTop;
                measuredHeight = (i12 - i21) + paddingBottom;
            }
            f2 = 0.0f;
            fMax = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < oh3Var2.h) {
                i6 = oh3Var2.o + i5;
                i7 = i18;
                viewO = o(i6);
                if (viewO != null) {
                    c = c2;
                    if (viewO.getVisibility() == 8) {
                        sh3 sh3Var2 = (sh3) viewO.getLayoutParams();
                        f3 = measuredHeight + ((ViewGroup.MarginLayoutParams) sh3Var2).topMargin;
                        f4 = f - ((ViewGroup.MarginLayoutParams) sh3Var2).bottomMargin;
                        if (p(i6, i5)) {
                            i10 = this.r;
                            float f9 = i10;
                            f3 += f9;
                            f4 -= f9;
                        } else {
                            i10 = 0;
                        }
                        f5 = f4;
                        if (i5 == oh3Var2.h - i7) {
                            i11 = 0;
                        } else {
                            i11 = 0;
                        }
                        i9 = i5;
                        rh3Var = this.G;
                        if (z) {
                            if (z2) {
                                rh3Var.q(viewO, oh3Var2, true, i16 - viewO.getMeasuredWidth(), Math.round(f5) - viewO.getMeasuredHeight(), i16, Math.round(f5));
                            } else {
                                rh3Var.q(viewO, oh3Var2, true, i16 - viewO.getMeasuredWidth(), Math.round(f3), i16, viewO.getMeasuredHeight() + Math.round(f3));
                            }
                            i8 = i16;
                        } else {
                            i9 = i9;
                            i7 = i7;
                            i8 = i16;
                            if (z2) {
                                rh3Var.q(viewO, oh3Var2, false, paddingLeft, Math.round(f5) - viewO.getMeasuredHeight(), viewO.getMeasuredWidth() + paddingLeft, Math.round(f5));
                            } else {
                                int i110 = paddingLeft;
                                rh3Var.q(viewO, oh3Var2, false, i110, Math.round(f3), viewO.getMeasuredWidth() + i110, viewO.getMeasuredHeight() + Math.round(f3));
                                paddingLeft = i110;
                            }
                        }
                        measuredHeight = f3 + viewO.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sh3Var2).bottomMargin;
                        float measuredHeight3 = f5 - ((viewO.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sh3Var2).topMargin);
                        if (z2) {
                            oh3Var = oh3Var2;
                            oh3Var.b(viewO, 0, i11, 0, i10);
                        } else {
                            oh3Var = oh3Var2;
                            oh3Var.b(viewO, 0, i10, 0, i11);
                        }
                        oh3Var2 = oh3Var;
                        f = measuredHeight3;
                    }
                    i5 = i9 + 1;
                    c2 = c;
                    i18 = i7;
                    i16 = i8;
                } else {
                    c = c2;
                }
                i9 = i5;
                i7 = i7;
                i8 = i16;
                i5 = i9 + 1;
                c2 = c;
                i18 = i7;
                i16 = i8;
            }
            int i22 = oh3Var2.g;
            paddingLeft += i22;
            i13 = i16 - i22;
        }
    }

    public final void u(int i, int i2, int i3, int i4) {
        int paddingBottom;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        } else {
            if (i != 2 && i != 3) {
                c6.f(fz5.j(i, "Invalid flex direction: "));
                return;
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else if (mode != 1073741824) {
            l0.e(fz5.j(mode, "Unknown width mode is set: "));
            return;
        } else {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = paddingBottom;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i3, i4);
        } else if (mode2 != 1073741824) {
            l0.e(fz5.j(mode2, "Unknown height mode is set: "));
            return;
        } else {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // defpackage.mh3
    public final void i(View view, int i) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        sh3 sh3Var = new sh3(context, attributeSet);
        sh3Var.a = 1;
        sh3Var.b = 0.0f;
        sh3Var.c = 1.0f;
        sh3Var.d = -1;
        sh3Var.e = -1.0f;
        sh3Var.f = -1;
        sh3Var.k = -1;
        sh3Var.n = 16777215;
        sh3Var.p = 16777215;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sd6.b);
        sh3Var.a = typedArrayObtainStyledAttributes.getInt(8, 1);
        sh3Var.b = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        sh3Var.c = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        sh3Var.d = typedArrayObtainStyledAttributes.getInt(0, -1);
        sh3Var.e = typedArrayObtainStyledAttributes.getFraction(1, 1, 1, -1.0f);
        sh3Var.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        sh3Var.k = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, -1);
        sh3Var.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 16777215);
        sh3Var.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 16777215);
        sh3Var.q = typedArrayObtainStyledAttributes.getBoolean(9, false);
        typedArrayObtainStyledAttributes.recycle();
        return sh3Var;
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }
}
