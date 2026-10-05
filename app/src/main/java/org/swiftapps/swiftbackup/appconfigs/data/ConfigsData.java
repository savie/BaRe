package org.swiftapps.swiftbackup.appconfigs.data;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.jz2;
import defpackage.m8;
import defpackage.pe4;
import defpackage.sq1;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ConfigsData implements Parcelable {
    public static final Parcelable.Creator<ConfigsData> CREATOR = new m8(4);
    private Map<String, Config> map;

    public /* synthetic */ ConfigsData(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfigsData copy$default(ConfigsData configsData, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = configsData.map;
        }
        return configsData.copy(map);
    }

    public final Map<String, Config> component1() {
        return this.map;
    }

    public final ConfigsData copy(Map<String, Config> map) {
        return new ConfigsData(map);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ConfigsData) && pe4.d(this.map, ((ConfigsData) obj).map);
    }

    @jz2
    public final Config get(String str) {
        Map<String, Config> map = this.map;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final Map<String, Config> getMap() {
        return this.map;
    }

    @jz2
    public final Integer getSize() {
        Map<String, Config> map = this.map;
        if (map != null) {
            return Integer.valueOf(map.size());
        }
        return null;
    }

    @jz2
    public final Collection<Config> getValues() {
        Map<String, Config> map = this.map;
        if (map != null) {
            return map.values();
        }
        return null;
    }

    @jz2
    public final boolean hasConfigs() {
        Map<String, Config> map = this.map;
        return !(map == null || map.isEmpty());
    }

    public int hashCode() {
        Map<String, Config> map = this.map;
        if (map == null) {
            return 0;
        }
        return map.hashCode();
    }

    @jz2
    public final void put(Config config) {
        config.getClass();
        Map<String, Config> map = this.map;
        LinkedHashMap linkedHashMap = map != null ? new LinkedHashMap(map) : new LinkedHashMap();
        linkedHashMap.put(config.getId(), config);
        this.map = linkedHashMap;
    }

    @jz2
    public final void remove(String str) {
        str.getClass();
        Map<String, Config> map = this.map;
        LinkedHashMap linkedHashMap = map != null ? new LinkedHashMap(map) : null;
        if (linkedHashMap != null) {
        }
        this.map = linkedHashMap;
    }

    public final void setMap(Map<String, Config> map) {
        this.map = map;
    }

    @jz2
    public String toString() {
        Map<String, Config> map = this.map;
        return "ConfigsData(configs=" + (map != null ? Integer.valueOf(map.size()) : null) + ")";
    }

    @jz2
    public final ConfigsData validate() {
        LinkedHashMap linkedHashMap;
        Map<String, Config> map = this.map;
        if (map != null) {
            linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, Config> entry : map.entrySet()) {
                if (sq1.a(entry.getValue(), false)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
        } else {
            linkedHashMap = null;
        }
        this.map = linkedHashMap;
        if (linkedHashMap == null || linkedHashMap.isEmpty()) {
            return null;
        }
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        Map<String, Config> map = this.map;
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(map.size());
        for (Map.Entry<String, Config> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            entry.getValue().writeToParcel(parcel, i);
        }
    }

    public ConfigsData(Map<String, Config> map) {
        this.map = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigsData() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
