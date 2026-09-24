package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z37 extends fh6 {
    public final gm1 u;
    public final ImageView v;
    public final TextView w;
    public final TextView x;
    public final QuickRecyclerView y;
    public final /* synthetic */ ee5 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z37(ee5 ee5Var, View view) {
        super(view);
        this.z = ee5Var;
        View viewU = ms8.u(view, R.id.common_dropdown_item);
        if (viewU == null) {
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.common_dropdown_item)));
            throw null;
        }
        gm1 gm1VarA = gm1.a(viewU);
        this.u = gm1VarA;
        this.v = (ImageView) gm1VarA.c;
        this.w = (TextView) gm1VarA.e;
        this.x = (TextView) gm1VarA.f;
        this.y = (QuickRecyclerView) gm1VarA.d;
    }
}
