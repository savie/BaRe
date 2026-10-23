package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xy7 extends zy7 {
    public final List e;
    public final boolean f;

    public xy7(List list, boolean z) {
        super(2);
        this.e = list;
        this.f = z;
        if (list.isEmpty()) {
            l0.e("Backup locations is empty!");
            throw null;
        }
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
        if (!(obj instanceof xy7)) {
            return false;
        }
        xy7 xy7Var = (xy7) obj;
        return this.e.equals(xy7Var.e) && this.f == xy7Var.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + (this.e.hashCode() * 31);
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "Backup(locations=" + this.e + ", isSyncOnly=" + this.f + ")";
    }
}
