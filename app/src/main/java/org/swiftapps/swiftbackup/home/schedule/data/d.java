package org.swiftapps.swiftbackup.home.schedule.data;

import defpackage.hl1;
import defpackage.mp6;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:67:0x011e  */
    public static final ScheduleData a(ScheduleData scheduleData) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules = scheduleData.getAppsQuickActionSchedules();
        ArrayList arrayList8 = null;
        if (appsQuickActionSchedules == null) {
            arrayList = null;
        } else {
            if (appsQuickActionSchedules.isEmpty()) {
                appsQuickActionSchedules = null;
            }
            if (appsQuickActionSchedules != null) {
                ArrayList arrayList9 = new ArrayList(hl1.G0(appsQuickActionSchedules, 10));
                for (ScheduleItem.AppsQuickActions appsQuickActions : appsQuickActionSchedules) {
                    arrayList9.add(ScheduleItem.AppsQuickActions.copy$default(appsQuickActions, null, null, null, null, null, null, null, null, appsQuickActions.isRootNeeded() ? mp6.g && appsQuickActions.isEnabled() : appsQuickActions.isEnabled(), 255, null));
                }
                arrayList = arrayList9;
            } else {
                arrayList = null;
            }
        }
        List<ScheduleItem.AppsLabels> appsLabelSchedules = scheduleData.getAppsLabelSchedules();
        if (appsLabelSchedules == null) {
            arrayList2 = null;
        } else {
            if (appsLabelSchedules.isEmpty()) {
                appsLabelSchedules = null;
            }
            if (appsLabelSchedules != null) {
                ArrayList arrayList10 = new ArrayList(hl1.G0(appsLabelSchedules, 10));
                for (ScheduleItem.AppsLabels appsLabels : appsLabelSchedules) {
                    arrayList10.add(ScheduleItem.AppsLabels.copy$default(appsLabels, null, null, null, null, null, null, null, appsLabels.isRootNeeded() ? mp6.g && appsLabels.isEnabled() : appsLabels.isEnabled(), 127, null));
                }
                arrayList2 = arrayList10;
            } else {
                arrayList2 = null;
            }
        }
        List<ScheduleItem.AppConfig> appConfigSchedules = scheduleData.getAppConfigSchedules();
        if (appConfigSchedules == null) {
            arrayList3 = null;
        } else {
            if (appConfigSchedules.isEmpty()) {
                appConfigSchedules = null;
            }
            if (appConfigSchedules != null) {
                ArrayList arrayList11 = new ArrayList(hl1.G0(appConfigSchedules, 10));
                for (ScheduleItem.AppConfig appConfig : appConfigSchedules) {
                    arrayList11.add(ScheduleItem.AppConfig.copy$default(appConfig, null, null, null, null, appConfig.isRootNeeded() ? mp6.g && appConfig.isEnabled() : appConfig.isEnabled(), 15, null));
                }
                arrayList3 = arrayList11;
            } else {
                arrayList3 = null;
            }
        }
        List<ScheduleItem.Messages> messagesSchedules = scheduleData.getMessagesSchedules();
        if (messagesSchedules != null) {
            ArrayList arrayList12 = new ArrayList(hl1.G0(messagesSchedules, 10));
            for (ScheduleItem.Messages messages : messagesSchedules) {
                arrayList12.add(ScheduleItem.Messages.copy$default(messages, null, null, null, null, null, messages.isEnabled() && messages.isPermissionsGranted(), 31, null));
            }
            arrayList4 = arrayList12;
        } else {
            arrayList4 = null;
        }
        List<ScheduleItem.CallLogs> callLogsSchedules = scheduleData.getCallLogsSchedules();
        if (callLogsSchedules != null) {
            ArrayList arrayList13 = new ArrayList(hl1.G0(callLogsSchedules, 10));
            for (ScheduleItem.CallLogs callLogs : callLogsSchedules) {
                arrayList13.add(ScheduleItem.CallLogs.copy$default(callLogs, null, null, null, null, null, callLogs.isEnabled() && callLogs.isPermissionsGranted(), 31, null));
            }
            arrayList5 = arrayList13;
        } else {
            arrayList5 = null;
        }
        List<ScheduleItem.Wallpapers> wallsSchedules = scheduleData.getWallsSchedules();
        if (wallsSchedules != null) {
            ArrayList arrayList14 = new ArrayList(hl1.G0(wallsSchedules, 10));
            for (ScheduleItem.Wallpapers wallpapers : wallsSchedules) {
                arrayList14.add(ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, null, null, null, wallpapers.isEnabled(), 31, null));
            }
            arrayList6 = arrayList14;
        } else {
            arrayList6 = null;
        }
        List<ScheduleItem.Wifi> wifiSchedules = scheduleData.getWifiSchedules();
        if (wifiSchedules != null) {
            ArrayList arrayList15 = new ArrayList(hl1.G0(wifiSchedules, 10));
            for (ScheduleItem.Wifi wifi : wifiSchedules) {
                arrayList15.add(ScheduleItem.Wifi.copy$default(wifi, null, null, null, null, null, wifi.isEnabled(), 31, null));
            }
            arrayList7 = arrayList15;
        } else {
            arrayList7 = null;
        }
        List<ScheduleItem.Folders> foldersSchedules = scheduleData.getFoldersSchedules();
        if (foldersSchedules != null) {
            arrayList8 = new ArrayList(hl1.G0(foldersSchedules, 10));
            for (ScheduleItem.Folders folders : foldersSchedules) {
                arrayList8.add(ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, null, null, null, folders.isEnabled(), 255, null));
            }
        }
        return ScheduleData.copy$default(scheduleData, 0, 0, 0, null, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, null, 4111, null);
    }
}
