package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.animation.PathInterpolator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ul1 {
    public final int a;
    public final j96 b;
    public vc4 c;
    public vc4 d;
    public k96 e;
    public final ColorDrawable f;
    public boolean g;
    public int h;

    static {
        new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
        new PathInterpolator(0.6f, 0.0f, 1.0f, 1.0f);
        new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
        new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
    }

    public ul1(int i, int i2) {
        j96 j96Var = new j96();
        j96Var.a = -1;
        j96Var.b = -1;
        vc4 vc4Var = vc4.e;
        j96Var.c = vc4Var;
        j96Var.d = false;
        j96Var.e = null;
        j96Var.f = 0.0f;
        j96Var.g = 0.0f;
        j96Var.h = 1.0f;
        this.b = j96Var;
        this.c = vc4Var;
        this.d = vc4Var;
        this.e = null;
        if (i != 1 && i != 2 && i != 4 && i != 8) {
            c6.f(fz5.j(i, "Unexpected side: "));
            throw null;
        }
        this.a = i;
        ColorDrawable colorDrawable = new ColorDrawable();
        this.f = colorDrawable;
        this.h = 0;
        this.g = true;
        if (i2 != 0) {
            this.h = i2;
            colorDrawable.setColor(i2);
            j96Var.e = colorDrawable;
            ro roVar = j96Var.i;
            if (roVar != null) {
                ((View) roVar.c).setBackground(colorDrawable);
            }
        }
    }

    public final void a(float f) {
        float f2 = f * 1.0f;
        j96 j96Var = this.b;
        if (j96Var.h != f2) {
            j96Var.h = f2;
            ro roVar = j96Var.i;
            if (roVar != null) {
                ((View) roVar.c).setAlpha(f2);
            }
        }
    }

    public final void b(float f) {
        float f2 = f * 1.0f;
        j96 j96Var = this.b;
        int i = this.a;
        if (i == 1) {
            float f3 = (-(1.0f - f2)) * j96Var.a;
            if (j96Var.f != f3) {
                j96Var.f = f3;
                ro roVar = j96Var.i;
                if (roVar != null) {
                    ((View) roVar.c).setTranslationX(f3);
                    return;
                }
                return;
            }
            return;
        }
        if (i == 2) {
            float f4 = (-(1.0f - f2)) * j96Var.b;
            if (j96Var.g != f4) {
                j96Var.g = f4;
                ro roVar2 = j96Var.i;
                if (roVar2 != null) {
                    ((View) roVar2.c).setTranslationY(f4);
                    return;
                }
                return;
            }
            return;
        }
        if (i == 4) {
            float f5 = (1.0f - f2) * j96Var.a;
            if (j96Var.f != f5) {
                j96Var.f = f5;
                ro roVar3 = j96Var.i;
                if (roVar3 != null) {
                    ((View) roVar3.c).setTranslationX(f5);
                    return;
                }
                return;
            }
            return;
        }
        if (i != 8) {
            return;
        }
        float f6 = (1.0f - f2) * j96Var.b;
        if (j96Var.g != f6) {
            j96Var.g = f6;
            ro roVar4 = j96Var.i;
            if (roVar4 != null) {
                ((View) roVar4.c).setTranslationY(f6);
            }
        }
    }
}
