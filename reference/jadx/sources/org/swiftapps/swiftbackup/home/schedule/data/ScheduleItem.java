package org.swiftapps.swiftbackup.home.schedule.data;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import defpackage.as4;
import defpackage.b7;
import defpackage.br1;
import defpackage.cz4;
import defpackage.dj7;
import defpackage.dz5;
import defpackage.el1;
import defpackage.eq3;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.g00;
import defpackage.hi;
import defpackage.hl1;
import defpackage.io4;
import defpackage.iu;
import defpackage.jd2;
import defpackage.ji8;
import defpackage.jl0;
import defpackage.jx2;
import defpackage.jz2;
import defpackage.lr4;
import defpackage.ly8;
import defpackage.mp6;
import defpackage.nc8;
import defpackage.nd4;
import defpackage.nh4;
import defpackage.nm3;
import defpackage.nq7;
import defpackage.nu;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.q;
import defpackage.q05;
import defpackage.sk0;
import defpackage.sq1;
import defpackage.sv2;
import defpackage.sz8;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.x50;
import defpackage.xe6;
import defpackage.xg;
import defpackage.xs1;
import defpackage.xx3;
import defpackage.yc6;
import defpackage.yg;
import defpackage.zc6;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ScheduleItem implements jl0, Parcelable {
    public static final j Companion = new j();

    @jz2
    private final String logTag;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum Type {
        AppConfig(101),
        AppsLabels(102),
        AppsQuickActions(103),
        Messages(201),
        CallLogs(301),
        Wallpapers(401),
        Wifi(501),
        Folders(601);

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
        private final int constant;

        Type(int i) {
            this.constant = i;
        }

        public static jx2 getEntries() {
            return $ENTRIES;
        }

        public final int getConstant() {
            return this.constant;
        }
    }

    private ScheduleItem() {
        this.logTag = getClass().getSimpleName();
    }

    private static final List getRepeatDays$lambda$0(ScheduleItem scheduleItem) {
        String repeatDaysString = scheduleItem.getRepeatDaysString();
        if (repeatDaysString == null) {
            return null;
        }
        List listX0 = nq7.x0(repeatDaysString, new String[]{", "}, 6);
        ArrayList arrayList = new ArrayList();
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            Integer numX = uq7.X((String) it.next());
            if (numX != null) {
                arrayList.add(numX);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence getRepeatDisplayString$lambda$1(jd2 jd2Var) {
        jd2Var.getClass();
        return jd2Var.b;
    }

    @jz2
    public final boolean canRunManually() {
        return isRunnable() && isPermissionsGranted() && isBackupRequirementPossible();
    }

    @jz2
    public sk0 getBackupRequirement() {
        return isRootNeeded() ? sk0.ROOT : sk0.NONE;
    }

    @Override // defpackage.jl0
    public abstract /* synthetic */ jl0 getCopy();

    @Override // defpackage.jl0
    public abstract /* synthetic */ String getItemId();

    @jz2
    public abstract Type getItemType();

    @jz2
    public final CharSequence getLastRunText() {
        o oVar = ScheduleLastRunDetails.Companion;
        String itemId = getItemId();
        oVar.getClass();
        itemId.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.last_run);
        StringBuilder sb = new StringBuilder();
        sb.append(strG.concat(": "));
        ScheduleLastRunDetails scheduleLastRunDetailsB = o.b(itemId);
        if (scheduleLastRunDetailsB == null) {
            scheduleLastRunDetailsB = ScheduleLastRunDetails.NeverRun.INSTANCE;
        }
        Long timeMillis = scheduleLastRunDetailsB.getTimeMillis();
        if (timeMillis != null) {
            sb.append(o.a(timeMillis.longValue()));
        }
        String strAsHumanReadableString = scheduleLastRunDetailsB.asHumanReadableString();
        if (strAsHumanReadableString.length() <= 0 || nq7.j0(strAsHumanReadableString)) {
            strAsHumanReadableString = null;
        }
        if (strAsHumanReadableString != null) {
            sb.append("\n");
            sb.append(strAsHumanReadableString);
        }
        return sb.toString();
    }

    public final String getLogTag() {
        return this.logTag;
    }

    @jz2
    public final String getNextRunText() {
        o oVar = ScheduleLastRunDetails.Companion;
        List<Integer> repeatDays = getRepeatDays();
        oVar.getClass();
        repeatDays.getClass();
        Calendar calendar = Calendar.getInstance();
        calendar.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        ((AlarmReceiver) SwiftApp.Companion.a().c.getValue()).getClass();
        Calendar calendarB = AlarmReceiver.b();
        while (calendarB.after(calendar) && !repeatDays.contains(Integer.valueOf(calendarB.get(7)))) {
            calendarB.add(5, 1);
        }
        SwiftApp.Companion companion2 = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.next_run);
        string.getClass();
        String strConcat = string.concat(": ");
        o oVar2 = ScheduleLastRunDetails.Companion;
        long timeInMillis = calendarB.getTimeInMillis();
        oVar2.getClass();
        return strConcat.concat(o.a(timeInMillis));
    }

    @jz2
    public final List<Integer> getRepeatDays() {
        List repeatDays$lambda$0;
        List listV1 = null;
        try {
            repeatDays$lambda$0 = getRepeatDays$lambda$0(this);
        } catch (Exception unused) {
            repeatDays$lambda$0 = null;
        }
        if (repeatDays$lambda$0 != null && !repeatDays$lambda$0.isEmpty()) {
            listV1 = repeatDays$lambda$0;
        }
        if (listV1 == null) {
            Companion.getClass();
            listV1 = el1.v1(new nd4(1, 7, 1));
        }
        return el1.m1(el1.v1(new LinkedHashSet(listV1)));
    }

    @jz2
    public abstract String getRepeatDaysString();

    @jz2
    public final String getRepeatDisplayString() {
        List<Integer> repeatDays = getRepeatDays();
        int i = 7;
        if (repeatDays.size() == 7) {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.everyday);
        }
        ArrayList arrayListL = sz8.l();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListL) {
            if (repeatDays.contains(Integer.valueOf(((jd2) obj).a))) {
                arrayList.add(obj);
            }
        }
        return el1.Y0(arrayList, null, null, null, new hi(i), 31);
    }

    @jz2
    public abstract String getSubtitle();

    @jz2
    public abstract String getTitle();

    @jz2
    public abstract boolean hasAnyCloudLocations();

    @jz2
    public final boolean hasLastRunError() {
        o oVar = ScheduleLastRunDetails.Companion;
        String itemId = getItemId();
        oVar.getClass();
        ScheduleLastRunDetails scheduleLastRunDetailsB = o.b(itemId);
        return scheduleLastRunDetailsB != null && scheduleLastRunDetailsB.isError();
    }

    @jz2
    public boolean isBackupRequirementPossible() {
        return getBackupRequirement().isPossible();
    }

    @jz2
    public abstract boolean isEnabled();

    @jz2
    public boolean isPermissionsGranted() {
        return true;
    }

    @jz2
    public abstract boolean isRootNeeded();

    @jz2
    public abstract boolean isRunnable();

    @jz2
    public boolean isSyncOnly() {
        return false;
    }

    @jz2
    public abstract String toDisplayString();

    public /* synthetic */ ScheduleItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class AppConfig extends ScheduleItem {
        public static final Parcelable.Creator<AppConfig> CREATOR = new e();
        private final String _configId;
        private final boolean _enabled;
        private final String _id;
        private final String _repeatDays;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public AppConfig(String str, Type type, String str2, String str3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.d.i(6, true, true);
                str.getClass();
            }
            this(str, (i & 2) != 0 ? Type.AppConfig : type, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? true : z);
        }

        public static /* synthetic */ AppConfig copy$default(AppConfig appConfig, String str, Type type, String str2, String str3, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = appConfig._id;
            }
            if ((i & 2) != 0) {
                type = appConfig._type;
            }
            if ((i & 4) != 0) {
                str2 = appConfig._configId;
            }
            if ((i & 8) != 0) {
                str3 = appConfig._repeatDays;
            }
            if ((i & 16) != 0) {
                z = appConfig._enabled;
            }
            boolean z2 = z;
            String str4 = str2;
            return appConfig.copy(str, type, str4, str3, z2);
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._configId;
        }

        public final String component4() {
            return this._repeatDays;
        }

        public final boolean component5() {
            return this._enabled;
        }

        public final AppConfig copy(String str, Type type, String str2, String str3, boolean z) {
            str.getClass();
            type.getClass();
            return new AppConfig(str, type, str2, str3, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppConfig)) {
                return false;
            }
            AppConfig appConfig = (AppConfig) obj;
            return pe4.d(this._id, appConfig._id) && this._type == appConfig._type && pe4.d(this._configId, appConfig._configId) && pe4.d(this._repeatDays, appConfig._repeatDays) && this._enabled == appConfig._enabled;
        }

        @jz2
        public final Config getConfig() {
            br1 br1Var = br1.a;
            String str = this._configId;
            ConfigsData configsData = br1.e;
            Config config = configsData != null ? configsData.get(str) : null;
            if (config == null) {
                Log.e(getLogTag(), "getConfig: Config with id=" + this._configId + " no longer exists. ");
            }
            return config;
        }

        @jz2
        public final String getConfigId() {
            ConfigsData configsData;
            Collection<Config> values;
            br1 br1Var = br1.a;
            String str = this._configId;
            if (str != null && str.length() != 0 && (configsData = br1.e) != null && (values = configsData.getValues()) != null && !values.isEmpty()) {
                Iterator<T> it = values.iterator();
                while (it.hasNext()) {
                    if (uq7.P(str, ((Config) it.next()).getId(), true)) {
                        return this._configId;
                    }
                }
            }
            Log.e(getLogTag(), "getConfigId: Config with id=" + this._configId + " no longer exists.");
            return null;
        }

        @jz2
        public final String getConfigName() {
            Config config = getConfig();
            if (config != null) {
                return config.getName();
            }
            return null;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, false, 31, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return getConfigName();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.k(SwiftApp.Companion.c().getString(R.string.apps), ": ", SwiftApp.Companion.c().getString(R.string.config));
        }

        public final String get_configId() {
            return this._configId;
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            Config config = getConfig();
            return config != null && config.hasCloudLocation();
        }

        public final boolean hasInvalidConfigs() {
            return !sq1.a(getConfig(), false);
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._configId;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            List<ConfigSettings> configSettings;
            Config config = getConfig();
            if (config != null && (configSettings = config.getConfigSettings()) != null && !configSettings.isEmpty()) {
                Iterator<T> it = configSettings.iterator();
                while (it.hasNext()) {
                    List<iu> appParts = ((ConfigSettings) it.next()).getAppParts();
                    if (appParts == null || !appParts.isEmpty()) {
                        Iterator<T> it2 = appParts.iterator();
                        while (it2.hasNext()) {
                            if (((iu) it2.next()).getBackupReq() == sk0.ROOT) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            mp6 mp6Var = mp6.a;
            return (!mp6.f() || hasInvalidConfigs() || getConfig() == null) ? false : true;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.j("config=", getConfigName()), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("rootNeeded=", isRootNeeded()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._configId;
            String str3 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("AppConfig(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _configId=");
            xs1.t(sb, str2, ", _repeatDays=", str3, ", _enabled=");
            return dj7.p(sb, z, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._configId);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppConfig(String str, Type type, String str2, String str3, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._configId = str2;
            this._repeatDays = str3;
            this._enabled = z;
        }

        public AppConfig() {
            this(null, null, null, null, false, 31, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Wallpapers extends ScheduleItem {
        public static final Parcelable.Creator<Wallpapers> CREATOR = new m();
        private final boolean _enabled;
        private final String _id;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public Wallpapers(String str, Type type, String str2, String str3, String str4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.d.i(6, true, true);
                str.getClass();
            }
            this(str, (i & 2) != 0 ? Type.Wallpapers : type, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? true : z);
        }

        public static /* synthetic */ Wallpapers copy$default(Wallpapers wallpapers, String str, Type type, String str2, String str3, String str4, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wallpapers._id;
            }
            if ((i & 2) != 0) {
                type = wallpapers._type;
            }
            if ((i & 4) != 0) {
                str2 = wallpapers._locations;
            }
            if ((i & 8) != 0) {
                str3 = wallpapers._syncOption;
            }
            if ((i & 16) != 0) {
                str4 = wallpapers._repeatDays;
            }
            if ((i & 32) != 0) {
                z = wallpapers._enabled;
            }
            String str5 = str4;
            boolean z2 = z;
            return wallpapers.copy(str, type, str2, str3, str5, z2);
        }

        private static final List getLocations$lambda$0(Wallpapers wallpapers) {
            String str = wallpapers._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(Wallpapers wallpapers) {
            String str = wallpapers._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._locations;
        }

        public final String component4() {
            return this._syncOption;
        }

        public final String component5() {
            return this._repeatDays;
        }

        public final boolean component6() {
            return this._enabled;
        }

        public final Wallpapers copy(String str, Type type, String str2, String str3, String str4, boolean z) {
            str.getClass();
            type.getClass();
            return new Wallpapers(str, type, str2, str3, str4, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Wallpapers)) {
                return false;
            }
            Wallpapers wallpapers = (Wallpapers) obj;
            return pe4.d(this._id, wallpapers._id) && this._type == wallpapers._type && pe4.d(this._locations, wallpapers._locations) && pe4.d(this._syncOption, wallpapers._syncOption) && pe4.d(this._repeatDays, wallpapers._repeatDays) && this._enabled == wallpapers._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, false, 63, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return null;
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.wallpapers);
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._locations;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            Object objInvoke;
            try {
                objInvoke = new b7(7).invoke();
            } catch (Exception unused) {
                objInvoke = null;
            }
            Boolean bool = (Boolean) objInvoke;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._locations;
            String str3 = this._syncOption;
            String str4 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("Wallpapers(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _locations=");
            xs1.t(sb, str2, ", _syncOption=", str3, ", _repeatDays=");
            sb.append(str4);
            sb.append(", _enabled=");
            sb.append(z);
            sb.append(")");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Wallpapers(String str, Type type, String str2, String str3, String str4, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._locations = str2;
            this._syncOption = str3;
            this._repeatDays = str4;
            this._enabled = z;
        }

        public Wallpapers() {
            this(null, null, null, null, null, false, 63, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Wifi extends ScheduleItem {
        public static final Parcelable.Creator<Wifi> CREATOR = new n();
        private final boolean _enabled;
        private final String _id;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public Wifi(String str, Type type, String str2, String str3, String str4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.d.i(6, true, true);
                str.getClass();
            }
            this(str, (i & 2) != 0 ? Type.Wifi : type, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? true : z);
        }

        public static /* synthetic */ Wifi copy$default(Wifi wifi, String str, Type type, String str2, String str3, String str4, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wifi._id;
            }
            if ((i & 2) != 0) {
                type = wifi._type;
            }
            if ((i & 4) != 0) {
                str2 = wifi._locations;
            }
            if ((i & 8) != 0) {
                str3 = wifi._syncOption;
            }
            if ((i & 16) != 0) {
                str4 = wifi._repeatDays;
            }
            if ((i & 32) != 0) {
                z = wifi._enabled;
            }
            String str5 = str4;
            boolean z2 = z;
            return wifi.copy(str, type, str2, str3, str5, z2);
        }

        private static final List getLocations$lambda$0(Wifi wifi) {
            String str = wifi._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(Wifi wifi) {
            String str = wifi._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._locations;
        }

        public final String component4() {
            return this._syncOption;
        }

        public final String component5() {
            return this._repeatDays;
        }

        public final boolean component6() {
            return this._enabled;
        }

        public final Wifi copy(String str, Type type, String str2, String str3, String str4, boolean z) {
            str.getClass();
            type.getClass();
            return new Wifi(str, type, str2, str3, str4, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Wifi)) {
                return false;
            }
            Wifi wifi = (Wifi) obj;
            return pe4.d(this._id, wifi._id) && this._type == wifi._type && pe4.d(this._locations, wifi._locations) && pe4.d(this._syncOption, wifi._syncOption) && pe4.d(this._repeatDays, wifi._repeatDays) && this._enabled == wifi._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public sk0 getBackupRequirement() {
            return Build.VERSION.SDK_INT >= 30 ? sk0.ROOT_OR_SHIZUKU : sk0.ROOT;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, false, 63, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return null;
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.wifi);
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._locations;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            return true;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            return true;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("rootNeeded=", isRootNeeded()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._locations;
            String str3 = this._syncOption;
            String str4 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("Wifi(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _locations=");
            xs1.t(sb, str2, ", _syncOption=", str3, ", _repeatDays=");
            sb.append(str4);
            sb.append(", _enabled=");
            sb.append(z);
            sb.append(")");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Wifi(String str, Type type, String str2, String str3, String str4, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._locations = str2;
            this._syncOption = str3;
            this._repeatDays = str4;
            this._enabled = z;
        }

        public Wifi() {
            this(null, null, null, null, null, false, 63, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class CallLogs extends ScheduleItem {
        public static final Parcelable.Creator<CallLogs> CREATOR = new i();
        private final boolean _enabled;
        private final String _id;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public CallLogs(String str, Type type, String str2, String str3, String str4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
                str.getClass();
            }
            type = (i & 2) != 0 ? Type.CallLogs : type;
            str2 = (i & 4) != 0 ? null : str2;
            str3 = (i & 8) != 0 ? null : str3;
            str4 = (i & 16) != 0 ? null : str4;
            if ((i & 32) != 0) {
                dz5 dz5Var = dz5.a;
                z = dz5.g();
            }
            this(str, type, str2, str3, str4, z);
        }

        public static /* synthetic */ CallLogs copy$default(CallLogs callLogs, String str, Type type, String str2, String str3, String str4, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = callLogs._id;
            }
            if ((i & 2) != 0) {
                type = callLogs._type;
            }
            if ((i & 4) != 0) {
                str2 = callLogs._locations;
            }
            if ((i & 8) != 0) {
                str3 = callLogs._syncOption;
            }
            if ((i & 16) != 0) {
                str4 = callLogs._repeatDays;
            }
            if ((i & 32) != 0) {
                z = callLogs._enabled;
            }
            String str5 = str4;
            boolean z2 = z;
            return callLogs.copy(str, type, str2, str3, str5, z2);
        }

        private static final List getLocations$lambda$0(CallLogs callLogs) {
            String str = callLogs._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(CallLogs callLogs) {
            String str = callLogs._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._locations;
        }

        public final String component4() {
            return this._syncOption;
        }

        public final String component5() {
            return this._repeatDays;
        }

        public final boolean component6() {
            return this._enabled;
        }

        public final CallLogs copy(String str, Type type, String str2, String str3, String str4, boolean z) {
            str.getClass();
            type.getClass();
            return new CallLogs(str, type, str2, str3, str4, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CallLogs)) {
                return false;
            }
            CallLogs callLogs = (CallLogs) obj;
            return pe4.d(this._id, callLogs._id) && this._type == callLogs._type && pe4.d(this._locations, callLogs._locations) && pe4.d(this._syncOption, callLogs._syncOption) && pe4.d(this._repeatDays, callLogs._repeatDays) && this._enabled == callLogs._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, false, 63, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return null;
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.call_logs);
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._locations;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled && isPermissionsGranted();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isPermissionsGranted() {
            dz5 dz5Var = dz5.a;
            return dz5.g();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            g00 g00Var = g00.a;
            return g00.r().hasSystemFeature("android.hardware.telephony");
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("permissionsGranted=", isPermissionsGranted()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._locations;
            String str3 = this._syncOption;
            String str4 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("CallLogs(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _locations=");
            xs1.t(sb, str2, ", _syncOption=", str3, ", _repeatDays=");
            sb.append(str4);
            sb.append(", _enabled=");
            sb.append(z);
            sb.append(")");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallLogs(String str, Type type, String str2, String str3, String str4, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._locations = str2;
            this._syncOption = str3;
            this._repeatDays = str4;
            this._enabled = z;
        }

        public CallLogs() {
            this(null, null, null, null, null, false, 63, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Messages extends ScheduleItem {
        public static final Parcelable.Creator<Messages> CREATOR = new l();
        private final boolean _enabled;
        private final String _id;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public Messages(String str, Type type, String str2, String str3, String str4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
                str.getClass();
            }
            type = (i & 2) != 0 ? Type.Messages : type;
            str2 = (i & 4) != 0 ? null : str2;
            str3 = (i & 8) != 0 ? null : str3;
            str4 = (i & 16) != 0 ? null : str4;
            if ((i & 32) != 0) {
                dz5 dz5Var = dz5.a;
                z = dz5.m();
            }
            this(str, type, str2, str3, str4, z);
        }

        public static /* synthetic */ Messages copy$default(Messages messages, String str, Type type, String str2, String str3, String str4, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = messages._id;
            }
            if ((i & 2) != 0) {
                type = messages._type;
            }
            if ((i & 4) != 0) {
                str2 = messages._locations;
            }
            if ((i & 8) != 0) {
                str3 = messages._syncOption;
            }
            if ((i & 16) != 0) {
                str4 = messages._repeatDays;
            }
            if ((i & 32) != 0) {
                z = messages._enabled;
            }
            String str5 = str4;
            boolean z2 = z;
            return messages.copy(str, type, str2, str3, str5, z2);
        }

        private static final List getLocations$lambda$0(Messages messages) {
            String str = messages._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(Messages messages) {
            String str = messages._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._locations;
        }

        public final String component4() {
            return this._syncOption;
        }

        public final String component5() {
            return this._repeatDays;
        }

        public final boolean component6() {
            return this._enabled;
        }

        public final Messages copy(String str, Type type, String str2, String str3, String str4, boolean z) {
            str.getClass();
            type.getClass();
            return new Messages(str, type, str2, str3, str4, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Messages)) {
                return false;
            }
            Messages messages = (Messages) obj;
            return pe4.d(this._id, messages._id) && this._type == messages._type && pe4.d(this._locations, messages._locations) && pe4.d(this._syncOption, messages._syncOption) && pe4.d(this._repeatDays, messages._repeatDays) && this._enabled == messages._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, false, 63, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return null;
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.messages);
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._locations;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled && isPermissionsGranted();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isPermissionsGranted() {
            dz5 dz5Var = dz5.a;
            return dz5.m();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            g00 g00Var = g00.a;
            return g00.r().hasSystemFeature("android.hardware.telephony");
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("permissionsGranted=", isPermissionsGranted()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._locations;
            String str3 = this._syncOption;
            String str4 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("Messages(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _locations=");
            xs1.t(sb, str2, ", _syncOption=", str3, ", _repeatDays=");
            sb.append(str4);
            sb.append(", _enabled=");
            sb.append(z);
            sb.append(")");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Messages(String str, Type type, String str2, String str3, String str4, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._locations = str2;
            this._syncOption = str3;
            this._repeatDays = str4;
            this._enabled = z;
        }

        public Messages() {
            this(null, null, null, null, null, false, 63, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Folders extends ScheduleItem {
        public static final Parcelable.Creator<Folders> CREATOR = new k();
        private final boolean _backupAllFolders;
        private final String _backupStrategy;
        private final boolean _enabled;
        private final List<FolderItem> _folderItems;
        private final String _id;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public Folders(String str, Type type, boolean z, List list, String str2, String str3, String str4, String str5, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.d.i(6, true, true);
                str.getClass();
            }
            this(str, (i & 2) != 0 ? Type.Folders : type, (i & 4) != 0 ? true : z, (i & 8) != 0 ? null : list, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? true : z2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Folders copy$default(Folders folders, String str, Type type, boolean z, List list, String str2, String str3, String str4, String str5, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = folders._id;
            }
            if ((i & 2) != 0) {
                type = folders._type;
            }
            if ((i & 4) != 0) {
                z = folders._backupAllFolders;
            }
            if ((i & 8) != 0) {
                list = folders._folderItems;
            }
            if ((i & 16) != 0) {
                str2 = folders._locations;
            }
            if ((i & 32) != 0) {
                str3 = folders._syncOption;
            }
            if ((i & 64) != 0) {
                str4 = folders._backupStrategy;
            }
            if ((i & 128) != 0) {
                str5 = folders._repeatDays;
            }
            if ((i & 256) != 0) {
                z2 = folders._enabled;
            }
            String str6 = str5;
            boolean z3 = z2;
            String str7 = str3;
            String str8 = str4;
            String str9 = str2;
            boolean z4 = z;
            return folders.copy(str, type, z4, list, str9, str7, str8, str6, z3);
        }

        private static final FolderBackupStrategy getBackupStrategy$lambda$0(Folders folders) {
            String str = folders._backupStrategy;
            if (str != null) {
                return FolderBackupStrategy.valueOf(str);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getFolderItems$lambda$1(FolderItem folderItem) {
            folderItem.getClass();
            return folderItem.getDisplayName();
        }

        private static final List getLocations$lambda$0(Folders folders) {
            String str = folders._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(Folders folders) {
            String str = folders._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final boolean component3() {
            return this._backupAllFolders;
        }

        public final List<FolderItem> component4() {
            return this._folderItems;
        }

        public final String component5() {
            return this._locations;
        }

        public final String component6() {
            return this._syncOption;
        }

        public final String component7() {
            return this._backupStrategy;
        }

        public final String component8() {
            return this._repeatDays;
        }

        public final boolean component9() {
            return this._enabled;
        }

        public final Folders copy(String str, Type type, boolean z, List<FolderItem> list, String str2, String str3, String str4, String str5, boolean z2) {
            str.getClass();
            type.getClass();
            return new Folders(str, type, z, list, str2, str3, str4, str5, z2);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Folders)) {
                return false;
            }
            Folders folders = (Folders) obj;
            return pe4.d(this._id, folders._id) && this._type == folders._type && this._backupAllFolders == folders._backupAllFolders && pe4.d(this._folderItems, folders._folderItems) && pe4.d(this._locations, folders._locations) && pe4.d(this._syncOption, folders._syncOption) && pe4.d(this._backupStrategy, folders._backupStrategy) && pe4.d(this._repeatDays, folders._repeatDays) && this._enabled == folders._enabled;
        }

        @jz2
        public final FolderBackupStrategy getBackupStrategy() {
            FolderBackupStrategy backupStrategy$lambda$0;
            try {
                backupStrategy$lambda$0 = getBackupStrategy$lambda$0(this);
            } catch (Exception unused) {
                backupStrategy$lambda$0 = null;
            }
            if (backupStrategy$lambda$0 != null) {
                return backupStrategy$lambda$0;
            }
            FolderBackupStrategy.Companion.getClass();
            return FolderBackupStrategy.Single;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, false, null, null, null, null, null, false, 511, null);
        }

        @jz2
        public final List<FolderItem> getFolderItems() {
            List<FolderItem> list = this._folderItems;
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((FolderItem) obj).isValid()) {
                    arrayList.add(obj);
                }
            }
            return el1.n1(arrayList, nm3.a(FolderItem.Companion, new nu(12)));
        }

        @jz2
        public final List<String> getFolderNames() {
            List<FolderItem> folderItems = getFolderItems();
            if (folderItems == null) {
                folderItems = ov2.a;
            }
            ArrayList arrayList = new ArrayList(hl1.G0(folderItems, 10));
            Iterator<T> it = folderItems.iterator();
            while (it.hasNext()) {
                arrayList.add(((FolderItem) it.next()).getDisplayName());
            }
            return arrayList;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return isBackupAllFolders() ? "All folder setups" : el1.Y0(getFolderNames(), null, null, null, null, 63);
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.folders);
        }

        public final boolean get_backupAllFolders() {
            return this._backupAllFolders;
        }

        public final String get_backupStrategy() {
            return this._backupStrategy;
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final List<FolderItem> get_folderItems() {
            return this._folderItems;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iH = fz5.h((this._type.hashCode() + (this._id.hashCode() * 31)) * 31, 31, this._backupAllFolders);
            List<FolderItem> list = this._folderItems;
            int iHashCode = (iH + (list == null ? 0 : list.hashCode())) * 31;
            String str = this._locations;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._backupStrategy;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31);
        }

        @jz2
        public final boolean isBackupAllFolders() {
            List<FolderItem> folderItems;
            return this._backupAllFolders || (folderItems = getFolderItems()) == null || folderItems.isEmpty();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            if (isBackupAllFolders()) {
                return true;
            }
            List<FolderItem> folderItems = getFolderItems();
            return (folderItems == null || folderItems.isEmpty()) ? false : true;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            String strValueOf = String.valueOf(getItemType());
            String strM = dj7.m("backupAllFolders=", isBackupAllFolders());
            List<String> folderNames = getFolderNames();
            return el1.Y0(x50.p0(new String[]{strValueOf, strM, folderNames.isEmpty() ? null : xs1.l("folders=", folderNames), xs1.l("locations=", getLocations()), "backupStrategy=" + getBackupStrategy(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("runnable=", isRunnable())}), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            boolean z = this._backupAllFolders;
            List<FolderItem> list = this._folderItems;
            String str2 = this._locations;
            String str3 = this._syncOption;
            String str4 = this._backupStrategy;
            String str5 = this._repeatDays;
            boolean z2 = this._enabled;
            StringBuilder sb = new StringBuilder("Folders(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _backupAllFolders=");
            sb.append(z);
            sb.append(", _folderItems=");
            sb.append(list);
            sb.append(", _locations=");
            xs1.t(sb, str2, ", _syncOption=", str3, ", _backupStrategy=");
            xs1.t(sb, str4, ", _repeatDays=", str5, ", _enabled=");
            return dj7.p(sb, z2, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeInt(this._backupAllFolders ? 1 : 0);
            List<FolderItem> list = this._folderItems;
            if (list == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeInt(list.size());
                Iterator<FolderItem> it = list.iterator();
                while (it.hasNext()) {
                    it.next().writeToParcel(parcel, i);
                }
            }
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._backupStrategy);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Folders(String str, Type type, boolean z, List<FolderItem> list, String str2, String str3, String str4, String str5, boolean z2) {
            super(null);
            str.getClass();
            type.getClass();
            this._id = str;
            this._type = type;
            this._backupAllFolders = z;
            this._folderItems = list;
            this._locations = str2;
            this._syncOption = str3;
            this._backupStrategy = str4;
            this._repeatDays = str5;
            this._enabled = z2;
        }

        public Folders() {
            this(null, null, false, null, null, null, null, null, false, 511, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class AppsLabels extends ScheduleItem {
        public static final Parcelable.Creator<AppsLabels> CREATOR = new f();
        private final String _appParts;
        private final boolean _enabled;
        private final String _id;
        private final String _labelIds;
        private final String _locations;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX WARN: Illegal instructions before constructor call */
        public AppsLabels(String str, Type type, String str2, String str3, String str4, String str5, String str6, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            if ((i & 1) != 0) {
                str = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
                str.getClass();
            }
            this(str, (i & 2) != 0 ? Type.AppsLabels : type, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? el1.Y0(j.a(ScheduleItem.Companion), null, null, null, null, 63) : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) == 0 ? str6 : null, (i & 128) != 0 ? true : z);
        }

        public static /* synthetic */ AppsLabels copy$default(AppsLabels appsLabels, String str, Type type, String str2, String str3, String str4, String str5, String str6, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = appsLabels._id;
            }
            if ((i & 2) != 0) {
                type = appsLabels._type;
            }
            if ((i & 4) != 0) {
                str2 = appsLabels._labelIds;
            }
            if ((i & 8) != 0) {
                str3 = appsLabels._appParts;
            }
            if ((i & 16) != 0) {
                str4 = appsLabels._locations;
            }
            if ((i & 32) != 0) {
                str5 = appsLabels._syncOption;
            }
            if ((i & 64) != 0) {
                str6 = appsLabels._repeatDays;
            }
            if ((i & 128) != 0) {
                z = appsLabels._enabled;
            }
            String str7 = str6;
            boolean z2 = z;
            String str8 = str4;
            String str9 = str5;
            return appsLabels.copy(str, type, str2, str3, str8, str9, str7, z2);
        }

        private static final List getAppParts$lambda$0(AppsLabels appsLabels) {
            List listX0 = nq7.x0(appsLabels._appParts, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(iu.valueOf((String) it.next()));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List getLabelIds$lambda$0(AppsLabels appsLabels) {
            boolean z;
            String str = appsLabels._labelIds;
            List listX0 = str != null ? nq7.x0(str, new String[]{", "}, 6) : null;
            if (listX0 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : listX0) {
                String str2 = (String) obj;
                if (str2.length() == 0) {
                    z = false;
                } else {
                    lr4 lr4Var = lr4.a;
                    boolean zH = lr4.h(str2);
                    if (!zH) {
                        vr6.i$default(vr6.INSTANCE, appsLabels.getLogTag(), eq3.k("getLabelIds(): Label with id=", str2, " no longer exists."), null, 4, null);
                    }
                    z = zH;
                }
                if (z) {
                    arrayList.add(obj);
                }
            }
            return eq3.p(arrayList);
        }

        private static final List getLocations$lambda$0(AppsLabels appsLabels) {
            String str = appsLabels._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final SyncOption getSyncOption$lambda$0(AppsLabels appsLabels) {
            String str = appsLabels._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._labelIds;
        }

        public final String component4() {
            return this._appParts;
        }

        public final String component5() {
            return this._locations;
        }

        public final String component6() {
            return this._syncOption;
        }

        public final String component7() {
            return this._repeatDays;
        }

        public final boolean component8() {
            return this._enabled;
        }

        public final AppsLabels copy(String str, Type type, String str2, String str3, String str4, String str5, String str6, boolean z) {
            str.getClass();
            type.getClass();
            str3.getClass();
            return new AppsLabels(str, type, str2, str3, str4, str5, str6, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppsLabels)) {
                return false;
            }
            AppsLabels appsLabels = (AppsLabels) obj;
            return pe4.d(this._id, appsLabels._id) && this._type == appsLabels._type && pe4.d(this._labelIds, appsLabels._labelIds) && pe4.d(this._appParts, appsLabels._appParts) && pe4.d(this._locations, appsLabels._locations) && pe4.d(this._syncOption, appsLabels._syncOption) && pe4.d(this._repeatDays, appsLabels._repeatDays) && this._enabled == appsLabels._enabled;
        }

        @jz2
        public final List<iu> getAppParts() {
            List appParts$lambda$0;
            Collection collectionA = null;
            try {
                appParts$lambda$0 = getAppParts$lambda$0(this);
            } catch (Exception unused) {
                appParts$lambda$0 = null;
            }
            if (appParts$lambda$0 != null && !appParts$lambda$0.isEmpty()) {
                collectionA = appParts$lambda$0;
            }
            if (collectionA == null) {
                collectionA = j.a(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(collectionA)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, null, null, false, 255, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<String> getLabelIds() {
            return (List) io4.j(getLogTag(), null, true, new as4(this, 11), 10);
        }

        @jz2
        public final List<String> getLabelNames() {
            Set<LabelParams> labels = getLabels();
            if (labels == null) {
                labels = sv2.a;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = labels.iterator();
            while (it.hasNext()) {
                String name = ((LabelParams) it.next()).getName();
                if (name != null) {
                    arrayList.add(name);
                }
            }
            return arrayList;
        }

        @jz2
        public final Set<LabelParams> getLabels() {
            LabelParams labelParamsC;
            List<String> labelIds = getLabelIds();
            if (labelIds == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : labelIds) {
                if (str.length() == 0) {
                    labelParamsC = null;
                } else {
                    lr4 lr4Var = lr4.a;
                    labelParamsC = lr4.c(str);
                    if (labelParamsC == null) {
                        vr6.i$default(vr6.INSTANCE, getLogTag(), eq3.k("getLabels(): Label with id=", str, " no longer exists. Check your schedules please, updated if needed."), null, 4, null);
                    }
                }
                if (labelParamsC != null) {
                    arrayList.add(labelParamsC);
                }
            }
            LabelParams.Companion.getClass();
            xg xgVar = new xg(7);
            String.CASE_INSENSITIVE_ORDER.getClass();
            return el1.z1(el1.n1(arrayList, new yg(xgVar, 4)));
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            String strY0 = el1.Y0(getLabelNames(), null, null, null, null, 63);
            String string = null;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("app_locale", null);
                String upperCase = strY0.toUpperCase((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
                upperCase.getClass();
                return upperCase;
            } catch (ClassCastException unused) {
            }
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.k(SwiftApp.Companion.c().getString(R.string.apps), ": ", SwiftApp.Companion.c().getString(R.string.labels));
        }

        public final String get_appParts() {
            return this._appParts;
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_labelIds() {
            return this._labelIds;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iHashCode = (this._type.hashCode() + (this._id.hashCode() * 31)) * 31;
            String str = this._labelIds;
            int iG = fz5.g((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this._appParts);
            String str2 = this._locations;
            int iHashCode2 = (iG + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._syncOption;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            List<iu> appParts = getAppParts();
            if (appParts != null && appParts.isEmpty()) {
                return false;
            }
            Iterator<T> it = appParts.iterator();
            while (it.hasNext()) {
                if (((iu) it.next()).getBackupReq() == sk0.ROOT) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            if (isRootNeeded()) {
                mp6 mp6Var = mp6.a;
                if (!mp6.g) {
                    return false;
                }
            }
            List<String> labelIds = getLabelIds();
            return !(labelIds == null || labelIds.isEmpty());
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("labels=", getLabelNames()), xs1.l("parts=", getAppParts()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("rootNeeded=", isRootNeeded()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._labelIds;
            String str3 = this._appParts;
            String str4 = this._locations;
            String str5 = this._syncOption;
            String str6 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("AppsLabels(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _labelIds=");
            xs1.t(sb, str2, ", _appParts=", str3, ", _locations=");
            xs1.t(sb, str4, ", _syncOption=", str5, ", _repeatDays=");
            sb.append(str6);
            sb.append(", _enabled=");
            sb.append(z);
            sb.append(")");
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._labelIds);
            parcel.writeString(this._appParts);
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppsLabels(String str, Type type, String str2, String str3, String str4, String str5, String str6, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            str3.getClass();
            this._id = str;
            this._type = type;
            this._labelIds = str2;
            this._appParts = str3;
            this._locations = str4;
            this._syncOption = str5;
            this._repeatDays = str6;
            this._enabled = z;
        }

        public AppsLabels() {
            this(null, null, null, null, null, null, null, false, 255, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class AppsQuickActions extends ScheduleItem {
        public static final Parcelable.Creator<AppsQuickActions> CREATOR = new h();
        private final String _allowedApps;
        private final String _appParts;
        private final boolean _enabled;
        private final String _id;
        private final String _locations;
        private final String _quickActionIntIds;
        private final String _repeatDays;
        private final String _syncOption;
        private final Type _type;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public enum a {
            System,
            User,
            Fav;

            private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

            public static jx2 getEntries() {
                return $ENTRIES;
            }

            public final String toDisplayString(boolean z) {
                if (z) {
                    int i = g.a[ordinal()];
                    if (i == 1) {
                        SwiftApp.Companion companion = SwiftApp.d;
                        return dj7.g(R.string.system);
                    }
                    if (i == 2) {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        return dj7.g(R.string.user);
                    }
                    if (i == 3) {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        return dj7.g(R.string.favorites);
                    }
                    q.j();
                    return null;
                }
                int i2 = g.a[ordinal()];
                if (i2 == 1) {
                    SwiftApp.Companion companion4 = SwiftApp.d;
                    return dj7.g(R.string.system_apps);
                }
                if (i2 == 2) {
                    SwiftApp.Companion companion5 = SwiftApp.d;
                    return dj7.g(R.string.user_apps);
                }
                if (i2 == 3) {
                    SwiftApp.Companion companion6 = SwiftApp.d;
                    return dj7.g(R.string.favorite_apps);
                }
                q.j();
                return null;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public AppsQuickActions(String str, Type type, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            String strY0;
            String strY1;
            if ((i & 1) != 0) {
                str = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
                str.getClass();
            }
            Type type2 = (i & 2) != 0 ? Type.AppsQuickActions : type;
            if ((i & 4) != 0) {
                ScheduleItem.Companion.getClass();
                strY0 = el1.Y0(sz8.Y(101), null, null, null, null, 63);
            } else {
                strY0 = str2;
            }
            if ((i & 8) != 0) {
                ScheduleItem.Companion.getClass();
                strY1 = el1.Y0(sz8.Y(a.User), null, null, null, null, 63);
            } else {
                strY1 = str3;
            }
            this(str, type2, strY0, strY1, (i & 16) != 0 ? el1.Y0(j.a(ScheduleItem.Companion), null, null, null, null, 63) : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) == 0 ? str7 : null, (i & 256) != 0 ? true : z);
        }

        public static /* synthetic */ AppsQuickActions copy$default(AppsQuickActions appsQuickActions, String str, Type type, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = appsQuickActions._id;
            }
            if ((i & 2) != 0) {
                type = appsQuickActions._type;
            }
            if ((i & 4) != 0) {
                str2 = appsQuickActions._quickActionIntIds;
            }
            if ((i & 8) != 0) {
                str3 = appsQuickActions._allowedApps;
            }
            if ((i & 16) != 0) {
                str4 = appsQuickActions._appParts;
            }
            if ((i & 32) != 0) {
                str5 = appsQuickActions._locations;
            }
            if ((i & 64) != 0) {
                str6 = appsQuickActions._syncOption;
            }
            if ((i & 128) != 0) {
                str7 = appsQuickActions._repeatDays;
            }
            if ((i & 256) != 0) {
                z = appsQuickActions._enabled;
            }
            String str8 = str7;
            boolean z2 = z;
            String str9 = str5;
            String str10 = str6;
            String str11 = str4;
            String str12 = str2;
            return appsQuickActions.copy(str, type, str12, str3, str11, str9, str10, str8, z2);
        }

        private static final List getAllowedApps$lambda$0(AppsQuickActions appsQuickActions) {
            List listX0 = nq7.x0(appsQuickActions._allowedApps, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(a.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final List getAppParts$lambda$0(AppsQuickActions appsQuickActions) {
            List listX0 = nq7.x0(appsQuickActions._appParts, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(iu.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final List getLocations$lambda$0(AppsQuickActions appsQuickActions) {
            String str = appsQuickActions._locations;
            if (str == null) {
                return null;
            }
            List listX0 = nq7.x0(str, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList.add(q05.valueOf((String) it.next()));
            }
            return arrayList;
        }

        private static final Set getQuickActionIds$lambda$0(AppsQuickActions appsQuickActions) {
            List listX0 = nq7.x0(appsQuickActions._quickActionIntIds, new String[]{", "}, 6);
            ArrayList arrayList = new ArrayList();
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                Integer numX = uq7.X((String) it.next());
                if (numX != null) {
                    arrayList.add(numX);
                }
            }
            return el1.z1(arrayList);
        }

        private static final SyncOption getSyncOption$lambda$0(AppsQuickActions appsQuickActions) {
            String str = appsQuickActions._syncOption;
            if (str != null) {
                return SyncOption.valueOf(str);
            }
            return null;
        }

        public final String component1() {
            return this._id;
        }

        public final Type component2() {
            return this._type;
        }

        public final String component3() {
            return this._quickActionIntIds;
        }

        public final String component4() {
            return this._allowedApps;
        }

        public final String component5() {
            return this._appParts;
        }

        public final String component6() {
            return this._locations;
        }

        public final String component7() {
            return this._syncOption;
        }

        public final String component8() {
            return this._repeatDays;
        }

        public final boolean component9() {
            return this._enabled;
        }

        public final AppsQuickActions copy(String str, Type type, String str2, String str3, String str4, String str5, String str6, String str7, boolean z) {
            str.getClass();
            type.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            return new AppsQuickActions(str, type, str2, str3, str4, str5, str6, str7, z);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AppsQuickActions)) {
                return false;
            }
            AppsQuickActions appsQuickActions = (AppsQuickActions) obj;
            return pe4.d(this._id, appsQuickActions._id) && this._type == appsQuickActions._type && pe4.d(this._quickActionIntIds, appsQuickActions._quickActionIntIds) && pe4.d(this._allowedApps, appsQuickActions._allowedApps) && pe4.d(this._appParts, appsQuickActions._appParts) && pe4.d(this._locations, appsQuickActions._locations) && pe4.d(this._syncOption, appsQuickActions._syncOption) && pe4.d(this._repeatDays, appsQuickActions._repeatDays) && this._enabled == appsQuickActions._enabled;
        }

        @jz2
        public final List<a> getAllowedApps() {
            List allowedApps$lambda$0;
            Collection collectionY = null;
            try {
                allowedApps$lambda$0 = getAllowedApps$lambda$0(this);
            } catch (Exception unused) {
                allowedApps$lambda$0 = null;
            }
            if (allowedApps$lambda$0 != null && !allowedApps$lambda$0.isEmpty()) {
                collectionY = allowedApps$lambda$0;
            }
            if (collectionY == null) {
                ScheduleItem.Companion.getClass();
                collectionY = sz8.Y(a.User);
            }
            return el1.m1(el1.v1(new LinkedHashSet(collectionY)));
        }

        @jz2
        public final List<iu> getAppParts() {
            List appParts$lambda$0;
            Collection collectionA = null;
            try {
                appParts$lambda$0 = getAppParts$lambda$0(this);
            } catch (Exception unused) {
                appParts$lambda$0 = null;
            }
            if (appParts$lambda$0 != null && !appParts$lambda$0.isEmpty()) {
                collectionA = appParts$lambda$0;
            }
            if (collectionA == null) {
                collectionA = j.a(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(collectionA)));
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public jl0 getCopy() {
            return copy$default(this, null, null, null, null, null, null, null, null, false, 511, null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem, defpackage.jl0
        @jz2
        public String getItemId() {
            return this._id;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public Type getItemType() {
            return this._type;
        }

        @jz2
        public final List<q05> getLocations() {
            List locations$lambda$0;
            if (isSyncOnly()) {
                return nc8.I(q05.CLOUD);
            }
            List listB = null;
            try {
                locations$lambda$0 = getLocations$lambda$0(this);
            } catch (Exception unused) {
                locations$lambda$0 = null;
            }
            if (locations$lambda$0 != null && !locations$lambda$0.isEmpty()) {
                listB = locations$lambda$0;
            }
            if (listB == null) {
                listB = j.b(ScheduleItem.Companion);
            }
            return el1.m1(el1.v1(new LinkedHashSet(listB)));
        }

        @jz2
        public final Set<Integer> getQuickActionIds() {
            Set<Integer> quickActionIds$lambda$0;
            Set<Integer> setY = null;
            try {
                quickActionIds$lambda$0 = getQuickActionIds$lambda$0(this);
            } catch (Exception unused) {
                quickActionIds$lambda$0 = null;
            }
            if (quickActionIds$lambda$0 != null && !quickActionIds$lambda$0.isEmpty()) {
                setY = quickActionIds$lambda$0;
            }
            if (setY == null) {
                ScheduleItem.Companion.getClass();
                setY = sz8.Y(101);
            }
            if (setY.contains(101)) {
                return sz8.Y(101);
            }
            return setY.contains(105) ? sz8.Y(105) : setY;
        }

        @jz2
        public final List<String> getQuickActionNames() {
            Set<Integer> quickActionIds = getQuickActionIds();
            Parcelable.Creator<zc6> creator = zc6.CREATOR;
            ArrayList arrayListA = yc6.a();
            ArrayList<zc6> arrayList = new ArrayList();
            for (Object obj : arrayListA) {
                if (quickActionIds.contains(Integer.valueOf(((zc6) obj).b))) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            for (zc6 zc6Var : arrayList) {
                SwiftApp.Companion companion = SwiftApp.d;
                arrayList2.add(SwiftApp.Companion.c().getString(zc6Var.c));
            }
            return arrayList2;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getRepeatDaysString() {
            return this._repeatDays;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getSubtitle() {
            return el1.Y0(getQuickActionNames(), null, null, null, null, 63);
        }

        @jz2
        public final SyncOption getSyncOption() {
            SyncOption syncOption$lambda$0;
            try {
                syncOption$lambda$0 = getSyncOption$lambda$0(this);
            } catch (Exception unused) {
                syncOption$lambda$0 = null;
            }
            if (syncOption$lambda$0 != null) {
                return syncOption$lambda$0;
            }
            ScheduleItem.Companion.getClass();
            return SyncOption.WIFI;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String getTitle() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.k(SwiftApp.Companion.c().getString(R.string.apps), ": ", SwiftApp.Companion.c().getString(R.string.quick_actions));
        }

        public final String get_allowedApps() {
            return this._allowedApps;
        }

        public final String get_appParts() {
            return this._appParts;
        }

        public final boolean get_enabled() {
            return this._enabled;
        }

        public final String get_id() {
            return this._id;
        }

        public final String get_locations() {
            return this._locations;
        }

        public final String get_quickActionIntIds() {
            return this._quickActionIntIds;
        }

        public final String get_repeatDays() {
            return this._repeatDays;
        }

        public final String get_syncOption() {
            return this._syncOption;
        }

        public final Type get_type() {
            return this._type;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean hasAnyCloudLocations() {
            return ji8.r(getLocations());
        }

        public int hashCode() {
            int iG = fz5.g(fz5.g(fz5.g((this._type.hashCode() + (this._id.hashCode() * 31)) * 31, 31, this._quickActionIntIds), 31, this._allowedApps), 31, this._appParts);
            String str = this._locations;
            int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this._syncOption;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this._repeatDays;
            return Boolean.hashCode(this._enabled) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isEnabled() {
            return this._enabled;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRootNeeded() {
            List<iu> appParts = getAppParts();
            if (appParts != null && appParts.isEmpty()) {
                return false;
            }
            Iterator<T> it = appParts.iterator();
            while (it.hasNext()) {
                if (((iu) it.next()).getBackupReq() == sk0.ROOT) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isRunnable() {
            if (isRootNeeded()) {
                mp6 mp6Var = mp6.a;
                if (!mp6.g) {
                    return false;
                }
            }
            return !getQuickActionIds().isEmpty();
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public boolean isSyncOnly() {
            return getQuickActionIds().contains(105);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem
        @jz2
        public String toDisplayString() {
            return el1.Y0(fl1.A0(String.valueOf(getItemType()), xs1.l("actions=", getQuickActionNames()), xs1.l("allowedApps=", getAllowedApps()), xs1.l("parts=", getAppParts()), xs1.l("locations=", getLocations()), "sync=" + getSyncOption(), xs1.l("repeat=", getRepeatDays()), dj7.m("enabled=", isEnabled()), dj7.m("rootNeeded=", isRootNeeded()), dj7.m("runnable=", isRunnable())), null, null, null, null, 63);
        }

        public String toString() {
            String str = this._id;
            Type type = this._type;
            String str2 = this._quickActionIntIds;
            String str3 = this._allowedApps;
            String str4 = this._appParts;
            String str5 = this._locations;
            String str6 = this._syncOption;
            String str7 = this._repeatDays;
            boolean z = this._enabled;
            StringBuilder sb = new StringBuilder("AppsQuickActions(_id=");
            sb.append(str);
            sb.append(", _type=");
            sb.append(type);
            sb.append(", _quickActionIntIds=");
            xs1.t(sb, str2, ", _allowedApps=", str3, ", _appParts=");
            xs1.t(sb, str4, ", _locations=", str5, ", _syncOption=");
            xs1.t(sb, str6, ", _repeatDays=", str7, ", _enabled=");
            return dj7.p(sb, z, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._id);
            parcel.writeString(this._type.name());
            parcel.writeString(this._quickActionIntIds);
            parcel.writeString(this._allowedApps);
            parcel.writeString(this._appParts);
            parcel.writeString(this._locations);
            parcel.writeString(this._syncOption);
            parcel.writeString(this._repeatDays);
            parcel.writeInt(this._enabled ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppsQuickActions(String str, Type type, String str2, String str3, String str4, String str5, String str6, String str7, boolean z) {
            super(null);
            str.getClass();
            type.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            this._id = str;
            this._type = type;
            this._quickActionIntIds = str2;
            this._allowedApps = str3;
            this._appParts = str4;
            this._locations = str5;
            this._syncOption = str6;
            this._repeatDays = str7;
            this._enabled = z;
        }

        public AppsQuickActions() {
            this(null, null, null, null, null, null, null, null, false, 511, null);
        }
    }
}
