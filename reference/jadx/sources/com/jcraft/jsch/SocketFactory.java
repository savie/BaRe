package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface SocketFactory {
    Socket createSocket(String str, int i) throws IOException;

    InputStream getInputStream(Socket socket) throws IOException;

    OutputStream getOutputStream(Socket socket) throws IOException;
}
