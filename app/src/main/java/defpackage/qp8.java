package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qp8 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ qp8(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                fm7 fm7Var = (fm7) obj;
                mo8 mo8Var = ((WallsManageActivity) il0Var).R;
                if (mo8Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                fm7Var.getClass();
                mo8Var.w(fm7Var, false);
                return be8Var;
            default:
                final TeraBoxSignInActivity teraBoxSignInActivity = (TeraBoxSignInActivity) il0Var;
                int i2 = TeraBoxSignInActivity.N;
                s35 s35Var = new s35(teraBoxSignInActivity, R.style.M3AlertDialogTheme, new hv1(teraBoxSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar = (ra) s35Var.b;
                raVar.d = teraBoxSignInActivity.getString(R.string.auth_failed);
                raVar.f = (String) obj;
                s35Var.r(R.string.ok, null);
                raVar.n = new DialogInterface.OnDismissListener() { // from class: j08
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i3 = TeraBoxSignInActivity.N;
                        TeraBoxSignInActivity teraBoxSignInActivity2 = teraBoxSignInActivity;
                        teraBoxSignInActivity2.setResult(0);
                        teraBoxSignInActivity2.finish();
                    }
                };
                s35Var.m();
                return be8Var;
        }
    }
}
