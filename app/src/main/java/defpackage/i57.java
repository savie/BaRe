package defpackage;

import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class i57 {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[ScheduleItem.Type.values().length];
        try {
            iArr[ScheduleItem.Type.AppConfig.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ScheduleItem.Type.AppsLabels.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[ScheduleItem.Type.AppsQuickActions.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[ScheduleItem.Type.Messages.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[ScheduleItem.Type.CallLogs.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[ScheduleItem.Type.Wallpapers.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[ScheduleItem.Type.Wifi.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[ScheduleItem.Type.Folders.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
        int[] iArr2 = new int[w37.values().length];
        try {
            iArr2[w37.QuickActions.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[w37.Labels.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[w37.Config.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[w37.AllowedApps.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[w37.AppParts.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[w37.Locations.ordinal()] = 6;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr2[w37.SyncOptions.ordinal()] = 7;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            iArr2[w37.RepeatDays.ordinal()] = 8;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            iArr2[w37.Folders.ordinal()] = 9;
        } catch (NoSuchFieldError unused17) {
        }
        try {
            iArr2[w37.FolderMode.ordinal()] = 10;
        } catch (NoSuchFieldError unused18) {
        }
        try {
            iArr2[w37.BackupStrategy.ordinal()] = 11;
        } catch (NoSuchFieldError unused19) {
        }
        b = iArr2;
    }
}
