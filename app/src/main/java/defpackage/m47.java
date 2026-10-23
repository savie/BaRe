package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m47 extends n47 {
    public final ArrayList a;
    public final boolean b;
    public final ScheduleData c;
    public final boolean d;
    public final ArrayList e;

    public m47(ArrayList arrayList, boolean z, ScheduleData scheduleData) {
        this.a = arrayList;
        this.b = z;
        this.c = scheduleData;
        List<ScheduleItem> schedules = scheduleData.getSchedules();
        boolean z2 = false;
        if (schedules == null || !schedules.isEmpty()) {
            for (ScheduleItem scheduleItem : schedules) {
                if (scheduleItem.isEnabled() && scheduleItem.isRunnable()) {
                    z2 = true;
                    break;
                }
            }
        }
        this.d = z2;
        if (!V.INSTANCE.getVp()) {
            zc2 zc2Var = re3.a;
            try {
                new qe3("ScheduleVM", fz5.j(schedules.size(), "schedules=")).invoke();
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (!schedules.isEmpty()) {
            if (!schedules.isEmpty()) {
                Iterator<T> it = schedules.iterator();
                while (it.hasNext()) {
                    if (!((ScheduleItem) it.next()).isPermissionsGranted()) {
                        arrayList2.add(Integer.valueOf(R.string.some_schedules_need_permissions));
                        break;
                    }
                }
            }
            if (!schedules.isEmpty()) {
                Iterator<T> it2 = schedules.iterator();
                while (it2.hasNext()) {
                    if (((ScheduleItem) it2.next()).hasAnyCloudLocations()) {
                        tb1 tb1Var = tb1.a;
                        if (!qb1.m()) {
                            arrayList2.add(Integer.valueOf(R.string.some_schedules_need_cloud_connected));
                            break;
                        }
                        break;
                    }
                }
            }
            if (!schedules.isEmpty()) {
                for (ScheduleItem scheduleItem2 : schedules) {
                    if (scheduleItem2.getBackupRequirement() == sk0.ROOT && !scheduleItem2.isBackupRequirementPossible()) {
                        arrayList2.add(Integer.valueOf(R.string.some_schedules_need_root_access));
                        break;
                    }
                }
            }
            if (!schedules.isEmpty()) {
                for (ScheduleItem scheduleItem3 : schedules) {
                    if (scheduleItem3.getBackupRequirement() == sk0.ROOT_OR_SHIZUKU && !scheduleItem3.isBackupRequirementPossible()) {
                        arrayList2.add(Integer.valueOf(R.string.root_access_or_shizuku_needed));
                        break;
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : schedules) {
                if (obj instanceof ScheduleItem.AppConfig) {
                    arrayList3.add(obj);
                }
            }
            if (!arrayList3.isEmpty() && !arrayList3.isEmpty()) {
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    if (((ScheduleItem.AppConfig) it3.next()).hasInvalidConfigs()) {
                        arrayList2.add(Integer.valueOf(R.string.some_config_schedules_have_invalid_configs));
                        break;
                    }
                }
            }
        }
        this.e = arrayList2;
    }
}
