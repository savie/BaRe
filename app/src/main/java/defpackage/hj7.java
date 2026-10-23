package defpackage;

import android.view.View;
import android.widget.ImageView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hj7 extends gm7 {
    public final il0 l;
    public final int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj7(il0 il0Var, fm7 fm7Var) {
        super(fm7Var);
        il0Var.getClass();
        this.l = il0Var;
        this.m = 1;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        if (((fj7) m(i)).d) {
            return this.m;
        }
        return 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        gj7 gj7Var = (gj7) fh6Var;
        fj7 fj7Var = (fj7) m(i);
        fj7Var.getClass();
        gj7Var.w.setImageResource(fj7Var.c);
        ImageView imageView = gj7Var.x;
        sz8.d0(imageView, fj7Var.d);
        if (sz8.I(imageView)) {
            imageView.setImageResource(fj7Var.e ? R.drawable.ic_sort_up : R.drawable.ic_sort_down);
        }
        gj7Var.v.setText(fj7Var.b);
        gj7Var.u.setOnClickListener(new fj2(4, gj7Var.y, fj7Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return i == this.m ? R.layout.filter_dialog_sort_item_selected : R.layout.filter_dialog_sort_item_normal;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new gj7(this, view);
    }
}
