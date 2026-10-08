package com.jcraft.jsch;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class AgentIdentity implements Identity {
    public final AgentProxy a;
    public final byte[] b;
    public final String c;
    public final String d;

    public AgentIdentity(AgentProxy agentProxy, byte[] bArr, String str) {
        this.a = agentProxy;
        this.b = bArr;
        this.c = str;
        byte[] string = new Buffer(bArr).getString();
        byte[] bArr2 = Util.a;
        this.d = new String(string, 0, string.length, StandardCharsets.UTF_8);
    }

    @Override // com.jcraft.jsch.Identity
    public final String getAlgName() {
        return this.d;
    }

    @Override // com.jcraft.jsch.Identity
    public final String getName() {
        return this.c;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getPublicKeyBlob() {
        return this.b;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr) {
        return this.a.a(null, this.b, bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean isEncrypted() {
        return false;
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean setPassphrase(byte[] bArr) throws JSchException {
        return true;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr, String str) {
        return this.a.a(str, this.b, bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public final void clear() {
    }
}
