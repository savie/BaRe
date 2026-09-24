package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.folders.data.FileEntry;
import org.swiftapps.swiftbackup.folders.data.ManifestInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wn3 {
    public final q63 a;
    public final ManifestInfo b;
    public final List c;
    public final List d = nc8.I(xn3.EXTRACT);
    public final CopyOnWriteArrayList e = new CopyOnWriteArrayList();
    public final long f;
    public final long g;
    public final long h;

    public wn3(q63 q63Var, ManifestInfo manifestInfo, List list) {
        this.a = q63Var;
        this.b = manifestInfo;
        this.c = list;
        this.f = q63Var.A();
        Iterator it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            FileEntry fileEntry = manifestInfo.getManifest().getCurrentState().getFiles().get((String) it.next());
            Long lValueOf = fileEntry != null ? Long.valueOf(fileEntry.getSize()) : null;
            if (lValueOf != null) {
                long jLongValue = lValueOf.longValue();
                j = Long.MAX_VALUE - j < jLongValue ? Long.MAX_VALUE : j + jLongValue;
            }
        }
        this.g = j < 1 ? 1L : j;
        long j2 = 0;
        for (xn3 xn3Var : this.d) {
            xn3Var.getClass();
            j2 += this.d.contains(xn3Var) ? this.g : 0L;
        }
        this.h = j2;
    }
}
