package defpackage;

import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x15 implements e35 {
    @Override // defpackage.e35
    public final void onResult(Object obj) {
        Throwable th = (Throwable) obj;
        di8 di8Var = mi8.a;
        if ((th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException)) {
            m15.c("Unable to load composition.", th);
        } else {
            e6.j("Unable to parse composition", th);
        }
    }
}
