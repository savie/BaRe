package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.u;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kp3 extends rl0<lp3> {
    public final gv7 c;
    public to3 d;
    public final cp3 e;

    public kp3() {
        super(0);
        this.c = new gv7(new d76(this, 25));
        cp3 cp3Var = new cp3(3);
        cp3Var.w(new fm7(cp3Var.e.a, (Set) null, false, (String) null, 30), false);
        cp3Var.j = new h20(this, 1);
        this.e = cp3Var;
    }

    public final FoldersDashActivity i() {
        u activity = getActivity();
        activity.getClass();
        return (FoldersDashActivity) activity;
    }

    public final zx2 j() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((lp3) jk8Var).c;
    }

    public final RecyclerView k() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((lp3) jk8Var).d;
    }

    public final SwipeRefreshLayout l() {
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        return ((lp3) jk8Var).e;
    }

    public final np3 m() {
        return (np3) this.c.getValue();
    }

    @Override // androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        to3 to3Var;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (to3Var = (to3) arguments.getSerializable("KEY_SECTION")) == null) {
            to3Var = to3.LOCAL;
        }
        this.d = to3Var;
        if (to3Var == null) {
            pe4.F("section");
            throw null;
        }
        this.a = "FoldersDashFragment." + to3Var;
        this.e.n = new jp3(2, this, kp3.class, "onItemMenuClick", "onItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/folders/data/FolderDashItem;)V", 0, 0);
        np3 np3VarM = m();
        to3 to3Var2 = this.d;
        if (to3Var2 == null) {
            pe4.F("section");
            throw null;
        }
        np3VarM.getClass();
        zn4 zn4Var = zn4.a;
        zn4.c(new qf(14, np3VarM, to3Var2));
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.folders_dash_fragment, viewGroup, false);
        int i = R.id.btn_action;
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
                        lp3 lp3Var = new lp3((CoordinatorLayout) viewInflate, extendedFloatingActionButton, zx2VarA, recyclerView, swipeRefreshLayout);
                        this.b = lp3Var;
                        View root = lp3Var.getRoot();
                        root.getClass();
                        return root;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        Const.H(l(), i().v());
        l().setOnRefreshListener(new bb(this, 4));
        RecyclerView recyclerViewK = k();
        sz8.b(recyclerViewK, 7);
        Context context = recyclerViewK.getContext();
        context.getClass();
        recyclerViewK.setLayoutManager(new PreCachingLinearLayoutManager(context));
        recyclerViewK.setAdapter(this.e);
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        ExtendedFloatingActionButton extendedFloatingActionButton = ((lp3) jk8Var).b;
        sz8.a(extendedFloatingActionButton);
        sz8.f0(extendedFloatingActionButton, k(), true);
        extendedFloatingActionButton.setOnClickListener(new i00(this, 7));
        int i = 2;
        m().g.e(getViewLifecycleOwner(), new y20(i, new x11(1, this, kp3.class, "onViewStatusUpdate", "onViewStatusUpdate(Lorg/swiftapps/swiftbackup/common/repos/RepositoryResult$Status;)V", 0, 2)));
        m().h.e(getViewLifecycleOwner(), new y20(i, new u10(this, 11)));
    }
}
