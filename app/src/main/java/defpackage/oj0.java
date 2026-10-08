package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oj0 extends pj0 {
    public final boolean e;
    public final ArrayList f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oj0(ArrayList arrayList, boolean z) {
        super(dj7.g(R.string.restore), Integer.valueOf(R.drawable.ic_restore), arrayList, 24);
        SwiftApp.Companion companion = SwiftApp.d;
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
        if (!(obj instanceof oj0)) {
            return false;
        }
        oj0 oj0Var = (oj0) obj;
        return this.e == oj0Var.e && pe4.d(this.f, oj0Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + (Boolean.hashCode(this.e) * 31);
    }

    public final String toString() {
        return "Restore(isCloudRestore=" + this.e + ", sections=" + this.f + ")";
    }
}
