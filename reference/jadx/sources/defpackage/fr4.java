package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fr4 extends y98 {
    @Override // defpackage.y98
    public final void d(la8 la8Var) {
        la8Var.a.put("NavigationRailLabelVisibility", Integer.valueOf(la8Var.b.getVisibility()));
    }

    @Override // defpackage.y98
    public final void h(la8 la8Var) {
        la8Var.a.put("NavigationRailLabelVisibility", Integer.valueOf(la8Var.b.getVisibility()));
    }

    @Override // defpackage.y98
    public final Animator l(ViewGroup viewGroup, la8 la8Var, la8 la8Var2) {
        if (la8Var == null) {
            return null;
        }
        HashMap map = la8Var.a;
        if (la8Var2 == null) {
            return null;
        }
        HashMap map2 = la8Var2.a;
        if (map.get("NavigationRailLabelVisibility") == null || map2.get("NavigationRailLabelVisibility") == null || ((Integer) map.get("NavigationRailLabelVisibility")).intValue() != 8 || ((Integer) map2.get("NavigationRailLabelVisibility")).intValue() != 0) {
            return null;
        }
        View view = la8Var2.b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ea1(view, 1));
        return valueAnimatorOfFloat;
    }
}
