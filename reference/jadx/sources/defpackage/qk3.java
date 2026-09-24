package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qk3 extends u35 {
    public static final /* synthetic */ int T = 0;
    public final FoldersDashActivity Q;
    public final gv7 R;
    public final gv7 S;

    /* JADX WARN: Illegal instructions before constructor call */
    public qk3(FoldersDashActivity foldersDashActivity) {
        View viewInflate = View.inflate(foldersDashActivity, R.layout.folder_batch_actions_dialog, null);
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_actions);
        if (quickRecyclerView == null) {
            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.rv_actions)));
            throw null;
        }
        super(foldersDashActivity, new rk3((LinearLayout) viewInflate, quickRecyclerView), 12);
        this.Q = foldersDashActivity;
        int i = 23;
        this.R = new gv7(new bh(this, i));
        this.S = new gv7(new d76(this, i));
    }

    public final void j() {
        ((rk3) this.K).a.postDelayed(new yc(this, 3), ((long) this.Q.getResources().getInteger(R.integer.activity_transition_time)) + 500);
    }

    public final boolean k() {
        FoldersDashActivity foldersDashActivity = this.Q;
        foldersDashActivity.getClass();
        return ((to3) ((kx2) to3.getEntries()).get(foldersDashActivity.V().d.getCurrentItem())).isCloudSection();
    }
}
