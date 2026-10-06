package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b52 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b52(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                int i3 = CsActivity.P0;
                ((CsActivity) obj2).t0(((h62) obj).b, true);
                break;
            case 1:
                FolderEditActivity folderEditActivity = (FolderEditActivity) obj;
                int i4 = FolderEditActivity.h0;
                Intent intentPutExtra = new Intent().putExtra("extra_folder_item", (FolderItem) obj2).putExtra("saveLocalItemFromCloud", false);
                intentPutExtra.getClass();
                folderEditActivity.setResult(-1, intentPutExtra);
                folderEditActivity.finish();
                break;
            case 2:
                ((kp3) obj2).i().V().j(((zk3) obj).a, to3.CLOUD);
                break;
            default:
                ((lh6) obj2).a = ((kx2) obj).get(i);
                break;
        }
    }
}
