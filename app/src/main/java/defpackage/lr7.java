package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class lr7 extends fc5 implements SubMenu {
    public final fc5 S;
    public final ic5 T;

    public lr7(Context context, fc5 fc5Var, ic5 ic5Var) {
        super(context);
        this.S = fc5Var;
        this.T = ic5Var;
    }

    @Override // defpackage.fc5
    public final boolean d(ic5 ic5Var) {
        return this.S.d(ic5Var);
    }

    @Override // defpackage.fc5
    public final boolean e(fc5 fc5Var, MenuItem menuItem) {
        return super.e(fc5Var, menuItem) || this.S.e(fc5Var, menuItem);
    }

    @Override // defpackage.fc5
    public final boolean f(ic5 ic5Var) {
        return this.S.f(ic5Var);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.T;
    }

    @Override // defpackage.fc5
    public final String j() {
        ic5 ic5Var = this.T;
        int i = ic5Var != null ? ic5Var.a : 0;
        if (i == 0) {
            return null;
        }
        return fz5.j(i, "android:menu:actionviewstates:");
    }

    @Override // defpackage.fc5
    public final fc5 k() {
        return this.S.k();
    }

    @Override // defpackage.fc5
    public final boolean m() {
        return this.S.m();
    }

    @Override // defpackage.fc5
    public final boolean n() {
        return this.S.n();
    }

    @Override // defpackage.fc5
    public final boolean o() {
        return this.S.o();
    }

    @Override // defpackage.fc5, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.S.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.T.setIcon(drawable);
        return this;
    }

    @Override // defpackage.fc5, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.S.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.T.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        u(i, null, 0, null, null);
        return this;
    }
}
