package com.jcraft.jsch;

import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class IdentityRepositoryWrapper implements IdentityRepository {
    public final IdentityRepository a;
    public final Vector b;
    public final boolean c;

    public IdentityRepositoryWrapper(IdentityRepository identityRepository, boolean z) {
        this.b = new Vector();
        this.a = identityRepository;
        this.c = z;
    }

    public final void a(Identity identity) {
        if (this.c || identity.isEncrypted() || !(identity instanceof IdentityFile)) {
            this.b.addElement(identity);
        } else {
            try {
                this.a.add(((IdentityFile) identity).a.forSSHAgent());
            } catch (JSchException unused) {
            }
        }
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final boolean add(byte[] bArr) {
        return this.a.add(bArr);
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final Vector<Identity> getIdentities() {
        Vector<Identity> vector = new Vector<>();
        int i = 0;
        while (true) {
            Vector vector2 = this.b;
            if (i >= vector2.size()) {
                break;
            }
            vector.add((Identity) vector2.elementAt(i));
            i++;
        }
        Vector<Identity> identities = this.a.getIdentities();
        for (int i2 = 0; i2 < identities.size(); i2++) {
            vector.add(identities.elementAt(i2));
        }
        return vector;
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final String getName() {
        return this.a.getName();
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final int getStatus() {
        return this.a.getStatus();
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final boolean remove(byte[] bArr) {
        return this.a.remove(bArr);
    }

    @Override // com.jcraft.jsch.IdentityRepository
    public final void removeAll() {
        this.b.removeAllElements();
        this.a.removeAll();
    }

    public IdentityRepositoryWrapper(IdentityRepository identityRepository) {
        this(identityRepository, false);
    }
}
