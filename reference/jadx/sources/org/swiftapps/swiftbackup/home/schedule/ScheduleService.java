package org.swiftapps.swiftbackup.home.schedule;

import android.app.IntentService;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import defpackage.b67;
import defpackage.bj0;
import defpackage.bt3;
import defpackage.c40;
import defpackage.c47;
import defpackage.cv;
import defpackage.cz4;
import defpackage.d01;
import defpackage.d45;
import defpackage.dj7;
import defpackage.ds8;
import defpackage.dz5;
import defpackage.el1;
import defpackage.eq3;
import defpackage.ey7;
import defpackage.ff5;
import defpackage.fl;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.g00;
import defpackage.g47;
import defpackage.gs8;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.hs8;
import defpackage.hy7;
import defpackage.ih6;
import defpackage.io4;
import defpackage.is8;
import defpackage.jc2;
import defpackage.ji8;
import defpackage.jx;
import defpackage.kc2;
import defpackage.ke;
import defpackage.kt8;
import defpackage.ky7;
import defpackage.l30;
import defpackage.ld6;
import defpackage.lh6;
import defpackage.mh;
import defpackage.mp6;
import defpackage.mt3;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.ny2;
import defpackage.o37;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.q;
import defpackage.q05;
import defpackage.qb1;
import defpackage.qc2;
import defpackage.qe3;
import defpackage.qp3;
import defpackage.qv1;
import defpackage.qy5;
import defpackage.re3;
import defpackage.rv7;
import defpackage.rw6;
import defpackage.ry5;
import defpackage.sl4;
import defpackage.sv7;
import defpackage.tb1;
import defpackage.tt8;
import defpackage.tv7;
import defpackage.u48;
import defpackage.ud5;
import defpackage.us8;
import defpackage.uv;
import defpackage.vq;
import defpackage.vr6;
import defpackage.w14;
import defpackage.wg5;
import defpackage.wo5;
import defpackage.wp8;
import defpackage.x50;
import defpackage.xs1;
import defpackage.xy7;
import defpackage.y10;
import defpackage.yy3;
import defpackage.z11;
import defpackage.zc2;
import defpackage.zn4;
import defpackage.zn7;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.GlobalScheduleError;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleService extends IntentService {
    public static String p = "ScheduleService";
    public static mt3 q;
    public boolean a;
    public RunMode b;
    public boolean c;
    public volatile boolean d;
    public volatile String e;
    public final Object f;
    public final gv7 k;
    public final gv7 n;

    public ScheduleService() {
        super(p);
        this.b = RunMode.Schedules.INSTANCE;
        this.f = new Object();
        this.k = new gv7(new fl(11));
        this.n = new gv7(new jx(21));
    }

    public static Notification a() {
        Intent intent;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        wo5 wo5Var = new wo5(contextC, "normal_channel");
        Intent launchIntentForPackage = contextC.getPackageManager().getLaunchIntentForPackage(contextC.getPackageName());
        Intent flags = null;
        if (launchIntentForPackage != null && (intent = launchIntentForPackage.setPackage(null)) != null) {
            flags = intent.setFlags(270532608);
        }
        try {
            wo5Var.g = PendingIntent.getActivity(contextC, 0, flags, 201326592);
        } catch (Exception e) {
            Log.e(p, "Error creating PendingIntent", e);
            vr6.e$default(vr6.INSTANCE, p, "Error creating PendingIntent: ".concat(io4.b(e)), null, 4, null);
        }
        wo5Var.c(2);
        wo5Var.e = wo5.b(contextC.getString(R.string.initializing));
        wo5Var.c(8);
        wo5Var.r = contextC.getColor(R.color.acnt);
        wo5Var.u.icon = R.drawable.ic_stat;
        wo5Var.m = 100;
        wo5Var.n = 0;
        wo5Var.o = true;
        Notification notificationA = wo5Var.a();
        notificationA.getClass();
        return notificationA;
    }

    public final void b(jc2 jc2Var) {
        String str;
        synchronized (this) {
            str = this.e;
            this.e = null;
        }
        if (str != null) {
            kc2 kc2Var = kc2.a;
            kc2.c(str, jc2Var);
        }
    }

    public final xy7 c(String str, List list, SyncOption syncOption) {
        ScheduleLastRunDetails started;
        ArrayList arrayListX1 = el1.x1(list);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, p, "getMessageCallsTaskParameters: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
        q05 q05Var = q05.CLOUD;
        if (arrayListX1.contains(q05Var)) {
            started = g("getMessageCallsTaskParameters: ", arrayListX1);
            if (started == null && !f(str, syncOption)) {
                vr6.i$default(vr6Var, p, "getMessageCallsTaskParameters: Sync option not met: " + syncOption, null, 4, null);
                ScheduleLastRunDetails.SkippedUploadSyncOptionsError skippedUploadSyncOptionsError = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
                if (ji8.t(arrayListX1)) {
                    vr6.e$default(vr6Var, p, "getMessageCallsTaskParameters: Can't proceed as syncing isn't possible and destination is only cloud", null, 4, null);
                    ScheduleLastRunDetails.Companion.getClass();
                    o.d(str, skippedUploadSyncOptionsError);
                    return null;
                }
                arrayListX1.remove(q05Var);
                vr6.e$default(vr6Var, p, "getMessageCallsTaskParameters: Removed cloud location", null, 4, null);
                started = skippedUploadSyncOptionsError;
            }
        } else {
            started = null;
        }
        if (arrayListX1.isEmpty()) {
            if (started != null) {
                ScheduleLastRunDetails.Companion.getClass();
                o.d(str, started);
            }
            return null;
        }
        if (started == null) {
            started = new ScheduleLastRunDetails.Started(0L, 1, null);
        }
        ScheduleLastRunDetails.Companion.getClass();
        o.d(str, started);
        return new xy7(arrayListX1, false);
    }

    public final void d(int i, String str) {
        int i2 = 1;
        this.d = true;
        stopForeground(1);
        stopSelf();
        vr6.w$default(vr6.INSTANCE, p, u48.k(i, "Foreground service timeout: startId=", ", fgsType=", str), null, 4, null);
        o37.d();
        mt3 mt3Var = q;
        if (mt3Var != null) {
            mt3Var.invoke(Boolean.FALSE);
        }
        q = null;
        zn4 zn4Var = zn4.a;
        zn4.b(null, new uv(this, null, i2));
    }

    /* JADX WARN: Code duplicated, block: B:150:0x047d  */
    /* JADX WARN: Code duplicated, block: B:242:0x072e  */
    /* JADX WARN: Code duplicated, block: B:302:0x08ee  */
    /* JADX WARN: Code duplicated, block: B:385:0x0ab4  */
    /* JADX WARN: Code duplicated, block: B:448:0x0480 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0238  */
    /* JADX WARN: Code duplicated, block: B:72:0x023c  */
    /* JADX WARN: Code duplicated, block: B:75:0x025c  */
    /* JADX WARN: Code duplicated, block: B:76:0x029a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v128 */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v49, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r1v5, types: [ov2] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v84, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r5v45, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v46, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v51, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v53, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v54 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Iterable, java.util.Collection, java.util.List] */
    public final void e() {
        ?? I;
        ScheduleLastRunDetails blockedLowBattery;
        long j;
        Context context;
        int i;
        boolean z;
        boolean zE;
        Object obj;
        ?? arrayList;
        ?? arrayList2;
        ArrayList arrayList3;
        List<ConfigSettings> validSettings;
        int i2;
        Iterator it;
        int i3;
        ConfigSettings configSettings;
        int batteryPercentReq;
        Object systemService;
        final ScheduleService scheduleService = this;
        String str = ry5.u;
        qy5.b(zn7.q.d());
        g00 g00Var = g00.a;
        g00.C();
        ArrayList arrayList4 = new ArrayList();
        RunMode runMode = scheduleService.b;
        int i4 = 1;
        if (runMode instanceof RunMode.Schedules) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, p, "Doing a basic assessment of runnable schedules", null, 4, null);
            List<ScheduleItem> schedules = c47.a.c().getSchedules();
            vr6.i$default(vr6Var, p, fz5.j(schedules.size(), "Total schedules = "), null, 4, null);
            I = new ArrayList();
            int i5 = Calendar.getInstance().get(7);
            int i6 = 0;
            for (ScheduleItem scheduleItem : schedules) {
                i6++;
                boolean zIsEnabled = scheduleItem.isEnabled();
                boolean zIsRunnable = scheduleItem.isRunnable();
                boolean z2 = !scheduleService.a ? !(scheduleItem.getRepeatDays().contains(Integer.valueOf(i5)) && zIsEnabled && zIsRunnable) : !(zIsEnabled && zIsRunnable);
                int size = schedules.size();
                String displayString = scheduleItem.toDisplayString();
                StringBuilder sbN = xs1.n("[", i6, "/", "]: ", size);
                sbN.append(displayString);
                String string = sbN.toString();
                if (z2) {
                    I.add(scheduleItem);
                    vr6.INSTANCE.i(p, string, vr6.a.GREEN);
                } else {
                    vr6.i$default(vr6.INSTANCE, p, string, null, 4, null);
                }
            }
        } else if (runMode instanceof RunMode.MultipleSchedules) {
            List<ScheduleItem> scheduleItems = ((RunMode.MultipleSchedules) runMode).getScheduleItems();
            I = new ArrayList();
            for (ScheduleItem scheduleItem2 : scheduleItems) {
                String strJ = xs1.j("RunMode.MultipleSchedules: ", scheduleItem2.toDisplayString());
                if (scheduleItem2.isRunnable()) {
                    vr6.INSTANCE.i(p, strJ, vr6.a.GREEN);
                } else {
                    vr6.i$default(vr6.INSTANCE, p, strJ, null, 4, null);
                    scheduleItem2 = null;
                }
                if (scheduleItem2 != null) {
                    I.add(scheduleItem2);
                }
            }
        } else {
            if (!(runMode instanceof RunMode.SingleSchedule)) {
                q.j();
                return;
            }
            ScheduleItem scheduleItem3 = ((RunMode.SingleSchedule) runMode).getScheduleItem();
            String strJ2 = xs1.j("RunMode.SingleSchedule: ", scheduleItem3.toDisplayString());
            if (scheduleItem3.canRunManually()) {
                vr6.INSTANCE.i(p, strJ2, vr6.a.GREEN);
                I = nc8.I(scheduleItem3);
            } else {
                vr6.i$default(vr6.INSTANCE, p, strJ2, null, 4, null);
                I = ov2.a;
            }
        }
        ?? r7 = I;
        if (!V.INSTANCE.getVp()) {
            List listA0 = fl1.A0(fz5.j(c47.a.c().getSchedules().size(), "all="), fz5.j(r7.size(), "runnable="));
            zc2 zc2Var = re3.a;
            try {
                new qe3(p, el1.Y0(listA0, null, null, null, null, 63)).invoke();
            } catch (Exception unused) {
            }
        }
        if (r7.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, p, "No schedules eligible for this run", null, 4, null);
            return;
        }
        vr6 vr6Var2 = vr6.INSTANCE;
        vr6.i$default(vr6Var2, p, r7.size() + " runnable schedules", null, 4, null);
        if (scheduleService.a) {
            blockedLowBattery = null;
        } else {
            c47 c47Var = c47.a;
            ScheduleData.a batteryReqEnum = c47Var.c().getBatteryReqEnum();
            if (batteryReqEnum == ScheduleData.a.CHARGING) {
                IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
                SwiftApp.Companion companion = SwiftApp.d;
                Intent intentRegisterReceiver = SwiftApp.Companion.a().registerReceiver(null, intentFilter);
                Integer numValueOf = intentRegisterReceiver != null ? Integer.valueOf(intentRegisterReceiver.getIntExtra("plugged", -1)) : null;
                if ((numValueOf == null || numValueOf.intValue() != 1) && ((numValueOf == null || numValueOf.intValue() != 2) && (numValueOf == null || numValueOf.intValue() != 4))) {
                    vr6.w$default(vr6Var2, p, "Not performing schedule (Device not charging)", null, 4, null);
                    blockedLowBattery = new ScheduleLastRunDetails.BlockedNotCharging(0L, 1, null);
                } else if (batteryReqEnum == ScheduleData.a.MINIMUM_PERCENT) {
                    batteryPercentReq = c47Var.c().getBatteryPercentReq();
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    systemService = SwiftApp.Companion.c().getSystemService("batterymanager");
                    systemService.getClass();
                    if (((BatteryManager) systemService).getIntProperty(4) >= batteryPercentReq) {
                        blockedLowBattery = null;
                    } else {
                        int batteryPercentReq2 = c47Var.c().getBatteryPercentReq();
                        vr6.w$default(vr6Var2, p, xs1.h(batteryPercentReq2, "Not performing schedule (Battery < ", "%)"), null, 4, null);
                        Object systemService2 = SwiftApp.Companion.c().getSystemService("batterymanager");
                        systemService2.getClass();
                        blockedLowBattery = new ScheduleLastRunDetails.BlockedLowBattery(0L, ((BatteryManager) systemService2).getIntProperty(4), batteryPercentReq2, 1, null);
                    }
                } else {
                    blockedLowBattery = null;
                }
            } else if (batteryReqEnum == ScheduleData.a.MINIMUM_PERCENT) {
                batteryPercentReq = c47Var.c().getBatteryPercentReq();
                SwiftApp.Companion companion3 = SwiftApp.d;
                systemService = SwiftApp.Companion.c().getSystemService("batterymanager");
                systemService.getClass();
                if (((BatteryManager) systemService).getIntProperty(4) >= batteryPercentReq) {
                    blockedLowBattery = null;
                } else {
                    int batteryPercentReq3 = c47Var.c().getBatteryPercentReq();
                    vr6.w$default(vr6Var2, p, xs1.h(batteryPercentReq3, "Not performing schedule (Battery < ", "%)"), null, 4, null);
                    Object systemService3 = SwiftApp.Companion.c().getSystemService("batterymanager");
                    systemService3.getClass();
                    blockedLowBattery = new ScheduleLastRunDetails.BlockedLowBattery(0L, ((BatteryManager) systemService3).getIntProperty(4), batteryPercentReq3, 1, null);
                }
            } else {
                blockedLowBattery = null;
            }
        }
        yy3 yy3Var = GlobalScheduleError.Companion;
        GlobalScheduleError globalScheduleError = blockedLowBattery != null ? new GlobalScheduleError(System.currentTimeMillis(), blockedLowBattery.asHumanReadableString()) : null;
        yy3Var.getClass();
        gv7 gv7Var = w14.a;
        w14.h(globalScheduleError, "saved_global_schedule_error");
        if (blockedLowBattery != null) {
            o37.c(blockedLowBattery.asHumanReadableString(), true);
            return;
        }
        if (!r7.isEmpty()) {
            Iterator it2 = r7.iterator();
            while (it2.hasNext()) {
                if (((ScheduleItem) it2.next()).hasAnyCloudLocations()) {
                    vr6.i$default(vr6.INSTANCE, p, "Some schedules have cloud locations set. Checking for Internet and Cloud service access...", null, 4, null);
                    ((Boolean) scheduleService.k.getValue()).getClass();
                    ((Boolean) scheduleService.n.getValue()).getClass();
                    break;
                }
            }
        }
        for (ScheduleItem scheduleItem4 : r7) {
            o oVar = ScheduleLastRunDetails.Companion;
            String itemId = scheduleItem4.getItemId();
            oVar.getClass();
            itemId.getClass();
            String strC = o.c(itemId);
            String strConcat = strC.concat("_type");
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.remove(strConcat).apply();
            SharedPreferences.Editor editor2 = cz4.k;
            if (editor2 == null) {
                pe4.F("editor");
                throw null;
            }
            editor2.remove(strC).apply();
        }
        ArrayList arrayList5 = new ArrayList();
        final ky7 ky7Var = new ky7(2, 0);
        ArrayList arrayList6 = new ArrayList();
        for (Object obj2 : r7) {
            if (obj2 instanceof ScheduleItem.AppConfig) {
                arrayList6.add(obj2);
            }
        }
        if (arrayList6.isEmpty()) {
            arrayList6 = null;
        }
        if (arrayList6 != null) {
            Iterator it3 = arrayList6.iterator();
            int i7 = 0;
            while (it3.hasNext()) {
                i7 += i4;
                final ScheduleItem.AppConfig appConfig = (ScheduleItem.AppConfig) it3.next();
                int size2 = arrayList6.size();
                String displayString2 = appConfig.toDisplayString();
                StringBuilder sbN2 = xs1.n("Preparing app backup tasks for Config schedules (", i7, "/", "): ", size2);
                sbN2.append(displayString2);
                vr6.i$default(vr6.INSTANCE, p, sbN2.toString(), null, 4, null);
                Config config = appConfig.getConfig();
                if (config == null || (validSettings = config.getValidSettings()) == null) {
                    it = it3;
                } else {
                    final lh6 lh6Var = new lh6();
                    if (!validSettings.isEmpty()) {
                        Iterator it4 = validSettings.iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                if (ji8.r(((ConfigSettings) it4.next()).getLocations())) {
                                    ScheduleLastRunDetails scheduleLastRunDetailsH = scheduleService.h("Config schedule:");
                                    if (scheduleLastRunDetailsH != null) {
                                        lh6Var.a = scheduleLastRunDetailsH;
                                        vr6.e$default(vr6.INSTANCE, p, xs1.j("Some settings have cloud location, but cloud upload will be skipped: ", scheduleLastRunDetailsH.asHumanReadableString()), null, 4, null);
                                        i2 = 0;
                                        break;
                                    }
                                }
                            }
                            i2 = i4;
                            break;
                        }
                    }
                    i2 = i4;
                    break;
                    final ih6 ih6Var = new ih6();
                    final ArrayList arrayList7 = new ArrayList();
                    int size3 = validSettings.size();
                    int i8 = 0;
                    while (i8 < size3) {
                        ConfigSettings configSettingsRemoveCloudLocation = validSettings.get(i8);
                        if (i2 == 0 && ji8.r(configSettingsRemoveCloudLocation.getLocations())) {
                            vr6 vr6Var3 = vr6.INSTANCE;
                            vr6.e$default(vr6Var3, p, "Removing cloud location due to network/cloud service issue.", null, 4, null);
                            configSettingsRemoveCloudLocation = configSettingsRemoveCloudLocation.removeCloudLocation();
                            i3 = i8;
                            ih6Var.a = true;
                            if (configSettingsRemoveCloudLocation.getLocations().isEmpty()) {
                                vr6.e$default(vr6Var3, p, fz5.j(i3 + 1, "No locations for backup destination. Skipping ConfigSettings #"), null, 4, null);
                                configSettings = null;
                            }
                            if (configSettings != null) {
                                arrayList7.add(configSettings);
                            }
                            i8 = i3 + 1;
                            it3 = it3;
                        } else {
                            i3 = i8;
                        }
                        configSettings = configSettingsRemoveCloudLocation;
                        if (configSettings != null) {
                            arrayList7.add(configSettings);
                        }
                        i8 = i3 + 1;
                        it3 = it3;
                    }
                    it = it3;
                    rw6 rw6Var = new rw6(c40.class, new bt3() { // from class: d47
                        @Override // defpackage.bt3
                        public final Object invoke() {
                            ScheduleLastRunDetails started;
                            String str2 = ScheduleService.p;
                            ArrayList arrayListA = fq1.a(arrayList7);
                            if (arrayListA.isEmpty()) {
                                return null;
                            }
                            c40 c40Var = new c40(arrayListA, ky7Var, new b40());
                            vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayListA.size(), "Added ", " tasks"), null, 4, null);
                            if (ih6Var.a) {
                                started = (ScheduleLastRunDetails) lh6Var.a;
                                if (started == null) {
                                    started = new ScheduleLastRunDetails.SkippedUploadNetworkError(0L, 1, null);
                                }
                            } else {
                                started = new ScheduleLastRunDetails.Started(0L, 1, null);
                            }
                            o oVar2 = ScheduleLastRunDetails.Companion;
                            String itemId2 = appConfig.getItemId();
                            oVar2.getClass();
                            o.d(itemId2, started);
                            return c40Var;
                        }
                    });
                    rw6Var.d = ey7.a(config, true);
                    arrayList5.add(new g47(appConfig.getItemId(), rw6Var));
                }
                arrayList6 = arrayList6;
                it3 = it;
                i4 = 1;
            }
        }
        ArrayList arrayList8 = new ArrayList();
        for (Object obj3 : r7) {
            if (obj3 instanceof ScheduleItem.AppsLabels) {
                arrayList8.add(obj3);
            }
        }
        final ArrayList<ScheduleItem.AppsLabels> arrayList9 = !arrayList8.isEmpty() ? arrayList8 : null;
        if (arrayList9 != null) {
            final int i9 = 0;
            for (final ScheduleItem.AppsLabels appsLabels : arrayList9) {
                int i10 = i9 + 1;
                rw6 rw6Var2 = new rw6(c40.class, new bt3() { // from class: e47
                    /* JADX WARN: Code duplicated, block: B:122:0x01b3 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:57:0x0197  */
                    /* JADX WARN: Code duplicated, block: B:60:0x01a1  */
                    /* JADX WARN: Code duplicated, block: B:63:0x01b3 A[EDGE_INSN: B:63:0x01b3->B:64:0x01b4 BREAK  A[LOOP:5: B:58:0x019b->B:124:?]] */
                    /* JADX WARN: Code duplicated, block: B:94:0x0296 A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:95:0x0297  */
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        ScheduleLastRunDetails started;
                        ArrayList arrayList10;
                        Iterator it5;
                        String str2;
                        String str3 = ScheduleService.p;
                        int i11 = i9 + 1;
                        int size4 = arrayList9.size();
                        ScheduleItem.AppsLabels appsLabels2 = appsLabels;
                        String displayString3 = appsLabels2.toDisplayString();
                        StringBuilder sbN3 = xs1.n("Preparing app backup tasks for Labels schedules (", i11, "/", "): ", size4);
                        sbN3.append(displayString3);
                        String string2 = sbN3.toString();
                        vr6 vr6Var4 = vr6.INSTANCE;
                        vr6.i$default(vr6Var4, ScheduleService.p, string2, null, 4, null);
                        ArrayList arrayListX1 = el1.x1(appsLabels2.getLocations());
                        vr6.i$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
                        q05 q05Var = q05.CLOUD;
                        if (arrayListX1.contains(q05Var)) {
                            ScheduleService scheduleService2 = scheduleService;
                            started = scheduleService2.g("PrepareAppsTask: ", arrayListX1);
                            if (started == null && !scheduleService2.f(appsLabels2.getItemId(), appsLabels2.getSyncOption())) {
                                vr6.i$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Sync option not met: " + appsLabels2.getSyncOption(), null, 4, null);
                                started = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
                                if (ji8.t(arrayListX1)) {
                                    vr6.e$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Can't proceed as syncing isn't possible and destination is only cloud", null, 4, null);
                                    o oVar2 = ScheduleLastRunDetails.Companion;
                                    String itemId2 = appsLabels2.getItemId();
                                    oVar2.getClass();
                                    o.d(itemId2, started);
                                } else {
                                    arrayListX1.remove(q05Var);
                                    vr6.e$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Removed cloud location", null, 4, null);
                                }
                                arrayList10 = null;
                            }
                            if (arrayList10 == null) {
                                return null;
                            }
                            c40 c40Var = new c40(arrayList10, ky7Var, new b40());
                            vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayList10.size(), "Added ", " tasks"), null, 4, null);
                            return c40Var;
                        }
                        started = null;
                        if (!arrayListX1.isEmpty()) {
                            List<String> labelIds = appsLabels2.getLabelIds();
                            if (labelIds == null || labelIds.isEmpty()) {
                                f6.h(labelIds, "]", "Invalid label ids! [");
                                return null;
                            }
                            ArrayList arrayList11 = new ArrayList();
                            for (Object obj4 : labelIds) {
                                LabelParams.Companion.getClass();
                                if (!hr4.c((String) obj4)) {
                                    arrayList11.add(obj4);
                                }
                            }
                            ArrayList arrayList12 = new ArrayList();
                            for (Object obj5 : labelIds) {
                                LabelParams.Companion.getClass();
                                if (hr4.c((String) obj5)) {
                                    arrayList12.add(obj5);
                                }
                            }
                            g00 g00Var2 = g00.a;
                            List listM = g00.m(true);
                            ArrayList<ji> arrayList13 = new ArrayList();
                            for (Object obj6 : listM) {
                                if (((ji) obj6).isInstalled()) {
                                    arrayList13.add(obj6);
                                }
                            }
                            ArrayList arrayList14 = new ArrayList();
                            for (ji jiVar : arrayList13) {
                                Set<LabelParams> labels = jiVar.getLabels();
                                if (labels != null && !labels.isEmpty()) {
                                    Iterator<T> it6 = labels.iterator();
                                    while (true) {
                                        if (!it6.hasNext()) {
                                            if (arrayList12.isEmpty()) {
                                                jiVar = null;
                                                break;
                                            }
                                            it5 = arrayList12.iterator();
                                            do {
                                                if (it5.hasNext()) {
                                                    jiVar = null;
                                                    break;
                                                }
                                                str2 = (String) it5.next();
                                                LabelParams.Companion.getClass();
                                            } while (!hr4.b(jiVar, str2));
                                        } else if (el1.M0(arrayList11, ((LabelParams) it6.next()).getId())) {
                                        }
                                    }
                                } else {
                                    if (arrayList12.isEmpty()) {
                                        jiVar = null;
                                        break;
                                    }
                                    it5 = arrayList12.iterator();
                                    do {
                                        if (it5.hasNext()) {
                                            jiVar = null;
                                            break;
                                        }
                                        str2 = (String) it5.next();
                                        LabelParams.Companion.getClass();
                                    } while (!hr4.b(jiVar, str2));
                                }
                                if (jiVar != null) {
                                    arrayList14.add(jiVar);
                                }
                            }
                            HashSet hashSet = new HashSet();
                            ArrayList arrayList15 = new ArrayList();
                            for (Object obj7 : arrayList14) {
                                if (hashSet.add(((ji) obj7).getPackageName())) {
                                    arrayList15.add(obj7);
                                }
                            }
                            String.CASE_INSENSITIVE_ORDER.getClass();
                            List<ji> listN1 = el1.n1(arrayList15, new a01(2));
                            if (started == null) {
                                started = new ScheduleLastRunDetails.Started(0L, 1, null);
                            }
                            o oVar3 = ScheduleLastRunDetails.Companion;
                            String itemId3 = appsLabels2.getItemId();
                            oVar3.getClass();
                            o.d(itemId3, started);
                            if (listN1.isEmpty()) {
                                vr6.e$default(vr6.INSTANCE, ScheduleService.p, "No apps matching the schedule requirements, skipping schedule.", null, 4, null);
                            } else {
                                List entries = iu.getEntries();
                                ArrayList arrayList16 = new ArrayList();
                                Iterator it7 = ((z3) entries).iterator();
                                while (true) {
                                    w3 w3Var = (w3) it7;
                                    if (!w3Var.hasNext()) {
                                        break;
                                    }
                                    iu iuVar = (iu) w3Var.next();
                                    if (!appsLabels2.getAppParts().contains(iuVar) || !iuVar.getBackupReq().isPossible()) {
                                        iuVar = null;
                                    }
                                    if (iuVar != null) {
                                        arrayList16.add(iuVar);
                                    }
                                }
                                arrayList10 = new ArrayList(hl1.G0(listN1, 10));
                                for (ji jiVar2 : listN1) {
                                    SyncOption syncOption = appsLabels2.getSyncOption();
                                    boolean zW = z85.w();
                                    xp1 xp1VarR = z85.r();
                                    MultipleBackupStrategy.Companion.getClass();
                                    arrayList10.add(new hz(jiVar2, arrayList16, arrayListX1, null, syncOption, zW, xp1VarR, b.c(), ok.d()));
                                }
                            }
                            if (arrayList10 == null) {
                                return null;
                            }
                            c40 c40Var2 = new c40(arrayList10, ky7Var, new b40());
                            vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayList10.size(), "Added ", " tasks"), null, 4, null);
                            return c40Var2;
                        }
                        if (started != null) {
                            o oVar4 = ScheduleLastRunDetails.Companion;
                            String itemId4 = appsLabels2.getItemId();
                            oVar4.getClass();
                            o.d(itemId4, started);
                        }
                        arrayList10 = null;
                        if (arrayList10 == null) {
                            return null;
                        }
                        c40 c40Var3 = new c40(arrayList10, ky7Var, new b40());
                        vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayList10.size(), "Added ", " tasks"), null, 4, null);
                        return c40Var3;
                    }
                });
                Set<LabelParams> labels = appsLabels.getLabels();
                SwiftApp.Companion companion4 = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String string2 = contextC.getString(R.string.apps);
                string2.getClass();
                rw6Var2.d = new vq(string2, contextC.getString(R.string.labels), labels);
                arrayList5.add(new g47(appsLabels.getItemId(), rw6Var2));
                scheduleService = this;
                i9 = i10;
            }
        }
        ArrayList arrayList10 = new ArrayList();
        for (Object obj4 : r7) {
            if (obj4 instanceof ScheduleItem.AppsQuickActions) {
                arrayList10.add(obj4);
            }
        }
        final ArrayList<ScheduleItem.AppsQuickActions> arrayList11 = !arrayList10.isEmpty() ? arrayList10 : null;
        if (arrayList11 != null) {
            final int i11 = 0;
            for (final ScheduleItem.AppsQuickActions appsQuickActions : arrayList11) {
                int i12 = i11 + 1;
                rw6 rw6Var3 = new rw6(c40.class, new bt3() { // from class: f47
                    /* JADX WARN: Code duplicated, block: B:138:0x039e  */
                    /* JADX WARN: Code duplicated, block: B:179:0x04c4 A[RETURN] */
                    /* JADX WARN: Code duplicated, block: B:181:0x04c7  */
                    /* JADX WARN: Code duplicated, block: B:200:0x03af A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:202:0x0398 A[SYNTHETIC] */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        ScheduleLastRunDetails started;
                        ArrayList arrayList12;
                        List<gm> localBackups;
                        gm gmVar;
                        DefaultConstructorMarker defaultConstructorMarker;
                        ArrayList arrayList13;
                        List listM;
                        HashSet hashSet;
                        ArrayList arrayList14;
                        String str2 = ScheduleService.p;
                        boolean z3 = true;
                        int i13 = i11 + 1;
                        int size4 = arrayList11.size();
                        ScheduleItem.AppsQuickActions appsQuickActions2 = appsQuickActions;
                        String displayString3 = appsQuickActions2.toDisplayString();
                        StringBuilder sbN3 = xs1.n("Preparing app backup tasks for QuickActions schedules (", i13, "/", "): ", size4);
                        sbN3.append(displayString3);
                        String string3 = sbN3.toString();
                        vr6 vr6Var4 = vr6.INSTANCE;
                        vr6.i$default(vr6Var4, ScheduleService.p, string3, null, 4, null);
                        ArrayList arrayListX1 = el1.x1(appsQuickActions2.getLocations());
                        vr6.i$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
                        q05 q05Var = q05.CLOUD;
                        DefaultConstructorMarker defaultConstructorMarker2 = null;
                        if (arrayListX1.contains(q05Var)) {
                            ScheduleService scheduleService2 = this;
                            started = scheduleService2.g("PrepareAppsTask: ", arrayListX1);
                            if (started == null && !scheduleService2.f(appsQuickActions2.getItemId(), appsQuickActions2.getSyncOption())) {
                                vr6.i$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Sync option not met: " + appsQuickActions2.getSyncOption(), null, 4, null);
                                started = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
                                if (ji8.t(arrayListX1)) {
                                    vr6.e$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Can't proceed as syncing isn't possible and destination is only cloud", null, 4, null);
                                    o oVar2 = ScheduleLastRunDetails.Companion;
                                    String itemId2 = appsQuickActions2.getItemId();
                                    oVar2.getClass();
                                    o.d(itemId2, started);
                                } else {
                                    arrayListX1.remove(q05Var);
                                    vr6.e$default(vr6Var4, ScheduleService.p, "PrepareAppsTask: Removed cloud location", null, 4, null);
                                }
                                arrayList12 = null;
                            }
                            if (arrayList12 == null) {
                                return null;
                            }
                            c40 c40Var = new c40(arrayList12, ky7Var, new b40());
                            vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayList12.size(), "Added ", " tasks"), null, 4, null);
                            return c40Var;
                        }
                        started = null;
                        if (arrayListX1.isEmpty()) {
                            if (started != null) {
                                o oVar3 = ScheduleLastRunDetails.Companion;
                                String itemId3 = appsQuickActions2.getItemId();
                                oVar3.getClass();
                                o.d(itemId3, started);
                            }
                            arrayList12 = null;
                        } else {
                            boolean zContains = appsQuickActions2.getQuickActionIds().contains(105);
                            Parcelable.Creator<zc6> creator = zc6.CREATOR;
                            ArrayList arrayListA = yc6.a();
                            ArrayList arrayList15 = new ArrayList();
                            for (Object obj5 : arrayListA) {
                                if (appsQuickActions2.getQuickActionIds().contains(Integer.valueOf(((zc6) obj5).b))) {
                                    arrayList15.add(obj5);
                                }
                            }
                            ArrayList arrayList16 = new ArrayList();
                            Iterator it5 = arrayList15.iterator();
                            while (true) {
                                if (it5.hasNext()) {
                                    String str3 = ((zc6) it5.next()).a;
                                    List<ScheduleItem.AppsQuickActions.a> allowedApps = appsQuickActions2.getAllowedApps();
                                    boolean zT = ji8.t(arrayListX1);
                                    str3.getClass();
                                    allowedApps.getClass();
                                    boolean zContains2 = allowedApps.contains(ScheduleItem.AppsQuickActions.a.User);
                                    boolean zContains3 = allowedApps.contains(ScheduleItem.AppsQuickActions.a.System);
                                    boolean z4 = z3;
                                    boolean zContains4 = allowedApps.contains(ScheduleItem.AppsQuickActions.a.Fav);
                                    switch (str3.hashCode()) {
                                        case -1799314310:
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            if (!str3.equals("ID_BACKUP_REDO_APPS")) {
                                                c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                                return defaultConstructorMarker;
                                            }
                                            if (zT) {
                                                List list = (List) ua1.g.a().c;
                                                arrayList13 = new ArrayList();
                                                for (Object obj6 : list) {
                                                    ji jiVar = (ji) obj6;
                                                    if (jiVar.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar)) {
                                                        arrayList13.add(obj6);
                                                    }
                                                }
                                            } else {
                                                g00 g00Var2 = g00.a;
                                                List listM2 = g00.m(z4);
                                                ArrayList arrayList17 = new ArrayList();
                                                for (Object obj7 : listM2) {
                                                    ji jiVar2 = (ji) obj7;
                                                    if (jiVar2.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar2)) {
                                                        arrayList17.add(obj7);
                                                    }
                                                }
                                                arrayList13 = new ArrayList();
                                                for (Object obj8 : arrayList17) {
                                                    List<gm> localBackups2 = ((ji) obj8).getLocalBackups();
                                                    if (localBackups2 != null && !localBackups2.isEmpty()) {
                                                        arrayList13.add(obj8);
                                                    }
                                                }
                                            }
                                            vr6.i$default(vr6.INSTANCE, "ScheduleAppsLoader", u48.k(arrayList13.size(), "Apps list compiled with size ", " for QuickAction: ", str3), null, 4, null);
                                            hashSet = new HashSet();
                                            arrayList14 = new ArrayList();
                                            for (Object obj9 : arrayList13) {
                                                if (hashSet.add(((ji) obj9).getPackageName())) {
                                                    arrayList14.add(obj9);
                                                }
                                            }
                                            String.CASE_INSENSITIVE_ORDER.getClass();
                                            el1.K0(el1.n1(arrayList14, new b01(2)), arrayList16);
                                            z3 = z4;
                                            defaultConstructorMarker2 = defaultConstructorMarker;
                                            break;
                                            break;
                                        case -924241623:
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            if (!str3.equals("ID_BACKUP_ALL_APPS")) {
                                                c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                                return defaultConstructorMarker;
                                            }
                                            g00 g00Var3 = g00.a;
                                            List listM3 = g00.m(z4);
                                            arrayList13 = new ArrayList();
                                            for (Object obj10 : listM3) {
                                                ji jiVar3 = (ji) obj10;
                                                if (jiVar3.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar3)) {
                                                    arrayList13.add(obj10);
                                                }
                                            }
                                            vr6.i$default(vr6.INSTANCE, "ScheduleAppsLoader", u48.k(arrayList13.size(), "Apps list compiled with size ", " for QuickAction: ", str3), null, 4, null);
                                            hashSet = new HashSet();
                                            arrayList14 = new ArrayList();
                                            while (r7.hasNext()) {
                                                if (hashSet.add(((ji) obj9).getPackageName())) {
                                                    arrayList14.add(obj9);
                                                }
                                            }
                                            String.CASE_INSENSITIVE_ORDER.getClass();
                                            el1.K0(el1.n1(arrayList14, new b01(2)), arrayList16);
                                            z3 = z4;
                                            defaultConstructorMarker2 = defaultConstructorMarker;
                                            break;
                                            break;
                                        case 678239695:
                                            if (!str3.equals("ID_BACKUP_UPDATED_APPS")) {
                                                defaultConstructorMarker = defaultConstructorMarker2;
                                                c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                                return defaultConstructorMarker;
                                            }
                                            if (zT) {
                                                listM = (List) ua1.g.a().c;
                                            } else {
                                                g00 g00Var4 = g00.a;
                                                listM = g00.m(z4);
                                            }
                                            ArrayList arrayList18 = new ArrayList();
                                            for (Object obj11 : listM) {
                                                DefaultConstructorMarker defaultConstructorMarker3 = defaultConstructorMarker2;
                                                ji jiVar4 = (ji) obj11;
                                                if (jiVar4.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar4)) {
                                                    arrayList18.add(obj11);
                                                }
                                                defaultConstructorMarker2 = defaultConstructorMarker3;
                                            }
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            ArrayList arrayList19 = new ArrayList();
                                            for (Object obj12 : arrayList18) {
                                                if (qq.f((ji) obj12, zT)) {
                                                    arrayList19.add(obj12);
                                                }
                                            }
                                            arrayList13 = arrayList19;
                                            vr6.i$default(vr6.INSTANCE, "ScheduleAppsLoader", u48.k(arrayList13.size(), "Apps list compiled with size ", " for QuickAction: ", str3), null, 4, null);
                                            hashSet = new HashSet();
                                            arrayList14 = new ArrayList();
                                            while (r7.hasNext()) {
                                                if (hashSet.add(((ji) obj9).getPackageName())) {
                                                    arrayList14.add(obj9);
                                                }
                                            }
                                            String.CASE_INSENSITIVE_ORDER.getClass();
                                            el1.K0(el1.n1(arrayList14, new b01(2)), arrayList16);
                                            z3 = z4;
                                            defaultConstructorMarker2 = defaultConstructorMarker;
                                            break;
                                            break;
                                        case 1126219261:
                                            if (!str3.equals("ID_BACKUP_SYNC_APPS")) {
                                                defaultConstructorMarker = defaultConstructorMarker2;
                                                c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                                return defaultConstructorMarker;
                                            }
                                            g00 g00Var5 = g00.a;
                                            List listM4 = g00.m(z4);
                                            ArrayList arrayList20 = new ArrayList();
                                            for (Object obj13 : listM4) {
                                                if (t27.a(zContains2, zContains3, zContains4, (ji) obj13)) {
                                                    arrayList20.add(obj13);
                                                }
                                            }
                                            arrayList13 = new ArrayList();
                                            for (Object obj14 : arrayList20) {
                                                List<gm> localBackups3 = ((ji) obj14).getLocalBackups();
                                                if (localBackups3 != null && !localBackups3.isEmpty()) {
                                                    arrayList13.add(obj14);
                                                }
                                            }
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            vr6.i$default(vr6.INSTANCE, "ScheduleAppsLoader", u48.k(arrayList13.size(), "Apps list compiled with size ", " for QuickAction: ", str3), null, 4, null);
                                            hashSet = new HashSet();
                                            arrayList14 = new ArrayList();
                                            while (r7.hasNext()) {
                                                if (hashSet.add(((ji) obj9).getPackageName())) {
                                                    arrayList14.add(obj9);
                                                }
                                            }
                                            String.CASE_INSENSITIVE_ORDER.getClass();
                                            el1.K0(el1.n1(arrayList14, new b01(2)), arrayList16);
                                            z3 = z4;
                                            defaultConstructorMarker2 = defaultConstructorMarker;
                                            break;
                                            break;
                                        case 1314299507:
                                            if (!str3.equals("ID_BACKUP_PENDING_APPS")) {
                                                defaultConstructorMarker = defaultConstructorMarker2;
                                                c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                                return defaultConstructorMarker;
                                            }
                                            if (zT) {
                                                g00 g00Var6 = g00.a;
                                                List listB = qq.b(g00.m(z4), ce3.NotSynced);
                                                arrayList13 = new ArrayList();
                                                for (Object obj15 : listB) {
                                                    ji jiVar5 = (ji) obj15;
                                                    if (jiVar5.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar5)) {
                                                        arrayList13.add(obj15);
                                                    }
                                                }
                                            } else {
                                                g00 g00Var7 = g00.a;
                                                List listM5 = g00.m(z4);
                                                ArrayList arrayList21 = new ArrayList();
                                                for (Object obj16 : listM5) {
                                                    ji jiVar6 = (ji) obj16;
                                                    if (jiVar6.isInstalled() && t27.a(zContains2, zContains3, zContains4, jiVar6)) {
                                                        arrayList21.add(obj16);
                                                    }
                                                }
                                                arrayList13 = new ArrayList();
                                                for (Object obj17 : arrayList21) {
                                                    List<gm> localBackups4 = ((ji) obj17).getLocalBackups();
                                                    if (localBackups4 == null || localBackups4.isEmpty()) {
                                                        arrayList13.add(obj17);
                                                    }
                                                }
                                            }
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            vr6.i$default(vr6.INSTANCE, "ScheduleAppsLoader", u48.k(arrayList13.size(), "Apps list compiled with size ", " for QuickAction: ", str3), null, 4, null);
                                            hashSet = new HashSet();
                                            arrayList14 = new ArrayList();
                                            while (r7.hasNext()) {
                                                if (hashSet.add(((ji) obj9).getPackageName())) {
                                                    arrayList14.add(obj9);
                                                }
                                            }
                                            String.CASE_INSENSITIVE_ORDER.getClass();
                                            el1.K0(el1.n1(arrayList14, new b01(2)), arrayList16);
                                            z3 = z4;
                                            defaultConstructorMarker2 = defaultConstructorMarker;
                                            break;
                                            break;
                                        default:
                                            defaultConstructorMarker = defaultConstructorMarker2;
                                            c6.f("Quick action not implemented for QuickAction id: ".concat(str3));
                                            return defaultConstructorMarker;
                                    }
                                } else {
                                    boolean z5 = z3;
                                    DefaultConstructorMarker defaultConstructorMarker4 = defaultConstructorMarker2;
                                    HashSet hashSet2 = new HashSet();
                                    ArrayList<ji> arrayList22 = new ArrayList();
                                    for (Object obj18 : arrayList16) {
                                        if (hashSet2.add(((ji) obj18).getPackageName())) {
                                            arrayList22.add(obj18);
                                        }
                                    }
                                    if (started == null) {
                                        started = new ScheduleLastRunDetails.Started(0L, z5 ? 1 : 0, defaultConstructorMarker4);
                                    }
                                    o oVar4 = ScheduleLastRunDetails.Companion;
                                    String itemId4 = appsQuickActions2.getItemId();
                                    oVar4.getClass();
                                    o.d(itemId4, started);
                                    if (arrayList22.isEmpty()) {
                                        vr6.e$default(vr6.INSTANCE, ScheduleService.p, "No apps matching the schedule requirements, skipping schedule.", null, 4, null);
                                        arrayList12 = null;
                                    } else {
                                        jx2 entries = iu.getEntries();
                                        ArrayList arrayList23 = new ArrayList();
                                        Iterator it6 = ((z3) entries).iterator();
                                        while (true) {
                                            w3 w3Var = (w3) it6;
                                            if (w3Var.hasNext()) {
                                                iu iuVar = (iu) w3Var.next();
                                                if (!appsQuickActions2.getAppParts().contains(iuVar) || !iuVar.getBackupReq().isPossible()) {
                                                    iuVar = null;
                                                }
                                                if (iuVar != null) {
                                                    arrayList23.add(iuVar);
                                                }
                                            } else {
                                                arrayList12 = new ArrayList(hl1.G0(arrayList22, 10));
                                                for (ji jiVar7 : arrayList22) {
                                                    hk hkVar = (!zContains || (localBackups = jiVar7.getLocalBackups()) == null || (gmVar = (gm) el1.U0(localBackups)) == null) ? null : gmVar.a;
                                                    SyncOption syncOption = appsQuickActions2.getSyncOption();
                                                    boolean zW = z85.w();
                                                    xp1 xp1VarR = z85.r();
                                                    MultipleBackupStrategy.Companion.getClass();
                                                    arrayList12.add(new hz(jiVar7, arrayList23, arrayListX1, hkVar, syncOption, zW, xp1VarR, b.c(), ok.d()));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (arrayList12 == null) {
                            return null;
                        }
                        c40 c40Var2 = new c40(arrayList12, ky7Var, new b40());
                        vr6.i$default(vr6.INSTANCE, ScheduleService.p, xs1.h(arrayList12.size(), "Added ", " tasks"), null, 4, null);
                        return c40Var2;
                    }
                });
                String subtitle = appsQuickActions.getSubtitle();
                subtitle.getClass();
                SwiftApp.Companion companion5 = SwiftApp.d;
                String string3 = SwiftApp.Companion.c().getString(R.string.apps);
                string3.getClass();
                if (nq7.j0(subtitle)) {
                    subtitle = null;
                }
                rw6Var3.d = new vq(string3, subtitle, (Set) null);
                arrayList5.add(new g47(appsQuickActions.getItemId(), rw6Var3));
                i11 = i12;
            }
        }
        this = this;
        arrayList4.addAll(arrayList5);
        if (this.d) {
            return;
        }
        ArrayList<ScheduleItem.Messages> arrayList12 = new ArrayList();
        for (Object obj5 : r7) {
            if (obj5 instanceof ScheduleItem.Messages) {
                arrayList12.add(obj5);
            }
        }
        if (arrayList12.isEmpty()) {
            arrayList12 = null;
        }
        if (arrayList12 != null) {
            dz5 dz5Var = dz5.a;
            if (dz5.m()) {
                gv7 gv7Var2 = ud5.a;
                j = 0;
                context = null;
                List list$default = qv1.a.getList$default(qv1.Companion, false, new wg5.c(), null, 1, null);
                if (list$default.isEmpty()) {
                    vr6.w$default(vr6.INSTANCE, p, "No messages found, skipping messages task", null, 4, null);
                    SwiftApp.Companion companion6 = SwiftApp.d;
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, SwiftApp.Companion.c(), "No messages found"));
                    ny2.b().e(new sl4());
                    arrayList3 = null;
                } else {
                    arrayList3 = new ArrayList();
                    for (ScheduleItem.Messages messages : arrayList12) {
                        rw6 rw6Var4 = new rw6(ff5.class, new bj0(this, messages, list$default));
                        rw6Var4.d = new vq(messages.getTitle(), messages.getSubtitle(), (Set) null);
                        arrayList3.add(new g47(messages.getItemId(), rw6Var4));
                    }
                }
            } else {
                vr6.e$default(vr6.INSTANCE, p, "Messages permission not granted", null, 4, null);
                j = 0;
                arrayList3 = null;
                context = null;
            }
            if (arrayList3 != null) {
                arrayList4.addAll(arrayList3);
            }
        } else {
            j = 0;
            context = null;
        }
        if (this.d) {
            return;
        }
        ArrayList arrayList13 = new ArrayList();
        for (Object obj6 : r7) {
            if (obj6 instanceof ScheduleItem.CallLogs) {
                arrayList13.add(obj6);
            }
        }
        boolean zIsEmpty = arrayList13.isEmpty();
        ?? r0 = arrayList13;
        if (zIsEmpty) {
            r0 = context;
        }
        if (r0 != 0) {
            dz5 dz5Var2 = dz5.a;
            if (dz5.g()) {
                ArrayList arrayListG = d01.g();
                if (arrayListG.isEmpty()) {
                    vr6.w$default(vr6.INSTANCE, p, "No call logs found, skipping call logs task", null, 4, null);
                    SwiftApp.Companion companion7 = SwiftApp.d;
                    Context contextC2 = SwiftApp.Companion.c();
                    zn4 zn4Var2 = zn4.a;
                    dj7.y(contextC2, "No call logs found");
                } else {
                    arrayList2 = new ArrayList();
                    for (ScheduleItem.CallLogs callLogs : r0) {
                        rw6 rw6Var5 = new rw6(z11.class, new y10(this, callLogs, arrayListG));
                        rw6Var5.d = new vq(callLogs.getTitle(), callLogs.getSubtitle(), (Set) null);
                        arrayList2.add(new g47(callLogs.getItemId(), rw6Var5));
                    }
                }
                if (arrayList2 != 0) {
                    arrayList4.addAll(arrayList2);
                }
            } else {
                vr6.e$default(vr6.INSTANCE, p, "Messages permission not granted", null, 4, null);
            }
            arrayList2 = context;
            if (arrayList2 != 0) {
                arrayList4.addAll(arrayList2);
            }
        }
        if (this.d) {
            return;
        }
        ArrayList arrayList14 = new ArrayList();
        for (Object obj7 : r7) {
            if (obj7 instanceof ScheduleItem.Wallpapers) {
                arrayList14.add(obj7);
            }
        }
        boolean zIsEmpty2 = arrayList14.isEmpty();
        ?? r1 = arrayList14;
        if (zIsEmpty2) {
            r1 = context;
        }
        if (r1 != 0) {
            sv7 sv7VarA = tv7.a();
            List listP0 = x50.p0(new rv7[]{sv7VarA.a, sv7VarA.b});
            if (((ArrayList) listP0).isEmpty()) {
                vr6.w$default(vr6.INSTANCE, p, "No valid system wallpapers found", null, 4, null);
                SwiftApp.Companion companion8 = SwiftApp.d;
                Context contextC3 = SwiftApp.Companion.c();
                zn4 zn4Var3 = zn4.a;
                dj7.y(contextC3, "No wallpapers found");
                arrayList = context;
            } else {
                arrayList = new ArrayList();
                for (ScheduleItem.Wallpapers wallpapers : r1) {
                    rw6 rw6Var6 = new rw6(wp8.class, new mh(4, this, wallpapers, listP0));
                    rw6Var6.d = new vq(wallpapers.getTitle(), wallpapers.getSubtitle(), (Set) null);
                    arrayList.add(new g47(wallpapers.getItemId(), rw6Var6));
                }
            }
            if (arrayList != 0) {
                arrayList4.addAll(arrayList);
            }
        }
        if (this.d) {
            return;
        }
        ArrayList arrayList15 = new ArrayList();
        for (Object obj8 : r7) {
            if (obj8 instanceof ScheduleItem.Wifi) {
                arrayList15.add(obj8);
            }
        }
        boolean zIsEmpty3 = arrayList15.isEmpty();
        ?? r2 = arrayList15;
        if (zIsEmpty3) {
            r2 = context;
        }
        if (r2 != 0) {
            SwiftApp.Companion companion9 = SwiftApp.d;
            Object systemService4 = SwiftApp.Companion.c().getApplicationContext().getSystemService("wifi");
            systemService4.getClass();
            us8 us8Var = new us8((WifiManager) systemService4);
            ke keVar = us8Var.a;
            keVar.getClass();
            is8 is8VarM = keVar.m(kt8.BACKUP);
            if (is8VarM instanceof hs8) {
                List list = ((hs8) is8VarM).a;
                if (list.isEmpty()) {
                    vr6.w$default(vr6.INSTANCE, p, "No saved wifi networks found", null, 4, null);
                } else {
                    ArrayList arrayList16 = new ArrayList();
                    for (ScheduleItem.Wifi wifi : r2) {
                        rw6 rw6Var7 = new rw6(tt8.class, new ld6(this, wifi, list, us8Var, 2));
                        rw6Var7.d = new vq(wifi.getTitle(), wifi.getSubtitle(), (Set) null);
                        arrayList16.add(new g47(wifi.getItemId(), rw6Var7));
                        us8Var = us8Var;
                    }
                    this = this;
                    obj = arrayList16;
                }
                if (obj != null) {
                    arrayList4.addAll(obj);
                }
            } else {
                if (!(is8VarM instanceof gs8)) {
                    q.j();
                    return;
                }
                gs8 gs8Var = (gs8) is8VarM;
                vr6.e$default(vr6.INSTANCE, p, "WiFi schedule device read failed: " + gs8Var.a, null, 4, null);
                ScheduleLastRunDetails.Companion.getClass();
                ScheduleLastRunDetails blockedWifiPrivilegedAccess = gs8Var.a == ds8.ACCESS_UNAVAILABLE ? new ScheduleLastRunDetails.BlockedWifiPrivilegedAccess(j, 1, null) : new ScheduleLastRunDetails.FailedWifiDeviceRead(j, 1, null);
                for (ScheduleItem.Wifi wifi2 : r2) {
                    o oVar2 = ScheduleLastRunDetails.Companion;
                    String itemId2 = wifi2.getItemId();
                    oVar2.getClass();
                    o.d(itemId2, blockedWifiPrivilegedAccess);
                }
            }
            obj = context;
            if (obj != null) {
                arrayList4.addAll(obj);
            }
        }
        if (this.d) {
            return;
        }
        ArrayList arrayList17 = new ArrayList();
        for (Object obj9 : r7) {
            if (obj9 instanceof ScheduleItem.Folders) {
                arrayList17.add(obj9);
            }
        }
        boolean zIsEmpty4 = arrayList17.isEmpty();
        ?? r3 = arrayList17;
        if (zIsEmpty4) {
            r3 = context;
        }
        if (r3 != 0) {
            ArrayList arrayList18 = new ArrayList();
            for (ScheduleItem.Folders folders : r3) {
                rw6 rw6Var8 = new rw6(qp3.class, new l30(12, folders, this));
                rw6Var8.d = new vq(folders.getTitle(), folders.getSubtitle(), (Set) null);
                arrayList18.add(new g47(folders.getItemId(), rw6Var8));
            }
            arrayList4.addAll(arrayList18);
        }
        if (this.d) {
            return;
        }
        ArrayList arrayList19 = new ArrayList(hl1.G0(r7, 10));
        Iterator it5 = r7.iterator();
        while (it5.hasNext()) {
            arrayList19.add(((ScheduleItem) it5.next()).getItemId());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj10 : arrayList4) {
            String str2 = ((g47) obj10).a;
            Object arrayList20 = linkedHashMap.get(str2);
            if (arrayList20 == null) {
                arrayList20 = new ArrayList();
                linkedHashMap.put(str2, arrayList20);
            }
            ((List) arrayList20).add(obj10);
        }
        List listP = eq3.p(arrayList19);
        ArrayList arrayList21 = new ArrayList();
        Iterator it6 = listP.iterator();
        while (it6.hasNext()) {
            Iterable iterable = (List) linkedHashMap.get((String) it6.next());
            if (iterable == null) {
                iterable = ov2.a;
            }
            ArrayList arrayList22 = new ArrayList(hl1.G0(iterable, 10));
            Iterator it7 = iterable.iterator();
            while (it7.hasNext()) {
                arrayList22.add(((g47) it7.next()).b);
            }
            el1.K0(arrayList22, arrayList21);
        }
        if (r7.isEmpty()) {
            i = 0;
        } else {
            int i13 = 0;
            for (ScheduleItem scheduleItem5 : r7) {
                o oVar3 = ScheduleLastRunDetails.Companion;
                String itemId3 = scheduleItem5.getItemId();
                oVar3.getClass();
                ScheduleLastRunDetails scheduleLastRunDetailsB = o.b(itemId3);
                if (scheduleLastRunDetailsB != null && scheduleLastRunDetailsB.isError()) {
                    vr6.e$default(vr6.INSTANCE, p, eq3.k("Error in schedule: Schedule=", scheduleItem5.toDisplayString(), ".").concat(" Error=" + scheduleLastRunDetailsB.asHumanReadableString() + "."), null, 4, null);
                }
                if (scheduleLastRunDetailsB != null && scheduleLastRunDetailsB.isError() && (i13 = i13 + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
            i = i13;
        }
        ?? string4 = i > 0 ? this.getString(R.string.schedule_error_notification_subtitle) : context;
        if (this.d) {
            vr6.w$default(vr6.INSTANCE, p, "Foreground service timed out while preparing schedules; skipping task handoff", null, 4, null);
            return;
        }
        Iterator it8 = arrayList21.iterator();
        while (it8.hasNext()) {
            ((rw6) it8.next()).e = true;
        }
        if (arrayList21.isEmpty()) {
            z = false;
        } else {
            hy7 hy7Var = hy7.a;
            if (hy7.b(arrayList21)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (this.d) {
            vr6.w$default(vr6.INSTANCE, p, "Foreground service timed out while adding tasks; skipping task handoff", null, 4, null);
            return;
        }
        if (!z) {
            SwiftApp.Companion companion10 = SwiftApp.d;
            Context contextC4 = SwiftApp.Companion.c();
            String string5 = contextC4.getString(R.string.no_tasks_to_perform_in_schedule);
            string5.getClass();
            zn4 zn4Var4 = zn4.a;
            dj7.y(contextC4, string5);
            vr6.e$default(vr6.INSTANCE, p, "No tasks to perform in any schedules! Exiting.", null, 4, null);
            if (string4 == 0 || string4.length() == 0) {
                return;
            }
            o37.c(string4, false);
            return;
        }
        vr6.i$default(vr6.INSTANCE, p, xs1.h(arrayList21.size(), "Added ", " taskProviders"), null, 4, null);
        synchronized (this.f) {
            try {
                if (this.d) {
                    zE = false;
                } else {
                    hy7 hy7Var2 = hy7.a;
                    boolean z3 = this.a;
                    RunMode runMode2 = this.b;
                    hy7.f = z3;
                    hy7.g = runMode2 != null ? runMode2.toString() : context;
                    zE = this.a ? hy7.e(this, string4) : hy7.e(context, string4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c = zE;
    }

    public final boolean f(String str, SyncOption syncOption) {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, p, "SyncOption: " + syncOption, null, 4, null);
        if (syncOption != SyncOption.WIFI || Const.z()) {
            return ((Boolean) this.k.getValue()).booleanValue();
        }
        String str2 = p;
        String string = contextC.getString(R.string.wifi_not_available);
        string.getClass();
        vr6.e$default(vr6Var, str2, string, null, 4, null);
        String string2 = contextC.getString(R.string.wifi_not_available);
        string2.getClass();
        zn4 zn4Var = zn4.a;
        dj7.y(contextC, string2);
        o oVar = ScheduleLastRunDetails.Companion;
        ScheduleLastRunDetails.SkippedUploadSyncOptionsError skippedUploadSyncOptionsError = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
        oVar.getClass();
        o.d(str, skippedUploadSyncOptionsError);
        return false;
    }

    public final ScheduleLastRunDetails g(String str, ArrayList arrayList) {
        ScheduleLastRunDetails scheduleLastRunDetailsH;
        q05 q05Var = q05.CLOUD;
        if (!arrayList.contains(q05Var) || (scheduleLastRunDetailsH = h(str)) == null) {
            return null;
        }
        arrayList.remove(q05Var);
        return scheduleLastRunDetailsH;
    }

    public final ScheduleLastRunDetails h(String str) {
        if (((Boolean) this.n.getValue()).booleanValue()) {
            if (((Boolean) this.k.getValue()).booleanValue()) {
                return null;
            }
            vr6.i$default(vr6.INSTANCE, p, str.concat(" No internet connection"), null, 4, null);
            return new ScheduleLastRunDetails.SkippedUploadNetworkError(0L, 1, null);
        }
        tb1 tb1Var = tb1.a;
        if (qb1.d()) {
            vr6.i$default(vr6.INSTANCE, p, str.concat(" Cloud connection check failed"), null, 4, null);
            return new ScheduleLastRunDetails.SkippedUploadNetworkError(0L, 1, null);
        }
        vr6.i$default(vr6.INSTANCE, p, str.concat(" Cloud client not connected"), null, 4, null);
        return new ScheduleLastRunDetails.SkippedUploadCloudNotConnected(0L, 1, null);
    }

    @Override // android.app.IntentService, android.app.Service
    public final void onDestroy() {
        boolean z = !this.d;
        mt3 mt3Var = q;
        if (mt3Var != null) {
            mt3Var.invoke(Boolean.valueOf(z));
        }
        q = null;
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:65:0x015d  */
    @Override // android.app.IntentService
    public final void onHandleIntent(Intent intent) throws Throwable {
        RunMode runMode;
        jc2 jc2Var;
        qc2 qc2Var = qc2.a;
        boolean z = true;
        this.a = intent != null && intent.getBooleanExtra("is_forced_run", true);
        if (intent == null || (runMode = (RunMode) intent.getParcelableExtra("schedule_run_mode")) == null) {
            runMode = RunMode.Schedules.INSTANCE;
        }
        this.b = runMode;
        this.c = false;
        this.d = false;
        this.e = null;
        jc2 jc2Var2 = jc2.ERROR;
        try {
            vr6 vr6Var = vr6.INSTANCE;
            String str = p;
            StringBuilder sb = new StringBuilder();
            sb.append("Starting service with mode=" + this.b);
            if (this.a) {
                sb.append(" (Forced)");
            }
            vr6.i$default(vr6Var, str, sb.toString(), null, 4, null);
            Notification notificationA = a();
            try {
                if (b67.b()) {
                    startForeground(59, notificationA, -1);
                } else {
                    startForeground(59, notificationA);
                }
                this.e = kc2.a.h(p, this.b.toString(), true, this.a);
                mp6.d(mp6.a, false, false, 3);
                qc2Var.c("ScheduleService mode=" + this.b + " forced=" + this.a);
                d45.b.getClass();
                if (d45.a() == null) {
                    vr6.e$default(vr6Var, p, "User not signed in! Exiting.", null, 4, null);
                    Const.g("User not signed in! Exiting.", true);
                    throw null;
                }
                dz5 dz5Var = dz5.a;
                if (!dz5.n()) {
                    vr6.e$default(vr6Var, p, "Storage permission not available, Exiting.", null, 4, null);
                    Const.g("Storage permission not available, Exiting.", true);
                    throw null;
                }
                e();
                if (this.d) {
                    jc2Var = jc2.TIMEOUT;
                } else {
                    jc2Var = this.c ? jc2.HANDED_OFF : jc2.COMPLETED;
                }
                if (this.d) {
                    jc2Var = jc2.TIMEOUT;
                }
                b(jc2Var);
                if (this.c) {
                    return;
                }
                qc2.a.f("ScheduleService finished before TaskService", false);
            } catch (Exception e) {
                if (!a.a(e)) {
                    throw e;
                }
                String strB = io4.b(e);
                vr6.e$default(vr6.INSTANCE, p, "Blocked by dataSync FGS quota: ".concat(strB), null, 4, null);
                o37.d();
                try {
                    kc2.a.f(p, this.b.toString(), strB, true, this.a);
                    qc2Var.h("ScheduleService startForeground blocked", false);
                    mt3 mt3Var = q;
                    if (mt3Var != null) {
                        mt3Var.invoke(Boolean.FALSE);
                    }
                    q = null;
                    jc2 jc2Var3 = jc2.START_BLOCKED_QUOTA;
                    if (this.d) {
                        jc2Var3 = jc2.TIMEOUT;
                    }
                    b(jc2Var3);
                } catch (Throwable th) {
                    th = th;
                    if (this.d) {
                        jc2Var2 = jc2.TIMEOUT;
                    }
                    b(jc2Var2);
                    if (!this.c && !z) {
                        qc2.a.f("ScheduleService finished before TaskService", false);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
            if (this.d) {
                jc2Var2 = jc2.TIMEOUT;
            }
            b(jc2Var2);
            if (!this.c) {
                qc2.a.f("ScheduleService finished before TaskService", false);
            }
            throw th;
        }
    }

    public final void onTimeout(int i, int i2) {
        d(i, String.valueOf(i2));
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class RunMode implements Parcelable {

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class MultipleSchedules extends RunMode {
            public static final Parcelable.Creator<MultipleSchedules> CREATOR = new b();
            private final List<ScheduleItem> scheduleItems;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public MultipleSchedules(List<? extends ScheduleItem> list) {
                super(null);
                list.getClass();
                this.scheduleItems = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ MultipleSchedules copy$default(MultipleSchedules multipleSchedules, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = multipleSchedules.scheduleItems;
                }
                return multipleSchedules.copy(list);
            }

            public final List<ScheduleItem> component1() {
                return this.scheduleItems;
            }

            public final MultipleSchedules copy(List<? extends ScheduleItem> list) {
                list.getClass();
                return new MultipleSchedules(list);
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof MultipleSchedules) && pe4.d(this.scheduleItems, ((MultipleSchedules) obj).scheduleItems);
            }

            public final List<ScheduleItem> getScheduleItems() {
                return this.scheduleItems;
            }

            public int hashCode() {
                return this.scheduleItems.hashCode();
            }

            public String toString() {
                return "MultipleSchedules(scheduleItems=" + this.scheduleItems + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                List<ScheduleItem> list = this.scheduleItems;
                parcel.writeInt(list.size());
                Iterator<ScheduleItem> it = list.iterator();
                while (it.hasNext()) {
                    parcel.writeParcelable(it.next(), i);
                }
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class Schedules extends RunMode {
            public static final Schedules INSTANCE = new Schedules();
            public static final Parcelable.Creator<Schedules> CREATOR = new c();

            private Schedules() {
                super(null);
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                return this == obj || (obj instanceof Schedules);
            }

            public int hashCode() {
                return -2015580936;
            }

            public String toString() {
                return "Schedules";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(1);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class SingleSchedule extends RunMode {
            public static final Parcelable.Creator<SingleSchedule> CREATOR = new d();
            private final ScheduleItem scheduleItem;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SingleSchedule(ScheduleItem scheduleItem) {
                super(null);
                scheduleItem.getClass();
                this.scheduleItem = scheduleItem;
            }

            public static /* synthetic */ SingleSchedule copy$default(SingleSchedule singleSchedule, ScheduleItem scheduleItem, int i, Object obj) {
                if ((i & 1) != 0) {
                    scheduleItem = singleSchedule.scheduleItem;
                }
                return singleSchedule.copy(scheduleItem);
            }

            public final ScheduleItem component1() {
                return this.scheduleItem;
            }

            public final SingleSchedule copy(ScheduleItem scheduleItem) {
                scheduleItem.getClass();
                return new SingleSchedule(scheduleItem);
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SingleSchedule) && pe4.d(this.scheduleItem, ((SingleSchedule) obj).scheduleItem);
            }

            public final ScheduleItem getScheduleItem() {
                return this.scheduleItem;
            }

            public int hashCode() {
                return this.scheduleItem.hashCode();
            }

            public String toString() {
                return "SingleSchedule(scheduleItem=" + this.scheduleItem + ")";
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeParcelable(this.scheduleItem, i);
            }
        }

        public /* synthetic */ RunMode(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private RunMode() {
        }
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        d(i, "shortService");
    }
}
