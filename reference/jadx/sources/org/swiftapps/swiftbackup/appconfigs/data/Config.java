package org.swiftapps.swiftbackup.appconfigs.data;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.br1;
import defpackage.eq1;
import defpackage.fz5;
import defpackage.ji8;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.nh4;
import defpackage.nq7;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.vr6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Config implements Parcelable, jl0 {
    public static final Parcelable.Creator<Config> CREATOR = new eq1(0);
    private final String _name;
    private final List<ConfigSettings> _settingsList;
    private final Long _updateDate;
    private final String id;
    private final int version;

    /* JADX WARN: Illegal instructions before constructor call */
    public Config(int i, String str, String str2, List list, Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        i = (i2 & 1) != 0 ? 1 : i;
        if ((i2 & 2) != 0) {
            str = nh4.d.i(6, true, true);
            str.getClass();
        }
        this(i, str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? Long.valueOf(System.currentTimeMillis()) : l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Config copy$default(Config config, int i, String str, String str2, List list, Long l, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = config.version;
        }
        if ((i2 & 2) != 0) {
            str = config.id;
        }
        if ((i2 & 4) != 0) {
            str2 = config._name;
        }
        if ((i2 & 8) != 0) {
            list = config._settingsList;
        }
        if ((i2 & 16) != 0) {
            l = config._updateDate;
        }
        Long l2 = l;
        String str3 = str2;
        return config.copy(i, str, str3, list, l2);
    }

    public final int component1() {
        return this.version;
    }

    public final String component2() {
        return this.id;
    }

    public final String component3() {
        return this._name;
    }

    public final List<ConfigSettings> component4() {
        return this._settingsList;
    }

    public final Long component5() {
        return this._updateDate;
    }

    public final Config copy(int i, String str, String str2, List<ConfigSettings> list, Long l) {
        str.getClass();
        return new Config(i, str, str2, list, l);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Config)) {
            return false;
        }
        Config config = (Config) obj;
        return this.version == config.version && pe4.d(this.id, config.id) && pe4.d(this._name, config._name) && pe4.d(this._settingsList, config._settingsList) && pe4.d(this._updateDate, config._updateDate);
    }

    @jz2
    public final List<ConfigSettings> getConfigSettings() {
        return this._settingsList;
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, 0, null, null, null, null, 31, null);
    }

    public final String getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.id;
    }

    @jz2
    public final String getName() {
        String str = this._name;
        if (str == null || str.length() == 0 || nq7.j0(str)) {
            str = null;
        }
        return str == null ? this.id : str;
    }

    @jz2
    public final long getUpdateDate() {
        Long l = this._updateDate;
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    @jz2
    public final List<ConfigSettings> getValidSettings() {
        List<ConfigSettings> list = this._settingsList;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ConfigSettings.isValid$default((ConfigSettings) obj, false, 1, null)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final int getVersion() {
        return this.version;
    }

    public final String get_name() {
        return this._name;
    }

    public final List<ConfigSettings> get_settingsList() {
        return this._settingsList;
    }

    public final Long get_updateDate() {
        return this._updateDate;
    }

    @jz2
    public final boolean hasCloudLocation() {
        List<ConfigSettings> configSettings = getConfigSettings();
        if (configSettings != null && !configSettings.isEmpty()) {
            Iterator<T> it = configSettings.iterator();
            while (it.hasNext()) {
                if (ji8.r(((ConfigSettings) it.next()).getLocations())) {
                    return true;
                }
            }
        }
        return false;
    }

    @jz2
    public final boolean hasValidSettings() {
        List<ConfigSettings> validSettings = getValidSettings();
        return !(validSettings == null || validSettings.isEmpty());
    }

    public int hashCode() {
        int iG = fz5.g(Integer.hashCode(this.version) * 31, 31, this.id);
        String str = this._name;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        List<ConfigSettings> list = this._settingsList;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Long l = this._updateDate;
        return iHashCode2 + (l != null ? l.hashCode() : 0);
    }

    @jz2
    public final boolean isNameTaken() {
        if (!isNameValid()) {
            return false;
        }
        br1 br1Var = br1.a;
        return br1.c(this);
    }

    @jz2
    public final boolean isNameValid() {
        Boolean boolValueOf;
        String string;
        String str = this._name;
        if (str == null || (string = nq7.H0(str).toString()) == null) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(string.length() > 0 && !nq7.Z(string, "  ", false) && !nq7.j0(string) && string.length() <= 50);
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    @jz2
    public final Config minusSettings(ConfigSettings configSettings) {
        ArrayList arrayList;
        configSettings.getClass();
        List<ConfigSettings> validSettings = getValidSettings();
        if (validSettings != null) {
            arrayList = new ArrayList();
            for (Object obj : validSettings) {
                if (!pe4.d(((ConfigSettings) obj).getId(), configSettings.getId())) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        return copy$default(this, 0, null, null, arrayList, null, 23, null);
    }

    @jz2
    public final Config plusSettings(ConfigSettings configSettings) {
        configSettings.getClass();
        if (!configSettings.isValid(true)) {
            vr6.e$default(vr6.INSTANCE, "Config", "Invalid ConfigSettings!", null, 4, null);
            return this;
        }
        List<ConfigSettings> validSettings = getValidSettings();
        Integer num = null;
        if (validSettings != null) {
            Iterator<ConfigSettings> it = validSettings.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (pe4.d(it.next().getId(), configSettings.getId())) {
                    break;
                }
                i++;
            }
            Integer numValueOf = Integer.valueOf(i);
            if (numValueOf.intValue() >= 0) {
                num = numValueOf;
            }
        }
        List<ConfigSettings> validSettings2 = getValidSettings();
        if (validSettings2 == null) {
            validSettings2 = ov2.a;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : validSettings2) {
            if (!pe4.d(((ConfigSettings) obj).getId(), configSettings.getId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.add(num != null ? num.intValue() : arrayList2.size(), configSettings);
        return copy$default(this, 0, null, null, arrayList2, null, 23, null);
    }

    public String toString() {
        return "Config(version=" + this.version + ", id=" + this.id + ", _name=" + this._name + ", _settingsList=" + this._settingsList + ", _updateDate=" + this._updateDate + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.version);
        parcel.writeString(this.id);
        parcel.writeString(this._name);
        List<ConfigSettings> list = this._settingsList;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<ConfigSettings> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, i);
            }
        }
        Long l = this._updateDate;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
    }

    public Config(int i, String str, String str2, List<ConfigSettings> list, Long l) {
        str.getClass();
        this.version = i;
        this.id = str;
        this._name = str2;
        this._settingsList = list;
        this._updateDate = l;
    }

    public Config() {
        this(0, null, null, null, null, 31, null);
    }
}
