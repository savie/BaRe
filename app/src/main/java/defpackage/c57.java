package defpackage;

import java.util.Set;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c57 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ScheduleItem b;

    public /* synthetic */ c57(ScheduleItem scheduleItem, int i) {
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
                return ScheduleItem.AppsQuickActions.copy$default((ScheduleItem.AppsQuickActions) scheduleItem, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, null, null, false, 507, null);
            default:
                Set set2 = (Set) obj;
                set2.getClass();
                ScheduleItem.AppConfig appConfig = (ScheduleItem.AppConfig) scheduleItem;
                Set set3 = set2.size() != 7 ? set2 : null;
                return ScheduleItem.AppConfig.copy$default(appConfig, null, null, null, set3 != null ? el1.Y0(set3, null, null, null, null, 63) : null, false, 23, null);
        }
    }
}
