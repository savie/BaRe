package com.jcraft.jsch;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;
import java.nio.file.Path;
import java.nio.file.Paths;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SSHAgentConnector implements AgentConnector {
    public final USocketFactory a;
    public final Path b;

    /* JADX WARN: Illegal instructions before constructor call */
    public SSHAgentConnector() throws AgentProxyException {
        String str;
        JUnixSocketFactory jUnixSocketFactoryA = a();
        byte[] bArr = Util.a;
        try {
            str = System.getenv("SSH_AUTH_SOCK");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            throw new AgentProxyException("SSH_AUTH_SOCK is not defined.");
        }
        this(jUnixSocketFactoryA, Paths.get(str, new String[0]));
    }

    public static JUnixSocketFactory a() throws AgentProxyException {
        try {
            new UnixDomainSocketFactory();
            throw null;
        } catch (AgentProxyException e) {
            try {
                return new JUnixSocketFactory();
            } catch (AgentProxyException e2) {
                e2.addSuppressed(e);
                throw e;
            } catch (LinkageError e3) {
                AgentProxyException agentProxyException = new AgentProxyException("junixsocket library unavailable");
                agentProxyException.addSuppressed(e);
                agentProxyException.addSuppressed(e3);
                throw agentProxyException;
            }
        }
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final String getName() {
        return "ssh-agent";
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final boolean isAvailable() {
        try {
            SocketChannel socketChannelConnect = this.a.connect(this.b);
            if (socketChannelConnect != null) {
                socketChannelConnect.close();
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final void query(Buffer buffer) throws AgentProxyException {
        try {
            SocketChannel socketChannelConnect = this.a.connect(this.b);
            try {
                int length = buffer.getLength();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(buffer.b, 0, length);
                while (length > 0) {
                    int iWrite = socketChannelConnect.write(byteBufferWrap);
                    if (iWrite < 0) {
                        break;
                    } else if (iWrite > 0) {
                        length -= iWrite;
                    }
                }
                buffer.d = 0;
                int i = 4;
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(buffer.b, 0, 4);
                while (i > 0) {
                    int i2 = socketChannelConnect.read(byteBufferWrap2);
                    if (i2 < 0) {
                        break;
                    } else if (i2 > 0) {
                        i -= i2;
                    }
                }
                int i3 = buffer.getInt();
                if (i3 <= 0 || i3 > 262144) {
                    throw new AgentProxyException("Illegal length: " + i3);
                }
                buffer.d = 0;
                buffer.a(i3);
                ByteBuffer byteBufferWrap3 = ByteBuffer.wrap(buffer.b, 0, i3);
                while (i3 > 0) {
                    int i4 = socketChannelConnect.read(byteBufferWrap3);
                    if (i4 < 0) {
                        break;
                    } else if (i4 > 0) {
                        i3 -= i4;
                    }
                }
                if (socketChannelConnect != null) {
                    socketChannelConnect.close();
                }
            } catch (Throwable th) {
                if (socketChannelConnect != null) {
                    try {
                        socketChannelConnect.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            throw new AgentProxyException(e.toString(), e);
        }
    }

    public SSHAgentConnector(Path path) throws AgentProxyException {
        this(a(), path);
    }

    public SSHAgentConnector(USocketFactory uSocketFactory, Path path) {
        this.a = uSocketFactory;
        this.b = path;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SSHAgentConnector(USocketFactory uSocketFactory) throws AgentProxyException {
        String str;
        byte[] bArr = Util.a;
        try {
            str = System.getenv("SSH_AUTH_SOCK");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null) {
            this(uSocketFactory, Paths.get(str, new String[0]));
            return;
        }
        throw new AgentProxyException("SSH_AUTH_SOCK is not defined.");
    }
}
