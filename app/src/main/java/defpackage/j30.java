package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j30 extends u35 {
    public final il0 Q;
    public final gv7 R;
    public final gv7 S;

    /* JADX WARN: Illegal instructions before constructor call */
    public j30(il0 il0Var) {
        View viewInflate = View.inflate(il0Var, R.layout.apps_config_actions_dialog, null);
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_actions);
        if (quickRecyclerView == null) {
            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.rv_actions)));
            throw null;
        }
        super(il0Var, new s20((LinearLayout) viewInflate, quickRecyclerView), 12);
        this.Q = il0Var;
        this.R = new gv7(new d76(this, 7));
        this.S = new gv7(new b7(5));
    }
}
