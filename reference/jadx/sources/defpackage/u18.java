package defpackage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u18 extends y98 {
    @Override // defpackage.y98
    public final void d(la8 la8Var) {
        View view = la8Var.b;
        if (view instanceof TextView) {
            la8Var.a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // defpackage.y98
    public final void h(la8 la8Var) {
        View view = la8Var.b;
        if (view instanceof TextView) {
            la8Var.a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // defpackage.y98
    public final Animator l(ViewGroup viewGroup, la8 la8Var, la8 la8Var2) {
        if (la8Var == null || la8Var2 == null || !(la8Var.b instanceof TextView)) {
            return null;
        }
        View view = la8Var2.b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        HashMap map = la8Var.a;
        HashMap map2 = la8Var2.a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new t18(textView));
        return valueAnimatorOfFloat;
    }
}
