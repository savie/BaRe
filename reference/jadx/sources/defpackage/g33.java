package defpackage;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g33 extends y98 {
    public static final String[] X = {"android:visibility:visibility", "android:visibility:parent"};
    public final int W;

    public g33(int i) {
        this((Object) null);
        this.W = i;
    }

    public static void O(la8 la8Var) {
        View view = la8Var.b;
        int visibility = view.getVisibility();
        HashMap map = la8Var.a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    public static float Q(la8 la8Var, float f) {
        Float f2;
        return (la8Var == null || (f2 = (Float) la8Var.a.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public static ln8 R(la8 la8Var, la8 la8Var2) {
        ln8 ln8Var = new ln8();
        ln8Var.a = false;
        ln8Var.b = false;
        if (la8Var != null) {
            HashMap map = la8Var.a;
            if (map.containsKey("android:visibility:visibility")) {
                ln8Var.c = ((Integer) map.get("android:visibility:visibility")).intValue();
                ln8Var.e = (ViewGroup) map.get("android:visibility:parent");
            } else {
                ln8Var.c = -1;
                ln8Var.e = null;
            }
        } else {
            ln8Var.c = -1;
            ln8Var.e = null;
        }
        if (la8Var2 != null) {
            HashMap map2 = la8Var2.a;
            if (map2.containsKey("android:visibility:visibility")) {
                ln8Var.d = ((Integer) map2.get("android:visibility:visibility")).intValue();
                ln8Var.f = (ViewGroup) map2.get("android:visibility:parent");
            } else {
                ln8Var.d = -1;
                ln8Var.f = null;
            }
        } else {
            ln8Var.d = -1;
            ln8Var.f = null;
        }
        if (la8Var != null && la8Var2 != null) {
            int i = ln8Var.c;
            int i2 = ln8Var.d;
            if (i != i2 || ln8Var.e != ln8Var.f) {
                if (i != i2) {
                    if (i == 0) {
                        ln8Var.b = false;
                        ln8Var.a = true;
                        return ln8Var;
                    }
                    if (i2 == 0) {
                        ln8Var.b = true;
                        ln8Var.a = true;
                        return ln8Var;
                    }
                } else {
                    if (ln8Var.f == null) {
                        ln8Var.b = false;
                        ln8Var.a = true;
                        return ln8Var;
                    }
                    if (ln8Var.e == null) {
                        ln8Var.b = true;
                        ln8Var.a = true;
                        return ln8Var;
                    }
                }
            }
        } else {
            if (la8Var == null && ln8Var.d == 0) {
                ln8Var.b = true;
                ln8Var.a = true;
                return ln8Var;
            }
            if (la8Var2 == null && ln8Var.c == 0) {
                ln8Var.b = false;
                ln8Var.a = true;
            }
        }
        return ln8Var;
    }

    public final ObjectAnimator P(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        wm8.a.t(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, wm8.b, f2);
        f33 f33Var = new f33(view);
        objectAnimatorOfFloat.addListener(f33Var);
        r().a(f33Var);
        return objectAnimatorOfFloat;
    }

    @Override // defpackage.y98
    public final void d(la8 la8Var) {
        O(la8Var);
    }

    @Override // defpackage.y98
    public final void h(la8 la8Var) {
        O(la8Var);
        View view = la8Var.b;
        Float fValueOf = (Float) view.getTag(R.id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = view.getVisibility() == 0 ? Float.valueOf(wm8.a.m(view)) : Float.valueOf(0.0f);
        }
        la8Var.a.put("android:fade:transitionAlpha", fValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:58:0x0130  */
    /* JADX WARN: Code duplicated, block: B:61:0x0139  */
    /* JADX WARN: Code duplicated, block: B:63:0x013d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x013f  */
    /* JADX WARN: Code duplicated, block: B:65:0x0147  */
    /* JADX WARN: Code duplicated, block: B:66:0x015f  */
    /* JADX WARN: Code duplicated, block: B:69:0x017b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:76:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01df  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:83:0x020c  */
    /* JADX WARN: Code duplicated, block: B:86:0x0213  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        if (R(q(r3, false), u(r3, false)).a != false) goto L9;
     */
    @Override // defpackage.y98
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator l(android.view.ViewGroup r24, defpackage.la8 r25, defpackage.la8 r26) {
        /*
            Method dump skipped, instruction units count: 727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g33.l(android.view.ViewGroup, la8, la8):android.animation.Animator");
    }

    @Override // defpackage.y98
    public final String[] t() {
        return X;
    }

    @Override // defpackage.y98
    public final boolean w(la8 la8Var, la8 la8Var2) {
        if (la8Var == null && la8Var2 == null) {
            return false;
        }
        if (la8Var != null && la8Var2 != null && la8Var2.a.containsKey("android:visibility:visibility") != la8Var.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        ln8 ln8VarR = R(la8Var, la8Var2);
        if (ln8VarR.a) {
            return ln8VarR.c == 0 || ln8VarR.d == 0;
        }
        return false;
    }

    public g33(Object obj) {
        this.W = 3;
    }
}
