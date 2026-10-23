package defpackage;

import android.animation.ValueAnimator;
import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hr2 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hr2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((lr2) obj).d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                Map map = ScheduleFabMenuView.K;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                ((ScheduleFabMenuView) obj).e(((Float) animatedValue).floatValue());
                break;
        }
    }
}
