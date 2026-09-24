package okhttp3.internal.http;

import defpackage.uq7;
import java.net.ProtocolException;
import okhttp3.Protocol;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class StatusLine {
    public final Protocol a;
    public final int b;
    public final String c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static StatusLine a(String str) throws ProtocolException {
            int i;
            String strSubstring;
            boolean zV = uq7.V(str, "HTTP/1.", false);
            Protocol protocol = Protocol.HTTP_1_0;
            Protocol protocol2 = Protocol.HTTP_1_1;
            if (zV) {
                i = 9;
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt != 0) {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                    protocol = protocol2;
                }
            } else if (uq7.V(str, "ICY ", false)) {
                i = 4;
            } else {
                if (!uq7.V(str, "SOURCETABLE ", false)) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                i = 12;
                protocol = protocol2;
            }
            int i2 = i + 3;
            if (str.length() < i2) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            Integer numW = uq7.W(10, str.substring(i, i2));
            if (numW == null) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iIntValue = numW.intValue();
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i + 4);
            }
            return new StatusLine(protocol, iIntValue, strSubstring);
        }
    }

    public StatusLine(Protocol protocol, int i, String str) {
        protocol.getClass();
        str.getClass();
        this.a = protocol;
        this.b = i;
        this.c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.a == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.c);
        return sb.toString();
    }
}
