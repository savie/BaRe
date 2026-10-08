package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qy4 implements View.OnTouchListener {
    public static final int J = ViewConfiguration.getTapTimeout();
    public boolean G;
    public boolean H;
    public final bq2 I;
    public final hb0 a;
    public final AccelerateInterpolator b;
    public final bq2 c;
    public ib0 d;
    public final float[] e;
    public final float[] f;
    public final int k;
    public final int n;
    public final float[] p;
    public final float[] q;
    public final float[] r;
    public boolean t;
    public boolean x;
    public boolean y;

    public qy4(bq2 bq2Var) {
        hb0 hb0Var = new hb0();
        hb0Var.e = Long.MIN_VALUE;
        hb0Var.g = -1L;
        hb0Var.f = 0L;
        this.a = hb0Var;
        this.b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.p = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.q = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.r = fArr5;
        this.c = bq2Var;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.k = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.n = J;
        hb0Var.a = 500;
        hb0Var.b = 500;
        this.I = bq2Var;
    }

    public static float b(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    public final float a(int i, float f, float f2, float f3) {
        float fB;
        float interpolation;
        float fB2 = b(this.e[i] * f2, 0.0f, this.f[i]);
        float fC = c(f2 - f, fB2) - c(f, fB2);
        AccelerateInterpolator accelerateInterpolator = this.b;
        if (fC >= 0.0f) {
            if (fC > 0.0f) {
                interpolation = accelerateInterpolator.getInterpolation(fC);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f4 = this.p[i];
            float f5 = this.q[i];
            float f6 = this.r[i];
            float f7 = f4 * f3;
            return fB > 0.0f ? b(fB * f7, f5, f6) : -b((-fB) * f7, f5, f6);
        }
        interpolation = -accelerateInterpolator.getInterpolation(-fC);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f8 = this.p[i];
        float f9 = this.q[i];
        float f10 = this.r[i];
        float f11 = f8 * f3;
        if (fB > 0.0f) {
        }
    }

    public final float c(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.k;
            if (i == 0 || i == 1) {
                if (f < f2) {
                    if (f >= 0.0f) {
                        return 1.0f - (f / f2);
                    }
                    if (this.G && i == 1) {
                        return 1.0f;
                    }
                }
            } else if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.x) {
            this.G = false;
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        hb0 hb0Var = this.a;
        int i2 = (int) (jCurrentAnimationTimeMillis - hb0Var.e);
        int i3 = hb0Var.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        hb0Var.i = i;
        hb0Var.h = hb0Var.a(jCurrentAnimationTimeMillis);
        hb0Var.g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        bq2 bq2Var;
        int count;
        hb0 hb0Var = this.a;
        float f = hb0Var.d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(hb0Var.c);
        if (iAbs != 0 && (count = (bq2Var = this.I).getCount()) != 0) {
            int childCount = bq2Var.getChildCount();
            int firstVisiblePosition = bq2Var.getFirstVisiblePosition();
            int i = firstVisiblePosition + childCount;
            if (iAbs <= 0 ? !(iAbs >= 0 || (firstVisiblePosition <= 0 && bq2Var.getChildAt(0).getTop() >= 0)) : !(i >= count && bq2Var.getChildAt(childCount - 1).getBottom() <= bq2Var.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.H
            r1 = 0
            if (r0 != 0) goto L7
            goto L7c
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7c
        L17:
            r7.d()
            return r1
        L1b:
            r7.y = r2
            r7.t = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            bq2 r4 = r7.c
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r1, r0, r3, r5)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r2, r9, r8, r3)
            hb0 r9 = r7.a
            r9.c = r0
            r9.d = r8
            boolean r8 = r7.G
            if (r8 != 0) goto L7c
            boolean r8 = r7.e()
            if (r8 == 0) goto L7c
            ib0 r8 = r7.d
            if (r8 != 0) goto L60
            ib0 r8 = new ib0
            r8.<init>(r7, r1)
            r7.d = r8
        L60:
            r7.G = r2
            r7.x = r2
            boolean r8 = r7.t
            if (r8 != 0) goto L75
            int r8 = r7.n
            if (r8 <= 0) goto L75
            ib0 r9 = r7.d
            long r5 = (long) r8
            java.util.WeakHashMap r8 = defpackage.dl8.a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            ib0 r8 = r7.d
            r8.run()
        L7a:
            r7.t = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qy4.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
