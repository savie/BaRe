package defpackage;

import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.ArrayList;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class km0 extends ProgressBar {
    public final jm0 G;
    public final lm0 a;
    public int b;
    public boolean c;
    public final boolean d;
    public final int e;
    public long f;
    public fd k;
    public boolean n;
    public int p;
    public boolean q;
    public final gm0 r;
    public final hm0 t;
    public final ib0 x;
    public final im0 y;

    public km0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, i);
        this.f = -1L;
        this.n = false;
        this.p = 4;
        this.r = new gm0(this);
        this.t = new hm0(this, 0);
        this.x = new ib0(this, 1);
        this.y = new im0(this);
        this.G = new jm0(this);
        Context context2 = getContext();
        this.a = a(context2, attributeSet);
        jd4.d(context2, attributeSet, i, i2);
        int[] iArr = td6.d;
        jd4.e(context2, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, i2);
        typedArrayObtainStyledAttributes.getInt(7, -1);
        this.e = Math.min(typedArrayObtainStyledAttributes.getInt(5, -1), PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
        typedArrayObtainStyledAttributes.recycle();
        this.k = new fd();
        this.d = true;
    }

    private up2 getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().y;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().y;
    }

    public abstract lm0 a(Context context, AttributeSet attributeSet);

    public final void b() {
        if (getProgressDrawable() == null || getIndeterminateDrawable() == null) {
            return;
        }
        getIndeterminateDrawable().G.l(this.y);
    }

    public void c(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.b = i;
            this.c = z;
            this.n = true;
            if (getIndeterminateDrawable().isVisible()) {
                fd fdVar = this.k;
                ContentResolver contentResolver = getContext().getContentResolver();
                fdVar.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != 0.0f) {
                    getIndeterminateDrawable().G.m();
                    return;
                }
            }
            this.y.a(getIndeterminateDrawable());
        }
    }

    public final boolean d() {
        if (!isAttachedToWindow() || getWindowVisibility() != 0) {
            return false;
        }
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.a.h;
    }

    @Override // android.widget.ProgressBar
    public mb4 getIndeterminateDrawable() {
        return (mb4) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.a.e;
    }

    public int getIndicatorTrackGapSize() {
        return this.a.i;
    }

    @Override // android.widget.ProgressBar
    public qk2 getProgressDrawable() {
        return (qk2) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.a.g;
    }

    public int getTrackColor() {
        return this.a.f;
    }

    public int getTrackCornerRadius() {
        return this.a.b;
    }

    public float getTrackCornerRadiusFraction() {
        return this.a.c;
    }

    public int getTrackThickness() {
        return this.a.a;
    }

    public int getWaveAmplitude() {
        return this.a.l;
    }

    public int getWaveSpeed() {
        return this.a.m;
    }

    public int getWavelengthDeterminate() {
        return this.a.j;
    }

    public int getWavelengthIndeterminate() {
        return this.a.k;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        qk2 progressDrawable = getProgressDrawable();
        jm0 jm0Var = this.G;
        if (progressDrawable != null) {
            qk2 progressDrawable2 = getProgressDrawable();
            if (progressDrawable2.k == null) {
                progressDrawable2.k = new ArrayList();
            }
            if (!progressDrawable2.k.contains(jm0Var)) {
                progressDrawable2.k.add(jm0Var);
            }
        }
        if (getIndeterminateDrawable() != null) {
            mb4 indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable.k == null) {
                indeterminateDrawable.k = new ArrayList();
            }
            if (!indeterminateDrawable.k.contains(jm0Var)) {
                indeterminateDrawable.k.add(jm0Var);
            }
        }
        if (d()) {
            if (this.e > 0) {
                this.f = SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.x);
        removeCallbacks(this.t);
        ((gp2) getCurrentDrawable()).d(false, false, false);
        mb4 indeterminateDrawable = getIndeterminateDrawable();
        jm0 jm0Var = this.G;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().f(jm0Var);
            getIndeterminateDrawable().G.p();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().f(jm0Var);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getCurrentDrawingDelegate().g();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        try {
            up2 currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i2) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        if (this.d) {
            ((gp2) getCurrentDrawable()).d(d(), false, z);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.d) {
            ((gp2) getCurrentDrawable()).d(d(), false, false);
        }
    }

    public void setAnimatorDurationScaleProvider(fd fdVar) {
        this.k = fdVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().c = fdVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().c = fdVar;
        }
    }

    public void setHideAfterMaxProgress(boolean z) {
        if (getProgressDrawable() == null) {
            return;
        }
        gm0 gm0Var = this.r;
        if (z) {
            ArrayList arrayList = getProgressDrawable().G.k;
            if (arrayList.contains(gm0Var)) {
                return;
            }
            arrayList.add(gm0Var);
            return;
        }
        ArrayList arrayList2 = getProgressDrawable().G.k;
        int iIndexOf = arrayList2.indexOf(gm0Var);
        if (iIndexOf >= 0) {
            arrayList2.set(iIndexOf, null);
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.a.h = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            gp2 gp2Var = (gp2) getCurrentDrawable();
            if (gp2Var != null) {
                gp2Var.d(false, false, false);
            }
            super.setIndeterminate(z);
            gp2 gp2Var2 = (gp2) getCurrentDrawable();
            if (gp2Var2 != null) {
                gp2Var2.d(d(), false, false);
            }
            if ((gp2Var2 instanceof mb4) && d()) {
                ((mb4) gp2Var2).G.o();
            }
            this.n = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIndeterminateAnimatorDurationScale(float f) {
        lm0 lm0Var = this.a;
        if (lm0Var.n != f) {
            lm0Var.n = f;
            getIndeterminateDrawable().G.j();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof mb4) {
            ((gp2) drawable).d(false, false, false);
            super.setIndeterminateDrawable(drawable);
        } else if (this.q) {
            c6.f("Cannot set framework drawable as indeterminate drawable.");
        } else {
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            Integer numN = z85.n(getContext(), R.attr.colorPrimary);
            iArr = new int[]{numN != null ? numN.intValue() : -1};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.a.e = iArr;
        getIndeterminateDrawable().G.j();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.i != i) {
            lm0Var.i = i;
            lm0Var.d();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        c(i, false);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable instanceof qk2) {
            qk2 qk2Var = (qk2) drawable;
            qk2Var.d(false, false, false);
            super.setProgressDrawable(qk2Var);
            qk2Var.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
            return;
        }
        if (this.q) {
            c6.f("Cannot set framework drawable as progress drawable.");
        } else {
            super.setProgressDrawable(drawable);
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.a.g = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.f != i) {
            lm0Var.f = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.b != i) {
            lm0Var.b = Math.min(i, lm0Var.a / 2);
            lm0Var.d = false;
            invalidate();
        }
    }

    public void setTrackCornerRadiusFraction(float f) {
        lm0 lm0Var = this.a;
        if (lm0Var.c != f) {
            lm0Var.c = Math.min(f, 0.5f);
            lm0Var.d = true;
            invalidate();
        }
    }

    public void setTrackThickness(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.a != i) {
            lm0Var.a = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.p = i;
        } else {
            c6.f("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
    }

    public void setWaveAmplitude(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.l != i) {
            lm0Var.l = Math.abs(i);
            requestLayout();
        }
    }

    public void setWaveAmplitudeRampProgressMax(float f) {
        qk2 progressDrawable = getProgressDrawable();
        progressDrawable.b.p = f;
        progressDrawable.invalidateSelf();
        invalidate();
    }

    public void setWaveAmplitudeRampProgressMin(float f) {
        qk2 progressDrawable = getProgressDrawable();
        progressDrawable.b.o = f;
        progressDrawable.invalidateSelf();
        invalidate();
    }

    public void setWaveSpeed(int i) {
        lm0 lm0Var = this.a;
        lm0Var.m = i;
        qk2 progressDrawable = getProgressDrawable();
        boolean z = lm0Var.m != 0;
        ValueAnimator valueAnimator = progressDrawable.K;
        if (z && !valueAnimator.isRunning()) {
            valueAnimator.start();
        } else {
            if (z || !valueAnimator.isRunning()) {
                return;
            }
            valueAnimator.cancel();
        }
    }

    public void setWavelength(int i) {
        setWavelengthDeterminate(i);
        setWavelengthIndeterminate(i);
    }

    public void setWavelengthDeterminate(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.j != i) {
            lm0Var.j = Math.abs(i);
            if (isIndeterminate()) {
                return;
            }
            requestLayout();
        }
    }

    public void setWavelengthIndeterminate(int i) {
        lm0 lm0Var = this.a;
        if (lm0Var.k != i) {
            lm0Var.k = Math.abs(i);
            if (isIndeterminate()) {
                requestLayout();
            }
        }
    }
}
