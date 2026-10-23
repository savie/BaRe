package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.slider.Slider;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class on0 extends View {
    public static final /* synthetic */ int x1 = 0;
    public float A0;
    public float B0;
    public MotionEvent C0;
    public final Rect D0;
    public final ArrayList E0;
    public List F0;
    public boolean G;
    public boolean G0;
    public ValueAnimator H;
    public float H0;
    public ValueAnimator I;
    public float I0;
    public final int J;
    public ArrayList J0;
    public final int K;
    public int K0;
    public final int L;
    public int L0;
    public final int M;
    public float M0;
    public final int N;
    public int N0;
    public final int O;
    public float[] O0;
    public final int P;
    public int P0;
    public final int Q;
    public int Q0;
    public final int R;
    public int R0;
    public final int S;
    public int S0;
    public int T;
    public boolean T0;
    public final int U;
    public boolean U0;
    public int V;
    public ColorStateList V0;
    public int W;
    public ColorStateList W0;
    public ColorStateList X0;
    public ColorStateList Y0;
    public ColorStateList Z0;
    public final Paint a;
    public int a0;
    public final Path a1;
    public final Paint b;
    public int b0;
    public final RectF b1;
    public final Paint c;
    public int c0;
    public final RectF c1;
    public final Paint d;
    public int d0;
    public final RectF d1;
    public final Paint e;
    public int e0;
    public final RectF e1;
    public final Paint f;
    public int f0;
    public final Rect f1;
    public int g0;
    public final RectF g1;
    public int h0;
    public final Rect h1;
    public int i0;
    public final Matrix i1;
    public int j0;
    public final ArrayList j1;
    public final Paint k;
    public int k0;
    public Drawable k1;
    public int l0;
    public List l1;
    public boolean m0;
    public float m1;
    public final ln0 n;
    public Drawable n0;
    public float n1;
    public boolean o0;
    public ColorStateList o1;
    public final AccessibilityManager p;
    public Drawable p0;
    public ColorStateList p1;
    public kn0 q;
    public boolean q0;
    public float q1;
    public final int r;
    public ColorStateList r0;
    public int r1;
    public Drawable s0;
    public final int s1;
    public final ArrayList t;
    public boolean t0;
    public final gn0 t1;
    public Drawable u0;
    public final hn0 u1;
    public boolean v0;
    public final in0 v1;
    public ColorStateList w0;
    public boolean w1;
    public final ArrayList x;
    public int x0;
    public final ArrayList y;
    public final int y0;
    public final int z0;

    /* JADX WARN: Type inference failed for: r2v11, types: [gn0] */
    /* JADX WARN: Type inference failed for: r2v12, types: [hn0] */
    public on0(Context context, AttributeSet attributeSet, int i) {
        int i2;
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_Slider), attributeSet, i);
        this.t = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.G = false;
        this.g0 = -1;
        this.h0 = -1;
        this.i0 = -1;
        this.m0 = false;
        this.o0 = false;
        this.q0 = false;
        this.t0 = false;
        this.v0 = false;
        this.D0 = new Rect();
        this.E0 = new ArrayList();
        this.F0 = new ArrayList();
        this.G0 = false;
        this.J0 = new ArrayList();
        this.K0 = -1;
        this.L0 = -1;
        this.M0 = 0.0f;
        this.N0 = 0;
        this.T0 = false;
        this.a1 = new Path();
        this.b1 = new RectF();
        this.c1 = new RectF();
        this.d1 = new RectF();
        this.e1 = new RectF();
        this.f1 = new Rect();
        this.g1 = new RectF();
        this.h1 = new Rect();
        this.i1 = new Matrix();
        this.j1 = new ArrayList();
        this.l1 = Collections.EMPTY_LIST;
        this.r1 = 0;
        final Slider slider = (Slider) this;
        this.t1 = new ViewTreeObserver.OnScrollChangedListener() { // from class: gn0
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                slider.F();
            }
        };
        this.u1 = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: hn0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                slider.F();
            }
        };
        this.v1 = new in0(slider, 0);
        Context context2 = getContext();
        this.w1 = isShown();
        this.a = new Paint();
        this.b = new Paint();
        Paint paint = new Paint(1);
        this.c = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.d = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.e = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.f = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.k = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        this.K = context2.getResources().getDimensionPixelSize(R.dimen.m3_slider_focus_ring_thumb_height_decrease);
        Resources resources = context2.getResources();
        this.U = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.L = dimensionPixelOffset;
        this.b0 = dimensionPixelOffset;
        this.M = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.N = resources.getDimensionPixelSize(R.dimen.mtrl_slider_track_height);
        this.O = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.P = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.Q = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_min_spacing);
        this.z0 = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        this.y0 = resources.getDimensionPixelOffset(R.dimen.m3_slider_track_icon_padding);
        this.S = resources.getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        jd4.d(context2, attributeSet, i, R.style.Widget_MaterialComponents_Slider);
        int[] iArr = td6.S;
        jd4.e(context2, attributeSet, iArr, i, R.style.Widget_MaterialComponents_Slider, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, R.style.Widget_MaterialComponents_Slider);
        setOrientation(typedArrayObtainStyledAttributes.getInt(2, 0));
        this.r = typedArrayObtainStyledAttributes.getResourceId(11, R.style.Widget_MaterialComponents_Tooltip);
        this.H0 = typedArrayObtainStyledAttributes.getFloat(4, 0.0f);
        this.I0 = typedArrayObtainStyledAttributes.getFloat(5, 1.0f);
        setCentered(typedArrayObtainStyledAttributes.getBoolean(6, false));
        this.M0 = typedArrayObtainStyledAttributes.getFloat(3, 0.0f);
        this.N0 = typedArrayObtainStyledAttributes.getInt(7, 0);
        this.R = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(12, jm1.S(context2)));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(28);
        int i3 = zHasValue ? 28 : 30;
        int i4 = zHasValue ? 28 : 29;
        ColorStateList colorStateListM = k55.m(context2, typedArrayObtainStyledAttributes, i3);
        setTrackInactiveTintList(colorStateListM == null ? zh8.q(context2, R.color.material_slider_inactive_track_color) : colorStateListM);
        ColorStateList colorStateListM2 = k55.m(context2, typedArrayObtainStyledAttributes, i4);
        setTrackActiveTintList(colorStateListM2 == null ? zh8.q(context2, R.color.material_slider_active_track_color) : colorStateListM2);
        ColorStateList colorStateListM3 = k55.m(context2, typedArrayObtainStyledAttributes, 13);
        setThumbTintList(colorStateListM3 == null ? zh8.q(context2, R.color.material_slider_thumb_color) : colorStateListM3);
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            setThumbStrokeColor(k55.m(context2, typedArrayObtainStyledAttributes, 17));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(18, 0.0f));
        ColorStateList colorStateListM4 = k55.m(context2, typedArrayObtainStyledAttributes, 8);
        setHaloTintList(colorStateListM4 == null ? zh8.q(context2, R.color.material_slider_halo_color) : colorStateListM4);
        if (typedArrayObtainStyledAttributes.hasValue(26)) {
            i2 = typedArrayObtainStyledAttributes.getInt(26, -1);
        } else {
            i2 = typedArrayObtainStyledAttributes.getBoolean(27, true) ? 0 : 2;
        }
        this.P0 = i2;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(21);
        int i5 = zHasValue2 ? 21 : 23;
        int i6 = zHasValue2 ? 21 : 22;
        ColorStateList colorStateListM5 = k55.m(context2, typedArrayObtainStyledAttributes, i5);
        setTickInactiveTintList(colorStateListM5 == null ? zh8.q(context2, R.color.material_slider_inactive_tick_marks_color) : colorStateListM5);
        ColorStateList colorStateListM6 = k55.m(context2, typedArrayObtainStyledAttributes, i6);
        setTickActiveTintList(colorStateListM6 == null ? zh8.q(context2, R.color.material_slider_active_tick_marks_color) : colorStateListM6);
        setThumbTrackGapSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(19, 0));
        setTrackStopIndicatorSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(41, 0));
        setTrackCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(31, -1));
        setTrackInsideCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(40, 0));
        setTrackIconActiveStart(k55.p(context2, typedArrayObtainStyledAttributes, 35));
        setTrackIconActiveEnd(k55.p(context2, typedArrayObtainStyledAttributes, 34));
        setTrackIconActiveColor(k55.m(context2, typedArrayObtainStyledAttributes, 33));
        setTrackIconInactiveStart(k55.p(context2, typedArrayObtainStyledAttributes, 38));
        setTrackIconInactiveEnd(k55.p(context2, typedArrayObtainStyledAttributes, 37));
        setTrackIconInactiveColor(k55.m(context2, typedArrayObtainStyledAttributes, 36));
        setTrackIconSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(39, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, 0) * 2;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(20, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(9, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(14, 0.0f));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(32, 0));
        setTickActiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.j0 / 2));
        setTickInactiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(25, this.j0 / 2));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(10, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(0, true)) {
            setEnabled(false);
        }
        setValues(Float.valueOf(this.H0));
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        this.J = ViewConfiguration.get(context2).getScaledTouchSlop();
        ln0 ln0Var = new ln0(slider);
        this.n = ln0Var;
        dl8.n(this, ln0Var);
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.p = accessibilityManager;
        if (Build.VERSION.SDK_INT >= 29) {
            this.s1 = accessibilityManager.getRecommendedTimeoutMillis(yr5.p, 6);
        } else {
            this.s1 = 120000;
        }
    }

    public final void A(ArrayList arrayList) {
        ViewGroup viewGroupS;
        int resourceId;
        ViewGroup viewGroupS2;
        if (arrayList.isEmpty()) {
            c6.f("At least one value must be set");
            return;
        }
        Collections.sort(arrayList);
        if (this.J0.size() == arrayList.size() && this.J0.equals(arrayList)) {
            return;
        }
        this.J0 = arrayList;
        this.U0 = true;
        ArrayList arrayList2 = this.j1;
        int i = 0;
        if (arrayList2.size() != this.J0.size()) {
            arrayList2.clear();
            for (int i2 = 0; i2 < this.J0.size(); i2++) {
                c95 c95Var = new c95();
                c95Var.w();
                c95Var.t(getThumbTintList());
                us2 us2Var = new us2(i);
                us2 us2Var2 = new us2(i);
                us2 us2Var3 = new us2(i);
                us2 us2Var4 = new us2(i);
                float f = this.c0 / 2.0f;
                zv1 zv1VarE = xh8.e(0);
                f3 f3Var = new f3(f);
                f3 f3Var2 = new f3(f);
                f3 f3Var3 = new f3(f);
                f3 f3Var4 = new f3(f);
                tb7 tb7Var = new tb7();
                tb7Var.a = zv1VarE;
                tb7Var.b = zv1VarE;
                tb7Var.c = zv1VarE;
                tb7Var.d = zv1VarE;
                tb7Var.e = f3Var;
                tb7Var.f = f3Var2;
                tb7Var.g = f3Var3;
                tb7Var.h = f3Var4;
                tb7Var.i = us2Var;
                tb7Var.j = us2Var2;
                tb7Var.k = us2Var3;
                tb7Var.l = us2Var4;
                c95Var.setShapeAppearanceModel(tb7Var);
                c95Var.setBounds(0, 0, this.c0, this.d0);
                c95Var.s(getThumbElevation());
                c95Var.A(getThumbStrokeWidth());
                c95Var.z(getThumbStrokeColor());
                c95Var.setState(getDrawableState());
                arrayList2.add(c95Var);
            }
        }
        this.L0 = 0;
        E();
        ArrayList arrayList3 = this.t;
        if (arrayList3.size() > this.J0.size()) {
            List<u88> listSubList = arrayList3.subList(this.J0.size(), arrayList3.size());
            for (u88 u88Var : listSubList) {
                if (isAttachedToWindow() && (viewGroupS2 = yc9.s(this)) != null) {
                    viewGroupS2.getOverlay().remove(u88Var);
                    viewGroupS2.removeOnLayoutChangeListener(u88Var.d0);
                }
            }
            listSubList.clear();
        }
        while (arrayList3.size() < this.J0.size()) {
            Context context = getContext();
            int i3 = this.r;
            u88 u88Var2 = new u88(context, i3);
            TypedArray typedArrayB = jd4.B(u88Var2.a0, null, td6.Z, 0, i3, new int[0]);
            Context context2 = u88Var2.a0;
            u88Var2.k0 = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
            boolean z = typedArrayB.getBoolean(8, true);
            u88Var2.j0 = z;
            if (z) {
                sb7 sb7VarM = u88Var2.k().m();
                sb7VarM.k = u88Var2.G();
                u88Var2.setShapeAppearanceModel(sb7VarM.a());
            } else {
                u88Var2.k0 = 0;
            }
            CharSequence text = typedArrayB.getText(6);
            boolean zEquals = TextUtils.equals(u88Var2.Z, text);
            a18 a18Var = u88Var2.c0;
            if (!zEquals) {
                u88Var2.Z = text;
                a18Var.e = true;
                u88Var2.invalidateSelf();
            }
            u08 u08Var = (!typedArrayB.hasValue(0) || (resourceId = typedArrayB.getResourceId(0, 0)) == 0) ? null : new u08(context2, resourceId);
            if (u08Var != null && typedArrayB.hasValue(1)) {
                u08Var.k = k55.m(context2, typedArrayB, 1);
            }
            a18Var.c(u08Var, context2);
            u88Var2.t(ColorStateList.valueOf(typedArrayB.getColor(7, xl1.e(xl1.g(z85.C(context2, jm1.T(R.attr.colorOnBackground, context2, u88.class.getCanonicalName())), 153), xl1.g(z85.C(context2, jm1.T(android.R.attr.colorBackground, context2, u88.class.getCanonicalName())), 229)))));
            u88Var2.y(ColorStateList.valueOf(z85.C(context2, jm1.T(R.attr.colorSurface, context2, u88.class.getCanonicalName()))));
            u88Var2.f0 = typedArrayB.getDimensionPixelSize(2, 0);
            u88Var2.g0 = typedArrayB.getDimensionPixelSize(4, 0);
            u88Var2.h0 = typedArrayB.getDimensionPixelSize(5, 0);
            u88Var2.i0 = typedArrayB.getDimensionPixelSize(3, 0);
            typedArrayB.recycle();
            arrayList3.add(u88Var2);
            if (isAttachedToWindow() && (viewGroupS = yc9.s(this)) != null) {
                int[] iArr = new int[2];
                viewGroupS.getLocationOnScreen(iArr);
                u88Var2.l0 = iArr[0];
                viewGroupS.getWindowVisibleDisplayFrame(u88Var2.e0);
                viewGroupS.addOnLayoutChangeListener(u88Var2.d0);
            }
        }
        int i4 = arrayList3.size() == 1 ? 0 : 1;
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            ((u88) it.next()).A(i4);
        }
        for (zi5 zi5Var : this.x) {
            Iterator it2 = this.J0.iterator();
            while (it2.hasNext()) {
                float fFloatValue = ((Float) it2.next()).floatValue();
                zi5Var.getClass();
                mt3 mt3Var = zi5Var.a;
                int i5 = (int) fFloatValue;
                zi5Var.b.a.p.setText(String.valueOf(i5));
                mt3Var.invoke(Integer.valueOf(i5));
            }
        }
        postInvalidate();
    }

    public final boolean B(int i, float f) {
        ViewParent parent;
        this.L0 = i;
        if (Math.abs(f - ((Float) this.J0.get(i)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.r1 == 0) {
            if (minSeparation == 0.0f) {
                minSeparation = 0.0f;
            } else {
                float f2 = (minSeparation - this.b0) / this.S0;
                float f3 = this.H0;
                minSeparation = xs1.e(f3, this.I0, f2, f3);
            }
        }
        if (s() || t()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        int i3 = i - 1;
        this.J0.set(i, Float.valueOf(iz1.c(f, i3 < 0 ? this.H0 : minSeparation + ((Float) this.J0.get(i3)).floatValue(), i2 >= this.J0.size() ? this.I0 : ((Float) this.J0.get(i2)).floatValue() - minSeparation)));
        for (zi5 zi5Var : this.x) {
            float fFloatValue = ((Float) this.J0.get(i)).floatValue();
            zi5Var.getClass();
            mt3 mt3Var = zi5Var.a;
            int i4 = (int) fFloatValue;
            zi5Var.b.a.p.setText(String.valueOf(i4));
            mt3Var.invoke(Integer.valueOf(i4));
        }
        AccessibilityManager accessibilityManager = this.p;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            Runnable runnable = this.q;
            if (runnable == null) {
                this.q = new kn0(this);
            } else {
                removeCallbacks(runnable);
            }
            kn0 kn0Var = this.q;
            kn0Var.b = i;
            postDelayed(kn0Var, 200L);
            ln0 ln0Var = this.n;
            View view = ln0Var.i;
            if (i != Integer.MIN_VALUE && ln0Var.h.isEnabled() && (parent = view.getParent()) != null) {
                AccessibilityEvent accessibilityEventK = ln0Var.k(i, RSAKeyGenerator.MIN_KEY_SIZE_BITS);
                accessibilityEventK.setContentChangeTypes(0);
                parent.requestSendAccessibilityEvent(view, accessibilityEventK);
            }
        }
        return true;
    }

    public final void C() {
        double dRound;
        float f = this.q1;
        float f2 = this.M0;
        if (f2 > 0.0f) {
            int i = (int) ((this.I0 - this.H0) / f2);
            dRound = ((double) Math.round(f * i)) / ((double) i);
        } else {
            dRound = f;
        }
        if (s() || t()) {
            dRound = 1.0d - dRound;
        }
        float f3 = this.I0;
        float f4 = this.H0;
        B(this.K0, (float) ((dRound * ((double) (f3 - f4))) + ((double) f4)));
    }

    public final void D(int i, Rect rect) {
        int iV = this.b0 + ((int) (v(getValues().get(i).floatValue()) * this.S0));
        int iD = d();
        int iMax = Math.max(this.R, this.S) / 2;
        int iMax2 = Math.max(this.c0 / 2, iMax);
        int iMax3 = Math.max(this.d0 / 2, iMax);
        RectF rectF = new RectF(iV - iMax2, iD - iMax3, iV + iMax2, iD + iMax3);
        if (t()) {
            this.i1.mapRect(rectF);
        }
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public final void E() {
        float f;
        float f2;
        float f3;
        float f4;
        RippleDrawable rippleDrawableN;
        float fV = (v(((Float) this.J0.get(this.L0)).floatValue()) * this.S0) + this.b0;
        int iD = d();
        if (n() != null && getMeasuredWidth() > 0 && (rippleDrawableN = n()) != null) {
            int i = this.e0;
            float f5 = i;
            float[] fArr = {fV - f5, iD - i, f5 + fV, i + iD};
            if (t()) {
                this.i1.mapPoints(fArr);
            }
            rippleDrawableN.setHotspotBounds((int) fArr[0], (int) fArr[1], (int) fArr[2], (int) fArr[3]);
        }
        float f6 = iD;
        FocusRingDrawable focusRingDrawableC = FocusRingDrawable.c(getBackground());
        if (focusRingDrawableC != null) {
            float dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_slider_focus_ring_padding);
            float f7 = (dimensionPixelOffset * 2.0f) + (this.c0 / 2.0f);
            float f8 = (this.d0 / 2.0f) + dimensionPixelOffset;
            if (t()) {
                f = f6 - f8;
                float f9 = f6 + f8;
                f2 = fV - f7;
                f3 = fV + f7;
                f4 = f9;
            } else {
                f = fV - f7;
                f4 = fV + f7;
                f2 = f6 - f8;
                f3 = f6 + f8;
            }
            focusRingDrawableC.mutate();
            int i2 = (int) f;
            int i3 = (int) f2;
            int i4 = (int) f4;
            int i5 = (int) f3;
            fj3 fj3Var = focusRingDrawableC.G;
            if (fj3Var.w == null) {
                fj3Var.w = new Rect();
            }
            focusRingDrawableC.G.w.set(i2, i3, i4, i5);
        }
    }

    public final void F() {
        float f;
        boolean zT = t();
        boolean zS = s();
        float f2 = 0.5f;
        if (zT && zS) {
            f = 0.5f;
            f2 = -0.2f;
        } else {
            f = 1.2f;
            if (zT) {
                f2 = 1.2f;
                f = 0.5f;
            }
        }
        for (u88 u88Var : this.t) {
            u88Var.o0 = f2;
            u88Var.p0 = f;
            u88Var.invalidateSelf();
        }
        int i = this.W;
        if (i == 0 || i == 1) {
            if (this.K0 == -1 || !isEnabled()) {
                l();
                return;
            } else {
                k(false);
                return;
            }
        }
        if (i == 2) {
            l();
            return;
        }
        if (i != 3) {
            z5.c(this.W, "Unexpected labelBehavior: ");
            return;
        }
        if (isEnabled()) {
            Rect rect = new Rect();
            yc9.s(this).getHitRect(rect);
            if (getLocalVisibleRect(rect) && this.w1) {
                k(true);
                return;
            }
        }
        l();
    }

    public final void G() {
        if (this.f0 > 0 && this.k1 == null && this.l1.isEmpty()) {
            int i = this.c0;
            this.g0 = i;
            this.i0 = this.d0;
            this.h0 = this.f0;
            int iRound = Math.round(i * 0.5f);
            FocusRingDrawable focusRingDrawableC = FocusRingDrawable.c(getBackground());
            y(iRound, (focusRingDrawableC == null || !focusRingDrawableC.G.c) ? -1 : this.d0 - this.K, Integer.valueOf(this.K0));
        }
    }

    public final void H() {
        int iMin;
        P();
        float f = this.M0;
        if (f <= 0.0f) {
            I(this.N0);
            return;
        }
        int i = this.P0;
        if (i != 0) {
            iMin = 0;
            if (i == 1) {
                int i2 = (int) (((this.I0 - this.H0) / f) + 1.0f);
                if (i2 <= (this.S0 / this.Q) + 1) {
                    iMin = i2;
                }
            } else if (i != 2) {
                x5.g(this.P0, "Unexpected tickVisibilityMode: ");
                return;
            }
        } else {
            iMin = Math.min((int) (((this.I0 - this.H0) / f) + 1.0f), (this.S0 / this.Q) + 1);
        }
        I(iMin);
    }

    public final void I(int i) {
        if (i == 0) {
            this.O0 = null;
            return;
        }
        float[] fArr = this.O0;
        if (fArr == null || fArr.length != i * 2) {
            this.O0 = new float[i * 2];
        }
        float f = this.S0 / (i - 1);
        float fD = d();
        for (int i2 = 0; i2 < i * 2; i2 += 2) {
            float[] fArr2 = this.O0;
            fArr2[i2] = ((i2 / 2.0f) * f) + this.b0;
            fArr2[i2 + 1] = fD;
        }
        if (t()) {
            this.i1.mapPoints(this.O0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    public final void J(Canvas canvas, Paint paint, RectF rectF, float f, int i) {
        float fMax;
        if (rectF.isEmpty()) {
            return;
        }
        if (this.J0.isEmpty() || this.f0 <= 0) {
            fMax = f;
        } else {
            float fR = R(((Float) this.J0.get((s() || t()) ? this.J0.size() - 1 : 0)).floatValue()) - this.b0;
            if (fR < f) {
                fMax = Math.max(fR, this.l0);
            } else {
                fMax = f;
            }
        }
        if (!this.J0.isEmpty() && this.f0 > 0) {
            float fR2 = R(((Float) this.J0.get((s() || t()) ? 0 : this.J0.size() - 1)).floatValue()) - this.b0;
            float f2 = this.S0;
            if (fR2 > f2 - f) {
                f = Math.max(f2 - fR2, this.l0);
            }
        }
        int iA = dj7.A(i);
        if (iA == 1) {
            f = this.l0;
        } else if (iA == 2) {
            fMax = this.l0;
        } else if (iA == 3) {
            fMax = this.l0;
            f = fMax;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        if (this.f0 > 0) {
            paint.setAntiAlias(true);
        }
        RectF rectF2 = new RectF(rectF);
        boolean zT = t();
        Matrix matrix = this.i1;
        if (zT) {
            matrix.mapRect(rectF2);
        }
        Path path = this.a1;
        path.reset();
        if (rectF.width() >= fMax + f) {
            path.addRoundRect(rectF2, t() ? new float[]{fMax, fMax, fMax, fMax, f, f, f, f} : new float[]{fMax, fMax, f, f, f, f, fMax, fMax}, Path.Direction.CW);
            canvas.drawPath(path, paint);
            return;
        }
        float fMin = Math.min(fMax, f);
        float fMax2 = Math.max(fMax, f);
        canvas.save();
        path.addRoundRect(rectF2, fMin, fMin, Path.Direction.CW);
        canvas.clipPath(path);
        int iA2 = dj7.A(i);
        RectF rectF3 = this.e1;
        if (iA2 == 1) {
            float f3 = rectF.left;
            rectF3.set(f3, rectF.top, (2.0f * fMax2) + f3, rectF.bottom);
        } else if (iA2 != 2) {
            rectF3.set(rectF.centerX() - fMax2, rectF.top, rectF.centerX() + fMax2, rectF.bottom);
        } else {
            float f4 = rectF.right;
            rectF3.set(f4 - (2.0f * fMax2), rectF.top, f4, rectF.bottom);
        }
        if (t()) {
            matrix.mapRect(rectF3);
        }
        canvas.drawRoundRect(rectF3, fMax2, fMax2, paint);
        canvas.restore();
    }

    public final void K() {
        Drawable drawable = this.p0;
        if (drawable != null) {
            if (!this.q0 && this.r0 != null) {
                this.p0 = drawable.mutate();
                this.q0 = true;
            }
            if (this.q0) {
                this.p0.setTintList(this.r0);
            }
        }
    }

    public final void L() {
        Drawable drawable = this.n0;
        if (drawable != null) {
            if (!this.o0 && this.r0 != null) {
                this.n0 = drawable.mutate();
                this.o0 = true;
            }
            if (this.o0) {
                this.n0.setTintList(this.r0);
            }
        }
    }

    public final void M() {
        Drawable drawable = this.u0;
        if (drawable != null) {
            if (!this.v0 && this.w0 != null) {
                this.u0 = drawable.mutate();
                this.v0 = true;
            }
            if (this.v0) {
                this.u0.setTintList(this.w0);
            }
        }
    }

    public final void N() {
        Drawable drawable = this.s0;
        if (drawable != null) {
            if (!this.t0 && this.w0 != null) {
                this.s0 = drawable.mutate();
                this.t0 = true;
            }
            if (this.t0) {
                this.s0.setTintList(this.w0);
            }
        }
    }

    public final void O(boolean z) {
        int paddingTop;
        int paddingBottom;
        boolean z2;
        if (t()) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i = paddingBottom + paddingTop;
        int iMax = Math.max(this.U, Math.max(this.a0 + i, this.d0 + i));
        boolean z3 = true;
        if (iMax == this.V) {
            z2 = false;
        } else {
            this.V = iMax;
            z2 = true;
        }
        int iMax2 = Math.max(Math.max(Math.max((this.c0 / 2) - this.M, 0), Math.max((this.a0 - this.N) / 2, 0)), Math.max(Math.max(this.Q0 - this.O, 0), Math.max(this.R0 - this.P, 0))) + this.L;
        if (this.b0 == iMax2) {
            z3 = false;
        } else {
            this.b0 = iMax2;
            if (isLaidOut()) {
                this.S0 = Math.max((t() ? getHeight() : getWidth()) - (this.b0 * 2), 0);
                H();
            }
        }
        if (t()) {
            float fD = d();
            Matrix matrix = this.i1;
            matrix.reset();
            matrix.setRotate(90.0f, fD, fD);
        }
        if (z2 || z) {
            requestLayout();
        } else if (z3) {
            postInvalidate();
        }
    }

    public final void P() {
        if (this.U0) {
            float f = this.H0;
            float f2 = this.I0;
            if (f >= f2) {
                throw new IllegalStateException("valueFrom(" + f + ") must be smaller than valueTo(" + f2 + ")");
            }
            for (Float f3 : this.J0) {
                if (f3.floatValue() < this.H0 || f3.floatValue() > this.I0) {
                    throw new IllegalStateException("Slider value(" + f3 + ") must be greater or equal to valueFrom(" + this.H0 + "), and lower or equal to valueTo(" + this.I0 + ")");
                }
                if (this.M0 > 0.0f && !Q(f3.floatValue())) {
                    float f4 = this.H0;
                    float f5 = this.M0;
                    throw new IllegalStateException("Value(" + f3 + ") must be equal to valueFrom(" + f4 + ") plus a multiple of stepSize(" + f5 + ") when using stepSize(" + f5 + ")");
                }
            }
            if (this.M0 > 0.0f && !Q(this.I0)) {
                throw new IllegalStateException("The stepSize(" + this.M0 + ") must be 0, or a factor of the valueFrom(" + this.H0 + ")-valueTo(" + this.I0 + ") range");
            }
            float minSeparation = getMinSeparation();
            if (minSeparation < 0.0f) {
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            float f6 = this.M0;
            if (f6 > 0.0f && minSeparation > 0.0f) {
                if (this.r1 != 1) {
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + f6 + ")");
                }
                if (minSeparation < f6 || !p(minSeparation)) {
                    float f7 = this.M0;
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f7 + ") when using stepSize(" + f7 + ")");
                }
            }
            float f8 = this.M0;
            if (f8 != 0.0f) {
                if (((int) f8) != f8) {
                    Log.w("on0", "Floating point value used for stepSize(" + f8 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f9 = this.H0;
                if (((int) f9) != f9) {
                    Log.w("on0", "Floating point value used for valueFrom(" + f9 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
                float f10 = this.I0;
                if (((int) f10) != f10) {
                    Log.w("on0", "Floating point value used for valueTo(" + f10 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                }
            }
            this.U0 = false;
        }
    }

    public final boolean Q(float f) {
        return p(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.H0)), MathContext.DECIMAL64).doubleValue());
    }

    public final float R(float f) {
        return (v(f) * this.S0) + this.b0;
    }

    public final void a(int i, Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, i, this.d0);
        } else {
            float fMax = Math.max(i, this.d0) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public final void b(Canvas canvas, RectF rectF, Drawable drawable, boolean z) {
        if (drawable != null) {
            int i = this.x0;
            float f = rectF.right - rectF.left;
            int i2 = this.y0;
            float f2 = (i2 * 2) + i;
            RectF rectF2 = this.g1;
            if (f >= f2) {
                float f3 = z ^ (s() || t()) ? rectF.left + i2 : (rectF.right - i2) - i;
                float f4 = i;
                float fD = d() - (f4 / 2.0f);
                rectF2.set(f3, fD, f3 + f4, f4 + fD);
            } else {
                rectF2.setEmpty();
            }
            if (rectF2.isEmpty()) {
                return;
            }
            if (t()) {
                this.i1.mapRect(rectF2);
            }
            Rect rect = this.h1;
            rectF2.round(rect);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
    }

    public final int c(int i) {
        if (!this.G0 || i != this.K0 || this.k1 != null || !this.l1.isEmpty()) {
            return this.f0;
        }
        return this.f0 - ((this.c0 - Math.round(this.c0 * 0.5f)) / 2);
    }

    public final int d() {
        int i = this.V / 2;
        int i2 = this.W;
        int intrinsicHeight = 0;
        if (i2 == 1 || i2 == 3) {
            ArrayList arrayList = this.t;
            if (!arrayList.isEmpty()) {
                intrinsicHeight = ((u88) arrayList.get(0)).getIntrinsicHeight();
            }
        }
        return i + intrinsicHeight;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.n.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.a.setColor(o(this.Z0));
        this.b.setColor(o(this.Y0));
        this.e.setColor(o(this.X0));
        this.f.setColor(o(this.W0));
        this.k.setColor(o(this.X0));
        for (u88 u88Var : this.t) {
            if (u88Var.isStateful()) {
                u88Var.setState(getDrawableState());
            }
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i >= arrayList.size()) {
                int iO = o(this.V0);
                Paint paint = this.d;
                paint.setColor(iO);
                paint.setAlpha(63);
                return;
            }
            if (((c95) arrayList.get(i)).isStateful()) {
                ((c95) arrayList.get(i)).setState(getDrawableState());
            }
            i++;
        }
    }

    public final ValueAnimator e(boolean z) {
        int iF;
        TimeInterpolator timeInterpolatorG;
        float fFloatValue = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.I : this.H;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z ? 1.0f : 0.0f);
        if (z) {
            iF = ji8.F(getContext(), R.attr.motionDurationMedium4, 83);
            timeInterpolatorG = ji8.G(getContext(), R.attr.motionEasingEmphasizedInterpolator, ed.e);
        } else {
            iF = ji8.F(getContext(), R.attr.motionDurationShort3, 117);
            timeInterpolatorG = ji8.G(getContext(), R.attr.motionEasingEmphasizedAccelerateInterpolator, ed.c);
        }
        valueAnimatorOfFloat.setDuration(iF);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorG);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fn0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                float fFloatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                on0 on0Var = this.a;
                for (u88 u88Var : on0Var.t) {
                    u88Var.m0 = fFloatValue2;
                    u88Var.n0 = fFloatValue2;
                    u88Var.q0 = ed.b(0.0f, 1.0f, 0.19f, 1.0f, fFloatValue2);
                    u88Var.invalidateSelf();
                }
                on0Var.postInvalidateOnAnimation();
            }
        });
        return valueAnimatorOfFloat;
    }

    public final void f(float f, float f2, float f3, float f4, Canvas canvas, RectF rectF, int i, int i2) {
        if (f2 - f > getTrackCornerSize() - i2) {
            rectF.set(f, f3, f2, f4);
        } else {
            rectF.setEmpty();
        }
        J(canvas, this.a, rectF, getTrackCornerSize(), i);
    }

    public final void g(Canvas canvas, float f, float f2) {
        for (int i = 0; i < this.J0.size(); i++) {
            float fR = R(((Float) this.J0.get(i)).floatValue());
            float fC = (this.c0 / 2.0f) + c(i);
            if (f >= fR - fC && f <= fR + fC) {
                return;
            }
        }
        boolean zT = t();
        Paint paint = this.k;
        if (zT) {
            canvas.drawPoint(f2, f, paint);
        } else {
            canvas.drawPoint(f, f2, paint);
        }
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.n.k;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public abstract float getThumbElevation();

    public abstract int getThumbRadius();

    public abstract ColorStateList getThumbStrokeColor();

    public abstract float getThumbStrokeWidth();

    public abstract ColorStateList getThumbTintList();

    public abstract int getTrackCornerSize();

    public List<Float> getValues() {
        return new ArrayList(this.J0);
    }

    public final void h(Canvas canvas, int i, int i2, float f, Drawable drawable) {
        canvas.save();
        if (t()) {
            canvas.concat(this.i1);
        }
        canvas.translate((this.b0 + ((int) (v(f) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    public final void i(int i, int i2, Canvas canvas, Paint paint) {
        while (i < i2) {
            boolean zT = t();
            float[] fArr = this.O0;
            float f = zT ? fArr[i + 1] : fArr[i];
            int i3 = 0;
            while (true) {
                if (i3 >= this.J0.size()) {
                    if (!this.m0) {
                        float[] fArr2 = this.O0;
                        canvas.drawPoint(fArr2[i], fArr2[i + 1], paint);
                        break;
                        break;
                    }
                    float f2 = ((this.b0 * 2) + this.S0) / 2.0f;
                    float f3 = this.f0;
                    if (f >= f2 - f3 && f <= f2 + f3) {
                        break;
                    }
                    float[] fArr3 = this.O0;
                    canvas.drawPoint(fArr3[i], fArr3[i + 1], paint);
                    break;
                }
                float fR = R(((Float) this.J0.get(i3)).floatValue());
                float fC = (this.c0 / 2.0f) + c(i3);
                if (f >= fR - fC && f <= fR + fC) {
                    break;
                } else {
                    i3++;
                }
            }
            i += 2;
        }
    }

    public final void j(Canvas canvas, RectF rectF, RectF rectF2) {
        if (this.n0 == null && this.p0 == null && this.s0 == null && this.u0 == null) {
            return;
        }
        if (this.J0.size() > 1) {
            Log.w("on0", "Track icons can only be used when only 1 thumb is present.");
        }
        b(canvas, rectF, this.n0, true);
        b(canvas, rectF2, this.s0, true);
        b(canvas, rectF, this.p0, false);
        b(canvas, rectF2, this.u0, false);
    }

    public final void k(boolean z) {
        if (!this.G) {
            this.G = true;
            ValueAnimator valueAnimatorE = e(true);
            this.H = valueAnimatorE;
            this.I = null;
            valueAnimatorE.start();
        }
        ArrayList arrayList = this.t;
        Iterator it = arrayList.iterator();
        if (z) {
            for (int i = 0; i < this.J0.size() && it.hasNext(); i++) {
                if (i != this.L0) {
                    z((u88) it.next(), ((Float) this.J0.get(i)).floatValue());
                }
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.J0.size())));
        }
        z((u88) it.next(), ((Float) this.J0.get(this.L0)).floatValue());
    }

    public final void l() {
        if (this.G) {
            this.G = false;
            ValueAnimator valueAnimatorE = e(false);
            this.I = valueAnimatorE;
            this.H = null;
            valueAnimatorE.addListener(new jn0(this, 0));
            this.I.start();
        }
    }

    public final float[] m() {
        float fFloatValue = ((Float) this.J0.get(0)).floatValue();
        float fFloatValue2 = ((Float) dj7.e(this.J0, 1)).floatValue();
        if (this.J0.size() == 1) {
            fFloatValue = this.H0;
        }
        float fV = v(fFloatValue);
        float fV2 = v(fFloatValue2);
        if (this.m0) {
            float fMin = Math.min(0.5f, fV2);
            fV2 = Math.max(0.5f, fV2);
            fV = fMin;
        }
        return (this.m0 || !(s() || t())) ? new float[]{fV, fV2} : new float[]{fV2, fV};
    }

    public final RippleDrawable n() {
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            return (RippleDrawable) background;
        }
        return null;
    }

    public final int o(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.w1 = isShown();
        getViewTreeObserver().addOnScrollChangedListener(this.t1);
        getViewTreeObserver().addOnGlobalLayoutListener(this.u1);
        for (u88 u88Var : this.t) {
            ViewGroup viewGroupS = yc9.s(this);
            if (viewGroupS == null) {
                u88Var.getClass();
            } else {
                u88Var.getClass();
                int[] iArr = new int[2];
                viewGroupS.getLocationOnScreen(iArr);
                u88Var.l0 = iArr[0];
                viewGroupS.getWindowVisibleDisplayFrame(u88Var.e0);
                viewGroupS.addOnLayoutChangeListener(u88Var.d0);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        kn0 kn0Var = this.q;
        if (kn0Var != null) {
            removeCallbacks(kn0Var);
        }
        this.G = false;
        for (u88 u88Var : this.t) {
            ViewGroup viewGroupS = yc9.s(this);
            if (viewGroupS != null) {
                viewGroupS.getOverlay().remove(u88Var);
                viewGroupS.removeOnLayoutChangeListener(u88Var.d0);
            }
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.t1);
        getViewTreeObserver().removeOnGlobalLayoutListener(this.u1);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:127:0x027a  */
    /* JADX WARN: Code duplicated, block: B:84:0x019b  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a1  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iC;
        int iC2;
        int i;
        int iC3;
        float f;
        float f2;
        int i2;
        on0 on0Var = this;
        if (on0Var.U0) {
            on0Var.P();
            on0Var.H();
        }
        super.onDraw(canvas);
        int iD = on0Var.d();
        int i3 = on0Var.S0;
        float[] fArrM = on0Var.m();
        float f3 = iD;
        float f4 = on0Var.a0 / 2.0f;
        float f5 = f3 - f4;
        float f6 = f4 + f3;
        float f7 = 0.5f;
        int i4 = 0;
        if (on0Var.m0 && fArrM[0] == 0.5f) {
            iC = on0Var.f0;
        } else {
            iC = on0Var.c((on0Var.s() || on0Var.t()) ? on0Var.J0.size() - 1 : 0);
        }
        int i5 = iC;
        float trackCornerSize = on0Var.b0 - on0Var.getTrackCornerSize();
        float f8 = i3;
        float f9 = ((fArrM[0] * f8) + on0Var.b0) - i5;
        RectF rectF = on0Var.c1;
        on0Var.f(trackCornerSize, f9, f5, f6, canvas, rectF, 2, i5);
        if (on0Var.m0 && fArrM[1] == 0.5f) {
            iC2 = on0Var.f0;
        } else {
            iC2 = on0Var.c((on0Var.s() || on0Var.t()) ? 0 : on0Var.J0.size() - 1);
        }
        int i6 = iC2;
        int i7 = on0Var.b0;
        float f10 = (fArrM[1] * f8) + i7 + i6;
        int trackCornerSize2 = on0Var.getTrackCornerSize();
        RectF rectF2 = on0Var.d1;
        int i8 = 3;
        on0Var.f(f10, trackCornerSize2 + i7 + i3, f5, f6, canvas, rectF2, 3, i6);
        int i9 = on0Var.S0;
        float[] fArrM2 = on0Var.m();
        float f11 = on0Var.b0;
        float f12 = i9;
        float f13 = (fArrM2[1] * f12) + f11;
        float fC = (fArrM2[0] * f12) + f11;
        int i10 = 2;
        float fR = f13;
        RectF rectF3 = on0Var.b1;
        if (fC >= f13) {
            rectF3.setEmpty();
        } else {
            if (on0Var.J0.size() != 1 || on0Var.m0) {
                i8 = 4;
            } else if (!on0Var.s() && !on0Var.t()) {
                i8 = 2;
            }
            int i11 = i8;
            int i12 = 0;
            while (i12 < on0Var.J0.size()) {
                if (on0Var.J0.size() > 1) {
                    fR = i12 > 0 ? on0Var.R(((Float) on0Var.J0.get(i12 - 1)).floatValue()) : fC;
                    float fR2 = on0Var.R(((Float) on0Var.J0.get(i12)).floatValue());
                    if (on0Var.s() || on0Var.t()) {
                        fC = fR2;
                    } else {
                        fC = fR;
                        fR = fR2;
                    }
                }
                int trackCornerSize3 = on0Var.getTrackCornerSize();
                float f14 = f7;
                int iA = dj7.A(i11);
                if (iA != 1) {
                    if (iA != i10) {
                        i = i10;
                        if (iA == 3) {
                            if (i12 > 0) {
                                fC += on0Var.c(i12 - 1);
                                iC3 = on0Var.c(i12);
                            } else if (fArrM2[1] == f14) {
                                fC += on0Var.c(i12);
                            } else if (fArrM2[0] == f14) {
                                iC3 = on0Var.c(i12);
                            }
                        }
                    } else {
                        i = i10;
                        fC += on0Var.c(i12);
                        fR += trackCornerSize3;
                    }
                    f = fR;
                    f2 = fC;
                    if (f2 >= f) {
                        rectF3.setEmpty();
                    } else {
                        float f15 = on0Var.a0 / 2.0f;
                        rectF3.set(f2, f3 - f15, f, f15 + f3);
                        on0Var.J(canvas, on0Var.b, rectF3, trackCornerSize3, i11);
                    }
                    i12++;
                    fR = f;
                    fC = f2;
                    f7 = f14;
                    i10 = i;
                } else {
                    i = i10;
                    fC -= trackCornerSize3;
                    iC3 = on0Var.c(i12);
                }
                fR -= iC3;
                f = fR;
                f2 = fC;
                if (f2 >= f) {
                    rectF3.setEmpty();
                } else {
                    float f16 = on0Var.a0 / 2.0f;
                    rectF3.set(f2, f3 - f16, f, f16 + f3);
                    on0Var.J(canvas, on0Var.b, rectF3, trackCornerSize3, i11);
                }
                i12++;
                fR = f;
                fC = f2;
                f7 = f14;
                i10 = i;
            }
        }
        Canvas canvas2 = canvas;
        int i13 = i10;
        if (on0Var.s() || on0Var.t()) {
            on0Var.j(canvas2, rectF3, rectF);
        } else {
            on0Var.j(canvas2, rectF3, rectF2);
        }
        float[] fArr = on0Var.O0;
        if (fArr != null && fArr.length != 0) {
            float[] fArrM3 = on0Var.m();
            int iCeil = (int) Math.ceil(((on0Var.O0.length / 2.0f) - 1.0f) * fArrM3[0]);
            int iFloor = (int) Math.floor(((on0Var.O0.length / 2.0f) - 1.0f) * fArrM3[1]);
            Paint paint = on0Var.e;
            if (iCeil > 0) {
                on0Var.i(0, iCeil * 2, canvas2, paint);
            }
            if (iCeil <= iFloor) {
                on0Var.i(iCeil * 2, (iFloor + 1) * 2, canvas2, on0Var.f);
            }
            int i14 = (iFloor + 1) * 2;
            float[] fArr2 = on0Var.O0;
            if (i14 < fArr2.length) {
                on0Var.i(i14, fArr2.length, canvas2, paint);
            }
        }
        if (on0Var.j0 > 0 && !on0Var.J0.isEmpty()) {
            float fFloatValue = ((Float) dj7.e(on0Var.J0, 1)).floatValue();
            float f17 = on0Var.I0;
            if (fFloatValue < f17) {
                on0Var.g(canvas2, on0Var.R(f17), f3);
            }
            if (on0Var.m0 || (on0Var.J0.size() > 1 && ((Float) on0Var.J0.get(0)).floatValue() > on0Var.H0)) {
                on0Var.g(canvas2, on0Var.R(on0Var.H0), f3);
            }
        }
        if ((on0Var.G0 || on0Var.isFocused()) && on0Var.isEnabled()) {
            int i15 = on0Var.S0;
            if (on0Var.n() == null) {
                float[] fArr3 = new float[i13];
                fArr3[0] = (on0Var.v(((Float) on0Var.J0.get(on0Var.L0)).floatValue()) * i15) + on0Var.b0;
                fArr3[1] = f3;
                if (on0Var.t()) {
                    on0Var.i1.mapPoints(fArr3);
                }
                if (Build.VERSION.SDK_INT < 28) {
                    float f18 = fArr3[0];
                    float f19 = on0Var.e0;
                    float f20 = fArr3[1];
                    canvas.clipRect(f18 - f19, f20 - f19, f18 + f19, f20 + f19, Region.Op.UNION);
                    canvas2 = canvas;
                }
                canvas2.drawCircle(fArr3[0], fArr3[1], on0Var.e0, on0Var.d);
            } else {
                on0Var = on0Var;
            }
        } else {
            on0Var = on0Var;
        }
        on0Var.F();
        int i16 = on0Var.S0;
        while (i4 < on0Var.J0.size()) {
            float fFloatValue2 = ((Float) on0Var.J0.get(i4)).floatValue();
            Drawable drawable = on0Var.k1;
            if (drawable != null) {
                i2 = iD;
                on0Var.h(canvas2, i16, i2, fFloatValue2, drawable);
            } else {
                on0 on0Var2 = on0Var;
                i2 = iD;
                if (i4 < on0Var2.l1.size()) {
                    on0Var2.h(canvas, i16, i2, fFloatValue2, (Drawable) on0Var2.l1.get(i4));
                } else {
                    if (!on0Var2.isEnabled()) {
                        canvas.drawCircle((on0Var2.v(fFloatValue2) * i16) + on0Var2.b0, f3, on0Var2.getThumbRadius(), on0Var2.c);
                    }
                    on0Var2.h(canvas, i16, i2, fFloatValue2, (Drawable) on0Var2.j1.get(i4));
                }
            }
            i4++;
            on0Var = this;
            canvas2 = canvas;
            iD = i2;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        ln0 ln0Var = this.n;
        if (!z) {
            x();
            this.K0 = -1;
            ln0Var.j(this.L0);
            return;
        }
        if (this.K0 == -1) {
            int i2 = Integer.MAX_VALUE;
            if (i == 1) {
                u(Integer.MAX_VALUE);
            } else if (i == 2) {
                u(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
            } else if (i == 17) {
                u((s() || t()) ? -2147483647 : Integer.MAX_VALUE);
            } else if (i == 66) {
                if (!s() && !t()) {
                    i2 = Integer.MIN_VALUE;
                }
                u(i2);
            }
            this.K0 = this.L0;
        }
        x();
        G();
        ln0Var.v(this.L0);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(false);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        Float fValueOf;
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.K0 = this.L0;
        boolean zIsLongPress = this.T0 | keyEvent.isLongPress();
        this.T0 = zIsLongPress;
        float fRound = this.M0;
        if (zIsLongPress) {
            if (fRound == 0.0f) {
                fRound = 1.0f;
            }
            float f = (this.I0 - this.H0) / fRound;
            if (f > 20.0f) {
                fRound *= Math.round(f / 20.0f);
            }
        } else if (fRound == 0.0f) {
            fRound = 1.0f;
        }
        if (i == 21) {
            if (!s()) {
                fRound = -fRound;
            }
            fValueOf = Float.valueOf(fRound);
        } else if (i == 22) {
            if (s()) {
                fRound = -fRound;
            }
            fValueOf = Float.valueOf(fRound);
        } else if (i != 69) {
            fValueOf = (i == 70 || i == 81) ? Float.valueOf(fRound) : null;
        } else {
            fValueOf = Float.valueOf(-fRound);
        }
        if (fValueOf != null) {
            if (B(this.K0, fValueOf.floatValue() + ((Float) this.J0.get(this.K0)).floatValue())) {
                E();
                postInvalidate();
            }
            return true;
        }
        if (i != 61) {
            return super.onKeyDown(i, keyEvent);
        }
        x();
        if (keyEvent.hasNoModifiers()) {
            return u(1);
        }
        if (keyEvent.isShiftPressed()) {
            return u(-1);
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.T0 = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Rect rect = this.D0;
        rect.left = 0;
        rect.top = 0;
        rect.right = i3 - i;
        rect.bottom = i4 - i2;
        ArrayList arrayList = this.E0;
        if (!arrayList.contains(rect)) {
            arrayList.add(rect);
        }
        WeakHashMap weakHashMap = dl8.a;
        if (Build.VERSION.SDK_INT >= 29) {
            zk8.c(this, arrayList);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.W;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.V + ((i3 == 1 || i3 == 3) ? ((u88) this.t.get(0)).getIntrinsicHeight() : 0), 1073741824);
        if (t()) {
            super.onMeasure(iMakeMeasureSpec, i2);
        } else {
            super.onMeasure(i, iMakeMeasureSpec);
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        nn0 nn0Var = (nn0) parcelable;
        super.onRestoreInstanceState(nn0Var.getSuperState());
        this.H0 = nn0Var.a;
        this.I0 = nn0Var.b;
        A(nn0Var.c);
        this.M0 = nn0Var.d;
        if (nn0Var.e) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        nn0 nn0Var = new nn0(super.onSaveInstanceState());
        nn0Var.a = this.H0;
        nn0Var.b = this.I0;
        nn0Var.c = new ArrayList(this.J0);
        nn0Var.d = this.M0;
        nn0Var.e = hasFocus();
        return nn0Var;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        if (t()) {
            i = i2;
        }
        this.S0 = Math.max(i - (this.b0 * 2), 0);
        H();
        E();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            float y = t() ? motionEvent.getY() : motionEvent.getX();
            float x = t() ? motionEvent.getX() : motionEvent.getY();
            float f = (y - this.b0) / this.S0;
            this.q1 = f;
            float fMax = Math.max(0.0f, f);
            this.q1 = fMax;
            this.q1 = Math.min(1.0f, fMax);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                ArrayList arrayList = this.y;
                int i = this.J;
                if (actionMasked == 1) {
                    this.G0 = false;
                    MotionEvent motionEvent2 = this.C0;
                    if (motionEvent2 != null && motionEvent2.getActionMasked() == 0) {
                        float f2 = i;
                        if (Math.abs(this.C0.getX() - motionEvent.getX()) <= f2 && Math.abs(this.C0.getY() - motionEvent.getY()) <= f2) {
                            Slider slider = (Slider) this;
                            if (slider.getActiveThumbIndex() == -1) {
                                slider.setActiveThumbIndex(0);
                            }
                            w();
                        }
                    }
                    if (this.K0 != -1) {
                        C();
                        E();
                        x();
                        this.K0 = -1;
                        Iterator it = arrayList.iterator();
                        if (it.hasNext()) {
                            throw eq3.h(it);
                        }
                    }
                    invalidate();
                } else if (actionMasked == 2) {
                    if (!this.G0) {
                        if ((t() || !r(motionEvent) || Math.abs(y - this.A0) >= i) && (!t() || !q(motionEvent) || Math.abs(x - this.B0) >= i * 0.8f)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                            Slider slider2 = (Slider) this;
                            if (slider2.getActiveThumbIndex() == -1) {
                                slider2.setActiveThumbIndex(0);
                            }
                            this.G0 = true;
                            G();
                            w();
                        }
                    }
                    C();
                    E();
                    invalidate();
                } else if (actionMasked == 3) {
                    this.G0 = false;
                    if (this.K0 != -1 && !this.F0.isEmpty()) {
                        for (int i2 = 0; i2 < this.J0.size(); i2++) {
                            if (i2 == this.K0) {
                                B(i2, ((Float) this.F0.get(i2)).floatValue());
                                break;
                            }
                        }
                    }
                    E();
                    x();
                    this.K0 = -1;
                    Iterator it2 = arrayList.iterator();
                    if (it2.hasNext()) {
                        throw eq3.h(it2);
                    }
                    invalidate();
                }
            } else {
                this.A0 = y;
                this.B0 = x;
                this.F0.clear();
                this.F0 = getValues();
                if ((t() || !r(motionEvent)) && (!t() || !q(motionEvent))) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    Slider slider3 = (Slider) this;
                    if (slider3.getActiveThumbIndex() == -1) {
                        slider3.setActiveThumbIndex(0);
                    }
                    requestFocus();
                    this.G0 = true;
                    G();
                    w();
                    C();
                    E();
                    invalidate();
                }
            }
            setPressed(this.G0);
            this.C0 = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        this.w1 = z;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            ViewGroup viewGroupS = yc9.s(this);
            ViewOverlay overlay = viewGroupS == null ? null : viewGroupS.getOverlay();
            if (overlay == null) {
                return;
            }
            Iterator it = this.t.iterator();
            while (it.hasNext()) {
                overlay.remove((u88) it.next());
            }
        }
    }

    public final boolean p(double d) {
        double dDoubleValue = new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.M0)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public final boolean q(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollHorizontally(1) || viewGroup.canScrollHorizontally(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean r(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean s() {
        return getLayoutDirection() == 1;
    }

    public void setActiveThumbIndex(int i) {
        this.K0 = i;
    }

    public abstract void setCentered(boolean z);

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.k1 = null;
        this.l1 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            List list = this.l1;
            Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
            a(this.c0, drawableNewDrawable);
            list.add(drawableNewDrawable);
        }
        postInvalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public abstract void setHaloRadius(int i);

    public abstract void setHaloTintList(ColorStateList colorStateList);

    public abstract void setLabelBehavior(int i);

    public abstract void setOrientation(int i);

    public void setSeparationUnit(int i) {
        this.r1 = i;
        this.U0 = true;
        postInvalidate();
    }

    public abstract void setThumbElevation(float f);

    public abstract void setThumbHeight(int i);

    public abstract void setThumbStrokeColor(ColorStateList colorStateList);

    public abstract void setThumbStrokeWidth(float f);

    public abstract void setThumbTintList(ColorStateList colorStateList);

    public abstract void setThumbTrackGapSize(int i);

    public abstract void setThumbWidth(int i);

    public abstract void setTickActiveRadius(int i);

    public abstract void setTickActiveTintList(ColorStateList colorStateList);

    public abstract void setTickInactiveRadius(int i);

    public abstract void setTickInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackActiveTintList(ColorStateList colorStateList);

    public abstract void setTrackCornerSize(int i);

    public abstract void setTrackHeight(int i);

    public abstract void setTrackIconActiveColor(ColorStateList colorStateList);

    public abstract void setTrackIconActiveEnd(Drawable drawable);

    public abstract void setTrackIconActiveStart(Drawable drawable);

    public abstract void setTrackIconInactiveColor(ColorStateList colorStateList);

    public abstract void setTrackIconInactiveEnd(Drawable drawable);

    public abstract void setTrackIconInactiveStart(Drawable drawable);

    public abstract void setTrackIconSize(int i);

    public abstract void setTrackInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackInsideCornerSize(int i);

    public abstract void setTrackStopIndicatorSize(int i);

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        A(arrayList);
    }

    public final boolean t() {
        return this.T == 1;
    }

    public final boolean u(int i) {
        int i2 = this.L0;
        long j = ((long) i2) + ((long) i);
        long size = this.J0.size() - 1;
        if (j < 0) {
            j = 0;
        } else if (j > size) {
            j = size;
        }
        int i3 = (int) j;
        this.L0 = i3;
        if (i3 == i2) {
            return false;
        }
        this.K0 = i3;
        G();
        E();
        postInvalidate();
        return true;
    }

    public final float v(float f) {
        float f2 = this.H0;
        float f3 = (f - f2) / (this.I0 - f2);
        return (s() || t()) ? 1.0f - f3 : f3;
    }

    public final void w() {
        Iterator it = this.y.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    public final void x() {
        int i;
        if (this.f0 <= 0 || (i = this.g0) == -1 || this.h0 == -1) {
            return;
        }
        y(i, this.i0, Integer.valueOf(this.K0));
    }

    public final void y(int i, int i2, Integer num) {
        int i3 = 0;
        int i4 = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i4 >= arrayList.size()) {
                O(false);
                return;
            }
            if (num == null || i4 == num.intValue()) {
                c95 c95Var = (c95) arrayList.get(i4);
                us2 us2Var = new us2(i3);
                us2 us2Var2 = new us2(i3);
                us2 us2Var3 = new us2(i3);
                us2 us2Var4 = new us2(i3);
                float f = i / 2.0f;
                zv1 zv1VarE = xh8.e(0);
                f3 f3Var = new f3(f);
                f3 f3Var2 = new f3(f);
                f3 f3Var3 = new f3(f);
                f3 f3Var4 = new f3(f);
                tb7 tb7Var = new tb7();
                tb7Var.a = zv1VarE;
                tb7Var.b = zv1VarE;
                tb7Var.c = zv1VarE;
                tb7Var.d = zv1VarE;
                tb7Var.e = f3Var;
                tb7Var.f = f3Var2;
                tb7Var.g = f3Var3;
                tb7Var.h = f3Var4;
                tb7Var.i = us2Var;
                tb7Var.j = us2Var2;
                tb7Var.k = us2Var3;
                tb7Var.l = us2Var4;
                c95Var.setShapeAppearanceModel(tb7Var);
                ((c95) arrayList.get(i4)).setBounds(0, 0, i, i2 >= 0 ? i2 : this.d0);
            }
            i4++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:22:0x00be  */
    /* JADX WARN: Code duplicated, block: B:23:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    public final void z(u88 u88Var, float f) {
        int iV;
        int intrinsicWidth;
        int iD;
        int intrinsicHeight;
        int iD2;
        Rect rect;
        ViewGroup viewGroupS;
        ViewOverlay overlay;
        String str = String.format(((float) ((int) f)) == f ? "%.0f" : "%.2f", Float.valueOf(f));
        if (!TextUtils.equals(u88Var.Z, str)) {
            u88Var.Z = str;
            u88Var.c0.e = true;
            u88Var.invalidateSelf();
        }
        boolean zT = t();
        int i = this.b0;
        int i2 = this.z0;
        if (zT) {
            iV = (i + ((int) (v(f) * this.S0))) - (u88Var.getIntrinsicHeight() / 2);
            intrinsicWidth = u88Var.getIntrinsicHeight() + iV;
            if (s()) {
                iD = d() - ((this.d0 / 2) + i2);
                intrinsicHeight = u88Var.getIntrinsicWidth();
            } else {
                iD2 = (this.d0 / 2) + i2 + d();
                iD = u88Var.getIntrinsicWidth() + iD2;
            }
            rect = this.f1;
            rect.set(iV, iD2, intrinsicWidth, iD);
            if (t()) {
                RectF rectF = new RectF(rect);
                this.i1.mapRect(rectF);
                rectF.round(rect);
            }
            oi2.c(yc9.s(this), this, rect);
            u88Var.setBounds(rect);
            viewGroupS = yc9.s(this);
            if (viewGroupS == null) {
                overlay = null;
            } else {
                overlay = viewGroupS.getOverlay();
            }
            if (overlay == null) {
                return;
            }
            overlay.add(u88Var);
        }
        iV = (i + ((int) (v(f) * this.S0))) - (u88Var.getIntrinsicWidth() / 2);
        intrinsicWidth = u88Var.getIntrinsicWidth() + iV;
        iD = d() - ((this.d0 / 2) + i2);
        intrinsicHeight = u88Var.getIntrinsicHeight();
        iD2 = iD - intrinsicHeight;
        rect = this.f1;
        rect.set(iV, iD2, intrinsicWidth, iD);
        if (t()) {
            RectF rectF2 = new RectF(rect);
            this.i1.mapRect(rectF2);
            rectF2.round(rect);
        }
        oi2.c(yc9.s(this), this, rect);
        u88Var.setBounds(rect);
        viewGroupS = yc9.s(this);
        if (viewGroupS == null) {
            overlay = null;
        } else {
            overlay = viewGroupS.getOverlay();
        }
        if (overlay == null) {
            return;
        }
        overlay.add(u88Var);
    }

    public void setValues(List<Float> list) {
        A(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }
}
