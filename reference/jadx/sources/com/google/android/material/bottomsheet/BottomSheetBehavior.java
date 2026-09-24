package com.google.android.material.bottomsheet;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import defpackage.a85;
import defpackage.au0;
import defpackage.bu0;
import defpackage.c6;
import defpackage.c95;
import defpackage.cu0;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.du0;
import defpackage.ed;
import defpackage.eu0;
import defpackage.ew1;
import defpackage.f85;
import defpackage.fz5;
import defpackage.g6;
import defpackage.gl8;
import defpackage.gu0;
import defpackage.hw1;
import defpackage.i53;
import defpackage.iu0;
import defpackage.k55;
import defpackage.tb7;
import defpackage.td6;
import defpackage.tv8;
import defpackage.ub;
import defpackage.uc;
import defpackage.v5;
import defpackage.vk8;
import defpackage.w5;
import defpackage.wc4;
import defpackage.xj0;
import defpackage.yc9;
import defpackage.zt0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends ew1 implements a85 {
    public boolean A;
    public final iu0 B;
    public final ValueAnimator C;
    public final int D;
    public int E;
    public int F;
    public final float G;
    public int H;
    public final float I;
    public boolean J;
    public boolean K;
    public final boolean L;
    public final boolean M;
    public boolean N;
    public final boolean O;
    public int P;
    public gl8 Q;
    public boolean R;
    public int S;
    public boolean T;
    public final float U;
    public int V;
    public int W;
    public int X;
    public WeakReference Y;
    public final ArrayList Z;
    public final int a;
    public final ArrayList a0;
    public boolean b;
    public VelocityTracker b0;
    public final float c;
    public f85 c0;
    public final int d;
    public int d0;
    public final boolean e;
    public int e0;
    public int f;
    public WeakReference f0;
    public boolean g;
    public boolean g0;
    public int h;
    public HashMap h0;
    public final int i;
    public final SparseIntArray i0;
    public final c95 j;
    public final SparseIntArray j0;
    public final ColorStateList k;
    public final SparseIntArray k0;
    public final int l;
    public final Rect l0;
    public final int m;
    public final du0 m0;
    public int n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public int w;
    public int x;
    public final boolean y;
    public final tb7 z;

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        this.a = 0;
        this.b = true;
        this.l = -1;
        this.m = -1;
        this.B = new iu0(this);
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = true;
        this.O = true;
        this.P = 4;
        this.U = 0.1f;
        this.Z = new ArrayList();
        this.a0 = new ArrayList();
        this.e0 = -1;
        this.i0 = new SparseIntArray();
        this.j0 = new SparseIntArray();
        this.k0 = new SparseIntArray();
        this.l0 = new Rect();
        this.m0 = new du0(this, 0);
        this.i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.f);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.k = k55.m(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(24)) {
            this.z = tb7.h(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        tb7 tb7Var = this.z;
        if (tb7Var != null) {
            c95 c95Var = new c95(tb7Var);
            this.j = c95Var;
            c95Var.p(context);
            ColorStateList colorStateList = this.k;
            if (colorStateList != null) {
                this.j.t(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.j.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(y(), 1.0f);
        this.C = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.C.addUpdateListener(new bu0(this));
        this.I = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(12);
        if (typedValuePeekValue == null || (i = typedValuePeekValue.data) != -1) {
            K(typedArrayObtainStyledAttributes.getDimensionPixelSize(12, -1));
        } else {
            K(i);
        }
        J(typedArrayObtainStyledAttributes.getBoolean(10, false));
        this.o = typedArrayObtainStyledAttributes.getBoolean(16, false);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(8, true);
        if (this.b != z) {
            this.b = z;
            if (this.Y != null) {
                x();
            }
            M((this.b && this.P == 6) ? 3 : this.P);
            Q(this.P, true);
            P();
        }
        this.K = typedArrayObtainStyledAttributes.getBoolean(15, false);
        this.L = typedArrayObtainStyledAttributes.getBoolean(5, true);
        this.M = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.a = typedArrayObtainStyledAttributes.getInt(13, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(9, 0.5f);
        if (f <= 0.0f || f >= 1.0f) {
            c6.f("ratio must be a float value between 0 and 1");
            throw null;
        }
        this.G = f;
        if (this.Y != null) {
            this.F = (int) ((1.0f - f) * this.X);
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(7);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(7, 0);
            if (dimensionPixelOffset < 0) {
                c6.f("offset must be greater than or equal to 0");
                throw null;
            }
            this.D = dimensionPixelOffset;
            Q(this.P, true);
        } else {
            int i2 = typedValuePeekValue2.data;
            if (i2 < 0) {
                c6.f("offset must be greater than or equal to 0");
                throw null;
            }
            this.D = i2;
            Q(this.P, true);
        }
        this.d = typedArrayObtainStyledAttributes.getInt(14, 500);
        this.e = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.O = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.p = typedArrayObtainStyledAttributes.getBoolean(20, false);
        this.q = typedArrayObtainStyledAttributes.getBoolean(21, false);
        this.r = typedArrayObtainStyledAttributes.getBoolean(22, false);
        this.s = typedArrayObtainStyledAttributes.getBoolean(23, true);
        this.t = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.u = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.v = typedArrayObtainStyledAttributes.getBoolean(19, false);
        this.y = typedArrayObtainStyledAttributes.getBoolean(26, true);
        typedArrayObtainStyledAttributes.recycle();
        this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static View B(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewB = B(viewGroup.getChildAt(i));
            if (viewB != null) {
                return viewB;
            }
        }
        return null;
    }

    public static BottomSheetBehavior C(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof hw1)) {
            c6.f("The view is not a child of CoordinatorLayout");
            return null;
        }
        ew1 ew1Var = ((hw1) layoutParams).a;
        if (ew1Var instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) ew1Var;
        }
        c6.f("The view is not associated with BottomSheetBehavior");
        return null;
    }

    public static int D(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
    }

    public final void A(int i) {
        View view = (View) this.Y.get();
        if (view != null) {
            ArrayList arrayList = this.a0;
            if (arrayList.isEmpty()) {
                return;
            }
            int i2 = this.H;
            if (i <= i2 && i2 != E()) {
                E();
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ((eu0) arrayList.get(i3)).b(view);
            }
        }
    }

    public final int E() {
        if (this.b) {
            return this.E;
        }
        return Math.max(this.D, this.s ? 0 : this.x);
    }

    public final int F(int i) {
        if (i == 3) {
            return E();
        }
        if (i == 4) {
            return this.H;
        }
        if (i == 5) {
            return this.X;
        }
        if (i == 6) {
            return this.F;
        }
        c6.f(fz5.j(i, "Invalid state to get top offset: "));
        return 0;
    }

    public final boolean G() {
        WeakReference weakReference = this.Y;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.Y.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean H(View view) {
        Iterator it = this.Z.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == view) {
                return true;
            }
        }
        return false;
    }

    public final void I(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        if (view.isNestedScrollingEnabled()) {
            this.Z.add(new WeakReference(view));
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                I(viewGroup.getChildAt(i));
            }
        }
    }

    public final void J(boolean z) {
        if (this.J != z) {
            this.J = z;
            if (!z && this.P == 5) {
                L(4);
            }
            P();
        }
    }

    public final void K(int i) {
        boolean z = this.g;
        if (i == -1) {
            if (z) {
                return;
            } else {
                this.g = true;
            }
        } else {
            if (!z && this.f == i) {
                return;
            }
            this.g = false;
            this.f = Math.max(0, i);
        }
        S();
    }

    public final void L(int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(dj7.n(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        if (!this.J && i == 5) {
            Log.w("BottomSheetBehavior", "Cannot set state: " + i);
            return;
        }
        int i2 = (i == 6 && this.b && F(i) <= this.E) ? 3 : i;
        WeakReference weakReference = this.Y;
        if (weakReference == null || weakReference.get() == null) {
            M(i);
            return;
        }
        View view = (View) this.Y.get();
        zt0 zt0Var = new zt0(this, view, i2);
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(zt0Var);
        } else {
            zt0Var.run();
        }
    }

    public final void M(int i) {
        View view;
        if (this.P == i) {
            return;
        }
        this.P = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.J;
        }
        WeakReference weakReference = this.Y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = 0;
        if (i == 3) {
            R(true);
        } else if (i == 6 || i == 5 || i == 4) {
            R(false);
        }
        Q(i, true);
        while (true) {
            ArrayList arrayList = this.a0;
            if (i2 >= arrayList.size()) {
                P();
                return;
            } else {
                ((eu0) arrayList.get(i2)).c(view, i);
                i2++;
            }
        }
    }

    public final boolean N(View view, float f) {
        if (this.K) {
            return true;
        }
        if (view.getTop() < this.H) {
            return false;
        }
        return Math.abs(((f * this.U) + ((float) view.getTop())) - ((float) this.H)) / ((float) z()) > 0.5f;
    }

    public final void O(View view, int i, boolean z) {
        int iF = F(i);
        gl8 gl8Var = this.Q;
        if (gl8Var == null || (!z ? gl8Var.r(view, view.getLeft(), iF) : gl8Var.p(view.getLeft(), iF))) {
            M(i);
            return;
        }
        M(2);
        Q(i, true);
        this.B.a(i);
    }

    public final void P() {
        View view;
        WeakReference weakReference = this.Y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        dl8.k(view, 1048576);
        dl8.h(view, 0);
        dl8.k(view, 524288);
        dl8.h(view, 0);
        dl8.k(view, 262144);
        dl8.h(view, 0);
        SparseIntArray sparseIntArray = this.j0;
        int i = sparseIntArray.get(0, -1);
        if (i != -1) {
            dl8.k(view, i);
            dl8.h(view, 0);
            sparseIntArray.delete(0);
        }
        SparseIntArray sparseIntArray2 = this.i0;
        int i2 = sparseIntArray2.get(0, -1);
        if (i2 != -1) {
            dl8.k(view, i2);
            dl8.h(view, 0);
            sparseIntArray2.delete(0);
        }
        SparseIntArray sparseIntArray3 = this.k0;
        int i3 = sparseIntArray3.get(0, -1);
        if (i3 != -1) {
            dl8.k(view, i3);
            dl8.h(view, 0);
            sparseIntArray3.delete(0);
        }
        if (!this.b && this.P != 6) {
            sparseIntArray2.put(0, w(view, R.string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.J && this.P != 5) {
            dl8.l(view, g6.k, new ub(this, 5));
        }
        int i4 = this.P;
        if (i4 == 3) {
            if (this.K && this.J) {
                return;
            }
            sparseIntArray3.put(0, w(view, R.string.bottomsheet_action_collapse, 4));
            return;
        }
        if (i4 == 4) {
            sparseIntArray.put(0, w(view, R.string.bottomsheet_action_expand, 3));
        } else {
            if (i4 != 6) {
                return;
            }
            if (!this.K || !this.J) {
                sparseIntArray3.put(0, w(view, R.string.bottomsheet_action_collapse, 4));
            }
            sparseIntArray.put(0, w(view, R.string.bottomsheet_action_expand, 3));
        }
    }

    public final void Q(int i, boolean z) {
        c95 c95Var;
        if (i == 2) {
            return;
        }
        boolean z2 = this.P == 3 && (this.y || G());
        if (this.A == z2 || (c95Var = this.j) == null) {
            return;
        }
        this.A = z2;
        ValueAnimator valueAnimator = this.C;
        if (!z || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            c95Var.u(this.A ? y() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(c95Var.b.j, z2 ? y() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void R(boolean z) {
        WeakReference weakReference = this.Y;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.h0 != null) {
                    return;
                } else {
                    this.h0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.Y.get() && z) {
                    this.h0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.h0 = null;
        }
    }

    public final void S() {
        View view;
        if (this.Y != null) {
            x();
            if (this.P != 4 || (view = (View) this.Y.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // defpackage.a85
    public final void a() {
        f85 f85Var = this.c0;
        if (f85Var == null) {
            return;
        }
        int i = f85Var.d;
        int i2 = f85Var.c;
        xj0 xj0Var = f85Var.f;
        f85Var.f = null;
        if (xj0Var != null) {
            float f = xj0Var.c;
            if (Build.VERSION.SDK_INT >= 34) {
                if (!this.J) {
                    AnimatorSet animatorSetA = f85Var.a();
                    animatorSetA.setDuration(ed.c(f, i2, i));
                    animatorSetA.start();
                    L(4);
                    return;
                }
                au0 au0Var = new au0(this, 0);
                View view = f85Var.b;
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getScaleY() * view.getHeight());
                objectAnimatorOfFloat.setInterpolator(new i53());
                objectAnimatorOfFloat.setDuration(ed.c(f, i2, i));
                objectAnimatorOfFloat.addListener(new uc(f85Var, 1));
                objectAnimatorOfFloat.addListener(au0Var);
                objectAnimatorOfFloat.start();
                return;
            }
        }
        L(this.J ? 5 : 4);
    }

    @Override // defpackage.a85
    public final void b(xj0 xj0Var) {
        f85 f85Var = this.c0;
        if (f85Var == null) {
            return;
        }
        if (f85Var.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        xj0 xj0Var2 = f85Var.f;
        f85Var.f = xj0Var;
        if (xj0Var2 == null) {
            return;
        }
        f85Var.b(xj0Var.c);
    }

    @Override // defpackage.a85
    public final void c(xj0 xj0Var) {
        f85 f85Var = this.c0;
        if (f85Var == null) {
            return;
        }
        f85Var.f = xj0Var;
    }

    @Override // defpackage.a85
    public final void d() {
        f85 f85Var = this.c0;
        if (f85Var == null) {
            return;
        }
        if (f85Var.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        xj0 xj0Var = f85Var.f;
        f85Var.f = null;
        if (xj0Var == null) {
            return;
        }
        AnimatorSet animatorSetA = f85Var.a();
        animatorSetA.setDuration(f85Var.e);
        animatorSetA.start();
    }

    @Override // defpackage.ew1
    public final void g(hw1 hw1Var) {
        this.Y = null;
        this.Q = null;
        this.c0 = null;
    }

    @Override // defpackage.ew1
    public final void j() {
        this.Y = null;
        this.Q = null;
        this.c0 = null;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x0124  */
    @Override // defpackage.ew1
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        View view2;
        int i;
        gl8 gl8Var;
        if (!view.isShown() || !this.L) {
            this.R = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = null;
            VelocityTracker velocityTracker = this.b0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.b0 = null;
            }
        }
        if (this.b0 == null) {
            this.b0 = VelocityTracker.obtain();
        }
        this.b0.addMovement(motionEvent);
        ArrayList arrayList = this.Z;
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.e0 = (int) motionEvent.getY();
            int x2 = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        view2 = null;
                        break;
                    }
                    view2 = (View) ((WeakReference) it.next()).get();
                    if (view2 != null && coordinatorLayout.p(view2, x2, y)) {
                        break;
                    }
                }
            } else {
                view2 = null;
                break;
            }
            WeakReference weakReference = new WeakReference(view2);
            this.f0 = weakReference;
            if (this.P != 2 && weakReference.get() != null) {
                this.d0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.g0 = true;
            }
            this.R = this.d0 == -1 && !coordinatorLayout.p(view, x, this.e0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.g0 = false;
            this.f0 = null;
            this.d0 = -1;
            if (this.R) {
                this.R = false;
                return false;
            }
        }
        if (this.R || (gl8Var = this.Q) == null || !gl8Var.q(motionEvent)) {
            if (actionMasked == 2) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (((WeakReference) it2.next()).get() != null) {
                        if (!this.R && this.P != 1) {
                            if (!this.e) {
                                View view3 = arrayList.isEmpty() ? null : (View) ((WeakReference) arrayList.get(0)).get();
                                if (view3 != null && coordinatorLayout.p(view3, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                                    break;
                                }
                                if (this.Q == null) {
                                    break;
                                }
                            } else {
                                WeakReference weakReference2 = this.f0;
                                if (weakReference2 != null && weakReference2.get() != null) {
                                    break;
                                }
                                if (this.Q == null || (i = this.e0) == -1 || Math.abs(i - motionEvent.getY()) <= this.Q.b) {
                                    break;
                                }
                            }
                        } else {
                            break;
                            break;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // defpackage.ew1
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int i2 = 0;
        if (this.Y == null) {
            this.h = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z = (Build.VERSION.SDK_INT < 29 || this.o || this.g) ? false : true;
            if (this.p || this.q || this.r || this.t || this.u || this.v || z) {
                yc9.k(view, new cu0(this, z));
            }
            dl8.p(view, new wc4(view));
            this.Y = new WeakReference(view);
            this.c0 = new f85(view);
            c95 c95Var = this.j;
            if (c95Var != null) {
                view.setBackground(c95Var);
                float elevation = this.I;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                c95Var.s(elevation);
            } else {
                ColorStateList colorStateList = this.k;
                if (colorStateList != null) {
                    view.setBackgroundTintList(colorStateList);
                }
            }
            P();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.Q == null) {
            this.Q = new gl8(coordinatorLayout.getContext(), coordinatorLayout, this.m0);
        }
        int top = view.getTop();
        coordinatorLayout.r(view, i);
        this.W = coordinatorLayout.getWidth();
        this.X = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.V = height;
        int iMin = this.X;
        int i3 = iMin - height;
        int i4 = this.x;
        if (i3 < i4) {
            boolean z2 = this.s;
            int i5 = this.m;
            if (z2) {
                if (i5 != -1) {
                    iMin = Math.min(iMin, i5);
                }
                this.V = iMin;
            } else {
                int iMin2 = iMin - i4;
                if (i5 != -1) {
                    iMin2 = Math.min(iMin2, i5);
                }
                this.V = iMin2;
            }
        }
        this.E = Math.max(0, this.X - this.V);
        this.F = (int) ((1.0f - this.G) * this.X);
        x();
        int i6 = this.P;
        if (i6 == 3) {
            int iE = E();
            WeakHashMap weakHashMap = dl8.a;
            view.offsetTopAndBottom(iE);
        } else if (i6 == 6) {
            int i7 = this.F;
            WeakHashMap weakHashMap2 = dl8.a;
            view.offsetTopAndBottom(i7);
        } else if (this.J && i6 == 5) {
            int i8 = this.X;
            WeakHashMap weakHashMap3 = dl8.a;
            view.offsetTopAndBottom(i8);
        } else if (i6 == 4) {
            int i9 = this.H;
            WeakHashMap weakHashMap4 = dl8.a;
            view.offsetTopAndBottom(i9);
        } else if (i6 == 1 || i6 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap5 = dl8.a;
            view.offsetTopAndBottom(top2);
        }
        Q(this.P, false);
        ArrayList arrayList = this.Z;
        arrayList.clear();
        if (this.e) {
            I(view);
        } else {
            arrayList.add(new WeakReference(B(view)));
        }
        while (true) {
            ArrayList arrayList2 = this.a0;
            if (i2 >= arrayList2.size()) {
                return true;
            }
            ((eu0) arrayList2.get(i2)).a(view);
            i2++;
        }
    }

    @Override // defpackage.ew1
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(D(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.l, marginLayoutParams.width), D(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.m, marginLayoutParams.height));
        return true;
    }

    @Override // defpackage.ew1
    public final boolean n(View view) {
        Iterator it = this.Z.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() != null) {
                if (!H(view) || this.P == 3 || this.N) {
                    break;
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ew1
    public final void o(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        boolean zH;
        if (i3 != 1 && (zH = H(view2))) {
            int top = view.getTop();
            int i4 = top - i2;
            boolean z = this.L;
            boolean z2 = this.M;
            if (i2 > 0) {
                if (!this.T && !z2 && zH && view2.canScrollVertically(1)) {
                    this.N = true;
                    return;
                }
                if (i4 < E()) {
                    int iE = top - E();
                    iArr[1] = iE;
                    WeakHashMap weakHashMap = dl8.a;
                    view.offsetTopAndBottom(-iE);
                    M(3);
                } else {
                    if (!z) {
                        return;
                    }
                    iArr[1] = i2;
                    WeakHashMap weakHashMap2 = dl8.a;
                    view.offsetTopAndBottom(-i2);
                    M(1);
                }
            } else if (i2 < 0) {
                boolean zCanScrollVertically = view2.canScrollVertically(-1);
                if (!this.T && !z2 && zH && zCanScrollVertically) {
                    this.N = true;
                    return;
                }
                if (!zCanScrollVertically) {
                    int i5 = this.H;
                    if (i4 > i5 && !this.J) {
                        int i6 = top - i5;
                        iArr[1] = i6;
                        WeakHashMap weakHashMap3 = dl8.a;
                        view.offsetTopAndBottom(-i6);
                        M(4);
                    } else {
                        if (!z) {
                            return;
                        }
                        iArr[1] = i2;
                        WeakHashMap weakHashMap4 = dl8.a;
                        view.offsetTopAndBottom(-i2);
                        M(1);
                    }
                }
            }
            A(view.getTop());
            this.S = i2;
            this.T = true;
            this.N = false;
        }
    }

    @Override // defpackage.ew1
    public final boolean q(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
        if (!this.O || view.isInTouchMode()) {
            return false;
        }
        int i = this.P;
        if (i != 4 && i != 6) {
            return false;
        }
        Rect rect2 = this.l0;
        if (view.getLocalVisibleRect(rect2)) {
            WeakHashMap weakHashMap = dl8.a;
            tv8 tv8VarA = vk8.a(view);
            if (tv8VarA != null) {
                rect2.bottom -= tv8VarA.a.h(519).d;
            }
            if (rect.top >= rect2.top && rect.bottom <= rect2.bottom) {
                return false;
            }
        }
        L(3);
        return true;
    }

    @Override // defpackage.ew1
    public final void r(View view, Parcelable parcelable) {
        gu0 gu0Var = (gu0) parcelable;
        int i = this.a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.f = gu0Var.d;
            }
            if (i == -1 || (i & 2) == 2) {
                this.b = gu0Var.e;
            }
            if (i == -1 || (i & 4) == 4) {
                this.J = gu0Var.f;
            }
            if (i == -1 || (i & 8) == 8) {
                this.K = gu0Var.k;
            }
        }
        int i2 = gu0Var.c;
        if (i2 == 1 || i2 == 2) {
            this.P = 4;
        } else {
            this.P = i2;
        }
    }

    @Override // defpackage.ew1
    public final Parcelable s(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new gu0(this);
    }

    @Override // defpackage.ew1
    public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2) {
        this.S = 0;
        this.T = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0070  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:46:0x0095  */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa  */
    @Override // defpackage.ew1
    public final void u(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
        int top;
        int top2;
        int i2;
        float yVelocity;
        int i3 = 3;
        if (view.getTop() == E()) {
            M(3);
            return;
        }
        if (H(view2) && this.T) {
            if (this.S > 0) {
                if (!this.b && view.getTop() > this.F) {
                    i3 = 6;
                }
            } else if (this.J) {
                VelocityTracker velocityTracker = this.b0;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, this.c);
                    yVelocity = this.b0.getYVelocity(this.d0);
                }
                if (N(view, yVelocity)) {
                    i3 = 5;
                } else if (this.S == 0) {
                    top2 = view.getTop();
                    if (this.b) {
                        i2 = this.F;
                        if (top2 < i2) {
                            if (top2 >= Math.abs(top2 - this.H)) {
                            }
                        } else if (Math.abs(top2 - i2) < Math.abs(top2 - this.H)) {
                            i3 = 4;
                        }
                        i3 = 6;
                    } else if (Math.abs(top2 - this.E) >= Math.abs(top2 - this.H)) {
                        i3 = 4;
                    }
                } else {
                    if (!this.b) {
                        top = view.getTop();
                        if (Math.abs(top - this.F) < Math.abs(top - this.H)) {
                            i3 = 6;
                        }
                    }
                    i3 = 4;
                }
            } else if (this.S == 0) {
                top2 = view.getTop();
                if (this.b) {
                    i2 = this.F;
                    if (top2 < i2) {
                        if (top2 >= Math.abs(top2 - this.H)) {
                        }
                    } else if (Math.abs(top2 - i2) < Math.abs(top2 - this.H)) {
                        i3 = 4;
                    }
                    i3 = 6;
                } else if (Math.abs(top2 - this.E) >= Math.abs(top2 - this.H)) {
                    i3 = 4;
                }
            } else {
                if (!this.b) {
                    top = view.getTop();
                    if (Math.abs(top - this.F) < Math.abs(top - this.H)) {
                        i3 = 6;
                    }
                }
                i3 = 4;
            }
            O(view, i3, false);
            this.T = false;
        }
    }

    @Override // defpackage.ew1
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.P;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        gl8 gl8Var = this.Q;
        boolean z = this.L;
        if (gl8Var != null && (z || i == 1)) {
            gl8Var.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.d0 = -1;
            this.e0 = -1;
            this.f0 = null;
            VelocityTracker velocityTracker = this.b0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.b0 = null;
            }
        }
        if (this.b0 == null) {
            this.b0 = VelocityTracker.obtain();
        }
        this.b0.addMovement(motionEvent);
        if (this.Q != null && ((z || this.P == 1) && actionMasked == 2 && !this.R)) {
            float fAbs = Math.abs(this.e0 - motionEvent.getY());
            gl8 gl8Var2 = this.Q;
            if (fAbs > gl8Var2.b) {
                gl8Var2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.R;
    }

    public final int w(View view, int i, int i2) {
        int iA;
        String string = view.getResources().getString(i);
        ub ubVar = new ub(this, i2);
        ArrayList arrayListF = dl8.f(view);
        int i3 = 0;
        while (true) {
            if (i3 >= arrayListF.size()) {
                int i4 = 0;
                int i5 = -1;
                while (true) {
                    int[] iArr = dl8.d;
                    if (i4 >= 32 || i5 != -1) {
                        break;
                    }
                    int i6 = iArr[i4];
                    boolean z = true;
                    for (int i7 = 0; i7 < arrayListF.size(); i7++) {
                        z &= ((g6) arrayListF.get(i7)).a() != i6;
                    }
                    if (z) {
                        i5 = i6;
                    }
                    i4++;
                }
                iA = i5;
                break;
            }
            if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((g6) arrayListF.get(i3)).a).getLabel())) {
                iA = ((g6) arrayListF.get(i3)).a();
                break;
            }
            i3++;
        }
        if (iA != -1) {
            g6 g6Var = new g6(null, iA, string, ubVar, null);
            View.AccessibilityDelegate accessibilityDelegateD = dl8.d(view);
            w5 w5Var = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof v5 ? ((v5) accessibilityDelegateD).a : new w5(accessibilityDelegateD);
            if (w5Var == null) {
                w5Var = new w5();
            }
            dl8.n(view, w5Var);
            dl8.k(view, g6Var.a());
            dl8.f(view).add(g6Var);
            dl8.h(view, 0);
        }
        return iA;
    }

    public final void x() {
        int iZ = z();
        boolean z = this.b;
        int i = this.X;
        if (z) {
            this.H = Math.max(i - iZ, this.E);
        } else {
            this.H = i - iZ;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    public final float y() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f;
        float f2 = 0.0f;
        c95 c95Var = this.j;
        if (c95Var != null && (weakReference = this.Y) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.Y.get();
            if (G() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                float fM = c95Var.m();
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    if (radius <= 0.0f || fM <= 0.0f) {
                        f = 0.0f;
                    } else {
                        f = radius / fM;
                    }
                } else {
                    f = 0.0f;
                }
                float[] fArr = c95Var.U;
                float fA = fArr != null ? fArr[0] : c95Var.b.a.d().f.a(c95Var.i());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > 0.0f && fA > 0.0f) {
                        f2 = radius2 / fA;
                    }
                }
                return Math.max(f, f2);
            }
        }
        return 0.0f;
    }

    public final int z() {
        int iMin;
        int i;
        int i2;
        if (this.g) {
            iMin = Math.min(Math.max(this.h, this.X - ((this.W * 9) / 16)), this.V);
            i = this.w;
        } else {
            if (!this.o && !this.p && (i2 = this.n) > 0) {
                return Math.max(this.f, i2 + this.i);
            }
            iMin = this.f;
            i = this.w;
        }
        return iMin + i;
    }

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.l = -1;
        this.m = -1;
        this.B = new iu0(this);
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = true;
        this.O = true;
        this.P = 4;
        this.U = 0.1f;
        this.Z = new ArrayList();
        this.a0 = new ArrayList();
        this.e0 = -1;
        this.i0 = new SparseIntArray();
        this.j0 = new SparseIntArray();
        this.k0 = new SparseIntArray();
        this.l0 = new Rect();
        this.m0 = new du0(this, 0);
    }

    @Override // defpackage.ew1
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }
}
