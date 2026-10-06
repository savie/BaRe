package defpackage;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class my4 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ny4 a;

    public my4(ny4 ny4Var) {
        this.a = ny4Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ny4 ny4Var = this.a;
        ny4Var.Q = i;
        ny4Var.P = -1;
        dialogInterface.dismiss();
    }
}
