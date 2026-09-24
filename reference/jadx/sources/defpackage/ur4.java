package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ur4 extends gm7 {
    public final int l;
    public final boolean m;

    public ur4(int i, boolean z) {
        super(null);
        this.l = i;
        this.m = z;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((tr4) fh6Var).r((vq4) m(i));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.label_adapter_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new tr4(this, view);
    }
}
