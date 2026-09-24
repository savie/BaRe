package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p60 extends Drawable {
    public final String a;
    public final jb9 b;
    public final da4 c;
    public final cz4 d;
    public final Drawable e;
    public Drawable f;
    public o60 g;
    public int h;
    public float i;
    public boolean j;
    public boolean k = false;

    public p60(String str, jb9 jb9Var, cz4 cz4Var, da4 da4Var) {
        this.a = str;
        this.b = jb9Var;
        this.d = cz4Var;
        this.c = da4Var;
        jb9Var.getClass();
        this.e = null;
    }

    public final boolean a() {
        return this.f != null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    public final void b() {
        Rect rect;
        int iJ;
        Rect rect2;
        if (this.h == 0) {
            this.j = true;
            Drawable drawable = this.f;
            if (drawable != null) {
                rect2 = drawable.getBounds();
                if (rect2.isEmpty()) {
                    rect2 = new Rect(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                    if (rect2.isEmpty()) {
                        rect2 = new Rect(0, 0, 1, 1);
                    }
                }
            } else {
                rect2 = new Rect(0, 0, 1, 1);
            }
            setBounds(rect2);
            return;
        }
        this.j = false;
        this.d.getClass();
        Rect bounds = this.f.getBounds();
        int i = this.h;
        float f = this.i;
        da4 da4Var = this.c;
        if (da4Var == null) {
            int iWidth = bounds.width();
            if (iWidth > i) {
                bounds = new Rect(0, 0, i, (int) ((bounds.height() / (iWidth / i)) + 0.5f));
            }
        } else {
            ca4 ca4Var = da4Var.a;
            ca4 ca4Var2 = da4Var.b;
            float fWidth = bounds.width() / bounds.height();
            if (ca4Var != null) {
                if ("%".equals(ca4Var.b)) {
                    iJ = (int) (((ca4Var.a / 100.0f) * i) + 0.5f);
                } else {
                    iJ = cz4.j(ca4Var, f);
                }
                rect = new Rect(0, 0, iJ, (ca4Var2 == null || "%".equals(ca4Var2.b)) ? (int) ((iJ / fWidth) + 0.5f) : cz4.j(ca4Var2, f));
            } else if (ca4Var2 != null && !"%".equals(ca4Var2.b)) {
                int iJ2 = cz4.j(ca4Var2, f);
                rect = new Rect(0, 0, (int) ((iJ2 * fWidth) + 0.5f), iJ2);
            }
            bounds = rect;
        }
        this.f.setBounds(bounds);
        this.f.setCallback(this.g);
        setBounds(bounds);
        invalidateSelf();
    }

    public final void c(Drawable.Callback callback) {
        this.g = callback == null ? null : new o60(this, callback);
        setCallback(callback);
        o60 o60Var = this.g;
        Drawable drawable = this.f;
        jb9 jb9Var = this.b;
        if (o60Var == null) {
            if (drawable != null) {
                drawable.setCallback(null);
                Object obj = this.f;
                if (obj instanceof Animatable) {
                    Animatable animatable = (Animatable) obj;
                    boolean zIsRunning = animatable.isRunning();
                    this.k = zIsRunning;
                    if (zIsRunning) {
                        animatable.stop();
                    }
                }
            }
            jb9Var.g(this);
            return;
        }
        if (drawable != null && drawable.getCallback() == null) {
            this.f.setCallback(this.g);
        }
        Drawable drawable2 = this.f;
        boolean z = drawable2 == null || drawable2 == this.e;
        if (drawable2 != null) {
            drawable2.setCallback(this.g);
            Object obj2 = this.f;
            if ((obj2 instanceof Animatable) && this.k) {
                ((Animatable) obj2).start();
            }
        }
        if (z) {
            jb9Var.G(this);
        }
    }

    public final void d(Drawable drawable) {
        this.k = false;
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (a()) {
            this.f.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        if (a()) {
            return this.f.getIntrinsicHeight();
        }
        return 1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        if (a()) {
            return this.f.getIntrinsicWidth();
        }
        return 1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (a()) {
            return this.f.getOpacity();
        }
        return -2;
    }

    public final String toString() {
        return "AsyncDrawable{destination='" + this.a + "', imageSize=" + this.c + ", result=" + this.f + ", canvasWidth=" + this.h + ", textSize=" + this.i + ", waitingForDimensions=" + this.j + '}';
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
