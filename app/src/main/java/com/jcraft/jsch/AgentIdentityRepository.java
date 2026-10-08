package com.jcraft.jsch;

import java.nio.charset.StandardCharsets;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AgentIdentityRepository implements IdentityRepository {
    public final AgentProxy a;

    public AgentIdentityRepository(AgentConnector agentConnector) {
        this.a = new AgentProxy(agentConnector);
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final boolean add(byte[] bArr) {
        boolean z;
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            int length = bArr.length;
            agentProxy.a.reset();
            agentProxy.a.a(length + 5);
            agentProxy.a.putInt(length + 1);
            agentProxy.a.putByte((byte) 17);
            agentProxy.a.putByte(bArr, 0, bArr.length);
            try {
                agentProxy.b.query(agentProxy.a);
            } catch (AgentProxyException unused) {
                Buffer buffer = agentProxy.a;
                buffer.d = 0;
                buffer.putByte((byte) 5);
            }
            z = agentProxy.a.getByte() == 6;
        }
        return z;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final Vector<Identity> getIdentities() {
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            Vector<Identity> vector = new Vector<>();
            agentProxy.a.reset();
            agentProxy.a.a(5);
            agentProxy.a.putInt(1);
            agentProxy.a.putByte((byte) 11);
            try {
                agentProxy.b.query(agentProxy.a);
                if (agentProxy.a.getByte() != 12) {
                    return vector;
                }
                int i = agentProxy.a.getInt();
                if (i > 0 && i <= 2048) {
                    for (int i2 = 0; i2 < i; i2++) {
                        byte[] string = agentProxy.a.getString();
                        byte[] string2 = agentProxy.a.getString();
                        byte[] bArr = Util.a;
                        vector.add(new AgentIdentity(agentProxy, string, new String(string2, 0, string2.length, StandardCharsets.UTF_8)));
                    }
                    return vector;
                }
                return vector;
            } catch (AgentProxyException unused) {
                Buffer buffer = agentProxy.a;
                buffer.d = 0;
                buffer.putByte((byte) 5);
                return vector;
            }
        }
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final String getName() {
        AgentConnector agentConnector;
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            agentConnector = agentProxy.b;
        }
        return agentConnector.getName();
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final int getStatus() {
        AgentConnector agentConnector;
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            agentConnector = agentProxy.b;
        }
        return agentConnector.isAvailable() ? 2 : 1;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final boolean remove(byte[] bArr) {
        boolean z;
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            int length = bArr.length;
            agentProxy.a.reset();
            agentProxy.a.a(length + 9);
            agentProxy.a.putInt(length + 5);
            agentProxy.a.putByte((byte) 18);
            agentProxy.a.putString(bArr, 0, bArr.length);
            try {
                agentProxy.b.query(agentProxy.a);
            } catch (AgentProxyException unused) {
                Buffer buffer = agentProxy.a;
                buffer.d = 0;
                buffer.putByte((byte) 5);
            }
            z = agentProxy.a.getByte() == 6;
        }
        return z;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final void removeAll() {
        AgentProxy agentProxy = this.a;
        synchronized (agentProxy) {
            try {
                agentProxy.a.reset();
                agentProxy.a.a(5);
                agentProxy.a.putInt(1);
                agentProxy.a.putByte((byte) 19);
                try {
                    agentProxy.b.query(agentProxy.a);
                } catch (AgentProxyException unused) {
                    Buffer buffer = agentProxy.a;
                    buffer.d = 0;
                    buffer.putByte((byte) 5);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
