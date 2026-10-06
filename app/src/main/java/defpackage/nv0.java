package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nv0 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ nv0(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                BoxSignInActivity boxSignInActivity = (BoxSignInActivity) il0Var;
                int i2 = BoxSignInActivity.L;
                boxSignInActivity.setResult(0);
                boxSignInActivity.finish();
                break;
            case 1:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) il0Var;
                int i3 = GmsSignInActivity.N;
                gmsSignInActivity.setResult(0);
                gmsSignInActivity.finish();
                break;
            default:
                int i4 = OneDriveSignInActivity.L;
                ((OneDriveSignInActivity) il0Var).V().j(false, null);
                break;
        }
    }
}
