package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t10 extends u35 {
    public final AppListActivity Q;
    public final gv7 R;
    public final gv7 S;

    /* JADX WARN: Illegal instructions before constructor call */
    public t10(AppListActivity appListActivity) {
        View viewInflate = View.inflate(appListActivity, R.layout.app_batch_actions_dialog, null);
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_actions);
        if (quickRecyclerView == null) {
            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.rv_actions)));
            throw null;
        }
        super(appListActivity, new km((LinearLayout) viewInflate, quickRecyclerView), 12);
        this.Q = appListActivity;
        this.R = new gv7(new d76(this, 5));
        this.S = new gv7(new kf(this, 8));
    }

    public final void j() {
        ((km) this.K).a.postDelayed(new o10(this, 0), ((long) this.Q.getResources().getInteger(R.integer.activity_transition_time)) + 500);
    }
}
