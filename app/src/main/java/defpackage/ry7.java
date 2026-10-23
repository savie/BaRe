package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ry7 extends ty7 {
    public final boolean f;

    public ry7(boolean z) {
        super(1, 0);
        this.f = z;
    }

    @Override // defpackage.cz7
    public final String a() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.restore);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ry7) && this.f == ((ry7) obj).f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f);
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "Restore(isApkDowngradeAllowed=" + this.f + ")";
    }
}
