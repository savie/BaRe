package defpackage;

import android.animation.Animator;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z03 extends cm0 {
    public final /* synthetic */ ExtendedFloatingActionButton g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z03(ExtendedFloatingActionButton extendedFloatingActionButton, tr9 tr9Var) {
        super(extendedFloatingActionButton, tr9Var);
        this.g = extendedFloatingActionButton;
    }

    @Override // defpackage.cm0
    public final int c() {
        return R.animator.mtrl_extended_fab_show_motion_spec;
    }

    @Override // defpackage.cm0
    public final void e() {
        this.d.b = null;
        this.g.l0 = 0;
    }

    @Override // defpackage.cm0
    public final void f(Animator animator) {
        tr9 tr9Var = this.d;
        Animator animator2 = (Animator) tr9Var.b;
        if (animator2 != null) {
            animator2.cancel();
        }
        tr9Var.b = animator;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.g;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.l0 = 2;
    }

    @Override // defpackage.cm0
    public final void g() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.g;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.setAlpha(1.0f);
        extendedFloatingActionButton.setScaleY(1.0f);
        extendedFloatingActionButton.setScaleX(1.0f);
    }

    @Override // defpackage.cm0
    public final boolean h() {
        u03 u03Var = ExtendedFloatingActionButton.B0;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.g;
        int visibility = extendedFloatingActionButton.getVisibility();
        int i = extendedFloatingActionButton.l0;
        if (visibility != 0) {
            if (i != 2) {
                return false;
            }
        } else if (i == 1) {
            return false;
        }
        return true;
    }
}
