package com.jcraft.jsch;

import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class LocalIdentityRepository implements IdentityRepository {
    public final Vector a = new Vector();
    public final JSch.InstanceLogger b;

    public LocalIdentityRepository(JSch.InstanceLogger instanceLogger) {
        this.b = instanceLogger;
    }

    public final void a() {
        Vector vector = new Vector();
        Vector vector2 = this.a;
        int size = vector2.size();
        if (size == 0) {
            return;
        }
        for (int i = 0; i < size; i++) {
            Identity identity = (Identity) vector2.elementAt(i);
            byte[] publicKeyBlob = identity.getPublicKeyBlob();
            if (publicKeyBlob != null) {
                for (int i2 = i + 1; i2 < size; i2++) {
                    Identity identity2 = (Identity) vector2.elementAt(i2);
                    byte[] publicKeyBlob2 = identity2.getPublicKeyBlob();
                    if (publicKeyBlob2 != null && Util.a(publicKeyBlob, publicKeyBlob2) && identity.isEncrypted() == identity2.isEncrypted()) {
                        vector.addElement(publicKeyBlob);
                        break;
                    }
                }
            }
        }
        for (int i3 = 0; i3 < vector.size(); i3++) {
            remove((byte[]) vector.elementAt(i3));
        }
    }

    public final synchronized void add(Identity identity) {
        if (!this.a.contains(identity)) {
            byte[] publicKeyBlob = identity.getPublicKeyBlob();
            if (publicKeyBlob != null) {
                int i = 0;
                while (true) {
                    int size = this.a.size();
                    Vector vector = this.a;
                    if (i >= size) {
                        vector.addElement(identity);
                        break;
                    }
                    byte[] publicKeyBlob2 = ((Identity) vector.elementAt(i)).getPublicKeyBlob();
                    if (publicKeyBlob2 != null && Util.a(publicKeyBlob, publicKeyBlob2)) {
                        if (identity.isEncrypted() || !((Identity) this.a.elementAt(i)).isEncrypted()) {
                            return;
                        } else {
                            remove(publicKeyBlob2);
                        }
                    }
                    i++;
                }
            } else {
                this.a.addElement(identity);
            }
        }
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final synchronized Vector<Identity> getIdentities() {
        Vector<Identity> vector;
        a();
        vector = new Vector<>();
        for (int i = 0; i < this.a.size(); i++) {
            vector.addElement((Identity) this.a.elementAt(i));
        }
        return vector;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final String getName() {
        return "Local Identity Repository";
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final int getStatus() {
        return 2;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final synchronized boolean remove(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (int i = 0; i < this.a.size(); i++) {
            Identity identity = (Identity) this.a.elementAt(i);
            byte[] publicKeyBlob = identity.getPublicKeyBlob();
            if (publicKeyBlob != null && Util.a(bArr, publicKeyBlob)) {
                this.a.removeElement(identity);
                identity.clear();
                return true;
            }
        }
        return false;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final synchronized void removeAll() {
        int i = 0;
        while (true) {
            try {
                int size = this.a.size();
                Vector vector = this.a;
                if (i < size) {
                    ((Identity) vector.elementAt(i)).clear();
                    i++;
                } else {
                    vector.removeAllElements();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final synchronized boolean add(byte[] bArr) {
        try {
            add(IdentityFile.b("from remote:", bArr, null, this.b));
        } catch (JSchException unused) {
            return false;
        }
        return true;
    }
}
