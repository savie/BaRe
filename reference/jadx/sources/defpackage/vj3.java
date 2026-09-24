package defpackage;

import org.swiftapps.swiftbackup.folders.data.Changes;
import org.swiftapps.swiftbackup.folders.data.FolderState;
import org.swiftapps.swiftbackup.folders.data.Manifest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vj3 {
    public final Changes a;
    public final FolderState b;
    public final Manifest c;

    public vj3(Changes changes, FolderState folderState, Manifest manifest) {
        this.a = changes;
        this.b = folderState;
        this.c = manifest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vj3)) {
            return false;
        }
        vj3 vj3Var = (vj3) obj;
        return this.a.equals(vj3Var.a) && this.b.equals(vj3Var.b) && this.c.equals(vj3Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ChangeCheckResult(changes=" + this.a + ", scannedState=" + this.b + ", lastManifest=" + this.c + ")";
    }
}
