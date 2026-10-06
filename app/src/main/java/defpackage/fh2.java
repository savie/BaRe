package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh2 extends ol1 {
    public final io1 e;
    public final boolean f;
    public final a20 k;
    public final gh2 n;
    public final kb2 p;
    public final kb2 q;
    public final MaterialButton r;

    public fh2(io1 io1Var, boolean z, a20 a20Var) {
        super(11, false);
        this.e = io1Var;
        this.f = z;
        this.k = a20Var;
        View viewInflate = View.inflate(io1Var, R.layout.delete_app_backups_dialog, null);
        int i = R.id.btn_delete;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_delete);
        if (materialButton != null) {
            i = R.id.toggle_keep_last_backup;
            View viewU = ms8.u(viewInflate, R.id.toggle_keep_last_backup);
            if (viewU != null) {
                y8 y8VarB = y8.b(viewU);
                View viewU2 = ms8.u(viewInflate, R.id.toggle_keep_protected_backups);
                if (viewU2 != null) {
                    y8 y8VarB2 = y8.b(viewU2);
                    this.n = new gh2((LinearLayout) viewInflate, materialButton, y8VarB, y8VarB2);
                    this.p = new kb2(y8VarB2);
                    this.q = new kb2(y8VarB);
                    this.r = materialButton;
                    return;
                }
                i = R.id.toggle_keep_protected_backups;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        kb2 kb2Var = this.p;
        ((ConstraintLayout) kb2Var.a).setVisibility(this.f ? 0 : 8);
        if (((ConstraintLayout) kb2Var.a).getVisibility() == 0) {
            kb2Var.a(R.drawable.ic_protection_on, R.string.keep_protected_backups, true, new eh2(0, this, kb2Var));
        }
        kb2 kb2Var2 = this.q;
        ((ConstraintLayout) kb2Var2.a).setVisibility(0);
        if (((ConstraintLayout) kb2Var2.a).getVisibility() == 0) {
            kb2Var2.a(R.drawable.ic_clock, R.string.keep_latest_backup, false, new dq(2));
        }
        this.r.setOnClickListener(new nf(this, 5));
        return this.n;
    }
}
