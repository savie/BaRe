package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xc3 extends r35 {
    public final sa1 f;
    public final ej g;
    public final fj h;
    public final int i;
    public final int j;
    public final int k;
    public pf l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xc3(sa1 sa1Var, ArrayList arrayList, ej ejVar, fj fjVar) {
        super(arrayList);
        sa1Var.getClass();
        this.f = sa1Var;
        this.g = ejVar;
        this.h = fjVar;
        this.i = 1;
        this.j = 2;
        this.k = 3;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        uc3 uc3Var = (uc3) this.d.get(i);
        if (uc3Var.d) {
            return this.k;
        }
        if (uc3Var.b.isDefault() && uc3Var.c) {
            return 0;
        }
        return uc3Var.c ? this.j : this.i;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        wc3 wc3Var = (wc3) fh6Var;
        uc3 uc3Var = (uc3) this.d.get(i);
        uc3Var.getClass();
        String str = uc3Var.e;
        int i2 = wc3Var.f;
        xc3 xc3Var = wc3Var.u;
        int i3 = xc3Var.k;
        View view = wc3Var.a;
        if (i2 != i3) {
            view.getClass();
            Chip chip = (Chip) view;
            chip.setText(str);
            chip.setOnClickListener(new vc3(xc3Var, uc3Var, i, 0));
            return;
        }
        view.getClass();
        TextView textView = (TextView) view;
        textView.setText(str);
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        textView.setOnClickListener(new i10(3, uc3Var, xc3Var));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        if (i == 0) {
            return R.layout.filter_dialog_chip_default;
        }
        if (i == this.i) {
            return R.layout.filter_dialog_chip_normal;
        }
        return i == this.k ? R.layout.filter_dialog_chip_linked : R.layout.filter_dialog_chip_selected;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new wc3(this, view);
    }

    public final void n(uc3 uc3Var, int i, boolean z) {
        nd3 nd3Var = uc3Var.b;
        if (z && nd3Var == ce3.NotSynced) {
            sa1 sa1Var = this.f;
            if (Const.d(sa1Var)) {
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    n(uc3Var, i, false);
                    return;
                } else {
                    sa1.R(sa1Var, null, null, 3);
                    return;
                }
            }
            return;
        }
        if (nd3Var == wd3.Selected) {
            this.g.invoke();
            return;
        }
        if (uc3Var.c) {
            return;
        }
        uc3Var.c = true;
        f(i);
        pf pfVar = this.l;
        if (pfVar != null) {
            pfVar.d(uc3Var);
        }
        int size = this.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            uc3 uc3Var2 = (uc3) this.d.get(i2);
            if (uc3Var2.c && !uc3Var2.equals(uc3Var)) {
                uc3Var2.c = false;
                f(i);
            }
        }
    }
}
