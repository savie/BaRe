package defpackage;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r91 extends qw2 {
    public final int e;
    public final int f;
    public final TimeInterpolator g;
    public final TimeInterpolator h;
    public EditText i;
    public final dj j;
    public final n91 k;
    public AnimatorSet l;
    public ValueAnimator m;

    public r91(pw2 pw2Var) {
        super(pw2Var);
        this.j = new dj(this, 4);
        this.k = new n91(this, 0);
        this.e = ji8.F(pw2Var.getContext(), R.attr.motionDurationShort3, 100);
        this.f = ji8.F(pw2Var.getContext(), R.attr.motionDurationShort3, 150);
        this.g = ji8.G(pw2Var.getContext(), R.attr.motionEasingLinearInterpolator, ed.a);
        this.h = ji8.G(pw2Var.getContext(), R.attr.motionEasingEmphasizedInterpolator, ed.d);
    }

    @Override // defpackage.qw2
    public final void a() {
        if (this.b.H != null) {
            return;
        }
        s(t());
    }

    @Override // defpackage.qw2
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // defpackage.qw2
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // defpackage.qw2
    public final View.OnFocusChangeListener e() {
        return this.k;
    }

    @Override // defpackage.qw2
    public final View.OnClickListener f() {
        return this.j;
    }

    @Override // defpackage.qw2
    public final View.OnFocusChangeListener g() {
        return this.k;
    }

    @Override // defpackage.qw2
    public final void l(EditText editText) {
        this.i = editText;
        this.a.setEndIconVisible(t());
    }

    @Override // defpackage.qw2
    public final void o(boolean z) {
        if (this.b.H == null) {
            return;
        }
        s(z);
    }

    @Override // defpackage.qw2
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.h);
        valueAnimatorOfFloat.setDuration(this.f);
        valueAnimatorOfFloat.addUpdateListener(new p91(this));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i = this.e;
        valueAnimatorOfFloat2.setDuration(i);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: o91
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.a.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.l.addListener(new un0(this, 1));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: o91
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.a.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new q91(this, 0));
    }

    @Override // defpackage.qw2
    public final void r() {
        EditText editText = this.i;
        if (editText != null) {
            editText.post(new is(this, 1));
        }
    }

    public final void s(boolean z) {
        boolean z2 = this.b.c() == z;
        if (z && !this.l.isRunning()) {
            this.m.cancel();
            this.l.start();
            if (z2) {
                this.l.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.l.cancel();
        this.m.start();
        if (z2) {
            this.m.end();
        }
    }

    public final boolean t() {
        EditText editText = this.i;
        if (editText == null) {
            return false;
        }
        return (editText.hasFocus() || this.d.hasFocus()) && ((this.i.getText().length() > 0) || (this.b.H != null));
    }
}
