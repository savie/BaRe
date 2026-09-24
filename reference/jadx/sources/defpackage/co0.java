package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class co0 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ co0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((fo0) obj).e();
                break;
            default:
                super.onAnimationEnd(animator);
                gp2 gp2Var = (gp2) obj;
                super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
                ArrayList arrayList = gp2Var.k;
                if (arrayList != null && !gp2Var.n) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((zb) it.next()).a(gp2Var);
                    }
                    break;
                }
                break;
        }
    }
}
