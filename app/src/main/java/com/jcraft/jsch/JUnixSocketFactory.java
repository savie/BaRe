package com.jcraft.jsch;

import java.io.IOException;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.file.Path;
import org.newsclub.net.unix.AFUNIXServerSocketChannel;
import org.newsclub.net.unix.AFUNIXSocketAddress;
import org.newsclub.net.unix.AFUNIXSocketChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JUnixSocketFactory implements USocketFactory {
    public JUnixSocketFactory() throws AgentProxyException {
        try {
            AFUNIXSocketChannel aFUNIXSocketChannelOpen = AFUNIXSocketChannel.open();
            if (aFUNIXSocketChannelOpen != null) {
                aFUNIXSocketChannelOpen.close();
            }
        } catch (IOException | LinkageError e) {
            throw new AgentProxyException("junixsocket library unavailable", e);
        }
    }

    @Override // com.jcraft.jsch.USocketFactory
    public final ServerSocketChannel bind(Path path) throws IOException {
        AFUNIXSocketAddress aFUNIXSocketAddressOf = AFUNIXSocketAddress.of(path);
        AFUNIXServerSocketChannel aFUNIXServerSocketChannelOpen = AFUNIXServerSocketChannel.open();
        aFUNIXServerSocketChannelOpen.configureBlocking(true);
        aFUNIXServerSocketChannelOpen.bind(aFUNIXSocketAddressOf);
        return aFUNIXServerSocketChannelOpen;
    }

    @Override // com.jcraft.jsch.USocketFactory
    public final SocketChannel connect(Path path) throws IOException {
        AFUNIXSocketAddress aFUNIXSocketAddressOf = AFUNIXSocketAddress.of(path);
        AFUNIXSocketChannel aFUNIXSocketChannelOpen = AFUNIXSocketChannel.open();
        aFUNIXSocketChannelOpen.configureBlocking(true);
        aFUNIXSocketChannelOpen.connect(aFUNIXSocketAddressOf);
        return aFUNIXSocketChannelOpen;
    }
}
