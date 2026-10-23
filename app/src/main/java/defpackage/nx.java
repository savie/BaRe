package defpackage;

import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nx implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ nx(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ms8.n(Integer.valueOf(((Number) ((mx) obj2).h.getValue()).intValue()), Integer.valueOf(((Number) ((mx) obj).h.getValue()).intValue()));
            case 1:
                Long purchaseTime = ((wb6) obj2).getPurchaseTime();
                Long lValueOf = Long.valueOf(purchaseTime != null ? purchaseTime.longValue() : -1L);
                Long purchaseTime2 = ((wb6) obj).getPurchaseTime();
                return ms8.n(lValueOf, Long.valueOf(purchaseTime2 != null ? purchaseTime2.longValue() : -1L));
            case 2:
                return ms8.n(Long.valueOf(((rz0) obj2).getBackupTime()), Long.valueOf(((rz0) obj).getBackupTime()));
            case 3:
                return String.CASE_INSENSITIVE_ORDER.compare((String) obj, (String) obj2);
            case 4:
                return ms8.n(((q63) obj).p(), ((q63) obj2).p());
            case 5:
                return ms8.n(Long.valueOf(((FolderMetadata.IncrementalBackup) obj2).getDate()), Long.valueOf(((FolderMetadata.IncrementalBackup) obj).getDate()));
            case 6:
                return ms8.n(Double.valueOf(((is4) obj2).d), Double.valueOf(((is4) obj).d));
            case 7:
                return ms8.n(Long.valueOf(((vd5) obj2).getBackupTime()), Long.valueOf(((vd5) obj).getBackupTime()));
            case 8:
                return ms8.n(((pw7) obj).a, ((pw7) obj2).a);
            default:
                Map.Entry entry = (Map.Entry) obj;
                Map.Entry entry2 = (Map.Entry) obj2;
                Objects.requireNonNull(entry);
                Objects.requireNonNull(entry2);
                Comparable comparable = (Comparable) entry.getKey();
                Comparable comparable2 = (Comparable) entry2.getKey();
                comparable.getClass();
                comparable2.getClass();
                return comparable.compareTo(comparable2);
        }
    }
}
