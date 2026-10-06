package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qi1 extends CloudResult {
    public static final qi1 a = new qi1(null);

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof qi1);
    }

    @Override // org.swiftapps.swiftbackup.cloud.model.CloudResult
    public final String getErrorMessage() {
        return "Network error";
    }

    public final int hashCode() {
        return 1110033984;
    }

    public final String toString() {
        return "NetworkError";
    }
}
