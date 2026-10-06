package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ni7 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final ix0 c;
    public final QuickRecyclerView d;

    public ni7(CoordinatorLayout coordinatorLayout, w00 w00Var, ix0 ix0Var, QuickRecyclerView quickRecyclerView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = ix0Var;
        this.d = quickRecyclerView;
    }

    public static ni7 a(LayoutInflater layoutInflater) {
        View viewInflate = layoutInflater.inflate(R.layout.smscalls_backups_activity, (ViewGroup) null, false);
        int i = R.id.appbar_layout;
        View viewU = ms8.u(viewInflate, R.id.appbar_layout);
        if (viewU != null) {
            w00 w00VarB = w00.b(viewU);
            View viewU2 = ms8.u(viewInflate, R.id.progress_bar);
            if (viewU2 != null) {
                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) viewU2;
                ix0 ix0Var = new ix0(6, circularProgressIndicator, circularProgressIndicator);
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                if (quickRecyclerView != null) {
                    return new ni7((CoordinatorLayout) viewInflate, w00VarB, ix0Var, quickRecyclerView);
                }
                i = R.id.recycler_view;
            } else {
                i = R.id.progress_bar;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
