package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gd6 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        final fd6 fd6Var = (fd6) fh6Var;
        final hd6 hd6Var = (hd6) m(i);
        hd6Var.getClass();
        kc kcVar = fd6Var.u;
        TextView textView = (TextView) kcVar.e;
        zc6 zc6Var = hd6Var.a;
        textView.setText(zc6Var.c);
        ((TextView) kcVar.d).setText(zc6Var.d);
        MCheckBox mCheckBox = (MCheckBox) kcVar.c;
        final gd6 gd6Var = fd6Var.v;
        boolean zQ = gd6Var.q(hd6Var);
        if (mCheckBox.isChecked() != zQ) {
            mCheckBox.setChecked(zQ);
        }
        ((ConstraintLayout) kcVar.b).setOnClickListener(new View.OnClickListener() { // from class: ed6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = this.a.j;
                if (qt3Var != null) {
                    qt3Var.invoke(hd6Var, Integer.valueOf(fd6Var.b()));
                }
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.quick_actions_dialog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new fd6(this, view);
    }
}
