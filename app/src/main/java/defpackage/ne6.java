package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ne6 extends gk1 {
    public final byte[] c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ne6() {
        super(SwiftApp.Companion.c());
        SwiftApp.Companion companion = SwiftApp.d;
        byte[] bytes = g67.w("SwiftBackup").getBytes(f51.a);
        bytes.getClass();
        this.c = bytes;
    }

    @Override // defpackage.lo4
    public final synchronized byte[] i() {
        return this.c;
    }
}
