package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpProgressMonitor;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mu3 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mu3(t15 t15Var, String str, li4 li4Var) {
        this.a = 1;
        this.b = t15Var;
        this.c = str;
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0531  */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        InputStream wu0Var;
        Collection<Config> values;
        boolean z;
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = 4;
        Object obj3 = this.c;
        Object obj4 = this.b;
        Long lValueOf = null;
        switch (i) {
            case 0:
                pu3 pu3Var = (pu3) obj4;
                l86 l86Var = (l86) obj3;
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                ((Integer) obj2).getClass();
                if (pu3Var.c.isRunning()) {
                    ag8.g(pu3Var, l);
                    long jLongValue2 = ((Number) l86Var.b.invoke()).longValue();
                    long j = jLongValue2 - l86Var.e;
                    long j2 = l86Var.a;
                    if (j2 <= 0 || jLongValue < j2) {
                        long j3 = l86Var.c;
                        if (j3 <= 0 || j >= j3) {
                            l86Var.e = jLongValue2;
                            lValueOf = Long.valueOf(l86Var.d.a(jLongValue));
                        }
                    } else {
                        l86Var.e = jLongValue2;
                        lValueOf = Long.valueOf(l86Var.d.a(jLongValue));
                    }
                    if (lValueOf != null && lValueOf.longValue() > 0) {
                        p93 p93Var = p93.a;
                        p93.c(lValueOf);
                    }
                }
                return be8Var;
            case 1:
                t15 t15Var = (t15) obj4;
                String str = (String) obj3;
                ChannelSftp channelSftp = (ChannelSftp) obj;
                Session session = (Session) obj2;
                channelSftp.getClass();
                session.getClass();
                try {
                    if (t15Var != null) {
                        long j4 = t15Var.a;
                        InputStream inputStream = channelSftp.get(str, (SftpProgressMonitor) null, j4);
                        long j5 = (t15Var.b - j4) + 1;
                        vu0 vu0VarB = wu0.b();
                        vu0VarB.k = new y4(inputStream);
                        vu0VarB.K(j5);
                        wu0Var = new wu0(vu0VarB);
                    } else {
                        wu0Var = channelSftp.get(str);
                    }
                    return new tc4(wu0Var, new l30(9, channelSftp, session), 4);
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "JschService", "get: ".concat(io4.b(e)), null, 4, null);
                    throw e;
                }
            default:
                j57 j57Var = (j57) obj4;
                y37 y37Var = (y37) obj;
                ((Integer) obj2).getClass();
                y37Var.getClass();
                w37 w37Var = y37Var.b;
                final ScheduleItem scheduleItem = ((b) obj3).q;
                m37 m37Var = j57Var.m;
                HomeActivity homeActivity = j57Var.l;
                boolean zIsEnabled = scheduleItem.isEnabled();
                final int i3 = 2;
                final int i4 = 0;
                final int i5 = 1;
                if (scheduleItem instanceof ScheduleItem.AppsQuickActions) {
                    switch (i57.b[w37Var.ordinal()]) {
                        case 1:
                            ScheduleItem.AppsQuickActions appsQuickActions = (ScheduleItem.AppsQuickActions) scheduleItem;
                            c57 c57Var = new c57(scheduleItem, 0);
                            if (!zIsEnabled) {
                                return be8Var;
                            }
                            new id6(homeActivity, appsQuickActions.getQuickActionIds(), new eh2(i2, c57Var, j57Var)).G(homeActivity, null);
                            return be8Var;
                        case 2:
                        case 3:
                        case XmlPullParser.COMMENT /* 9 */:
                        case 10:
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            return be8Var;
                        case 4:
                            ScheduleItem.AppsQuickActions appsQuickActions2 = (ScheduleItem.AppsQuickActions) scheduleItem;
                            v47 v47Var = new v47(scheduleItem, i4);
                            if (!zIsEnabled) {
                                return be8Var;
                            }
                            final ArrayList arrayListX1 = el1.x1(ScheduleItem.AppsQuickActions.a.getEntries());
                            try {
                                SharedPreferences sharedPreferences = cz4.f;
                                if (sharedPreferences == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                z = sharedPreferences.getBoolean("show_system_apps", false);
                                if (!z) {
                                    arrayListX1.remove(ScheduleItem.AppsQuickActions.a.System);
                                }
                                List<ScheduleItem.AppsQuickActions.a> allowedApps = appsQuickActions2.getAllowedApps();
                                allowedApps.getClass();
                                final LinkedHashSet linkedHashSet = new LinkedHashSet(allowedApps);
                                hv1 hv1Var = new hv1(homeActivity, R.style.M3AlertDialogTheme);
                                homeActivity.getClass();
                                s35 s35Var = new s35(homeActivity, R.style.M3AlertDialogTheme, hv1Var, null);
                                s35Var.v(R.string.allowed_apps);
                                ArrayList arrayList = new ArrayList(hl1.G0(arrayListX1, 10));
                                Iterator it = arrayListX1.iterator();
                                while (it.hasNext()) {
                                    arrayList.add(((ScheduleItem.AppsQuickActions.a) it.next()).toDisplayString(false));
                                }
                                CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new String[0]);
                                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayListX1, 10));
                                Iterator it2 = arrayListX1.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(Boolean.valueOf(appsQuickActions2.getAllowedApps().contains((ScheduleItem.AppsQuickActions.a) it2.next())));
                                }
                                s35Var.o(charSequenceArr, el1.r1(arrayList2), new DialogInterface.OnMultiChoiceClickListener() { // from class: d57
                                    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i6, boolean z2) {
                                        ScheduleItem.AppsQuickActions.a aVar = (ScheduleItem.AppsQuickActions.a) arrayListX1.get(i6);
                                        Set set = linkedHashSet;
                                        if (z2) {
                                            set.add(aVar);
                                        } else {
                                            set.remove(aVar);
                                        }
                                        dialogInterface.getClass();
                                        ((wa) dialogInterface).f(-1).setEnabled(!set.isEmpty());
                                    }
                                });
                                s35Var.s(R.string.ok, new ib1(i3, v47Var, linkedHashSet, j57Var));
                                s35Var.q(R.string.cancel, null);
                                s35Var.m();
                                return be8Var;
                            } catch (ClassCastException unused) {
                                z = false;
                            }
                            break;
                        case 5:
                            j57Var.y(zIsEnabled, ((ScheduleItem.AppsQuickActions) scheduleItem).getAppParts(), new mt3() { // from class: t47
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i6 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i6) {
                                        case 0:
                                            List list = (List) obj5;
                                            list.getClass();
                                            ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                            List list2 = !ji8.v(list) ? list : null;
                                            return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 59, null);
                                        default:
                                            Set set = (Set) obj5;
                                            set.getClass();
                                            return ScheduleItem.AppsQuickActions.copy$default((ScheduleItem.AppsQuickActions) scheduleItem2, null, null, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, false, 495, null);
                                    }
                                }
                            });
                            return be8Var;
                        case 6:
                            j57Var.z(zIsEnabled, ((ScheduleItem.AppsQuickActions) scheduleItem).getLocations(), new mt3() { // from class: u47
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i6 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i6) {
                                        case 0:
                                            SyncOption syncOption = (SyncOption) obj5;
                                            syncOption.getClass();
                                            ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                            if (!ji8.r(wallpapers.getLocations()) || syncOption == SyncOption.WIFI) {
                                                syncOption = null;
                                            }
                                            return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
                                        default:
                                            List list = (List) obj5;
                                            list.getClass();
                                            ScheduleItem.AppsQuickActions appsQuickActions3 = (ScheduleItem.AppsQuickActions) scheduleItem2;
                                            List list2 = !ji8.v(list) ? list : null;
                                            return ScheduleItem.AppsQuickActions.copy$default(appsQuickActions3, null, null, null, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 479, null);
                                    }
                                }
                            });
                            return be8Var;
                        case 7:
                            j57Var.B(zIsEnabled, ((ScheduleItem.AppsQuickActions) scheduleItem).getSyncOption(), new v47(scheduleItem, i5));
                            return be8Var;
                        case 8:
                            j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: w47
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i6 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i6) {
                                        case 0:
                                            Set set = (Set) obj5;
                                            set.getClass();
                                            ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                            Set set2 = set.size() != 7 ? set : null;
                                            return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                        default:
                                            Set set3 = (Set) obj5;
                                            set3.getClass();
                                            ScheduleItem.AppsQuickActions appsQuickActions3 = (ScheduleItem.AppsQuickActions) scheduleItem2;
                                            Set set4 = set3.size() != 7 ? set3 : null;
                                            return ScheduleItem.AppsQuickActions.copy$default(appsQuickActions3, null, null, null, null, null, null, null, set4 != null ? el1.Y0(set4, null, null, null, null, 63) : null, false, 383, null);
                                    }
                                }
                            });
                            return be8Var;
                        default:
                            q.j();
                            break;
                    }
                } else if (scheduleItem instanceof ScheduleItem.AppsLabels) {
                    switch (i57.b[w37Var.ordinal()]) {
                        case 1:
                        case 3:
                        case 4:
                        case XmlPullParser.COMMENT /* 9 */:
                        case 10:
                        case ModuleDescriptor.MODULE_VERSION /* 11 */:
                            return be8Var;
                        case 2:
                            ScheduleItem.AppsLabels appsLabels = (ScheduleItem.AppsLabels) scheduleItem;
                            if (!zIsEnabled) {
                                return be8Var;
                            }
                            j57Var.s = appsLabels;
                            int i6 = ScheduleLabelsSelectActivity.X;
                            List<String> labelIds = appsLabels.getLabelIds();
                            Bundle bundle = new Bundle();
                            if (labelIds != null && !labelIds.isEmpty()) {
                                bundle.putStringArrayList("extra_selected_labels", new ArrayList<>(labelIds));
                            }
                            m37Var.e.a(bundle);
                            return be8Var;
                        case 5:
                            j57Var.y(zIsEnabled, ((ScheduleItem.AppsLabels) scheduleItem).getAppParts(), new mt3() { // from class: x47
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i7 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i7) {
                                        case 0:
                                            List list = (List) obj5;
                                            list.getClass();
                                            ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem2;
                                            List list2 = !ji8.v(list) ? list : null;
                                            return ScheduleItem.Wifi.copy$default(wifi, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 59, null);
                                        default:
                                            Set set = (Set) obj5;
                                            set.getClass();
                                            return ScheduleItem.AppsLabels.copy$default((ScheduleItem.AppsLabels) scheduleItem2, null, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, false, 247, null);
                                    }
                                }
                            });
                            return be8Var;
                        case 6:
                            j57Var.z(zIsEnabled, ((ScheduleItem.AppsLabels) scheduleItem).getLocations(), new y47(scheduleItem, i5));
                            return be8Var;
                        case 7:
                            j57Var.B(zIsEnabled, ((ScheduleItem.AppsLabels) scheduleItem).getSyncOption(), new mt3() { // from class: z47
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i7 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i7) {
                                        case 0:
                                            Set set = (Set) obj5;
                                            set.getClass();
                                            ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem2;
                                            Set set2 = set.size() != 7 ? set : null;
                                            return ScheduleItem.Wifi.copy$default(wifi, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                        default:
                                            SyncOption syncOption = (SyncOption) obj5;
                                            syncOption.getClass();
                                            ScheduleItem.AppsLabels appsLabels2 = (ScheduleItem.AppsLabels) scheduleItem2;
                                            if (!ji8.r(appsLabels2.getLocations()) || syncOption == SyncOption.WIFI) {
                                                syncOption = null;
                                            }
                                            return ScheduleItem.AppsLabels.copy$default(appsLabels2, null, null, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 223, null);
                                    }
                                }
                            });
                            return be8Var;
                        case 8:
                            j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: a57
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj5) {
                                    int i7 = i5;
                                    ScheduleItem scheduleItem2 = scheduleItem;
                                    switch (i7) {
                                        case 0:
                                            List list = (List) obj5;
                                            list.getClass();
                                            ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                            List list2 = !ji8.v(list) ? list : null;
                                            return ScheduleItem.Folders.copy$default(folders, null, null, false, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, null, false, 495, null);
                                        case 1:
                                            Set set = (Set) obj5;
                                            set.getClass();
                                            ScheduleItem.AppsLabels appsLabels2 = (ScheduleItem.AppsLabels) scheduleItem2;
                                            Set set2 = set.size() != 7 ? set : null;
                                            return ScheduleItem.AppsLabels.copy$default(appsLabels2, null, null, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 191, null);
                                        default:
                                            List list3 = (List) obj5;
                                            list3.getClass();
                                            ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem2;
                                            List list4 = !ji8.v(list3) ? list3 : null;
                                            return ScheduleItem.Messages.copy$default(messages, null, null, list4 != null ? el1.Y0(list4, null, null, null, null, 63) : null, null, null, false, 59, null);
                                    }
                                }
                            });
                            return be8Var;
                        default:
                            q.j();
                            break;
                    }
                } else {
                    int i7 = 3;
                    if (scheduleItem instanceof ScheduleItem.AppConfig) {
                        switch (i57.b[w37Var.ordinal()]) {
                            case 1:
                            case 2:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case XmlPullParser.COMMENT /* 9 */:
                            case 10:
                            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                return be8Var;
                            case 3:
                                ScheduleItem.AppConfig appConfig = (ScheduleItem.AppConfig) scheduleItem;
                                y47 y47Var = new y47(scheduleItem, i3);
                                if (!zIsEnabled) {
                                    return be8Var;
                                }
                                ConfigsData configsData = br1.e;
                                List listN1 = (configsData == null || (values = configsData.getValues()) == null) ? null : el1.n1(el1.v1(values), new cz3(3));
                                if (listN1 == null || listN1.isEmpty()) {
                                    int i8 = ConfigListActivity.R;
                                    jb9.f0(homeActivity);
                                    return be8Var;
                                }
                                Iterator it3 = listN1.iterator();
                                int i9 = 0;
                                while (true) {
                                    if (!it3.hasNext()) {
                                        i9 = -1;
                                    } else if (!pe4.d(((Config) it3.next()).getItemId(), appConfig.getConfigId())) {
                                        i9++;
                                    }
                                }
                                Integer numValueOf = Integer.valueOf(i9);
                                if (i9 < 0) {
                                    numValueOf = null;
                                }
                                int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
                                hv1 hv1Var2 = new hv1(homeActivity, R.style.M3AlertDialogTheme);
                                homeActivity.getClass();
                                s35 s35Var2 = new s35(homeActivity, R.style.M3AlertDialogTheme, hv1Var2, null);
                                s35Var2.v(R.string.configs);
                                ArrayList arrayList3 = new ArrayList(hl1.G0(listN1, 10));
                                Iterator it4 = listN1.iterator();
                                while (it4.hasNext()) {
                                    arrayList3.add(((Config) it4.next()).getName());
                                }
                                s35Var2.u((CharSequence[]) arrayList3.toArray(new String[0]), iIntValue, new mb1(i5, listN1, y47Var, j57Var));
                                s35Var2.q(R.string.cancel, null);
                                s35Var2.m();
                                return be8Var;
                            case 8:
                                j57Var.A(zIsEnabled, scheduleItem, new c57(scheduleItem, 1));
                                return be8Var;
                            default:
                                q.j();
                                break;
                        }
                    } else if (scheduleItem instanceof ScheduleItem.Messages) {
                        switch (i57.b[w37Var.ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case XmlPullParser.COMMENT /* 9 */:
                            case 10:
                            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                return be8Var;
                            case 6:
                                j57Var.z(zIsEnabled, ((ScheduleItem.Messages) scheduleItem).getLocations(), new mt3() { // from class: a57
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i3;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                List list = (List) obj5;
                                                list.getClass();
                                                ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                List list2 = !ji8.v(list) ? list : null;
                                                return ScheduleItem.Folders.copy$default(folders, null, null, false, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, null, false, 495, null);
                                            case 1:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.AppsLabels appsLabels2 = (ScheduleItem.AppsLabels) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.AppsLabels.copy$default(appsLabels2, null, null, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 191, null);
                                            default:
                                                List list3 = (List) obj5;
                                                list3.getClass();
                                                ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem2;
                                                List list4 = !ji8.v(list3) ? list3 : null;
                                                return ScheduleItem.Messages.copy$default(messages, null, null, list4 != null ? el1.Y0(list4, null, null, null, null, 63) : null, null, null, false, 59, null);
                                        }
                                    }
                                });
                                return be8Var;
                            case 7:
                                j57Var.B(zIsEnabled, ((ScheduleItem.Messages) scheduleItem).getSyncOption(), new cz(scheduleItem, 18));
                                return be8Var;
                            case 8:
                                j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: b57
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i5;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                SyncOption syncOption = (SyncOption) obj5;
                                                syncOption.getClass();
                                                ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                if (!ji8.r(folders.getLocations()) || syncOption == SyncOption.WIFI) {
                                                    syncOption = null;
                                                }
                                                return ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, syncOption != null ? syncOption.toString() : null, null, null, false, 479, null);
                                            default:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.Messages.copy$default(messages, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                        }
                                    }
                                });
                                return be8Var;
                            default:
                                q.j();
                                break;
                        }
                    } else if (scheduleItem instanceof ScheduleItem.CallLogs) {
                        switch (i57.b[w37Var.ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case XmlPullParser.COMMENT /* 9 */:
                            case 10:
                            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                return be8Var;
                            case 6:
                                j57Var.z(zIsEnabled, ((ScheduleItem.CallLogs) scheduleItem).getLocations(), new v10(scheduleItem, 19));
                                return be8Var;
                            case 7:
                                j57Var.B(zIsEnabled, ((ScheduleItem.CallLogs) scheduleItem).getSyncOption(), new mt3() { // from class: s47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i3;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.CallLogs.copy$default(callLogs, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                            case 1:
                                                Set set3 = (Set) obj5;
                                                set3.getClass();
                                                ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                Set set4 = set3.size() != 7 ? set3 : null;
                                                return ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, null, null, set4 != null ? el1.Y0(set4, null, null, null, null, 63) : null, false, 383, null);
                                            default:
                                                SyncOption syncOption = (SyncOption) obj5;
                                                syncOption.getClass();
                                                ScheduleItem.CallLogs callLogs2 = (ScheduleItem.CallLogs) scheduleItem2;
                                                if (!ji8.r(callLogs2.getLocations()) || syncOption == SyncOption.WIFI) {
                                                    syncOption = null;
                                                }
                                                return ScheduleItem.CallLogs.copy$default(callLogs2, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
                                        }
                                    }
                                });
                                return be8Var;
                            case 8:
                                j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: s47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.CallLogs.copy$default(callLogs, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                            case 1:
                                                Set set3 = (Set) obj5;
                                                set3.getClass();
                                                ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                Set set4 = set3.size() != 7 ? set3 : null;
                                                return ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, null, null, set4 != null ? el1.Y0(set4, null, null, null, null, 63) : null, false, 383, null);
                                            default:
                                                SyncOption syncOption = (SyncOption) obj5;
                                                syncOption.getClass();
                                                ScheduleItem.CallLogs callLogs2 = (ScheduleItem.CallLogs) scheduleItem2;
                                                if (!ji8.r(callLogs2.getLocations()) || syncOption == SyncOption.WIFI) {
                                                    syncOption = null;
                                                }
                                                return ScheduleItem.CallLogs.copy$default(callLogs2, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
                                        }
                                    }
                                });
                                return be8Var;
                            default:
                                q.j();
                                break;
                        }
                    } else if (scheduleItem instanceof ScheduleItem.Wallpapers) {
                        switch (i57.b[w37Var.ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case XmlPullParser.COMMENT /* 9 */:
                            case 10:
                            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                return be8Var;
                            case 6:
                                j57Var.z(zIsEnabled, ((ScheduleItem.Wallpapers) scheduleItem).getLocations(), new mt3() { // from class: t47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                List list = (List) obj5;
                                                list.getClass();
                                                ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                                List list2 = !ji8.v(list) ? list : null;
                                                return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 59, null);
                                            default:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                return ScheduleItem.AppsQuickActions.copy$default((ScheduleItem.AppsQuickActions) scheduleItem2, null, null, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, false, 495, null);
                                        }
                                    }
                                });
                                return be8Var;
                            case 7:
                                j57Var.B(zIsEnabled, ((ScheduleItem.Wallpapers) scheduleItem).getSyncOption(), new mt3() { // from class: u47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                SyncOption syncOption = (SyncOption) obj5;
                                                syncOption.getClass();
                                                ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                                if (!ji8.r(wallpapers.getLocations()) || syncOption == SyncOption.WIFI) {
                                                    syncOption = null;
                                                }
                                                return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
                                            default:
                                                List list = (List) obj5;
                                                list.getClass();
                                                ScheduleItem.AppsQuickActions appsQuickActions3 = (ScheduleItem.AppsQuickActions) scheduleItem2;
                                                List list2 = !ji8.v(list) ? list : null;
                                                return ScheduleItem.AppsQuickActions.copy$default(appsQuickActions3, null, null, null, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 479, null);
                                        }
                                    }
                                });
                                return be8Var;
                            case 8:
                                j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: w47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.Wallpapers.copy$default(wallpapers, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                            default:
                                                Set set3 = (Set) obj5;
                                                set3.getClass();
                                                ScheduleItem.AppsQuickActions appsQuickActions3 = (ScheduleItem.AppsQuickActions) scheduleItem2;
                                                Set set4 = set3.size() != 7 ? set3 : null;
                                                return ScheduleItem.AppsQuickActions.copy$default(appsQuickActions3, null, null, null, null, null, null, null, set4 != null ? el1.Y0(set4, null, null, null, null, 63) : null, false, 383, null);
                                        }
                                    }
                                });
                                return be8Var;
                            default:
                                q.j();
                                break;
                        }
                    } else if (scheduleItem instanceof ScheduleItem.Wifi) {
                        switch (i57.b[w37Var.ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case XmlPullParser.COMMENT /* 9 */:
                            case 10:
                            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                return be8Var;
                            case 6:
                                j57Var.z(zIsEnabled, ((ScheduleItem.Wifi) scheduleItem).getLocations(), new mt3() { // from class: x47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                List list = (List) obj5;
                                                list.getClass();
                                                ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem2;
                                                List list2 = !ji8.v(list) ? list : null;
                                                return ScheduleItem.Wifi.copy$default(wifi, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 59, null);
                                            default:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                return ScheduleItem.AppsLabels.copy$default((ScheduleItem.AppsLabels) scheduleItem2, null, null, null, el1.Y0(set, null, null, null, null, 63), null, null, null, false, 247, null);
                                        }
                                    }
                                });
                                return be8Var;
                            case 7:
                                j57Var.B(zIsEnabled, ((ScheduleItem.Wifi) scheduleItem).getSyncOption(), new y47(scheduleItem, i4));
                                return be8Var;
                            case 8:
                                j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: z47
                                    @Override // defpackage.mt3
                                    public final Object invoke(Object obj5) {
                                        int i10 = i4;
                                        ScheduleItem scheduleItem2 = scheduleItem;
                                        switch (i10) {
                                            case 0:
                                                Set set = (Set) obj5;
                                                set.getClass();
                                                ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) scheduleItem2;
                                                Set set2 = set.size() != 7 ? set : null;
                                                return ScheduleItem.Wifi.copy$default(wifi, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                            default:
                                                SyncOption syncOption = (SyncOption) obj5;
                                                syncOption.getClass();
                                                ScheduleItem.AppsLabels appsLabels2 = (ScheduleItem.AppsLabels) scheduleItem2;
                                                if (!ji8.r(appsLabels2.getLocations()) || syncOption == SyncOption.WIFI) {
                                                    syncOption = null;
                                                }
                                                return ScheduleItem.AppsLabels.copy$default(appsLabels2, null, null, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 223, null);
                                        }
                                    }
                                });
                                return be8Var;
                            default:
                                q.j();
                                break;
                        }
                    } else {
                        if (scheduleItem instanceof ScheduleItem.Folders) {
                            switch (i57.b[w37Var.ordinal()]) {
                                case 6:
                                    j57Var.z(zIsEnabled, ((ScheduleItem.Folders) scheduleItem).getLocations(), new mt3() { // from class: a57
                                        @Override // defpackage.mt3
                                        public final Object invoke(Object obj5) {
                                            int i10 = i4;
                                            ScheduleItem scheduleItem2 = scheduleItem;
                                            switch (i10) {
                                                case 0:
                                                    List list = (List) obj5;
                                                    list.getClass();
                                                    ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                    List list2 = !ji8.v(list) ? list : null;
                                                    return ScheduleItem.Folders.copy$default(folders, null, null, false, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, null, false, 495, null);
                                                case 1:
                                                    Set set = (Set) obj5;
                                                    set.getClass();
                                                    ScheduleItem.AppsLabels appsLabels2 = (ScheduleItem.AppsLabels) scheduleItem2;
                                                    Set set2 = set.size() != 7 ? set : null;
                                                    return ScheduleItem.AppsLabels.copy$default(appsLabels2, null, null, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 191, null);
                                                default:
                                                    List list3 = (List) obj5;
                                                    list3.getClass();
                                                    ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem2;
                                                    List list4 = !ji8.v(list3) ? list3 : null;
                                                    return ScheduleItem.Messages.copy$default(messages, null, null, list4 != null ? el1.Y0(list4, null, null, null, null, 63) : null, null, null, false, 59, null);
                                            }
                                        }
                                    });
                                    return be8Var;
                                case 7:
                                    j57Var.B(zIsEnabled, ((ScheduleItem.Folders) scheduleItem).getSyncOption(), new mt3() { // from class: b57
                                        @Override // defpackage.mt3
                                        public final Object invoke(Object obj5) {
                                            int i10 = i4;
                                            ScheduleItem scheduleItem2 = scheduleItem;
                                            switch (i10) {
                                                case 0:
                                                    SyncOption syncOption = (SyncOption) obj5;
                                                    syncOption.getClass();
                                                    ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                    if (!ji8.r(folders.getLocations()) || syncOption == SyncOption.WIFI) {
                                                        syncOption = null;
                                                    }
                                                    return ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, syncOption != null ? syncOption.toString() : null, null, null, false, 479, null);
                                                default:
                                                    Set set = (Set) obj5;
                                                    set.getClass();
                                                    ScheduleItem.Messages messages = (ScheduleItem.Messages) scheduleItem2;
                                                    Set set2 = set.size() != 7 ? set : null;
                                                    return ScheduleItem.Messages.copy$default(messages, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                            }
                                        }
                                    });
                                    return be8Var;
                                case 8:
                                    j57Var.A(zIsEnabled, scheduleItem, new mt3() { // from class: s47
                                        @Override // defpackage.mt3
                                        public final Object invoke(Object obj5) {
                                            int i10 = i5;
                                            ScheduleItem scheduleItem2 = scheduleItem;
                                            switch (i10) {
                                                case 0:
                                                    Set set = (Set) obj5;
                                                    set.getClass();
                                                    ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) scheduleItem2;
                                                    Set set2 = set.size() != 7 ? set : null;
                                                    return ScheduleItem.CallLogs.copy$default(callLogs, null, null, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, false, 47, null);
                                                case 1:
                                                    Set set3 = (Set) obj5;
                                                    set3.getClass();
                                                    ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem2;
                                                    Set set4 = set3.size() != 7 ? set3 : null;
                                                    return ScheduleItem.Folders.copy$default(folders, null, null, false, null, null, null, null, set4 != null ? el1.Y0(set4, null, null, null, null, 63) : null, false, 383, null);
                                                default:
                                                    SyncOption syncOption = (SyncOption) obj5;
                                                    syncOption.getClass();
                                                    ScheduleItem.CallLogs callLogs2 = (ScheduleItem.CallLogs) scheduleItem2;
                                                    if (!ji8.r(callLogs2.getLocations()) || syncOption == SyncOption.WIFI) {
                                                        syncOption = null;
                                                    }
                                                    return ScheduleItem.CallLogs.copy$default(callLogs2, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
                                            }
                                        }
                                    });
                                    return be8Var;
                                case XmlPullParser.COMMENT /* 9 */:
                                    ScheduleItem.Folders folders = (ScheduleItem.Folders) scheduleItem;
                                    j57Var.t = folders;
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putBoolean("EXTRA_BACKUP_ALL_FOLDERS", folders.isBackupAllFolders());
                                    List<FolderItem> folderItems = folders.getFolderItems();
                                    if (folderItems == null) {
                                        folderItems = ov2.a;
                                    }
                                    bundle2.putParcelableArrayList("EXTRA_SELECTED_FOLDER_ITEMS", new ArrayList<>(folderItems));
                                    m37Var.f.a(bundle2);
                                    return be8Var;
                                case 10:
                                    boolean zIsBackupAllFolders = ((ScheduleItem.Folders) scheduleItem).isBackupAllFolders();
                                    hq0 hq0Var = new hq0(4, scheduleItem, j57Var);
                                    homeActivity.getClass();
                                    List listA0 = fl1.A0(homeActivity.getString(R.string.all_folder_setups), homeActivity.getString(R.string.selected_folder_setups_only));
                                    int i10 = !zIsBackupAllFolders ? 1 : 0;
                                    s35 s35Var3 = new s35(homeActivity, R.style.M3AlertDialogTheme, new hv1(homeActivity, R.style.M3AlertDialogTheme), null);
                                    s35Var3.v(R.string.folder_setups);
                                    s35Var3.u((CharSequence[]) listA0.toArray(new String[0]), i10, new vf3(hq0Var, i5));
                                    s35Var3.q(R.string.cancel, null);
                                    s35Var3.m();
                                    return be8Var;
                                case ModuleDescriptor.MODULE_VERSION /* 11 */:
                                    if (!zIsEnabled) {
                                        return be8Var;
                                    }
                                    new rj3(homeActivity, false, ((ScheduleItem.Folders) scheduleItem).getBackupStrategy(), 8).k(new qs(i7, scheduleItem, j57Var));
                                    return be8Var;
                                default:
                                    return be8Var;
                            }
                        }
                        q.j();
                    }
                }
                return null;
        }
    }

    public /* synthetic */ mu3(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
