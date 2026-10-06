package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cm0 {
    public final Context a;
    public final ExtendedFloatingActionButton b;
    public final ArrayList c = new ArrayList();
    public final tr9 d;
    public ph5 e;
    public ph5 f;

    public cm0(ExtendedFloatingActionButton extendedFloatingActionButton, tr9 tr9Var) {
        this.b = extendedFloatingActionButton;
        this.a = extendedFloatingActionButton.getContext();
        this.d = tr9Var;
    }

    public AnimatorSet a() {
        ph5 ph5Var = this.f;
        if (ph5Var == null) {
            if (this.e == null) {
                this.e = ph5.b(this.a, c());
            }
            ph5Var = this.e;
            ph5Var.getClass();
        }
        return b(ph5Var);
    }

    public final AnimatorSet b(ph5 ph5Var) {
        ArrayList arrayList = new ArrayList();
        boolean zG = ph5Var.g("opacity");
        ExtendedFloatingActionButton extendedFloatingActionButton = this.b;
        if (zG) {
            arrayList.add(ph5Var.d("opacity", extendedFloatingActionButton, View.ALPHA));
        }
        if (ph5Var.g("scale")) {
            arrayList.add(ph5Var.d("scale", extendedFloatingActionButton, View.SCALE_Y));
            arrayList.add(ph5Var.d("scale", extendedFloatingActionButton, View.SCALE_X));
        }
        if (ph5Var.g("width")) {
            arrayList.add(ph5Var.d("width", extendedFloatingActionButton, ExtendedFloatingActionButton.B0));
        }
        if (ph5Var.g("height")) {
            arrayList.add(ph5Var.d("height", extendedFloatingActionButton, ExtendedFloatingActionButton.C0));
        }
        if (ph5Var.g("paddingStart")) {
            arrayList.add(ph5Var.d("paddingStart", extendedFloatingActionButton, ExtendedFloatingActionButton.D0));
        }
        if (ph5Var.g("paddingEnd")) {
            arrayList.add(ph5Var.d("paddingEnd", extendedFloatingActionButton, ExtendedFloatingActionButton.E0));
        }
        if (ph5Var.g("labelOpacity")) {
            arrayList.add(ph5Var.d("labelOpacity", extendedFloatingActionButton, new bm0(Float.class, "LABEL_OPACITY_PROPERTY", 0)));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        bb9.G(animatorSet, arrayList);
        return animatorSet;
    }

    public abstract int c();

    public void d() {
        this.d.b = null;
    }

    public abstract void e();

    public abstract void f(Animator animator);

    public abstract void g();

    public abstract boolean h();
}
