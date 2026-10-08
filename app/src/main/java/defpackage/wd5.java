package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wd5 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ MessagesBackupRestoreActivity b;

    public /* synthetic */ wd5(MessagesBackupRestoreActivity messagesBackupRestoreActivity, int i) {
        this.a = i;
        this.b = messagesBackupRestoreActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        MessagesBackupRestoreActivity messagesBackupRestoreActivity = this.b;
        switch (i2) {
            case 0:
                int i3 = MessagesBackupRestoreActivity.c0;
                messagesBackupRestoreActivity.startActivityForResult(new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"), 12458);
                dialogInterface.dismiss();
                break;
            default:
                int i4 = MessagesBackupRestoreActivity.c0;
                if (!ud5.j()) {
                    messagesBackupRestoreActivity.finish();
                } else {
                    messagesBackupRestoreActivity.startActivityForResult(new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"), 54789);
                }
                break;
        }
    }
}
