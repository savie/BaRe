package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.gun0912.tedpermission.TedPermissionActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qz7 implements DialogInterface.OnClickListener {
    public final /* synthetic */ TedPermissionActivity a;

    public qz7(TedPermissionActivity tedPermissionActivity) {
        this.a = tedPermissionActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        TedPermissionActivity tedPermissionActivity = this.a;
        tedPermissionActivity.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", tedPermissionActivity.f, null)), 31);
    }
}
