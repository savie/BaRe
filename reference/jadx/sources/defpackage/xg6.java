package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xg6 {
    public final /* synthetic */ RecyclerView a;

    public xg6(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public final void a() {
        RecyclerView recyclerView = this.a;
        if (!recyclerView.L || !recyclerView.K) {
            recyclerView.S = true;
            recyclerView.requestLayout();
        } else {
            hu0 hu0Var = recyclerView.p;
            WeakHashMap weakHashMap = dl8.a;
            recyclerView.postOnAnimation(hu0Var);
        }
    }
}
