package com.jcraft.jsch;

import java.io.IOException;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.file.Path;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UnixDomainSocketFactory implements USocketFactory {
    public UnixDomainSocketFactory() throws AgentProxyException {
        throw new AgentProxyException("UnixDomainSocketFactory requires Java16+.");
    }

    @Override // com.jcraft.jsch.USocketFactory
    public final ServerSocketChannel bind(Path path) throws IOException {
        throw new UnsupportedOperationException("UnixDomainSocketFactory requires Java16+.");
    }

    @Override // com.jcraft.jsch.USocketFactory
    public final SocketChannel connect(Path path) throws IOException {
        throw new UnsupportedOperationException("UnixDomainSocketFactory requires Java16+.");
    }
}
