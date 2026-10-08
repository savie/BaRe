package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zz0 implements FilenameFilter {
    public final /* synthetic */ int a;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.a) {
            case 0:
                str.getClass();
                return uq7.O(str, "cls", false);
            case 1:
                str.getClass();
                return uq7.O(str, "wal", false);
            default:
                str.getClass();
                return uq7.O(str, "msg", false);
        }
    }
}
