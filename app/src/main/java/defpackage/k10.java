package defpackage;

import android.view.View;
import com.google.android.material.chip.Chip;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k10 extends gm7 {
    public final zs l;
    public final lm m;

    public k10(zs zsVar, lm lmVar) {
        super(null);
        this.l = zsVar;
        this.m = lmVar;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        j10 j10Var = (j10) fh6Var;
        l10 l10Var = (l10) m(i);
        l10Var.getClass();
        View view = j10Var.a;
        view.getClass();
        Chip chip = (Chip) view;
        chip.setText(l10Var.a);
        k10 k10Var = j10Var.u;
        int i2 = 0;
        chip.setOnClickListener(new h10(i2, k10Var, l10Var));
        chip.setOnCloseIconClickListener(new i10(i2, k10Var, l10Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.filter_chip_closeable;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new j10(this, view);
    }
}
