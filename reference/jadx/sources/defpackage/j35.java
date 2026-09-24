package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.Choreographer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j35 extends ValueAnimator implements Choreographer.FrameCallback {
    public e25 q;
    public final CopyOnWriteArraySet a = new CopyOnWriteArraySet();
    public final CopyOnWriteArraySet b = new CopyOnWriteArraySet();
    public float c = 1.0f;
    public boolean d = false;
    public long e = 0;
    public float f = 0.0f;
    public int k = 0;
    public float n = -2.14748365E9f;
    public float p = 2.14748365E9f;
    public boolean r = false;

    public final float a() {
        e25 e25Var = this.q;
        if (e25Var == null) {
            return 0.0f;
        }
        float f = this.f;
        float f2 = e25Var.k;
        return (f - f2) / (e25Var.l - f2);
    }

    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
        this.b.add(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.a.add(animatorUpdateListener);
    }

    public final float b() {
        e25 e25Var = this.q;
        if (e25Var == null) {
            return 0.0f;
        }
        float f = this.p;
        return f == 2.14748365E9f ? e25Var.l : f;
    }

    public final float c() {
        e25 e25Var = this.q;
        if (e25Var == null) {
            return 0.0f;
        }
        float f = this.n;
        return f == -2.14748365E9f ? e25Var.k : f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        f(true);
    }

    public final boolean d() {
        return this.c < 0.0f;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        boolean z = false;
        if (this.r) {
            f(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        e25 e25Var = this.q;
        if (e25Var == null || !this.r) {
            return;
        }
        long j2 = this.e;
        float fAbs = (j2 != 0 ? j - j2 : 0L) / ((1.0E9f / e25Var.m) / Math.abs(this.c));
        float f = this.f;
        if (d()) {
            fAbs = -fAbs;
        }
        float f2 = f + fAbs;
        this.f = f2;
        float fC = c();
        float fB = b();
        PointF pointF = sg5.a;
        if (f2 >= fC && f2 <= fB) {
            z = true;
        }
        this.f = sg5.b(this.f, c(), b());
        this.e = j;
        e();
        if (!z) {
            int repeatCount = getRepeatCount();
            CopyOnWriteArraySet copyOnWriteArraySet = this.b;
            if (repeatCount == -1 || this.k < getRepeatCount()) {
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.k++;
                if (getRepeatMode() == 2) {
                    this.d = !this.d;
                    this.c = -this.c;
                } else {
                    this.f = d() ? b() : c();
                }
                this.e = j;
            } else {
                this.f = this.c < 0.0f ? c() : b();
                f(true);
                boolean zD = d();
                Iterator it2 = copyOnWriteArraySet.iterator();
                while (it2.hasNext()) {
                    ((Animator.AnimatorListener) it2.next()).onAnimationEnd(this, zD);
                }
            }
        }
        if (this.q != null) {
            float f3 = this.f;
            float f4 = this.n;
            if (f3 < f4 || f3 > this.p) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(f4), Float.valueOf(this.p), Float.valueOf(this.f)));
            }
        }
        zv1.d();
    }

    public final void e() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    public final void f(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.r = false;
        }
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float fC;
        float fB;
        float fC2;
        if (this.q == null) {
            return 0.0f;
        }
        if (d()) {
            fC = b() - this.f;
            fB = b();
            fC2 = c();
        } else {
            fC = this.f - c();
            fB = b();
            fC2 = c();
        }
        return fC / (fB - fC2);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        return Float.valueOf(a());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        e25 e25Var = this.q;
        if (e25Var == null) {
            return 0L;
        }
        return (long) e25Var.b();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public final void h(float f) {
        if (this.f == f) {
            return;
        }
        this.f = sg5.b(f, c(), b());
        this.e = 0L;
        e();
    }

    public final void i(float f, float f2) {
        if (f > f2) {
            throw new IllegalArgumentException("minFrame (" + f + ") must be <= maxFrame (" + f2 + ")");
        }
        e25 e25Var = this.q;
        float f3 = e25Var == null ? -3.4028235E38f : e25Var.k;
        float f4 = e25Var == null ? Float.MAX_VALUE : e25Var.l;
        float fB = sg5.b(f, f3, f4);
        float fB2 = sg5.b(f2, f3, f4);
        if (fB == this.n && fB2 == this.p) {
            return;
        }
        this.n = fB;
        this.p = fB2;
        h((int) sg5.b(this.f, fB, fB2));
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.r;
    }

    @Override // android.animation.Animator
    public final void removeAllListeners() {
        this.b.clear();
    }

    @Override // android.animation.ValueAnimator
    public final void removeAllUpdateListeners() {
        this.a.clear();
    }

    @Override // android.animation.Animator
    public final void removeListener(Animator.AnimatorListener animatorListener) {
        this.b.remove(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    public final void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.a.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.d) {
            return;
        }
        this.d = false;
        this.c = -this.c;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ Animator setDuration(long j) {
        setDuration(j);
        throw null;
    }
}
