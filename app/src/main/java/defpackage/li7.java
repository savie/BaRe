package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MAppBarLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class li7 implements jk8 {
    public final CoordinatorLayout a;
    public final ExtendedFloatingActionButton b;
    public final zx2 c;
    public final RecyclerView d;
    public final SwipeRefreshLayout e;
    public final tf2 f;

    public li7(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, zx2 zx2Var, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, tf2 tf2Var) {
        this.a = coordinatorLayout;
        this.b = extendedFloatingActionButton;
        this.c = zx2Var;
        this.d = recyclerView;
        this.e = swipeRefreshLayout;
        this.f = tf2Var;
    }

    public static li7 a(LayoutInflater layoutInflater) {
        View viewInflate = layoutInflater.inflate(R.layout.smscalls_backup_restore_activity, (ViewGroup) null, false);
        int i = R.id.appbar_layout;
        if (((MAppBarLayout) ms8.u(viewInflate, R.id.appbar_layout)) != null) {
            i = R.id.btn_action;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_action);
            if (extendedFloatingActionButton != null) {
                i = R.id.error_layout;
                View viewU = ms8.u(viewInflate, R.id.error_layout);
                if (viewU != null) {
                    zx2 zx2VarA = zx2.a(viewU);
                    i = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                    if (recyclerView != null) {
                        i = R.id.swipe_layout;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ms8.u(viewInflate, R.id.swipe_layout);
                        if (swipeRefreshLayout != null) {
                            i = R.id.toolbar_mini;
                            View viewU2 = ms8.u(viewInflate, R.id.toolbar_mini);
                            if (viewU2 != null) {
                                return new li7((CoordinatorLayout) viewInflate, extendedFloatingActionButton, zx2VarA, recyclerView, swipeRefreshLayout, tf2.a(viewU2));
                            }
                        }
                    }
                }
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
