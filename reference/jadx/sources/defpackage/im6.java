package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.folders.data.ManifestInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class im6 {
    public final q63 a;
    public final ManifestInfo b;
    public final ArrayList c;

    public im6(q63 q63Var, ManifestInfo manifestInfo, ArrayList arrayList) {
        this.a = q63Var;
        this.b = manifestInfo;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof im6)) {
            return false;
        }
        im6 im6Var = (im6) obj;
        return this.a.equals(im6Var.a) && this.b.equals(im6Var.b) && this.c.equals(im6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "RestoreCandidate(backupFile=" + this.a + ", manifestInfo=" + this.b + ", filesInFinalState=" + this.c + ")";
    }
}
