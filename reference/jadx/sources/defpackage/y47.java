package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y47 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ScheduleItem b;

    public /* synthetic */ y47(ScheduleItem scheduleItem, int i) {
        this.a = i;
        this.b = scheduleItem;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        ScheduleItem scheduleItem = this.b;
        switch (i) {
            case 0:
                SyncOption syncOption = (SyncOption) obj;
                syncOption.getClass();
                ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem;
                if (!ji8.r(wifi.getLocations()) || syncOption == SyncOption.WIFI) {
                    syncOption = null;
                }
                return ScheduleItem.Wifi.copy$default(wifi, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
            case 1:
                List list = (List) obj;
                list.getClass();
                ScheduleItem.AppsLabels appsLabels = (ScheduleItem.AppsLabels) scheduleItem;
                List list2 = !ji8.v(list) ? list : null;
                return ScheduleItem.AppsLabels.copy$default(appsLabels, null, null, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 239, null);
            default:
                String str = (String) obj;
                str.getClass();
                return ScheduleItem.AppConfig.copy$default((ScheduleItem.AppConfig) scheduleItem, null, null, str, null, false, 27, null);
        }
    }
}
