package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ht extends r35 {
    public final float f;
    public final boolean g;
    public final boolean h;

    public ht(float f, boolean z, boolean z2) {
        this.f = f;
        this.g = z;
        this.h = z2;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((gt) fh6Var).r((LabelParams) this.d.get(i));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.app_label_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new gt(view, this.f, this.g, this.h, this);
    }
}
