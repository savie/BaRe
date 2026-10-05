package org.swiftapps.swiftbackup.home.schedule.data;

import defpackage.dj7;
import defpackage.hl1;
import defpackage.iu;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.q05;
import defpackage.w37;
import defpackage.x37;
import defpackage.y37;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static y37 a(ScheduleItem scheduleItem, boolean z, List list) {
        String itemId = scheduleItem.getItemId();
        w37 w37Var = w37.AppParts;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.app_parts);
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            iu iuVar = (iu) it.next();
            iuVar.getIconRes();
            arrayList.add(new x37(iu.toDisplayString$default(iuVar, false, 1, null)));
        }
        return new y37(itemId, w37Var, z, false, R.drawable.ic_data, strG, (List) arrayList, (Set) null, 392);
    }

    public static y37 b(ScheduleItem scheduleItem, boolean z, List list) {
        String itemId = scheduleItem.getItemId();
        w37 w37Var = w37.Locations;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.backup_storage_location);
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            q05 q05Var = (q05) it.next();
            q05.getIconRes$default(q05Var, false, 1, null);
            arrayList.add(new x37(q05Var.toDisplayString()));
        }
        return new y37(itemId, w37Var, z, false, R.drawable.ic_sd, strG, (List) arrayList, (Set) null, 136);
    }

    public static y37 c(ScheduleItem scheduleItem, boolean z) {
        String itemId = scheduleItem.getItemId();
        w37 w37Var = w37.RepeatDays;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.repeat);
        List listX0 = nq7.x0(scheduleItem.getRepeatDisplayString(), new String[]{", "}, 6);
        ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            arrayList.add(new x37((String) it.next()));
        }
        return new y37(itemId, w37Var, z, false, R.drawable.ic_repeat, strG, (List) arrayList, (Set) null, 392);
    }

    public static y37 d(ScheduleItem scheduleItem, boolean z, SyncOption syncOption) {
        String itemId = scheduleItem.getItemId();
        w37 w37Var = w37.SyncOptions;
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.sync_options);
        SyncOption.getIconRes$default(syncOption, false, 1, null);
        return new y37(itemId, w37Var, z, false, R.drawable.ic_cloud_upload, strG, nc8.I(new x37(syncOption.toDisplayString())), (Set) null, 392);
    }
}
