package defpackage;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import java.util.Map;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t85 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    public /* synthetic */ t85(v85 v85Var) {
        this.b = v85Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Rect rect;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                v85 v85Var = (v85) obj;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                v85Var.k.setAlpha((int) (255.0f * fFloatValue));
                v85Var.y = fFloatValue;
                break;
            default:
                View view = (View) obj;
                Map map = ScheduleFabMenuView.K;
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                float fFloatValue2 = ((Float) animatedValue).floatValue();
                view.setAlpha((view.isEnabled() ? 1.0f : 0.5f) * fFloatValue2);
                int width = view.getWidth();
                int height = view.getHeight();
                float fG = l73.g(fFloatValue2, 0.0f, 1.0f);
                if (view.getLayoutDirection() == 0) {
                    rect = new Rect(tu0.v((1.0f - fG) * width), 0, width, height);
                } else {
                    rect = new Rect(0, 0, tu0.v(width * fG), height);
                }
                view.setClipBounds(rect);
                break;
        }
    }

    public /* synthetic */ t85(View view, ScheduleFabMenuView scheduleFabMenuView) {
        this.b = view;
    }
}
