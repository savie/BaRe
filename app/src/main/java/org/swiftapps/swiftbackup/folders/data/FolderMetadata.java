package org.swiftapps.swiftbackup.folders.data;

import android.os.Looper;
import android.util.Log;
import defpackage.af3;
import defpackage.cf3;
import defpackage.d6;
import defpackage.dj7;
import defpackage.eh3;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.io4;
import defpackage.jj3;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.kj3;
import defpackage.l0;
import defpackage.m0;
import defpackage.pe4;
import defpackage.q;
import defpackage.q63;
import defpackage.re3;
import defpackage.tm3;
import defpackage.um3;
import defpackage.vm3;
import defpackage.vr6;
import defpackage.w14;
import defpackage.wc2;
import defpackage.x65;
import defpackage.xs1;
import defpackage.ye3;
import defpackage.zc2;
import defpackage.ze3;
import java.time.Instant;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderMetadata extends eh3 implements jl0 {
    public static final um3 Companion = new um3();
    private static final String TAG = "FolderMetadata";
    private final BaseBackup baseBackup;
    private final FolderItem folderItem;
    private final Map<String, IncrementalBackup> incrementalBackups;

    public /* synthetic */ FolderMetadata(FolderItem folderItem, BaseBackup baseBackup, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            folderItem = new FolderItem(null, null, null, 0L, 15, null);
        }
        this(folderItem, (i & 2) != 0 ? null : baseBackup, (i & 4) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FolderMetadata copy$default(FolderMetadata folderMetadata, FolderItem folderItem, BaseBackup baseBackup, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            folderItem = folderMetadata.folderItem;
        }
        if ((i & 2) != 0) {
            baseBackup = folderMetadata.baseBackup;
        }
        if ((i & 4) != 0) {
            map = folderMetadata.incrementalBackups;
        }
        return folderMetadata.copy(folderItem, baseBackup, map);
    }

    public final FolderItem component1() {
        return this.folderItem;
    }

    public final BaseBackup component2() {
        return this.baseBackup;
    }

    public final Map<String, IncrementalBackup> component3() {
        return this.incrementalBackups;
    }

    public final FolderMetadata copy(FolderItem folderItem, BaseBackup baseBackup, Map<String, IncrementalBackup> map) {
        folderItem.getClass();
        return new FolderMetadata(folderItem, baseBackup, map);
    }

    @jz2
    public final FolderMetadata copyWithNoBackups() {
        return copy$default(this, null, null, null, 1, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FolderMetadata)) {
            return false;
        }
        FolderMetadata folderMetadata = (FolderMetadata) obj;
        return pe4.d(this.folderItem, folderMetadata.folderItem) && pe4.d(this.baseBackup, folderMetadata.baseBackup) && pe4.d(this.incrementalBackups, folderMetadata.incrementalBackups);
    }

    public final BaseBackup getBaseBackup() {
        return this.baseBackup;
    }

    @jz2
    public final long getBaseBackupSize() {
        BaseBackup baseBackup = this.baseBackup;
        return io4.h(baseBackup != null ? Long.valueOf(baseBackup.getSize()) : null);
    }

    @Override // defpackage.jl0
    @jz2
    public FolderMetadata getCopy() {
        return copy$default(this, null, null, null, 7, null);
    }

    public final FolderItem getFolderItem() {
        return this.folderItem;
    }

    public final Map<String, IncrementalBackup> getIncrementalBackups() {
        return this.incrementalBackups;
    }

    @jz2
    public final long getIncrementalBackupsSize() {
        Long lValueOf;
        Collection<IncrementalBackup> collectionValues;
        Map<String, IncrementalBackup> map = this.incrementalBackups;
        if (map == null || (collectionValues = map.values()) == null) {
            lValueOf = null;
        } else {
            Iterator<T> it = collectionValues.iterator();
            long size = 0;
            while (it.hasNext()) {
                size += ((IncrementalBackup) it.next()).getSize();
            }
            lValueOf = Long.valueOf(size);
        }
        return io4.h(lValueOf);
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.folderItem.getId();
    }

    @jz2
    public final long getLatestBackupDate() {
        Map<String, IncrementalBackup> map = this.incrementalBackups;
        if (map == null || map.isEmpty()) {
            BaseBackup baseBackup = this.baseBackup;
            return io4.h(baseBackup != null ? Long.valueOf(baseBackup.getDate()) : null);
        }
        Iterator<T> it = this.incrementalBackups.values().iterator();
        if (!it.hasNext()) {
            m0.d();
            return 0L;
        }
        Object next = it.next();
        if (it.hasNext()) {
            long date = ((IncrementalBackup) next).getDate();
            do {
                Object next2 = it.next();
                long date2 = ((IncrementalBackup) next2).getDate();
                if (date < date2) {
                    next = next2;
                    date = date2;
                }
            } while (it.hasNext());
        }
        return ((IncrementalBackup) next).getDate();
    }

    @jz2
    public final long getTotalSize() {
        return getIncrementalBackupsSize() + getBaseBackupSize();
    }

    @jz2
    public final boolean hasAnyBackup() {
        return hasBaseBackup() || hasIncrementalBackups();
    }

    @jz2
    public final boolean hasBackups() {
        return hasBaseBackup();
    }

    @jz2
    public final boolean hasBaseBackup() {
        BaseBackup baseBackup = this.baseBackup;
        return baseBackup != null && baseBackup.isValid();
    }

    @jz2
    public final boolean hasIncrementalBackups() {
        Collection<IncrementalBackup> collectionValues;
        Map<String, IncrementalBackup> map = this.incrementalBackups;
        if (map != null && (collectionValues = map.values()) != null && !collectionValues.isEmpty()) {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                if (((IncrementalBackup) it.next()).isValid()) {
                    return true;
                }
            }
        }
        return false;
    }

    @jz2
    public final boolean hasValidCloudLinks() {
        Collection<IncrementalBackup> collectionValues;
        String manifestLink;
        String backupLink;
        ArrayList arrayList = new ArrayList();
        BaseBackup baseBackup = this.baseBackup;
        if (baseBackup != null && (backupLink = baseBackup.getBackupLink()) != null) {
            arrayList.add(backupLink);
        }
        BaseBackup baseBackup2 = this.baseBackup;
        if (baseBackup2 != null && (manifestLink = baseBackup2.getManifestLink()) != null) {
            arrayList.add(manifestLink);
        }
        Map<String, IncrementalBackup> map = this.incrementalBackups;
        if (map != null && (collectionValues = map.values()) != null) {
            for (IncrementalBackup incrementalBackup : collectionValues) {
                arrayList.add(incrementalBackup.getBackupLink());
                arrayList.add(incrementalBackup.getManifestLink());
            }
        }
        if (arrayList.isEmpty() || arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (new q63((String) it.next(), 1).j()) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = this.folderItem.hashCode() * 31;
        BaseBackup baseBackup = this.baseBackup;
        int iHashCode2 = (iHashCode + (baseBackup == null ? 0 : baseBackup.hashCode())) * 31;
        Map<String, IncrementalBackup> map = this.incrementalBackups;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    @jz2
    public final boolean isValid() {
        return this.folderItem.isValid();
    }

    @jz2
    public final FolderMetadata refreshLocalMetadataFile(kj3 kj3Var) {
        BaseBackup baseBackup;
        IncrementalBackup incrementalBackup;
        kj3Var.getClass();
        FolderMetadata folderMetadataH = kj3Var.h();
        b bVar = BaseBackup.Companion;
        FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var.c();
        bVar.getClass();
        folderBackup$BaseBackupC.getClass();
        LinkedHashMap linkedHashMap = null;
        if (folderBackup$BaseBackupC.exists()) {
            String strV = folderBackup$BaseBackupC.getBackupFile().v();
            Long lValueOf = Long.valueOf(folderBackup$BaseBackupC.getBackupFile().A());
            Manifest manifestB = tm3.b(folderBackup$BaseBackupC.getManifestFile());
            Long lValueOf2 = manifestB != null ? Long.valueOf(manifestB.baseOriginalSize()) : null;
            String strV2 = folderBackup$BaseBackupC.getManifestFile().v();
            Long lValueOf3 = Long.valueOf(folderBackup$BaseBackupC.getManifestFile().A());
            DateTimeFormatter dateTimeFormatter = jj3.a;
            String str = jj3.a.format(Instant.ofEpochMilli(folderBackup$BaseBackupC.getBackupFile().z()));
            str.getClass();
            baseBackup = new BaseBackup(strV, lValueOf, lValueOf2, strV2, lValueOf3, str, false, 64, null);
        } else {
            baseBackup = null;
        }
        ArrayList<FolderBackup$IncrementalBackup> arrayListA = kj3Var.a();
        if (arrayListA != null) {
            ArrayList<IncrementalBackup> arrayList = new ArrayList();
            for (FolderBackup$IncrementalBackup folderBackup$IncrementalBackup : arrayListA) {
                IncrementalBackup.Companion.getClass();
                folderBackup$IncrementalBackup.getClass();
                if (folderBackup$IncrementalBackup.exists()) {
                    String strV3 = folderBackup$IncrementalBackup.getBackupFile().v();
                    Long lValueOf4 = Long.valueOf(folderBackup$IncrementalBackup.getBackupFile().A());
                    Manifest manifestB2 = tm3.b(folderBackup$IncrementalBackup.getManifestFile());
                    incrementalBackup = new IncrementalBackup(strV3, lValueOf4, manifestB2 != null ? Long.valueOf(manifestB2.incrementalOriginalSize()) : null, folderBackup$IncrementalBackup.getManifestFile().v(), Long.valueOf(folderBackup$IncrementalBackup.getManifestFile().A()), folderBackup$IncrementalBackup.getTimestamp(), false, 64, null);
                } else {
                    incrementalBackup = null;
                }
                if (incrementalBackup != null) {
                    arrayList.add(incrementalBackup);
                }
            }
            int iQ0 = x65.q0(hl1.G0(arrayList, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            linkedHashMap = new LinkedHashMap(iQ0);
            for (IncrementalBackup incrementalBackup2 : arrayList) {
                linkedHashMap.put(incrementalBackup2.getTimestamp(), incrementalBackup2);
            }
        }
        FolderMetadata folderMetadataCopy$default = copy$default(this, null, baseBackup, linkedHashMap, 1, null);
        if (!pe4.d(folderMetadataH, folderMetadataCopy$default)) {
            Log.i(TAG, "Updating metadata file: " + folderMetadataCopy$default);
            folderMetadataCopy$default.writeToFile(kj3Var.d());
        }
        return folderMetadataCopy$default;
    }

    @jz2
    public final void removeFromFirebaseNode() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        zc2 zc2Var = re3.a;
        String id = this.folderItem.getId();
        id.getClass();
        af3 af3VarC = cf3.c(re3.h().d(id), null);
        if (!(af3VarC instanceof ye3)) {
            if (pe4.d(af3VarC, ze3.b)) {
                vr6.i$default(vr6.INSTANCE, TAG, "Removing  cloud folder metadata complete", null, 4, null);
                return;
            } else {
                q.j();
                return;
            }
        }
        vr6 vr6Var = vr6.INSTANCE;
        String displayString = toDisplayString();
        wc2 wc2Var = ((ye3) af3VarC).b;
        vr6.e$default(vr6Var, TAG, "Error when removing cloud folder metadata: " + displayString + ". Error: " + wc2Var, null, 4, null);
        throw wc2Var.c();
    }

    @jz2
    public final String toDisplayString() {
        return eq3.l("FolderMetadata(name='", this.folderItem.getDisplayName(), "', id='", this.folderItem.getId(), "')");
    }

    @jz2
    public String toString() {
        return toDisplayString();
    }

    @jz2
    public final FolderMetadata writeToFile(q63 q63Var) {
        q63Var.getClass();
        io4.g(q63Var);
        gv7 gv7Var = w14.a;
        if (w14.g(this, q63Var, true)) {
            return this;
        }
        l0.e("Failed writing metadata!");
        return null;
    }

    @jz2
    public final af3 writeToFirebaseNode() {
        Collection<IncrementalBackup> collectionValues;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        if (!isValid()) {
            q.d(this, "Cloud metadata invalid: ");
            return null;
        }
        if (!hasValidCloudLinks()) {
            q.d(this, "Cloud metadata doesn't have valid cloud links: ");
            return null;
        }
        BaseBackup baseBackup = this.baseBackup;
        if (baseBackup == null || !baseBackup.isValid()) {
            q.d(this, "Invalid base backup details ");
            return null;
        }
        if (hasIncrementalBackups()) {
            Map<String, IncrementalBackup> map = this.incrementalBackups;
            if (map != null && (collectionValues = map.values()) != null) {
                if (!collectionValues.isEmpty()) {
                    Iterator<T> it = collectionValues.iterator();
                    while (it.hasNext()) {
                        if (((IncrementalBackup) it.next()).isValid()) {
                        }
                    }
                }
            }
            q.d(this, "Invalid incremental backup details ");
            return null;
        }
        zc2 zc2Var = re3.a;
        String id = this.folderItem.getId();
        id.getClass();
        zc2 zc2VarD = re3.h().d(id);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "FolderMetadata.writeToCloud", xs1.j("Uploading cloud metadata at node key: ", zc2VarD.e()), null, 4, null);
        af3 af3VarC = cf3.c(zc2VarD, this);
        if (pe4.d(af3VarC, ze3.b)) {
            vr6.i$default(vr6Var, "FolderMetadata.writeToCloud", "Uploading cloud metadata complete", null, 4, null);
            return af3VarC;
        }
        if (af3VarC instanceof ye3) {
            vr6.e$default(vr6Var, "FolderMetadata.writeToCloud", xs1.j("Error occurred while uploading cloud metadata = ", toDisplayString()), null, 4, null);
            return af3VarC;
        }
        q.j();
        return null;
    }

    public FolderMetadata() {
        this(null, null, null, 7, null);
    }

    public FolderMetadata(FolderItem folderItem, BaseBackup baseBackup, Map<String, IncrementalBackup> map) {
        folderItem.getClass();
        this.folderItem = folderItem;
        this.baseBackup = baseBackup;
        this.incrementalBackups = map;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class BaseBackup extends vm3 {
        public static final b Companion = new b();
        private String backupLink;
        private Long backupSize;
        private transient boolean isBaseBackup;
        private String manifestLink;
        private Long manifestSize;
        private Long originalSize;
        private String timestamp;

        public /* synthetic */ BaseBackup(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : l2, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? null : l3, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? true : z);
        }

        public static /* synthetic */ BaseBackup copy$default(BaseBackup baseBackup, String str, Long l, Long l2, String str2, Long l3, String str3, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = baseBackup.backupLink;
            }
            if ((i & 2) != 0) {
                l = baseBackup.backupSize;
            }
            if ((i & 4) != 0) {
                l2 = baseBackup.originalSize;
            }
            if ((i & 8) != 0) {
                str2 = baseBackup.manifestLink;
            }
            if ((i & 16) != 0) {
                l3 = baseBackup.manifestSize;
            }
            if ((i & 32) != 0) {
                str3 = baseBackup.timestamp;
            }
            if ((i & 64) != 0) {
                z = baseBackup.isBaseBackup;
            }
            String str4 = str3;
            boolean z2 = z;
            Long l4 = l3;
            Long l5 = l2;
            return baseBackup.copy(str, l, l5, str2, l4, str4, z2);
        }

        public final String component1() {
            return this.backupLink;
        }

        public final Long component2() {
            return this.backupSize;
        }

        public final Long component3() {
            return this.originalSize;
        }

        public final String component4() {
            return this.manifestLink;
        }

        public final Long component5() {
            return this.manifestSize;
        }

        public final String component6() {
            return this.timestamp;
        }

        public final boolean component7() {
            return this.isBaseBackup;
        }

        public final BaseBackup copy(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            return new BaseBackup(str, l, l2, str2, l3, str3, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BaseBackup)) {
                return false;
            }
            BaseBackup baseBackup = (BaseBackup) obj;
            return pe4.d(this.backupLink, baseBackup.backupLink) && pe4.d(this.backupSize, baseBackup.backupSize) && pe4.d(this.originalSize, baseBackup.originalSize) && pe4.d(this.manifestLink, baseBackup.manifestLink) && pe4.d(this.manifestSize, baseBackup.manifestSize) && pe4.d(this.timestamp, baseBackup.timestamp) && this.isBaseBackup == baseBackup.isBaseBackup;
        }

        @Override // defpackage.vm3
        public String getBackupLink() {
            return this.backupLink;
        }

        @Override // defpackage.vm3
        public Long getBackupSize() {
            return this.backupSize;
        }

        @Override // defpackage.jl0
        @jz2
        public BaseBackup getCopy() {
            return copy$default(this, null, null, null, null, null, null, false, 127, null);
        }

        @Override // defpackage.vm3
        public String getManifestLink() {
            return this.manifestLink;
        }

        @Override // defpackage.vm3
        public Long getManifestSize() {
            return this.manifestSize;
        }

        public Long getOriginalSize() {
            return this.originalSize;
        }

        @Override // defpackage.vm3
        public String getTimestamp() {
            return this.timestamp;
        }

        public int hashCode() {
            int iHashCode = this.backupLink.hashCode() * 31;
            Long l = this.backupSize;
            int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
            Long l2 = this.originalSize;
            int iG = fz5.g((iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31, 31, this.manifestLink);
            Long l3 = this.manifestSize;
            return Boolean.hashCode(this.isBaseBackup) + fz5.g((iG + (l3 != null ? l3.hashCode() : 0)) * 31, 31, this.timestamp);
        }

        public boolean isBaseBackup() {
            return this.isBaseBackup;
        }

        public void setBackupLink(String str) {
            str.getClass();
            this.backupLink = str;
        }

        public void setBackupSize(Long l) {
            this.backupSize = l;
        }

        public void setBaseBackup(boolean z) {
            this.isBaseBackup = z;
        }

        public void setManifestLink(String str) {
            str.getClass();
            this.manifestLink = str;
        }

        public void setManifestSize(Long l) {
            this.manifestSize = l;
        }

        public void setOriginalSize(Long l) {
            this.originalSize = l;
        }

        public void setTimestamp(String str) {
            str.getClass();
            this.timestamp = str;
        }

        public String toString() {
            String str = this.backupLink;
            Long l = this.backupSize;
            Long l2 = this.originalSize;
            String str2 = this.manifestLink;
            Long l3 = this.manifestSize;
            String str3 = this.timestamp;
            boolean z = this.isBaseBackup;
            StringBuilder sb = new StringBuilder("BaseBackup(backupLink=");
            sb.append(str);
            sb.append(", backupSize=");
            sb.append(l);
            sb.append(", originalSize=");
            sb.append(l2);
            sb.append(", manifestLink=");
            sb.append(str2);
            sb.append(", manifestSize=");
            sb.append(l3);
            sb.append(", timestamp=");
            sb.append(str3);
            sb.append(", isBaseBackup=");
            return dj7.p(sb, z, ")");
        }

        public BaseBackup() {
            this(null, null, null, null, null, null, false, 127, null);
        }

        public BaseBackup(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            this.backupLink = str;
            this.backupSize = l;
            this.originalSize = l2;
            this.manifestLink = str2;
            this.manifestSize = l3;
            this.timestamp = str3;
            this.isBaseBackup = z;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class IncrementalBackup extends vm3 {
        public static final c Companion = new c();
        private String backupLink;
        private Long backupSize;
        private transient boolean isBaseBackup;
        private String manifestLink;
        private Long manifestSize;
        private Long originalSize;
        private String timestamp;

        public /* synthetic */ IncrementalBackup(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : l2, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? null : l3, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? false : z);
        }

        public static /* synthetic */ IncrementalBackup copy$default(IncrementalBackup incrementalBackup, String str, Long l, Long l2, String str2, Long l3, String str3, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = incrementalBackup.backupLink;
            }
            if ((i & 2) != 0) {
                l = incrementalBackup.backupSize;
            }
            if ((i & 4) != 0) {
                l2 = incrementalBackup.originalSize;
            }
            if ((i & 8) != 0) {
                str2 = incrementalBackup.manifestLink;
            }
            if ((i & 16) != 0) {
                l3 = incrementalBackup.manifestSize;
            }
            if ((i & 32) != 0) {
                str3 = incrementalBackup.timestamp;
            }
            if ((i & 64) != 0) {
                z = incrementalBackup.isBaseBackup;
            }
            String str4 = str3;
            boolean z2 = z;
            Long l4 = l3;
            Long l5 = l2;
            return incrementalBackup.copy(str, l, l5, str2, l4, str4, z2);
        }

        public final String component1() {
            return this.backupLink;
        }

        public final Long component2() {
            return this.backupSize;
        }

        public final Long component3() {
            return this.originalSize;
        }

        public final String component4() {
            return this.manifestLink;
        }

        public final Long component5() {
            return this.manifestSize;
        }

        public final String component6() {
            return this.timestamp;
        }

        public final boolean component7() {
            return this.isBaseBackup;
        }

        public final IncrementalBackup copy(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            return new IncrementalBackup(str, l, l2, str2, l3, str3, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IncrementalBackup)) {
                return false;
            }
            IncrementalBackup incrementalBackup = (IncrementalBackup) obj;
            return pe4.d(this.backupLink, incrementalBackup.backupLink) && pe4.d(this.backupSize, incrementalBackup.backupSize) && pe4.d(this.originalSize, incrementalBackup.originalSize) && pe4.d(this.manifestLink, incrementalBackup.manifestLink) && pe4.d(this.manifestSize, incrementalBackup.manifestSize) && pe4.d(this.timestamp, incrementalBackup.timestamp) && this.isBaseBackup == incrementalBackup.isBaseBackup;
        }

        @Override // defpackage.vm3
        public String getBackupLink() {
            return this.backupLink;
        }

        @Override // defpackage.vm3
        public Long getBackupSize() {
            return this.backupSize;
        }

        @Override // defpackage.jl0
        @jz2
        public IncrementalBackup getCopy() {
            return copy$default(this, null, null, null, null, null, null, false, 127, null);
        }

        @Override // defpackage.vm3
        public String getManifestLink() {
            return this.manifestLink;
        }

        @Override // defpackage.vm3
        public Long getManifestSize() {
            return this.manifestSize;
        }

        public Long getOriginalSize() {
            return this.originalSize;
        }

        @Override // defpackage.vm3
        public String getTimestamp() {
            return this.timestamp;
        }

        public int hashCode() {
            int iHashCode = this.backupLink.hashCode() * 31;
            Long l = this.backupSize;
            int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
            Long l2 = this.originalSize;
            int iG = fz5.g((iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31, 31, this.manifestLink);
            Long l3 = this.manifestSize;
            return Boolean.hashCode(this.isBaseBackup) + fz5.g((iG + (l3 != null ? l3.hashCode() : 0)) * 31, 31, this.timestamp);
        }

        public boolean isBaseBackup() {
            return this.isBaseBackup;
        }

        public void setBackupLink(String str) {
            str.getClass();
            this.backupLink = str;
        }

        public void setBackupSize(Long l) {
            this.backupSize = l;
        }

        public void setBaseBackup(boolean z) {
            this.isBaseBackup = z;
        }

        public void setManifestLink(String str) {
            str.getClass();
            this.manifestLink = str;
        }

        public void setManifestSize(Long l) {
            this.manifestSize = l;
        }

        public void setOriginalSize(Long l) {
            this.originalSize = l;
        }

        public void setTimestamp(String str) {
            str.getClass();
            this.timestamp = str;
        }

        public String toString() {
            String str = this.backupLink;
            Long l = this.backupSize;
            Long l2 = this.originalSize;
            String str2 = this.manifestLink;
            Long l3 = this.manifestSize;
            String str3 = this.timestamp;
            boolean z = this.isBaseBackup;
            StringBuilder sb = new StringBuilder("IncrementalBackup(backupLink=");
            sb.append(str);
            sb.append(", backupSize=");
            sb.append(l);
            sb.append(", originalSize=");
            sb.append(l2);
            sb.append(", manifestLink=");
            sb.append(str2);
            sb.append(", manifestSize=");
            sb.append(l3);
            sb.append(", timestamp=");
            sb.append(str3);
            sb.append(", isBaseBackup=");
            return dj7.p(sb, z, ")");
        }

        public IncrementalBackup(String str, Long l, Long l2, String str2, Long l3, String str3, boolean z) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            this.backupLink = str;
            this.backupSize = l;
            this.originalSize = l2;
            this.manifestLink = str2;
            this.manifestSize = l3;
            this.timestamp = str3;
            this.isBaseBackup = z;
        }

        public IncrementalBackup() {
            this(null, null, null, null, null, null, false, 127, null);
        }
    }
}
