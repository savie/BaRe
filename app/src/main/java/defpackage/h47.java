package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.a;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h47 implements bt3 {
    public final /* synthetic */ q47 a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ h47(q47 q47Var, boolean z) {
        this.a = q47Var;
        this.b = z;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:106:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:107:0x030f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0319  */
    /* JADX WARN: Code duplicated, block: B:113:0x033b  */
    /* JADX WARN: Code duplicated, block: B:114:0x0340  */
    /* JADX WARN: Code duplicated, block: B:131:0x0380  */
    /* JADX WARN: Code duplicated, block: B:132:0x0384  */
    /* JADX WARN: Code duplicated, block: B:134:0x038e  */
    /* JADX WARN: Code duplicated, block: B:135:0x0390  */
    /* JADX WARN: Code duplicated, block: B:138:0x039d  */
    /* JADX WARN: Code duplicated, block: B:140:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:150:0x0403 A[PHI: r22 r23
      0x0403: PHI (r22v4 java.lang.String) = (r22v1 java.lang.String), (r22v3 java.lang.String), (r22v5 java.lang.String) binds: [B:185:0x04da, B:162:0x044c, B:149:0x0401] A[DONT_GENERATE, DONT_INLINE]
      0x0403: PHI (r23v9 java.lang.Object) = (r23v4 java.lang.Object), (r23v7 java.lang.Object), (r23v11 java.lang.Object) binds: [B:185:0x04da, B:162:0x044c, B:149:0x0401] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:61:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d1 A[LOOP:4: B:63:0x01cb->B:65:0x01d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x021f A[LOOP:5: B:67:0x0219->B:69:0x021f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x025d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0260  */
    /* JADX WARN: Code duplicated, block: B:76:0x026a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0271  */
    /* JADX WARN: Code duplicated, block: B:97:0x02cd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v22, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2, types: [y37] */
    /* JADX WARN: Type inference failed for: r31v3 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2, types: [y37] */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [y37] */
    /* JADX WARN: Type inference failed for: r4v32 */
    @Override // defpackage.bt3
    public final Object invoke() {
        Object m47Var;
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z;
        int i;
        Iterator it;
        int i2;
        List list;
        List listI;
        List list2;
        String str;
        ?? r12;
        String title;
        Object objConditionMsg;
        List list3;
        List listP0;
        String name;
        boolean z2;
        List listI2;
        String strY0;
        List<q05> locations;
        SyncOption syncOption;
        Set<LabelParams> labels;
        boolean z3;
        List listI3;
        Set labels2;
        ?? D;
        String strY1;
        List<q05> locations2;
        SyncOption syncOption2;
        ArrayList arrayList3;
        Iterator it2;
        ArrayList arrayList4;
        Iterator it3;
        y37 y37VarB;
        ?? r31;
        ?? D2;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ex6 ex6Var = this.a.f;
        if (o37.b()) {
            pz4 pz4Var = pz4.g;
            pz4Var.e();
            zn4 zn4Var = zn4.a;
            ArrayList arrayList7 = null;
            zn4.b(null, new p47(2, null));
            c47 c47Var = c47.a;
            ScheduleData scheduleDataC = c47Var.c();
            List<ScheduleItem.Folders> foldersSchedules = scheduleDataC.getFoldersSchedules();
            List listE = pz4Var.e();
            int i3 = 10;
            int iQ0 = x65.q0(hl1.G0(listE, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
            for (Object obj : listE) {
                linkedHashMap.put(((FolderMetadata) obj).getFolderItem().getId(), obj);
            }
            if (foldersSchedules != null) {
                arrayList2 = new ArrayList(hl1.G0(foldersSchedules, 10));
                z = false;
                for (ScheduleItem.Folders folders : foldersSchedules) {
                    List<FolderItem> list4 = folders.get_folderItems();
                    if (list4 != null) {
                        ArrayList arrayList8 = new ArrayList(hl1.G0(list4, i3));
                        for (FolderItem folderItem : list4) {
                            ArrayList arrayList9 = arrayList7;
                            FolderMetadata folderMetadata = (FolderMetadata) linkedHashMap.get(folderItem.getId());
                            if (folderMetadata != null && !pe4.d(folderMetadata.getFolderItem().getDisplayName(), folderItem.getDisplayName())) {
                                folderItem = folderMetadata.getFolderItem();
                                z = true;
                            }
                            arrayList8.add(folderItem);
                            arrayList7 = arrayList9;
                        }
                        arrayList5 = arrayList7;
                        arrayList6 = arrayList8;
                    } else {
                        arrayList5 = arrayList7;
                        arrayList6 = arrayList5;
                    }
                    arrayList2.add(ScheduleItem.Folders.copy$default(folders, null, null, false, arrayList6, null, null, null, null, false, 503, null));
                    arrayList7 = arrayList5;
                    i3 = 10;
                }
                arrayList = arrayList7;
            } else {
                arrayList = null;
                arrayList2 = null;
                z = false;
            }
            ArrayList arrayList10 = z ? arrayList2 : arrayList;
            if (arrayList10 == null || arrayList10.isEmpty()) {
                i = 10;
            } else {
                i = 10;
                c47Var.e(ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, null, null, null, arrayList10, null, 6143, null));
                scheduleDataC = ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, null, null, null, arrayList10, null, 6143, null);
            }
            List<ScheduleItem> schedules = scheduleDataC.getSchedules();
            schedules.getClass();
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            ArrayList arrayList11 = new ArrayList(hl1.G0(schedules, i));
            Iterator it4 = schedules.iterator();
            while (it4.hasNext()) {
                ScheduleItem scheduleItem = (ScheduleItem) it4.next();
                boolean zIsEnabled = scheduleItem.isEnabled();
                String string = contextC.getString(zIsEnabled ? R.string.turn_off : R.string.turn_on);
                string.getClass();
                boolean z4 = scheduleItem instanceof ScheduleItem.AppsQuickActions;
                ov2 ov2Var = ov2.a;
                if (z4) {
                    ScheduleItem.AppsQuickActions appsQuickActions = (ScheduleItem.AppsQuickActions) scheduleItem;
                    List<String> quickActionNames = appsQuickActions.getQuickActionNames();
                    title = appsQuickActions.getTitle();
                    if (zIsEnabled || mp6.g || !appsQuickActions.isRootNeeded()) {
                        if (zIsEnabled) {
                            objConditionMsg = arrayList;
                        } else {
                            strY1 = el1.Y0(quickActionNames, null, null, null, null, 63);
                        }
                        locations2 = appsQuickActions.getLocations();
                        syncOption2 = appsQuickActions.getSyncOption();
                        if (zIsEnabled) {
                            String itemId = appsQuickActions.getItemId();
                            w37 w37Var = w37.QuickActions;
                            String string2 = contextC.getString(R.string.quick_actions);
                            string2.getClass();
                            arrayList3 = new ArrayList(hl1.G0(quickActionNames, i));
                            it2 = quickActionNames.iterator();
                            while (it2.hasNext()) {
                                arrayList3.add(new x37((String) it2.next()));
                            }
                            y37 y37Var = new y37(itemId, w37Var, zIsEnabled, false, R.drawable.ic_quick_actions_outline, string2, (List) arrayList3, (Set) null, 392);
                            String itemId2 = appsQuickActions.getItemId();
                            w37 w37Var2 = w37.AllowedApps;
                            String string3 = contextC.getString(R.string.allowed_apps);
                            string3.getClass();
                            List<ScheduleItem.AppsQuickActions.a> allowedApps = appsQuickActions.getAllowedApps();
                            arrayList4 = new ArrayList(hl1.G0(allowedApps, 10));
                            it3 = allowedApps.iterator();
                            while (it3.hasNext()) {
                                arrayList4.add(new x37(((ScheduleItem.AppsQuickActions.a) it3.next()).toDisplayString(true)));
                                it4 = it4;
                            }
                            it = it4;
                            y37 y37Var2 = new y37(itemId2, w37Var2, zIsEnabled, false, R.drawable.ic_format_list_checks, string3, (List) arrayList4, (Set) null, 392);
                            y37 y37VarA = a.a(scheduleItem, zIsEnabled, appsQuickActions.getAppParts());
                            y37VarB = a.b(scheduleItem, zIsEnabled, locations2);
                            if (appsQuickActions.isSyncOnly()) {
                                r31 = arrayList;
                            } else {
                                r31 = y37VarB;
                            }
                            if (locations2.contains(q05.CLOUD)) {
                                D2 = a.d(scheduleItem, zIsEnabled, syncOption2);
                            } else {
                                D2 = arrayList;
                            }
                            listP0 = x50.p0(new y37[]{y37Var, y37Var2, y37VarA, r31, D2, a.c(scheduleItem, zIsEnabled)});
                        } else {
                            it = it4;
                            listP0 = ov2Var;
                        }
                    } else {
                        strY1 = contextC.getString(R.string.root_access_needed);
                    }
                    objConditionMsg = strY1;
                    locations2 = appsQuickActions.getLocations();
                    syncOption2 = appsQuickActions.getSyncOption();
                    if (zIsEnabled) {
                        it = it4;
                        listP0 = ov2Var;
                    } else {
                        String itemId3 = appsQuickActions.getItemId();
                        w37 w37Var3 = w37.QuickActions;
                        String string4 = contextC.getString(R.string.quick_actions);
                        string4.getClass();
                        arrayList3 = new ArrayList(hl1.G0(quickActionNames, i));
                        it2 = quickActionNames.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(new x37((String) it2.next()));
                        }
                        y37 y37Var3 = new y37(itemId3, w37Var3, zIsEnabled, false, R.drawable.ic_quick_actions_outline, string4, (List) arrayList3, (Set) null, 392);
                        String itemId4 = appsQuickActions.getItemId();
                        w37 w37Var4 = w37.AllowedApps;
                        String string5 = contextC.getString(R.string.allowed_apps);
                        string5.getClass();
                        List<ScheduleItem.AppsQuickActions.a> allowedApps2 = appsQuickActions.getAllowedApps();
                        arrayList4 = new ArrayList(hl1.G0(allowedApps2, 10));
                        it3 = allowedApps2.iterator();
                        while (it3.hasNext()) {
                            arrayList4.add(new x37(((ScheduleItem.AppsQuickActions.a) it3.next()).toDisplayString(true)));
                            it4 = it4;
                        }
                        it = it4;
                        y37 y37Var4 = new y37(itemId4, w37Var4, zIsEnabled, false, R.drawable.ic_format_list_checks, string5, (List) arrayList4, (Set) null, 392);
                        y37 y37VarA2 = a.a(scheduleItem, zIsEnabled, appsQuickActions.getAppParts());
                        y37VarB = a.b(scheduleItem, zIsEnabled, locations2);
                        if (appsQuickActions.isSyncOnly()) {
                            r31 = y37VarB;
                        } else {
                            r31 = arrayList;
                        }
                        if (locations2.contains(q05.CLOUD)) {
                            D2 = a.d(scheduleItem, zIsEnabled, syncOption2);
                        } else {
                            D2 = arrayList;
                        }
                        listP0 = x50.p0(new y37[]{y37Var3, y37Var4, y37VarA2, r31, D2, a.c(scheduleItem, zIsEnabled)});
                    }
                } else {
                    it = it4;
                    if (scheduleItem instanceof ScheduleItem.AppsLabels) {
                        ScheduleItem.AppsLabels appsLabels = (ScheduleItem.AppsLabels) scheduleItem;
                        List<String> labelNames = appsLabels.getLabelNames();
                        title = appsLabels.getTitle();
                        if (zIsEnabled || mp6.g || !appsLabels.isRootNeeded()) {
                            if (zIsEnabled) {
                                objConditionMsg = arrayList;
                            } else {
                                strY0 = el1.Y0(labelNames, null, null, null, null, 63);
                            }
                            locations = appsLabels.getLocations();
                            syncOption = appsLabels.getSyncOption();
                            listP0 = ov2Var;
                            if (zIsEnabled) {
                                String itemId5 = appsLabels.getItemId();
                                w37 w37Var5 = w37.Labels;
                                labels = appsLabels.getLabels();
                                if (labels != null || labels.isEmpty()) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                String string6 = contextC.getString(R.string.labels);
                                string6.getClass();
                                if (labelNames.isEmpty()) {
                                    listI3 = nc8.I(new x37(contextC.getString(R.string.select_labels)));
                                } else {
                                    listI3 = ov2Var;
                                }
                                labels2 = appsLabels.getLabels();
                                if (labels2 == null) {
                                    labels2 = sv2.a;
                                }
                                y37 y37Var5 = new y37(itemId5, w37Var5, zIsEnabled, z3, R.drawable.ic_label_outline, string6, listI3, labels2, 256);
                                y37 y37VarA3 = a.a(scheduleItem, zIsEnabled, appsLabels.getAppParts());
                                y37 y37VarB2 = a.b(scheduleItem, zIsEnabled, locations);
                                if (locations.contains(q05.CLOUD)) {
                                    D = a.d(scheduleItem, zIsEnabled, syncOption);
                                } else {
                                    D = arrayList;
                                }
                                listP0 = x50.p0(new y37[]{y37Var5, y37VarA3, y37VarB2, D, a.c(scheduleItem, zIsEnabled)});
                            }
                        } else {
                            strY0 = contextC.getString(R.string.root_access_needed);
                        }
                        objConditionMsg = strY0;
                        locations = appsLabels.getLocations();
                        syncOption = appsLabels.getSyncOption();
                        listP0 = ov2Var;
                        if (zIsEnabled) {
                            String itemId6 = appsLabels.getItemId();
                            w37 w37Var6 = w37.Labels;
                            labels = appsLabels.getLabels();
                            if (labels != null) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            String string7 = contextC.getString(R.string.labels);
                            string7.getClass();
                            if (labelNames.isEmpty()) {
                                listI3 = nc8.I(new x37(contextC.getString(R.string.select_labels)));
                            } else {
                                listI3 = ov2Var;
                            }
                            labels2 = appsLabels.getLabels();
                            if (labels2 == null) {
                                labels2 = sv2.a;
                            }
                            y37 y37Var6 = new y37(itemId6, w37Var6, zIsEnabled, z3, R.drawable.ic_label_outline, string7, listI3, labels2, 256);
                            y37 y37VarA4 = a.a(scheduleItem, zIsEnabled, appsLabels.getAppParts());
                            y37 y37VarB3 = a.b(scheduleItem, zIsEnabled, locations);
                            if (locations.contains(q05.CLOUD)) {
                                D = a.d(scheduleItem, zIsEnabled, syncOption);
                            } else {
                                D = arrayList;
                            }
                            listP0 = x50.p0(new y37[]{y37Var6, y37VarA4, y37VarB3, D, a.c(scheduleItem, zIsEnabled)});
                        }
                    } else if (scheduleItem instanceof ScheduleItem.AppConfig) {
                        ScheduleItem.AppConfig appConfig = (ScheduleItem.AppConfig) scheduleItem;
                        title = appConfig.getTitle();
                        Config config = appConfig.getConfig();
                        if (zIsEnabled || mp6.g || !appConfig.isRootNeeded()) {
                            if (zIsEnabled || config == null) {
                                objConditionMsg = arrayList;
                            } else {
                                name = config.getName();
                            }
                            if (zIsEnabled) {
                                String itemId7 = appConfig.getItemId();
                                w37 w37Var7 = w37.Config;
                                if (config == null) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                String string8 = contextC.getString(R.string.configs);
                                string8.getClass();
                                if (config != null) {
                                    sq1.a(config, false);
                                    listI2 = nc8.I(new x37(config.getName()));
                                } else {
                                    listI2 = nc8.I(new x37(contextC.getString(R.string.select_config)));
                                }
                                listP0 = x50.p0(new y37[]{new y37(itemId7, w37Var7, zIsEnabled, z2, R.drawable.ic_configs, string8, listI2, (Set) null, 384), a.c(scheduleItem, zIsEnabled)});
                            } else {
                                listP0 = ov2Var;
                            }
                        } else {
                            name = contextC.getString(R.string.root_access_needed);
                        }
                        objConditionMsg = name;
                        if (zIsEnabled) {
                            listP0 = ov2Var;
                        } else {
                            String itemId8 = appConfig.getItemId();
                            w37 w37Var8 = w37.Config;
                            if (config == null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            String string9 = contextC.getString(R.string.configs);
                            string9.getClass();
                            if (config != null) {
                                sq1.a(config, false);
                                listI2 = nc8.I(new x37(config.getName()));
                            } else {
                                listI2 = nc8.I(new x37(contextC.getString(R.string.select_config)));
                            }
                            listP0 = x50.p0(new y37[]{new y37(itemId8, w37Var8, zIsEnabled, z2, R.drawable.ic_configs, string9, listI2, (Set) null, 384), a.c(scheduleItem, zIsEnabled)});
                        }
                    } else {
                        if (scheduleItem instanceof ScheduleItem.Messages) {
                            ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem;
                            title = messages.getTitle();
                            objConditionMsg = !messages.isPermissionsGranted() ? contextC.getString(R.string.grant_permissions) : arrayList;
                            List<q05> locations3 = messages.getLocations();
                            SyncOption syncOption3 = messages.getSyncOption();
                            if (zIsEnabled) {
                                ArrayList arrayList12 = new ArrayList();
                                arrayList12.add(a.b(scheduleItem, zIsEnabled, locations3));
                                if (locations3.contains(q05.CLOUD)) {
                                    arrayList12.add(a.d(scheduleItem, zIsEnabled, syncOption3));
                                }
                                arrayList12.add(a.c(scheduleItem, zIsEnabled));
                                listP0 = arrayList12;
                            } else {
                                listP0 = ov2Var;
                            }
                        } else if (scheduleItem instanceof ScheduleItem.CallLogs) {
                            ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) scheduleItem;
                            title = callLogs.getTitle();
                            objConditionMsg = !callLogs.isPermissionsGranted() ? contextC.getString(R.string.grant_permissions) : arrayList;
                            List<q05> locations4 = callLogs.getLocations();
                            SyncOption syncOption4 = callLogs.getSyncOption();
                            if (zIsEnabled) {
                                ArrayList arrayList13 = new ArrayList();
                                arrayList13.add(a.b(scheduleItem, zIsEnabled, locations4));
                                if (locations4.contains(q05.CLOUD)) {
                                    arrayList13.add(a.d(scheduleItem, zIsEnabled, syncOption4));
                                }
                                arrayList13.add(a.c(scheduleItem, zIsEnabled));
                                listP0 = arrayList13;
                            } else {
                                listP0 = ov2Var;
                            }
                        } else if (scheduleItem instanceof ScheduleItem.Wallpapers) {
                            ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem;
                            String title2 = wallpapers.getTitle();
                            List<q05> locations5 = wallpapers.getLocations();
                            SyncOption syncOption5 = wallpapers.getSyncOption();
                            if (zIsEnabled) {
                                ArrayList arrayList14 = new ArrayList();
                                arrayList14.add(a.b(scheduleItem, zIsEnabled, locations5));
                                if (locations5.contains(q05.CLOUD)) {
                                    arrayList14.add(a.d(scheduleItem, zIsEnabled, syncOption5));
                                }
                                arrayList14.add(a.c(scheduleItem, zIsEnabled));
                                list3 = arrayList14;
                            } else {
                                list3 = ov2Var;
                            }
                            list2 = list3;
                            str = title2;
                            r12 = arrayList;
                            i2 = 10;
                        } else if (scheduleItem instanceof ScheduleItem.Wifi) {
                            ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem;
                            title = wifi.getTitle();
                            objConditionMsg = !scheduleItem.isBackupRequirementPossible() ? wifi.getBackupRequirement().conditionMsg(contextC) : arrayList;
                            List<q05> locations6 = wifi.getLocations();
                            SyncOption syncOption6 = wifi.getSyncOption();
                            if (zIsEnabled) {
                                ArrayList arrayList15 = new ArrayList();
                                arrayList15.add(a.b(scheduleItem, zIsEnabled, locations6));
                                if (locations6.contains(q05.CLOUD)) {
                                    arrayList15.add(a.d(scheduleItem, zIsEnabled, syncOption6));
                                }
                                arrayList15.add(a.c(scheduleItem, zIsEnabled));
                                listP0 = arrayList15;
                            } else {
                                listP0 = ov2Var;
                            }
                        } else {
                            if (!(scheduleItem instanceof ScheduleItem.Folders)) {
                                q.j();
                                return arrayList;
                            }
                            ScheduleItem.Folders folders2 = (ScheduleItem.Folders) scheduleItem;
                            List<String> folderNames = folders2.getFolderNames();
                            String title3 = folders2.getTitle();
                            Object objY0 = !zIsEnabled ? el1.Y0(folderNames, null, null, null, null, 63) : arrayList;
                            List<q05> locations7 = folders2.getLocations();
                            SyncOption syncOption7 = folders2.getSyncOption();
                            FolderBackupStrategy backupStrategy = folders2.getBackupStrategy();
                            boolean zIsBackupAllFolders = folders2.isBackupAllFolders();
                            if (zIsEnabled) {
                                ArrayList arrayList16 = new ArrayList();
                                String itemId9 = folders2.getItemId();
                                w37 w37Var9 = w37.FolderMode;
                                String string10 = contextC.getString(R.string.folder_setups);
                                string10.getClass();
                                arrayList16.add(new y37(itemId9, w37Var9, zIsEnabled, false, R.drawable.ic_format_list_checks, string10, nc8.I(new x37(zIsBackupAllFolders ? contextC.getString(R.string.all_folder_setups) : contextC.getString(R.string.selected_folder_setups_only))), (Set) null, 392));
                                if (zIsBackupAllFolders) {
                                    i2 = 10;
                                } else {
                                    String itemId10 = folders2.getItemId();
                                    w37 w37Var10 = w37.Folders;
                                    List<FolderItem> folderItems = folders2.getFolderItems();
                                    boolean z5 = folderItems == null || folderItems.isEmpty();
                                    String string11 = contextC.getString(R.string.select_folder_setups);
                                    string11.getClass();
                                    if (folderNames.isEmpty()) {
                                        listI = nc8.I(new x37("Select folders"));
                                    } else {
                                        ArrayList arrayList17 = new ArrayList(hl1.G0(folderNames, 10));
                                        Iterator it5 = folderNames.iterator();
                                        while (it5.hasNext()) {
                                            arrayList17.add(new x37((String) it5.next()));
                                        }
                                        listI = arrayList17;
                                    }
                                    i2 = 10;
                                    arrayList16.add(new y37(itemId10, w37Var10, zIsEnabled, z5, R.drawable.ic_folder, string11, listI, (Set) null, 384));
                                }
                                arrayList16.add(a.b(scheduleItem, zIsEnabled, locations7));
                                if (locations7.contains(q05.CLOUD)) {
                                    arrayList16.add(a.d(scheduleItem, zIsEnabled, syncOption7));
                                }
                                String itemId11 = folders2.getItemId();
                                w37 w37Var11 = w37.BackupStrategy;
                                String string12 = contextC.getString(R.string.folder_backups_strategy);
                                string12.getClass();
                                arrayList16.add(new y37(itemId11, w37Var11, zIsEnabled, false, R.drawable.ic_multiple_backups, string12, nc8.I(new x37(contextC.getString(backupStrategy.getTitleStringRes()))), (Set) null, 392));
                                arrayList16.add(a.c(scheduleItem, zIsEnabled));
                                list = arrayList16;
                            } else {
                                list = ov2Var;
                                i2 = 10;
                            }
                            list2 = list;
                            str = title3;
                            r12 = objY0;
                        }
                        arrayList11.add(new b(str, r12, string, zIsEnabled, scheduleItem.getNextRunText(), scheduleItem.getLastRunText(), scheduleItem.hasLastRunError(), list2, new z28(scheduleItem, 17)));
                        i = i2;
                        it4 = it;
                    }
                }
                list2 = listP0;
                str = title;
                r12 = objConditionMsg;
                i2 = 10;
                arrayList11.add(new b(str, r12, string, zIsEnabled, scheduleItem.getNextRunText(), scheduleItem.getLastRunText(), scheduleItem.hasLastRunError(), list2, new z28(scheduleItem, 17)));
                i = i2;
                it4 = it;
            }
            m47Var = new m47(arrayList11, this.b, scheduleDataC);
        } else {
            m47Var = l47.a;
        }
        ex6Var.k(m47Var);
        return be8.a;
    }
}
