package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jn0 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ jn0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                super.onAnimationEnd(animator);
                on0 on0Var = (on0) obj;
                ViewGroup viewGroupS = yc9.s(on0Var);
                ViewOverlay overlay = viewGroupS == null ? null : viewGroupS.getOverlay();
                if (overlay != null) {
                    Iterator it = on0Var.t.iterator();
                    while (it.hasNext()) {
                        overlay.remove((u88) it.next());
                    }
                    break;
                }
                break;
            case 1:
                super.onAnimationEnd(animator);
                o71 o71Var = (o71) obj;
                o71Var.c();
                zb zbVar = o71Var.q;
                if (zbVar != null) {
                    zbVar.a((mb4) o71Var.a);
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        switch (this.a) {
            case 2:
                super.onAnimationRepeat(animator);
                su4 su4Var = (su4) this.b;
                su4Var.k = (su4Var.k + 1) % su4Var.f.e.length;
                su4Var.n = true;
                break;
            default:
                super.onAnimationRepeat(animator);
                break;
        }
    }
}
