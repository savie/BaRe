package defpackage;

import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pb7 extends r35 {
    public final boolean f;
    public String g;
    public gj h;

    public pb7(boolean z) {
        this.f = z;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ob7 ob7Var = (ob7) fh6Var;
        String str = (String) this.d.get(i);
        str.getClass();
        int color = Color.parseColor(str);
        MaterialCardView materialCardView = ob7Var.u;
        materialCardView.setCardBackgroundColor(color);
        ImageView imageView = ob7Var.v;
        pb7 pb7Var = ob7Var.w;
        sz8.d0(imageView, pe4.d(pb7Var.g, str));
        if (sz8.I(imageView)) {
            gv7 gv7Var = sl1.e;
            boolean z = pb7Var.f;
            int i2 = -16777216;
            double dC = xl1.c(-16777216, color);
            double dC2 = xl1.c(-1, color);
            if (!z ? dC2 > 2.0d : dC <= 3.0d) {
                i2 = -1;
            }
            imageView.setImageTintList(sz8.h0(i2));
        }
        materialCardView.setOnClickListener(new gr(4, pb7Var, str));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.label_color_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new ob7(this, view);
    }
}
