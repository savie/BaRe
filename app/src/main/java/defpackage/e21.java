package defpackage;

import android.content.DialogInterface;
import com.microsoft.identity.common.internal.providers.oauth2.CameraPermissionRequestHandler;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e21 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e21(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                CameraPermissionRequestHandler.a((CameraPermissionRequestHandler) obj);
                break;
            default:
                int i3 = MessagesBackupRestoreActivity.c0;
                ((wg5.c) ((MessagesBackupRestoreActivity) obj).U().h.getValue()).cancel();
                break;
        }
    }
}
