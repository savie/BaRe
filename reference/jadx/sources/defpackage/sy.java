package defpackage;

import android.content.DialogInterface;
import android.content.pm.PackageManager;
import java.util.Set;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sy implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ sy(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                ((jh6) obj).a = i;
                break;
            case 1:
                int i3 = BlacklistActivity.P;
                zn4 zn4Var = zn4.a;
                zn4.b(null, new vr0((Set) obj, null));
                break;
            case 2:
                ((bt3) obj).invoke();
                break;
            case 3:
                il0 il0Var = (il0) obj;
                il0Var.getClass();
                try {
                    il0Var.getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0);
                    ai8.j(il0Var, "moe.shizuku.privileged.api");
                } catch (PackageManager.NameNotFoundException unused) {
                    ai8.l(il0Var, "moe.shizuku.privileged.api");
                    return;
                }
                break;
            default:
                MultipleBackupsActivity multipleBackupsActivity = (MultipleBackupsActivity) obj;
                int i4 = MultipleBackupsActivity.T;
                multipleBackupsActivity.A(false);
                multipleBackupsActivity.z();
                break;
        }
    }
}
