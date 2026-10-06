package com.jcraft.jsch;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ServerSocketFactory {
    ServerSocket createServerSocket(int i, int i2, InetAddress inetAddress) throws IOException;
}
