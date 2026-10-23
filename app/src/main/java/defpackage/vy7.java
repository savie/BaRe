package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vy7 extends ty7 {
    public final List f;

    public vy7(List list) {
        super(3, 1);
        this.f = list;
        if (list.isEmpty()) {
            l0.e("Delete locations is empty!");
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
        return (obj instanceof vy7) && this.f.equals(((vy7) obj).f);
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "Delete(locations=" + this.f + ")";
    }
}
