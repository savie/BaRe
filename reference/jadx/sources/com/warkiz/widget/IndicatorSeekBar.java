package com.warkiz.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import defpackage.a71;
import defpackage.c6;
import defpackage.cz4;
import defpackage.dx0;
import defpackage.g84;
import defpackage.ib0;
import defpackage.it5;
import defpackage.s79;
import defpackage.tu0;
import defpackage.vb4;
import defpackage.vd6;
import defpackage.w13;
import defpackage.xs1;
import defpackage.z5;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class IndicatorSeekBar extends View {
    public int A0;
    public boolean B0;
    public boolean C0;
    public int D0;
    public boolean E0;
    public RectF F0;
    public int G;
    public RectF G0;
    public float H;
    public int H0;
    public float I;
    public int I0;
    public boolean J;
    public int J0;
    public float K;
    public int K0;
    public float L;
    public float L0;
    public float M;
    public float M0;
    public boolean N;
    public Bitmap N0;
    public int O;
    public int O0;
    public boolean P;
    public int P0;
    public boolean Q;
    public Drawable Q0;
    public boolean R;
    public Bitmap R0;
    public float[] S;
    public int S0;
    public boolean T;
    public boolean T0;
    public boolean U;
    public float U0;
    public int V;
    public int V0;
    public String[] W;
    public boolean W0;
    public final Context a;
    public float[] a0;
    public Paint b;
    public float[] b0;
    public TextPaint c;
    public float c0;
    public it5 d;
    public int d0;
    public Rect e;
    public Typeface e0;
    public float f;
    public int f0;
    public int g0;
    public int h0;
    public CharSequence[] i0;
    public vb4 j0;
    public float k;
    public int k0;
    public int l0;
    public boolean m0;
    public float n;
    public int n0;
    public View o0;
    public float p;
    public View p0;
    public boolean q;
    public int q0;
    public cz4 r;
    public String r0;
    public float[] s0;
    public int t;
    public int t0;
    public int u0;
    public int v0;
    public float w0;
    public int x;
    public Bitmap x0;
    public int y;
    public Bitmap y0;
    public Drawable z0;

    public IndicatorSeekBar(dx0 dx0Var) {
        super(dx0Var.a);
        this.n = -1.0f;
        this.p = -1.0f;
        this.O = 1;
        Context context = dx0Var.a;
        this.a = context;
        int iJ = tu0.j(context, 16.0f);
        setPadding(iJ, getPaddingTop(), iJ, getPaddingBottom());
        b(dx0Var);
        k();
    }

    private float getAmplitude() {
        float f = this.K;
        float f2 = this.L;
        if (f - f2 > 0.0f) {
            return f - f2;
        }
        return 1.0f;
    }

    private int getClosestIndex() {
        float fAbs = Math.abs(this.K - this.L);
        int i = 0;
        int i2 = 0;
        while (true) {
            float[] fArr = this.S;
            if (i >= fArr.length) {
                return i2;
            }
            float fAbs2 = Math.abs(fArr[i] - this.M);
            if (fAbs2 <= fAbs) {
                i2 = i;
                fAbs = fAbs2;
            }
            i++;
        }
    }

    private int getLeftSideTickColor() {
        return this.T ? this.u0 : this.v0;
    }

    private int getLeftSideTickTextsColor() {
        return this.T ? this.g0 : this.f0;
    }

    private int getLeftSideTrackSize() {
        return this.T ? this.H0 : this.I0;
    }

    private int getRightSideTickColor() {
        return this.T ? this.v0 : this.u0;
    }

    private int getRightSideTickTextsColor() {
        return this.T ? this.f0 : this.g0;
    }

    private int getRightSideTrackSize() {
        return this.T ? this.I0 : this.H0;
    }

    private float getThumbCenterX() {
        return this.T ? this.G0.right : this.F0.right;
    }

    private int getThumbPosOnTick() {
        if (this.t0 != 0) {
            return Math.round((getThumbCenterX() - this.t) / this.I);
        }
        return 0;
    }

    private float getThumbPosOnTickFloat() {
        if (this.t0 != 0) {
            return (getThumbCenterX() - this.t) / this.I;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSeekListener(boolean z) {
        String[] strArr;
        if (this.d == null) {
            return;
        }
        boolean z2 = this.N;
        float f = this.k;
        if (z2) {
            if (f == this.M) {
                return;
            }
        } else if (Math.round(f) == Math.round(this.M)) {
            return;
        }
        it5 it5Var = this.d;
        if (this.r == null) {
            this.r = new cz4(18);
        }
        cz4 cz4Var = this.r;
        getProgress();
        cz4Var.getClass();
        cz4 cz4Var2 = this.r;
        getProgressFloat();
        cz4Var2.getClass();
        this.r.getClass();
        if (this.t0 > 1) {
            int thumbPosOnTick = getThumbPosOnTick();
            if (this.U && (strArr = this.W) != null) {
                cz4 cz4Var3 = this.r;
                String str = strArr[thumbPosOnTick];
                cz4Var3.getClass();
            }
            boolean z3 = this.T;
            cz4 cz4Var4 = this.r;
            if (z3) {
                cz4Var4.getClass();
            } else {
                cz4Var4.getClass();
            }
        }
        cz4 cz4Var5 = this.r;
        ((s79) it5Var).getClass();
        cz4Var5.getClass();
    }

    public final void b(dx0 dx0Var) {
        this.K = 100.0f;
        this.L = 0.0f;
        this.M = 0.0f;
        this.N = false;
        this.t0 = 0;
        this.R = false;
        this.T = false;
        this.P = true;
        this.q = false;
        this.Q = false;
        this.q0 = 2;
        this.k0 = dx0Var.b;
        this.l0 = dx0Var.c;
        this.n0 = dx0Var.d;
        this.o0 = null;
        this.p0 = null;
        this.H0 = dx0Var.e;
        this.J0 = dx0Var.f;
        this.I0 = dx0Var.g;
        this.K0 = dx0Var.h;
        this.E0 = false;
        this.P0 = dx0Var.j;
        this.Q0 = null;
        this.V0 = dx0Var.i;
        p(null, dx0Var.k);
        this.T0 = false;
        this.A0 = 0;
        this.D0 = dx0Var.p;
        this.z0 = null;
        this.B0 = false;
        this.C0 = false;
        r(null, dx0Var.o);
        this.U = false;
        this.d0 = dx0Var.m;
        this.i0 = null;
        this.e0 = dx0Var.n;
        s(null, dx0Var.l);
    }

    public final void c() {
        int i = this.t0;
        if (i < 0 || i > 50) {
            z5.c(this.t0, "the Argument: TICK COUNT must be limited between (0-50), Now is ");
            return;
        }
        if (i == 0) {
            return;
        }
        this.s0 = new float[i];
        if (this.U) {
            this.b0 = new float[i];
            this.a0 = new float[i];
        }
        this.S = new float[i];
        int i2 = 0;
        while (true) {
            float[] fArr = this.S;
            if (i2 >= fArr.length) {
                return;
            }
            float f = this.L;
            float f2 = (this.K - f) * i2;
            int i3 = this.t0;
            fArr[i2] = (f2 / (i3 + (-1) > 0 ? i3 - 1 : 1)) + f;
            i2++;
        }
    }

    public final void d(Canvas canvas) {
        float thumbCenterX = getThumbCenterX();
        if (this.Q0 == null) {
            boolean z = this.J;
            Paint paint = this.b;
            if (z) {
                paint.setColor(this.S0);
            } else {
                paint.setColor(this.O0);
            }
            canvas.drawCircle(thumbCenterX, this.F0.top, this.J ? this.M0 : this.L0, this.b);
            return;
        }
        if (this.N0 == null || this.R0 == null) {
            o();
        }
        if (this.N0 == null || this.R0 == null) {
            c6.f("the format of the selector thumb drawable is wrong!");
            return;
        }
        this.b.setAlpha(255);
        if (this.J) {
            Bitmap bitmap = this.R0;
            canvas.drawBitmap(bitmap, thumbCenterX - (bitmap.getWidth() / 2.0f), this.F0.top - (this.R0.getHeight() / 2.0f), this.b);
        } else {
            Bitmap bitmap2 = this.N0;
            canvas.drawBitmap(bitmap2, thumbCenterX - (bitmap2.getWidth() / 2.0f), this.F0.top - (this.N0.getHeight() / 2.0f), this.b);
        }
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewParent parent = getParent();
        if (parent == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e(Canvas canvas) {
        Bitmap bitmap;
        if (this.t0 != 0) {
            if (this.A0 == 0 && this.z0 == null) {
                return;
            }
            float thumbCenterX = getThumbCenterX();
            for (int i = 0; i < this.s0.length; i++) {
                float thumbPosOnTickFloat = getThumbPosOnTickFloat();
                if ((!this.C0 || thumbCenterX < this.s0[i]) && ((!this.B0 || (i != 0 && i != this.s0.length - 1)) && (i != getThumbPosOnTick() || this.t0 <= 1 || this.R))) {
                    float f = i;
                    Paint paint = this.b;
                    if (f <= thumbPosOnTickFloat) {
                        paint.setColor(getLeftSideTickColor());
                    } else {
                        paint.setColor(getRightSideTickColor());
                    }
                    if (this.z0 != null) {
                        if (this.y0 == null || this.x0 == null) {
                            q();
                        }
                        Bitmap bitmap2 = this.y0;
                        if (bitmap2 == null || (bitmap = this.x0) == null) {
                            c6.f("the format of the selector TickMarks drawable is wrong!");
                            return;
                        }
                        float[] fArr = this.s0;
                        if (f <= thumbPosOnTickFloat) {
                            canvas.drawBitmap(bitmap2, fArr[i] - (bitmap.getWidth() / 2.0f), this.F0.top - (this.x0.getHeight() / 2.0f), this.b);
                        } else {
                            canvas.drawBitmap(bitmap, fArr[i] - (bitmap.getWidth() / 2.0f), this.F0.top - (this.x0.getHeight() / 2.0f), this.b);
                        }
                    } else {
                        int i2 = this.A0;
                        if (i2 == 1) {
                            canvas.drawCircle(this.s0[i], this.F0.top, this.w0, this.b);
                        } else if (i2 == 3) {
                            int iJ = tu0.j(this.a, 1.0f);
                            float leftSideTrackSize = thumbCenterX >= this.s0[i] ? getLeftSideTrackSize() : getRightSideTrackSize();
                            float f2 = this.s0[i];
                            float f3 = iJ;
                            float f4 = this.F0.top;
                            float f5 = leftSideTrackSize / 2.0f;
                            canvas.drawRect(f2 - f3, f4 - f5, f2 + f3, f5 + f4, this.b);
                        } else if (i2 == 2) {
                            float f6 = this.s0[i];
                            float f7 = this.D0 / 2.0f;
                            float f8 = this.F0.top;
                            canvas.drawRect(f6 - f7, f8 - f7, f6 + f7, f7 + f8, this.b);
                        }
                    }
                }
            }
        }
    }

    public final void f(Canvas canvas) {
        if (this.W == null) {
            return;
        }
        float thumbPosOnTickFloat = getThumbPosOnTickFloat();
        for (int i = 0; i < this.W.length; i++) {
            if (i == getThumbPosOnTick() && i == thumbPosOnTickFloat) {
                this.c.setColor(this.h0);
            } else {
                float f = i;
                TextPaint textPaint = this.c;
                if (f < thumbPosOnTickFloat) {
                    textPaint.setColor(getLeftSideTickTextsColor());
                } else {
                    textPaint.setColor(getRightSideTickTextsColor());
                }
            }
            int length = this.T ? (this.W.length - i) - 1 : i;
            String[] strArr = this.W;
            if (i == 0) {
                canvas.drawText(strArr[length], (this.a0[length] / 2.0f) + this.b0[i], this.c0, this.c);
            } else if (i == strArr.length - 1) {
                canvas.drawText(strArr[length], this.b0[i] - (this.a0[length] / 2.0f), this.c0, this.c);
            } else {
                canvas.drawText(strArr[length], this.b0[i], this.c0, this.c);
            }
        }
    }

    public final void g(Canvas canvas) {
        this.b.setColor(this.K0);
        this.b.setStrokeWidth(this.I0);
        RectF rectF = this.F0;
        canvas.drawLine(rectF.left, rectF.top, rectF.right, rectF.bottom, this.b);
        this.b.setColor(this.J0);
        this.b.setStrokeWidth(this.H0);
        RectF rectF2 = this.G0;
        canvas.drawLine(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, this.b);
    }

    public vb4 getIndicator() {
        return this.j0;
    }

    public View getIndicatorContentView() {
        return this.o0;
    }

    public String getIndicatorTextString() {
        String[] strArr;
        String str = this.r0;
        if (str == null || !str.contains("${TICK_TEXT}")) {
            String str2 = this.r0;
            if (str2 != null && str2.contains("${PROGRESS}")) {
                return this.r0.replace("${PROGRESS}", i(this.M));
            }
        } else if (this.t0 > 1 && (strArr = this.W) != null) {
            return this.r0.replace("${TICK_TEXT}", strArr[getThumbPosOnTick()]);
        }
        return i(this.M);
    }

    public float getMax() {
        return this.K;
    }

    public float getMin() {
        return this.L;
    }

    public it5 getOnSeekChangeListener() {
        return this.d;
    }

    public int getProgress() {
        return Math.round(this.M);
    }

    public synchronized float getProgressFloat() {
        return BigDecimal.valueOf(this.M).setScale(this.O, 4).floatValue();
    }

    public int getTickCount() {
        return this.t0;
    }

    public final Bitmap h(Drawable drawable, boolean z) {
        int intrinsicHeight;
        if (drawable == null) {
            return null;
        }
        int iJ = tu0.j(this.a, 30.0f);
        if (drawable.getIntrinsicWidth() > iJ) {
            int i = z ? this.P0 : this.D0;
            intrinsicHeight = Math.round(((i * 1.0f) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
            if (i > iJ) {
                intrinsicHeight = Math.round(((iJ * 1.0f) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
            } else {
                iJ = i;
            }
        } else {
            iJ = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iJ, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public final String i(float f) {
        char[] cArr;
        if (!this.N) {
            return String.valueOf(Math.round(f));
        }
        double d = f;
        int iAbs = Math.abs(this.O);
        double dPow = (Math.pow(10.0d, iAbs) * Math.abs(d)) + 0.5d;
        if (dPow > 9.99999999999999E14d || iAbs > 16) {
            String string = new BigDecimal(Double.toString(d)).setScale(Math.abs(iAbs), RoundingMode.HALF_UP).toString();
            if (iAbs == 0) {
                return string;
            }
            int length = string.length() - 1;
            while (length >= 0 && string.charAt(length) == '0') {
                length--;
            }
            String strSubstring = string.substring(0, length + 1);
            return strSubstring.charAt(strSubstring.length() - 1) == '.' ? xs1.g(1, 0, strSubstring) : strSubstring;
        }
        long jNextUp = (long) Math.nextUp(dPow);
        if (jNextUp < 1) {
            return "0";
        }
        char[] charArray = Long.toString(jNextUp).toCharArray();
        if (charArray.length > iAbs) {
            int length2 = charArray.length - 1;
            int length3 = charArray.length - iAbs;
            while (length2 >= length3 && charArray[length2] == '0') {
                length2--;
            }
            if (length2 >= length3) {
                cArr = new char[length2 + 2];
                System.arraycopy(charArray, 0, cArr, 0, length3);
                cArr[length3] = '.';
                System.arraycopy(charArray, length3, cArr, length3 + 1, (length2 - length3) + 1);
            } else {
                cArr = new char[length3];
                System.arraycopy(charArray, 0, cArr, 0, length3);
            }
        } else {
            int length4 = charArray.length - 1;
            while (length4 >= 0 && charArray[length4] == '0') {
                length4--;
            }
            char[] cArr2 = w13.c[iAbs - charArray.length];
            char[] cArrCopyOf = Arrays.copyOf(cArr2, cArr2.length + length4 + 1);
            System.arraycopy(charArray, 0, cArrCopyOf, cArr2.length, length4 + 1);
            cArr = cArrCopyOf;
        }
        return Math.signum(d) > 0.0d ? new String(cArr) : "-".concat(new String(cArr));
    }

    public final void j(Context context, AttributeSet attributeSet) {
        dx0 dx0Var = new dx0(context);
        if (attributeSet == null) {
            b(dx0Var);
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, vd6.a);
        this.K = typedArrayObtainStyledAttributes.getFloat(6, 100.0f);
        this.L = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.M = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        this.N = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.P = typedArrayObtainStyledAttributes.getBoolean(37, true);
        this.q = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.Q = typedArrayObtainStyledAttributes.getBoolean(8, false);
        this.R = typedArrayObtainStyledAttributes.getBoolean(12, false);
        this.T = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.H0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(33, dx0Var.e);
        this.I0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(35, dx0Var.g);
        this.J0 = typedArrayObtainStyledAttributes.getColor(32, dx0Var.f);
        this.K0 = typedArrayObtainStyledAttributes.getColor(34, dx0Var.h);
        this.E0 = typedArrayObtainStyledAttributes.getBoolean(36, false);
        this.P0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(20, dx0Var.j);
        this.Q0 = typedArrayObtainStyledAttributes.getDrawable(19);
        this.W0 = typedArrayObtainStyledAttributes.getBoolean(17, true);
        p(typedArrayObtainStyledAttributes.getColorStateList(18), dx0Var.k);
        this.T0 = typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.V0 = typedArrayObtainStyledAttributes.getColor(21, dx0Var.i);
        this.t0 = typedArrayObtainStyledAttributes.getInt(31, 0);
        this.A0 = typedArrayObtainStyledAttributes.getInt(15, 0);
        this.D0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(25, dx0Var.p);
        r(typedArrayObtainStyledAttributes.getColorStateList(22), dx0Var.o);
        this.z0 = typedArrayObtainStyledAttributes.getDrawable(23);
        this.C0 = typedArrayObtainStyledAttributes.getBoolean(26, false);
        this.B0 = typedArrayObtainStyledAttributes.getBoolean(24, false);
        this.U = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(29, dx0Var.m);
        s(typedArrayObtainStyledAttributes.getColorStateList(28), dx0Var.l);
        this.i0 = typedArrayObtainStyledAttributes.getTextArray(27);
        int i = typedArrayObtainStyledAttributes.getInt(30, -1);
        if (i == 0) {
            this.e0 = Typeface.DEFAULT;
        } else if (i == 1) {
            this.e0 = Typeface.MONOSPACE;
        } else if (i == 2) {
            this.e0 = Typeface.SANS_SERIF;
        } else if (i != 3) {
            Typeface typeface = dx0Var.n;
            if (typeface == null) {
                this.e0 = Typeface.DEFAULT;
            } else {
                this.e0 = typeface;
            }
        } else {
            this.e0 = Typeface.SERIF;
        }
        this.q0 = typedArrayObtainStyledAttributes.getInt(13, 2);
        this.k0 = typedArrayObtainStyledAttributes.getColor(1, dx0Var.b);
        this.n0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, dx0Var.d);
        this.l0 = typedArrayObtainStyledAttributes.getColor(3, dx0Var.c);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        Context context2 = this.a;
        if (resourceId > 0) {
            this.o0 = View.inflate(context2, resourceId, null);
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        if (resourceId2 > 0) {
            this.p0 = View.inflate(context2, resourceId2, null);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void k() {
        l();
        int i = this.H0;
        int i2 = this.I0;
        if (i > i2) {
            this.H0 = i2;
        }
        Drawable drawable = this.Q0;
        Context context = this.a;
        if (drawable == null) {
            float f = this.P0 / 2.0f;
            this.L0 = f;
            this.M0 = f * 1.2f;
        } else {
            float fMin = Math.min(tu0.j(context, 30.0f), this.P0) / 2.0f;
            this.L0 = fMin;
            this.M0 = fMin;
        }
        if (this.z0 == null) {
            this.w0 = this.D0 / 2.0f;
        } else {
            this.w0 = Math.min(tu0.j(context, 30.0f), this.D0) / 2.0f;
        }
        this.f = Math.max(this.M0, this.w0) * 2.0f;
        if (this.b == null) {
            this.b = new Paint();
        }
        if (this.E0) {
            this.b.setStrokeCap(Paint.Cap.ROUND);
        }
        this.b.setAntiAlias(true);
        int i3 = this.H0;
        if (i3 > this.I0) {
            this.I0 = i3;
        }
        if (this.T0 || (this.t0 != 0 && this.U)) {
            if (this.c == null) {
                TextPaint textPaint = new TextPaint();
                this.c = textPaint;
                textPaint.setAntiAlias(true);
                this.c.setTextAlign(Paint.Align.CENTER);
                this.c.setTextSize(this.d0);
            }
            if (this.e == null) {
                this.e = new Rect();
            }
            this.c.setTypeface(this.e0);
            this.c.getTextBounds("j", 0, 1, this.e);
            this.V = tu0.j(context, 3.0f) + this.e.height();
        }
        this.k = this.M;
        c();
        this.F0 = new RectF();
        this.G0 = new RectF();
        if (!this.q) {
            int iJ = tu0.j(context, 16.0f);
            if (getPaddingLeft() == 0) {
                setPadding(iJ, getPaddingTop(), getPaddingRight(), getPaddingBottom());
            }
            if (getPaddingRight() == 0) {
                setPadding(getPaddingLeft(), getPaddingTop(), iJ, getPaddingBottom());
            }
        }
        int i4 = this.q0;
        if (i4 != 0 && this.j0 == null) {
            vb4 vb4Var = new vb4(this.a, this, this.k0, i4, this.n0, this.l0, this.o0, this.p0);
            this.j0 = vb4Var;
            this.o0 = vb4Var.l;
        }
    }

    public final void l() {
        float f = this.K;
        float f2 = this.L;
        if (f < f2) {
            c6.f("the Argument: MAX's value must be larger than MIN's.");
            return;
        }
        if (this.M < f2) {
            this.M = f2;
        }
        if (this.M > f) {
            this.M = f;
        }
    }

    public final void m() {
        this.y = getMeasuredWidth();
        this.t = getPaddingStart();
        this.x = getPaddingEnd();
        this.G = getPaddingTop();
        float f = (this.y - this.t) - this.x;
        this.H = f;
        int i = this.t0;
        this.I = f / (i + (-1) > 0 ? i - 1 : 1);
    }

    public final void n() {
        String strValueOf;
        int i = this.t0;
        if (i == 0) {
            return;
        }
        if (this.U) {
            this.W = new String[i];
        }
        int i2 = 0;
        while (i2 < this.s0.length) {
            if (this.U) {
                String[] strArr = this.W;
                CharSequence[] charSequenceArr = this.i0;
                if (charSequenceArr == null) {
                    strValueOf = i(this.S[i2]);
                } else {
                    strValueOf = i2 < charSequenceArr.length ? String.valueOf(charSequenceArr[i2]) : "";
                }
                strArr[i2] = strValueOf;
                TextPaint textPaint = this.c;
                String str = this.W[i2];
                textPaint.getTextBounds(str, 0, str.length(), this.e);
                this.a0[i2] = this.e.width();
                this.b0[i2] = (this.I * i2) + this.t;
            }
            this.s0[i2] = (this.I * i2) + this.t;
            i2++;
        }
    }

    public final void o() {
        Drawable drawable = this.Q0;
        if (drawable == null) {
            return;
        }
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapH = h(drawable, true);
            this.N0 = bitmapH;
            this.R0 = bitmapH;
            return;
        }
        try {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
            }
            Class cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i = 0; i < iIntValue; i++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i));
                if (iArr.length <= 0) {
                    this.N0 = h((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i)), true);
                } else {
                    if (iArr[0] != 16842919) {
                        throw new IllegalArgumentException("the state of the selector thumb drawable is wrong!");
                    }
                    this.R0 = h((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i)), true);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapH2 = h(this.Q0, true);
            this.N0 = bitmapH2;
            this.R0 = bitmapH2;
        }
    }

    @Override // android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        g(canvas);
        e(canvas);
        f(canvas);
        d(canvas);
        if (this.T0 && (!this.U || this.t0 <= 1)) {
            this.c.setColor(this.V0);
            canvas.drawText(i(this.M), getThumbCenterX(), this.U0, this.c);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(View.resolveSize(tu0.j(this.a, 170.0f), i), Math.round(this.f + getPaddingTop() + getPaddingBottom()) + this.V);
        m();
        u();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        setProgress(bundle.getFloat("isb_progress"));
        super.onRestoreInstanceState(bundle.getParcelable("isb_instance_state"));
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("isb_instance_state", super.onSaveInstanceState());
        bundle.putFloat("isb_progress", this.M);
        return bundle;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new ib0(this, 6));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0023  */
    /* JADX WARN: Code duplicated, block: B:30:0x0073  */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fc, code lost:
    
        if (r0 <= (r4 + r3)) goto L64;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.warkiz.widget.IndicatorSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(ColorStateList colorStateList, int i) {
        if (colorStateList == null) {
            this.O0 = i;
            this.S0 = i;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i2 = iArr2[0];
                this.O0 = i2;
                this.S0 = i2;
            } else {
                if (iArr.length != 2) {
                    c6.f("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                    return;
                }
                for (int i3 = 0; i3 < iArr.length; i3++) {
                    int[] iArr3 = iArr[i3];
                    if (iArr3.length == 0) {
                        this.S0 = iArr2[i3];
                    } else {
                        if (iArr3[0] != 16842919) {
                            c6.f("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                            return;
                        }
                        this.O0 = iArr2[i3];
                    }
                }
            }
        } catch (Exception unused) {
            g84.h("Something wrong happened when parseing thumb selector color.");
        }
    }

    public final void q() {
        Drawable drawable = this.z0;
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapH = h(drawable, false);
            this.x0 = bitmapH;
            this.y0 = bitmapH;
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        try {
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
            }
            Class cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i = 0; i < iIntValue; i++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i));
                if (iArr.length <= 0) {
                    this.x0 = h((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i)), false);
                } else {
                    if (iArr[0] != 16842913) {
                        throw new IllegalArgumentException("the state of the selector TickMarks drawable is wrong!");
                    }
                    this.y0 = h((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i)), false);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapH2 = h(this.z0, false);
            this.x0 = bitmapH2;
            this.y0 = bitmapH2;
        }
    }

    public final void r(ColorStateList colorStateList, int i) {
        if (colorStateList == null) {
            this.v0 = i;
            this.u0 = i;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i2 = iArr2[0];
                this.v0 = i2;
                this.u0 = i2;
            } else {
                if (iArr.length != 2) {
                    c6.f("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                    return;
                }
                for (int i3 = 0; i3 < iArr.length; i3++) {
                    int[] iArr3 = iArr[i3];
                    if (iArr3.length == 0) {
                        this.u0 = iArr2[i3];
                    } else {
                        if (iArr3[0] != 16842913) {
                            c6.f("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                            return;
                        }
                        this.v0 = iArr2[i3];
                    }
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("Something wrong happened when parsing thumb selector color." + e.getMessage());
        }
    }

    public final void s(ColorStateList colorStateList, int i) {
        if (colorStateList == null) {
            this.g0 = i;
            this.f0 = i;
            this.h0 = i;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i2 = iArr2[0];
                this.g0 = i2;
                this.f0 = i2;
                this.h0 = i2;
                return;
            }
            if (iArr.length != 3) {
                c6.f("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
                return;
            }
            for (int i3 = 0; i3 < iArr.length; i3++) {
                int[] iArr3 = iArr[i3];
                if (iArr3.length == 0) {
                    this.g0 = iArr2[i3];
                } else {
                    int i4 = iArr3[0];
                    if (i4 == 16842913) {
                        this.f0 = iArr2[i3];
                    } else {
                        if (i4 != 16843623) {
                            c6.f("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
                            return;
                        }
                        this.h0 = iArr2[i3];
                    }
                }
            }
        } catch (Exception unused) {
            g84.h("Something wrong happened when parseing thumb selector color.");
        }
    }

    public void setDecimalScale(int i) {
        this.O = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (z == isEnabled()) {
            return;
        }
        super.setEnabled(z);
        if (isEnabled()) {
            setAlpha(1.0f);
            if (this.m0) {
                this.o0.setAlpha(1.0f);
                return;
            }
            return;
        }
        setAlpha(0.3f);
        if (this.m0) {
            this.o0.setAlpha(0.3f);
        }
    }

    public void setIndicatorStayAlways(boolean z) {
        this.m0 = z;
    }

    public void setIndicatorTextFormat(String str) {
        this.r0 = str;
        n();
        w();
    }

    public synchronized void setMax(float f) {
        this.K = Math.max(this.L, f);
        l();
        c();
        u();
        invalidate();
        w();
    }

    public synchronized void setMin(float f) {
        this.L = Math.min(this.K, f);
        l();
        c();
        u();
        invalidate();
        w();
    }

    public void setOnSeekChangeListener(it5 it5Var) {
        this.d = it5Var;
    }

    public synchronized void setProgress(float f) {
        try {
            this.k = this.M;
            float f2 = this.L;
            if (f < f2) {
                f = f2;
            } else {
                f2 = this.K;
                if (f > f2) {
                    f = f2;
                }
            }
            this.M = f;
            if (!this.R && this.t0 > 1) {
                this.M = this.S[getClosestIndex()];
            }
            setSeekListener(false);
            v(this.M);
            postInvalidate();
            w();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setR2L(boolean z) {
        this.T = z;
        requestLayout();
        invalidate();
        w();
    }

    public void setThumbAdjustAuto(boolean z) {
        this.W0 = z;
    }

    public void setThumbDrawable(Drawable drawable) {
        if (drawable == null) {
            this.Q0 = null;
            this.N0 = null;
            this.R0 = null;
        } else {
            this.Q0 = drawable;
            float fMin = Math.min(tu0.j(this.a, 30.0f), this.P0) / 2.0f;
            this.L0 = fMin;
            this.M0 = fMin;
            this.f = Math.max(fMin, this.w0) * 2.0f;
            o();
        }
        requestLayout();
        invalidate();
    }

    public synchronized void setTickCount(int i) {
        int i2 = this.t0;
        if (i2 < 0 || i2 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.t0);
        }
        this.t0 = i;
        c();
        n();
        m();
        u();
        invalidate();
        w();
    }

    public void setTickMarksDrawable(Drawable drawable) {
        if (drawable == null) {
            this.z0 = null;
            this.x0 = null;
            this.y0 = null;
        } else {
            this.z0 = drawable;
            float fMin = Math.min(tu0.j(this.a, 30.0f), this.D0) / 2.0f;
            this.w0 = fMin;
            this.f = Math.max(this.M0, fMin) * 2.0f;
            q();
        }
        invalidate();
    }

    public void setUserSeekAble(boolean z) {
        this.P = z;
    }

    public final void t(MotionEvent motionEvent) {
        View view;
        float x = motionEvent.getX();
        float fRound = this.t;
        if (x >= fRound) {
            float x2 = motionEvent.getX();
            fRound = this.y - this.x;
            if (x2 <= fRound) {
                fRound = motionEvent.getX();
            }
        }
        if (this.t0 > 1 && !this.R) {
            fRound = (this.I * Math.round((fRound - this.t) / this.I)) + this.t;
        }
        if (this.T) {
            fRound = (this.t * 2) + (this.H - fRound);
        }
        this.k = this.M;
        float amplitude = (((fRound - this.t) * getAmplitude()) / this.H) + this.L;
        this.M = amplitude;
        v(amplitude);
        setSeekListener(true);
        invalidate();
        if (this.m0) {
            w();
            return;
        }
        vb4 vb4Var = this.j0;
        if (vb4Var == null) {
            return;
        }
        if (vb4Var.e == null && vb4Var.j != 0 && (view = vb4Var.l) != null) {
            view.measure(0, 0);
            vb4Var.e = new PopupWindow(vb4Var.l, -2, -2, false);
        }
        PopupWindow popupWindow = this.j0.e;
        if (popupWindow == null || !popupWindow.isShowing()) {
            vb4 vb4Var2 = this.j0;
            float thumbCenterX = getThumbCenterX();
            IndicatorSeekBar indicatorSeekBar = vb4Var2.k;
            if (indicatorSeekBar.isEnabled() && indicatorSeekBar.getVisibility() == 0) {
                vb4Var2.c();
                PopupWindow popupWindow2 = vb4Var2.e;
                if (popupWindow2 != null) {
                    popupWindow2.getContentView().measure(0, 0);
                    PopupWindow popupWindow3 = vb4Var2.e;
                    popupWindow3.showAsDropDown(indicatorSeekBar, (int) (thumbCenterX - (popupWindow3.getContentView().getMeasuredWidth() / 2.0f)), -(((vb4Var2.e.getContentView().getMeasuredHeight() + indicatorSeekBar.getMeasuredHeight()) - indicatorSeekBar.getPaddingTop()) + vb4Var2.g));
                    vb4Var2.a(thumbCenterX);
                    return;
                }
                return;
            }
            return;
        }
        vb4 vb4Var3 = this.j0;
        float thumbCenterX2 = getThumbCenterX();
        IndicatorSeekBar indicatorSeekBar2 = vb4Var3.k;
        if (indicatorSeekBar2.isEnabled() && indicatorSeekBar2.getVisibility() == 0) {
            vb4Var3.c();
            PopupWindow popupWindow4 = vb4Var3.e;
            if (popupWindow4 != null) {
                popupWindow4.getContentView().measure(0, 0);
                PopupWindow popupWindow5 = vb4Var3.e;
                popupWindow5.update(vb4Var3.k, (int) (thumbCenterX2 - (popupWindow5.getContentView().getMeasuredWidth() / 2)), -(((vb4Var3.e.getContentView().getMeasuredHeight() + indicatorSeekBar2.getMeasuredHeight()) - indicatorSeekBar2.getPaddingTop()) + vb4Var3.g), -1, -1);
                vb4Var3.a(thumbCenterX2);
            }
        }
    }

    public final void u() {
        if (this.T) {
            RectF rectF = this.G0;
            float f = this.t;
            rectF.left = f;
            rectF.top = this.G + this.M0;
            rectF.right = ((1.0f - ((this.M - this.L) / getAmplitude())) * this.H) + f;
            RectF rectF2 = this.G0;
            float f2 = rectF2.top;
            rectF2.bottom = f2;
            RectF rectF3 = this.F0;
            rectF3.left = rectF2.right;
            rectF3.top = f2;
            rectF3.right = this.y - this.x;
            rectF3.bottom = f2;
        } else {
            RectF rectF4 = this.F0;
            rectF4.left = this.t;
            rectF4.top = this.G + this.M0;
            rectF4.right = (((this.M - this.L) * this.H) / getAmplitude()) + this.t;
            RectF rectF5 = this.F0;
            float f3 = rectF5.top;
            rectF5.bottom = f3;
            RectF rectF6 = this.G0;
            rectF6.left = rectF5.right;
            rectF6.top = f3;
            rectF6.right = this.y - this.x;
            rectF6.bottom = f3;
        }
        if (this.T0 || (this.t0 != 0 && this.U)) {
            this.c.getTextBounds("j", 0, 1, this.e);
            float fRound = this.G + this.f + Math.round(this.e.height() - this.c.descent()) + tu0.j(this.a, 3.0f);
            this.c0 = fRound;
            this.U0 = fRound;
        }
        if (this.s0 == null) {
            return;
        }
        n();
        if (this.t0 > 1) {
            float f4 = this.S[getClosestIndex()];
            this.M = f4;
            this.k = f4;
        }
        v(this.M);
    }

    public final void v(float f) {
        if (!this.T) {
            this.F0.right = (((f - this.L) * this.H) / getAmplitude()) + this.t;
            this.G0.left = this.F0.right;
            return;
        }
        this.G0.right = ((1.0f - ((f - this.L) / getAmplitude())) * this.H) + this.t;
        this.F0.left = this.G0.right;
    }

    public final void w() {
        vb4 vb4Var;
        int i;
        if (!this.m0 || (vb4Var = this.j0) == null) {
            return;
        }
        String indicatorTextString = getIndicatorTextString();
        View view = vb4Var.l;
        if (view instanceof a71) {
            ((a71) view).setProgress(indicatorTextString);
        } else {
            TextView textView = vb4Var.d;
            if (textView != null) {
                textView.setText(indicatorTextString);
            }
        }
        int thumbCenterX = 0;
        this.o0.measure(0, 0);
        int measuredWidth = this.o0.getMeasuredWidth();
        float thumbCenterX2 = getThumbCenterX();
        if (this.p == -1.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                this.p = displayMetrics.widthPixels;
            }
        }
        float f = measuredWidth / 2;
        float f2 = f + thumbCenterX2;
        int i2 = this.y;
        if (f2 > i2) {
            thumbCenterX = i2 - measuredWidth;
            i = (int) ((thumbCenterX2 - thumbCenterX) - f);
        } else if (thumbCenterX2 - f < 0.0f) {
            i = -((int) (f - thumbCenterX2));
        } else {
            thumbCenterX = (int) (getThumbCenterX() - f);
            i = 0;
        }
        vb4.d(this.j0.l, thumbCenterX, -1, -1, -1);
        vb4.d(this.j0.c, i, -1, -1, -1);
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.n = -1.0f;
        this.p = -1.0f;
        this.O = 1;
        this.a = context;
        j(context, attributeSet);
        k();
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = -1.0f;
        this.p = -1.0f;
        this.O = 1;
        this.a = context;
        j(context, attributeSet);
        k();
    }

    public IndicatorSeekBar(Context context) {
        this(context, null);
    }
}
