package defpackage;

import android.os.Parcelable;
import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dd6 extends gm7 {
    public final sa1 l;
    public final boolean m;
    public kd6 n;
    public bt3 o;

    public dd6(sa1 sa1Var, boolean z) {
        super(null);
        this.l = sa1Var;
        this.m = z;
        this.k = true;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        Parcelable.Creator<zc6> creator = zc6.CREATOR;
        return pe4.d(((zc6) m(i)).a, "ID_MORE_QUICK_ACTIONS") ? 1 : 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((cd6) fh6Var).s((zc6) m(i), i);
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return i == 1 ? R.layout.quick_action_more_item : R.layout.quick_action_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return i == 1 ? new bd6(this, view) : new ad6(this, view);
    }
}
