package defpackage;

import android.view.View;
import android.widget.ImageView;
import com.google.android.material.card.MaterialCardView;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ql1 extends r35 {
    public final boolean f;
    public sl1 g;
    public e7 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ql1(List list, boolean z) {
        super(list);
        list.getClass();
        this.f = z;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        pl1 pl1Var = (pl1) fh6Var;
        sl1 sl1Var = (sl1) this.d.get(i);
        sl1Var.getClass();
        MaterialCardView materialCardView = pl1Var.u;
        materialCardView.setCardBackgroundColor(sl1Var.a());
        ImageView imageView = pl1Var.v;
        ql1 ql1Var = pl1Var.w;
        sz8.d0(imageView, pe4.d(ql1Var.g, sl1Var));
        if (sz8.I(imageView)) {
            gv7 gv7Var = sl1.e;
            sl1 sl1Var2 = ql1Var.g;
            if (sl1Var2 == null) {
                sl1Var2 = (sl1) sl1.e.getValue();
            }
            int iA = sl1Var2.a();
            boolean z = ql1Var.f;
            int i2 = -16777216;
            double dC = xl1.c(-16777216, iA);
            double dC2 = xl1.c(-1, iA);
            if (!z ? dC2 > 2.0d : dC <= 3.0d) {
                i2 = -1;
            }
            imageView.setImageTintList(sz8.h0(i2));
        }
        materialCardView.setOnClickListener(new fr(4, ql1Var, sl1Var));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.label_color_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new pl1(this, view);
    }
}
