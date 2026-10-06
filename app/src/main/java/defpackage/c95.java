package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class c95 extends Drawable implements tc7 {
    public static final Paint X;
    public static final b95[] Y;
    public final Paint G;
    public final Paint H;
    public final qb7 I;
    public final km8 J;
    public final vb7 K;
    public PorterDuffColorFilter L;
    public PorterDuffColorFilter M;
    public int N;
    public final RectF O;
    public boolean P;
    public boolean Q;
    public tb7 R;
    public hk7 S;
    public final gk7[] T;
    public float[] U;
    public float[] V;
    public gb W;
    public final vk9 a;
    public a95 b;
    public final lc7[] c;
    public final lc7[] d;
    public final BitSet e;
    public boolean f;
    public boolean k;
    public final Matrix n;
    public final Path p;
    public final Path q;
    public final RectF r;
    public final RectF t;
    public final Region x;
    public final Region y;

    static {
        Paint paint = new Paint(1);
        X = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Y = new b95[4];
        int i = 0;
        while (true) {
            b95[] b95VarArr = Y;
            if (i >= b95VarArr.length) {
                return;
            }
            b95VarArr[i] = new b95(i);
            i++;
        }
    }

    public c95(a95 a95Var) {
        this.a = new vk9(this, 10);
        this.c = new lc7[4];
        this.d = new lc7[4];
        this.e = new BitSet(8);
        this.n = new Matrix();
        this.p = new Path();
        this.q = new Path();
        this.r = new RectF();
        this.t = new RectF();
        this.x = new Region();
        this.y = new Region();
        Paint paint = new Paint(1);
        this.G = paint;
        Paint paint2 = new Paint(1);
        this.H = paint2;
        this.I = new qb7();
        this.K = vb7.b();
        this.O = new RectF();
        this.P = true;
        this.Q = true;
        this.T = new gk7[4];
        this.b = a95Var;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        D();
        B(getState());
        this.J = new km8(this);
    }

    public final void A(float f) {
        this.b.k = f;
        invalidateSelf();
    }

    public final boolean B(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.b.c == null || color2 == (colorForState2 = this.b.c.getColorForState(iArr, (color2 = (paint2 = this.G).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.b.d == null || color == (colorForState = this.b.d.getColorForState(iArr, (color = (paint = this.H).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    public final void C(int[] iArr, boolean z) {
        boolean z2;
        lx1 lx1Var;
        RectF rectFI = i();
        if (!this.b.a.f() || rectFI.isEmpty()) {
            return;
        }
        int i = 0;
        boolean z3 = z | (this.S == null);
        if (this.U == null) {
            this.U = new float[4];
        }
        tb7 tb7VarB = this.b.a.b(iArr);
        float[] fArr = this.U;
        if (fArr.length > 1) {
            float f = fArr[0];
            int i2 = 1;
            while (true) {
                if (i2 < fArr.length) {
                    if (fArr[i2] == f) {
                        i2++;
                    }
                } else if (tb7VarB.l(i())) {
                    z2 = true;
                }
                z2 = false;
            }
        } else if (tb7VarB.l(i())) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.Q = z2;
        if (!z2) {
            this.f = true;
            this.k = true;
        }
        while (i < 4) {
            this.K.getClass();
            if (i == 1) {
                lx1Var = tb7VarB.g;
            } else if (i != 2) {
                lx1Var = i != 3 ? tb7VarB.f : tb7VarB.e;
            } else {
                lx1Var = tb7VarB.h;
            }
            float fA = lx1Var.a(rectFI);
            if (z3) {
                this.U[i] = fA;
            }
            gk7[] gk7VarArr = this.T;
            gk7 gk7Var = gk7VarArr[i];
            if (gk7Var != null) {
                gk7Var.a(fA);
                if (z3) {
                    gk7VarArr[i].e();
                }
            }
            i++;
        }
        if (z3) {
            invalidateSelf();
        }
    }

    public final boolean D() {
        PorterDuffColorFilter porterDuffColorFilter = this.L;
        PorterDuffColorFilter porterDuffColorFilter2 = this.M;
        a95 a95Var = this.b;
        this.L = d(a95Var.f, a95Var.g, this.G, true);
        a95 a95Var2 = this.b;
        this.M = d(a95Var2.e, a95Var2.g, this.H, false);
        this.b.getClass();
        return (Objects.equals(porterDuffColorFilter, this.L) && Objects.equals(porterDuffColorFilter2, this.M)) ? false : true;
    }

    public final void E() {
        a95 a95Var = this.b;
        float f = a95Var.n + 0.0f;
        a95Var.p = (int) Math.ceil(0.75f * f);
        this.b.q = (int) Math.ceil(f * 0.25f);
        D();
        if (n() || !q()) {
            invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        this.K.a(this.b.a.d(), this.U, this.b.j, rectF, this.J, path);
        if (this.b.i != 1.0f) {
            Matrix matrix = this.n;
            matrix.reset();
            float f = this.b.i;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.O, true);
    }

    public final float c(RectF rectF, tb7 tb7Var, float[] fArr) {
        if (fArr == null) {
            if (tb7Var.l(rectF)) {
                return tb7Var.e.a(rectF);
            }
            return -1.0f;
        }
        if (this.Q) {
            return fArr[0];
        }
        return -1.0f;
    }

    public final PorterDuffColorFilter d(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            if (z) {
                colorForState = e(colorForState);
            }
            this.N = colorForState;
            return new PorterDuffColorFilter(colorForState, mode);
        }
        if (!z) {
            return null;
        }
        int color = paint.getColor();
        int iE = e(color);
        this.N = iE;
        if (iE != color) {
            return new PorterDuffColorFilter(iE, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.L;
        Paint paint2 = this.G;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i = this.b.l;
        paint2.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.M;
        Paint paint3 = this.H;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.b.k);
        int alpha2 = paint3.getAlpha();
        int i2 = this.b.l;
        paint3.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = n() || !q();
        Paint.Style style = this.b.r;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            boolean z2 = this.f;
            paint = paint2;
            Path path = this.p;
            if (z2) {
                if (z) {
                    b(i(), path);
                }
                this.f = false;
            }
            if (n()) {
                canvas.save();
                canvas.translate((int) (((double) this.b.q) * Math.sin(Math.toRadians(0.0d))), (int) (Math.cos(Math.toRadians(0.0d)) * ((double) this.b.q)));
                if (this.P) {
                    Rect bounds = getBounds();
                    RectF rectF = this.O;
                    int iWidth = (int) (rectF.width() - bounds.width());
                    int iHeight = (int) (rectF.height() - bounds.height());
                    if (iWidth < 0 || iHeight < 0) {
                        f6.l(xs1.n("Invalid shadow bounds. Check that the treatments result in a valid path. extra width: ", iWidth, " extra height: ", " path bounds: ", iHeight), rectF);
                        return;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.b.p * 2) + ((int) rectF.width()) + iWidth, (this.b.p * 2) + ((int) rectF.height()) + iHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    int i3 = bounds.left;
                    int i4 = this.b.p;
                    float f = (i3 - i4) - iWidth;
                    float f2 = (bounds.top - i4) - iHeight;
                    canvas2.translate(-f, -f2);
                    f(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f, f2, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    f(canvas);
                    canvas.restore();
                }
            }
            g(canvas, paint, path, this.b.a.d(), this.U, i());
        } else {
            paint = paint2;
        }
        if (o()) {
            if (this.k) {
                tb7 tb7VarK = k();
                sb7 sb7VarM = tb7VarK.m();
                lx1 lx1Var = tb7VarK.e;
                vk9 vk9Var = this.a;
                sb7VarM.e = vk9Var.a(lx1Var);
                sb7VarM.f = vk9Var.a(tb7VarK.f);
                sb7VarM.h = vk9Var.a(tb7VarK.h);
                sb7VarM.g = vk9Var.a(tb7VarK.g);
                this.R = sb7VarM.a();
                float[] fArr = this.U;
                if (fArr != null) {
                    if (this.V == null) {
                        this.V = new float[fArr.length];
                    }
                    float fL = l();
                    int i5 = 0;
                    while (true) {
                        float[] fArr2 = this.U;
                        if (i5 >= fArr2.length) {
                            break;
                        }
                        this.V[i5] = Math.max(0.0f, fArr2[i5] - fL);
                        i5++;
                    }
                } else {
                    this.V = null;
                }
                if (z) {
                    tb7 tb7Var = this.R;
                    float[] fArr3 = this.V;
                    float f3 = this.b.j;
                    RectF rectFI = i();
                    RectF rectF2 = this.t;
                    rectF2.set(rectFI);
                    float fL2 = l();
                    rectF2.inset(fL2, fL2);
                    this.K.a(tb7Var, fArr3, f3, rectF2, null, this.q);
                }
                this.k = false;
            }
            h(canvas);
        }
        paint.setAlpha(alpha);
        paint3.setAlpha(alpha2);
    }

    public final int e(int i) {
        a95 a95Var = this.b;
        float f = a95Var.n + 0.0f + a95Var.m;
        xt2 xt2Var = a95Var.b;
        return (xt2Var != null && xt2Var.a && xl1.g(i, 255) == xt2Var.d) ? xt2Var.a(i, f) : i;
    }

    public final void f(Canvas canvas) {
        if (this.e.cardinality() > 0) {
            Log.w("c95", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.b.q;
        Path path = this.p;
        qb7 qb7Var = this.I;
        if (i != 0) {
            canvas.drawPath(path, qb7Var.a);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            lc7 lc7Var = this.c[i2];
            int i3 = this.b.p;
            Matrix matrix = lc7.b;
            lc7Var.a(matrix, qb7Var, i3, canvas);
            this.d[i2].a(matrix, qb7Var, this.b.p, canvas);
        }
        if (this.P) {
            int iSin = (int) (Math.sin(Math.toRadians(0.0d)) * ((double) this.b.q));
            int iCos = (int) (Math.cos(Math.toRadians(0.0d)) * ((double) this.b.q));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, X);
            canvas.translate(iSin, iCos);
        }
    }

    public final void g(Canvas canvas, Paint paint, Path path, tb7 tb7Var, float[] fArr, RectF rectF) {
        float fC = c(rectF, tb7Var, fArr);
        if (fC < 0.0f) {
            canvas.drawPath(path, paint);
        } else {
            float f = fC * this.b.j;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.b.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.b.o == 2) {
            return;
        }
        RectF rectFI = i();
        if (rectFI.isEmpty()) {
            return;
        }
        float fC = c(rectFI, this.b.a.d(), this.U);
        if (fC >= 0.0f) {
            outline.setRoundRect(getBounds(), fC * this.b.j);
            return;
        }
        boolean z = this.f;
        Path path = this.p;
        if (z) {
            b(rectFI, path);
            this.f = false;
        }
        du.m(outline, path);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.b.h;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.x;
        region.set(bounds);
        RectF rectFI = i();
        Path path = this.p;
        b(rectFI, path);
        Region region2 = this.y;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public void h(Canvas canvas) {
        tb7 tb7Var = this.R;
        float[] fArr = this.V;
        RectF rectFI = i();
        RectF rectF = this.t;
        rectF.set(rectFI);
        float fL = l();
        rectF.inset(fL, fL);
        g(canvas, this.H, this.q, tb7Var, fArr, rectF);
    }

    public final RectF i() {
        Rect bounds = getBounds();
        RectF rectF = this.r;
        rectF.set(bounds);
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f = true;
        this.k = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.b.f;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.b.e;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.b.d;
        if (colorStateList3 != null && colorStateList3.isStateful()) {
            return true;
        }
        ColorStateList colorStateList4 = this.b.c;
        return (colorStateList4 != null && colorStateList4.isStateful()) || this.b.a.f();
    }

    public final float j() {
        float[] fArr = this.U;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF rectFI = i();
        tb7 tb7VarK = k();
        vb7 vb7Var = this.K;
        vb7Var.getClass();
        float fA = tb7VarK.e.a(rectFI);
        tb7 tb7VarK2 = k();
        vb7Var.getClass();
        float fA2 = tb7VarK2.h.a(rectFI) + fA;
        tb7 tb7VarK3 = k();
        vb7Var.getClass();
        float fA3 = fA2 - tb7VarK3.g.a(rectFI);
        tb7 tb7VarK4 = k();
        vb7Var.getClass();
        return (fA3 - tb7VarK4.f.a(rectFI)) / 2.0f;
    }

    public final tb7 k() {
        return this.b.a.d();
    }

    public final float l() {
        if (o()) {
            return this.H.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    public final float m() {
        float[] fArr = this.U;
        return fArr != null ? fArr[3] : this.b.a.d().e.a(i());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.b = new a95(this.b);
        return this;
    }

    public final boolean n() {
        a95 a95Var = this.b;
        int i = a95Var.o;
        if (i == 1 || a95Var.p <= 0) {
            return false;
        }
        return i == 2 || !(q() || this.p.isConvex() || Build.VERSION.SDK_INT >= 29);
    }

    public final boolean o() {
        Paint.Style style = this.b.r;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.H.getStrokeWidth() > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f = true;
        this.k = true;
        super.onBoundsChange(rect);
        if (!this.b.a.f() || rect.isEmpty()) {
            return;
        }
        int[] state = getState();
        boolean z = false;
        for (gk7 gk7Var : this.T) {
            if (gk7Var != null && gk7Var.f) {
                z = true;
                break;
            }
        }
        C(state, true ^ z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.b.a.f()) {
            C(iArr, false);
        }
        boolean z = B(iArr) || D();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p(Context context) {
        this.b.b = new xt2(context);
        E();
    }

    public final boolean q() {
        if (this.b.a.b(getState()).l(i())) {
            return this.U == null || this.Q;
        }
        return false;
    }

    public final void r(hk7 hk7Var) {
        if (this.S == hk7Var) {
            return;
        }
        this.S = hk7Var;
        int i = 0;
        while (true) {
            gk7[] gk7VarArr = this.T;
            if (i >= gk7VarArr.length) {
                C(getState(), true);
                invalidateSelf();
                return;
            }
            if (gk7VarArr[i] == null) {
                gk7VarArr[i] = new gk7(this, Y[i]);
            }
            gk7 gk7Var = gk7VarArr[i];
            hk7 hk7Var2 = new hk7();
            hk7Var2.a((float) hk7Var.b);
            double d = hk7Var.a;
            hk7Var2.b((float) (d * d));
            gk7Var.m = hk7Var2;
            i++;
        }
    }

    public final void s(float f) {
        a95 a95Var = this.b;
        if (a95Var.n != f) {
            a95Var.n = f;
            E();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        a95 a95Var = this.b;
        if (a95Var.l != i) {
            a95Var.l = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.b.getClass();
        super.invalidateSelf();
    }

    @Override // defpackage.tc7
    public final void setShapeAppearanceModel(tb7 tb7Var) {
        this.b.a = tb7Var;
        this.U = null;
        this.V = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.b.f = colorStateList;
        D();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        a95 a95Var = this.b;
        if (a95Var.g != mode) {
            a95Var.g = mode;
            D();
            super.invalidateSelf();
        }
    }

    public final void t(ColorStateList colorStateList) {
        a95 a95Var = this.b;
        if (a95Var.c != colorStateList) {
            a95Var.c = colorStateList;
            onStateChange(getState());
        }
    }

    public final void u(float f) {
        a95 a95Var = this.b;
        if (a95Var.j != f) {
            a95Var.j = f;
            this.f = true;
            this.k = true;
            invalidateSelf();
        }
    }

    public final void v() {
        this.I.a(-12303292);
        this.b.getClass();
        super.invalidateSelf();
    }

    public final void w() {
        a95 a95Var = this.b;
        if (a95Var.o != 2) {
            a95Var.o = 2;
            super.invalidateSelf();
        }
    }

    public final void x(rb7 rb7Var) {
        if (rb7Var instanceof tb7) {
            setShapeAppearanceModel((tb7) rb7Var);
            return;
        }
        nm7 nm7Var = (nm7) rb7Var;
        a95 a95Var = this.b;
        if (a95Var.a != nm7Var) {
            a95Var.a = nm7Var;
            C(getState(), true);
            invalidateSelf();
        }
    }

    public final void y(ColorStateList colorStateList) {
        a95 a95Var = this.b;
        if (a95Var.d != colorStateList) {
            a95Var.d = colorStateList;
            onStateChange(getState());
        }
    }

    public final void z(ColorStateList colorStateList) {
        this.b.e = colorStateList;
        D();
        super.invalidateSelf();
    }

    public c95(Context context, AttributeSet attributeSet, int i, int i2) {
        this(tb7.h(context, attributeSet, i, i2).a());
    }

    public c95(tb7 tb7Var) {
        this(new a95(tb7Var));
    }

    public c95(rb7 rb7Var) {
        this(new a95(rb7Var));
    }

    public c95() {
        this(new tb7());
    }
}
