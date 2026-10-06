package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y30 extends nd6<z30> {
    public final l90 d;

    public y30() {
        os4 os4VarX = jd4.x(ys4.c, new u30(new t30(this, 0), 0));
        this.d = new l90(ph6.a(a40.class), new v30(os4VarX, 0), new x30(this, os4VarX, 0), new w30(os4VarX, 0));
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.apps_quick_actions_fragment, viewGroup, false);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
        int i = R.id.dash_card_quick_actions_apps_backups;
        View viewU = ms8.u(viewInflate, R.id.dash_card_quick_actions_apps_backups);
        if (viewU != null) {
            xc6 xc6VarA = xc6.a(viewU);
            i = R.id.dash_card_quick_actions_apps_others;
            View viewU2 = ms8.u(viewInflate, R.id.dash_card_quick_actions_apps_others);
            if (viewU2 != null) {
                xc6 xc6VarA2 = xc6.a(viewU2);
                i = R.id.dash_card_quick_actions_apps_restore;
                View viewU3 = ms8.u(viewInflate, R.id.dash_card_quick_actions_apps_restore);
                if (viewU3 != null) {
                    z30 z30Var = new z30(nestedScrollView, nestedScrollView, xc6VarA, xc6VarA2, xc6.a(viewU3));
                    this.b = z30Var;
                    View root = z30Var.getRoot();
                    root.getClass();
                    return root;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.nd6, androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        jk8 jk8Var = this.b;
        jk8Var.getClass();
        NestedScrollView nestedScrollView = ((z30) jk8Var).b;
        nestedScrollView.getClass();
        sz8.b(nestedScrollView, 7);
        l90 l90Var = this.d;
        ((a40) l90Var.getValue()).e.e(getViewLifecycleOwner(), new s30(0, new lm(this, 5)));
        ((a40) l90Var.getValue()).f.e(getViewLifecycleOwner(), new s30(0, new w20(this, 1)));
        ((a40) l90Var.getValue()).g.e(getViewLifecycleOwner(), new s30(0, new c7(this, 3)));
    }
}
