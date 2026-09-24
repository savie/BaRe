package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class AgentProxy {
    public final Buffer a = new Buffer(new byte[1024]);
    public final AgentConnector b;

    public AgentProxy(AgentConnector agentConnector) {
        this.b = agentConnector;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001b  */
    public final synchronized byte[] a(String str, byte[] bArr, byte[] bArr2) {
        int i;
        if (str != null) {
            try {
                if (str.equals("rsa-sha2-256")) {
                    i = 2;
                } else if (str.equals("rsa-sha2-512")) {
                    i = 4;
                } else {
                    i = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            i = 0;
        }
        int length = bArr.length + 17 + bArr2.length;
        this.a.reset();
        this.a.a(length);
        this.a.putInt(length - 4);
        this.a.putByte((byte) 13);
        this.a.putString(bArr, 0, bArr.length);
        this.a.putString(bArr2, 0, bArr2.length);
        this.a.putInt(i);
        try {
            this.b.query(this.a);
        } catch (AgentProxyException unused) {
            Buffer buffer = this.a;
            buffer.d = 0;
            buffer.putByte((byte) 5);
        }
        if (this.a.getByte() != 14) {
            return null;
        }
        return this.a.getString();
    }
}
