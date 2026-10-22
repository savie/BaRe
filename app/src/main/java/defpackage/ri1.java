package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ri1 extends CloudResult {
    public final String a;

    public ri1() {
        super(null);
        this.a = "startCheckAccess";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ri1) && pe4.d(this.a, ((ri1) obj).a);
    }

    @Override // org.swiftapps.swiftbackup.cloud.model.CloudResult
    public final String getErrorMessage() {
        return "Couldn't initialize OneDrive client";
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return eq3.k("OneDriveInitError(message=", this.a, ")");
    }
}
