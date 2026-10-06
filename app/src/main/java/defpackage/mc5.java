package defpackage;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mc5 implements MenuItem.OnMenuItemClickListener {
    public final MenuItem.OnMenuItemClickListener a;
    public final /* synthetic */ nc5 b;

    public mc5(nc5 nc5Var, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.b = nc5Var;
        this.a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.a.onMenuItemClick(this.b.i(menuItem));
    }
}
