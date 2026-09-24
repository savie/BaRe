package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a01 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ a01(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ms8.n(Long.valueOf(((rz0) obj2).getBackupTime()), Long.valueOf(((rz0) obj).getBackupTime()));
            case 1:
                return ms8.n(Long.valueOf(((vd5) obj2).getBackupTime()), Long.valueOf(((vd5) obj).getBackupTime()));
            default:
                return String.CASE_INSENSITIVE_ORDER.compare(((ji) obj).getName(), ((ji) obj2).getName());
        }
    }
}
