package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t31 extends y98 {
    public static final String[] W = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final l31 X = new l31(PointF.class, "topLeft");
    public static final m31 Y = new m31(PointF.class, "bottomRight", 0);
    public static final n31 Z = new n31(PointF.class, "bottomRight", 0);
    public static final o31 a0 = new o31(PointF.class, "topLeft", 0);
    public static final p31 b0 = new p31(PointF.class, "position");

    public static void O(la8 la8Var) {
        View view = la8Var.b;
        HashMap map = la8Var.a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", view.getParent());
    }

    @Override // defpackage.y98
    public final void d(la8 la8Var) {
        O(la8Var);
    }

    @Override // defpackage.y98
    public final void h(la8 la8Var) {
        O(la8Var);
    }

    @Override // defpackage.y98
    public final Animator l(ViewGroup viewGroup, la8 la8Var, la8 la8Var2) {
        int i;
        t31 t31Var;
        Animator animatorA;
        if (la8Var == null) {
            return null;
        }
        HashMap map = la8Var.a;
        if (la8Var2 == null) {
            return null;
        }
        HashMap map2 = la8Var2.a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = la8Var2.b;
        Rect rect = (Rect) map.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) map2.get("android:changeBounds:bounds");
        int i2 = rect.left;
        int i3 = rect2.left;
        int i4 = rect.top;
        int i5 = rect2.top;
        int i6 = rect.right;
        int i7 = rect2.right;
        int i8 = rect.bottom;
        int i9 = rect2.bottom;
        int i10 = i6 - i2;
        int i11 = i8 - i4;
        int i12 = i7 - i3;
        int i13 = i9 - i5;
        Rect rect3 = (Rect) map.get("android:changeBounds:clip");
        Rect rect4 = (Rect) map2.get("android:changeBounds:clip");
        if ((i10 == 0 || i11 == 0) && (i12 == 0 || i13 == 0)) {
            i = 0;
        } else {
            i = (i2 == i3 && i4 == i5) ? 0 : 1;
            if (i6 != i7 || i8 != i9) {
                i++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i++;
        }
        int i14 = i;
        if (i14 <= 0) {
            return null;
        }
        wm8.a(view, i2, i4, i6, i8);
        if (i14 != 2) {
            t31Var = this;
            if (i2 == i3 && i4 == i5) {
                t31Var.P.getClass();
                animatorA = xq5.a(view, Z, b05.a(i6, i8, i7, i9));
            } else {
                t31Var.P.getClass();
                animatorA = xq5.a(view, a0, b05.a(i2, i4, i3, i5));
            }
        } else if (i10 == i12 && i11 == i13) {
            t31Var = this;
            t31Var.P.getClass();
            animatorA = xq5.a(view, b0, b05.a(i2, i4, i3, i5));
        } else {
            t31Var = this;
            s31 s31Var = new s31(view);
            t31Var.P.getClass();
            ObjectAnimator objectAnimatorA = xq5.a(s31Var, X, b05.a(i2, i4, i3, i5));
            t31Var.P.getClass();
            ObjectAnimator objectAnimatorA2 = xq5.a(s31Var, Y, b05.a(i6, i8, i7, i9));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorA, objectAnimatorA2);
            animatorSet.addListener(new q31(s31Var));
            animatorA = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            bb9.L(viewGroup4, true);
            t31Var.r().a(new r31(viewGroup4));
        }
        return animatorA;
    }

    @Override // defpackage.y98
    public final String[] t() {
        return W;
    }
}
