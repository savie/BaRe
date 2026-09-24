package defpackage;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p7 implements jk8 {
    public final NestedScrollView a;
    public final j75 b;
    public final RecyclerView c;

    public p7(NestedScrollView nestedScrollView, j75 j75Var, RecyclerView recyclerView) {
        this.a = nestedScrollView;
        this.b = j75Var;
        this.c = recyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
