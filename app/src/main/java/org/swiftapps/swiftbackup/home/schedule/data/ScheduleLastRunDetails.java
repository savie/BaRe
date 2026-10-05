package org.swiftapps.swiftbackup.home.schedule.data;

import defpackage.dj7;
import defpackage.eq3;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.hl1;
import defpackage.x65;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ScheduleLastRunDetails {
    public static final o Companion = new o();
    private static final Map<String, Class<? extends ScheduleLastRunDetails>> storedTypeClasses;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class NeverRun extends ScheduleLastRunDetails {
        public static final NeverRun INSTANCE = new NeverRun();

        private NeverRun() {
            super(null);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.never);
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof NeverRun);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return null;
        }

        public int hashCode() {
            return 1895608537;
        }

        public String toString() {
            return "NeverRun";
        }
    }

    static {
        List listA0 = fl1.A0(NeverRun.class, Started.class, BlockedLowBattery.class, BlockedNotCharging.class, SkippedUploadNetworkError.class, SkippedUploadCloudNotConnected.class, SkippedUploadSyncOptionsError.class, BlockedWifiPrivilegedAccess.class, FailedWifiDeviceRead.class);
        int iQ0 = x65.q0(hl1.G0(listA0, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (Object obj : listA0) {
            linkedHashMap.put(((Class) obj).getSimpleName(), obj);
        }
        storedTypeClasses = linkedHashMap;
    }

    public /* synthetic */ ScheduleLastRunDetails(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String asHumanReadableString();

    public abstract Long getTimeMillis();

    public final boolean isError() {
        return ((this instanceof NeverRun) || (this instanceof Started)) ? false : true;
    }

    private ScheduleLastRunDetails() {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class BlockedLowBattery extends ScheduleLastRunDetails {
        private final int batteryLevel;
        private final int requiredBatteryLevel;
        private final long time;

        public /* synthetic */ BlockedLowBattery(long j, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? System.currentTimeMillis() : j, i, i2);
        }

        public static /* synthetic */ BlockedLowBattery copy$default(BlockedLowBattery blockedLowBattery, long j, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                j = blockedLowBattery.time;
            }
            if ((i3 & 2) != 0) {
                i = blockedLowBattery.batteryLevel;
            }
            if ((i3 & 4) != 0) {
                i2 = blockedLowBattery.requiredBatteryLevel;
            }
            return blockedLowBattery.copy(j, i, i2);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(R.string.schedule_battery_error_message, String.valueOf(this.batteryLevel), String.valueOf(this.requiredBatteryLevel));
            string.getClass();
            return string;
        }

        public final long component1() {
            return this.time;
        }

        public final int component2() {
            return this.batteryLevel;
        }

        public final int component3() {
            return this.requiredBatteryLevel;
        }

        public final BlockedLowBattery copy(long j, int i, int i2) {
            return new BlockedLowBattery(j, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BlockedLowBattery)) {
                return false;
            }
            BlockedLowBattery blockedLowBattery = (BlockedLowBattery) obj;
            return this.time == blockedLowBattery.time && this.batteryLevel == blockedLowBattery.batteryLevel && this.requiredBatteryLevel == blockedLowBattery.requiredBatteryLevel;
        }

        public final int getBatteryLevel() {
            return this.batteryLevel;
        }

        public final int getRequiredBatteryLevel() {
            return this.requiredBatteryLevel;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Integer.hashCode(this.requiredBatteryLevel) + eq3.d(this.batteryLevel, Long.hashCode(this.time) * 31, 31);
        }

        public String toString() {
            return "BlockedLowBattery(time=" + this.time + ", batteryLevel=" + this.batteryLevel + ", requiredBatteryLevel=" + this.requiredBatteryLevel + ")";
        }

        public BlockedLowBattery(long j, int i, int i2) {
            super(null);
            this.time = j;
            this.batteryLevel = i;
            this.requiredBatteryLevel = i2;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class BlockedNotCharging extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ BlockedNotCharging(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ BlockedNotCharging copy$default(BlockedNotCharging blockedNotCharging, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = blockedNotCharging.time;
            }
            return blockedNotCharging.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.schedule_charging_error_message);
        }

        public final long component1() {
            return this.time;
        }

        public final BlockedNotCharging copy(long j) {
            return new BlockedNotCharging(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BlockedNotCharging) && this.time == ((BlockedNotCharging) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("BlockedNotCharging(time=", ")", this.time);
        }

        public BlockedNotCharging(long j) {
            super(null);
            this.time = j;
        }

        public BlockedNotCharging() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class BlockedWifiPrivilegedAccess extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ BlockedWifiPrivilegedAccess(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ BlockedWifiPrivilegedAccess copy$default(BlockedWifiPrivilegedAccess blockedWifiPrivilegedAccess, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = blockedWifiPrivilegedAccess.time;
            }
            return blockedWifiPrivilegedAccess.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.root_access_or_shizuku_needed);
        }

        public final long component1() {
            return this.time;
        }

        public final BlockedWifiPrivilegedAccess copy(long j) {
            return new BlockedWifiPrivilegedAccess(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BlockedWifiPrivilegedAccess) && this.time == ((BlockedWifiPrivilegedAccess) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("BlockedWifiPrivilegedAccess(time=", ")", this.time);
        }

        public BlockedWifiPrivilegedAccess(long j) {
            super(null);
            this.time = j;
        }

        public BlockedWifiPrivilegedAccess() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class FailedWifiDeviceRead extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ FailedWifiDeviceRead(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ FailedWifiDeviceRead copy$default(FailedWifiDeviceRead failedWifiDeviceRead, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = failedWifiDeviceRead.time;
            }
            return failedWifiDeviceRead.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.wifi_device_read_failed);
        }

        public final long component1() {
            return this.time;
        }

        public final FailedWifiDeviceRead copy(long j) {
            return new FailedWifiDeviceRead(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FailedWifiDeviceRead) && this.time == ((FailedWifiDeviceRead) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("FailedWifiDeviceRead(time=", ")", this.time);
        }

        public FailedWifiDeviceRead(long j) {
            super(null);
            this.time = j;
        }

        public FailedWifiDeviceRead() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class SkippedUploadCloudNotConnected extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ SkippedUploadCloudNotConnected(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ SkippedUploadCloudNotConnected copy$default(SkippedUploadCloudNotConnected skippedUploadCloudNotConnected, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = skippedUploadCloudNotConnected.time;
            }
            return skippedUploadCloudNotConnected.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.cloud_upload_skipped_cloud_not_connected);
        }

        public final long component1() {
            return this.time;
        }

        public final SkippedUploadCloudNotConnected copy(long j) {
            return new SkippedUploadCloudNotConnected(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SkippedUploadCloudNotConnected) && this.time == ((SkippedUploadCloudNotConnected) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("SkippedUploadCloudNotConnected(time=", ")", this.time);
        }

        public SkippedUploadCloudNotConnected(long j) {
            super(null);
            this.time = j;
        }

        public SkippedUploadCloudNotConnected() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class SkippedUploadNetworkError extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ SkippedUploadNetworkError(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ SkippedUploadNetworkError copy$default(SkippedUploadNetworkError skippedUploadNetworkError, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = skippedUploadNetworkError.time;
            }
            return skippedUploadNetworkError.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.cloud_upload_skipped_network_error);
        }

        public final long component1() {
            return this.time;
        }

        public final SkippedUploadNetworkError copy(long j) {
            return new SkippedUploadNetworkError(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SkippedUploadNetworkError) && this.time == ((SkippedUploadNetworkError) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("SkippedUploadNetworkError(time=", ")", this.time);
        }

        public SkippedUploadNetworkError(long j) {
            super(null);
            this.time = j;
        }

        public SkippedUploadNetworkError() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class SkippedUploadSyncOptionsError extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ SkippedUploadSyncOptionsError(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ SkippedUploadSyncOptionsError copy$default(SkippedUploadSyncOptionsError skippedUploadSyncOptionsError, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = skippedUploadSyncOptionsError.time;
            }
            return skippedUploadSyncOptionsError.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            SwiftApp.Companion companion = SwiftApp.d;
            return dj7.g(R.string.cloud_upload_skipped_no_wifi_error);
        }

        public final long component1() {
            return this.time;
        }

        public final SkippedUploadSyncOptionsError copy(long j) {
            return new SkippedUploadSyncOptionsError(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SkippedUploadSyncOptionsError) && this.time == ((SkippedUploadSyncOptionsError) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("SkippedUploadSyncOptionsError(time=", ")", this.time);
        }

        public SkippedUploadSyncOptionsError(long j) {
            super(null);
            this.time = j;
        }

        public SkippedUploadSyncOptionsError() {
            this(0L, 1, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Started extends ScheduleLastRunDetails {
        private final long time;

        public /* synthetic */ Started(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? System.currentTimeMillis() : j);
        }

        public static /* synthetic */ Started copy$default(Started started, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = started.time;
            }
            return started.copy(j);
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public String asHumanReadableString() {
            return "";
        }

        public final long component1() {
            return this.time;
        }

        public final Started copy(long j) {
            return new Started(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Started) && this.time == ((Started) obj).time;
        }

        public final long getTime() {
            return this.time;
        }

        @Override // org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails
        public Long getTimeMillis() {
            return Long.valueOf(this.time);
        }

        public int hashCode() {
            return Long.hashCode(this.time);
        }

        public String toString() {
            return fz5.m("Started(time=", ")", this.time);
        }

        public Started(long j) {
            super(null);
            this.time = j;
        }

        public Started() {
            this(0L, 1, null);
        }
    }
}
