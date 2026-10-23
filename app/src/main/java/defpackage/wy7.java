package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wy7 extends ty7 {
    public final FolderRestoreStrategy f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy7(FolderRestoreStrategy folderRestoreStrategy) {
        super(1, 1);
        folderRestoreStrategy.getClass();
        this.f = folderRestoreStrategy;
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
        return (obj instanceof wy7) && this.f == ((wy7) obj).f;
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    @Override // defpackage.cz7
    public final String toString() {
        return "Restore(restoreStrategy=" + this.f + ")";
    }
}
