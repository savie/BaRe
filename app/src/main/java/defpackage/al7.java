package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class al7 extends s8 implements dc5 {
    public Context c;
    public ActionBarContextView d;
    public h80 e;
    public WeakReference f;
    public boolean k;
    public fc5 n;

    @Override // defpackage.s8
    public final void a() {
        if (this.k) {
            return;
        }
        this.k = true;
        this.e.g(this);
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
        return this.n;
    }

    @Override // defpackage.s8
    public final MenuInflater d() {
        return new ks7(this.d.getContext());
    }

    @Override // defpackage.dc5
    public final boolean e(fc5 fc5Var, MenuItem menuItem) {
        return ((x91) this.e.b).g(this, menuItem);
    }

    @Override // defpackage.s8
    public final CharSequence f() {
        return this.d.getSubtitle();
    }

    @Override // defpackage.s8
    public final CharSequence g() {
        return this.d.getTitle();
    }

    @Override // defpackage.s8
    public final void h() {
        this.e.h(this, this.n);
    }

    @Override // defpackage.s8
    public final boolean i() {
        return this.d.K;
    }

    @Override // defpackage.s8
    public final void j(View view) {
        this.d.setCustomView(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // defpackage.s8
    public final void k(int i) {
        l(this.c.getString(i));
    }

    @Override // defpackage.s8
    public final void l(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    @Override // defpackage.dc5
    public final void m(fc5 fc5Var) {
        h();
        o8 o8Var = this.d.d;
        if (o8Var != null) {
            o8Var.n();
        }
    }

    @Override // defpackage.s8
    public final void n(int i) {
        o(this.c.getString(i));
    }

    @Override // defpackage.s8
    public final void o(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    @Override // defpackage.s8
    public final void p(boolean z) {
        this.b = z;
        this.d.setTitleOptional(z);
    }
}
