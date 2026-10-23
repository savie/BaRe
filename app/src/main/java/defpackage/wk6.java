package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wk6 implements px7 {
    public final n72 a;
    public final View b;

    public wk6(ImageView imageView) {
        ms8.j(imageView, "Argument must not be null");
        this.b = imageView;
        this.a = new n72(imageView);
    }

    @Override // defpackage.px7
    public final void a(fh7 fh7Var) {
        this.a.b.remove(fh7Var);
    }

    @Override // defpackage.px7
    public final void c(fh7 fh7Var) {
        n72 n72Var = this.a;
        ArrayList arrayList = n72Var.b;
        View view = n72Var.a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = n72Var.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = n72Var.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fh7Var.m(iA, iA2);
            return;
        }
        if (!arrayList.contains(fh7Var)) {
            arrayList.add(fh7Var);
        }
        if (n72Var.c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            m72 m72Var = new m72(n72Var);
            n72Var.c = m72Var;
            viewTreeObserver.addOnPreDrawListener(m72Var);
        }
    }

    @Override // defpackage.px7
    public final void d(kk6 kk6Var) {
        this.b.setTag(R.id.glide_custom_view_target_tag, kk6Var);
    }

    @Override // defpackage.px7
    public final kk6 k() {
        Object tag = this.b.getTag(R.id.glide_custom_view_target_tag);
        if (tag != null) {
            if (tag instanceof kk6) {
                return (kk6) tag;
            }
            c6.f("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
        n72 n72Var = this.a;
        ViewTreeObserver viewTreeObserver = n72Var.a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(n72Var.c);
        }
        n72Var.c = null;
        n72Var.b.clear();
    }

    public final String toString() {
        return "Target for: " + this.b;
    }

    @Override // defpackage.du4
    public final void e() {
    }

    @Override // defpackage.du4
    public final void h() {
    }

    @Override // defpackage.du4
    public final void m() {
    }

    @Override // defpackage.px7
    public final void g(Drawable drawable) {
    }

    @Override // defpackage.px7
    public final void j(Drawable drawable) {
    }

    @Override // defpackage.px7
    public final void b(Object obj, x98 x98Var) {
    }
}
