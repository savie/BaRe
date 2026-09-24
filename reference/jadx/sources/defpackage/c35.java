package defpackage;

import android.animation.Animator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Choreographer;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c35 extends Drawable implements Drawable.Callback, Animatable {
    public boolean G;
    public boolean H;
    public boolean I;
    public final boolean J;
    public boolean K;
    public final Matrix a = new Matrix();
    public e25 b;
    public final j35 c;
    public float d;
    public boolean e;
    public boolean f;
    public boolean k;
    public final ArrayList n;
    public u94 p;
    public String q;
    public xp3 r;
    public boolean t;
    public hp1 x;
    public int y;

    public c35() {
        j35 j35Var = new j35();
        this.c = j35Var;
        this.d = 1.0f;
        this.e = true;
        this.f = false;
        this.k = false;
        this.n = new ArrayList();
        tn0 tn0Var = new tn0(this, 1);
        this.y = 255;
        this.J = true;
        this.K = false;
        j35Var.addUpdateListener(tn0Var);
    }

    public final void a(po4 po4Var, Object obj, cd cdVar) {
        hp1 hp1Var = this.x;
        if (hp1Var == null) {
            this.n.add(new t25(this, po4Var, obj, cdVar));
            return;
        }
        boolean zIsEmpty = true;
        if (po4Var == po4.c) {
            hp1Var.f(cdVar, obj);
        } else {
            qo4 qo4Var = po4Var.b;
            if (qo4Var != null) {
                qo4Var.f(cdVar, obj);
            } else {
                ArrayList arrayList = new ArrayList();
                this.x.d(po4Var, 0, arrayList, new po4(new String[0]));
                for (int i = 0; i < arrayList.size(); i++) {
                    ((po4) arrayList.get(i)).b.f(cdVar, obj);
                }
                zIsEmpty = true ^ arrayList.isEmpty();
            }
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == f35.z) {
                o(this.c.a());
            }
        }
    }

    public final boolean b() {
        return this.e || this.f;
    }

    public final void c() {
        e25 e25Var = this.b;
        ib ibVar = ks4.a;
        Rect rect = e25Var.j;
        List list = Collections.EMPTY_LIST;
        js4 js4Var = new js4(list, e25Var, "__container", -1L, 1, -1L, null, list, new mc(null, null, null, null, null, null, null, null, null), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, list, 1, null, false, null, null);
        e25 e25Var2 = this.b;
        hp1 hp1Var = new hp1(this, js4Var, e25Var2.i, e25Var2);
        this.x = hp1Var;
        if (this.H) {
            hp1Var.r(true);
        }
    }

    public final void d() {
        j35 j35Var = this.c;
        if (j35Var.r) {
            j35Var.cancel();
        }
        this.b = null;
        this.x = null;
        this.p = null;
        j35Var.q = null;
        j35Var.n = -2.14748365E9f;
        j35Var.p = 2.14748365E9f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.K = false;
        if (this.k) {
            try {
                e(canvas);
            } catch (Throwable unused) {
                m15.a.getClass();
            }
        } else {
            e(canvas);
        }
        zv1.d();
    }

    public final void e(Canvas canvas) {
        float f;
        float f2;
        e25 e25Var = this.b;
        int iSave = -1;
        Matrix matrix = this.a;
        if (e25Var != null && !getBounds().isEmpty()) {
            Rect bounds = getBounds();
            float fWidth = bounds.width() / bounds.height();
            Rect rect = e25Var.j;
            if (fWidth != rect.width() / rect.height()) {
                hp1 hp1Var = this.x;
                e25 e25Var2 = this.b;
                if (hp1Var == null || e25Var2 == null) {
                    return;
                }
                Rect bounds2 = getBounds();
                float fWidth2 = bounds2.width() / e25Var2.j.width();
                float fHeight = bounds2.height() / e25Var2.j.height();
                if (this.J) {
                    float fMin = Math.min(fWidth2, fHeight);
                    if (fMin < 1.0f) {
                        f2 = 1.0f / fMin;
                        fWidth2 /= f2;
                        fHeight /= f2;
                    } else {
                        f2 = 1.0f;
                    }
                    if (f2 > 1.0f) {
                        iSave = canvas.save();
                        float fWidth3 = bounds2.width() / 2.0f;
                        float fHeight2 = bounds2.height() / 2.0f;
                        float f3 = fWidth3 * fMin;
                        float f4 = fMin * fHeight2;
                        canvas.translate(fWidth3 - f3, fHeight2 - f4);
                        canvas.scale(f2, f2, f3, f4);
                    }
                }
                matrix.reset();
                matrix.preScale(fWidth2, fHeight);
                hp1Var.h(canvas, matrix, this.y);
                if (iSave > 0) {
                    canvas.restoreToCount(iSave);
                    return;
                }
                return;
            }
        }
        hp1 hp1Var2 = this.x;
        e25 e25Var3 = this.b;
        if (hp1Var2 == null || e25Var3 == null) {
            return;
        }
        float f5 = this.d;
        float fMin2 = Math.min(canvas.getWidth() / e25Var3.j.width(), canvas.getHeight() / e25Var3.j.height());
        if (f5 > fMin2) {
            f = this.d / fMin2;
        } else {
            fMin2 = f5;
            f = 1.0f;
        }
        if (f > 1.0f) {
            iSave = canvas.save();
            float fWidth4 = e25Var3.j.width() / 2.0f;
            float fHeight3 = e25Var3.j.height() / 2.0f;
            float f6 = fWidth4 * fMin2;
            float f7 = fHeight3 * fMin2;
            float f8 = this.d;
            canvas.translate((fWidth4 * f8) - f6, (f8 * fHeight3) - f7);
            canvas.scale(f, f, f6, f7);
        }
        matrix.reset();
        matrix.preScale(fMin2, fMin2);
        hp1Var2.h(canvas, matrix, this.y);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    public final boolean f() {
        j35 j35Var = this.c;
        if (j35Var == null) {
            return false;
        }
        return j35Var.r;
    }

    public final void g() {
        if (this.x == null) {
            this.n.add(new u25(this));
            return;
        }
        boolean zB = b();
        j35 j35Var = this.c;
        if (zB || j35Var.getRepeatCount() == 0) {
            j35Var.r = true;
            boolean zD = j35Var.d();
            Iterator it = j35Var.b.iterator();
            while (it.hasNext()) {
                ((Animator.AnimatorListener) it.next()).onAnimationStart(j35Var, zD);
            }
            j35Var.h((int) (j35Var.d() ? j35Var.b() : j35Var.c()));
            j35Var.e = 0L;
            j35Var.k = 0;
            if (j35Var.r) {
                j35Var.f(false);
                Choreographer.getInstance().postFrameCallback(j35Var);
            }
        }
        if (b()) {
            return;
        }
        i((int) (j35Var.c < 0.0f ? j35Var.c() : j35Var.b()));
        j35Var.f(true);
        boolean zD2 = j35Var.d();
        Iterator it2 = j35Var.b.iterator();
        while (it2.hasNext()) {
            ((Animator.AnimatorListener) it2.next()).onAnimationEnd(j35Var, zD2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.y;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        e25 e25Var = this.b;
        if (e25Var == null) {
            return -1;
        }
        return (int) (e25Var.j.height() * this.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        e25 e25Var = this.b;
        if (e25Var == null) {
            return -1;
        }
        return (int) (e25Var.j.width() * this.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final void h() {
        if (this.x == null) {
            this.n.add(new v25(this));
            return;
        }
        boolean zB = b();
        j35 j35Var = this.c;
        if (zB || j35Var.getRepeatCount() == 0) {
            j35Var.r = true;
            j35Var.f(false);
            Choreographer.getInstance().postFrameCallback(j35Var);
            j35Var.e = 0L;
            if (j35Var.d() && j35Var.f == j35Var.c()) {
                j35Var.f = j35Var.b();
            } else if (!j35Var.d() && j35Var.f == j35Var.b()) {
                j35Var.f = j35Var.c();
            }
        }
        if (b()) {
            return;
        }
        i((int) (j35Var.c < 0.0f ? j35Var.c() : j35Var.b()));
        j35Var.f(true);
        boolean zD = j35Var.d();
        Iterator it = j35Var.b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationEnd(j35Var, zD);
        }
    }

    public final void i(int i) {
        if (this.b != null) {
            this.c.h(i);
        } else {
            this.n.add(new r25(this, i));
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.K) {
            return;
        }
        this.K = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return f();
    }

    public final void j(int i) {
        if (this.b == null) {
            this.n.add(new y25(this, i));
        } else {
            j35 j35Var = this.c;
            j35Var.i(j35Var.n, i + 0.99f);
        }
    }

    public final void k(String str) {
        e25 e25Var = this.b;
        if (e25Var == null) {
            this.n.add(new p25(this, str, 1));
            return;
        }
        g75 g75VarC = e25Var.c(str);
        if (g75VarC != null) {
            j((int) (g75VarC.b + g75VarC.c));
        } else {
            c6.f(eq3.k("Cannot find marker with name ", str, "."));
        }
    }

    public final void l(String str) {
        e25 e25Var = this.b;
        ArrayList arrayList = this.n;
        if (e25Var == null) {
            arrayList.add(new p25(this, str, 0));
            return;
        }
        g75 g75VarC = e25Var.c(str);
        if (g75VarC == null) {
            c6.f(eq3.k("Cannot find marker with name ", str, "."));
            return;
        }
        int i = (int) g75VarC.b;
        int i2 = ((int) g75VarC.c) + i;
        if (this.b == null) {
            arrayList.add(new q25(this, i, i2));
        } else {
            this.c.i(i, i2 + 0.99f);
        }
    }

    public final void m(int i) {
        if (this.b == null) {
            this.n.add(new w25(this, i));
        } else {
            j35 j35Var = this.c;
            j35Var.i(i, (int) j35Var.p);
        }
    }

    public final void n(String str) {
        e25 e25Var = this.b;
        if (e25Var == null) {
            this.n.add(new a35(this, str));
            return;
        }
        g75 g75VarC = e25Var.c(str);
        if (g75VarC != null) {
            m((int) g75VarC.b);
        } else {
            c6.f(eq3.k("Cannot find marker with name ", str, "."));
        }
    }

    public final void o(float f) {
        e25 e25Var = this.b;
        if (e25Var == null) {
            this.n.add(new s25(this, f));
        } else {
            this.c.h(sg5.d(e25Var.k, e25Var.l, f));
            zv1.d();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.y = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        m15.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        g();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.n.clear();
        j35 j35Var = this.c;
        j35Var.f(true);
        boolean zD = j35Var.d();
        Iterator it = j35Var.b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationEnd(j35Var, zD);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
