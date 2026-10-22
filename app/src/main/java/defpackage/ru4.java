package defpackage;

import android.animation.ObjectAnimator;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ru4 extends ao {
    public static final w03 p = new w03(Float.class, "animationFraction", 1);
    public ObjectAnimator c;
    public final i53 d;
    public final zu4 e;
    public int f;
    public boolean k;
    public float n;

    public ru4(zu4 zu4Var) {
        super(3);
        this.f = 1;
        this.e = zu4Var;
        this.d = new i53();
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
        this.c.setDuration((long) (this.e.n * 333.0f));
        w();
    }

    @Override // defpackage.ao
    public final void o() {
        v();
        w();
        this.c.start();
    }

    public final void v() {
        if (this.c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, p, 0.0f, 1.0f);
            this.c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (this.e.n * 333.0f));
            this.c.setInterpolator(null);
            this.c.setRepeatCount(-1);
            this.c.addListener(new qu4(this));
        }
    }

    public final void w() {
        this.k = true;
        this.f = 1;
        for (sp2 sp2Var : (ArrayList) this.b) {
            zu4 zu4Var = this.e;
            sp2Var.c = zu4Var.e[0];
            sp2Var.d = zu4Var.i / 2;
        }
    }

    @Override // defpackage.ao
    public final void m() {
    }

    @Override // defpackage.ao
    public final void p() {
    }

    @Override // defpackage.ao
    public final void l(im0 im0Var) {
    }
}
