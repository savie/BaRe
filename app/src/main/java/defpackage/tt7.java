package defpackage;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tt7 extends ly8 {
    public int f;
    public int g = -1;
    public final /* synthetic */ SwipeDismissBehavior h;

    public tt7(SwipeDismissBehavior swipeDismissBehavior) {
        this.h = swipeDismissBehavior;
    }

    @Override // defpackage.ly8
    public final void G(View view, int i) {
        this.g = i;
        this.f = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.h;
            swipeDismissBehavior.d = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.d = false;
        }
    }

    @Override // defpackage.ly8
    public final void H(int i) {
        jq6 jq6Var = this.h.b;
        if (jq6Var != null) {
            ao0 ao0Var = ((fo0) jq6Var.b).s;
            if (i == 0) {
                e38.d().g(ao0Var);
            } else if (i == 1 || i == 2) {
                e38.d().f(ao0Var);
            }
        }
    }

    @Override // defpackage.ly8
    public final void I(View view, int i, int i2) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.h;
        float f = width * swipeDismissBehavior.f;
        float width2 = view.getWidth() * swipeDismissBehavior.g;
        float fAbs = Math.abs(i - this.f);
        if (fAbs <= f) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f) / (width2 - f))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0050  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0065  */
    @Override // defpackage.ly8
    public final void J(View view, float f, float f2) {
        int i;
        int left;
        int i2;
        jq6 jq6Var;
        this.g = -1;
        int width = view.getWidth();
        boolean z = false;
        SwipeDismissBehavior swipeDismissBehavior = this.h;
        if (f != 0.0f) {
            boolean z2 = view.getLayoutDirection() == 1;
            int i3 = swipeDismissBehavior.e;
            if (i3 != 2 && (i3 != 0 ? i3 != 1 || (!z2 ? f < 0.0f : f > 0.0f) : !z2 ? f > 0.0f : f < 0.0f)) {
                i = this.f;
            } else {
                if (f >= 0.0f) {
                    left = view.getLeft();
                    i2 = this.f;
                    if (left < i2) {
                        i = this.f - width;
                    } else {
                        i = i2 + width;
                    }
                } else {
                    i = this.f - width;
                }
                z = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f) >= Math.round(view.getWidth() * 0.5f)) {
                if (f >= 0.0f) {
                    left = view.getLeft();
                    i2 = this.f;
                    if (left < i2) {
                        i = this.f - width;
                    } else {
                        i = i2 + width;
                    }
                } else {
                    i = this.f - width;
                }
                z = true;
            } else {
                i = this.f;
            }
        }
        if (swipeDismissBehavior.a.p(i, view.getTop())) {
            view.postOnAnimation(new ut7(swipeDismissBehavior, view, z));
        } else {
            if (!z || (jq6Var = swipeDismissBehavior.b) == null) {
                return;
            }
            jq6Var.u(view);
        }
    }

    @Override // defpackage.ly8
    public final boolean Q(View view, int i) {
        int i2 = this.g;
        return (i2 == -1 || i2 == i) && this.h.w(view);
    }

    @Override // defpackage.ly8
    public final int l(View view, int i) {
        int width;
        int width2;
        boolean z = view.getLayoutDirection() == 1;
        int i2 = this.h.e;
        if (i2 == 0) {
            width = this.f;
            if (z) {
                width -= view.getWidth();
                width2 = this.f;
            } else {
                width2 = view.getWidth() + width;
            }
        } else {
            int i3 = this.f;
            if (i2 != 1) {
                width = i3 - view.getWidth();
                width2 = this.f + view.getWidth();
            } else if (z) {
                width2 = view.getWidth() + i3;
                width = i3;
            } else {
                width = i3 - view.getWidth();
                width2 = this.f;
            }
        }
        return Math.min(Math.max(width, i), width2);
    }

    @Override // defpackage.ly8
    public final int m(View view, int i) {
        return view.getTop();
    }

    @Override // defpackage.ly8
    public final int y(View view) {
        return view.getWidth();
    }
}
