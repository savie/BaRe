package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tu8 extends xu8 {
    public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
    public static final h53 f = new h53();
    public static final DecelerateInterpolator g = new DecelerateInterpolator(1.5f);
    public static final AccelerateInterpolator h = new AccelerateInterpolator(1.5f);

    public static void f(yu8 yu8Var, View view) {
        ol1 ol1VarJ = j(view);
        if (ol1VarJ != null) {
            ol1VarJ.x(yu8Var);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                f(yu8Var, viewGroup.getChildAt(i));
            }
        }
    }

    public static void g(View view, yu8 yu8Var, tv8 tv8Var, boolean z) {
        ol1 ol1VarJ = j(view);
        if (ol1VarJ != null) {
            ol1VarJ.b = tv8Var;
            if (!z) {
                ol1VarJ.z(yu8Var);
                z = true;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                g(viewGroup.getChildAt(i), yu8Var, tv8Var, z);
            }
        }
    }

    public static void h(View view, tv8 tv8Var, List list) {
        ol1 ol1VarJ = j(view);
        if (ol1VarJ != null) {
            ol1VarJ.A(tv8Var, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                h(viewGroup.getChildAt(i), tv8Var, list);
            }
        }
    }

    public static void i(View view, yu8 yu8Var, l39 l39Var) {
        ol1 ol1VarJ = j(view);
        if (ol1VarJ != null) {
            ol1VarJ.B(yu8Var, l39Var);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                i(viewGroup.getChildAt(i), yu8Var, l39Var);
            }
        }
    }

    public static ol1 j(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof su8) {
            return ((su8) tag).a;
        }
        return null;
    }
}
