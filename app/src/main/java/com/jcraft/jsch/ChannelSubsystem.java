package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChannelSubsystem extends ChannelSession {
    public boolean G = true;
    public String H = "";

    @Override // com.jcraft.jsch.Channel
    public final void g() {
        this.i.a = getSession().M;
        this.i.b = getSession().N;
    }

    public final InputStream getErrStream() throws IOException {
        return getExtInputStream();
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setAgentForwarding(boolean z) {
        this.v = z;
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setEnv(String str, String str2) {
        super.setEnv(str, str2);
    }

    public final void setErrStream(OutputStream outputStream) {
        setExtOutputStream(outputStream);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setPty(boolean z) {
        this.y = z;
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtySize(int i, int i2, int i3, int i4) {
        super.setPtySize(i, i2, i3, i4);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtyType(String str) {
        super.setPtyType(str);
    }

    public final void setSubsystem(String str) {
        this.H = str;
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final void setTerminalMode(byte[] bArr) {
        this.E = bArr;
    }

    public final void setWantReply(boolean z) {
        this.G = z;
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel
    public final void setXForwarding(boolean z) {
        this.w = z;
    }

    @Override // com.jcraft.jsch.Channel
    public final void start() throws JSchException {
        Session session = getSession();
        try {
            if (this.w) {
                new RequestX11().request(session, this);
            }
            if (this.y) {
                new RequestPtyReq().request(session, this);
            }
            new RequestSubsystem().request(session, this, this.H, this.G);
            if (this.i.a != null) {
                Thread threadNewThread = session.m0.newThread(new Runnable() { // from class: com.jcraft.jsch.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.run();
                    }
                });
                this.j = threadNewThread;
                threadNewThread.setName("Subsystem for " + session.f0);
                boolean z = session.b0;
                if (z) {
                    this.j.setDaemon(z);
                }
                this.j.start();
            }
        } catch (Exception e) {
            if (!(e instanceof JSchException)) {
                throw new JSchException("ChannelSubsystem", e);
            }
            throw ((JSchException) e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession
    @Deprecated
    public final /* bridge */ /* synthetic */ void setEnv(Hashtable hashtable) {
        super.setEnv(hashtable);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setPtyType(String str, int i, int i2, int i3, int i4) {
        super.setPtyType(str, i, i2, i3, i4);
    }

    @Override // com.jcraft.jsch.ChannelSession
    public final /* bridge */ /* synthetic */ void setEnv(byte[] bArr, byte[] bArr2) {
        super.setEnv(bArr, bArr2);
    }
}
