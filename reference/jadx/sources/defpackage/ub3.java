package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ub3 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ ub3(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                ((FilenSignInActivity) il0Var).M = null;
                break;
            default:
                fq5 fq5Var = (fq5) il0Var;
                fq5Var.setResult(0);
                fq5Var.finish();
                break;
        }
    }
}
