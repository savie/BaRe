package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ji implements Parcelable, jl0 {
    public static final String PARCEL_KEY = "APP_PARCEL";
    private static final String logTag = "App";
    private String _installerPackage;
    private String appId;
    private AppCloudBackups cloudBackups;
    private String dataDir;
    private Long dateBackup;
    private Long dateBackupUpdated;
    private Long dateInstalled;
    private Long dateUpdated;
    private String deDataDir;
    private boolean enabled;
    private Boolean hasRestorableLocalBackup;
    private final os4 installerPackage$delegate;
    private boolean isBundled;
    private boolean isCloudApp;
    private boolean isFavorite;
    private boolean isInstalled;
    private boolean isLaunchable;
    private Set<LabelParams> labels;
    private List<gm> localBackups;
    private String name;
    private String packageName;
    private String randomIdToForceNotifyChange;
    private List<yc7> sharedLibsInfos;
    private qx sizeInfo;
    private String sourceDir;
    private List<String> splitSourceDirs;
    private Long versionCode;
    private String versionName;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<ji> CREATOR = new b();

    /* JADX WARN: Illegal instructions before constructor call */
    public ji(String str, String str2, String str3, String str4, Long l, String str5, String str6, String str7, List list, List list2, Long l2, Long l3, Long l4, Long l5, Boolean bool, boolean z, boolean z2, boolean z3, boolean z4, qx qxVar, String str8, List list3, boolean z5, AppCloudBackups appCloudBackups, boolean z6, Set set, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        String strH;
        String str10;
        boolean zContainsKey;
        Set setD;
        if ((i & 4) != 0) {
            g00 g00Var = g00.a;
            strH = g00.h(str);
        } else {
            strH = str3;
        }
        String str11 = (i & 8) != 0 ? null : str4;
        Long l6 = (i & 16) != 0 ? null : l;
        String str12 = (i & 32) != 0 ? null : str5;
        String str13 = (i & 64) != 0 ? null : str6;
        String str14 = (i & 128) != 0 ? null : str7;
        List list4 = (i & 256) != 0 ? null : list;
        List list5 = (i & 512) != 0 ? null : list2;
        Long l7 = (i & 1024) != 0 ? null : l2;
        Long l8 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : l3;
        Long l9 = (i & 4096) != 0 ? null : l4;
        Long l10 = (i & 8192) != 0 ? null : l5;
        Boolean bool2 = (i & 16384) != 0 ? null : bool;
        boolean z7 = (32768 & i) != 0 ? false : z;
        boolean z8 = (65536 & i) != 0 ? false : z2;
        boolean z9 = (131072 & i) != 0 ? false : z3;
        boolean z10 = (262144 & i) != 0 ? true : z4;
        qx qxVar2 = (524288 & i) != 0 ? null : qxVar;
        String str15 = (1048576 & i) != 0 ? null : str8;
        List list6 = (2097152 & i) != 0 ? null : list3;
        boolean z11 = (4194304 & i) != 0 ? false : z5;
        AppCloudBackups appCloudBackups2 = (8388608 & i) != 0 ? null : appCloudBackups;
        if ((16777216 & i) != 0) {
            v53 v53Var = v53.a;
            str.getClass();
            str10 = str;
            zContainsKey = v53.c.containsKey(str10);
        } else {
            str10 = str;
            zContainsKey = z6;
        }
        if ((33554432 & i) != 0) {
            lr4 lr4Var = lr4.a;
            setD = lr4.d(strH);
        } else {
            setD = set;
        }
        this(str10, str2, strH, str11, l6, str12, str13, str14, list4, list5, l7, l8, l9, l10, bool2, z7, z8, z9, z10, qxVar2, str15, list6, z11, appCloudBackups2, zContainsKey, setD, (i & 67108864) != 0 ? null : str9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ji copy$default(ji jiVar, String str, String str2, String str3, String str4, Long l, String str5, String str6, String str7, List list, List list2, Long l2, Long l3, Long l4, Long l5, Boolean bool, boolean z, boolean z2, boolean z3, boolean z4, qx qxVar, String str8, List list3, boolean z5, AppCloudBackups appCloudBackups, boolean z6, Set set, String str9, int i, Object obj) {
        String str10;
        Set set2;
        String str11 = (i & 1) != 0 ? jiVar.packageName : str;
        String str12 = (i & 2) != 0 ? jiVar.name : str2;
        String str13 = (i & 4) != 0 ? jiVar.appId : str3;
        String str14 = (i & 8) != 0 ? jiVar.versionName : str4;
        Long l6 = (i & 16) != 0 ? jiVar.versionCode : l;
        String str15 = (i & 32) != 0 ? jiVar.sourceDir : str5;
        String str16 = (i & 64) != 0 ? jiVar.dataDir : str6;
        String str17 = (i & 128) != 0 ? jiVar.deDataDir : str7;
        List list4 = (i & 256) != 0 ? jiVar.splitSourceDirs : list;
        List list5 = (i & 512) != 0 ? jiVar.sharedLibsInfos : list2;
        Long l7 = (i & 1024) != 0 ? jiVar.dateInstalled : l2;
        Long l8 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? jiVar.dateUpdated : l3;
        Long l9 = (i & 4096) != 0 ? jiVar.dateBackup : l4;
        Long l10 = (i & 8192) != 0 ? jiVar.dateBackupUpdated : l5;
        String str18 = str11;
        Boolean bool2 = (i & 16384) != 0 ? jiVar.hasRestorableLocalBackup : bool;
        boolean z7 = (i & 32768) != 0 ? jiVar.isLaunchable : z;
        boolean z8 = (i & 65536) != 0 ? jiVar.isBundled : z2;
        boolean z9 = (i & 131072) != 0 ? jiVar.isInstalled : z3;
        boolean z10 = (i & 262144) != 0 ? jiVar.enabled : z4;
        qx qxVar2 = (i & 524288) != 0 ? jiVar.sizeInfo : qxVar;
        String str19 = (i & 1048576) != 0 ? jiVar._installerPackage : str8;
        List list6 = (i & 2097152) != 0 ? jiVar.localBackups : list3;
        boolean z11 = (i & 4194304) != 0 ? jiVar.isCloudApp : z5;
        AppCloudBackups appCloudBackups2 = (i & 8388608) != 0 ? jiVar.cloudBackups : appCloudBackups;
        boolean z12 = (i & 16777216) != 0 ? jiVar.isFavorite : z6;
        Set set3 = (i & 33554432) != 0 ? jiVar.labels : set;
        if ((i & 67108864) != 0) {
            set2 = set3;
            str10 = jiVar.randomIdToForceNotifyChange;
        } else {
            str10 = str9;
            set2 = set3;
        }
        return jiVar.copy(str18, str12, str13, str14, l6, str15, str16, str17, list4, list5, l7, l8, l9, l10, bool2, z7, z8, z9, z10, qxVar2, str19, list6, z11, appCloudBackups2, z12, set2, str10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence getSplitsUsingWorkaround$lambda$2(File file) {
        file.getClass();
        String name = file.getName();
        name.getClass();
        return name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String installerPackage_delegate$lambda$0(ji jiVar) {
        String str = jiVar._installerPackage;
        if (str != null) {
            return str;
        }
        g00 g00Var = g00.a;
        String str2 = jiVar.packageName;
        str2.getClass();
        String str3 = (String) io4.j("AppUtil", "getInstallerPackage", true, new bk(str2, 5), 8);
        jiVar._installerPackage = str3;
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshExtras() {
        refreshBackupDetails();
        v53 v53Var = v53.a;
        String str = this.packageName;
        str.getClass();
        this.isFavorite = v53.c.containsKey(str);
        lr4 lr4Var = lr4.a;
        this.labels = lr4.d(this.appId);
    }

    public final String asString() {
        return u48.n(this.name, " (", this.packageName, ")");
    }

    public final void calculateSize(boolean z, boolean z2, boolean z3, boolean z4) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
        } else if (checkInstalled()) {
            this.sizeInfo = qx.Companion.create(this, z, z2, z3, z4);
        } else {
            refreshBackupDetails();
        }
    }

    public final boolean checkInstalled() {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        String str = this.packageName;
        boolean z = false;
        if (str != null) {
            try {
                contextC.getPackageManager().getPackageInfo(str, 0);
                z = true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.isInstalled = z;
        return z;
    }

    public final String component1() {
        return this.packageName;
    }

    public final List<yc7> component10() {
        return this.sharedLibsInfos;
    }

    public final Long component11() {
        return this.dateInstalled;
    }

    public final Long component12() {
        return this.dateUpdated;
    }

    public final Long component13() {
        return this.dateBackup;
    }

    public final Long component14() {
        return this.dateBackupUpdated;
    }

    public final Boolean component15() {
        return this.hasRestorableLocalBackup;
    }

    public final boolean component16() {
        return this.isLaunchable;
    }

    public final boolean component17() {
        return this.isBundled;
    }

    public final boolean component18() {
        return this.isInstalled;
    }

    public final boolean component19() {
        return this.enabled;
    }

    public final String component2() {
        return this.name;
    }

    public final qx component20() {
        return this.sizeInfo;
    }

    public final String component21() {
        return this._installerPackage;
    }

    public final List<gm> component22() {
        return this.localBackups;
    }

    public final boolean component23() {
        return this.isCloudApp;
    }

    public final AppCloudBackups component24() {
        return this.cloudBackups;
    }

    public final boolean component25() {
        return this.isFavorite;
    }

    public final Set<LabelParams> component26() {
        return this.labels;
    }

    public final String component27() {
        return this.randomIdToForceNotifyChange;
    }

    public final String component3() {
        return this.appId;
    }

    public final String component4() {
        return this.versionName;
    }

    public final Long component5() {
        return this.versionCode;
    }

    public final String component6() {
        return this.sourceDir;
    }

    public final String component7() {
        return this.dataDir;
    }

    public final String component8() {
        return this.deDataDir;
    }

    public final List<String> component9() {
        return this.splitSourceDirs;
    }

    public final ji copy(String str, String str2, String str3, String str4, Long l, String str5, String str6, String str7, List<String> list, List<yc7> list2, Long l2, Long l3, Long l4, Long l5, Boolean bool, boolean z, boolean z2, boolean z3, boolean z4, qx qxVar, String str8, List<gm> list3, boolean z5, AppCloudBackups appCloudBackups, boolean z6, Set<LabelParams> set, String str9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new ji(str, str2, str3, str4, l, str5, str6, str7, list, list2, l2, l3, l4, l5, bool, z, z2, z3, z4, qxVar, str8, list3, z5, appCloudBackups, z6, set, str9);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ji)) {
            return false;
        }
        ji jiVar = (ji) obj;
        return pe4.d(this.packageName, jiVar.packageName) && pe4.d(this.name, jiVar.name) && pe4.d(this.appId, jiVar.appId) && pe4.d(this.versionName, jiVar.versionName) && pe4.d(this.versionCode, jiVar.versionCode) && pe4.d(this.sourceDir, jiVar.sourceDir) && pe4.d(this.dataDir, jiVar.dataDir) && pe4.d(this.deDataDir, jiVar.deDataDir) && pe4.d(this.splitSourceDirs, jiVar.splitSourceDirs) && pe4.d(this.sharedLibsInfos, jiVar.sharedLibsInfos) && pe4.d(this.dateInstalled, jiVar.dateInstalled) && pe4.d(this.dateUpdated, jiVar.dateUpdated) && pe4.d(this.dateBackup, jiVar.dateBackup) && pe4.d(this.dateBackupUpdated, jiVar.dateBackupUpdated) && pe4.d(this.hasRestorableLocalBackup, jiVar.hasRestorableLocalBackup) && this.isLaunchable == jiVar.isLaunchable && this.isBundled == jiVar.isBundled && this.isInstalled == jiVar.isInstalled && this.enabled == jiVar.enabled && pe4.d(this.sizeInfo, jiVar.sizeInfo) && pe4.d(this._installerPackage, jiVar._installerPackage) && pe4.d(this.localBackups, jiVar.localBackups) && this.isCloudApp == jiVar.isCloudApp && pe4.d(this.cloudBackups, jiVar.cloudBackups) && this.isFavorite == jiVar.isFavorite && pe4.d(this.labels, jiVar.labels) && pe4.d(this.randomIdToForceNotifyChange, jiVar.randomIdToForceNotifyChange);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final AppCloudBackups getCloudBackups() {
        return this.cloudBackups;
    }

    @Override // defpackage.jl0
    public ji getCopy() {
        return copy$default(this, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, null, 134217727, null);
    }

    public final String getDataDir() {
        return this.dataDir;
    }

    public final Long getDateBackedUpOrUpdated() {
        Long l = this.dateBackupUpdated;
        return l == null ? this.dateBackup : l;
    }

    public final Long getDateBackup() {
        return this.dateBackup;
    }

    public final Long getDateBackupUpdated() {
        return this.dateBackupUpdated;
    }

    public final Long getDateInstalled() {
        return this.dateInstalled;
    }

    public final Long getDateUpdated() {
        return this.dateUpdated;
    }

    public final String getDeDataDir() {
        return this.deDataDir;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final String getExpansionDir() {
        String str = Environment.getExternalStorageDirectory() + "/Android/obb/" + this.packageName;
        g00 g00Var = g00.a;
        if (!g00.x()) {
            return str;
        }
        mp6 mp6Var = mp6.a;
        return uq7.T(str, mp6.c(), (String) mp6.f.getValue());
    }

    public final String getExternalDataDir() {
        String str = Environment.getExternalStorageDirectory() + "/Android/data/" + this.packageName;
        g00 g00Var = g00.a;
        if (!g00.x()) {
            return str;
        }
        mp6 mp6Var = mp6.a;
        return uq7.T(str, mp6.c(), (String) mp6.f.getValue());
    }

    public final Boolean getHasRestorableLocalBackup() {
        return this.hasRestorableLocalBackup;
    }

    public final String getInstallerPackage() {
        return (String) this.installerPackage$delegate.getValue();
    }

    @Override // defpackage.jl0
    public String getItemId() {
        return this.packageName;
    }

    public final Set<LabelParams> getLabels() {
        return this.labels;
    }

    public final List<gm> getLocalBackups() {
        return this.localBackups;
    }

    public final String getMediaDir() {
        String str = Environment.getExternalStorageDirectory() + "/Android/media/" + this.packageName;
        g00 g00Var = g00.a;
        if (!g00.x()) {
            return str;
        }
        mp6 mp6Var = mp6.a;
        return uq7.T(str, mp6.c(), (String) mp6.f.getValue());
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getRandomIdToForceNotifyChange() {
        return this.randomIdToForceNotifyChange;
    }

    public final List<yc7> getSharedLibsInfos() {
        return this.sharedLibsInfos;
    }

    public final qx getSizeInfo() {
        return this.sizeInfo;
    }

    public final String getSourceDir() {
        return this.sourceDir;
    }

    public final List<String> getSplitSourceDirs() {
        return this.splitSourceDirs;
    }

    public final List<String> getSplitsUsingWorkaround() {
        List listM1;
        File[] fileArrListFiles;
        List<String> list = this.splitSourceDirs;
        if (list != null && !list.isEmpty()) {
            return this.splitSourceDirs;
        }
        String str = this.sourceDir;
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        File parentFile = new File(str).getParentFile();
        int i = 0;
        if (parentFile == null || (fileArrListFiles = parentFile.listFiles()) == null) {
            listM1 = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (File file : fileArrListFiles) {
                String name = file.getName();
                name.getClass();
                if (uq7.V(name, "split", false) && nc3.R(file).equals("apk")) {
                    arrayList2.add(file);
                }
            }
            listM1 = el1.m1(arrayList2);
        }
        if (listM1 != null) {
            arrayList = new ArrayList();
            Iterator it = listM1.iterator();
            while (it.hasNext()) {
                String path = ((File) it.next()).getPath();
                if (path != null) {
                    arrayList.add(path);
                }
            }
        }
        List<String> list2 = this.splitSourceDirs;
        if ((list2 == null || list2.isEmpty()) && arrayList != null && !arrayList.isEmpty()) {
            vr6.INSTANCE.w(logTag, u48.k(listM1.size(), "Splits path were not shared by system PackageManager! However, we found ", " splits: ", el1.Y0(listM1, null, null, null, new hi(i), 31)), vr6.a.YELLOW);
            this.splitSourceDirs = arrayList;
        }
        return arrayList;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final String get_installerPackage() {
        return this._installerPackage;
    }

    public final boolean hasBackup(boolean z) {
        AppCloudBackup latestBackup;
        CloudMetadata metadata;
        if (z) {
            AppCloudBackups appCloudBackups = this.cloudBackups;
            return (appCloudBackups == null || (latestBackup = appCloudBackups.getLatestBackup()) == null || (metadata = latestBackup.getMetadata()) == null || !metadata.hasBackups()) ? false : true;
        }
        List<gm> list = this.localBackups;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public final boolean hasBackupsWithNotes(boolean z) {
        List<AppCloudBackup> backups;
        if (!z) {
            List<gm> list = this.localBackups;
            if (list == null || list.isEmpty()) {
                return false;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                String note = ((gm) it.next()).b.getNote();
                if (!(note == null || note.length() == 0)) {
                    return true;
                }
            }
            return false;
        }
        AppCloudBackups appCloudBackups = this.cloudBackups;
        if (appCloudBackups == null || (backups = appCloudBackups.getBackups()) == null || backups.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = backups.iterator();
        while (it2.hasNext()) {
            String note2 = ((AppCloudBackup) it2.next()).getMetadata().getNote();
            if (!(note2 == null || note2.length() == 0)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasDeData() {
        mp6 mp6Var = mp6.a;
        boolean z = false;
        if (!mp6.g) {
            return false;
        }
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        String str = this.deDataDir;
        Boolean boolValueOf = null;
        if (str == null || str.length() == 0) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        jr7 jr7Var = new jr7(str);
        if (!jr7Var.b("[ -e @@ ]")) {
            return false;
        }
        jr7[] jr7VarArrF = jr7Var.listFiles();
        if (jr7VarArrF != null) {
            ArrayList<jr7> arrayList = new ArrayList();
            for (jr7 jr7Var2 : jr7VarArrF) {
                if (!pe4.d(jr7Var2.getName(), "code_cache")) {
                    arrayList.add(jr7Var2);
                }
            }
            if (!arrayList.isEmpty()) {
                for (jr7 jr7Var3 : arrayList) {
                    if (!jr7Var3.b("[ -f @@ ]")) {
                        String path = jr7Var3.getPath();
                        path.getClass();
                        if (e73.a(path)) {
                        }
                    }
                    z = true;
                }
            }
            boolValueOf = Boolean.valueOf(z);
        }
        return pe4.d(boolValueOf, Boolean.TRUE);
    }

    public final boolean hasExpansion() {
        String[] list;
        File fileG = jr7.g(getExpansionDir());
        return (!fileG.exists() || (list = fileG.list()) == null || list.length == 0) ? false : true;
    }

    public final boolean hasExternalData(boolean z) {
        q63 q63Var = new q63(getExternalDataDir(), 1);
        if (q63Var.j()) {
            ArrayList arrayListB = q63Var.B();
            ArrayList arrayList = null;
            List listV1 = arrayListB != null ? el1.v1(arrayListB) : null;
            if (!z) {
                if (listV1 != null) {
                    arrayList = new ArrayList();
                    for (Object obj : listV1) {
                        q63 q63Var2 = (q63) obj;
                        if (!q63Var2.x() || !q63Var2.p().equals("cache")) {
                            arrayList.add(obj);
                        }
                    }
                }
                listV1 = arrayList;
            }
            if (listV1 != null && !listV1.isEmpty()) {
                if (listV1.size() == 1) {
                    q63 q63Var3 = (q63) el1.S0(listV1);
                    if (q63Var3.x() && q63Var3.p().equals("files")) {
                        return e73.a(((q63) el1.S0(listV1)).v());
                    }
                }
                if (z && listV1.size() == 1) {
                    q63 q63Var4 = (q63) el1.S0(listV1);
                    if (q63Var4.x() && q63Var4.p().equals("cache")) {
                        ArrayList arrayListB2 = ((q63) el1.S0(listV1)).B();
                        return !(arrayListB2 == null || arrayListB2.isEmpty());
                    }
                }
                return !listV1.isEmpty();
            }
        }
        return false;
    }

    public final boolean hasLabels() {
        Set<LabelParams> set = this.labels;
        return !(set == null || set.isEmpty());
    }

    public final boolean hasMedia() {
        String[] list;
        File fileG = jr7.g(getMediaDir());
        return (!fileG.exists() || (list = fileG.list()) == null || list.length == 0) ? false : true;
    }

    public final boolean hasMultipleBackups(boolean z) {
        List<AppCloudBackup> backups;
        if (z) {
            AppCloudBackups appCloudBackups = this.cloudBackups;
            return (appCloudBackups == null || (backups = appCloudBackups.getBackups()) == null || backups.size() <= 1) ? false : true;
        }
        List<gm> list = this.localBackups;
        return list != null && list.size() > 1;
    }

    public final boolean hasProtectedBackups(boolean z) {
        List<AppCloudBackup> backups;
        if (!z) {
            List<gm> list = this.localBackups;
            if (list == null || list.isEmpty()) {
                return false;
            }
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((gm) it.next()).b.isProtectedBackup()) {
                    return true;
                }
            }
            return false;
        }
        AppCloudBackups appCloudBackups = this.cloudBackups;
        if (appCloudBackups == null || (backups = appCloudBackups.getBackups()) == null || backups.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = backups.iterator();
        while (it2.hasNext()) {
            if (((AppCloudBackup) it2.next()).getMetadata().isProtectedBackup()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasRestorableBackup(boolean z) {
        AppCloudBackup latestBackup;
        CloudMetadata metadata;
        if (!z) {
            return pe4.d(this.hasRestorableLocalBackup, Boolean.TRUE);
        }
        AppCloudBackups appCloudBackups = this.cloudBackups;
        return (appCloudBackups == null || (latestBackup = appCloudBackups.getLatestBackup()) == null || (metadata = latestBackup.getMetadata()) == null || !metadata.hasRestorableBackup(this.isInstalled)) ? false : true;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(this.packageName.hashCode() * 31, 31, this.name), 31, this.appId);
        String str = this.versionName;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.versionCode;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.sourceDir;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.dataDir;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.deDataDir;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<String> list = this.splitSourceDirs;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List<yc7> list2 = this.sharedLibsInfos;
        int iHashCode7 = (iHashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Long l2 = this.dateInstalled;
        int iHashCode8 = (iHashCode7 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.dateUpdated;
        int iHashCode9 = (iHashCode8 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.dateBackup;
        int iHashCode10 = (iHashCode9 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.dateBackupUpdated;
        int iHashCode11 = (iHashCode10 + (l5 == null ? 0 : l5.hashCode())) * 31;
        Boolean bool = this.hasRestorableLocalBackup;
        int iH = fz5.h(fz5.h(fz5.h(fz5.h((iHashCode11 + (bool == null ? 0 : bool.hashCode())) * 31, 31, this.isLaunchable), 31, this.isBundled), 31, this.isInstalled), 31, this.enabled);
        qx qxVar = this.sizeInfo;
        int iHashCode12 = (iH + (qxVar == null ? 0 : qxVar.hashCode())) * 31;
        String str5 = this._installerPackage;
        int iHashCode13 = (iHashCode12 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<gm> list3 = this.localBackups;
        int iH2 = fz5.h((iHashCode13 + (list3 == null ? 0 : list3.hashCode())) * 31, 31, this.isCloudApp);
        AppCloudBackups appCloudBackups = this.cloudBackups;
        int iH3 = fz5.h((iH2 + (appCloudBackups == null ? 0 : appCloudBackups.hashCode())) * 31, 31, this.isFavorite);
        Set<LabelParams> set = this.labels;
        int iHashCode14 = (iH3 + (set == null ? 0 : set.hashCode())) * 31;
        String str6 = this.randomIdToForceNotifyChange;
        return iHashCode14 + (str6 != null ? str6.hashCode() : 0);
    }

    public final boolean isBundled() {
        return this.isBundled;
    }

    public final boolean isCloudApp() {
        return this.isCloudApp;
    }

    public final boolean isFavorite() {
        return this.isFavorite;
    }

    public final boolean isInstalled() {
        return this.isInstalled;
    }

    public final boolean isInstalledFromGooglePlay(boolean z) {
        String installerPackage;
        AppCloudBackup latestBackup;
        CloudMetadata metadata;
        if (z) {
            AppCloudBackups appCloudBackups = this.cloudBackups;
            installerPackage = (appCloudBackups == null || (latestBackup = appCloudBackups.getLatestBackup()) == null || (metadata = latestBackup.getMetadata()) == null) ? null : metadata.getInstallerPackage();
        } else {
            installerPackage = getInstallerPackage();
        }
        return pe4.d(installerPackage, "com.android.vending");
    }

    public final boolean isLabelledOrFavorites() {
        return hasLabels() || this.isFavorite;
    }

    public final boolean isLaunchable() {
        return this.isLaunchable;
    }

    public final boolean isUninstalledWithoutBackup() {
        AppCloudBackup latestBackup;
        CloudMetadata metadata;
        refresh();
        List<gm> list = this.localBackups;
        boolean z = list == null || list.isEmpty();
        AppCloudBackups appCloudBackups = this.cloudBackups;
        return (this.isInstalled || !z || (appCloudBackups != null && (latestBackup = appCloudBackups.getLatestBackup()) != null && (metadata = latestBackup.getMetadata()) != null && metadata.hasBackups())) ? false : true;
    }

    public final boolean isUpdatedSystemApp() {
        Long l;
        return this.isBundled && (l = this.dateUpdated) != null && l.longValue() > io4.h(this.dateInstalled);
    }

    public final void refresh() {
        g00 g00Var = g00.a;
        PackageInfo packageInfoQ = g00.q(0, this.packageName);
        if (packageInfoQ != null) {
            this.isInstalled = true;
            setFromPackageInfo(packageInfoQ);
        } else {
            this.isInstalled = false;
        }
        refreshExtras();
    }

    public final void refreshBackupDetails() {
        ArrayList arrayList;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        Parcelable.Creator<hk> creator = hk.CREATOR;
        List<hk> listB = fk.b(this.packageName);
        Long l = null;
        if (listB != null) {
            arrayList = new ArrayList();
            for (hk hkVar : listB) {
                hkVar.getClass();
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return;
                }
                LocalMetadata localMetadataU = hkVar.u();
                gm gmVar = localMetadataU == null ? null : new gm(hkVar, localMetadataU);
                if (gmVar != null) {
                    arrayList.add(gmVar);
                }
            }
        } else {
            arrayList = null;
        }
        this.localBackups = arrayList;
        gm gmVar2 = arrayList != null ? (gm) el1.U0(arrayList) : null;
        if (gmVar2 == null) {
            this.dateBackup = null;
            this.dateBackupUpdated = null;
            this.hasRestorableLocalBackup = null;
            return;
        }
        long jL = gmVar2.a.l();
        Long lValueOf = Long.valueOf(jL);
        if (jL <= 0) {
            lValueOf = null;
        }
        this.dateBackup = lValueOf;
        Long dateBackupUpdated = gmVar2.b.getDateBackupUpdated();
        if (dateBackupUpdated != null && dateBackupUpdated.longValue() > 0) {
            l = dateBackupUpdated;
        }
        this.dateBackupUpdated = l;
        boolean z = false;
        if (hasBackup(false) && (arrayList == null || !arrayList.isEmpty())) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                hk hkVar2 = ((gm) it.next()).a;
                if (this.isInstalled ? hkVar2.E() : hkVar2.v().j() && hkVar2.c().j()) {
                    z = true;
                    break;
                }
            }
        }
        this.hasRestorableLocalBackup = Boolean.valueOf(z);
    }

    public final void setAppId(String str) {
        str.getClass();
        this.appId = str;
    }

    public final void setBundled(boolean z) {
        this.isBundled = z;
    }

    public final void setCloudApp(boolean z) {
        this.isCloudApp = z;
    }

    public final void setCloudBackups(AppCloudBackups appCloudBackups) {
        this.cloudBackups = appCloudBackups;
    }

    public final void setDataDir(String str) {
        this.dataDir = str;
    }

    public final void setDateBackup(Long l) {
        this.dateBackup = l;
    }

    public final void setDateBackupUpdated(Long l) {
        this.dateBackupUpdated = l;
    }

    public final void setDateInstalled(Long l) {
        this.dateInstalled = l;
    }

    public final void setDateUpdated(Long l) {
        this.dateUpdated = l;
    }

    public final void setDeDataDir(String str) {
        this.deDataDir = str;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setFavorite(boolean z) {
        this.isFavorite = z;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:48:0x0101  */
    /* JADX WARN: Code duplicated, block: B:69:0x0169  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void setFromPackageInfo(PackageInfo packageInfo) {
        boolean z;
        ApplicationInfo applicationInfo;
        Boolean boolValueOf;
        List<String> listZ0;
        String[] strArr;
        packageInfo.getClass();
        ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
        this.isInstalled = true;
        String str = packageInfo.packageName;
        str.getClass();
        this.packageName = str;
        gv7 gv7Var = um.a;
        g00 g00Var = g00.a;
        PackageManager packageManagerR = g00.r();
        om omVar = (om) um.a.getValue();
        String str2 = packageInfo.packageName;
        str2.getClass();
        omVar.getClass();
        boolean z2 = false;
        z2 = false;
        pm pmVar = (pm) g67.z(omVar.a, true, false, new lm(str2, z2 ? 1 : 0));
        Object[] objArr = 0;
        if (pmVar == null || pmVar.a.length() <= 0 || pmVar.b.length() <= 0 || pmVar.e == null || pmVar.c == null || pmVar.d == null) {
            pmVar = null;
        }
        gv7 gv7Var2 = new gv7(new rm(z2 ? 1 : 0, packageInfo, packageManagerR));
        gv7 gv7Var3 = new gv7(new sm(z2 ? 1 : 0));
        if (pmVar != null) {
            Boolean bool = pmVar.d;
            Boolean bool2 = pmVar.c;
            String str3 = pmVar.b;
            String str4 = (String) gv7Var2.getValue();
            ApplicationInfo applicationInfo3 = packageInfo.applicationInfo;
            boolean z3 = !((applicationInfo3 == null || applicationInfo3.enabled) ? false : true);
            String str5 = (String) gv7Var3.getValue();
            str4.getClass();
            if (pmVar.a.length() <= 0 || str3.length() <= 0 || pmVar.e == null || bool2 == null || bool == null || !str3.equals(str4) || !bool2.equals(Boolean.TRUE) || !bool.equals(Boolean.valueOf(z3)) || !pe4.d(pmVar.f, str5)) {
                Log.d("AppCachedDataRepo", "Updating cached data for package: " + packageInfo.packageName);
                String str6 = packageInfo.packageName;
                str6.getClass();
                String str7 = (String) gv7Var2.getValue();
                if (packageManagerR.getLaunchIntentForPackage(packageInfo.packageName) != null) {
                    z = true;
                } else {
                    z = false;
                }
                applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo != null) {
                    boolValueOf = Boolean.valueOf(applicationInfo.enabled);
                } else {
                    boolValueOf = null;
                }
                pmVar = new pm(str6, str7, Boolean.TRUE, boolValueOf, Boolean.valueOf(z), (String) gv7Var3.getValue());
                zn4 zn4Var = zn4.a;
                zn4.b(null, new tm(pmVar, objArr == true ? 1 : 0, z2 ? 1 : 0));
            }
        } else {
            String str8 = packageInfo.packageName;
            str8.getClass();
            String str9 = (String) gv7Var2.getValue();
            if (packageManagerR.getLaunchIntentForPackage(packageInfo.packageName) != null) {
                z = true;
            } else {
                z = false;
            }
            applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null) {
                boolValueOf = Boolean.valueOf(applicationInfo.enabled);
            } else {
                boolValueOf = null;
            }
            pmVar = new pm(str8, str9, Boolean.TRUE, boolValueOf, Boolean.valueOf(z), (String) gv7Var3.getValue());
            zn4 zn4Var2 = zn4.a;
            zn4.b(null, new tm(pmVar, objArr == true ? 1 : 0, z2 ? 1 : 0));
        }
        this.name = pmVar.b;
        this.versionName = packageInfo.versionName;
        this.versionCode = Long.valueOf(jd4.r(packageInfo));
        this.isLaunchable = pe4.d(pmVar.e, Boolean.TRUE);
        this.sourceDir = applicationInfo2 != null ? applicationInfo2.sourceDir : null;
        this.dataDir = applicationInfo2 != null ? applicationInfo2.dataDir : null;
        this.deDataDir = applicationInfo2 != null ? applicationInfo2.deviceProtectedDataDir : null;
        if (applicationInfo2 == null || (strArr = applicationInfo2.splitSourceDirs) == null) {
            listZ0 = null;
        } else {
            listZ0 = x50.z0(strArr);
            if (listZ0.isEmpty()) {
                listZ0 = null;
            }
        }
        this.splitSourceDirs = listZ0;
        this.sharedLibsInfos = g00.v(this.packageName);
        this.dateInstalled = Long.valueOf(packageInfo.firstInstallTime);
        this.dateUpdated = packageInfo.lastUpdateTime > packageInfo.firstInstallTime ? Long.valueOf(packageInfo.lastUpdateTime) : null;
        this.isBundled = g00.y(packageInfo);
        if (applicationInfo2 != null && applicationInfo2.enabled) {
            z2 = true;
        }
        this.enabled = z2;
        String str10 = packageInfo.packageName;
        str10.getClass();
        this._installerPackage = (String) io4.j("AppUtil", "getInstallerPackage", true, new bk(str10, 5), 8);
    }

    public final void setHasRestorableLocalBackup(Boolean bool) {
        this.hasRestorableLocalBackup = bool;
    }

    public final void setInstalled(boolean z) {
        this.isInstalled = z;
    }

    public final void setLabels(Set<LabelParams> set) {
        this.labels = set;
    }

    public final void setLaunchable(boolean z) {
        this.isLaunchable = z;
    }

    public final void setLocalBackups(List<gm> list) {
        this.localBackups = list;
    }

    public final void setName(String str) {
        str.getClass();
        this.name = str;
    }

    public final void setPackageName(String str) {
        str.getClass();
        this.packageName = str;
    }

    public final void setRandomIdToForceNotifyChange(String str) {
        this.randomIdToForceNotifyChange = str;
    }

    public final void setSharedLibsInfos(List<yc7> list) {
        this.sharedLibsInfos = list;
    }

    public final void setSizeInfo(qx qxVar) {
        this.sizeInfo = qxVar;
    }

    public final void setSourceDir(String str) {
        this.sourceDir = str;
    }

    public final void setSplitSourceDirs(List<String> list) {
        this.splitSourceDirs = list;
    }

    public final void setVersionCode(Long l) {
        this.versionCode = l;
    }

    public final void setVersionName(String str) {
        this.versionName = str;
    }

    public final void set_installerPackage(String str) {
        this._installerPackage = str;
    }

    public String toString() {
        String str = this.packageName;
        String str2 = this.name;
        String str3 = this.appId;
        String str4 = this.versionName;
        Long l = this.versionCode;
        String str5 = this.sourceDir;
        String str6 = this.dataDir;
        String str7 = this.deDataDir;
        List<String> list = this.splitSourceDirs;
        List<yc7> list2 = this.sharedLibsInfos;
        Long l2 = this.dateInstalled;
        Long l3 = this.dateUpdated;
        Long l4 = this.dateBackup;
        Long l5 = this.dateBackupUpdated;
        Boolean bool = this.hasRestorableLocalBackup;
        boolean z = this.isLaunchable;
        boolean z2 = this.isBundled;
        boolean z3 = this.isInstalled;
        boolean z4 = this.enabled;
        qx qxVar = this.sizeInfo;
        String str8 = this._installerPackage;
        List<gm> list3 = this.localBackups;
        boolean z5 = this.isCloudApp;
        AppCloudBackups appCloudBackups = this.cloudBackups;
        boolean z6 = this.isFavorite;
        Set<LabelParams> set = this.labels;
        String str9 = this.randomIdToForceNotifyChange;
        StringBuilder sbP = u48.p("App(packageName=", str, ", name=", str2, ", appId=");
        xs1.t(sbP, str3, ", versionName=", str4, ", versionCode=");
        sbP.append(l);
        sbP.append(", sourceDir=");
        sbP.append(str5);
        sbP.append(", dataDir=");
        xs1.t(sbP, str6, ", deDataDir=", str7, ", splitSourceDirs=");
        sbP.append(list);
        sbP.append(", sharedLibsInfos=");
        sbP.append(list2);
        sbP.append(", dateInstalled=");
        fz5.q(sbP, l2, ", dateUpdated=", l3, ", dateBackup=");
        fz5.q(sbP, l4, ", dateBackupUpdated=", l5, ", hasRestorableLocalBackup=");
        sbP.append(bool);
        sbP.append(", isLaunchable=");
        sbP.append(z);
        sbP.append(", isBundled=");
        sbP.append(z2);
        sbP.append(", isInstalled=");
        sbP.append(z3);
        sbP.append(", enabled=");
        sbP.append(z4);
        sbP.append(", sizeInfo=");
        sbP.append(qxVar);
        sbP.append(", _installerPackage=");
        sbP.append(str8);
        sbP.append(", localBackups=");
        sbP.append(list3);
        sbP.append(", isCloudApp=");
        sbP.append(z5);
        sbP.append(", cloudBackups=");
        sbP.append(appCloudBackups);
        sbP.append(", isFavorite=");
        sbP.append(z6);
        sbP.append(", labels=");
        sbP.append(set);
        sbP.append(", randomIdToForceNotifyChange=");
        return dj7.n(sbP, str9, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.packageName);
        parcel.writeString(this.name);
        parcel.writeString(this.appId);
        parcel.writeString(this.versionName);
        Long l = this.versionCode;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        parcel.writeString(this.sourceDir);
        parcel.writeString(this.dataDir);
        parcel.writeString(this.deDataDir);
        parcel.writeStringList(this.splitSourceDirs);
        List<yc7> list = this.sharedLibsInfos;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<yc7> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, i);
            }
        }
        Long l2 = this.dateInstalled;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
        Long l3 = this.dateUpdated;
        if (l3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l3);
        }
        Long l4 = this.dateBackup;
        if (l4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l4);
        }
        Long l5 = this.dateBackupUpdated;
        if (l5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l5);
        }
        Boolean bool = this.hasRestorableLocalBackup;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        parcel.writeInt(this.isLaunchable ? 1 : 0);
        parcel.writeInt(this.isBundled ? 1 : 0);
        parcel.writeInt(this.isInstalled ? 1 : 0);
        parcel.writeInt(this.enabled ? 1 : 0);
        qx qxVar = this.sizeInfo;
        if (qxVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            qxVar.writeToParcel(parcel, i);
        }
        parcel.writeString(this._installerPackage);
        List<gm> list2 = this.localBackups;
        if (list2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list2.size());
            Iterator<gm> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(parcel, i);
            }
        }
        parcel.writeInt(this.isCloudApp ? 1 : 0);
        AppCloudBackups appCloudBackups = this.cloudBackups;
        if (appCloudBackups == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            appCloudBackups.writeToParcel(parcel, i);
        }
        parcel.writeInt(this.isFavorite ? 1 : 0);
        Set<LabelParams> set = this.labels;
        if (set == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(set.size());
            Iterator<LabelParams> it3 = set.iterator();
            while (it3.hasNext()) {
                it3.next().writeToParcel(parcel, i);
            }
        }
        parcel.writeString(this.randomIdToForceNotifyChange);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ji fromCloudBackups(AppCloudBackups appCloudBackups) {
            appCloudBackups.getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            CloudMetadata metadata = appCloudBackups.getLatestBackup().getMetadata();
            g00 g00Var = g00.a;
            PackageInfo packageInfoQ = g00.q(0, metadata.getPackageName());
            ji jiVarFromPackageInfo = packageInfoQ != null ? fromPackageInfo(packageInfoQ) : new ji(metadata.getPackageName(), nq7.H0(metadata.getName()).toString(), null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, null, 134217724, null);
            jiVarFromPackageInfo.setCloudBackups(appCloudBackups);
            jiVarFromPackageInfo.setCloudApp(true);
            jiVarFromPackageInfo.refreshBackupDetails();
            return jiVarFromPackageInfo;
        }

        public final ji fromMetadataFile(q63 q63Var) {
            q63Var.getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            if (!q63Var.j()) {
                Log.d(ji.logTag, "App.fromMetadataFile: Properties xml not found, probably a cloud backup?");
                return null;
            }
            LocalMetadata localMetadataB = cu.b(q63Var);
            ji jiVar = localMetadataB != null ? new ji(localMetadataB.getPackageName(), localMetadataB.getName(), null, localMetadataB.getVersionName(), localMetadataB.getVersionCode(), null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, localMetadataB.getInstallerPackage(), null, false, null, false, null, null, 133169124, null) : null;
            ji jiVarCopy$default = jiVar != null ? ji.copy$default(jiVar, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, jiVar.checkInstalled(), false, null, null, null, false, null, false, null, null, 134086655, null) : null;
            if (jiVarCopy$default != null) {
                jiVarCopy$default.refreshBackupDetails();
            }
            return jiVarCopy$default;
        }

        public final ji fromPackageInfo(PackageInfo packageInfo) {
            packageInfo.getClass();
            String str = packageInfo.packageName;
            str.getClass();
            ji jiVar = new ji(str, ji.logTag, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, null, 134217724, null);
            jiVar.setFromPackageInfo(packageInfo);
            jiVar.refreshExtras();
            return jiVar;
        }

        private a() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class b implements Parcelable.Creator {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Long] */
        /* JADX WARN: Type inference failed for: r11v5 */
        /* JADX WARN: Type inference failed for: r11v6 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v14 */
        /* JADX WARN: Type inference failed for: r3v2, types: [int] */
        @Override // android.os.Parcelable.Creator
        public final ji createFromParcel(Parcel parcel) {
            Long lValueOf;
            ArrayList arrayList;
            ArrayList arrayList2;
            boolean z;
            boolean z2;
            ArrayList arrayList3;
            String str;
            boolean z3;
            LinkedHashSet linkedHashSet;
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            if (parcel.readInt() == 0) {
                lValueOf = null;
                arrayList = null;
            } else {
                lValueOf = Long.valueOf(parcel.readLong());
                arrayList = null;
            }
            String string5 = parcel.readString();
            ArrayList arrayList4 = arrayList;
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            if (parcel.readInt() == 0) {
                arrayList2 = arrayList4;
            } else {
                int i = parcel.readInt();
                arrayList2 = new ArrayList(i);
                for (int i2 = 0; i2 != i; i2++) {
                    arrayList2.add(yc7.CREATOR.createFromParcel(parcel));
                }
            }
            ?? ValueOf = parcel.readInt() == 0 ? arrayList4 : Long.valueOf(parcel.readLong());
            Object objValueOf = parcel.readInt() == 0 ? arrayList4 : Long.valueOf(parcel.readLong());
            Object objValueOf2 = parcel.readInt() == 0 ? arrayList4 : Long.valueOf(parcel.readLong());
            Object objValueOf3 = parcel.readInt() == 0 ? arrayList4 : Long.valueOf(parcel.readLong());
            boolean z4 = true;
            Object objValueOf4 = parcel.readInt() == 0 ? arrayList4 : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() != 0) {
                z = false;
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            boolean z5 = parcel.readInt() != 0 ? true : z;
            if (parcel.readInt() == 0) {
                z4 = z;
            }
            if (parcel.readInt() != 0) {
                z = true;
            }
            qx qxVar = (qx) (parcel.readInt() == 0 ? arrayList4 : qx.CREATOR.createFromParcel(parcel));
            boolean z6 = z4;
            String string8 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList3 = r10;
            } else {
                int i3 = parcel.readInt();
                arrayList3 = new ArrayList(i3);
                for (?? r3 = z; r3 != i3; r3++) {
                    arrayList3.add(gm.CREATOR.createFromParcel(parcel));
                    i3 = i3;
                }
            }
            if (parcel.readInt() == 0) {
                z6 = z;
            }
            AppCloudBackups appCloudBackups = (AppCloudBackups) (parcel.readInt() == 0 ? r10 : AppCloudBackups.CREATOR.createFromParcel(parcel));
            if (parcel.readInt() != 0) {
                z3 = z6;
                str = string2;
            } else {
                str = string2;
                z3 = z;
            }
            if (parcel.readInt() == 0) {
                linkedHashSet = r10;
            } else {
                int i4 = parcel.readInt();
                linkedHashSet = new LinkedHashSet(i4);
                int i5 = 0;
                while (i5 != i4) {
                    linkedHashSet.add(LabelParams.CREATOR.createFromParcel(parcel));
                    i5++;
                    i4 = i4;
                }
            }
            return new ji(string, str, string3, string4, lValueOf, string5, string6, string7, arrayListCreateStringArrayList, arrayList2, ValueOf, objValueOf, objValueOf2, objValueOf3, objValueOf4, z2, z5, z4, z, qxVar, string8, arrayList3, z6, appCloudBackups, z3, linkedHashSet, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final ji[] newArray(int i) {
            return new ji[i];
        }
    }

    public ji(String str, String str2, String str3, String str4, Long l, String str5, String str6, String str7, List<String> list, List<yc7> list2, Long l2, Long l3, Long l4, Long l5, Boolean bool, boolean z, boolean z2, boolean z3, boolean z4, qx qxVar, String str8, List<gm> list3, boolean z5, AppCloudBackups appCloudBackups, boolean z6, Set<LabelParams> set, String str9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.packageName = str;
        this.name = str2;
        this.appId = str3;
        this.versionName = str4;
        this.versionCode = l;
        this.sourceDir = str5;
        this.dataDir = str6;
        this.deDataDir = str7;
        this.splitSourceDirs = list;
        this.sharedLibsInfos = list2;
        this.dateInstalled = l2;
        this.dateUpdated = l3;
        this.dateBackup = l4;
        this.dateBackupUpdated = l5;
        this.hasRestorableLocalBackup = bool;
        this.isLaunchable = z;
        this.isBundled = z2;
        this.isInstalled = z3;
        this.enabled = z4;
        this.sizeInfo = qxVar;
        this._installerPackage = str8;
        this.localBackups = list3;
        this.isCloudApp = z5;
        this.cloudBackups = appCloudBackups;
        this.isFavorite = z6;
        this.labels = set;
        this.randomIdToForceNotifyChange = str9;
        this.installerPackage$delegate = new gv7(new ii(this, 0));
    }

    public static /* synthetic */ void getDateBackedUpOrUpdated$annotations() {
    }

    public static /* synthetic */ void getInstallerPackage$annotations() {
    }
}
