package com.google.android.material.timepicker;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import defpackage.ea1;
import defpackage.ed;
import defpackage.fa1;
import defpackage.ga1;
import defpackage.j38;
import defpackage.ji8;
import defpackage.m38;
import defpackage.td6;
import defpackage.yc9;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ClockHandView extends View {
    public static final /* synthetic */ int N = 0;
    public final int G;
    public float H;
    public boolean I;
    public m38 J;
    public double K;
    public int L;
    public int M;
    public final int a;
    public final TimeInterpolator b;
    public final ValueAnimator c;
    public boolean d;
    public float e;
    public float f;
    public boolean k;
    public final int n;
    public boolean p;
    public final ArrayList q;
    public final int r;
    public final float t;
    public final Paint x;
    public final RectF y;

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.c = valueAnimator;
        this.q = new ArrayList();
        Paint paint = new Paint();
        this.x = paint;
        this.y = new RectF();
        this.M = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.k, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.a = ji8.F(context, R.attr.motionDurationLong2, 200);
        this.b = ji8.G(context, R.attr.motionEasingEmphasizedInterpolator, ed.b);
        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        Resources resources = getResources();
        this.G = resources.getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.t = resources.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f, false);
        this.n = ViewConfiguration.get(context).getScaledTouchSlop();
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
        valueAnimator.addUpdateListener(new ea1(this, 0));
        valueAnimator.addListener(new fa1(0));
    }

    public final int a(float f, float f2) {
        int degrees = (int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)));
        int i = degrees + 90;
        return i < 0 ? degrees + 450 : i;
    }

    public final void b(float f, boolean z) {
        ValueAnimator valueAnimator = this.c;
        valueAnimator.cancel();
        if (!z) {
            c(f, false);
            return;
        }
        float f2 = this.H;
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f2 < 180.0f && f > 180.0f) {
                f2 += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(f2), Float.valueOf(f));
        valueAnimator.setFloatValues(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        valueAnimator.setDuration(this.a);
        valueAnimator.setInterpolator(this.b);
        valueAnimator.start();
    }

    public final void c(float f, boolean z) {
        float f2 = f % 360.0f;
        this.H = f2;
        this.K = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i = this.M;
        int iRound = this.L;
        if (i == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f3 = width;
        float f4 = iRound;
        float fCos = (((float) Math.cos(this.K)) * f4) + f3;
        float fSin = (f4 * ((float) Math.sin(this.K))) + height;
        float f5 = this.r;
        this.y.set(fCos - f5, fSin - f5, fCos + f5, fSin + f5);
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            ((ga1) it.next()).a(f2, z);
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i = this.M;
        int iRound = this.L;
        if (i == 2) {
            iRound = Math.round(iRound * 0.66f);
        }
        float f = width;
        float f2 = iRound;
        float fCos = (((float) Math.cos(this.K)) * f2) + f;
        float f3 = height;
        float fSin = (f2 * ((float) Math.sin(this.K))) + f3;
        Paint paint = this.x;
        paint.setStrokeWidth(0.0f);
        int i2 = this.r;
        canvas.drawCircle(fCos, fSin, i2, paint);
        double dSin = Math.sin(this.K);
        double d = iRound - i2;
        paint.setStrokeWidth(this.G);
        canvas.drawLine(f, f3, width + ((int) (Math.cos(this.K) * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f, f3, this.t, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.c.isRunning()) {
            return;
        }
        b(this.H, false);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        m38 m38Var;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.e);
                int i2 = (int) (y - this.f);
                this.k = (i2 * i2) + (i * i) > this.n;
                z3 = this.I;
                z2 = actionMasked == 1;
                if (this.p) {
                    this.M = ((float) Math.hypot((double) (x - ((float) (getWidth() / 2))), (double) (y - ((float) (getHeight() / 2))))) > ((float) Math.round(((float) this.L) * 0.66f)) + yc9.m(getContext(), 12) ? 1 : 2;
                }
                z = false;
            } else {
                z2 = false;
                z = false;
                z3 = false;
            }
        } else {
            this.e = x;
            this.f = y;
            this.k = true;
            this.I = false;
            z = true;
            z2 = false;
            z3 = false;
        }
        boolean z5 = this.I;
        float fA = a(x, y);
        boolean z6 = this.H != fA;
        if (z && z6) {
            z4 = true;
        } else if (z6 || z3) {
            b(fA, z2 && this.d);
            z4 = true;
        } else {
            z4 = false;
        }
        boolean z7 = z4 | z5;
        this.I = z7;
        if (z7 && z2 && (m38Var = this.J) != null) {
            j38 j38Var = m38Var.b;
            TimePickerView timePickerView = m38Var.a;
            float fA2 = a(x, y);
            boolean z8 = this.k;
            m38Var.e = true;
            int i3 = j38Var.c;
            int i4 = j38Var.b;
            if (j38Var.d == 10) {
                timePickerView.K.b(m38Var.d, false);
                AccessibilityManager accessibilityManager = (AccessibilityManager) timePickerView.getContext().getSystemService(AccessibilityManager.class);
                if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                    m38Var.d(12, true);
                }
            } else {
                int iRound = Math.round(fA2);
                if (!z8) {
                    j38Var.l(((iRound + 15) / 30) * 5);
                    m38Var.c = j38Var.c * 6;
                }
                timePickerView.K.b(m38Var.c, z8);
            }
            m38Var.e = false;
            m38Var.e();
            if (j38Var.c != i3 || j38Var.b != i4) {
                timePickerView.performHapticFeedback(4);
            }
        }
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }
}
