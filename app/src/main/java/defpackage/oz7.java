package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.gun0912.tedpermission.TedPermissionActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oz7 implements DialogInterface.OnClickListener {
    public final /* synthetic */ TedPermissionActivity a;

    public oz7(TedPermissionActivity tedPermissionActivity) {
        this.a = tedPermissionActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context = rz7.a;
        this.a.startActivityForResult(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.parse("package:" + rz7.a.getPackageName())), 2000);
    }
}
