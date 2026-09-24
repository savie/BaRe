package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f45 extends gk1 {
    public final byte[] c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f45(String str) {
        super(SwiftApp.Companion.c());
        str.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        if (str.length() < 32) {
            str = str.concat(str.substring(0, 32 - str.length()));
        } else if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        this.c = bytes;
    }

    @Override // defpackage.lo4
    public final synchronized byte[] i() {
        return this.c;
    }
}
