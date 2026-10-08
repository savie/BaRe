package defpackage;

import android.view.animation.ScaleAnimation;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u53 implements Runnable {
    public final /* synthetic */ ImageView a;

    public u53(ImageView imageView) {
        this.a = imageView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.1f, 1.0f, 1.1f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(200L);
        scaleAnimation.setFillAfter(true);
        this.a.startAnimation(scaleAnimation);
    }
}
