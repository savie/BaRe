package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.aq2;
import defpackage.av4;
import defpackage.b6;
import defpackage.bh6;
import defpackage.c36;
import defpackage.c6;
import defpackage.cf2;
import defpackage.ch6;
import defpackage.d6;
import defpackage.dg7;
import defpackage.dh6;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.e6;
import defpackage.ee6;
import defpackage.eh6;
import defpackage.f6;
import defpackage.fh6;
import defpackage.fl1;
import defpackage.fl2;
import defpackage.fm5;
import defpackage.g84;
import defpackage.gg6;
import defpackage.gm5;
import defpackage.hg6;
import defpackage.hh6;
import defpackage.hu0;
import defpackage.j61;
import defpackage.ji8;
import defpackage.kg6;
import defpackage.km5;
import defpackage.l0;
import defpackage.la;
import defpackage.lg6;
import defpackage.ln5;
import defpackage.m0;
import defpackage.mg6;
import defpackage.ng6;
import defpackage.og6;
import defpackage.om5;
import defpackage.qg6;
import defpackage.r53;
import defpackage.rb;
import defpackage.rg6;
import defpackage.rl8;
import defpackage.ru3;
import defpackage.s79;
import defpackage.sg6;
import defpackage.tg6;
import defpackage.tu3;
import defpackage.ug6;
import defpackage.v15;
import defpackage.vg6;
import defpackage.w9;
import defpackage.wg6;
import defpackage.x9;
import defpackage.xg6;
import defpackage.xk8;
import defpackage.y5;
import defpackage.yg6;
import defpackage.zh8;
import defpackage.zm5;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements fm5 {
    public static boolean S0 = false;
    public static boolean T0 = false;
    public static final int[] U0 = {R.attr.nestedScrollingEnabled};
    public static final float V0 = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final boolean W0 = true;
    public static final boolean X0 = true;
    public static final Class[] Y0;
    public static final gg6 Z0;
    public static final ch6 a1;
    public boolean A0;
    public boolean B0;
    public final ln5 C0;
    public boolean D0;
    public hh6 E0;
    public final int[] F0;
    public final ArrayList G;
    public gm5 G0;
    public final ArrayList H;
    public final int[] H0;
    public final ArrayList I;
    public final int[] I0;
    public r53 J;
    public final int[] J0;
    public boolean K;
    public final ArrayList K0;
    public boolean L;
    public final aq2 L0;
    public boolean M;
    public boolean M0;
    public int N;
    public int N0;
    public boolean O;
    public int O0;
    public boolean P;
    public final boolean P0;
    public boolean Q;
    public final km5 Q0;
    public int R;
    public final fl2 R0;
    public boolean S;
    public final AccessibilityManager T;
    public boolean U;
    public boolean V;
    public int W;
    public final float a;
    public int a0;
    public final xg6 b;
    public lg6 b0;
    public final vg6 c;
    public EdgeEffect c0;
    public yg6 d;
    public EdgeEffect d0;
    public final x9 e;
    public EdgeEffect e0;
    public final j61 f;
    public EdgeEffect f0;
    public ng6 g0;
    public int h0;
    public int i0;
    public VelocityTracker j0;
    public final la k;
    public int k0;
    public int l0;
    public int m0;
    public boolean n;
    public int n0;
    public int o0;
    public final hu0 p;
    public final int p0;
    public final Rect q;
    public final int q0;
    public final Rect r;
    public final float r0;
    public final float s0;
    public final RectF t;
    public boolean t0;
    public final eh6 u0;
    public tu3 v0;
    public final ru3 w0;
    public hg6 x;
    public final bh6 x0;
    public a y;
    public sg6 y0;
    public ArrayList z0;

    static {
        Class cls = Integer.TYPE;
        Y0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        Z0 = new gg6();
        a1 = new ch6();
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        int i2;
        Constructor constructor;
        Object[] objArr;
        super(context, attributeSet, i);
        this.b = new xg6(this);
        this.c = new vg6(this);
        this.k = new la(10);
        int i3 = 2;
        this.p = new hu0(this, i3);
        this.q = new Rect();
        this.r = new Rect();
        this.t = new RectF();
        this.G = new ArrayList();
        this.H = new ArrayList();
        this.I = new ArrayList();
        int i4 = 0;
        this.N = 0;
        this.U = false;
        this.V = false;
        this.W = 0;
        this.a0 = 0;
        this.b0 = a1;
        cf2 cf2Var = new cf2();
        cf2Var.a = null;
        cf2Var.b = new ArrayList();
        cf2Var.c = 120L;
        cf2Var.d = 120L;
        cf2Var.e = 250L;
        cf2Var.f = 250L;
        cf2Var.g = true;
        cf2Var.h = new ArrayList();
        cf2Var.i = new ArrayList();
        cf2Var.j = new ArrayList();
        cf2Var.k = new ArrayList();
        cf2Var.l = new ArrayList();
        cf2Var.m = new ArrayList();
        cf2Var.n = new ArrayList();
        cf2Var.o = new ArrayList();
        cf2Var.p = new ArrayList();
        cf2Var.q = new ArrayList();
        cf2Var.r = new ArrayList();
        this.g0 = cf2Var;
        this.h0 = 0;
        this.i0 = -1;
        this.r0 = Float.MIN_VALUE;
        this.s0 = Float.MIN_VALUE;
        this.t0 = true;
        this.u0 = new eh6(this);
        this.w0 = X0 ? new ru3(i4) : null;
        bh6 bh6Var = new bh6();
        bh6Var.a = -1;
        bh6Var.b = 0;
        bh6Var.c = 0;
        bh6Var.d = 1;
        bh6Var.e = 0;
        bh6Var.f = false;
        bh6Var.g = false;
        bh6Var.h = false;
        bh6Var.i = false;
        bh6Var.j = false;
        bh6Var.k = false;
        this.x0 = bh6Var;
        this.A0 = false;
        this.B0 = false;
        ln5 ln5Var = new ln5(this, 11);
        this.C0 = ln5Var;
        this.D0 = false;
        this.F0 = new int[2];
        this.H0 = new int[2];
        this.I0 = new int[2];
        this.J0 = new int[2];
        this.K0 = new ArrayList();
        this.L0 = new aq2(this, i3);
        this.N0 = 0;
        this.O0 = 0;
        this.Q0 = new km5(this, 14);
        this.R0 = new fl2(getContext(), new s79(this, 6));
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o0 = viewConfiguration.getScaledTouchSlop();
        this.r0 = viewConfiguration.getScaledHorizontalScrollFactor();
        this.s0 = viewConfiguration.getScaledVerticalScrollFactor();
        this.p0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.g0.a = ln5Var;
        this.e = new x9(new rb(this, 21));
        this.f = new j61(new om5(this));
        WeakHashMap weakHashMap = dl8.a;
        if (xk8.a(this) == 0) {
            xk8.b(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.T = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new hh6(this));
        int[] iArr = ee6.a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        dl8.m(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.n = typedArrayObtainStyledAttributes.getBoolean(1, true);
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                c6.f("Trying to set fast scroller without both required drawables.".concat(A()));
                throw null;
            }
            Resources resources = getContext().getResources();
            i2 = 4;
            new r53(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.fastscroll_margin));
        } else {
            i2 = 4;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.P0 = context.getPackageManager().hasSystemFeature("android.hardware.rotaryencoder.lowres");
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                String str = strTrim;
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(a.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(Y0);
                        objArr = new Object[i2];
                        objArr[0] = context;
                        objArr[r12] = attributeSet;
                        objArr[2] = Integer.valueOf(i);
                        objArr[3] = 0;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((a) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    b6.d(attributeSet.getPositionDescription(), ": Class is not a LayoutManager ", str, e3);
                    throw null;
                } catch (ClassNotFoundException e4) {
                    b6.d(attributeSet.getPositionDescription(), ": Unable to find LayoutManager ", str, e4);
                    throw null;
                } catch (IllegalAccessException e5) {
                    b6.d(attributeSet.getPositionDescription(), ": Cannot access non-public constructor ", str, e5);
                    throw null;
                } catch (InstantiationException e6) {
                    b6.d(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e6);
                    throw null;
                } catch (InvocationTargetException e7) {
                    b6.d(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e7);
                    throw null;
                }
            }
        }
        int[] iArr2 = U0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        dl8.m(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i);
        boolean z = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z);
        setTag(org.swiftapps.swiftbackup.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static RecyclerView F(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView recyclerViewF = F(viewGroup.getChildAt(i));
            if (recyclerViewF != null) {
                return recyclerViewF;
            }
        }
        return null;
    }

    public static fh6 L(View view) {
        if (view == null) {
            return null;
        }
        return ((qg6) view.getLayoutParams()).a;
    }

    private gm5 getScrollingChildHelper() {
        if (this.G0 == null) {
            this.G0 = new gm5(this);
        }
        return this.G0;
    }

    public static void k(fh6 fh6Var) {
        WeakReference weakReference = fh6Var.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == fh6Var.a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            fh6Var.b = null;
        }
    }

    public static int n(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && zm5.o(edgeEffect) != 0.0f) {
            int iRound = Math.round(zm5.v(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (iRound != i) {
                edgeEffect.finish();
            }
            return i - iRound;
        }
        if (i >= 0 || edgeEffect2 == null || zm5.o(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int iRound2 = Math.round(zm5.v(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (iRound2 != i) {
            edgeEffect2.finish();
        }
        return i - iRound2;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        S0 = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        T0 = z;
    }

    public final String A() {
        return TokenAuthenticationScheme.SCHEME_DELIMITER + super.toString() + ", adapter:" + this.x + ", layout:" + this.y + ", context:" + getContext();
    }

    public final void B(bh6 bh6Var) {
        if (getScrollState() != 2) {
            bh6Var.getClass();
            return;
        }
        OverScroller overScroller = this.u0.c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        bh6Var.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public final View C(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0061 A[SYNTHETIC] */
    public final boolean D(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.I;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            r53 r53Var = (r53) arrayList.get(i);
            int i2 = r53Var.v;
            if (i2 == 1) {
                boolean zD = r53Var.d(motionEvent.getX(), motionEvent.getY());
                boolean zC = r53Var.c(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zD || zC)) {
                    if (zC) {
                        r53Var.w = 1;
                        r53Var.p = (int) motionEvent.getX();
                    } else if (zD) {
                        r53Var.w = 2;
                        r53Var.m = (int) motionEvent.getY();
                    }
                    r53Var.f(2);
                    if (action != 3) {
                        this.J = r53Var;
                        return true;
                    }
                }
            } else if (i2 != 2) {
                continue;
            } else if (action != 3) {
                this.J = r53Var;
                return true;
            }
        }
        return false;
    }

    public final void E(int[] iArr) {
        j61 j61Var = this.f;
        int iE = j61Var.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        for (int i3 = 0; i3 < iE; i3++) {
            fh6 fh6VarL = L(j61Var.d(i3));
            if (!fh6VarL.p()) {
                int iC = fh6VarL.c();
                if (iC < i) {
                    i = iC;
                }
                if (iC > i2) {
                    i2 = iC;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final fh6 G(int i) {
        fh6 fh6Var = null;
        if (this.U) {
            return null;
        }
        j61 j61Var = this.f;
        int iH = j61Var.h();
        for (int i2 = 0; i2 < iH; i2++) {
            fh6 fh6VarL = L(j61Var.g(i2));
            if (fh6VarL != null && !fh6VarL.i() && I(fh6VarL) == i) {
                if (!j61Var.c.contains(fh6VarL.a)) {
                    return fh6VarL;
                }
                fh6Var = fh6VarL;
            }
        }
        return fh6Var;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ba  */
    public final boolean H(int i, int i2, int i3, int i4) {
        int iMax;
        int i5;
        a aVar = this.y;
        if (aVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (!this.P) {
            boolean zO = aVar.o();
            boolean zP = this.y.p();
            if (!zO || Math.abs(i) < i3) {
                i = 0;
            }
            if (!zP || Math.abs(i2) < i3) {
                i2 = 0;
            }
            if (i != 0 || i2 != 0) {
                if (i == 0) {
                    iMax = 0;
                } else {
                    EdgeEffect edgeEffect = this.c0;
                    if (edgeEffect == null || zm5.o(edgeEffect) == 0.0f) {
                        EdgeEffect edgeEffect2 = this.e0;
                        if (edgeEffect2 == null || zm5.o(edgeEffect2) == 0.0f) {
                            iMax = 0;
                        } else if (g0(this.e0, i, getWidth())) {
                            this.e0.onAbsorb(i);
                            i = 0;
                        }
                    } else {
                        int i6 = -i;
                        if (g0(this.c0, i6, getWidth())) {
                            this.c0.onAbsorb(i6);
                            i = 0;
                        }
                    }
                    iMax = i;
                    i = 0;
                }
                if (i2 == 0) {
                    i5 = i2;
                    i2 = 0;
                } else {
                    EdgeEffect edgeEffect3 = this.d0;
                    if (edgeEffect3 == null || zm5.o(edgeEffect3) == 0.0f) {
                        EdgeEffect edgeEffect4 = this.f0;
                        if (edgeEffect4 == null || zm5.o(edgeEffect4) == 0.0f) {
                            i5 = i2;
                            i2 = 0;
                        } else if (g0(this.f0, i2, getHeight())) {
                            this.f0.onAbsorb(i2);
                            i2 = 0;
                        }
                    } else {
                        int i7 = -i2;
                        if (g0(this.d0, i7, getHeight())) {
                            this.d0.onAbsorb(i7);
                            i2 = 0;
                        }
                    }
                    i5 = 0;
                }
                eh6 eh6Var = this.u0;
                if (iMax != 0 || i2 != 0) {
                    int i8 = -i4;
                    iMax = Math.max(i8, Math.min(iMax, i4));
                    i2 = Math.max(i8, Math.min(i2, i4));
                    k0(1);
                    eh6Var.a(iMax, i2);
                }
                if (i != 0 || i5 != 0) {
                    float f = i;
                    float f2 = i5;
                    if (!dispatchNestedPreFling(f, f2)) {
                        boolean z = zO || zP;
                        dispatchNestedFling(f, f2, z);
                        if (z) {
                            k0(1);
                            int i9 = -i4;
                            eh6Var.a(Math.max(i9, Math.min(i, i4)), Math.max(i9, Math.min(i5, i4)));
                            return true;
                        }
                    }
                } else if (iMax != 0 || i2 != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int I(fh6 fh6Var) {
        if ((fh6Var.j & 524) == 0 && fh6Var.f()) {
            int i = fh6Var.c;
            ArrayList arrayList = this.e.b;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                w9 w9Var = (w9) arrayList.get(i2);
                int i3 = w9Var.a;
                if (i3 != 1) {
                    if (i3 == 2) {
                        int i4 = w9Var.b;
                        if (i4 <= i) {
                            int i5 = w9Var.d;
                            if (i4 + i5 <= i) {
                                i -= i5;
                            }
                        } else {
                            continue;
                        }
                    } else if (i3 == 8) {
                        int i6 = w9Var.b;
                        if (i6 == i) {
                            i = w9Var.d;
                        } else {
                            if (i6 < i) {
                                i--;
                            }
                            if (w9Var.d <= i) {
                                i++;
                            }
                        }
                    }
                } else if (w9Var.b <= i) {
                    i += w9Var.d;
                }
            }
            return i;
        }
        return -1;
    }

    public final long J(fh6 fh6Var) {
        return this.x.b ? fh6Var.e : fh6Var.c;
    }

    public final fh6 K(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return L(view);
        }
        y5.i("View ", view, " is not a direct child of ", this);
        return null;
    }

    public final Rect M(View view) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        boolean z = qg6Var.c;
        Rect rect = qg6Var.b;
        if (!z || (this.x0.g && (qg6Var.a.l() || qg6Var.a.g()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.q;
            rect2.set(0, 0, 0, 0);
            ((og6) arrayList.get(i)).a(rect2, view, this);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        qg6Var.c = false;
        return rect;
    }

    public final boolean N() {
        return !this.M || this.U || this.e.g();
    }

    public final boolean O() {
        return this.W > 0;
    }

    public final void P(int i) {
        if (this.y == null) {
            return;
        }
        setScrollState(2);
        this.y.D0(i);
        awakenScrollBars();
    }

    public final void Q() {
        j61 j61Var = this.f;
        int iH = j61Var.h();
        for (int i = 0; i < iH; i++) {
            ((qg6) j61Var.g(i).getLayoutParams()).c = true;
        }
        ArrayList arrayList = (ArrayList) this.c.e;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            qg6 qg6Var = (qg6) ((fh6) arrayList.get(i2)).a.getLayoutParams();
            if (qg6Var != null) {
                qg6Var.c = true;
            }
        }
    }

    public final void R(int i, int i2, boolean z) {
        int i3 = i + i2;
        j61 j61Var = this.f;
        int iH = j61Var.h();
        for (int i4 = 0; i4 < iH; i4++) {
            fh6 fh6VarL = L(j61Var.g(i4));
            if (fh6VarL != null && !fh6VarL.p()) {
                int i5 = fh6VarL.c;
                bh6 bh6Var = this.x0;
                if (i5 >= i3) {
                    if (T0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + fh6VarL + " now at position " + (fh6VarL.c - i2));
                    }
                    fh6VarL.m(-i2, z);
                    bh6Var.f = true;
                } else if (i5 >= i) {
                    if (T0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i4 + " holder " + fh6VarL + " now REMOVED");
                    }
                    fh6VarL.a(8);
                    fh6VarL.m(-i2, z);
                    fh6VarL.c = i - 1;
                    bh6Var.f = true;
                }
            }
        }
        vg6 vg6Var = this.c;
        ArrayList arrayList = (ArrayList) vg6Var.e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            fh6 fh6Var = (fh6) arrayList.get(size);
            if (fh6Var != null) {
                int i6 = fh6Var.c;
                if (i6 >= i3) {
                    if (T0) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + fh6Var + " now at position " + (fh6Var.c - i2));
                    }
                    fh6Var.m(-i2, z);
                } else if (i6 >= i) {
                    fh6Var.a(8);
                    vg6Var.h(size);
                }
            }
        }
        requestLayout();
    }

    public final void S() {
        this.W++;
    }

    public final void T(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.W - 1;
        this.W = i2;
        if (i2 < 1) {
            if (S0 && i2 < 0) {
                l0.e("layout or scroll counter cannot go below zero.Some calls are not matching".concat(A()));
                return;
            }
            this.W = 0;
            if (z) {
                int i3 = this.R;
                this.R = 0;
                if (i3 != 0 && (accessibilityManager = this.T) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(RSAKeyGenerator.MIN_KEY_SIZE_BITS);
                    accessibilityEventObtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.K0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    fh6 fh6Var = (fh6) arrayList.get(size);
                    if (fh6Var.a.getParent() == this && !fh6Var.p() && (i = fh6Var.q) != -1) {
                        fh6Var.a.setImportantForAccessibility(i);
                        fh6Var.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void U(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.i0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.i0 = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.m0 = x;
            this.k0 = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.n0 = y;
            this.l0 = y;
        }
    }

    public final void V() {
        if (this.D0 || !this.K) {
            return;
        }
        WeakHashMap weakHashMap = dl8.a;
        postOnAnimation(this.L0);
        this.D0 = true;
    }

    public final void W() {
        boolean z;
        boolean z2 = this.U;
        x9 x9Var = this.e;
        boolean z3 = false;
        if (z2) {
            x9Var.k(x9Var.b);
            x9Var.k(x9Var.c);
            x9Var.f = 0;
            if (this.V) {
                this.y.k0();
            }
        }
        if (this.g0 != null && this.y.P0()) {
            x9Var.j();
        } else {
            x9Var.c();
        }
        boolean z4 = this.A0 || this.B0;
        boolean z5 = this.M && this.g0 != null && ((z = this.U) || z4 || this.y.f) && (!z || this.x.b);
        bh6 bh6Var = this.x0;
        bh6Var.j = z5;
        if (z5 && z4 && !this.U && this.g0 != null && this.y.P0()) {
            z3 = true;
        }
        bh6Var.k = z3;
    }

    public final void X(boolean z) {
        this.V = z | this.V;
        this.U = true;
        j61 j61Var = this.f;
        int iH = j61Var.h();
        for (int i = 0; i < iH; i++) {
            fh6 fh6VarL = L(j61Var.g(i));
            if (fh6VarL != null && !fh6VarL.p()) {
                fh6VarL.a(6);
            }
        }
        Q();
        vg6 vg6Var = this.c;
        ArrayList arrayList = (ArrayList) vg6Var.e;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            fh6 fh6Var = (fh6) arrayList.get(i2);
            if (fh6Var != null) {
                fh6Var.a(6);
                fh6Var.a(1024);
            }
        }
        hg6 hg6Var = ((RecyclerView) vg6Var.h).x;
        if (hg6Var == null || !hg6Var.b) {
            vg6Var.g();
        }
    }

    public final void Y(fh6 fh6Var, mg6 mg6Var) {
        fh6Var.j &= -8193;
        boolean z = this.x0.h;
        la laVar = this.k;
        if (z && fh6Var.l() && !fh6Var.i() && !fh6Var.p()) {
            ((v15) laVar.b).e(fh6Var, J(fh6Var));
        }
        dg7 dg7Var = (dg7) laVar.a;
        rl8 rl8VarA = (rl8) dg7Var.get(fh6Var);
        if (rl8VarA == null) {
            rl8VarA = rl8.a();
            dg7Var.put(fh6Var, rl8VarA);
        }
        rl8VarA.b = mg6Var;
        rl8VarA.a |= 4;
    }

    public final void Z() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.c0;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.c0.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.d0;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.d0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.e0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.e0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f0.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public final int a0(int i, float f) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.c0;
        float f2 = 0.0f;
        if (edgeEffect == null || zm5.o(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.e0;
            if (edgeEffect2 != null && zm5.o(edgeEffect2) != 0.0f) {
                boolean zCanScrollHorizontally = canScrollHorizontally(1);
                EdgeEffect edgeEffect3 = this.e0;
                if (zCanScrollHorizontally) {
                    edgeEffect3.onRelease();
                } else {
                    float fV = zm5.v(edgeEffect3, width, height);
                    if (zm5.o(this.e0) == 0.0f) {
                        this.e0.onRelease();
                    }
                    f2 = fV;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollHorizontally2 = canScrollHorizontally(-1);
            EdgeEffect edgeEffect4 = this.c0;
            if (zCanScrollHorizontally2) {
                edgeEffect4.onRelease();
            } else {
                float f3 = -zm5.v(edgeEffect4, -width, 1.0f - height);
                if (zm5.o(this.c0) == 0.0f) {
                    this.c0.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        a aVar = this.y;
        if (aVar != null) {
            aVar.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final int b0(int i, float f) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.d0;
        float f2 = 0.0f;
        if (edgeEffect == null || zm5.o(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f0;
            if (edgeEffect2 != null && zm5.o(edgeEffect2) != 0.0f) {
                boolean zCanScrollVertically = canScrollVertically(1);
                EdgeEffect edgeEffect3 = this.f0;
                if (zCanScrollVertically) {
                    edgeEffect3.onRelease();
                } else {
                    float fV = zm5.v(edgeEffect3, height, 1.0f - width);
                    if (zm5.o(this.f0) == 0.0f) {
                        this.f0.onRelease();
                    }
                    f2 = fV;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollVertically2 = canScrollVertically(-1);
            EdgeEffect edgeEffect4 = this.d0;
            if (zCanScrollVertically2) {
                edgeEffect4.onRelease();
            } else {
                float f3 = -zm5.v(edgeEffect4, -height, width);
                if (zm5.o(this.d0) == 0.0f) {
                    this.d0.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    public final void c0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.q;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof qg6) {
            qg6 qg6Var = (qg6) layoutParams;
            if (!qg6Var.c) {
                Rect rect2 = qg6Var.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.y.A0(this, view, this.q, !this.M, view2 == null);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof qg6) && this.y.q((qg6) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        a aVar = this.y;
        if (aVar != null && aVar.o()) {
            return this.y.u(this.x0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        a aVar = this.y;
        if (aVar != null && aVar.o()) {
            return this.y.v(this.x0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        a aVar = this.y;
        if (aVar != null && aVar.o()) {
            return this.y.w(this.x0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        a aVar = this.y;
        if (aVar != null && aVar.p()) {
            return this.y.x(this.x0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        a aVar = this.y;
        if (aVar != null && aVar.p()) {
            return this.y.y(this.x0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        a aVar = this.y;
        if (aVar != null && aVar.p()) {
            return this.y.z(this.x0);
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00fe A[DONT_INVERT, PHI: r7
      0x00fe: PHI (r7v9 boolean) = (r7v7 boolean), (r7v10 boolean) binds: [B:33:0x00e5, B:31:0x00e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x0100  */
    /* JADX WARN: Code duplicated, block: B:40:0x0108  */
    /* JADX WARN: Code duplicated, block: B:43:0x0111  */
    public final boolean d0(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        boolean z2;
        boolean z3;
        o();
        hg6 hg6Var = this.x;
        int[] iArr = this.J0;
        if (hg6Var != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            e0(i, i2, iArr);
            i4 = iArr[0];
            i5 = iArr[1];
            i6 = i - i4;
            i7 = i2 - i5;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.H.isEmpty()) {
            invalidate();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        u(i4, i5, i6, i7, this.H0, i3, iArr);
        int i8 = iArr[0];
        int i9 = i6 - i8;
        int i10 = iArr[1];
        int i11 = i7 - i10;
        boolean z4 = (i8 == 0 && i10 == 0) ? false : true;
        int i12 = this.m0;
        int[] iArr2 = this.H0;
        int i13 = iArr2[0];
        this.m0 = i12 - i13;
        int i14 = this.n0;
        int i15 = iArr2[1];
        this.n0 = i14 - i15;
        int[] iArr3 = this.I0;
        iArr3[0] = iArr3[0] + i13;
        iArr3[1] = iArr3[1] + i15;
        if (getOverScrollMode() != 2) {
            if (motionEvent == null || zh8.v(motionEvent, 8194)) {
                z = true;
                z2 = false;
            } else {
                float x = motionEvent.getX();
                float f = i9;
                float y = motionEvent.getY();
                float f2 = i11;
                if (f < 0.0f) {
                    x();
                    z = true;
                    z2 = false;
                    zm5.v(this.c0, (-f) / getWidth(), 1.0f - (y / getHeight()));
                } else {
                    z = true;
                    z2 = false;
                    if (f > 0.0f) {
                        y();
                        zm5.v(this.e0, f / getWidth(), y / getHeight());
                    } else {
                        z3 = false;
                    }
                    if (f2 < 0.0f) {
                        z();
                        zm5.v(this.d0, (-f2) / getHeight(), x / getWidth());
                    } else if (f2 > 0.0f) {
                        w();
                        zm5.v(this.f0, f2 / getHeight(), 1.0f - (x / getWidth()));
                    } else {
                        if (z3 || f != 0.0f || f2 != 0.0f) {
                            postInvalidateOnAnimation();
                        }
                        if (Build.VERSION.SDK_INT >= 31 && zh8.v(motionEvent, 4194304)) {
                            Z();
                        }
                    }
                    z3 = z;
                    if (z3) {
                        postInvalidateOnAnimation();
                    } else {
                        postInvalidateOnAnimation();
                    }
                    if (Build.VERSION.SDK_INT >= 31) {
                        Z();
                    }
                }
                z3 = z;
                if (f2 < 0.0f) {
                    z();
                    zm5.v(this.d0, (-f2) / getHeight(), x / getWidth());
                } else if (f2 > 0.0f) {
                    w();
                    zm5.v(this.f0, f2 / getHeight(), 1.0f - (x / getWidth()));
                } else {
                    if (z3) {
                        postInvalidateOnAnimation();
                    } else {
                        postInvalidateOnAnimation();
                    }
                    if (Build.VERSION.SDK_INT >= 31) {
                        Z();
                    }
                }
                z3 = z;
                if (z3) {
                    postInvalidateOnAnimation();
                } else {
                    postInvalidateOnAnimation();
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    Z();
                }
            }
            m(i, i2);
        } else {
            z = true;
            z2 = false;
        }
        if (i4 != 0 || i5 != 0) {
            v(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i4 == 0 && i5 == 0) ? z2 : z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        a layoutManager = getLayoutManager();
        int iB = 0;
        if (layoutManager != null) {
            if (layoutManager.p()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        h0(0, measuredHeight, false);
                        return true;
                    }
                    h0(0, -measuredHeight, false);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean zW = layoutManager.W();
                    if (keyCode == 122) {
                        if (zW) {
                            iB = getAdapter().b();
                        }
                    } else if (!zW) {
                        iB = getAdapter().b();
                    }
                    i0(iB);
                    return true;
                }
            } else if (layoutManager.o()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        h0(measuredWidth, 0, false);
                        return true;
                    }
                    h0(-measuredWidth, 0, false);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean zW2 = layoutManager.W();
                    if (keyCode2 == 122) {
                        if (zW2) {
                            iB = getAdapter().b();
                        }
                    } else if (!zW2) {
                        iB = getAdapter().b();
                    }
                    i0(iB);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((og6) arrayList.get(i)).b(canvas, this);
        }
        EdgeEffect edgeEffect = this.c0;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.n ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.c0;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.d0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.n) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.d0;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.e0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.n ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.e0;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.n) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.g0 == null || arrayList.size() <= 0 || !this.g0.f()) ? z : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e0(int i, int i2, int[] iArr) {
        fh6 fh6Var;
        j0();
        S();
        Trace.beginSection("RV Scroll");
        bh6 bh6Var = this.x0;
        B(bh6Var);
        vg6 vg6Var = this.c;
        int iC0 = i != 0 ? this.y.C0(i, vg6Var, bh6Var) : 0;
        int iE0 = i2 != 0 ? this.y.E0(i2, vg6Var, bh6Var) : 0;
        Trace.endSection();
        j61 j61Var = this.f;
        int iE = j61Var.e();
        for (int i3 = 0; i3 < iE; i3++) {
            View viewD = j61Var.d(i3);
            fh6 fh6VarK = K(viewD);
            if (fh6VarK != null && (fh6Var = fh6VarK.i) != null) {
                View view = fh6Var.a;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        T(true);
        l0(false);
        if (iArr != null) {
            iArr[0] = iC0;
            iArr[1] = iE0;
        }
    }

    public final void f0(int i) {
        if (this.P) {
            return;
        }
        n0();
        a aVar = this.y;
        if (aVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            aVar.D0(i);
            awakenScrollBars();
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x015a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x015e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x0160  */
    /* JADX WARN: Code duplicated, block: B:114:0x0164  */
    /* JADX WARN: Code duplicated, block: B:116:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x016b  */
    /* JADX WARN: Code duplicated, block: B:120:0x0175 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0178 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x017b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x017e  */
    /* JADX WARN: Code duplicated, block: B:127:0x0180  */
    /* JADX WARN: Code duplicated, block: B:128:0x0182  */
    /* JADX WARN: Code duplicated, block: B:131:0x0186  */
    /* JADX WARN: Code duplicated, block: B:132:0x0188  */
    /* JADX WARN: Code duplicated, block: B:133:0x018a  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0112  */
    /* JADX WARN: Code duplicated, block: B:81:0x0114  */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0168, code lost:
    
        if (r16 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0175, code lost:
    
        if (r5 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0178, code lost:
    
        if (r16 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x017b, code lost:
    
        if (r5 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0183, code lost:
    
        if ((r5 * r6) <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x018b, code lost:
    
        if ((r5 * r6) >= 0) goto L136;
     */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r19, int r20) {
        /*
            Method dump skipped, instruction units count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(fh6 fh6Var) {
        View view = fh6Var.a;
        boolean z = view.getParent() == this;
        this.c.m(K(view));
        boolean zK = fh6Var.k();
        j61 j61Var = this.f;
        if (zK) {
            j61Var.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            j61Var.a(view, -1, true);
            return;
        }
        int iIndexOfChild = ((RecyclerView) j61Var.a.a).indexOfChild(view);
        if (iIndexOfChild < 0) {
            g84.k(view, "view is not a child, cannot hide ");
        } else {
            j61Var.b.h(iIndexOfChild);
            j61Var.i(view);
        }
    }

    public final boolean g0(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float fO = zm5.o(edgeEffect) * i2;
        float fAbs = Math.abs(-i) * 0.35f;
        float f = this.a * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d = V0;
        return ((float) (Math.exp((d / (d - 1.0d)) * dLog) * ((double) f))) < fO;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        a aVar = this.y;
        if (aVar != null) {
            return aVar.C();
        }
        l0.e("RecyclerView has no LayoutManager".concat(A()));
        return null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        a aVar = this.y;
        if (aVar != null) {
            return aVar.D(getContext(), attributeSet);
        }
        l0.e("RecyclerView has no LayoutManager".concat(A()));
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public hg6 getAdapter() {
        return this.x;
    }

    @Override // android.view.View
    public int getBaseline() {
        a aVar = this.y;
        if (aVar == null) {
            return super.getBaseline();
        }
        aVar.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.n;
    }

    public hh6 getCompatAccessibilityDelegate() {
        return this.E0;
    }

    public lg6 getEdgeEffectFactory() {
        return this.b0;
    }

    public ng6 getItemAnimator() {
        return this.g0;
    }

    public int getItemDecorationCount() {
        return this.H.size();
    }

    public a getLayoutManager() {
        return this.y;
    }

    public int getMaxFlingVelocity() {
        return this.q0;
    }

    public int getMinFlingVelocity() {
        return this.p0;
    }

    public long getNanoTime() {
        if (X0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public rg6 getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.t0;
    }

    public ug6 getRecycledViewPool() {
        return this.c.c();
    }

    public int getScrollState() {
        return this.h0;
    }

    public final void h(og6 og6Var) {
        a aVar = this.y;
        if (aVar != null) {
            aVar.m("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.H;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(og6Var);
        Q();
        requestLayout();
    }

    public final void h0(int i, int i2, boolean z) {
        a aVar = this.y;
        if (aVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.P) {
            return;
        }
        if (!aVar.o()) {
            i = 0;
        }
        if (!this.y.p()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            getScrollingChildHelper().g(i3, 1);
        }
        this.u0.c(i, i2, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, null);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(sg6 sg6Var) {
        if (this.z0 == null) {
            this.z0 = new ArrayList();
        }
        this.z0.add(sg6Var);
    }

    public final void i0(int i) {
        if (this.P) {
            return;
        }
        a aVar = this.y;
        if (aVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            aVar.N0(this, i);
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.K;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.P;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j(String str) {
        if (!O()) {
            if (this.a0 > 0) {
                Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(A()));
            }
        } else if (str == null) {
            l0.e("Cannot call this method while RecyclerView is computing a layout or scrolling".concat(A()));
        } else {
            l0.e(str);
        }
    }

    public final void j0() {
        int i = this.N + 1;
        this.N = i;
        if (i != 1 || this.P) {
            return;
        }
        this.O = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k0(int i) {
        boolean zO = this.y.o();
        int i2 = zO;
        if (this.y.p()) {
            i2 = (zO ? 1 : 0) | 2;
        }
        getScrollingChildHelper().g(i2, i);
    }

    public final void l() {
        j61 j61Var = this.f;
        int iH = j61Var.h();
        for (int i = 0; i < iH; i++) {
            fh6 fh6VarL = L(j61Var.g(i));
            if (!fh6VarL.p()) {
                fh6VarL.d = -1;
                fh6VarL.g = -1;
            }
        }
        vg6 vg6Var = this.c;
        ArrayList arrayList = (ArrayList) vg6Var.c;
        ArrayList arrayList2 = (ArrayList) vg6Var.e;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            fh6 fh6Var = (fh6) arrayList2.get(i2);
            fh6Var.d = -1;
            fh6Var.g = -1;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            fh6 fh6Var2 = (fh6) arrayList.get(i3);
            fh6Var2.d = -1;
            fh6Var2.g = -1;
        }
        ArrayList arrayList3 = (ArrayList) vg6Var.d;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                fh6 fh6Var3 = (fh6) ((ArrayList) vg6Var.d).get(i4);
                fh6Var3.d = -1;
                fh6Var3.g = -1;
            }
        }
    }

    public final void l0(boolean z) {
        if (this.N < 1) {
            if (S0) {
                l0.e("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.".concat(A()));
                return;
            }
            this.N = 1;
        }
        if (!z && !this.P) {
            this.O = false;
        }
        if (this.N == 1) {
            if (z && this.O && !this.P && this.y != null && this.x != null) {
                q();
            }
            if (!this.P) {
                this.O = false;
            }
        }
        this.N--;
    }

    public final void m(int i, int i2) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.c0;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            zIsFinished = false;
        } else {
            this.c0.onRelease();
            zIsFinished = this.c0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.e0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.e0.onRelease();
            zIsFinished |= this.e0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.d0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.d0.onRelease();
            zIsFinished |= this.d0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f0.onRelease();
            zIsFinished |= this.f0.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public final void m0(int i) {
        getScrollingChildHelper().h(i);
    }

    public final void n0() {
        av4 av4Var;
        setScrollState(0);
        eh6 eh6Var = this.u0;
        eh6Var.k.removeCallbacks(eh6Var);
        eh6Var.c.abortAnimation();
        a aVar = this.y;
        if (aVar == null || (av4Var = aVar.e) == null) {
            return;
        }
        av4Var.h();
    }

    public final void o() {
        if (!this.M || this.U) {
            Trace.beginSection("RV FullInvalidate");
            q();
            Trace.endSection();
            return;
        }
        x9 x9Var = this.e;
        if (x9Var.g()) {
            int i = x9Var.f;
            if ((i & 4) == 0 || (i & 11) != 0) {
                if (x9Var.g()) {
                    Trace.beginSection("RV FullInvalidate");
                    q();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection("RV PartialInvalidate");
            j0();
            S();
            x9Var.j();
            if (!this.O) {
                j61 j61Var = this.f;
                int iE = j61Var.e();
                for (int i2 = 0; i2 < iE; i2++) {
                    fh6 fh6VarL = L(j61Var.d(i2));
                    if (fh6VarL != null && !fh6VarL.p() && fh6VarL.l()) {
                        q();
                    }
                }
                x9Var.b();
            }
            l0(true);
            T(true);
            Trace.endSection();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.W = 0;
        this.K = true;
        this.M = this.M && !isLayoutRequested();
        this.c.e();
        a aVar = this.y;
        if (aVar != null) {
            aVar.k = true;
            aVar.c0(this);
        }
        this.D0 = false;
        if (X0) {
            ThreadLocal threadLocal = tu3.e;
            tu3 tu3Var = (tu3) threadLocal.get();
            this.v0 = tu3Var;
            if (tu3Var == null) {
                this.v0 = new tu3();
                WeakHashMap weakHashMap = dl8.a;
                Display display = getDisplay();
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                tu3 tu3Var2 = this.v0;
                tu3Var2.c = (long) (1.0E9f / refreshRate);
                threadLocal.set(tu3Var2);
            }
            ArrayList arrayList = this.v0.a;
            if (S0 && arrayList.contains(this)) {
                l0.e("RecyclerView already present in worker list!");
            } else {
                arrayList.add(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        tu3 tu3Var;
        super.onDetachedFromWindow();
        ng6 ng6Var = this.g0;
        if (ng6Var != null) {
            ng6Var.e();
        }
        n0();
        int i = 0;
        this.K = false;
        a aVar = this.y;
        if (aVar != null) {
            aVar.k = false;
            aVar.d0(this);
        }
        this.K0.clear();
        removeCallbacks(this.L0);
        this.k.getClass();
        while (rl8.d.d() != null) {
        }
        vg6 vg6Var = this.c;
        ArrayList arrayList = (ArrayList) vg6Var.e;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ji8.d(((fh6) arrayList.get(i2)).a);
        }
        vg6Var.f(((RecyclerView) vg6Var.h).x, false);
        while (i < getChildCount()) {
            int i3 = i + 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                l0.a();
                return;
            }
            c36 c36Var = (c36) childAt.getTag(org.swiftapps.swiftbackup.R.id.pooling_container_listener_holder_tag);
            if (c36Var == null) {
                c36Var = new c36();
                childAt.setTag(org.swiftapps.swiftbackup.R.id.pooling_container_listener_holder_tag, c36Var);
            }
            ArrayList arrayList2 = c36Var.a;
            int iZ0 = fl1.z0(arrayList2);
            if (-1 < iZ0) {
                arrayList2.get(iZ0).getClass();
                e6.d();
                return;
            }
            i = i3;
        }
        if (!X0 || (tu3Var = this.v0) == null) {
            return;
        }
        boolean zRemove = tu3Var.a.remove(this);
        if (!S0 || zRemove) {
            this.v0 = null;
        } else {
            l0.e("RecyclerView removal failed!");
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((og6) arrayList.get(i)).getClass();
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        int i;
        boolean z;
        if (this.y != null && !this.P && motionEvent.getAction() == 8) {
            float f = 0.0f;
            if ((motionEvent.getSource() & 2) != 0) {
                float f2 = this.y.p() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.y.o() ? motionEvent.getAxisValue(10) : 0.0f;
                i = 0;
                z = false;
                f = f2;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                axisValue = motionEvent.getAxisValue(26);
                if (this.y.p()) {
                    float f3 = -axisValue;
                    axisValue = 0.0f;
                    f = f3;
                } else if (!this.y.o()) {
                    axisValue = 0.0f;
                }
                i = 26;
                z = this.P0;
            } else {
                axisValue = 0.0f;
                i = 0;
                z = false;
            }
            int i2 = (int) (f * this.s0);
            int i3 = (int) (axisValue * this.r0);
            if (z) {
                OverScroller overScroller = this.u0.c;
                h0((overScroller.getFinalX() - overScroller.getCurrX()) + i3, (overScroller.getFinalY() - overScroller.getCurrY()) + i2, true);
            } else {
                a aVar = this.y;
                if (aVar == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.P) {
                    int[] iArr = this.J0;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean zO = aVar.o();
                    boolean zP = this.y.p();
                    int i4 = zP ? (zO ? 1 : 0) | 2 : zO ? 1 : 0;
                    float y = motionEvent.getY();
                    float x = motionEvent.getX();
                    int iA0 = i3 - a0(i3, y);
                    int iB0 = i2 - b0(i2, x);
                    getScrollingChildHelper().g(i4, 1);
                    if (t(zO ? iA0 : 0, zP ? iB0 : 0, 1, this.J0, this.H0)) {
                        iA0 -= iArr[0];
                        iB0 -= iArr[1];
                    }
                    d0(zO ? iA0 : 0, zP ? iB0 : 0, motionEvent, 1);
                    tu3 tu3Var = this.v0;
                    if (tu3Var != null && (iA0 != 0 || iB0 != 0)) {
                        tu3Var.a(this, iA0, iB0);
                    }
                    m0(1);
                }
            }
            if (i != 0 && !z) {
                this.R0.a(motionEvent, i);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.P) {
            this.J = null;
            if (D(motionEvent)) {
                VelocityTracker velocityTracker = this.j0;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                m0(0);
                Z();
                setScrollState(0);
                return true;
            }
            a aVar = this.y;
            if (aVar != null) {
                boolean zO = aVar.o();
                boolean zP = this.y.p();
                if (this.j0 == null) {
                    this.j0 = VelocityTracker.obtain();
                }
                this.j0.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.Q) {
                        this.Q = false;
                    }
                    this.i0 = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.m0 = x;
                    this.k0 = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.n0 = y;
                    this.l0 = y;
                    EdgeEffect edgeEffect = this.c0;
                    if (edgeEffect == null || zm5.o(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z = false;
                    } else {
                        zm5.v(this.c0, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    }
                    EdgeEffect edgeEffect2 = this.e0;
                    if (edgeEffect2 != null && zm5.o(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                        zm5.v(this.e0, 0.0f, motionEvent.getY() / getHeight());
                        z = true;
                    }
                    EdgeEffect edgeEffect3 = this.d0;
                    if (edgeEffect3 != null && zm5.o(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                        zm5.v(this.d0, 0.0f, motionEvent.getX() / getWidth());
                        z = true;
                    }
                    EdgeEffect edgeEffect4 = this.f0;
                    if (edgeEffect4 != null && zm5.o(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                        zm5.v(this.f0, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z = true;
                    }
                    if (z || this.h0 == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        m0(1);
                    }
                    int[] iArr = this.I0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    k0(0);
                } else if (actionMasked == 1) {
                    this.j0.clear();
                    m0(0);
                } else if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.i0);
                    if (iFindPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.i0 + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    if (this.h0 != 1) {
                        int i = x2 - this.k0;
                        int i2 = y2 - this.l0;
                        if (!zO || Math.abs(i) <= this.o0) {
                            z2 = false;
                        } else {
                            this.m0 = x2;
                            z2 = true;
                        }
                        if (zP && Math.abs(i2) > this.o0) {
                            this.n0 = y2;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker2 = this.j0;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    m0(0);
                    Z();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.i0 = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.m0 = x3;
                    this.k0 = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.n0 = y3;
                    this.l0 = y3;
                } else if (actionMasked == 6) {
                    U(motionEvent);
                }
                if (this.h0 == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("RV OnLayout");
        q();
        Trace.endSection();
        this.M = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        a aVar = this.y;
        if (aVar == null) {
            p(i, i2);
            return;
        }
        boolean zV = aVar.V();
        boolean z = false;
        bh6 bh6Var = this.x0;
        if (zV) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.y.b.p(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.M0 = z;
            if (z || this.x == null) {
                return;
            }
            if (bh6Var.d == 1) {
                r();
            }
            this.y.G0(i, i2);
            bh6Var.i = true;
            s();
            this.y.I0(i, i2);
            if (this.y.L0()) {
                this.y.G0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                bh6Var.i = true;
                s();
                this.y.I0(i, i2);
            }
            this.N0 = getMeasuredWidth();
            this.O0 = getMeasuredHeight();
            return;
        }
        if (this.L) {
            this.y.b.p(i, i2);
            return;
        }
        if (this.S) {
            j0();
            S();
            W();
            T(true);
            if (bh6Var.k) {
                bh6Var.g = true;
            } else {
                this.e.c();
                bh6Var.g = false;
            }
            this.S = false;
            l0(false);
        } else if (bh6Var.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        hg6 hg6Var = this.x;
        if (hg6Var != null) {
            bh6Var.e = hg6Var.b();
        } else {
            bh6Var.e = 0;
        }
        j0();
        this.y.b.p(i, i2);
        l0(false);
        bh6Var.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (O()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof yg6)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        yg6 yg6Var = (yg6) parcelable;
        this.d = yg6Var;
        super.onRestoreInstanceState(yg6Var.a);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        yg6 yg6Var = new yg6(super.onSaveInstanceState());
        yg6 yg6Var2 = this.d;
        if (yg6Var2 != null) {
            yg6Var.c = yg6Var2.c;
            return yg6Var;
        }
        a aVar = this.y;
        if (aVar != null) {
            yg6Var.c = aVar.s0();
            return yg6Var;
        }
        yg6Var.c = null;
        return yg6Var;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.f0 = null;
        this.d0 = null;
        this.e0 = null;
        this.c0 = null;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0209 A[PHI: r1
      0x0209: PHI (r1v49 int) = (r1v33 int), (r1v53 int) binds: [B:95:0x01f4, B:100:0x0205] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zD;
        boolean z;
        if (!this.P && !this.Q) {
            r53 r53Var = this.J;
            if (r53Var == null) {
                zD = motionEvent.getAction() == 0 ? false : D(motionEvent);
            } else {
                int i = r53Var.b;
                if (r53Var.v != 0) {
                    if (motionEvent.getAction() == 0) {
                        boolean zD2 = r53Var.d(motionEvent.getX(), motionEvent.getY());
                        boolean zC = r53Var.c(motionEvent.getX(), motionEvent.getY());
                        if (zD2 || zC) {
                            if (zC) {
                                r53Var.w = 1;
                                r53Var.p = (int) motionEvent.getX();
                            } else if (zD2) {
                                r53Var.w = 2;
                                r53Var.m = (int) motionEvent.getY();
                            }
                            r53Var.f(2);
                        }
                    } else if (motionEvent.getAction() == 1 && r53Var.v == 2) {
                        r53Var.m = 0.0f;
                        r53Var.p = 0.0f;
                        r53Var.f(1);
                        r53Var.w = 0;
                    } else if (motionEvent.getAction() == 2 && r53Var.v == 2) {
                        r53Var.g();
                        if (r53Var.w == 1) {
                            float x = motionEvent.getX();
                            int[] iArr = r53Var.y;
                            iArr[0] = i;
                            int i2 = r53Var.q - i;
                            iArr[1] = i2;
                            float fMax = Math.max(i, Math.min(i2, x));
                            if (Math.abs(r53Var.o - fMax) >= 2.0f) {
                                int iE = r53.e(r53Var.p, fMax, iArr, r53Var.s.computeHorizontalScrollRange(), r53Var.s.computeHorizontalScrollOffset(), r53Var.q);
                                if (iE != 0) {
                                    r53Var.s.scrollBy(iE, 0);
                                }
                                r53Var.p = fMax;
                            }
                        }
                        if (r53Var.w == 2) {
                            float y = motionEvent.getY();
                            int[] iArr2 = r53Var.x;
                            iArr2[0] = i;
                            int i3 = r53Var.r - i;
                            iArr2[1] = i3;
                            float fMax2 = Math.max(i, Math.min(i3, y));
                            if (Math.abs(r53Var.l - fMax2) >= 2.0f) {
                                int iE2 = r53.e(r53Var.m, fMax2, iArr2, r53Var.s.computeVerticalScrollRange(), r53Var.s.computeVerticalScrollOffset(), r53Var.r);
                                if (iE2 != 0) {
                                    r53Var.s.scrollBy(0, iE2);
                                }
                                r53Var.m = fMax2;
                            }
                        }
                    }
                }
                int action = motionEvent.getAction();
                if (action == 3 || action == 1) {
                    this.J = null;
                }
                zD = true;
            }
            if (zD) {
                VelocityTracker velocityTracker = this.j0;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                m0(0);
                Z();
                setScrollState(0);
                return true;
            }
            a aVar = this.y;
            if (aVar != null) {
                boolean zO = aVar.o();
                boolean zP = this.y.p();
                if (this.j0 == null) {
                    this.j0 = VelocityTracker.obtain();
                }
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                int[] iArr3 = this.I0;
                if (actionMasked == 0) {
                    iArr3[1] = 0;
                    iArr3[0] = 0;
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
                if (actionMasked != 0) {
                    if (actionMasked == 1) {
                        this.j0.addMovement(motionEventObtain);
                        VelocityTracker velocityTracker2 = this.j0;
                        int i4 = this.q0;
                        velocityTracker2.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, i4);
                        float f = zO ? -this.j0.getXVelocity(this.i0) : 0.0f;
                        float f2 = zP ? -this.j0.getYVelocity(this.i0) : 0.0f;
                        if ((f == 0.0f && f2 == 0.0f) || !H((int) f, (int) f2, this.p0, i4)) {
                            setScrollState(0);
                        }
                        VelocityTracker velocityTracker3 = this.j0;
                        if (velocityTracker3 != null) {
                            velocityTracker3.clear();
                        }
                        m0(0);
                        Z();
                    } else if (actionMasked == 2) {
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.i0);
                        if (iFindPointerIndex < 0) {
                            Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.i0 + " not found. Did any MotionEvents get skipped?");
                            return false;
                        }
                        int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                        int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                        int iMax = this.m0 - x2;
                        int iMax2 = this.n0 - y2;
                        if (this.h0 != 1) {
                            if (zO) {
                                int i5 = this.o0;
                                iMax = iMax > 0 ? Math.max(0, iMax - i5) : Math.min(0, iMax + i5);
                                if (iMax != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                            } else {
                                z = false;
                            }
                            if (zP) {
                                int i6 = this.o0;
                                iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - i6) : Math.min(0, iMax2 + i6);
                                if (iMax2 != 0) {
                                    z = true;
                                }
                            }
                            if (z) {
                                setScrollState(1);
                            }
                        }
                        if (this.h0 == 1) {
                            int[] iArr4 = this.J0;
                            iArr4[0] = 0;
                            iArr4[1] = 0;
                            int iA0 = iMax - a0(iMax, motionEvent.getY());
                            int iB0 = iMax2 - b0(iMax2, motionEvent.getX());
                            boolean zT = t(zO ? iA0 : 0, zP ? iB0 : 0, 0, this.J0, this.H0);
                            int[] iArr5 = this.H0;
                            if (zT) {
                                iA0 -= iArr4[0];
                                iB0 -= iArr4[1];
                                iArr3[0] = iArr3[0] + iArr5[0];
                                iArr3[1] = iArr3[1] + iArr5[1];
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            int i7 = iA0;
                            int i8 = iB0;
                            this.m0 = x2 - iArr5[0];
                            this.n0 = y2 - iArr5[1];
                            if (d0(zO ? i7 : 0, zP ? i8 : 0, motionEvent, 0)) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            tu3 tu3Var = this.v0;
                            if (tu3Var != null && (i7 != 0 || i8 != 0)) {
                                tu3Var.a(this, i7, i8);
                            }
                        }
                    } else if (actionMasked == 3) {
                        VelocityTracker velocityTracker4 = this.j0;
                        if (velocityTracker4 != null) {
                            velocityTracker4.clear();
                        }
                        m0(0);
                        Z();
                        setScrollState(0);
                    } else if (actionMasked == 5) {
                        this.i0 = motionEvent.getPointerId(actionIndex);
                        int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                        this.m0 = x3;
                        this.k0 = x3;
                        int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                        this.n0 = y3;
                        this.l0 = y3;
                    } else if (actionMasked == 6) {
                        U(motionEvent);
                    }
                    motionEventObtain.recycle();
                    return true;
                }
                this.i0 = motionEvent.getPointerId(0);
                int x4 = (int) (motionEvent.getX() + 0.5f);
                this.m0 = x4;
                this.k0 = x4;
                int y4 = (int) (motionEvent.getY() + 0.5f);
                this.n0 = y4;
                this.l0 = y4;
                k0(0);
                this.j0.addMovement(motionEventObtain);
                motionEventObtain.recycle();
                return true;
            }
        }
        return false;
    }

    public final void p(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = dl8.a;
        setMeasuredDimension(a.r(i, paddingRight, getMinimumWidth()), a.r(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0279  */
    /* JADX WARN: Code duplicated, block: B:163:0x0348  */
    /* JADX WARN: Code duplicated, block: B:182:0x0386  */
    /* JADX WARN: Code duplicated, block: B:184:0x0389  */
    /* JADX WARN: Code duplicated, block: B:190:0x039c  */
    /* JADX WARN: Code duplicated, block: B:192:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:195:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:198:0x03af  */
    /* JADX WARN: Code duplicated, block: B:201:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:204:0x03c0 A[LOOP:4: B:197:0x03ad->B:204:0x03c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:207:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:210:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:213:0x03de A[LOOP:5: B:206:0x03cb->B:213:0x03de, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:215:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:243:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x03be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x03e1 A[EDGE_INSN: B:246:0x03e1->B:214:0x03e1 BREAK  A[LOOP:5: B:206:0x03cb->B:213:0x03de], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x03dc A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void q() {
        boolean z;
        long j;
        fh6 fh6Var;
        int i;
        int iB;
        int i2;
        int iMin;
        fh6 fh6VarG;
        View view;
        fh6 fh6VarG2;
        View view2;
        int i3;
        View viewFindViewById;
        View view3;
        boolean z2;
        dg7 dg7Var;
        mg6 mg6Var;
        boolean zG;
        boolean z3;
        if (this.x == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.y == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        bh6 bh6Var = this.x0;
        boolean z4 = false;
        bh6Var.i = false;
        boolean z5 = true;
        Object[] objArr = this.M0 && !(this.N0 == getWidth() && this.O0 == getHeight());
        this.N0 = 0;
        this.O0 = 0;
        this.M0 = false;
        if (bh6Var.d == 1) {
            r();
            this.y.F0(this);
            s();
        } else {
            x9 x9Var = this.e;
            if ((x9Var.c.isEmpty() || x9Var.b.isEmpty()) && !objArr == true && this.y.y == getWidth() && this.y.G == getHeight()) {
                this.y.F0(this);
            } else {
                this.y.F0(this);
                s();
            }
        }
        bh6Var.a(4);
        j0();
        S();
        bh6Var.d = 1;
        boolean z6 = bh6Var.j;
        j61 j61Var = this.f;
        vg6 vg6Var = this.c;
        la laVar = this.k;
        if (z6) {
            int iE = j61Var.e() - 1;
            while (iE >= 0) {
                fh6 fh6VarL = L(j61Var.d(iE));
                if (fh6VarL.p()) {
                    z3 = z5;
                } else {
                    long J = J(fh6VarL);
                    this.g0.getClass();
                    mg6 mg6Var2 = new mg6();
                    mg6Var2.a(fh6VarL);
                    v15 v15Var = (v15) laVar.b;
                    z3 = z5;
                    dg7 dg7Var2 = (dg7) laVar.a;
                    fh6 fh6Var2 = (fh6) v15Var.b(J);
                    if (fh6Var2 == null || fh6Var2.p()) {
                        laVar.a(fh6VarL, mg6Var2);
                    } else {
                        rl8 rl8Var = (rl8) dg7Var2.get(fh6Var2);
                        boolean z7 = (rl8Var == null || (rl8Var.a & 1) == 0) ? z4 : z3;
                        rl8 rl8Var2 = (rl8) dg7Var2.get(fh6VarL);
                        boolean z8 = (rl8Var2 == null || (rl8Var2.a & 1) == 0) ? z4 : z3;
                        if (z7 && fh6Var2 == fh6VarL) {
                            laVar.a(fh6VarL, mg6Var2);
                        } else {
                            mg6 mg6VarD = laVar.d(fh6Var2, 4);
                            laVar.a(fh6VarL, mg6Var2);
                            mg6 mg6VarD2 = laVar.d(fh6VarL, 8);
                            if (mg6VarD == null) {
                                int iE2 = j61Var.e();
                                for (int i4 = 0; i4 < iE2; i4++) {
                                    fh6 fh6VarL2 = L(j61Var.d(i4));
                                    if (fh6VarL2 != fh6VarL && J(fh6VarL2) == J) {
                                        hg6 hg6Var = this.x;
                                        if (hg6Var == null || !hg6Var.b) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(fh6VarL2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(fh6VarL);
                                            f6.l(sb, A());
                                            return;
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(fh6VarL2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(fh6VarL);
                                        f6.l(sb2, A());
                                        return;
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + fh6Var2 + " cannot be found but it is necessary for " + fh6VarL + A());
                            } else {
                                fh6Var2.o(false);
                                if (z7) {
                                    g(fh6Var2);
                                }
                                if (fh6Var2 != fh6VarL) {
                                    if (z8) {
                                        g(fh6VarL);
                                    }
                                    fh6Var2.h = fh6VarL;
                                    g(fh6Var2);
                                    vg6Var.m(fh6Var2);
                                    fh6VarL.o(false);
                                    fh6VarL.i = fh6Var2;
                                }
                                if (this.g0.a(fh6Var2, fh6VarL, mg6VarD, mg6VarD2)) {
                                    V();
                                }
                            }
                        }
                    }
                }
                iE--;
                z5 = z3;
                z4 = false;
            }
            z = z5;
            dg7 dg7Var3 = (dg7) laVar.a;
            int i5 = dg7Var3.c - 1;
            while (i5 >= 0) {
                fh6 fh6Var3 = (fh6) dg7Var3.g(i5);
                rl8 rl8Var3 = (rl8) dg7Var3.i(i5);
                int i6 = rl8Var3.a;
                int i7 = i6 & 3;
                km5 km5Var = this.Q0;
                if (i7 == 3) {
                    RecyclerView recyclerView = (RecyclerView) km5Var.b;
                    recyclerView.y.y0(fh6Var3.a, recyclerView.c);
                } else if ((i6 & 1) != 0) {
                    mg6 mg6Var3 = rl8Var3.b;
                    if (mg6Var3 == null) {
                        RecyclerView recyclerView2 = (RecyclerView) km5Var.b;
                        recyclerView2.y.y0(fh6Var3.a, recyclerView2.c);
                    } else {
                        km5Var.r(fh6Var3, mg6Var3, rl8Var3.c);
                    }
                } else if ((i6 & 14) == 14) {
                    km5Var.q(fh6Var3, rl8Var3.b, rl8Var3.c);
                } else {
                    if ((i6 & 12) == 12) {
                        mg6 mg6Var4 = rl8Var3.b;
                        mg6 mg6Var5 = rl8Var3.c;
                        km5Var.getClass();
                        fh6Var3.o(false);
                        RecyclerView recyclerView3 = (RecyclerView) km5Var.b;
                        boolean z9 = recyclerView3.U;
                        ng6 ng6Var = recyclerView3.g0;
                        if (!z9) {
                            cf2 cf2Var = (cf2) ng6Var;
                            cf2Var.getClass();
                            int i8 = mg6Var4.a;
                            int i9 = mg6Var5.a;
                            if (i8 == i9) {
                                dg7Var = dg7Var3;
                                if (mg6Var4.b == mg6Var5.b) {
                                    cf2Var.c(fh6Var3);
                                    zG = false;
                                }
                                if (zG) {
                                    recyclerView3.V();
                                }
                            } else {
                                dg7Var = dg7Var3;
                            }
                            zG = cf2Var.g(fh6Var3, i8, mg6Var4.b, i9, mg6Var5.b);
                            if (zG) {
                                recyclerView3.V();
                            }
                        } else if (ng6Var.a(fh6Var3, fh6Var3, mg6Var4, mg6Var5)) {
                            recyclerView3.V();
                        }
                        mg6Var = null;
                    } else {
                        dg7Var = dg7Var3;
                        if ((i6 & 4) != 0) {
                            mg6Var = null;
                            km5Var.r(fh6Var3, rl8Var3.b, null);
                        } else {
                            mg6Var = null;
                            if ((i6 & 8) != 0) {
                                km5Var.q(fh6Var3, rl8Var3.b, rl8Var3.c);
                            }
                        }
                    }
                    rl8Var3.a = 0;
                    rl8Var3.b = mg6Var;
                    rl8Var3.c = mg6Var;
                    rl8.d.c(rl8Var3);
                    i5--;
                    dg7Var3 = dg7Var;
                }
                dg7Var = dg7Var3;
                mg6Var = null;
                rl8Var3.a = 0;
                rl8Var3.b = mg6Var;
                rl8Var3.c = mg6Var;
                rl8.d.c(rl8Var3);
                i5--;
                dg7Var3 = dg7Var;
            }
        } else {
            z = true;
        }
        View view4 = null;
        this.y.x0(vg6Var);
        bh6Var.b = bh6Var.e;
        this.U = false;
        this.V = false;
        bh6Var.j = false;
        bh6Var.k = false;
        this.y.f = false;
        ArrayList arrayList = (ArrayList) vg6Var.d;
        if (arrayList != null) {
            arrayList.clear();
        }
        a aVar = this.y;
        if (aVar.r) {
            aVar.q = 0;
            aVar.r = false;
            vg6Var.n();
        }
        this.y.q0(bh6Var);
        boolean z10 = z;
        T(z10);
        l0(false);
        ((dg7) laVar.a).clear();
        ((v15) laVar.b).a();
        int[] iArr = this.F0;
        int i10 = iArr[0];
        int i11 = iArr[z10 ? 1 : 0];
        E(iArr);
        if (iArr[0] != i10 || iArr[z10 ? 1 : 0] != i11) {
            v(0, 0);
        }
        if (this.t0 && this.x != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                j = bh6Var.m;
                if (j == -1) {
                    fh6Var = null;
                } else {
                    fh6Var = null;
                }
                if (fh6Var != null) {
                    view3 = fh6Var.a;
                    if (!j61Var.c.contains(view3)) {
                        if (j61Var.e() > 0) {
                            i = bh6Var.l;
                            if (i == -1) {
                                i = 0;
                            }
                            iB = bh6Var.b();
                            i2 = i;
                            while (true) {
                                if (i2 < iB) {
                                    fh6VarG2 = G(i2);
                                    if (fh6VarG2 != null) {
                                        view2 = fh6VarG2.a;
                                        if (view2.hasFocusable()) {
                                            view4 = view2;
                                        } else {
                                            i2++;
                                        }
                                    }
                                }
                                for (iMin = Math.min(iB, i) - 1; iMin >= 0; iMin--) {
                                    fh6VarG = G(iMin);
                                    if (fh6VarG == null) {
                                        break;
                                        break;
                                    }
                                    view = fh6VarG.a;
                                    if (view.hasFocusable()) {
                                        view4 = view;
                                        break;
                                    }
                                }
                            }
                        }
                    } else if (j61Var.e() > 0) {
                        i = bh6Var.l;
                        if (i == -1) {
                            i = 0;
                        }
                        iB = bh6Var.b();
                        i2 = i;
                        while (true) {
                            if (i2 < iB) {
                                fh6VarG2 = G(i2);
                                if (fh6VarG2 != null) {
                                    view2 = fh6VarG2.a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i2++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                fh6VarG = G(iMin);
                                if (fh6VarG == null) {
                                    break;
                                    break;
                                }
                                view = fh6VarG.a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (j61Var.e() > 0) {
                    i = bh6Var.l;
                    if (i == -1) {
                        i = 0;
                    }
                    iB = bh6Var.b();
                    i2 = i;
                    while (true) {
                        if (i2 < iB) {
                            fh6VarG2 = G(i2);
                            if (fh6VarG2 != null) {
                                view2 = fh6VarG2.a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            fh6VarG = G(iMin);
                            if (fh6VarG == null) {
                                break;
                                break;
                            }
                            view = fh6VarG.a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i3 = bh6Var.n;
                    if (i3 != -1) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            } else if (j61Var.c.contains(getFocusedChild())) {
                j = bh6Var.m;
                if (j == -1 && (z2 = this.x.b) && z2) {
                    int iH = j61Var.h();
                    fh6Var = null;
                    for (int i12 = 0; i12 < iH; i12++) {
                        fh6 fh6VarL3 = L(j61Var.g(i12));
                        if (fh6VarL3 != null && !fh6VarL3.i() && fh6VarL3.e == j) {
                            if (!j61Var.c.contains(fh6VarL3.a)) {
                                fh6Var = fh6VarL3;
                                break;
                            }
                            fh6Var = fh6VarL3;
                        }
                    }
                } else {
                    fh6Var = null;
                }
                if (fh6Var != null) {
                    view3 = fh6Var.a;
                    if (!j61Var.c.contains(view3) && view3.hasFocusable()) {
                        view4 = view3;
                    } else if (j61Var.e() > 0) {
                        i = bh6Var.l;
                        if (i == -1) {
                            i = 0;
                        }
                        iB = bh6Var.b();
                        i2 = i;
                        while (true) {
                            if (i2 < iB) {
                                fh6VarG2 = G(i2);
                                if (fh6VarG2 != null) {
                                    view2 = fh6VarG2.a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i2++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                fh6VarG = G(iMin);
                                if (fh6VarG == null) {
                                    break;
                                }
                                view = fh6VarG.a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (j61Var.e() > 0) {
                    i = bh6Var.l;
                    if (i == -1) {
                        i = 0;
                    }
                    iB = bh6Var.b();
                    i2 = i;
                    while (true) {
                        if (i2 < iB) {
                            fh6VarG2 = G(i2);
                            if (fh6VarG2 != null) {
                                view2 = fh6VarG2.a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            fh6VarG = G(iMin);
                            if (fh6VarG == null) {
                                break;
                                break;
                            }
                            view = fh6VarG.a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i3 = bh6Var.n;
                    if (i3 != -1 && (viewFindViewById = view4.findViewById(i3)) != null && viewFindViewById.isFocusable()) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            }
        }
        bh6Var.m = -1L;
        bh6Var.l = -1;
        bh6Var.n = -1;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    public final void r() {
        int I;
        rl8 rl8Var;
        View viewC;
        bh6 bh6Var = this.x0;
        bh6Var.a(1);
        B(bh6Var);
        bh6Var.i = false;
        j0();
        la laVar = this.k;
        dg7 dg7Var = (dg7) laVar.a;
        dg7 dg7Var2 = (dg7) laVar.a;
        dg7Var.clear();
        v15 v15Var = (v15) laVar.b;
        v15Var.a();
        S();
        W();
        fh6 fh6VarK = null;
        View focusedChild = (this.t0 && hasFocus() && this.x != null) ? getFocusedChild() : null;
        if (focusedChild != null && (viewC = C(focusedChild)) != null) {
            fh6VarK = K(viewC);
        }
        if (fh6VarK == null) {
            bh6Var.m = -1L;
            bh6Var.l = -1;
            bh6Var.n = -1;
        } else {
            bh6Var.m = this.x.b ? fh6VarK.e : -1L;
            if (this.U) {
                I = -1;
            } else if (fh6VarK.i()) {
                I = fh6VarK.d;
            } else {
                RecyclerView recyclerView = fh6VarK.r;
                if (recyclerView == null) {
                    I = -1;
                } else {
                    I = recyclerView.I(fh6VarK);
                }
            }
            bh6Var.l = I;
            View focusedChild2 = fh6VarK.a;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            bh6Var.n = id;
        }
        bh6Var.h = bh6Var.j && this.B0;
        this.B0 = false;
        this.A0 = false;
        bh6Var.g = bh6Var.k;
        bh6Var.e = this.x.b();
        E(this.F0);
        boolean z = bh6Var.j;
        j61 j61Var = this.f;
        if (z) {
            int iE = j61Var.e();
            for (int i = 0; i < iE; i++) {
                fh6 fh6VarL = L(j61Var.d(i));
                if (!fh6VarL.p() && (!fh6VarL.g() || this.x.b)) {
                    ng6 ng6Var = this.g0;
                    ng6.b(fh6VarL);
                    fh6VarL.d();
                    ng6Var.getClass();
                    mg6 mg6Var = new mg6();
                    mg6Var.a(fh6VarL);
                    rl8 rl8VarA = (rl8) dg7Var2.get(fh6VarL);
                    if (rl8VarA == null) {
                        rl8VarA = rl8.a();
                        dg7Var2.put(fh6VarL, rl8VarA);
                    }
                    rl8VarA.b = mg6Var;
                    rl8VarA.a |= 4;
                    if (bh6Var.h && fh6VarL.l() && !fh6VarL.i() && !fh6VarL.p() && !fh6VarL.g()) {
                        v15Var.e(fh6VarL, J(fh6VarL));
                    }
                }
            }
        }
        if (bh6Var.k) {
            int iH = j61Var.h();
            for (int i2 = 0; i2 < iH; i2++) {
                fh6 fh6VarL2 = L(j61Var.g(i2));
                if (S0 && fh6VarL2.c == -1 && !fh6VarL2.i()) {
                    l0.e("view holder cannot have position -1 unless it is removed".concat(A()));
                    return;
                }
                if (!fh6VarL2.p() && fh6VarL2.d == -1) {
                    fh6VarL2.d = fh6VarL2.c;
                }
            }
            boolean z2 = bh6Var.f;
            bh6Var.f = false;
            this.y.p0(this.c, bh6Var);
            bh6Var.f = z2;
            for (int i3 = 0; i3 < j61Var.e(); i3++) {
                fh6 fh6VarL3 = L(j61Var.d(i3));
                if (!fh6VarL3.p() && ((rl8Var = (rl8) dg7Var2.get(fh6VarL3)) == null || (rl8Var.a & 4) == 0)) {
                    ng6.b(fh6VarL3);
                    boolean z3 = (fh6VarL3.j & 8192) != 0;
                    ng6 ng6Var2 = this.g0;
                    fh6VarL3.d();
                    ng6Var2.getClass();
                    mg6 mg6Var2 = new mg6();
                    mg6Var2.a(fh6VarL3);
                    if (z3) {
                        Y(fh6VarL3, mg6Var2);
                    } else {
                        rl8 rl8VarA2 = (rl8) dg7Var2.get(fh6VarL3);
                        if (rl8VarA2 == null) {
                            rl8VarA2 = rl8.a();
                            dg7Var2.put(fh6VarL3, rl8VarA2);
                        }
                        rl8VarA2.a |= 2;
                        rl8VarA2.b = mg6Var2;
                    }
                }
            }
            l();
        } else {
            l();
        }
        T(true);
        l0(false);
        bh6Var.d = 2;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        fh6 fh6VarL = L(view);
        if (fh6VarL != null) {
            if (fh6VarL.k()) {
                fh6VarL.j &= -257;
            } else if (!fh6VarL.p()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(fh6VarL);
                m0.i(sb, A());
                return;
            }
        } else if (S0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            m0.i(sb2, A());
            return;
        }
        view.clearAnimation();
        L(view);
        hg6 hg6Var = this.x;
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        av4 av4Var = this.y.e;
        if ((av4Var == null || !av4Var.e) && !O() && view2 != null) {
            c0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.y.A0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.I;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((r53) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.N != 0 || this.P) {
            this.O = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s() {
        j0();
        S();
        bh6 bh6Var = this.x0;
        bh6Var.a(6);
        this.e.c();
        bh6Var.e = this.x.b();
        bh6Var.c = 0;
        if (this.d != null) {
            hg6 hg6Var = this.x;
            int iA = dj7.A(hg6Var.c);
            if (iA == 1 ? hg6Var.b() > 0 : iA != 2) {
                Parcelable parcelable = this.d.c;
                if (parcelable != null) {
                    this.y.r0(parcelable);
                }
                this.d = null;
            }
        }
        bh6Var.g = false;
        this.y.p0(this.c, bh6Var);
        bh6Var.f = false;
        bh6Var.j = bh6Var.j && this.g0 != null;
        bh6Var.d = 4;
        T(true);
        l0(false);
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        a aVar = this.y;
        if (aVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.P) {
            return;
        }
        boolean zO = aVar.o();
        boolean zP = this.y.p();
        if (zO || zP) {
            if (!zO) {
                i = 0;
            }
            if (!zP) {
                i2 = 0;
            }
            d0(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!O()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.R |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(hh6 hh6Var) {
        this.E0 = hh6Var;
        dl8.n(this, hh6Var);
    }

    public void setAdapter(hg6 hg6Var) {
        setLayoutFrozen(false);
        hg6 hg6Var2 = this.x;
        xg6 xg6Var = this.b;
        if (hg6Var2 != null) {
            hg6Var2.a.unregisterObserver(xg6Var);
            this.x.getClass();
        }
        ng6 ng6Var = this.g0;
        if (ng6Var != null) {
            ng6Var.e();
        }
        a aVar = this.y;
        vg6 vg6Var = this.c;
        if (aVar != null) {
            aVar.w0(vg6Var);
            this.y.x0(vg6Var);
        }
        ((ArrayList) vg6Var.c).clear();
        vg6Var.g();
        x9 x9Var = this.e;
        x9Var.k(x9Var.b);
        x9Var.k(x9Var.c);
        x9Var.f = 0;
        hg6 hg6Var3 = this.x;
        this.x = hg6Var;
        if (hg6Var != null) {
            hg6Var.a.registerObserver(xg6Var);
            hg6Var.g(this);
        }
        a aVar2 = this.y;
        if (aVar2 != null) {
            aVar2.b0();
        }
        hg6 hg6Var4 = this.x;
        ((ArrayList) vg6Var.c).clear();
        vg6Var.g();
        vg6Var.f(hg6Var3, true);
        ug6 ug6VarC = vg6Var.c();
        if (hg6Var3 != null) {
            ug6VarC.b--;
        }
        if (ug6VarC.b == 0) {
            SparseArray sparseArray = ug6VarC.a;
            for (int i = 0; i < sparseArray.size(); i++) {
                tg6 tg6Var = (tg6) sparseArray.valueAt(i);
                Iterator it = tg6Var.a.iterator();
                while (it.hasNext()) {
                    ji8.d(((fh6) it.next()).a);
                }
                tg6Var.a.clear();
            }
        }
        if (hg6Var4 != null) {
            ug6VarC.b++;
        }
        vg6Var.e();
        this.x0.f = true;
        X(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(kg6 kg6Var) {
        if (kg6Var == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.n) {
            this.f0 = null;
            this.d0 = null;
            this.e0 = null;
            this.c0 = null;
        }
        this.n = z;
        super.setClipToPadding(z);
        if (this.M) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(lg6 lg6Var) {
        lg6Var.getClass();
        this.b0 = lg6Var;
        this.f0 = null;
        this.d0 = null;
        this.e0 = null;
        this.c0 = null;
    }

    public void setHasFixedSize(boolean z) {
        this.L = z;
    }

    public void setItemAnimator(ng6 ng6Var) {
        ng6 ng6Var2 = this.g0;
        if (ng6Var2 != null) {
            ng6Var2.e();
            this.g0.a = null;
        }
        this.g0 = ng6Var;
        if (ng6Var != null) {
            ng6Var.a = this.C0;
        }
    }

    public void setItemViewCacheSize(int i) {
        vg6 vg6Var = this.c;
        vg6Var.a = i;
        vg6Var.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(a aVar) {
        RecyclerView recyclerView;
        if (aVar == this.y) {
            return;
        }
        n0();
        a aVar2 = this.y;
        vg6 vg6Var = this.c;
        if (aVar2 != null) {
            ng6 ng6Var = this.g0;
            if (ng6Var != null) {
                ng6Var.e();
            }
            this.y.w0(vg6Var);
            this.y.x0(vg6Var);
            ((ArrayList) vg6Var.c).clear();
            vg6Var.g();
            if (this.K) {
                a aVar3 = this.y;
                aVar3.k = false;
                aVar3.d0(this);
            }
            this.y.J0(null);
            this.y = null;
        } else {
            ((ArrayList) vg6Var.c).clear();
            vg6Var.g();
        }
        j61 j61Var = this.f;
        j61Var.b.g();
        ArrayList arrayList = j61Var.c;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = (RecyclerView) j61Var.a.a;
            if (size < 0) {
                break;
            }
            fh6 fh6VarL = L((View) arrayList.get(size));
            if (fh6VarL != null) {
                int i = fh6VarL.p;
                if (recyclerView.O()) {
                    fh6VarL.q = i;
                    recyclerView.K0.add(fh6VarL);
                } else {
                    fh6VarL.a.setImportantForAccessibility(i);
                }
                fh6VarL.p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            L(childAt);
            hg6 hg6Var = recyclerView.x;
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.y = aVar;
        if (aVar != null) {
            if (aVar.b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(aVar);
                d6.l(sb, " is already attached to a RecyclerView:", aVar.b.A());
                return;
            } else {
                aVar.J0(this);
                if (this.K) {
                    a aVar4 = this.y;
                    aVar4.k = true;
                    aVar4.c0(this);
                }
            }
        }
        vg6Var.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            c6.f("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        gm5 scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            ViewGroup viewGroup = scrollingChildHelper.c;
            WeakHashMap weakHashMap = dl8.a;
            viewGroup.stopNestedScroll();
        }
        scrollingChildHelper.d = z;
    }

    @Deprecated
    public void setOnScrollListener(sg6 sg6Var) {
        this.y0 = sg6Var;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.t0 = z;
    }

    public void setRecycledViewPool(ug6 ug6Var) {
        vg6 vg6Var = this.c;
        RecyclerView recyclerView = (RecyclerView) vg6Var.h;
        vg6Var.f(recyclerView.x, false);
        ug6 ug6Var2 = (ug6) vg6Var.g;
        if (ug6Var2 != null) {
            ug6Var2.b--;
        }
        vg6Var.g = ug6Var;
        if (ug6Var != null && recyclerView.getAdapter() != null) {
            ((ug6) vg6Var.g).b++;
        }
        vg6Var.e();
    }

    public void setScrollState(int i) {
        av4 av4Var;
        if (i == this.h0) {
            return;
        }
        if (T0) {
            StringBuilder sbR = dj7.r(i, "setting scroll state to ", " from ");
            sbR.append(this.h0);
            Log.d("RecyclerView", sbR.toString(), new Exception());
        }
        this.h0 = i;
        if (i != 2) {
            eh6 eh6Var = this.u0;
            eh6Var.k.removeCallbacks(eh6Var);
            eh6Var.c.abortAnimation();
            a aVar = this.y;
            if (aVar != null && (av4Var = aVar.e) != null) {
                av4Var.h();
            }
        }
        a aVar2 = this.y;
        if (aVar2 != null) {
            aVar2.t0(i);
        }
        sg6 sg6Var = this.y0;
        if (sg6Var != null) {
            sg6Var.a(this, i);
        }
        ArrayList arrayList = this.z0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((sg6) this.z0.get(size)).a(this, i);
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.o0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.o0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(dh6 dh6Var) {
        this.c.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.P) {
            j("Do not suppressLayout in layout or scroll");
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.P = true;
                this.Q = true;
                n0();
                return;
            }
            this.P = false;
            if (this.O && this.y != null && this.x != null) {
                requestLayout();
            }
            this.O = false;
        }
    }

    public final boolean t(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, i3, iArr, iArr2);
    }

    public final void u(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void v(int i, int i2) {
        this.a0++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        sg6 sg6Var = this.y0;
        if (sg6Var != null) {
            sg6Var.b(this, i2);
        }
        ArrayList arrayList = this.z0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((sg6) this.z0.get(size)).b(this, i2);
            }
        }
        this.a0--;
    }

    public final void w() {
        if (this.f0 != null) {
            return;
        }
        ((ch6) this.b0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f0 = edgeEffect;
        if (this.n) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void x() {
        if (this.c0 != null) {
            return;
        }
        ((ch6) this.b0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.c0 = edgeEffect;
        if (this.n) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void y() {
        if (this.e0 != null) {
            return;
        }
        ((ch6) this.b0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.e0 = edgeEffect;
        if (this.n) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void z() {
        if (this.d0 != null) {
            return;
        }
        ((ch6) this.b0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.d0 = edgeEffect;
        if (this.n) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setOnFlingListener(rg6 rg6Var) {
    }

    @Deprecated
    public void setRecyclerListener(wg6 wg6Var) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        a aVar = this.y;
        if (aVar != null) {
            return aVar.E(layoutParams);
        }
        l0.e("RecyclerView has no LayoutManager".concat(A()));
        return null;
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context) {
        this(context, null);
    }
}
