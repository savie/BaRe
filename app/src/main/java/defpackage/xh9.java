package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xh9 extends IOException {
    public static xh9 a() {
        return new xh9("Protocol message had invalid UTF-8.");
    }

    public static xh9 b() {
        return new xh9("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static xh9 c() {
        return new xh9("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
