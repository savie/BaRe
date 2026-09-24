package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mj0 extends pj0 {
    public final boolean e;
    public final ArrayList f;

    /* JADX WARN: Illegal instructions before constructor call */
    public mj0(ArrayList arrayList, boolean z) {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(z ? R.string.sync_backups : R.string.backup);
        string.getClass();
        super(string, Integer.valueOf(z ? R.drawable.ic_cloud : R.drawable.ic_plus), arrayList, 24);
        this.e = z;
        this.f = arrayList;
    }

    @Override // defpackage.pj0
    public final List a() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mj0)) {
            return false;
        }
        mj0 mj0Var = (mj0) obj;
        return this.e == mj0Var.e && pe4.d(this.f, mj0Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + (Boolean.hashCode(this.e) * 31);
    }

    public final String toString() {
        return "Backup(isSyncOnly=" + this.e + ", sections=" + this.f + ")";
    }
}
