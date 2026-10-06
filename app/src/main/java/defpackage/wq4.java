package defpackage;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wq4 {
    public final u14 a;
    public final RecyclerView b;
    public final RecyclerView c;
    public final ql1 d;
    public final pb7 e;

    public wq4(boolean z, vq vqVar, u14 u14Var) {
        this.a = u14Var;
        Context context = ((MaterialCardView) vqVar.b).getContext();
        RecyclerView recyclerView = (RecyclerView) vqVar.c;
        this.b = recyclerView;
        RecyclerView recyclerView2 = (RecyclerView) vqVar.d;
        this.c = recyclerView2;
        gv7 gv7Var = sl1.e;
        ql1 ql1Var = new ql1((List) sl1.f.getValue(), z);
        this.d = ql1Var;
        pb7 pb7Var = new pb7(z);
        this.e = pb7Var;
        recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
        recyclerView.setItemViewCacheSize(10);
        ql1Var.h = new e7(this, 18);
        recyclerView.setAdapter(ql1Var);
        recyclerView2.setLayoutManager(new LinearLayoutManager(context, 0, false));
        recyclerView2.setItemViewCacheSize(10);
        pb7Var.h = new gj(this, 23);
        recyclerView2.setAdapter(pb7Var);
    }
}
