package defpackage;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lj0 extends u35 {
    public static final gv7 T = new gv7(new zk(2));
    public final QuickRecyclerView Q;
    public final gv7 R;
    public final MaterialButton S;

    /* JADX WARN: Illegal instructions before constructor call */
    public lj0(il0 il0Var) {
        View viewInflate = View.inflate(il0Var, R.layout.bre_expansion, null);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
        int i = R.id.btn_action;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
        if (materialButton != null) {
            i = R.id.rv_section;
            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_section);
            if (quickRecyclerView != null) {
                super(il0Var, new vv0(nestedScrollView, materialButton, quickRecyclerView), 8);
                this.Q = ((vv0) this.K).c;
                this.R = new gv7(new jx(3));
                this.S = ((vv0) this.K).b;
                return;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public final void j(pj0 pj0Var, bt3 bt3Var) {
        QuickRecyclerView quickRecyclerView = this.Q;
        boolean z = true;
        quickRecyclerView.setLinearLayoutManager(1);
        quickRecyclerView.setItemAnimator(null);
        quickRecyclerView.setNestedScrollingEnabled(false);
        gv7 gv7Var = this.R;
        quickRecyclerView.setAdapter((ij0) gv7Var.getValue());
        r35.m((ij0) gv7Var.getValue(), pj0Var.a());
        ij0 ij0Var = (ij0) gv7Var.getValue();
        kj0 kj0Var = new kj0(this, pj0Var);
        ij0Var.getClass();
        ij0Var.f = kj0Var;
        String str = pj0Var.a;
        MaterialButton materialButton = this.S;
        materialButton.setText(str);
        materialButton.setIconResource(pj0Var.b.intValue());
        if (!pj0Var.d && !pj0Var.b()) {
            z = false;
        }
        materialButton.setEnabled(z);
        materialButton.setAlpha(z ? 1.0f : 0.5f);
        materialButton.setOnClickListener(new i10(pj0Var, this, bt3Var));
        show();
    }
}
