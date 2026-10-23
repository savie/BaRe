package defpackage;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.views.PreCachingGridLayoutManager;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hj0 extends fh6 {
    public final TextView u;
    public final ImageView v;
    public final ImageView w;
    public final oi0 x;
    public final fj0 y;
    public final /* synthetic */ ij0 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj0(ij0 ij0Var, wv0 wv0Var) {
        super((ConstraintLayout) wv0Var.d);
        this.z = ij0Var;
        this.u = (TextView) wv0Var.c;
        this.v = (ImageView) wv0Var.e;
        this.w = (ImageView) wv0Var.b;
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) wv0Var.f;
        oi0 oi0Var = new oi0(new ArrayList());
        this.x = oi0Var;
        this.y = new fj0(new ArrayList());
        Context context = quickRecyclerView.getContext();
        context.getClass();
        quickRecyclerView.setLayoutManager(new PreCachingGridLayoutManager(context, 2));
        quickRecyclerView.setItemAnimator(null);
        quickRecyclerView.setAdapter(oi0Var);
    }
}
