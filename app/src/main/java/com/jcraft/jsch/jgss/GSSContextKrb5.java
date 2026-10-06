package com.jcraft.jsch.jgss;

import com.jcraft.jsch.GSSContext;
import com.jcraft.jsch.JSchException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.ietf.jgss.GSSCredential;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.MessageProp;
import org.ietf.jgss.Oid;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GSSContextKrb5 implements GSSContext {
    public static final String b;
    public org.ietf.jgss.GSSContext a = null;

    static {
        String property;
        try {
            property = System.getProperty("javax.security.auth.useSubjectCredsOnly");
        } catch (Exception unused) {
            property = null;
        }
        b = property;
    }

    @Override // com.jcraft.jsch.GSSContext
    public final void create(String str, String str2) throws JSchException {
        try {
            Oid oid = new Oid("1.2.840.113554.1.2.2");
            Oid oid2 = GSSName.NT_HOSTBASED_SERVICE;
            GSSManager gSSManager = GSSManager.getInstance();
            try {
                str2 = InetAddress.getByName(str2).getCanonicalHostName();
            } catch (UnknownHostException unused) {
            }
            org.ietf.jgss.GSSContext gSSContextCreateContext = gSSManager.createContext(gSSManager.createName("host@" + str2, oid2), oid, (GSSCredential) null, 0);
            this.a = gSSContextCreateContext;
            gSSContextCreateContext.requestMutualAuth(true);
            this.a.requestConf(true);
            this.a.requestInteg(true);
            this.a.requestCredDeleg(true);
            this.a.requestAnonymity(false);
        } catch (GSSException e) {
            throw new JSchException(e.toString(), e);
        }
    }

    @Override // com.jcraft.jsch.GSSContext
    public final void dispose() {
        try {
            this.a.dispose();
        } catch (GSSException unused) {
        }
    }

    @Override // com.jcraft.jsch.GSSContext
    public final byte[] getMIC(byte[] bArr, int i, int i2) {
        try {
            return this.a.getMIC(bArr, i, i2, new MessageProp(0, true));
        } catch (GSSException unused) {
            return null;
        }
    }

    @Override // com.jcraft.jsch.GSSContext
    public final byte[] init(byte[] bArr, int i, int i2) throws JSchException {
        String str = b;
        if (str == null) {
            try {
                try {
                    try {
                        System.setProperty("javax.security.auth.useSubjectCredsOnly", "false");
                    } catch (GSSException e) {
                        throw new JSchException(e.toString(), e);
                    }
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                if (str == null) {
                    try {
                        System.setProperty("javax.security.auth.useSubjectCredsOnly", "true");
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        }
        try {
            byte[] bArrInitSecContext = this.a.initSecContext(bArr, 0, i2);
            if (str == null) {
                try {
                    System.setProperty("javax.security.auth.useSubjectCredsOnly", "true");
                } catch (Exception unused3) {
                }
            }
            return bArrInitSecContext;
        } catch (SecurityException e2) {
            throw new JSchException(e2.toString(), e2);
        }
    }

    @Override // com.jcraft.jsch.GSSContext
    public final boolean isEstablished() {
        return this.a.isEstablished();
    }
}
