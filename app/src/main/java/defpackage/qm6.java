package defpackage;

import org.swiftapps.swiftbackup.folders.data.RestoreResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qm6 extends RestoreResult {
    public final String a;

    public qm6(String str) {
        super(null);
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qm6) && pe4.d(this.a, ((qm6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return eq3.k("Failure(message=", this.a, ")");
    }
}
