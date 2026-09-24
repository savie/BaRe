package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oy7 extends ty7 {
    public final List f;
    public final List g;
    public final ny7 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oy7(List list, List list2, ny7 ny7Var) {
        super(3, 0);
        list.getClass();
        list2.getClass();
        ny7Var.getClass();
        this.f = list;
        this.g = list2;
        this.h = ny7Var;
        if (list.isEmpty()) {
            l0.e("Empty app parts for deleting!");
            throw null;
        }
    }

    @Override // defpackage.cz7
    public final String a() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.delete_backup);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oy7)) {
            return false;
        }
        oy7 oy7Var = (oy7) obj;
        return pe4.d(this.f, oy7Var.f) && pe4.d(this.g, oy7Var.g) && pe4.d(this.h, oy7Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + fz5.i(this.g, this.f.hashCode() * 31, 31);
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "DeleteBackups(parts=" + this.f + ", locations=" + this.g + ", deleteType=" + this.h + ")";
    }
}
