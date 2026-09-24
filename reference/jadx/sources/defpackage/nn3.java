package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderState;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nn3 {
    public final boolean a;
    public final String b;
    public final boolean c;
    public final FolderState d;

    public nn3(boolean z, String str, boolean z2, FolderState folderState) {
        this.a = z;
        this.b = str;
        this.c = z2;
        this.d = folderState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nn3)) {
            return false;
        }
        nn3 nn3Var = (nn3) obj;
        return this.a == nn3Var.a && this.b.equals(nn3Var.b) && this.c == nn3Var.c && pe4.d(this.d, nn3Var.d);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.g(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        FolderState folderState = this.d;
        return iH + (folderState == null ? 0 : folderState.hashCode());
    }

    public final String toString() {
        return "FolderRestorePrecheck(restoreNeeded=" + this.a + ", targetFolderPath=" + this.b + ", targetFolderExisted=" + this.c + ", currentState=" + this.d + ")";
    }
}
