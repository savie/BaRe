package com.jcraft.jsch;

import defpackage.y5;
import defpackage.z5;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class WindowsSSHAgentConnector implements AgentConnector {
    public final FileChannelFactory a;
    public final String b;

    public WindowsSSHAgentConnector() {
        this(new z5(14), "\\\\.\\pipe\\openssh-ssh-agent");
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final String getName() {
        return "ssh-agent - Windows Named Pipe";
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final boolean isAvailable() {
        try {
            FileChannel fileChannelOpen = this.a.open(this.b);
            try {
                boolean zIsOpen = fileChannelOpen.isOpen();
                fileChannelOpen.close();
                return zIsOpen;
            } catch (Throwable th) {
                if (fileChannelOpen != null) {
                    try {
                        fileChannelOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.jcraft.jsch.AgentConnector
    public final void query(Buffer buffer) throws AgentProxyException {
        try {
            FileChannel fileChannelOpen = this.a.open(this.b);
            try {
                int length = buffer.getLength();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(buffer.b, 0, length);
                while (length > 0) {
                    int iWrite = fileChannelOpen.write(byteBufferWrap);
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
                    int i2 = fileChannelOpen.read(byteBufferWrap2);
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
                    int i4 = fileChannelOpen.read(byteBufferWrap3);
                    if (i4 < 0) {
                        break;
                    } else if (i4 > 0) {
                        i3 -= i4;
                    }
                }
                if (fileChannelOpen != null) {
                    fileChannelOpen.close();
                }
            } catch (Throwable th) {
                if (fileChannelOpen != null) {
                    try {
                        fileChannelOpen.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            throw new AgentProxyException("I/O error communicating with OpenSSH agent: " + e.getMessage(), e);
        }
    }

    public WindowsSSHAgentConnector(String str) {
        this(new y5(18), str);
    }

    public WindowsSSHAgentConnector(FileChannelFactory fileChannelFactory) {
        this(fileChannelFactory, "\\\\.\\pipe\\openssh-ssh-agent");
    }

    public WindowsSSHAgentConnector(FileChannelFactory fileChannelFactory, String str) {
        this.a = fileChannelFactory;
        this.b = str;
    }
}
