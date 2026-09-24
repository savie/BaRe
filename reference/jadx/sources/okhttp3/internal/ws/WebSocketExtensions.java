package okhttp3.internal.ws;

import defpackage.fz5;
import defpackage.pe4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class WebSocketExtensions {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WebSocketExtensions) && pe4.d(null, null) && pe4.d(null, null);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + fz5.h((fz5.h(((Boolean.hashCode(false) * 31) + 0) * 31, 31, false) + 0) * 31, 31, false);
    }

    public final String toString() {
        return "WebSocketExtensions(perMessageDeflate=false, clientMaxWindowBits=" + ((Object) null) + ", clientNoContextTakeover=false, serverMaxWindowBits=" + ((Object) null) + ", serverNoContextTakeover=false, unknownValues=false)";
    }
}
