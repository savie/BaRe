package defpackage;

import android.content.DialogInterface;
import com.gun0912.tedpermission.TedPermissionActivity;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pz7 implements DialogInterface.OnClickListener {
    public final /* synthetic */ TedPermissionActivity a;

    public pz7(TedPermissionActivity tedPermissionActivity) {
        this.a = tedPermissionActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ArrayDeque arrayDeque = TedPermissionActivity.x;
        this.a.n(false);
    }
}
