package com.jcraft.jsch;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ChannelAgentForwarding extends Channel {
    public final Buffer v;
    public Buffer w = null;
    public Packet x = null;
    public final Buffer y;

    public ChannelAgentForwarding() {
        this.v = null;
        this.y = null;
        this.d = 131072;
        this.e = 131072;
        this.f = 16384;
        this.c = Util.p("auth-agent@openssh.com", StandardCharsets.UTF_8);
        Buffer buffer = new Buffer();
        this.v = buffer;
        buffer.reset();
        this.y = new Buffer();
        this.n = true;
    }

    @Override // com.jcraft.jsch.Channel
    public final void d() throws IOException {
        super.d();
        c();
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x0155 A[SYNTHETIC] */
    @Override // com.jcraft.jsch.Channel
    public final void l(byte[] bArr, int i, int i2) throws IOException {
        byte[] signature;
        Identity identityElementAt;
        String passphrase;
        if (this.x == null) {
            Buffer buffer = new Buffer(this.h);
            this.w = buffer;
            this.x = new Packet(buffer);
        }
        this.v.reset();
        Buffer buffer2 = this.v;
        byte[] bArr2 = buffer2.b;
        if (bArr2.length < buffer2.c + i2) {
            byte[] bArr3 = new byte[buffer2.d + i2];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            this.v.b = bArr3;
        }
        this.v.putByte(bArr, i, i2);
        int i3 = this.v.getInt();
        int length = this.v.getLength();
        Buffer buffer3 = this.v;
        if (i3 > length) {
            buffer3.d -= 4;
            return;
        }
        int i4 = buffer3.getByte();
        try {
            Session session = getSession();
            IdentityRepository identityRepository = session.X;
            if (identityRepository == null) {
                identityRepository = session.k0.getIdentityRepository();
            }
            UserInfo userInfo = session.T;
            this.y.reset();
            if (i4 == 11) {
                this.y.putByte((byte) 12);
                Vector<Identity> identities = identityRepository.getIdentities();
                synchronized (identities) {
                    int i5 = 0;
                    for (int i6 = 0; i6 < identities.size(); i6++) {
                        try {
                            if (identities.elementAt(i6).getPublicKeyBlob() != null) {
                                i5++;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    this.y.putInt(i5);
                    for (int i7 = 0; i7 < identities.size(); i7++) {
                        byte[] publicKeyBlob = identities.elementAt(i7).getPublicKeyBlob();
                        if (publicKeyBlob != null) {
                            Buffer buffer4 = this.y;
                            buffer4.getClass();
                            buffer4.putString(publicKeyBlob, 0, publicKeyBlob.length);
                            this.y.putString(Util.c);
                        }
                    }
                }
            } else if (i4 == 1) {
                this.y.putByte((byte) 2);
                this.y.putInt(0);
            } else if (i4 == 13) {
                byte[] string = this.v.getString();
                byte[] string2 = this.v.getString();
                int i8 = this.v.getInt();
                Vector<Identity> identities2 = identityRepository.getIdentities();
                synchronized (identities2) {
                    int i9 = 0;
                    while (true) {
                        signature = null;
                        if (i9 >= identities2.size()) {
                            identityElementAt = null;
                            break;
                        }
                        identityElementAt = identities2.elementAt(i9);
                        if (identityElementAt.getPublicKeyBlob() != null && Util.a(string, identityElementAt.getPublicKeyBlob())) {
                            if (!identityElementAt.isEncrypted()) {
                                if (!identityElementAt.isEncrypted()) {
                                    break;
                                }
                            } else if (userInfo != null) {
                                while (identityElementAt.isEncrypted()) {
                                    if (!userInfo.promptPassphrase("Passphrase for " + identityElementAt.getName()) || (passphrase = userInfo.getPassphrase()) == null) {
                                        break;
                                        break;
                                    } else {
                                        try {
                                            if (identityElementAt.setPassphrase(passphrase.getBytes(StandardCharsets.UTF_8))) {
                                                break;
                                            }
                                        } catch (JSchException unused) {
                                        }
                                    }
                                }
                                if (!identityElementAt.isEncrypted()) {
                                    break;
                                    break;
                                }
                            }
                        }
                        i9++;
                    }
                }
                if (identityElementAt != null) {
                    byte[] string3 = new Buffer(string).getString();
                    if (!new String(string3, 0, string3.length, StandardCharsets.UTF_8).equals("ssh-rsa")) {
                        signature = identityElementAt.getSignature(string2);
                    } else if ((i8 & 2) != 0) {
                        signature = identityElementAt.getSignature(string2, "rsa-sha2-256");
                    } else {
                        signature = (i8 & 4) != 0 ? identityElementAt.getSignature(string2, "rsa-sha2-512") : identityElementAt.getSignature(string2, "ssh-rsa");
                    }
                }
                Buffer buffer5 = this.y;
                if (signature == null) {
                    buffer5.putByte((byte) 30);
                } else {
                    buffer5.putByte((byte) 14);
                    Buffer buffer6 = this.y;
                    buffer6.getClass();
                    buffer6.putString(signature, 0, signature.length);
                }
            } else if (i4 == 18) {
                identityRepository.remove(this.v.getString());
                this.y.putByte((byte) 6);
            } else if (i4 == 9) {
                this.y.putByte((byte) 6);
            } else if (i4 == 19) {
                identityRepository.removeAll();
                this.y.putByte((byte) 6);
            } else {
                Buffer buffer7 = this.v;
                if (i4 == 17) {
                    int length2 = buffer7.getLength();
                    byte[] bArr4 = new byte[length2];
                    Buffer buffer8 = this.v;
                    buffer8.getClass();
                    buffer8.c(bArr4, 0, length2);
                    this.y.putByte(identityRepository.add(bArr4) ? (byte) 6 : (byte) 5);
                } else {
                    buffer7.h(buffer7.getLength() - 1);
                    this.y.putByte((byte) 5);
                }
            }
            int length3 = this.y.getLength();
            byte[] bArr5 = new byte[length3];
            Buffer buffer9 = this.y;
            buffer9.getClass();
            buffer9.c(bArr5, 0, length3);
            this.x.a();
            this.w.putByte((byte) 94);
            this.w.putInt(this.b);
            int i10 = length3 + 4;
            this.w.putInt(i10);
            Buffer buffer10 = this.w;
            buffer10.getClass();
            buffer10.putString(bArr5, 0, length3);
            try {
                getSession().A(this.x, this, i10);
            } catch (Exception unused2) {
            }
        } catch (JSchException e) {
            throw new IOException(e.toString(), e);
        }
    }

    @Override // com.jcraft.jsch.Channel
    public final void run() {
        try {
            i();
        } catch (Exception unused) {
            this.m = true;
            disconnect();
        }
    }
}
