package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ea4 implements px7 {
    public final ImageView a;
    public final rm8 b;
    public Animatable c;

    public ea4(ImageView imageView) {
        ms8.j(imageView, "Argument must not be null");
        this.a = imageView;
        this.b = new rm8(imageView);
    }

    @Override // defpackage.px7
    public final void a(fh7 fh7Var) {
        this.b.b.remove(fh7Var);
    }

    @Override // defpackage.px7
    public final void b(Object obj, x98 x98Var) {
        if (x98Var != null && x98Var.o(obj, this)) {
            if (!(obj instanceof Animatable)) {
                this.c = null;
                return;
            }
            Animatable animatable = (Animatable) obj;
            this.c = animatable;
            animatable.start();
            return;
        }
        f(obj);
        if (!(obj instanceof Animatable)) {
            this.c = null;
            return;
        }
        Animatable animatable2 = (Animatable) obj;
        this.c = animatable2;
        animatable2.start();
    }

    @Override // defpackage.px7
    public final void c(fh7 fh7Var) {
        rm8 rm8Var = this.b;
        ArrayList arrayList = rm8Var.b;
        View view = rm8Var.a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = rm8Var.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = rm8Var.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fh7Var.m(iA, iA2);
            return;
        }
        if (!arrayList.contains(fh7Var)) {
            arrayList.add(fh7Var);
        }
        if (rm8Var.c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            qm8 qm8Var = new qm8(rm8Var);
            rm8Var.c = qm8Var;
            viewTreeObserver.addOnPreDrawListener(qm8Var);
        }
    }

    @Override // defpackage.px7
    public final void d(kk6 kk6Var) {
        this.a.setTag(R.id.glide_custom_view_target_tag, kk6Var);
    }

    public abstract void f(Object obj);

    @Override // defpackage.px7
    public final void g(Drawable drawable) {
        f(null);
        this.c = null;
        this.a.setImageDrawable(drawable);
    }

    @Override // defpackage.du4
    public final void h() {
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // defpackage.px7
    public final void j(Drawable drawable) {
        f(null);
        this.c = null;
        this.a.setImageDrawable(drawable);
    }

    @Override // defpackage.px7
    public final kk6 k() {
        Object tag = this.a.getTag(R.id.glide_custom_view_target_tag);
        if (tag != null) {
            if (tag instanceof kk6) {
                return (kk6) tag;
            }
            c6.f("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
        rm8 rm8Var = this.b;
        ViewTreeObserver viewTreeObserver = rm8Var.a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(rm8Var.c);
        }
        rm8Var.c = null;
        rm8Var.b.clear();
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.stop();
        }
        f(null);
        this.c = null;
        this.a.setImageDrawable(drawable);
    }

    @Override // defpackage.du4
    public final void m() {
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final String toString() {
        return "Target for: " + this.a;
    }

    @Override // defpackage.du4
    public final void e() {
    }
}
