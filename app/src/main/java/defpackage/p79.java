package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class p79 extends IOException {
    public boolean a;

    public static r79 a() {
        return new r79("Protocol message tag had invalid wire type.");
    }

    public static p79 b() {
        return new p79("Protocol message contained an invalid tag (zero).");
    }

    public static p79 c() {
        return new p79("Protocol message had invalid UTF-8.");
    }

    public static p79 d() {
        return new p79("CodedInputStream encountered a malformed varint.");
    }

    public static p79 e() {
        return new p79("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static p79 f() {
        return new p79("Failed to parse the message.");
    }

    public static p79 g() {
        return new p79("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
