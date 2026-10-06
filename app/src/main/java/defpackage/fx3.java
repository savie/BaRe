package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fx3 extends Drawable implements Animatable {
    public final ex3 a;
    public boolean b;
    public boolean c;
    public boolean d;
    public int f;
    public boolean n;
    public Paint p;
    public Rect q;
    public boolean e = true;
    public final int k = -1;

    public fx3(ex3 ex3Var) {
        this.a = ex3Var;
    }

    public final void a() {
        ms8.h("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.d);
        lx3 lx3Var = this.a.a;
        if (lx3Var.a.l.c == 1) {
            invalidateSelf();
            return;
        }
        if (this.b) {
            return;
        }
        this.b = true;
        ArrayList arrayList = lx3Var.c;
        if (lx3Var.j) {
            l0.e("Cannot subscribe to a cleared frame loader");
            return;
        }
        if (arrayList.contains(this)) {
            l0.e("Cannot subscribe twice in a row");
            return;
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !lx3Var.f) {
            lx3Var.f = true;
            lx3Var.j = false;
            lx3Var.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.d) {
            return;
        }
        if (this.n) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.q == null) {
                this.q = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.q);
            this.n = false;
        }
        lx3 lx3Var = this.a.a;
        jx3 jx3Var = lx3Var.i;
        Bitmap bitmap = jx3Var != null ? jx3Var.k : lx3Var.l;
        if (this.q == null) {
            this.q = new Rect();
        }
        Rect rect = this.q;
        if (this.p == null) {
            this.p = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.p);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.a.a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.a.a.o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.p == null) {
            this.p = new Paint(2);
        }
        this.p.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.p == null) {
            this.p = new Paint(2);
        }
        this.p.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        ms8.h("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.d);
        this.e = z;
        if (!z) {
            this.b = false;
            lx3 lx3Var = this.a.a;
            ArrayList arrayList = lx3Var.c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                lx3Var.f = false;
            }
        } else if (this.c) {
            a();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.c = true;
        this.f = 0;
        if (this.e) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.c = false;
        this.b = false;
        lx3 lx3Var = this.a.a;
        ArrayList arrayList = lx3Var.c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            lx3Var.f = false;
        }
    }
}
