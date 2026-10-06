package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q71 extends ao {
    public ObjectAnimator c;
    public ObjectAnimator d;
    public final TimeInterpolator e;
    public final v71 f;
    public int k;
    public float n;
    public float p;
    public zb q;
    public static final i53 r = ed.b;
    public static final int[] t = {0, 1500, 3000, 4500};
    public static final float[] x = {0.1f, 0.87f};
    public static final m31 y = new m31(Float.class, "animationFraction", 1);
    public static final n31 G = new n31(Float.class, "completeEndFraction", 1);

    public q71(Context context, v71 v71Var) {
        super(1);
        this.k = 0;
        this.q = null;
        this.f = v71Var;
        this.e = ji8.G(context, R.attr.motionEasingStandardInterpolator, r);
    }

    @Override // defpackage.ao
    public final void c() {
        ObjectAnimator objectAnimator = this.c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // defpackage.ao
    public final void j() {
        v();
        ObjectAnimator objectAnimator = this.c;
        v71 v71Var = this.f;
        objectAnimator.setDuration((long) (v71Var.n * 6000.0f));
        this.d.setDuration((long) (v71Var.n * 500.0f));
        this.k = 0;
        ((sp2) ((ArrayList) this.b).get(0)).c = v71Var.e[0];
        this.p = 0.0f;
    }

    @Override // defpackage.ao
    public final void l(im0 im0Var) {
        this.q = im0Var;
    }

    @Override // defpackage.ao
    public final void m() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (((mb4) this.a).isVisible()) {
            this.d.start();
        } else {
            c();
        }
    }

    @Override // defpackage.ao
    public final void o() {
        v();
        this.k = 0;
        ((sp2) ((ArrayList) this.b).get(0)).c = this.f.e[0];
        this.p = 0.0f;
        this.c.start();
    }

    @Override // defpackage.ao
    public final void p() {
        this.q = null;
    }

    public final void v() {
        ObjectAnimator objectAnimator = this.c;
        v71 v71Var = this.f;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, y, 0.0f, 1.0f);
            this.c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (v71Var.n * 6000.0f));
            this.c.setInterpolator(null);
            this.c.setRepeatCount(-1);
            this.c.addListener(new p71(this, 0));
        }
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, G, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (v71Var.n * 500.0f));
            this.d.addListener(new rn0(this, 1));
        }
    }
}
