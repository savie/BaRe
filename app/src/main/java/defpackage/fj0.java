package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fj0 extends r35 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        this.d.get(i).getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.bre_section_optional_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new ej0(view);
    }
}
