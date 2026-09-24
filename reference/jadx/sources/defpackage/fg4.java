package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class fg4 extends IOException {
    public boolean a;

    public static fg4 a() {
        return new fg4("Protocol message had invalid UTF-8.");
    }

    public static eg4 b() {
        return new eg4("Protocol message tag had invalid wire type.");
    }

    public static fg4 c() {
        return new fg4("CodedInputStream encountered a malformed varint.");
    }

    public static fg4 d() {
        return new fg4("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static fg4 e() {
        return new fg4("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
