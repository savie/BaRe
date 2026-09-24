package defpackage;

import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ow6 extends k23 {
    public static void B(SSLSocket sSLSocket, String str) {
        if (Build.VERSION.SDK_INT >= 29 && SSLSockets.isSupportedSocket(sSLSocket)) {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
        }
        if (str == null || nq7.j0(str)) {
            return;
        }
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        try {
            sSLParameters.setServerNames(nc8.I(new SNIHostName(str)));
        } catch (Throwable unused) {
        }
        sSLSocket.setSSLParameters(sSLParameters);
    }

    @Override // defpackage.k23
    public final void A() throws IllegalAccessException, NoSuchFieldException, NoSuchAlgorithmException, IOException, KeyManagementException {
        Socket socket = this.b;
        socket.getClass();
        Field declaredField = k23.class.getDeclaredField("plainSocket");
        declaredField.setAccessible(true);
        declaredField.set(this, socket);
        if (D() == null) {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{this.V}, null);
            sSLContext.getClientSessionContext().setSessionCacheSize(32);
            sSLContext.getClientSessionContext().setSessionTimeout(300);
            Field declaredField2 = k23.class.getDeclaredField("context");
            declaredField2.setAccessible(true);
            declaredField2.set(this, sSLContext);
        }
        SSLContext sSLContextD = D();
        if (sSLContextD == null) {
            l0.e("FTPS SSLContext was not initialized");
            return;
        }
        SSLSocketFactory socketFactory = sSLContextD.getSocketFactory();
        Socket socket2 = this.b;
        Socket socketCreateSocket = socketFactory.createSocket(socket2, this.c, socket2.getPort(), false);
        socketCreateSocket.getClass();
        SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
        sSLSocket.setEnableSessionCreation(this.S);
        boolean z = this.T;
        sSLSocket.setUseClientMode(z);
        if (!z) {
            sSLSocket.setNeedClientAuth(false);
            sSLSocket.setWantClientAuth(false);
        }
        String[] strArr = this.U;
        String[] strArr2 = strArr != null ? (String[]) strArr.clone() : null;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        B(sSLSocket, this.c);
        sSLSocket.startHandshake();
        this.b = sSLSocket;
        this.r = new BufferedReader(new InputStreamReader(sSLSocket.getInputStream(), this.o));
        this.s = new BufferedWriter(new OutputStreamWriter(sSLSocket.getOutputStream(), this.o));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0009  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0097, code lost:
    
        if (r2 == false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ls4 C(javax.net.ssl.SSLContext r9, java.lang.String r10, int r11, java.lang.String r12, java.lang.String r13, boolean r14) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ow6.C(javax.net.ssl.SSLContext, java.lang.String, int, java.lang.String, java.lang.String, boolean):ls4");
    }

    public final SSLContext D() {
        Object bn6Var;
        try {
            Field declaredField = k23.class.getDeclaredField("context");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            bn6Var = obj instanceof SSLContext ? (SSLContext) obj : null;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (SSLContext) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    @Override // defpackage.k23, defpackage.d23
    public final Socket n(String str, String str2) throws Exception {
        str.getClass();
        if (this.u != 2) {
            return super.n(str, str2);
        }
        SSLContext sSLContextD = D();
        if (sSLContextD == null) {
            return super.n(str, str2);
        }
        Socket socket = this.b;
        SSLSocket sSLSocket = socket instanceof SSLSocket ? (SSLSocket) socket : null;
        if (sSLSocket == null) {
            return super.n(str, str2);
        }
        String hostAddress = this.c;
        if (hostAddress == null) {
            hostAddress = sSLSocket.getInetAddress().getHostAddress();
        }
        int port = sSLSocket.getPort();
        hostAddress.getClass();
        ls4 ls4VarC = C(sSLContextD, hostAddress, port, str, str2, false);
        return ls4VarC == null ? C(sSLContextD, hostAddress, port, str, str2, true) : ls4VarC;
    }
}
