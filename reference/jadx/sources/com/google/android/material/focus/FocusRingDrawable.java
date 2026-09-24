package com.google.android.material.focus;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.animation.OvershootInterpolator;
import com.jcraft.jsch.SftpATTRS;
import defpackage.c95;
import defpackage.ej3;
import defpackage.f3;
import defpackage.fj3;
import defpackage.jm1;
import defpackage.pq6;
import defpackage.rb7;
import defpackage.rn0;
import defpackage.tb7;
import defpackage.td6;
import defpackage.us2;
import defpackage.vb7;
import java.io.IOException;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FocusRingDrawable extends DrawableWrapper {
    public static final ColorDrawable H = new ColorDrawable(0);
    public static final int[] I = {R.attr.state_focused, R.attr.state_window_focused};
    public static final OvershootInterpolator J = new OvershootInterpolator(4.0f);
    public static final ej3 K = new ej3("interpolation");
    public fj3 G;
    public final Paint a;
    public final RectF b;
    public final Rect c;
    public final Path d;
    public final Path e;
    public final Matrix f;
    public final vb7 k;
    public WeakReference n;
    public float p;
    public ObjectAnimator q;
    public float r;
    public boolean t;
    public boolean x;
    public boolean y;

    public FocusRingDrawable(fj3 fj3Var, Resources resources) {
        super(null);
        Paint paint = new Paint(1);
        this.a = paint;
        this.b = new RectF();
        this.c = new Rect();
        this.d = new Path();
        this.e = new Path();
        this.f = new Matrix();
        this.k = vb7.b();
        this.p = -1.0f;
        this.r = 1.0f;
        this.x = false;
        this.y = false;
        fj3 fj3Var2 = new fj3(fj3Var);
        this.G = fj3Var2;
        Drawable.ConstantState constantState = fj3Var2.a;
        if (constantState != null) {
            setDrawable(resources != null ? constantState.newDrawable(resources) : constantState.newDrawable());
        }
        paint.setStyle(Paint.Style.STROKE);
        if (Float.isNaN(this.G.j)) {
            return;
        }
        paint.setStrokeWidth(this.G.j);
    }

    public static FocusRingDrawable c(Drawable drawable) {
        if (drawable instanceof FocusRingDrawable) {
            return (FocusRingDrawable) drawable;
        }
        if (drawable instanceof DrawableWrapper) {
            Drawable drawable2 = ((DrawableWrapper) drawable).getDrawable();
            if (drawable2 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable2;
            }
        }
        if (!(drawable instanceof LayerDrawable)) {
            return null;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        for (int i = 0; i < layerDrawable.getNumberOfLayers(); i++) {
            Drawable drawable3 = layerDrawable.getDrawable(i);
            if (drawable3 instanceof FocusRingDrawable) {
                return (FocusRingDrawable) drawable3;
            }
        }
        return null;
    }

    public static int d(TypedArray typedArray, int i) {
        if (typedArray.getType(i) != 2) {
            return SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        TypedValue typedValue = new TypedValue();
        return typedArray.getValue(i, typedValue) ? typedValue.data : SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    }

    public static FocusRingDrawable f(Context context, LayerDrawable layerDrawable, c95 c95Var) {
        if (!jm1.R(context.getTheme(), org.swiftapps.swiftbackup.R.attr.focusRingsEnabled, false)) {
            return null;
        }
        FocusRingDrawable focusRingDrawable = new FocusRingDrawable(context, H);
        if (c95Var != null) {
            focusRingDrawable.n = new WeakReference(c95Var);
        }
        layerDrawable.addLayer(focusRingDrawable);
        focusRingDrawable.setCallback(layerDrawable);
        return focusRingDrawable;
    }

    public static float g(float f, Resources.Theme theme, int i, TypedArray typedArray, int i2, int i3) {
        if (!Float.isNaN(f)) {
            return f;
        }
        Resources resources = theme.getResources();
        if (i != Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (theme.resolveAttribute(i, typedValue, true)) {
                return typedValue.getDimension(resources.getDisplayMetrics());
            }
        }
        float dimension = typedArray.getDimension(i2, Float.NaN);
        if (!Float.isNaN(dimension)) {
            return dimension;
        }
        if (i3 == 0) {
            return Float.NaN;
        }
        return resources.getDimension(i3);
    }

    public final void a(RectF rectF) {
        Rect rect = this.G.w;
        if (rect != null) {
            rectF.set(rect);
            return;
        }
        WeakReference weakReference = this.n;
        if (weakReference != null && weakReference.get() != null) {
            rectF.set(((c95) this.n.get()).getBounds());
            return;
        }
        if (!(getDrawable() instanceof RippleDrawable)) {
            rectF.set(getBounds());
            return;
        }
        RippleDrawable rippleDrawable = (RippleDrawable) getDrawable();
        Rect rect2 = this.c;
        rippleDrawable.getHotspotBounds(rect2);
        int radius = rippleDrawable.getRadius();
        if (radius > 0) {
            rect2.inset(Math.max(0, (rect2.width() / 2) - radius), Math.max(0, (rect2.height() / 2) - radius));
        }
        rectF.set(rect2);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        e(theme);
    }

    public final void b(Canvas canvas, Path path, float f, float f2, int i) {
        RectF rectF = this.b;
        a(rectF);
        float f3 = f * 2.0f;
        float fWidth = 1.0f - (f3 / rectF.width());
        float fHeight = 1.0f - (f3 / rectF.height());
        Matrix matrix = this.f;
        matrix.reset();
        matrix.postScale(fWidth, fHeight, rectF.centerX(), rectF.centerY());
        Path path2 = this.d;
        path.transform(matrix, path2);
        float f4 = f2 * this.r;
        Paint paint = this.a;
        paint.setStrokeWidth(f4);
        paint.setColor(i);
        canvas.drawPath(path2, paint);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0049  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c9  */
    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float fMax;
        Drawable drawable;
        int radius;
        super.draw(canvas);
        fj3 fj3Var = this.G;
        if (fj3Var.c && this.x) {
            float f = fj3Var.p;
            float f2 = fj3Var.j / 2.0f;
            float f3 = this.r;
            float f4 = (f2 * f3) + f;
            float f5 = ((fj3Var.l / 2.0f) * f3) + f + fj3Var.r;
            Path path = this.e;
            if (path.isEmpty()) {
                WeakReference weakReference = this.n;
                if (weakReference == null || weakReference.get() == null) {
                    path = null;
                } else {
                    path = ((c95) this.n.get()).p;
                    if (path.isEmpty()) {
                        path = null;
                    }
                }
            }
            Path path2 = path;
            fj3 fj3Var2 = this.G;
            if (path2 != null) {
                b(canvas, path2, f5, fj3Var2.l, fj3Var2.h);
                fj3 fj3Var3 = this.G;
                b(canvas, path2, f4, fj3Var3.j, fj3Var3.f);
                return;
            }
            if (Float.isNaN(fj3Var2.n)) {
                fMax = this.p;
                if (fMax < 0.0f) {
                    WeakReference weakReference2 = this.n;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        drawable = getDrawable();
                        if ((drawable instanceof RippleDrawable) || (radius = ((RippleDrawable) drawable).getRadius()) < 0) {
                            fMax = 0.0f;
                        } else {
                            fMax = radius;
                        }
                    } else {
                        c95 c95Var = (c95) this.n.get();
                        float fC = c95Var.c(c95Var.i(), c95Var.b.a.d(), c95Var.U);
                        if (fC >= 0.0f) {
                            fC *= c95Var.b.j;
                        }
                        if (fC >= 0.0f) {
                            fMax = Math.max(0.0f, fC - (this.G.j / 2.0f));
                        } else {
                            drawable = getDrawable();
                            if (drawable instanceof RippleDrawable) {
                                fMax = 0.0f;
                            } else {
                                fMax = 0.0f;
                            }
                        }
                    }
                }
            } else {
                fMax = this.G.n;
            }
            float fMax2 = Math.max(0.0f, fMax - (this.G.j / 2.0f));
            fj3 fj3Var4 = this.G;
            float f6 = fj3Var4.l;
            int i = fj3Var4.h;
            RectF rectF = this.b;
            a(rectF);
            rectF.inset(f5, f5);
            float f7 = f6 * this.r;
            Paint paint = this.a;
            paint.setStrokeWidth(f7);
            paint.setColor(i);
            canvas.drawRoundRect(rectF, fMax2, fMax2, paint);
            fj3 fj3Var5 = this.G;
            float f8 = fj3Var5.j;
            int i2 = fj3Var5.f;
            a(rectF);
            rectF.inset(f4, f4);
            paint.setStrokeWidth(f8 * this.r);
            paint.setColor(i2);
            canvas.drawRoundRect(rectF, fMax, fMax, paint);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    public final void e(Resources.Theme theme) {
        TypedValue typedValueP;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(td6.p);
        int i = this.G.d;
        if (i != Integer.MIN_VALUE && (typedValueP = jm1.P(theme, i)) != null) {
            fj3 fj3Var = this.G;
            fj3Var.c = typedValueP.data != 0;
            fj3Var.e = true;
        }
        fj3 fj3Var2 = this.G;
        if (!fj3Var2.e) {
            fj3Var2.c = jm1.R(theme, org.swiftapps.swiftbackup.R.attr.focusRingsEnabled, fj3Var2.c);
        }
        fj3 fj3Var3 = this.G;
        if (fj3Var3.c) {
            int color = fj3Var3.f;
            int i2 = fj3Var3.g;
            if (color == Integer.MIN_VALUE) {
                if (i2 != Integer.MIN_VALUE) {
                    TypedValue typedValue = new TypedValue();
                    if (theme.resolveAttribute(i2, typedValue, true)) {
                        color = typedValue.data;
                    } else {
                        color = typedArrayObtainStyledAttributes.getColor(5, -16777216);
                    }
                } else {
                    color = typedArrayObtainStyledAttributes.getColor(5, -16777216);
                }
            }
            fj3Var3.f = color;
            fj3 fj3Var4 = this.G;
            int color2 = fj3Var4.h;
            int i3 = fj3Var4.i;
            if (color2 == Integer.MIN_VALUE) {
                if (i3 != Integer.MIN_VALUE) {
                    TypedValue typedValue2 = new TypedValue();
                    if (theme.resolveAttribute(i3, typedValue2, true)) {
                        color2 = typedValue2.data;
                    } else {
                        color2 = typedArrayObtainStyledAttributes.getColor(1, -1);
                    }
                } else {
                    color2 = typedArrayObtainStyledAttributes.getColor(1, -1);
                }
            }
            fj3Var4.h = color2;
            fj3 fj3Var5 = this.G;
            fj3Var5.j = g(fj3Var5.j, theme, fj3Var5.k, typedArrayObtainStyledAttributes, 6, org.swiftapps.swiftbackup.R.dimen.mtrl_focus_ring_outer_stroke_width);
            fj3 fj3Var6 = this.G;
            fj3Var6.l = g(fj3Var6.l, theme, fj3Var6.m, typedArrayObtainStyledAttributes, 3, org.swiftapps.swiftbackup.R.dimen.mtrl_focus_ring_inner_stroke_width);
            fj3 fj3Var7 = this.G;
            fj3Var7.n = g(fj3Var7.n, theme, fj3Var7.o, typedArrayObtainStyledAttributes, 7, 0);
            fj3 fj3Var8 = this.G;
            fj3Var8.p = g(fj3Var8.p, theme, fj3Var8.q, typedArrayObtainStyledAttributes, 4, 0);
            if (Float.isNaN(this.G.p)) {
                this.G.p = 0.0f;
            }
            fj3 fj3Var9 = this.G;
            fj3Var9.r = g(fj3Var9.r, theme, fj3Var9.s, typedArrayObtainStyledAttributes, 2, org.swiftapps.swiftbackup.R.dimen.mtrl_focus_ring_inner_stroke_inset);
            fj3 fj3Var10 = this.G;
            int i4 = fj3Var10.u;
            int[] iArr = td6.P;
            if (i4 != Integer.MIN_VALUE) {
                fj3Var10.t = tb7.j(theme.obtainStyledAttributes(i4, iArr), new f3(0.0f)).a();
            } else {
                int i5 = fj3Var10.v;
                if (i5 == Integer.MIN_VALUE) {
                    i5 = org.swiftapps.swiftbackup.R.attr.focusRingsShapeAppearance;
                }
                TypedValue typedValueP2 = jm1.P(theme, i5);
                if (typedValueP2 != null) {
                    this.G.t = tb7.j(theme.obtainStyledAttributes(typedValueP2.resourceId, iArr), new f3(0.0f)).a();
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        Paint.Style style = Paint.Style.STROKE;
        Paint paint = this.a;
        paint.setStyle(style);
        if (Float.isNaN(this.G.j)) {
            return;
        }
        paint.setStrokeWidth(this.G.j);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        fj3 fj3Var = this.G;
        if (fj3Var.a == null) {
            return null;
        }
        fj3Var.b = getChangingConfigurations();
        return this.G;
    }

    public final void h(rb7 rb7Var) {
        RectF rectF = this.b;
        a(rectF);
        tb7 tb7VarB = rb7Var.b(I);
        boolean zL = tb7VarB.l(rectF);
        Path path = this.e;
        if (!zL) {
            this.k.a(tb7VarB, null, 1.0f, rectF, null, path);
            this.p = -1.0f;
            return;
        }
        fj3 fj3Var = this.G;
        float f = ((fj3Var.j / 2.0f) * this.r) + fj3Var.p;
        rectF.inset(f, f);
        this.p = tb7VarB.e.a(rectF);
        path.reset();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean hasFocusStateSpecified() {
        try {
            return super.hasFocusStateSpecified() || this.G.c;
        } catch (NoSuchMethodError unused) {
            return this.G.c;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        int[] iArr = td6.p;
        TypedArray typedArrayObtainStyledAttributes = theme != null ? theme.obtainStyledAttributes(attributeSet, iArr, 0, 0) : resources.obtainAttributes(attributeSet, iArr);
        this.G.d = d(typedArrayObtainStyledAttributes, 0);
        int i = this.G.d;
        int resourceId = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        if (i == Integer.MIN_VALUE && typedArrayObtainStyledAttributes.hasValue(0)) {
            fj3 fj3Var = this.G;
            fj3Var.c = typedArrayObtainStyledAttributes.getBoolean(0, fj3Var.c);
            this.G.e = true;
        }
        this.G.g = d(typedArrayObtainStyledAttributes, 5);
        fj3 fj3Var2 = this.G;
        if (fj3Var2.g == Integer.MIN_VALUE) {
            fj3Var2.f = typedArrayObtainStyledAttributes.getColor(5, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
        this.G.i = d(typedArrayObtainStyledAttributes, 1);
        fj3 fj3Var3 = this.G;
        if (fj3Var3.i == Integer.MIN_VALUE) {
            fj3Var3.h = typedArrayObtainStyledAttributes.getColor(1, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
        this.G.k = d(typedArrayObtainStyledAttributes, 6);
        fj3 fj3Var4 = this.G;
        if (fj3Var4.k == Integer.MIN_VALUE) {
            fj3Var4.j = typedArrayObtainStyledAttributes.getDimension(6, Float.NaN);
        }
        this.G.m = d(typedArrayObtainStyledAttributes, 3);
        fj3 fj3Var5 = this.G;
        if (fj3Var5.m == Integer.MIN_VALUE) {
            fj3Var5.l = typedArrayObtainStyledAttributes.getDimension(3, Float.NaN);
        }
        this.G.m = d(typedArrayObtainStyledAttributes, 3);
        fj3 fj3Var6 = this.G;
        if (fj3Var6.m == Integer.MIN_VALUE) {
            fj3Var6.l = typedArrayObtainStyledAttributes.getDimension(3, Float.NaN);
        }
        this.G.o = d(typedArrayObtainStyledAttributes, 7);
        fj3 fj3Var7 = this.G;
        if (fj3Var7.o == Integer.MIN_VALUE) {
            fj3Var7.n = typedArrayObtainStyledAttributes.getDimension(7, Float.NaN);
        }
        this.G.q = d(typedArrayObtainStyledAttributes, 4);
        fj3 fj3Var8 = this.G;
        if (fj3Var8.q == Integer.MIN_VALUE) {
            fj3Var8.p = typedArrayObtainStyledAttributes.getDimension(4, Float.NaN);
        }
        this.G.s = d(typedArrayObtainStyledAttributes, 2);
        fj3 fj3Var9 = this.G;
        if (fj3Var9.s == Integer.MIN_VALUE) {
            fj3Var9.r = typedArrayObtainStyledAttributes.getDimension(2, Float.NaN);
        }
        this.G.v = d(typedArrayObtainStyledAttributes, 8);
        fj3 fj3Var10 = this.G;
        if (typedArrayObtainStyledAttributes.getType(8) == 1) {
            resourceId = typedArrayObtainStyledAttributes.getResourceId(8, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
        fj3Var10.u = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        int depth = xmlPullParser.getDepth();
        Drawable drawableCreateFromXmlInner = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            } else if (next == 2) {
                drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
            }
        }
        if (drawableCreateFromXmlInner != null) {
            setDrawable(drawableCreateFromXmlInner);
            this.G.a = drawableCreateFromXmlInner.getConstantState();
        } else {
            ColorDrawable colorDrawable = H;
            setDrawable(colorDrawable);
            this.G.a = colorDrawable.getConstantState();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Drawable drawable = getDrawable();
        return drawable != null && drawable.isProjected();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return super.isStateful() || this.G.c;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        ObjectAnimator objectAnimator = this.q;
        if (objectAnimator != null) {
            objectAnimator.end();
            this.q = null;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.y && super.mutate() == this) {
            this.G = new fj3(this.G);
            Drawable drawable = getDrawable();
            if (drawable != null) {
                this.G.a = drawable.getConstantState();
            }
            this.y = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        float[] cornerRadii;
        float cornerRadius;
        tb7 tb7Var;
        super.onBoundsChange(rect);
        fj3 fj3Var = this.G;
        if (fj3Var.c) {
            rb7 rb7Var = fj3Var.t;
            if (rb7Var != null) {
                h(rb7Var);
                return;
            }
            Drawable drawable = getDrawable();
            int i = 0;
            rb7 rb7Var2 = null;
            if (drawable instanceof ShapeDrawable) {
                Outline outline = new Outline();
                ((ShapeDrawable) drawable).getOutline(outline);
                if (outline.getRadius() > 0.0f) {
                    pq6 pq6Var = new pq6();
                    pq6 pq6Var2 = new pq6();
                    pq6 pq6Var3 = new pq6();
                    pq6 pq6Var4 = new pq6();
                    us2 us2Var = new us2(i);
                    us2 us2Var2 = new us2(i);
                    us2 us2Var3 = new us2(i);
                    us2 us2Var4 = new us2(i);
                    float radius = outline.getRadius();
                    f3 f3Var = new f3(radius);
                    f3 f3Var2 = new f3(radius);
                    f3 f3Var3 = new f3(radius);
                    f3 f3Var4 = new f3(radius);
                    tb7Var = new tb7();
                    tb7Var.a = pq6Var;
                    tb7Var.b = pq6Var2;
                    tb7Var.c = pq6Var3;
                    tb7Var.d = pq6Var4;
                    tb7Var.e = f3Var;
                    tb7Var.f = f3Var2;
                    tb7Var.g = f3Var3;
                    tb7Var.h = f3Var4;
                    tb7Var.i = us2Var;
                    tb7Var.j = us2Var2;
                    tb7Var.k = us2Var3;
                    tb7Var.l = us2Var4;
                    rb7Var2 = tb7Var;
                }
            } else if (drawable instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) drawable;
                try {
                    cornerRadii = gradientDrawable.getCornerRadii();
                } catch (NullPointerException unused) {
                    cornerRadii = null;
                }
                if (cornerRadii != null) {
                    pq6 pq6Var5 = new pq6();
                    pq6 pq6Var6 = new pq6();
                    pq6 pq6Var7 = new pq6();
                    pq6 pq6Var8 = new pq6();
                    us2 us2Var5 = new us2(i);
                    us2 us2Var6 = new us2(i);
                    us2 us2Var7 = new us2(i);
                    us2 us2Var8 = new us2(i);
                    f3 f3Var5 = new f3(Math.min(cornerRadii[0], cornerRadii[1]));
                    f3 f3Var6 = new f3(Math.min(cornerRadii[2], cornerRadii[3]));
                    f3 f3Var7 = new f3(Math.min(cornerRadii[4], cornerRadii[5]));
                    f3 f3Var8 = new f3(Math.min(cornerRadii[6], cornerRadii[7]));
                    tb7Var = new tb7();
                    tb7Var.a = pq6Var5;
                    tb7Var.b = pq6Var6;
                    tb7Var.c = pq6Var7;
                    tb7Var.d = pq6Var8;
                    tb7Var.e = f3Var5;
                    tb7Var.f = f3Var6;
                    tb7Var.g = f3Var7;
                    tb7Var.h = f3Var8;
                    tb7Var.i = us2Var5;
                    tb7Var.j = us2Var6;
                    tb7Var.k = us2Var7;
                    tb7Var.l = us2Var8;
                    rb7Var2 = tb7Var;
                } else {
                    try {
                        cornerRadius = gradientDrawable.getCornerRadius();
                    } catch (NullPointerException unused2) {
                        cornerRadius = -1.0f;
                    }
                    if (cornerRadius > 0.0f) {
                        pq6 pq6Var9 = new pq6();
                        pq6 pq6Var10 = new pq6();
                        pq6 pq6Var11 = new pq6();
                        pq6 pq6Var12 = new pq6();
                        us2 us2Var9 = new us2(i);
                        us2 us2Var10 = new us2(i);
                        us2 us2Var11 = new us2(i);
                        us2 us2Var12 = new us2(i);
                        f3 f3Var9 = new f3(cornerRadius);
                        f3 f3Var10 = new f3(cornerRadius);
                        f3 f3Var11 = new f3(cornerRadius);
                        f3 f3Var12 = new f3(cornerRadius);
                        tb7 tb7Var2 = new tb7();
                        tb7Var2.a = pq6Var9;
                        tb7Var2.b = pq6Var10;
                        tb7Var2.c = pq6Var11;
                        tb7Var2.d = pq6Var12;
                        tb7Var2.e = f3Var9;
                        tb7Var2.f = f3Var10;
                        tb7Var2.g = f3Var11;
                        tb7Var2.h = f3Var12;
                        tb7Var2.i = us2Var9;
                        tb7Var2.j = us2Var10;
                        tb7Var2.k = us2Var11;
                        tb7Var2.l = us2Var12;
                        rb7Var2 = tb7Var2;
                    }
                }
            }
            if (rb7Var2 != null) {
                h(rb7Var2);
            } else {
                this.p = -1.0f;
                this.e.reset();
            }
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        fj3 fj3Var = this.G;
        if (!fj3Var.c) {
            this.x = false;
            return super.onStateChange(iArr);
        }
        boolean zStateSetMatches = StateSet.stateSetMatches(fj3Var.x, iArr);
        boolean z = this.x != zStateSetMatches;
        this.x = zStateSetMatches;
        if (z && iArr.length > 0 && !this.t) {
            ObjectAnimator objectAnimator = this.q;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.q = null;
            }
            if (zStateSetMatches) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, K, 0.0f, 1.0f);
                objectAnimatorOfFloat.setDuration(300L);
                objectAnimatorOfFloat.setInterpolator(J);
                objectAnimatorOfFloat.addListener(new rn0(this, 3));
                this.q = objectAnimatorOfFloat;
                objectAnimatorOfFloat.start();
            } else {
                this.r = 1.0f;
            }
        }
        this.t = iArr.length == 0;
        return super.onStateChange(iArr) || z;
    }

    public FocusRingDrawable(Context context, Drawable drawable) {
        super(drawable);
        this.a = new Paint(1);
        this.b = new RectF();
        this.c = new Rect();
        this.d = new Path();
        this.e = new Path();
        this.f = new Matrix();
        this.k = vb7.b();
        this.p = -1.0f;
        this.r = 1.0f;
        this.x = false;
        this.y = false;
        fj3 fj3Var = new fj3(null);
        this.G = fj3Var;
        if (drawable != null) {
            fj3Var.a = drawable.getConstantState();
        }
        e(context.getTheme());
    }

    public FocusRingDrawable() {
        super(null);
        this.a = new Paint(1);
        this.b = new RectF();
        this.c = new Rect();
        this.d = new Path();
        this.e = new Path();
        this.f = new Matrix();
        this.k = vb7.b();
        this.p = -1.0f;
        this.r = 1.0f;
        this.x = false;
        this.y = false;
        this.G = new fj3(null);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
