package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb4 extends gp2 {
    public ao G;
    public rj8 H;
    public final up2 y;

    public mb4(Context context, lm0 lm0Var, up2 up2Var, ao aoVar) {
        super(context, lm0Var);
        this.y = up2Var;
        this.G = aoVar;
        aoVar.a = this;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0117  */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        rj8 rj8Var;
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.t)) {
            fd fdVar = this.c;
            lm0 lm0Var = this.b;
            if (fdVar != null && Settings.Global.getFloat(this.a.getContentResolver(), "animator_duration_scale", 1.0f) == 0.0f && (rj8Var = this.H) != null) {
                rj8Var.setBounds(getBounds());
                this.H.setTint(lm0Var.e[0]);
                this.H.draw(canvas);
                return;
            }
            canvas.save();
            Rect bounds = getBounds();
            float fB = b();
            ObjectAnimator objectAnimator = this.d;
            boolean z = objectAnimator != null && objectAnimator.isRunning();
            ObjectAnimator objectAnimator2 = this.e;
            boolean z2 = objectAnimator2 != null && objectAnimator2.isRunning();
            up2 up2Var = this.y;
            up2Var.a.d();
            up2Var.a(canvas, bounds, fB, z, z2);
            int i2 = lm0Var.i;
            int i3 = this.r;
            boolean z3 = (lm0Var instanceof zu4) || ((lm0Var instanceof v71) && ((v71) lm0Var).u);
            boolean z4 = z3 && i2 == 0 && !lm0Var.b(false);
            Paint paint = this.q;
            if (!z4) {
                if (z3) {
                    sp2 sp2Var = (sp2) ((ArrayList) this.G.b).get(0);
                    sp2 sp2Var2 = (sp2) dj7.e((ArrayList) this.G.b, 1);
                    up2 up2Var2 = this.y;
                    if (up2Var2 instanceof pu4) {
                        i = i2;
                        up2Var2.d(canvas, paint, 0.0f, sp2Var.a, lm0Var.f, i3, i);
                        this.y.d(canvas, paint, sp2Var2.b, 1.0f, lm0Var.f, i3, i);
                    } else {
                        i = i2;
                        canvas.save();
                        canvas.rotate(sp2Var2.g);
                        this.y.d(canvas, paint, sp2Var2.b, sp2Var.a + 1.0f, lm0Var.f, i3, i);
                        canvas.restore();
                    }
                }
                for (int i4 = 0; i4 < ((ArrayList) this.G.b).size(); i4++) {
                    sp2 sp2Var3 = (sp2) ((ArrayList) this.G.b).get(i4);
                    sp2Var3.f = c();
                    this.y.c(canvas, paint, sp2Var3, this.r);
                    if (i4 <= 0 && !z4 && z3) {
                        this.y.d(canvas, paint, ((sp2) ((ArrayList) this.G.b).get(i4 - 1)).b, sp2Var3.a, lm0Var.f, i3, i);
                    }
                }
                canvas.restore();
            }
            this.y.d(canvas, paint, 0.0f, 1.0f, lm0Var.f, i3, 0);
            i = i2;
            while (i4 < ((ArrayList) this.G.b).size()) {
                sp2 sp2Var4 = (sp2) ((ArrayList) this.G.b).get(i4);
                sp2Var4.f = c();
                this.y.c(canvas, paint, sp2Var4, this.r);
                if (i4 <= 0) {
                }
            }
            canvas.restore();
        }
    }

    @Override // defpackage.gp2
    public final boolean e(boolean z, boolean z2, boolean z3) {
        rj8 rj8Var;
        boolean zE = super.e(z, z2, z3);
        if (this.c != null && Settings.Global.getFloat(this.a.getContentResolver(), "animator_duration_scale", 1.0f) == 0.0f && (rj8Var = this.H) != null) {
            return rj8Var.setVisible(z, z2);
        }
        if (!isRunning()) {
            this.G.c();
        }
        if (z && z3) {
            this.G.o();
        }
        return zE;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.y.e();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.y.f();
    }
}
