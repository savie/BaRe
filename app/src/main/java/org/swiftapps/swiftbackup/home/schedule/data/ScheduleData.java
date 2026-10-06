package org.swiftapps.swiftbackup.home.schedule.data;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.dj7;
import defpackage.el1;
import defpackage.eq3;
import defpackage.hl1;
import defpackage.jx2;
import defpackage.jz2;
import defpackage.ly8;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.q;
import defpackage.x65;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleData {
    private final Integer _batteryPercentReq;
    private final List<ScheduleItem.AppConfig> appConfigSchedules;
    private final List<ScheduleItem.AppsLabels> appsLabelSchedules;
    private final List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules;
    private final int batteryReq;
    private final List<ScheduleItem.CallLogs> callLogsSchedules;
    private final List<ScheduleItem.Folders> foldersSchedules;
    private final List<ScheduleItem.Messages> messagesSchedules;
    private final List<String> scheduleOrderIds;
    private final int startHour;
    private final int startMinute;
    private final List<ScheduleItem.Wallpapers> wallsSchedules;
    private final List<ScheduleItem.Wifi> wifiSchedules;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        NONE,
        CHARGING,
        MINIMUM_PERCENT;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final String toDisplayString(int i) {
            int i2 = c.a[ordinal()];
            if (i2 == 1) {
                SwiftApp.Companion companion = SwiftApp.d;
                return dj7.g(R.string.none);
            }
            if (i2 == 2) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                return dj7.g(R.string.only_when_charging);
            }
            Integer num = null;
            if (i2 != 3) {
                q.j();
                return null;
            }
            Integer numValueOf = Integer.valueOf(i);
            if (10 <= i && i < 101) {
                num = numValueOf;
            }
            int iIntValue = num != null ? num.intValue() : 50;
            SwiftApp.Companion companion3 = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.only_if_battery_is_x_percent, iIntValue + "%");
            string.getClass();
            return string;
        }
    }

    public /* synthetic */ ScheduleData(int i, int i2, int i3, Integer num, List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 3 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? a.NONE.ordinal() : i3, (i4 & 8) != 0 ? 50 : num, (i4 & 16) != 0 ? null : list, (i4 & 32) != 0 ? null : list2, (i4 & 64) != 0 ? null : list3, (i4 & 128) != 0 ? null : list4, (i4 & 256) != 0 ? null : list5, (i4 & 512) != 0 ? null : list6, (i4 & 1024) != 0 ? null : list7, (i4 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : list8, (i4 & 4096) != 0 ? null : list9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ScheduleData copy$default(ScheduleData scheduleData, int i, int i2, int i3, Integer num, List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = scheduleData.startHour;
        }
        return scheduleData.copy(i, (i4 & 2) != 0 ? scheduleData.startMinute : i2, (i4 & 4) != 0 ? scheduleData.batteryReq : i3, (i4 & 8) != 0 ? scheduleData._batteryPercentReq : num, (i4 & 16) != 0 ? scheduleData.appsQuickActionSchedules : list, (i4 & 32) != 0 ? scheduleData.appsLabelSchedules : list2, (i4 & 64) != 0 ? scheduleData.appConfigSchedules : list3, (i4 & 128) != 0 ? scheduleData.messagesSchedules : list4, (i4 & 256) != 0 ? scheduleData.callLogsSchedules : list5, (i4 & 512) != 0 ? scheduleData.wallsSchedules : list6, (i4 & 1024) != 0 ? scheduleData.wifiSchedules : list7, (i4 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? scheduleData.foldersSchedules : list8, (i4 & 4096) != 0 ? scheduleData.scheduleOrderIds : list9);
    }

    @jz2
    private final List<ScheduleItem> getSchedulesInLegacyOrder() {
        ArrayList arrayList = new ArrayList();
        List<ScheduleItem.AppConfig> list = this.appConfigSchedules;
        if (list != null) {
            arrayList.addAll(list);
        }
        List<ScheduleItem.AppsLabels> list2 = this.appsLabelSchedules;
        if (list2 != null) {
            arrayList.addAll(list2);
        }
        List<ScheduleItem.AppsQuickActions> list3 = this.appsQuickActionSchedules;
        if (list3 != null) {
            arrayList.addAll(list3);
        }
        List<ScheduleItem.Messages> list4 = this.messagesSchedules;
        if (list4 != null) {
            arrayList.addAll(list4);
        }
        List<ScheduleItem.CallLogs> list5 = this.callLogsSchedules;
        if (list5 != null) {
            arrayList.addAll(list5);
        }
        List<ScheduleItem.Wallpapers> list6 = this.wallsSchedules;
        if (list6 != null) {
            arrayList.addAll(list6);
        }
        List<ScheduleItem.Wifi> list7 = this.wifiSchedules;
        if (list7 != null) {
            arrayList.addAll(list7);
        }
        List<ScheduleItem.Folders> list8 = this.foldersSchedules;
        if (list8 != null) {
            arrayList.addAll(list8);
        }
        return el1.p1(arrayList, 20);
    }

    public final int component1() {
        return this.startHour;
    }

    public final List<ScheduleItem.Wallpapers> component10() {
        return this.wallsSchedules;
    }

    public final List<ScheduleItem.Wifi> component11() {
        return this.wifiSchedules;
    }

    public final List<ScheduleItem.Folders> component12() {
        return this.foldersSchedules;
    }

    public final List<String> component13() {
        return this.scheduleOrderIds;
    }

    public final int component2() {
        return this.startMinute;
    }

    public final int component3() {
        return this.batteryReq;
    }

    public final Integer component4() {
        return this._batteryPercentReq;
    }

    public final List<ScheduleItem.AppsQuickActions> component5() {
        return this.appsQuickActionSchedules;
    }

    public final List<ScheduleItem.AppsLabels> component6() {
        return this.appsLabelSchedules;
    }

    public final List<ScheduleItem.AppConfig> component7() {
        return this.appConfigSchedules;
    }

    public final List<ScheduleItem.Messages> component8() {
        return this.messagesSchedules;
    }

    public final List<ScheduleItem.CallLogs> component9() {
        return this.callLogsSchedules;
    }

    public final ScheduleData copy(int i, int i2, int i3, Integer num, List<ScheduleItem.AppsQuickActions> list, List<ScheduleItem.AppsLabels> list2, List<ScheduleItem.AppConfig> list3, List<ScheduleItem.Messages> list4, List<ScheduleItem.CallLogs> list5, List<ScheduleItem.Wallpapers> list6, List<ScheduleItem.Wifi> list7, List<ScheduleItem.Folders> list8, List<String> list9) {
        return new ScheduleData(i, i2, i3, num, list, list2, list3, list4, list5, list6, list7, list8, list9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScheduleData)) {
            return false;
        }
        ScheduleData scheduleData = (ScheduleData) obj;
        return this.startHour == scheduleData.startHour && this.startMinute == scheduleData.startMinute && this.batteryReq == scheduleData.batteryReq && pe4.d(this._batteryPercentReq, scheduleData._batteryPercentReq) && pe4.d(this.appsQuickActionSchedules, scheduleData.appsQuickActionSchedules) && pe4.d(this.appsLabelSchedules, scheduleData.appsLabelSchedules) && pe4.d(this.appConfigSchedules, scheduleData.appConfigSchedules) && pe4.d(this.messagesSchedules, scheduleData.messagesSchedules) && pe4.d(this.callLogsSchedules, scheduleData.callLogsSchedules) && pe4.d(this.wallsSchedules, scheduleData.wallsSchedules) && pe4.d(this.wifiSchedules, scheduleData.wifiSchedules) && pe4.d(this.foldersSchedules, scheduleData.foldersSchedules) && pe4.d(this.scheduleOrderIds, scheduleData.scheduleOrderIds);
    }

    public final List<ScheduleItem.AppConfig> getAppConfigSchedules() {
        return this.appConfigSchedules;
    }

    public final List<ScheduleItem.AppsLabels> getAppsLabelSchedules() {
        return this.appsLabelSchedules;
    }

    public final List<ScheduleItem.AppsQuickActions> getAppsQuickActionSchedules() {
        return this.appsQuickActionSchedules;
    }

    @jz2
    public final int getBatteryPercentReq() {
        Integer num = this._batteryPercentReq;
        if (num == null) {
            return 50;
        }
        int iIntValue = num.intValue();
        if (10 > iIntValue || iIntValue >= 101) {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return 50;
    }

    public final int getBatteryReq() {
        return this.batteryReq;
    }

    @jz2
    public final a getBatteryReqEnum() {
        Object next;
        Iterator<E> it = a.getEntries().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((a) next).ordinal() != this.batteryReq);
        a aVar = (a) next;
        return aVar == null ? a.NONE : aVar;
    }

    public final List<ScheduleItem.CallLogs> getCallLogsSchedules() {
        return this.callLogsSchedules;
    }

    public final List<ScheduleItem.Folders> getFoldersSchedules() {
        return this.foldersSchedules;
    }

    public final List<ScheduleItem.Messages> getMessagesSchedules() {
        return this.messagesSchedules;
    }

    @jz2
    public final List<String> getNormalizedScheduleOrderIds() {
        List<ScheduleItem> schedulesInLegacyOrder = getSchedulesInLegacyOrder();
        ArrayList arrayList = new ArrayList(hl1.G0(schedulesInLegacyOrder, 10));
        Iterator<T> it = schedulesInLegacyOrder.iterator();
        while (it.hasNext()) {
            arrayList.add(((ScheduleItem) it.next()).getItemId());
        }
        Set setZ1 = el1.z1(arrayList);
        Iterable iterable = this.scheduleOrderIds;
        if (iterable == null) {
            iterable = ov2.a;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            if (setZ1.contains((String) obj)) {
                arrayList2.add(obj);
            }
        }
        List listP = eq3.p(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!listP.contains((String) obj2)) {
                arrayList3.add(obj2);
            }
        }
        return el1.g1(listP, arrayList3);
    }

    public final List<String> getScheduleOrderIds() {
        return this.scheduleOrderIds;
    }

    @jz2
    public final List<ScheduleItem> getSchedules() {
        List<ScheduleItem> schedulesInLegacyOrder = getSchedulesInLegacyOrder();
        int iQ0 = x65.q0(hl1.G0(schedulesInLegacyOrder, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (Object obj : schedulesInLegacyOrder) {
            linkedHashMap.put(((ScheduleItem) obj).getItemId(), obj);
        }
        List<String> normalizedScheduleOrderIds = getNormalizedScheduleOrderIds();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = normalizedScheduleOrderIds.iterator();
        while (it.hasNext()) {
            ScheduleItem scheduleItem = (ScheduleItem) linkedHashMap.get((String) it.next());
            if (scheduleItem != null) {
                arrayList.add(scheduleItem);
            }
        }
        return el1.p1(arrayList, 20);
    }

    public final int getStartHour() {
        return this.startHour;
    }

    public final int getStartMinute() {
        return this.startMinute;
    }

    public final List<ScheduleItem.Wallpapers> getWallsSchedules() {
        return this.wallsSchedules;
    }

    public final List<ScheduleItem.Wifi> getWifiSchedules() {
        return this.wifiSchedules;
    }

    public final Integer get_batteryPercentReq() {
        return this._batteryPercentReq;
    }

    public int hashCode() {
        int iD = eq3.d(this.batteryReq, eq3.d(this.startMinute, Integer.hashCode(this.startHour) * 31, 31), 31);
        Integer num = this._batteryPercentReq;
        int iHashCode = (iD + (num == null ? 0 : num.hashCode())) * 31;
        List<ScheduleItem.AppsQuickActions> list = this.appsQuickActionSchedules;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<ScheduleItem.AppsLabels> list2 = this.appsLabelSchedules;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<ScheduleItem.AppConfig> list3 = this.appConfigSchedules;
        int iHashCode4 = (iHashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<ScheduleItem.Messages> list4 = this.messagesSchedules;
        int iHashCode5 = (iHashCode4 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<ScheduleItem.CallLogs> list5 = this.callLogsSchedules;
        int iHashCode6 = (iHashCode5 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<ScheduleItem.Wallpapers> list6 = this.wallsSchedules;
        int iHashCode7 = (iHashCode6 + (list6 == null ? 0 : list6.hashCode())) * 31;
        List<ScheduleItem.Wifi> list7 = this.wifiSchedules;
        int iHashCode8 = (iHashCode7 + (list7 == null ? 0 : list7.hashCode())) * 31;
        List<ScheduleItem.Folders> list8 = this.foldersSchedules;
        int iHashCode9 = (iHashCode8 + (list8 == null ? 0 : list8.hashCode())) * 31;
        List<String> list9 = this.scheduleOrderIds;
        return iHashCode9 + (list9 != null ? list9.hashCode() : 0);
    }

    public String toString() {
        int i = this.startHour;
        int i2 = this.startMinute;
        int i3 = this.batteryReq;
        Integer num = this._batteryPercentReq;
        List<ScheduleItem.AppsQuickActions> list = this.appsQuickActionSchedules;
        List<ScheduleItem.AppsLabels> list2 = this.appsLabelSchedules;
        List<ScheduleItem.AppConfig> list3 = this.appConfigSchedules;
        List<ScheduleItem.Messages> list4 = this.messagesSchedules;
        List<ScheduleItem.CallLogs> list5 = this.callLogsSchedules;
        List<ScheduleItem.Wallpapers> list6 = this.wallsSchedules;
        List<ScheduleItem.Wifi> list7 = this.wifiSchedules;
        List<ScheduleItem.Folders> list8 = this.foldersSchedules;
        List<String> list9 = this.scheduleOrderIds;
        StringBuilder sbN = xs1.n("ScheduleData(startHour=", i, ", startMinute=", ", batteryReq=", i2);
        sbN.append(i3);
        sbN.append(", _batteryPercentReq=");
        sbN.append(num);
        sbN.append(", appsQuickActionSchedules=");
        sbN.append(list);
        sbN.append(", appsLabelSchedules=");
        sbN.append(list2);
        sbN.append(", appConfigSchedules=");
        sbN.append(list3);
        sbN.append(", messagesSchedules=");
        sbN.append(list4);
        sbN.append(", callLogsSchedules=");
        sbN.append(list5);
        sbN.append(", wallsSchedules=");
        sbN.append(list6);
        sbN.append(", wifiSchedules=");
        sbN.append(list7);
        sbN.append(", foldersSchedules=");
        sbN.append(list8);
        sbN.append(", scheduleOrderIds=");
        return dj7.o(sbN, list9, ")");
    }

    @jz2
    public final ScheduleData withNormalizedScheduleOrder() {
        return copy$default(this, 0, 0, 0, null, null, null, null, null, null, null, null, null, getNormalizedScheduleOrderIds(), 4095, null);
    }

    @jz2
    public final ScheduleData withScheduleAppended(String str) {
        str.getClass();
        List<String> normalizedScheduleOrderIds = getNormalizedScheduleOrderIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : normalizedScheduleOrderIds) {
            if (!pe4.d((String) obj, str)) {
                arrayList.add(obj);
            }
        }
        return copy$default(this, 0, 0, 0, null, null, null, null, null, null, null, null, null, el1.f1(str, arrayList), 4095, null);
    }

    @jz2
    public final ScheduleData withScheduleDeleted(String str) {
        str.getClass();
        List<String> normalizedScheduleOrderIds = getNormalizedScheduleOrderIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : normalizedScheduleOrderIds) {
            if (!pe4.d((String) obj, str)) {
                arrayList.add(obj);
            }
        }
        return copy$default(this, 0, 0, 0, null, null, null, null, null, null, null, null, null, arrayList, 4095, null);
    }

    @jz2
    public final ScheduleData withScheduleMoved(String str, int i) {
        str.getClass();
        ArrayList arrayListX1 = el1.x1(getNormalizedScheduleOrderIds());
        int iIndexOf = arrayListX1.indexOf(str);
        int i2 = iIndexOf + i;
        if (iIndexOf < 0 || iIndexOf >= arrayListX1.size() || i2 < 0 || i2 >= arrayListX1.size()) {
            return copy$default(this, 0, 0, 0, null, null, null, null, null, null, null, null, null, arrayListX1, 4095, null);
        }
        Collections.swap(arrayListX1, iIndexOf, i2);
        return copy$default(this, 0, 0, 0, null, null, null, null, null, null, null, null, null, arrayListX1, 4095, null);
    }

    public ScheduleData(int i, int i2, int i3, Integer num, List<ScheduleItem.AppsQuickActions> list, List<ScheduleItem.AppsLabels> list2, List<ScheduleItem.AppConfig> list3, List<ScheduleItem.Messages> list4, List<ScheduleItem.CallLogs> list5, List<ScheduleItem.Wallpapers> list6, List<ScheduleItem.Wifi> list7, List<ScheduleItem.Folders> list8, List<String> list9) {
        this.startHour = i;
        this.startMinute = i2;
        this.batteryReq = i3;
        this._batteryPercentReq = num;
        this.appsQuickActionSchedules = list;
        this.appsLabelSchedules = list2;
        this.appConfigSchedules = list3;
        this.messagesSchedules = list4;
        this.callLogsSchedules = list5;
        this.wallsSchedules = list6;
        this.wifiSchedules = list7;
        this.foldersSchedules = list8;
        this.scheduleOrderIds = list9;
    }

    public ScheduleData() {
        this(0, 0, 0, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }
}
