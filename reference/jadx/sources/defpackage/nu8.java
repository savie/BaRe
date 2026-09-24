package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu8 extends s8 implements dc5 {
    public final Context c;
    public final fc5 d;
    public h80 e;
    public WeakReference f;
    public final /* synthetic */ ou8 k;

    public nu8(ou8 ou8Var, Context context, h80 h80Var) {
        this.k = ou8Var;
        this.c = context;
        this.e = h80Var;
        fc5 fc5Var = new fc5(context);
        fc5Var.t = 1;
        this.d = fc5Var;
        fc5Var.e = this;
    }

    @Override // defpackage.s8
    public final void a() {
        ou8 ou8Var = this.k;
        if (ou8Var.m != this) {
            return;
        }
        if (ou8Var.t) {
            ou8Var.n = this;
            ou8Var.o = this.e;
        } else {
            this.e.g(this);
        }
        this.e = null;
        ou8Var.x0(false);
        ActionBarContextView actionBarContextView = ou8Var.j;
        if (actionBarContextView.r == null) {
            actionBarContextView.e();
        }
        ou8Var.g.setHideOnContentScrollEnabled(ou8Var.y);
        ou8Var.m = null;
    }

    @Override // defpackage.s8
    public final View b() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // defpackage.s8
    public final fc5 c() {
        return this.d;
    }

    @Override // defpackage.s8
    public final MenuInflater d() {
        return new ks7(this.c);
    }

    @Override // defpackage.dc5
    public final boolean e(fc5 fc5Var, MenuItem menuItem) {
        h80 h80Var = this.e;
        if (h80Var != null) {
            return ((x91) h80Var.b).g(this, menuItem);
        }
        return false;
    }

    @Override // defpackage.s8
    public final CharSequence f() {
        return this.k.j.getSubtitle();
    }

    @Override // defpackage.s8
    public final CharSequence g() {
        return this.k.j.getTitle();
    }

    @Override // defpackage.s8
    public final void h() {
        if (this.k.m != this) {
            return;
        }
        fc5 fc5Var = this.d;
        fc5Var.w();
        try {
            this.e.h(this, fc5Var);
        } finally {
            fc5Var.v();
        }
    }

    @Override // defpackage.s8
    public final boolean i() {
        return this.k.j.K;
    }

    @Override // defpackage.s8
    public final void j(View view) {
        this.k.j.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // defpackage.s8
    public final void k(int i) {
        l(this.k.e.getResources().getString(i));
    }

    @Override // defpackage.s8
    public final void l(CharSequence charSequence) {
        this.k.j.setSubtitle(charSequence);
    }

    @Override // defpackage.dc5
    public final void m(fc5 fc5Var) {
        if (this.e == null) {
            return;
        }
        h();
        o8 o8Var = this.k.j.d;
        if (o8Var != null) {
            o8Var.n();
        }
    }

    @Override // defpackage.s8
    public final void n(int i) {
        o(this.k.e.getResources().getString(i));
    }

    @Override // defpackage.s8
    public final void o(CharSequence charSequence) {
        this.k.j.setTitle(charSequence);
    }

    @Override // defpackage.s8
    public final void p(boolean z) {
        this.b = z;
        this.k.j.setTitleOptional(z);
    }
}
