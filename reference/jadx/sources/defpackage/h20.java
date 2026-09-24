package defpackage;

import android.content.Intent;
import android.widget.CheckBox;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h20 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h20(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj;
                CheckBox checkBox = (CheckBox) obj2;
                jiVar.getClass();
                checkBox.getClass();
                checkBox.toggle();
                ((l20) obj3).v(jiVar, checkBox.isChecked(), false);
                break;
            case 1:
                zk3 zk3Var = (zk3) obj;
                ((Integer) obj2).getClass();
                zk3Var.getClass();
                FoldersDashActivity foldersDashActivityI = ((kp3) obj3).i();
                FolderItem folderItem = zk3Var.a;
                folderItem.getClass();
                Intent intentPutExtra = new Intent(foldersDashActivityI, (Class<?>) FolderDetailActivity.class).putExtra("extra_folder_info", folderItem);
                intentPutExtra.getClass();
                foldersDashActivityI.startActivity(intentPutExtra);
                break;
            case 2:
                mt3 mt3Var = (mt3) obj3;
                Long l = (Long) obj;
                l.longValue();
                ((Integer) obj2).intValue();
                if (mt3Var != null) {
                    mt3Var.invoke(l);
                }
                break;
            default:
                vd5 vd5Var = (vd5) obj;
                ((Integer) obj2).getClass();
                int i2 = MessagesBackupsActivity.T;
                vd5Var.getClass();
                ((MessagesBackupsActivity) obj3).V(vd5Var);
                break;
        }
        return be8Var;
    }
}
