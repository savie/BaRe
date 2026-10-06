package org.swiftapps.swiftbackup.blacklist.data;

import defpackage.ds0;
import defpackage.el1;
import defpackage.jz2;
import defpackage.pe4;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BlacklistData {
    public static final ds0 Companion = new ds0();
    private final Map<String, BlacklistApp> dataMap;

    public /* synthetic */ BlacklistData(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BlacklistData copy$default(BlacklistData blacklistData, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = blacklistData.dataMap;
        }
        return blacklistData.copy(map);
    }

    public final Map<String, BlacklistApp> component1() {
        return this.dataMap;
    }

    public final BlacklistData copy(Map<String, BlacklistApp> map) {
        return new BlacklistData(map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BlacklistData) && pe4.d(this.dataMap, ((BlacklistData) obj).dataMap);
    }

    public final Map<String, BlacklistApp> getDataMap() {
        return this.dataMap;
    }

    @jz2
    public final List<BlacklistApp> getItems() {
        Collection<BlacklistApp> collectionValues;
        Map<String, BlacklistApp> map = this.dataMap;
        if (map == null || (collectionValues = map.values()) == null) {
            return null;
        }
        return el1.v1(collectionValues);
    }

    public int hashCode() {
        Map<String, BlacklistApp> map = this.dataMap;
        if (map == null) {
            return 0;
        }
        return map.hashCode();
    }

    public String toString() {
        return "BlacklistData(dataMap=" + this.dataMap + ")";
    }

    public BlacklistData(Map<String, BlacklistApp> map) {
        this.dataMap = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlacklistData() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
