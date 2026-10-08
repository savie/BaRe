package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ uc(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                xc xcVar = (xc) obj;
                ArrayList arrayList = new ArrayList(xcVar.e);
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((zb) arrayList.get(i2)).a(xcVar);
                }
                break;
            default:
                f85 f85Var = (f85) obj;
                f85Var.b.setTranslationY(0.0f);
                f85Var.b(0.0f);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                xc xcVar = (xc) this.b;
                ArrayList arrayList = new ArrayList(xcVar.e);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((zb) arrayList.get(i)).b(xcVar);
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
