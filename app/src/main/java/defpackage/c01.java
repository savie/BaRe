package defpackage;

import java.util.Comparator;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c01 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ c01(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ms8.n(Long.valueOf(((CallLogItem) obj2).getDate()), Long.valueOf(((CallLogItem) obj).getDate()));
            case 1:
                return ms8.n(Long.valueOf(((FolderBackup$IncrementalBackup) obj2).getDate()), Long.valueOf(((FolderBackup$IncrementalBackup) obj).getDate()));
            default:
                return ms8.n(Long.valueOf(((qv1) obj2).getLastSmsDate()), Long.valueOf(((qv1) obj).getLastSmsDate()));
        }
    }
}
