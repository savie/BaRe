package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qi implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qi(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                pi piVar = (pi) obj;
                hj hjVar = ((wi) obj2).g;
                if (hjVar != null) {
                    hjVar.invoke(piVar);
                }
                break;
            case 1:
                FolderDetailActivity folderDetailActivity = ((ml3) obj2).a;
                view.getClass();
                FolderDetailActivity.Z(folderDetailActivity, view, ((ul3) obj).a, null, 4);
                break;
            case 2:
                int i2 = MessagesDashActivity.T;
                int i3 = MessagesBackupsActivity.T;
                pe4.D((MessagesDashActivity) obj2, (ArrayList) obj, true);
                break;
            case 3:
                ((View.OnClickListener) obj).onClick(view);
                ((qi7) obj2).a(1);
                break;
            default:
                iu8 iu8Var = ((bs8) obj2).b;
                List list = ((fu8) ((gu8) obj)).a;
                iu8Var.getClass();
                zn4.c(new rm(16, list, iu8Var));
                break;
        }
    }
}
