package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import com.gun0912.tedpermission.TedPermissionActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lz7 implements DialogInterface.OnClickListener {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ TedPermissionActivity b;

    public lz7(TedPermissionActivity tedPermissionActivity, Intent intent) {
        this.b = tedPermissionActivity;
        this.a = intent;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.startActivityForResult(this.a, 30);
    }
}
