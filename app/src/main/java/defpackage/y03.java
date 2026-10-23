package defpackage;

import android.animation.Animator;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y03 extends cm0 {
    public boolean g;
    public final /* synthetic */ ExtendedFloatingActionButton h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y03(ExtendedFloatingActionButton extendedFloatingActionButton, tr9 tr9Var) {
        super(extendedFloatingActionButton, tr9Var);
        this.h = extendedFloatingActionButton;
    }

    @Override // defpackage.cm0
    public final int c() {
        return R.animator.mtrl_extended_fab_hide_motion_spec;
    }

    @Override // defpackage.cm0
    public final void d() {
        super.d();
        this.g = true;
    }

    @Override // defpackage.cm0
    public final void e() {
        this.d.b = null;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.h;
        extendedFloatingActionButton.l0 = 0;
        if (this.g) {
            return;
        }
        extendedFloatingActionButton.setVisibility(8);
    }

    @Override // defpackage.cm0
    public final void f(Animator animator) {
        tr9 tr9Var = this.d;
        Animator animator2 = (Animator) tr9Var.b;
        if (animator2 != null) {
            animator2.cancel();
        }
        tr9Var.b = animator;
        this.g = false;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.h;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.l0 = 1;
    }

    @Override // defpackage.cm0
    public final void g() {
        this.h.setVisibility(8);
    }

    @Override // defpackage.cm0
    public final boolean h() {
        u03 u03Var = ExtendedFloatingActionButton.B0;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.h;
        int visibility = extendedFloatingActionButton.getVisibility();
        int i = extendedFloatingActionButton.l0;
        if (visibility == 0) {
            if (i != 1) {
                return false;
            }
        } else if (i == 2) {
            return false;
        }
        return true;
    }
}
