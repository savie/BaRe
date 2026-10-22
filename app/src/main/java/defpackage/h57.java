package defpackage;

import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h57 extends g57 {
    public final /* synthetic */ j57 G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h57(j57 j57Var, z27 z27Var) {
        super(j57Var, z27Var);
        this.G = j57Var;
    }

    @Override // defpackage.g57
    public final void r(b bVar) {
        bVar.getClass();
        s(bVar);
        boolean z = bVar.d;
        j57 j57Var = this.G;
        MaterialButton materialButton = this.z;
        if (!z) {
            ScheduleItem scheduleItem = bVar.q;
            boolean zIsPermissionsGranted = true;
            if (!(scheduleItem instanceof ScheduleItem.AppsQuickActions) && !(scheduleItem instanceof ScheduleItem.AppsLabels) && !(scheduleItem instanceof ScheduleItem.AppConfig)) {
                if (scheduleItem instanceof ScheduleItem.Messages) {
                    zIsPermissionsGranted = ((ScheduleItem.Messages) scheduleItem).isPermissionsGranted();
                } else if (scheduleItem instanceof ScheduleItem.CallLogs) {
                    zIsPermissionsGranted = ((ScheduleItem.CallLogs) scheduleItem).isPermissionsGranted();
                } else if (!(scheduleItem instanceof ScheduleItem.Folders) && !(scheduleItem instanceof ScheduleItem.Wallpapers) && !(scheduleItem instanceof ScheduleItem.Wifi)) {
                    q.j();
                    return;
                }
            }
            if (!zIsPermissionsGranted) {
                materialButton.setOnClickListener(new fr(8, j57Var, bVar));
                return;
            }
        }
        materialButton.setOnClickListener(new gr(3, j57Var, bVar));
    }
}
