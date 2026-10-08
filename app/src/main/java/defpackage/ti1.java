package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ti1 extends CloudResult {
    public final Exception a;

    public ti1(Exception exc) {
        super(null);
        this.a = exc;
    }

    @Override // org.swiftapps.swiftbackup.cloud.model.CloudResult
    public final String getErrorMessage() {
        return io4.b(this.a);
    }
}
