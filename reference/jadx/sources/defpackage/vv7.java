package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vv7 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ TabLayout a;

    public vv7(TabLayout tabLayout) {
        this.a = tabLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
