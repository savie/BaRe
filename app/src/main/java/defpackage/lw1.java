package defpackage;

import android.view.View;
import java.util.Comparator;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lw1 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ lw1(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                WeakHashMap weakHashMap = dl8.a;
                float z = ((View) obj).getZ();
                float z2 = ((View) obj2).getZ();
                if (z > z2) {
                    return -1;
                }
                return z < z2 ? 1 : 0;
            case 1:
                return ms8.n(((FolderMetadata.IncrementalBackup) obj).getTimestamp(), ((FolderMetadata.IncrementalBackup) obj2).getTimestamp());
            case 2:
                return String.CASE_INSENSITIVE_ORDER.compare(((bz3) obj).a, ((bz3) obj2).a);
            case 3:
                return ms8.n(Long.valueOf(((qv1) obj2).getLastSmsDate()), Long.valueOf(((qv1) obj).getLastSmsDate()));
            default:
                return ms8.n(Long.valueOf(((yn8) obj2).b), Long.valueOf(((yn8) obj).b));
        }
    }
}
