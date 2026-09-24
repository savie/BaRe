package org.swiftapps.swiftbackup.appconfigs.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.ak;
import defpackage.cr1;
import defpackage.dr1;
import defpackage.el1;
import defpackage.eq3;
import defpackage.fj;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.hl1;
import defpackage.io4;
import defpackage.iu;
import defpackage.ji8;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.lr4;
import defpackage.mp6;
import defpackage.nc8;
import defpackage.nh4;
import defpackage.nq7;
import defpackage.ou;
import defpackage.pe4;
import defpackage.q05;
import defpackage.qu;
import defpackage.sl;
import defpackage.sz8;
import defpackage.vr6;
import defpackage.wp1;
import defpackage.xe6;
import defpackage.xp1;
import defpackage.xs1;
import defpackage.yu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ConfigSettings implements Parcelable, jl0 {
    private static final String logTag = "ConfigSettings";
    private final String _appParts;
    private final Integer _archiveBackup;
    private final List<AppBackupLimitItem> _backupLimits;
    private final Integer _cacheBackup;
    private final Integer _compressionLevel;
    private final Integer _enabled;
    private final Integer _isForceRedo;
    private final String _locations;
    private final MultipleBackupStrategy _multipleBackupStrategy;
    private final String _restorePermissionsMode;
    private final Integer _restoreSpecialPermissions;
    private final Integer _restoreSsaid;
    private final String _syncOption;
    private final ApplyData applyData;
    private final String id;
    private final int version;
    public static final dr1 Companion = new dr1();
    public static final Parcelable.Creator<ConfigSettings> CREATOR = new b();

    /* JADX WARN: Illegal instructions before constructor call */
    public ConfigSettings(int i, String str, ApplyData applyData, String str2, String str3, String str4, List list, Integer num, MultipleBackupStrategy multipleBackupStrategy, String str5, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String strK;
        String strY0;
        String strY1;
        String string;
        int i3 = (i2 & 1) != 0 ? 1 : i;
        if ((i2 & 2) != 0) {
            strK = nh4.k(6, true, true, null, (Random) xe6.b.a.get());
            strK.getClass();
        } else {
            strK = str;
        }
        ApplyData applyData2 = (i2 & 4) != 0 ? null : applyData;
        if ((i2 & 8) != 0) {
            Companion.getClass();
            strY0 = el1.Y0(mp6.g ? fl1.A0(iu.APP, iu.DATA) : nc8.I(iu.APP), null, null, null, null, 63);
        } else {
            strY0 = str2;
        }
        if ((i2 & 16) != 0) {
            Companion.getClass();
            strY1 = el1.Y0(nc8.I(q05.DEVICE), null, null, null, null, 63);
        } else {
            strY1 = str3;
        }
        String str6 = (i2 & 32) != 0 ? null : str4;
        List list2 = (i2 & 64) != 0 ? null : list;
        Integer num8 = (i2 & 128) != 0 ? null : num;
        MultipleBackupStrategy multipleBackupStrategy2 = (i2 & 256) != 0 ? null : multipleBackupStrategy;
        if ((i2 & 512) != 0) {
            Companion.getClass();
            string = yu.Granted.toString();
        } else {
            string = str5;
        }
        this(i3, strK, applyData2, strY0, strY1, str6, list2, num8, multipleBackupStrategy2, string, (i2 & 1024) != 0 ? null : num2, (i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : num3, (i2 & 4096) != 0 ? null : num4, (i2 & 8192) != 0 ? null : num5, (i2 & 16384) != 0 ? null : num6, (i2 & 32768) != 0 ? 1 : num7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfigSettings copy$default(ConfigSettings configSettings, int i, String str, ApplyData applyData, String str2, String str3, String str4, List list, Integer num, MultipleBackupStrategy multipleBackupStrategy, String str5, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, int i2, Object obj) {
        return configSettings.copy((i2 & 1) != 0 ? configSettings.version : i, (i2 & 2) != 0 ? configSettings.id : str, (i2 & 4) != 0 ? configSettings.applyData : applyData, (i2 & 8) != 0 ? configSettings._appParts : str2, (i2 & 16) != 0 ? configSettings._locations : str3, (i2 & 32) != 0 ? configSettings._syncOption : str4, (i2 & 64) != 0 ? configSettings._backupLimits : list, (i2 & 128) != 0 ? configSettings._archiveBackup : num, (i2 & 256) != 0 ? configSettings._multipleBackupStrategy : multipleBackupStrategy, (i2 & 512) != 0 ? configSettings._restorePermissionsMode : str5, (i2 & 1024) != 0 ? configSettings._restoreSpecialPermissions : num2, (i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? configSettings._restoreSsaid : num3, (i2 & 4096) != 0 ? configSettings._compressionLevel : num4, (i2 & 8192) != 0 ? configSettings._cacheBackup : num5, (i2 & 16384) != 0 ? configSettings._isForceRedo : num6, (i2 & 32768) != 0 ? configSettings._enabled : num7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAppParts$lambda$1$0(String str) {
        List listX0 = nq7.x0(str, new String[]{", "}, 6);
        ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            arrayList.add(iu.valueOf((String) it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getLocations$lambda$1$0(String str) {
        List listX0 = nq7.x0(str, new String[]{", "}, 6);
        ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            arrayList.add(q05.valueOf((String) it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SyncOption getSyncOption$lambda$0(ConfigSettings configSettings) {
        String str = configSettings._syncOption;
        if (str != null) {
            if (str.length() == 0 || nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                return SyncOption.valueOf(str);
            }
        }
        return null;
    }

    public static /* synthetic */ boolean isValid$default(ConfigSettings configSettings, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return configSettings.isValid(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toDisplayString$lambda$0$0(iu iuVar) {
        iuVar.getClass();
        return iu.toDisplayString$default(iuVar, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toDisplayString$lambda$0$1(q05 q05Var) {
        q05Var.getClass();
        return q05Var.toDisplayString();
    }

    public final int component1() {
        return this.version;
    }

    public final String component10() {
        return this._restorePermissionsMode;
    }

    public final Integer component11() {
        return this._restoreSpecialPermissions;
    }

    public final Integer component12() {
        return this._restoreSsaid;
    }

    public final Integer component13() {
        return this._compressionLevel;
    }

    public final Integer component14() {
        return this._cacheBackup;
    }

    public final Integer component15() {
        return this._isForceRedo;
    }

    public final Integer component16() {
        return this._enabled;
    }

    public final String component2() {
        return this.id;
    }

    public final ApplyData component3() {
        return this.applyData;
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

    public final List<AppBackupLimitItem> component7() {
        return this._backupLimits;
    }

    public final Integer component8() {
        return this._archiveBackup;
    }

    public final MultipleBackupStrategy component9() {
        return this._multipleBackupStrategy;
    }

    public final ConfigSettings copy(int i, String str, ApplyData applyData, String str2, String str3, String str4, List<AppBackupLimitItem> list, Integer num, MultipleBackupStrategy multipleBackupStrategy, String str5, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7) {
        str.getClass();
        return new ConfigSettings(i, str, applyData, str2, str3, str4, list, num, multipleBackupStrategy, str5, num2, num3, num4, num5, num6, num7);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigSettings)) {
            return false;
        }
        ConfigSettings configSettings = (ConfigSettings) obj;
        return this.version == configSettings.version && pe4.d(this.id, configSettings.id) && pe4.d(this.applyData, configSettings.applyData) && pe4.d(this._appParts, configSettings._appParts) && pe4.d(this._locations, configSettings._locations) && pe4.d(this._syncOption, configSettings._syncOption) && pe4.d(this._backupLimits, configSettings._backupLimits) && pe4.d(this._archiveBackup, configSettings._archiveBackup) && pe4.d(this._multipleBackupStrategy, configSettings._multipleBackupStrategy) && pe4.d(this._restorePermissionsMode, configSettings._restorePermissionsMode) && pe4.d(this._restoreSpecialPermissions, configSettings._restoreSpecialPermissions) && pe4.d(this._restoreSsaid, configSettings._restoreSsaid) && pe4.d(this._compressionLevel, configSettings._compressionLevel) && pe4.d(this._cacheBackup, configSettings._cacheBackup) && pe4.d(this._isForceRedo, configSettings._isForceRedo) && pe4.d(this._enabled, configSettings._enabled);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:19:0x0042  */
    @jz2
    public final List<iu> getAppParts() {
        List listI;
        List list;
        List list2;
        String str = this._appParts;
        if (str != null) {
            if (str.length() == 0) {
                str = null;
            }
            if (str == null || (list2 = (List) io4.j(logTag, null, true, new cr1(str, 0), 10)) == null) {
                Companion.getClass();
                if (mp6.g) {
                    listI = fl1.A0(iu.APP, iu.DATA);
                } else {
                    listI = nc8.I(iu.APP);
                }
                list = listI;
            } else {
                list = list2.isEmpty() ? null : list2;
                if (list == null) {
                    Companion.getClass();
                    if (mp6.g) {
                        listI = fl1.A0(iu.APP, iu.DATA);
                    } else {
                        listI = nc8.I(iu.APP);
                    }
                    list = listI;
                }
            }
        } else {
            Companion.getClass();
            if (mp6.g) {
                listI = fl1.A0(iu.APP, iu.DATA);
            } else {
                listI = nc8.I(iu.APP);
            }
            list = listI;
        }
        return el1.m1(list);
    }

    public final ApplyData getApplyData() {
        return this.applyData;
    }

    @jz2
    public final List<AppBackupLimitItem> getBackupLimits() {
        List<AppBackupLimitItem> list = this._backupLimits;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((AppBackupLimitItem) obj).isValid()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @jz2
    public final boolean getCacheBackup() {
        Integer num = this._cacheBackup;
        if (num != null) {
            return num.intValue() == 1;
        }
        Companion.getClass();
        return false;
    }

    @jz2
    public final xp1 getCompressionLevel() {
        xp1 xp1Var;
        Integer num = this._compressionLevel;
        xp1.Companion.getClass();
        xp1[] xp1VarArrA = wp1.a();
        int i = 0;
        while (true) {
            if (i >= 2) {
                xp1Var = null;
                break;
            }
            xp1Var = xp1VarArrA[i];
            int level = xp1Var.getLevel();
            if (num != null && level == num.intValue()) {
                break;
            }
            i++;
        }
        if (xp1Var != null) {
            return xp1Var;
        }
        xp1.Companion.getClass();
        return xp1.DEFAULT;
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public final String getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.id;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    @jz2
    public final List<q05> getLocations() {
        List listI;
        List list;
        String str = this._locations;
        if (str != null) {
            if (str.length() == 0) {
                str = null;
            }
            if (str == null || (list = (List) io4.j(logTag, null, true, new qu(str, 1), 10)) == null) {
                Companion.getClass();
                listI = nc8.I(q05.DEVICE);
            } else {
                listI = list.isEmpty() ? null : list;
                if (listI == null) {
                    Companion.getClass();
                    listI = nc8.I(q05.DEVICE);
                }
            }
        } else {
            Companion.getClass();
            listI = nc8.I(q05.DEVICE);
        }
        return el1.m1(listI);
    }

    @jz2
    public final MultipleBackupStrategy getMultipleBackupStrategy() {
        MultipleBackupStrategy multipleBackupStrategy = this._multipleBackupStrategy;
        if (multipleBackupStrategy != null) {
            return multipleBackupStrategy;
        }
        if (isLegacyArchiveBackupEnabled()) {
            MultipleBackupStrategy.Companion.getClass();
            return org.swiftapps.swiftbackup.settings.b.b();
        }
        MultipleBackupStrategy.Companion.getClass();
        return org.swiftapps.swiftbackup.settings.b.a();
    }

    @jz2
    public final yu getRestorePermissionsMode() {
        yu yuVarValueOf;
        String str = this._restorePermissionsMode;
        return (str == null || (yuVarValueOf = yu.valueOf(str)) == null) ? yu.Granted : yuVarValueOf;
    }

    @jz2
    public final boolean getRestoreSpecialPermissions() {
        Integer num = this._restoreSpecialPermissions;
        if (num != null) {
            return num.intValue() == 1;
        }
        Companion.getClass();
        return true;
    }

    @jz2
    public final boolean getRestoreSsaid() {
        Integer num = this._restoreSsaid;
        if (num != null) {
            return num.intValue() == 1;
        }
        Companion.getClass();
        return false;
    }

    @jz2
    public final SyncOption getSyncOption() {
        SyncOption syncOption = (SyncOption) io4.j(logTag, null, true, new fj(this, 18), 10);
        if (syncOption != null) {
            return syncOption;
        }
        Companion.getClass();
        return SyncOption.WIFI;
    }

    public final int getVersion() {
        return this.version;
    }

    public final String get_appParts() {
        return this._appParts;
    }

    public final Integer get_archiveBackup() {
        return this._archiveBackup;
    }

    public final List<AppBackupLimitItem> get_backupLimits() {
        return this._backupLimits;
    }

    public final Integer get_cacheBackup() {
        return this._cacheBackup;
    }

    public final Integer get_compressionLevel() {
        return this._compressionLevel;
    }

    public final Integer get_enabled() {
        return this._enabled;
    }

    public final Integer get_isForceRedo() {
        return this._isForceRedo;
    }

    public final String get_locations() {
        return this._locations;
    }

    public final MultipleBackupStrategy get_multipleBackupStrategy() {
        return this._multipleBackupStrategy;
    }

    public final String get_restorePermissionsMode() {
        return this._restorePermissionsMode;
    }

    public final Integer get_restoreSpecialPermissions() {
        return this._restoreSpecialPermissions;
    }

    public final Integer get_restoreSsaid() {
        return this._restoreSsaid;
    }

    public final String get_syncOption() {
        return this._syncOption;
    }

    @jz2
    public final boolean hasApk() {
        return getAppParts().contains(iu.APP);
    }

    @jz2
    public final boolean hasData() {
        return getAppParts().contains(iu.DATA);
    }

    @jz2
    public final boolean hasExpansion() {
        return getAppParts().contains(iu.EXPANSION);
    }

    @jz2
    public final boolean hasExtData() {
        return getAppParts().contains(iu.EXTDATA);
    }

    @jz2
    public final boolean hasMedia() {
        return getAppParts().contains(iu.MEDIA);
    }

    public int hashCode() {
        int iG = fz5.g(Integer.hashCode(this.version) * 31, 31, this.id);
        ApplyData applyData = this.applyData;
        int iHashCode = (iG + (applyData == null ? 0 : applyData.hashCode())) * 31;
        String str = this._appParts;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this._locations;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this._syncOption;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<AppBackupLimitItem> list = this._backupLimits;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this._archiveBackup;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        MultipleBackupStrategy multipleBackupStrategy = this._multipleBackupStrategy;
        int iHashCode7 = (iHashCode6 + (multipleBackupStrategy == null ? 0 : multipleBackupStrategy.hashCode())) * 31;
        String str4 = this._restorePermissionsMode;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this._restoreSpecialPermissions;
        int iHashCode9 = (iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this._restoreSsaid;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this._compressionLevel;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this._cacheBackup;
        int iHashCode12 = (iHashCode11 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this._isForceRedo;
        int iHashCode13 = (iHashCode12 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this._enabled;
        return iHashCode13 + (num7 != null ? num7.hashCode() : 0);
    }

    @jz2
    public final boolean isEnabled() {
        Integer num = this._enabled;
        return num == null || num.intValue() == 1;
    }

    @jz2
    public final boolean isForceRedo() {
        Integer num = this._isForceRedo;
        return num != null && num.intValue() == 1;
    }

    public final boolean isLegacyArchiveBackupEnabled() {
        Integer num = this._archiveBackup;
        return num != null && num.intValue() == 1;
    }

    @jz2
    public final boolean isValid(boolean z) {
        ApplyData applyData = this.applyData;
        return applyData != null && applyData.isValid(z);
    }

    @jz2
    public final ConfigSettings removeCloudLocation() {
        return copy$default(this, 0, null, null, null, el1.Y0(el1.e1(getLocations(), q05.CLOUD), null, null, null, null, 63), null, null, null, null, null, null, null, null, null, null, null, 65519, null);
    }

    @jz2
    public final SpannableStringBuilder toDisplayString(Context context) {
        context.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String string = context.getString(R.string.app_parts);
        string.getClass();
        linkedHashMap.put(string, el1.Y0(getAppParts(), null, null, null, new ou(5), 31));
        String string2 = context.getString(R.string.backup_storage_location);
        string2.getClass();
        linkedHashMap.put(string2, el1.Y0(getLocations(), null, null, null, new sl(6), 31));
        if (ji8.r(getLocations())) {
            String string3 = context.getString(R.string.sync_options);
            string3.getClass();
            linkedHashMap.put(string3, getSyncOption().toDisplayString());
        }
        linkedHashMap.put(". . .", "");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int iZ = sz8.z(context);
        int iA = sz8.A(context);
        int i = 0;
        for (Object obj : linkedHashMap.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (i > 0) {
                spannableStringBuilder.append((CharSequence) "\n");
            }
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(iZ);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) entry.getKey());
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
            if (((CharSequence) entry.getValue()).length() > 0) {
                ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(iA);
                int length2 = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) ": ").append((CharSequence) entry.getValue());
                spannableStringBuilder.setSpan(foregroundColorSpan2, length2, spannableStringBuilder.length(), 17);
            }
            i = i2;
        }
        return spannableStringBuilder;
    }

    public String toString() {
        int i = this.version;
        String str = this.id;
        ApplyData applyData = this.applyData;
        String str2 = this._appParts;
        String str3 = this._locations;
        String str4 = this._syncOption;
        List<AppBackupLimitItem> list = this._backupLimits;
        Integer num = this._archiveBackup;
        MultipleBackupStrategy multipleBackupStrategy = this._multipleBackupStrategy;
        String str5 = this._restorePermissionsMode;
        Integer num2 = this._restoreSpecialPermissions;
        Integer num3 = this._restoreSsaid;
        Integer num4 = this._compressionLevel;
        Integer num5 = this._cacheBackup;
        Integer num6 = this._isForceRedo;
        Integer num7 = this._enabled;
        StringBuilder sb = new StringBuilder("ConfigSettings(version=");
        sb.append(i);
        sb.append(", id=");
        sb.append(str);
        sb.append(", applyData=");
        sb.append(applyData);
        sb.append(", _appParts=");
        sb.append(str2);
        sb.append(", _locations=");
        xs1.t(sb, str3, ", _syncOption=", str4, ", _backupLimits=");
        sb.append(list);
        sb.append(", _archiveBackup=");
        sb.append(num);
        sb.append(", _multipleBackupStrategy=");
        sb.append(multipleBackupStrategy);
        sb.append(", _restorePermissionsMode=");
        sb.append(str5);
        sb.append(", _restoreSpecialPermissions=");
        sb.append(num2);
        sb.append(", _restoreSsaid=");
        sb.append(num3);
        sb.append(", _compressionLevel=");
        sb.append(num4);
        sb.append(", _cacheBackup=");
        sb.append(num5);
        sb.append(", _isForceRedo=");
        sb.append(num6);
        sb.append(", _enabled=");
        sb.append(num7);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.version);
        parcel.writeString(this.id);
        ApplyData applyData = this.applyData;
        if (applyData == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            applyData.writeToParcel(parcel, i);
        }
        parcel.writeString(this._appParts);
        parcel.writeString(this._locations);
        parcel.writeString(this._syncOption);
        List<AppBackupLimitItem> list = this._backupLimits;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<AppBackupLimitItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, i);
            }
        }
        Integer num = this._archiveBackup;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num);
        }
        MultipleBackupStrategy multipleBackupStrategy = this._multipleBackupStrategy;
        if (multipleBackupStrategy == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            multipleBackupStrategy.writeToParcel(parcel, i);
        }
        parcel.writeString(this._restorePermissionsMode);
        Integer num2 = this._restoreSpecialPermissions;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num2);
        }
        Integer num3 = this._restoreSsaid;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num3);
        }
        Integer num4 = this._compressionLevel;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num4);
        }
        Integer num5 = this._cacheBackup;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num5);
        }
        Integer num6 = this._isForceRedo;
        if (num6 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num6);
        }
        Integer num7 = this._enabled;
        if (num7 == null) {
            parcel.writeInt(0);
        } else {
            fz5.o(parcel, 1, num7);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class ApplyData implements Parcelable {
        public static final Parcelable.Creator<ApplyData> CREATOR = new a();
        private final String _labels;

        public /* synthetic */ ApplyData(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str);
        }

        public static /* synthetic */ ApplyData copy$default(ApplyData applyData, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = applyData._labels;
            }
            return applyData.copy(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List getLabelIds$lambda$0(ApplyData applyData) {
            String str = applyData._labels;
            List listX0 = str != null ? nq7.x0(str, new String[]{", "}, 6) : null;
            if (listX0 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : listX0) {
                String str2 = (String) obj;
                lr4 lr4Var = lr4.a;
                boolean zH = lr4.h(str2);
                if (!zH) {
                    vr6.i$default(vr6.INSTANCE, ConfigSettings.logTag, eq3.k("getLabelIds(): Label with id=", str2, " no longer exists. Check your config settings please, updated if needed."), null, 4, null);
                }
                if (zH) {
                    arrayList.add(obj);
                }
            }
            return eq3.p(arrayList);
        }

        public static /* synthetic */ boolean isValid$default(ApplyData applyData, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return applyData.isValid(z);
        }

        public final String component1() {
            return this._labels;
        }

        public final ApplyData copy(String str) {
            return new ApplyData(str);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ApplyData) && pe4.d(this._labels, ((ApplyData) obj)._labels);
        }

        @jz2
        public final List<String> getLabelIds() {
            return (List) io4.j(ConfigSettings.logTag, null, true, new ak(this, 11), 10);
        }

        @jz2
        public final Set<LabelParams> getLabels() {
            List<String> labelIds = getLabelIds();
            if (labelIds == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : labelIds) {
                lr4 lr4Var = lr4.a;
                LabelParams labelParamsC = lr4.c(str);
                if (labelParamsC == null) {
                    vr6.i$default(vr6.INSTANCE, ConfigSettings.logTag, eq3.k("getLabels(): Label with id=", str, " no longer exists. Check your config settings please, updated if needed."), null, 4, null);
                }
                if (labelParamsC != null) {
                    arrayList.add(labelParamsC);
                }
            }
            return el1.z1(arrayList);
        }

        public final String get_labels() {
            return this._labels;
        }

        @jz2
        public final boolean hasLabels() {
            List<String> labelIds = getLabelIds();
            return !(labelIds == null || labelIds.isEmpty());
        }

        public int hashCode() {
            String str = this._labels;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @jz2
        public final boolean isValid(boolean z) {
            if (hasLabels()) {
                return true;
            }
            if (!z) {
                return false;
            }
            vr6.e$default(vr6.INSTANCE, ConfigSettings.logTag, "Invalid ApplyData=" + this, null, 4, null);
            return false;
        }

        public String toString() {
            return eq3.k("ApplyData(_labels=", this._labels, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this._labels);
        }

        public ApplyData(String str) {
            this._labels = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ApplyData() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    public ConfigSettings(int i, String str, ApplyData applyData, String str2, String str3, String str4, List<AppBackupLimitItem> list, Integer num, MultipleBackupStrategy multipleBackupStrategy, String str5, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7) {
        str.getClass();
        this.version = i;
        this.id = str;
        this.applyData = applyData;
        this._appParts = str2;
        this._locations = str3;
        this._syncOption = str4;
        this._backupLimits = list;
        this._archiveBackup = num;
        this._multipleBackupStrategy = multipleBackupStrategy;
        this._restorePermissionsMode = str5;
        this._restoreSpecialPermissions = num2;
        this._restoreSsaid = num3;
        this._compressionLevel = num4;
        this._cacheBackup = num5;
        this._isForceRedo = num6;
        this._enabled = num7;
    }

    public ConfigSettings() {
        this(0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }
}
