package defpackage;

import java.util.Set;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v47 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ScheduleItem b;

    public /* synthetic */ v47(ScheduleItem scheduleItem, int i) {
        this.a = i;
        this.b = scheduleItem;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        ScheduleItem scheduleItem = this.b;
        switch (i) {
            case 0:
                Set set = (Set) obj;
                set.getClass();
                return ScheduleItem.AppsQuickActions.copy$default((ScheduleItem.AppsQuickActions) scheduleItem, null, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, null, false, 503, null);
            default:
                SyncOption syncOption = (SyncOption) obj;
                syncOption.getClass();
                ScheduleItem.AppsQuickActions appsQuickActions = (ScheduleItem.AppsQuickActions) scheduleItem;
                if (!ji8.r(appsQuickActions.getLocations()) || syncOption == SyncOption.WIFI) {
                    syncOption = null;
                }
                return ScheduleItem.AppsQuickActions.copy$default(appsQuickActions, null, null, null, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 447, null);
        }
    }
}
