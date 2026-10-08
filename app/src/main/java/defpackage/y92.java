package defpackage;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y92 implements jk8 {
    public final NestedScrollView a;
    public final xc6 b;
    public final xc6 c;
    public final xc6 d;
    public final xc6 e;
    public final pp0 f;
    public final fu k;
    public final uf3 n;
    public final RecyclerView p;

    public y92(NestedScrollView nestedScrollView, xc6 xc6Var, xc6 xc6Var2, xc6 xc6Var3, xc6 xc6Var4, pp0 pp0Var, fu fuVar, uf3 uf3Var, RecyclerView recyclerView) {
        this.a = nestedScrollView;
        this.b = xc6Var;
        this.c = xc6Var2;
        this.d = xc6Var3;
        this.e = xc6Var4;
        this.f = pp0Var;
        this.k = fuVar;
        this.n = uf3Var;
        this.p = recyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
