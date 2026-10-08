package defpackage;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hy4 extends DataSetObserver {
    public final /* synthetic */ ky4 a;

    public hy4(ky4 ky4Var) {
        this.a = ky4Var;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        ky4 ky4Var = this.a;
        if (ky4Var.R.isShowing()) {
            ky4Var.b();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.dismiss();
    }
}
