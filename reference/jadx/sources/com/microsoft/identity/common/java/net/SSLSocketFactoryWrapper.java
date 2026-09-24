package com.microsoft.identity.common.java.net;

import defpackage.f6;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SSLSocketFactoryWrapper extends SSLSocketFactory {
    public static final List<String> SUPPORTED_SSL_PROTOCOLS = Collections.unmodifiableList(Arrays.asList("SSLv2Hello", "SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3"));
    private final SSLSocketFactory mBaseSocketFactory;
    private final List<String> mEnabledSSLProtocol;

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.net.SSLSocketFactoryWrapper$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements HandshakeCompletedListener {
        @Override // javax.net.ssl.HandshakeCompletedListener
        public final void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
            handshakeCompletedEvent.getSession().getProtocol();
            List<String> list = SSLSocketFactoryWrapper.SUPPORTED_SSL_PROTOCOLS;
        }
    }

    public SSLSocketFactoryWrapper(SSLSocketFactory sSLSocketFactory, List<String> list) {
        if (sSLSocketFactory == null) {
            f6.n("baseSocketFactory is marked non-null but is null");
            throw null;
        }
        this.mBaseSocketFactory = sSLSocketFactory;
        this.mEnabledSSLProtocol = list == null ? SUPPORTED_SSL_PROTOCOLS : list;
    }

    private void modifyEnabledSockets(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            ArrayList arrayList = new ArrayList();
            List listAsList = Arrays.asList(sSLSocket.getSupportedProtocols());
            for (String str : this.mEnabledSSLProtocol) {
                if (listAsList.contains(str)) {
                    arrayList.add(str);
                }
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            sSLSocket.setEnabledProtocols(strArr);
            ArrayList arrayList2 = new ArrayList();
            Collections.addAll(arrayList2, sSLSocket.getEnabledCipherSuites());
            List listAsList2 = Arrays.asList(sSLSocket.getSupportedCipherSuites());
            if (listAsList2.contains("TLS_AES_128_GCM_SHA256")) {
                arrayList2.add("TLS_AES_128_GCM_SHA256");
            }
            if (listAsList2.contains("TLS_AES_256_GCM_SHA384")) {
                arrayList2.add("TLS_AES_256_GCM_SHA384");
            }
            if (listAsList2.contains("TLS_CHACHA20_POLY1305_SHA256")) {
                arrayList2.add("TLS_CHACHA20_POLY1305_SHA256");
            }
            String[] strArr2 = new String[arrayList2.size()];
            arrayList2.toArray(strArr2);
            sSLSocket.setEnabledCipherSuites(strArr2);
            sSLSocket.addHandshakeCompletedListener(new AnonymousClass1());
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        Socket socketCreateSocket = this.mBaseSocketFactory.createSocket(socket, str, i, z);
        modifyEnabledSockets(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.mBaseSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.mBaseSocketFactory.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        Socket socketCreateSocket = this.mBaseSocketFactory.createSocket(str, i);
        modifyEnabledSockets(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        Socket socketCreateSocket = this.mBaseSocketFactory.createSocket(str, i, inetAddress, i2);
        modifyEnabledSockets(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        Socket socketCreateSocket = this.mBaseSocketFactory.createSocket(inetAddress, i);
        modifyEnabledSockets(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        Socket socketCreateSocket = this.mBaseSocketFactory.createSocket(inetAddress, i, inetAddress2, i2);
        modifyEnabledSockets(socketCreateSocket);
        return socketCreateSocket;
    }
}
