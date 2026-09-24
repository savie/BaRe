package defpackage;

import android.view.View;
import java.util.Arrays;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uv1 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        tv1 tv1Var = (tv1) fh6Var;
        qv1 qv1Var = (qv1) m(i);
        qv1Var.getClass();
        jm1.D(tv1Var.w, qv1Var.getPhotoUri());
        tv1Var.x.setText(String.format("%s (%s)", Arrays.copyOf(new Object[]{qv1Var.getDisplayName(), Integer.valueOf(qv1Var.getMessageCount())}, 2)));
        tv1Var.y.setText(qv1Var.getSnippet());
        tv1Var.z.setText(Const.s(qv1Var.getLastSmsDate()));
        tv1Var.v.setOnClickListener(new h10(2, tv1Var, qv1Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.smscalls_backup_restore_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new tv1(view);
    }
}
