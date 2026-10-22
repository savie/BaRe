package defpackage;

import android.content.DialogInterface;
import com.gun0912.tedpermission.TedPermissionActivity;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz7 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ArrayList a;
    public final /* synthetic */ TedPermissionActivity b;

    public mz7(TedPermissionActivity tedPermissionActivity, ArrayList arrayList) {
        this.b = tedPermissionActivity;
        this.a = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ArrayList arrayList = this.a;
        zh8.H(this.b, (String[]) arrayList.toArray(new String[arrayList.size()]), 10);
    }
}
