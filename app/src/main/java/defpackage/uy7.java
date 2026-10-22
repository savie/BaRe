package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uy7 extends ty7 {
    public final List f;
    public final FolderBackupStrategy g;
    public final boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uy7(List list, FolderBackupStrategy folderBackupStrategy, boolean z) {
        super(2, 1);
        list.getClass();
        folderBackupStrategy.getClass();
        this.f = list;
        this.g = folderBackupStrategy;
        this.h = z;
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
        if (!(obj instanceof uy7)) {
            return false;
        }
        uy7 uy7Var = (uy7) obj;
        return pe4.d(this.f, uy7Var.f) && this.g == uy7Var.g && this.h == uy7Var.h;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.h) + ((this.g.hashCode() + (this.f.hashCode() * 31)) * 31);
    }

    @Override // defpackage.cz7
    public final String toString() {
        StringBuilder sb = new StringBuilder("Backup(locations=");
        sb.append(this.f);
        sb.append(", strategy=");
        sb.append(this.g);
        sb.append(", isSyncOnly=");
        return dj7.p(sb, this.h, ")");
    }
}
