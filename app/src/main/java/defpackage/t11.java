package defpackage;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t11 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ jh6 b;

    public /* synthetic */ t11(jh6 jh6Var, int i) {
        this.a = i;
        this.b = jh6Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        jh6 jh6Var = this.b;
        switch (i2) {
            case 0:
                jh6Var.a = i;
                break;
            default:
                jh6Var.a = i;
                break;
        }
    }
}
