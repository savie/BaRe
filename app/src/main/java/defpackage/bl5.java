package defpackage;

import android.content.Context;
import android.view.SubMenu;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bl5 extends fc5 {
    public final Class S;
    public final int T;
    public final boolean U;

    public bl5(Context context, Class cls, int i, boolean z) {
        super(context);
        this.S = cls;
        this.T = i;
        this.U = z;
    }

    @Override // defpackage.fc5
    public final ic5 a(int i, int i2, int i3, CharSequence charSequence) {
        int size = this.f.size() + 1;
        int i4 = this.T;
        if (size > i4) {
            String simpleName = this.S.getSimpleName();
            c6.f(dj7.n(dj7.v("Maximum number of items supported by ", simpleName, " is ", i4, ". Limit can be checked with "), simpleName, "#getMaxItemCount()"));
            return null;
        }
        w();
        ic5 ic5VarA = super.a(i, i2, i3, charSequence);
        v();
        return ic5VarA;
    }

    @Override // defpackage.fc5, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        if (!this.U) {
            g84.j(this.S.getSimpleName().concat(" does not support submenus"));
            return null;
        }
        ic5 ic5VarA = a(i, i2, i3, charSequence);
        il5 il5Var = new il5(this.a, this, ic5VarA);
        ic5VarA.G = il5Var;
        il5Var.setHeaderTitle(ic5VarA.e);
        return il5Var;
    }
}
