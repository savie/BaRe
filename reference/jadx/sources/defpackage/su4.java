package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su4 extends ao {
    public static final int[] r = {533, 567, 850, 750};
    public static final int[] t = {1267, PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, 333, 0};
    public static final n71 x = new n71(Float.class, "animationFraction", 1);
    public ObjectAnimator c;
    public ObjectAnimator d;
    public final Interpolator[] e;
    public final zu4 f;
    public int k;
    public boolean n;
    public float p;
    public zb q;

    public su4(Context context, zu4 zu4Var) {
        super(2);
        this.k = 0;
        this.q = null;
        this.f = zu4Var;
        this.e = new Interpolator[]{AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
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
        zu4 zu4Var = this.f;
        objectAnimator.setDuration((long) (zu4Var.n * 1800.0f));
        this.d.setDuration((long) (zu4Var.n * 1800.0f));
        w();
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
        c();
        if (((mb4) this.a).isVisible()) {
            this.d.setFloatValues(this.p, 1.0f);
            this.d.setDuration((long) ((1.0f - this.p) * 1800.0f));
            this.d.start();
        }
    }

    @Override // defpackage.ao
    public final void o() {
        v();
        w();
        this.c.start();
    }

    @Override // defpackage.ao
    public final void p() {
        this.q = null;
    }

    public final void v() {
        ObjectAnimator objectAnimator = this.c;
        zu4 zu4Var = this.f;
        n71 n71Var = x;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, n71Var, 0.0f, 1.0f);
            this.c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration((long) (zu4Var.n * 1800.0f));
            this.c.setInterpolator(null);
            this.c.setRepeatCount(-1);
            this.c.addListener(new jn0(this, 2));
        }
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, n71Var, 1.0f);
            this.d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration((long) (zu4Var.n * 1800.0f));
            this.d.setInterpolator(null);
            this.d.addListener(new di3(this, 1));
        }
    }

    public final void w() {
        this.k = 0;
        Iterator it = ((ArrayList) this.b).iterator();
        while (it.hasNext()) {
            ((sp2) it.next()).c = this.f.e[0];
        }
    }
}
