package org.swiftapps.swiftbackup.cloud.helpers;

import defpackage.ev0;
import defpackage.jz2;
import defpackage.pe4;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BoxRecentUploadCache$Data {
    public static final ev0 Companion = new ev0();
    private final List<BoxRecentUploadCache$CachedBoxFile> items;

    public /* synthetic */ BoxRecentUploadCache$Data(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BoxRecentUploadCache$Data copy$default(BoxRecentUploadCache$Data boxRecentUploadCache$Data, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = boxRecentUploadCache$Data.items;
        }
        return boxRecentUploadCache$Data.copy(list);
    }

    public final List<BoxRecentUploadCache$CachedBoxFile> component1() {
        return this.items;
    }

    public final BoxRecentUploadCache$Data copy(List<BoxRecentUploadCache$CachedBoxFile> list) {
        return new BoxRecentUploadCache$Data(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BoxRecentUploadCache$Data) && pe4.d(this.items, ((BoxRecentUploadCache$Data) obj).items);
    }

    @jz2
    public final List<BoxRecentUploadCache$CachedBoxFile> getCachedFiles() {
        return this.items;
    }

    public final List<BoxRecentUploadCache$CachedBoxFile> getItems() {
        return this.items;
    }

    public int hashCode() {
        List<BoxRecentUploadCache$CachedBoxFile> list = this.items;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "Data(items=" + this.items + ")";
    }

    public BoxRecentUploadCache$Data(List<BoxRecentUploadCache$CachedBoxFile> list) {
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BoxRecentUploadCache$Data() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
