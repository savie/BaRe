package defpackage;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ru8 implements Runnable {
    public final /* synthetic */ View a;
    public final /* synthetic */ yu8 b;
    public final /* synthetic */ l39 c;
    public final /* synthetic */ ValueAnimator d;

    public ru8(View view, yu8 yu8Var, l39 l39Var, ValueAnimator valueAnimator) {
        this.a = view;
        this.b = yu8Var;
        this.c = l39Var;
        this.d = valueAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        tu8.i(this.a, this.b, this.c);
        this.d.start();
    }
}
