package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bz7 extends cz7 {
    public final List c;
    public final List d;
    public final boolean e;

    public bz7(List list, List list2, boolean z) {
        list.getClass();
        this.c = list;
        this.d = list2;
        this.e = z;
    }

    @Override // defpackage.cz7
    public final String a() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.backup);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bz7)) {
            return false;
        }
        bz7 bz7Var = (bz7) obj;
        return pe4.d(this.c, bz7Var.c) && this.d.equals(bz7Var.d) && this.e == bz7Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + fz5.i(this.d, this.c.hashCode() * 31, 31);
    }

    @Override // defpackage.cz7
    public final String toString() {
        int size = this.c.size();
        StringBuilder sb = new StringBuilder("WifiBackup(configs=");
        sb.append(size);
        sb.append(", locations=");
        sb.append(this.d);
        sb.append(", isSyncOnly=");
        return dj7.p(sb, this.e, ")");
    }
}
