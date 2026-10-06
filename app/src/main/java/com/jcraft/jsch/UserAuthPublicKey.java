package com.jcraft.jsch;

import defpackage.e6;
import defpackage.fz5;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class UserAuthPublicKey extends UserAuth {
    public static boolean b(String str, List list, Identity identity, Session session) {
        if (!list.contains(OpenSshCertificateKeyTypes.a(str)) || (identity instanceof AgentIdentity)) {
            return false;
        }
        if (!session.getLogger().isEnabled(0)) {
            return true;
        }
        Logger logger = session.getLogger();
        StringBuilder sbN = fz5.n(str, " not available for identity ");
        sbN.append(identity.getName());
        logger.log(0, sbN.toString());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x013f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0143  */
    /* JADX WARN: Code duplicated, block: B:72:0x014b  */
    /* JADX WARN: Code duplicated, block: B:74:0x014f  */
    /* JADX WARN: Code duplicated, block: B:77:0x015d  */
    /* JADX WARN: Code duplicated, block: B:80:0x016a A[LOOP:8: B:78:0x0167->B:80:0x016a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x0177  */
    public final boolean a(Session session, Vector vector, List list, List list2) throws Exception {
        int i;
        JSch jSch;
        byte[] bytes;
        byte[] bArr;
        IdentityRepository identityRepository;
        IdentityRepository identityRepository2;
        IdentityRepositoryWrapper identityRepositoryWrapper;
        Vector vector2;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        int i3;
        byte[] bArr2;
        ArrayList arrayList7;
        List list3 = list2;
        JSch jSch2 = session.k0;
        if (session.e0 < session.d0) {
            boolean zEquals = session.getConfig("enable_pubkey_auth_query").equals("yes");
            boolean zEquals2 = session.getConfig("try_additional_pubkey_algorithms").equals("yes");
            ArrayList arrayList8 = new ArrayList();
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.equals("ssh-rsa") || str.equals("rsa-sha2-256") || str.equals("rsa-sha2-512") || str.equals("ssh-rsa-sha224@ssh.com") || str.equals("ssh-rsa-sha256@ssh.com") || str.equals("ssh-rsa-sha384@ssh.com") || str.equals("ssh-rsa-sha512@ssh.com")) {
                    arrayList8.add(str);
                } else if (str.equals("ssh-rsa-cert-v01@openssh.com") || str.equals("rsa-sha2-256-cert-v01@openssh.com") || str.equals("rsa-sha2-512-cert-v01@openssh.com")) {
                    arrayList9.add(str);
                } else {
                    arrayList10.add(str);
                }
            }
            byte[] bArrP = Util.p(this.d, StandardCharsets.UTF_8);
            Iterator it2 = vector.iterator();
            loop1: while (it2.hasNext()) {
                Identity identity = (Identity) it2.next();
                byte b = 0;
                if (session.e0 >= session.d0) {
                    return false;
                }
                int i4 = 5;
                while (true) {
                    i = 5;
                    if (identity.isEncrypted()) {
                        jSch = jSch2;
                        if (this.a == null) {
                            e6.h("USERAUTH fail");
                            return false;
                        }
                        if (identity.isEncrypted()) {
                            if (!this.a.promptPassphrase("Passphrase for " + identity.getName())) {
                                throw new JSchAuthCancelException("publickey");
                            }
                        }
                        String passphrase = this.a.getPassphrase();
                        if (passphrase != null) {
                            byte[] bArr3 = Util.a;
                            bytes = passphrase.getBytes(StandardCharsets.UTF_8);
                        }
                        if ((!identity.isEncrypted() || bytes != null) && identity.setPassphrase(bytes)) {
                            if (bytes != null) {
                                identityRepository = session.X;
                                if (identityRepository == null) {
                                    identityRepository = jSch.getIdentityRepository();
                                }
                                if (identityRepository instanceof IdentityRepositoryWrapper) {
                                    identityRepository2 = session.X;
                                    if (identityRepository2 == null) {
                                        identityRepository2 = jSch.getIdentityRepository();
                                    }
                                    identityRepositoryWrapper = (IdentityRepositoryWrapper) identityRepository2;
                                    vector2 = identityRepositoryWrapper.b;
                                    if (vector2.size() > 0) {
                                        for (Object obj : vector2.toArray()) {
                                            Identity identity2 = (Identity) obj;
                                            vector2.removeElement(identity2);
                                            identityRepositoryWrapper.a(identity2);
                                        }
                                    }
                                }
                            }
                            bArr = bytes;
                            break;
                        }
                        it2 = it2;
                        Util.e(bytes);
                        i4--;
                        if (i4 == 0) {
                            bArr = null;
                            break;
                        }
                        list3 = list2;
                        jSch2 = jSch;
                        zEquals = zEquals;
                        zEquals2 = zEquals2;
                        it2 = it2;
                    } else {
                        jSch = jSch2;
                        zEquals = zEquals;
                        zEquals2 = zEquals2;
                    }
                    bytes = null;
                    if (!identity.isEncrypted()) {
                        if (bytes != null) {
                            identityRepository = session.X;
                            if (identityRepository == null) {
                                identityRepository = jSch.getIdentityRepository();
                            }
                            if (identityRepository instanceof IdentityRepositoryWrapper) {
                                identityRepository2 = session.X;
                                if (identityRepository2 == null) {
                                    identityRepository2 = jSch.getIdentityRepository();
                                }
                                identityRepositoryWrapper = (IdentityRepositoryWrapper) identityRepository2;
                                vector2 = identityRepositoryWrapper.b;
                                if (vector2.size() > 0) {
                                    while (i2 < r15.length) {
                                        Identity identity3 = (Identity) obj;
                                        vector2.removeElement(identity3);
                                        identityRepositoryWrapper.a(identity3);
                                    }
                                }
                            }
                        }
                        bArr = bytes;
                        break;
                    }
                    if (bytes != null) {
                        identityRepository = session.X;
                        if (identityRepository == null) {
                            identityRepository = jSch.getIdentityRepository();
                        }
                        if (identityRepository instanceof IdentityRepositoryWrapper) {
                            identityRepository2 = session.X;
                            if (identityRepository2 == null) {
                                identityRepository2 = jSch.getIdentityRepository();
                            }
                            identityRepositoryWrapper = (IdentityRepositoryWrapper) identityRepository2;
                            vector2 = identityRepositoryWrapper.b;
                            if (vector2.size() > 0) {
                                while (i2 < r15.length) {
                                    Identity identity4 = (Identity) obj;
                                    vector2.removeElement(identity4);
                                    identityRepositoryWrapper.a(identity4);
                                }
                            }
                        }
                    }
                    bArr = bytes;
                    break;
                }
                Util.e(bArr);
                String algName = identity.getAlgName();
                if (algName.equals("ssh-rsa")) {
                    arrayList = new ArrayList(arrayList8);
                } else if (algName.equals("ssh-rsa-cert-v01@openssh.com")) {
                    arrayList = new ArrayList(arrayList9);
                } else if (arrayList10.contains(algName)) {
                    arrayList = new ArrayList(1);
                    arrayList.add(algName);
                } else {
                    arrayList = null;
                }
                if (arrayList == null || arrayList.isEmpty()) {
                    arrayList2 = arrayList8;
                    arrayList3 = arrayList9;
                    arrayList4 = arrayList10;
                    if (session.getLogger().isEnabled(0)) {
                        Logger logger = session.getLogger();
                        StringBuilder sbN = fz5.n(algName, " cannot be used as public key type for identity ");
                        sbN.append(identity.getName());
                        logger.log(0, sbN.toString());
                    }
                } else {
                    while (true) {
                        if (!arrayList.isEmpty() && session.e0 < session.d0) {
                            byte[] publicKeyBlob = identity.getPublicKeyBlob();
                            if (publicKeyBlob != null && zEquals) {
                                Iterator it3 = arrayList.iterator();
                                int i5 = 51;
                                while (true) {
                                    if (!it3.hasNext()) {
                                        publicKeyBlob = publicKeyBlob;
                                        arrayList5 = arrayList;
                                        arrayList2 = arrayList8;
                                        arrayList3 = arrayList9;
                                        arrayList6 = null;
                                        i3 = i5;
                                        break;
                                    }
                                    String str2 = (String) it3.next();
                                    it3.remove();
                                    if (!b(str2, list3, identity, session)) {
                                        arrayList5 = arrayList;
                                        this.b.a();
                                        arrayList2 = arrayList8;
                                        this.c.putByte((byte) 50);
                                        this.c.putString(bArrP);
                                        Buffer buffer = this.c;
                                        Charset charset = StandardCharsets.UTF_8;
                                        arrayList3 = arrayList9;
                                        buffer.putString("ssh-connection".getBytes(charset));
                                        this.c.putString("publickey".getBytes(charset));
                                        byte b2 = b;
                                        this.c.putByte(b2);
                                        this.c.putString(Util.p(str2, charset));
                                        Buffer buffer2 = this.c;
                                        buffer2.getClass();
                                        buffer2.putString(publicKeyBlob, b2, publicKeyBlob.length);
                                        session.z(this.b);
                                        while (true) {
                                            Buffer buffer3 = this.c;
                                            session.p(buffer3);
                                            this.c = buffer3;
                                            i3 = buffer3.b[i] & 255;
                                            if (i3 == 60) {
                                                if (session.getLogger().isEnabled(0)) {
                                                    session.getLogger().log(0, str2 + " preauth success");
                                                }
                                                arrayList6 = new ArrayList(1);
                                                arrayList6.add(str2);
                                                break;
                                            }
                                            bArr2 = publicKeyBlob;
                                            if (i3 == 51) {
                                                if (session.getLogger().isEnabled(0)) {
                                                    session.getLogger().log(0, str2 + " preauth failure");
                                                }
                                                arrayList7 = arrayList10;
                                                break;
                                            }
                                            if (i3 != 53) {
                                                arrayList7 = arrayList10;
                                                if (!session.getLogger().isEnabled(0)) {
                                                    break;
                                                }
                                                session.getLogger().log(0, str2 + " preauth failure command (" + i3 + ")");
                                                break;
                                            }
                                            buffer3.getInt();
                                            this.c.getByte();
                                            this.c.getByte();
                                            byte[] string = this.c.getString();
                                            this.c.getString();
                                            ArrayList arrayList11 = arrayList10;
                                            String str3 = new String(string, 0, string.length, StandardCharsets.UTF_8);
                                            UserInfo userInfo = this.a;
                                            if (userInfo != null) {
                                                userInfo.showMessage(str3);
                                            }
                                            publicKeyBlob = bArr2;
                                            arrayList10 = arrayList11;
                                        }
                                        i5 = i3;
                                        arrayList = arrayList5;
                                        arrayList8 = arrayList2;
                                        arrayList9 = arrayList3;
                                        publicKeyBlob = bArr2;
                                        arrayList10 = arrayList7;
                                        b = 0;
                                    }
                                }
                                arrayList4 = arrayList10;
                                if (i3 == 60) {
                                    break;
                                }
                                break;
                            }
                            publicKeyBlob = publicKeyBlob;
                            arrayList5 = arrayList;
                            arrayList2 = arrayList8;
                            arrayList3 = arrayList9;
                            arrayList4 = arrayList10;
                            arrayList6 = null;
                            if (identity.isEncrypted()) {
                                break;
                            }
                            byte[] publicKeyBlob2 = publicKeyBlob == null ? identity.getPublicKeyBlob() : publicKeyBlob;
                            if (publicKeyBlob2 == null) {
                                break;
                            }
                            if (arrayList6 == null) {
                                arrayList6 = arrayList5;
                            }
                            if (arrayList6.isEmpty()) {
                                break;
                            }
                            Iterator it4 = arrayList6.iterator();
                            while (true) {
                                if (it4.hasNext() && session.e0 < session.d0) {
                                    String str4 = (String) it4.next();
                                    it4.remove();
                                    if (!b(str4, list3, identity, session)) {
                                        this.b.a();
                                        this.c.putByte((byte) 50);
                                        this.c.putString(bArrP);
                                        Buffer buffer4 = this.c;
                                        Charset charset2 = StandardCharsets.UTF_8;
                                        buffer4.putString("ssh-connection".getBytes(charset2));
                                        this.c.putString("publickey".getBytes(charset2));
                                        this.c.putByte((byte) 1);
                                        this.c.putString(Util.p(str4, charset2));
                                        Buffer buffer5 = this.c;
                                        buffer5.getClass();
                                        buffer5.putString(publicKeyBlob2, 0, publicKeyBlob2.length);
                                        byte[] bArr4 = session.e;
                                        int length = bArr4.length;
                                        int i6 = length + 4;
                                        byte[] bArr5 = new byte[(this.c.c + i6) - 5];
                                        Iterator it5 = it4;
                                        bArr5[0] = (byte) (length >>> 24);
                                        bArr5[1] = (byte) (length >>> 16);
                                        bArr5[2] = (byte) (length >>> 8);
                                        bArr5[3] = (byte) length;
                                        byte[] bArr6 = publicKeyBlob2;
                                        System.arraycopy(bArr4, 0, bArr5, 4, length);
                                        Buffer buffer6 = this.c;
                                        System.arraycopy(buffer6.b, i, bArr5, i6, buffer6.c - 5);
                                        byte[] signature = identity.getSignature(bArr5, str4);
                                        if (signature != null) {
                                            Buffer buffer7 = this.c;
                                            buffer7.getClass();
                                            buffer7.putString(signature, 0, signature.length);
                                            session.z(this.b);
                                            while (true) {
                                                Buffer buffer8 = this.c;
                                                session.p(buffer8);
                                                this.c = buffer8;
                                                int i7 = buffer8.b[5] & 255;
                                                if (i7 == 52) {
                                                    if (!session.getLogger().isEnabled(0)) {
                                                        return true;
                                                    }
                                                    session.getLogger().log(0, str4 + " auth success");
                                                    return true;
                                                }
                                                if (i7 != 53) {
                                                    if (i7 == 51) {
                                                        buffer8.getInt();
                                                        this.c.getByte();
                                                        this.c.getByte();
                                                        byte[] string2 = this.c.getString();
                                                        if (this.c.getByte() != 0) {
                                                            throw new JSchPartialAuthException(new String(string2, 0, string2.length, StandardCharsets.UTF_8));
                                                        }
                                                        session.e0++;
                                                        if (session.getLogger().isEnabled(0)) {
                                                            session.getLogger().log(0, str4 + " auth failure");
                                                        }
                                                        if (session.e0 >= session.d0) {
                                                            break loop1;
                                                        }
                                                        if (!zEquals2) {
                                                            break;
                                                        }
                                                    } else if (session.getLogger().isEnabled(0)) {
                                                        session.getLogger().log(0, str4 + " auth failure command (" + i7 + ")");
                                                    }
                                                    list3 = list2;
                                                    i = 5;
                                                    it4 = it5;
                                                    publicKeyBlob2 = bArr6;
                                                    break;
                                                }
                                                buffer8.getInt();
                                                this.c.getByte();
                                                this.c.getByte();
                                                byte[] string3 = this.c.getString();
                                                this.c.getString();
                                                String str5 = new String(string3, 0, string3.length, StandardCharsets.UTF_8);
                                                UserInfo userInfo2 = this.a;
                                                if (userInfo2 != null) {
                                                    userInfo2.showMessage(str5);
                                                }
                                            }
                                        } else {
                                            if (session.getLogger().isEnabled(0)) {
                                                session.getLogger().log(0, str4 + " signature failure");
                                            }
                                            list3 = list2;
                                            it4 = it5;
                                            publicKeyBlob2 = bArr6;
                                            i = 5;
                                        }
                                    }
                                } else {
                                    list3 = list2;
                                    i = i;
                                    arrayList = arrayList5;
                                    arrayList8 = arrayList2;
                                    arrayList9 = arrayList3;
                                    arrayList10 = arrayList4;
                                    b = 0;
                                }
                            }
                        } else {
                            arrayList2 = arrayList8;
                            arrayList3 = arrayList9;
                            arrayList4 = arrayList10;
                        }
                    }
                    jSch2 = jSch;
                    zEquals = zEquals;
                    zEquals2 = zEquals2;
                    it2 = it2;
                    arrayList8 = arrayList2;
                    arrayList9 = arrayList3;
                    arrayList10 = arrayList4;
                }
                list3 = list2;
                jSch2 = jSch;
                zEquals = zEquals;
                zEquals2 = zEquals2;
                it2 = it2;
                arrayList8 = arrayList2;
                arrayList9 = arrayList3;
                arrayList10 = arrayList4;
            }
        }
        return false;
    }

    @Override // com.jcraft.jsch.UserAuth
    public final boolean start(Session session) throws Exception {
        int i;
        super.start(session);
        IdentityRepository identityRepository = session.X;
        if (identityRepository == null) {
            identityRepository = session.k0.getIdentityRepository();
        }
        Vector identities = identityRepository.getIdentities();
        synchronized (identities) {
            try {
                if (identities.size() <= 0) {
                    return false;
                }
                String config = session.getConfig("PubkeyAcceptedAlgorithms");
                if (session.getLogger().isEnabled(0)) {
                    session.getLogger().log(0, "PubkeyAcceptedAlgorithms = " + config);
                }
                String[] strArr = session.s0;
                List listAsList = (strArr == null || strArr.length <= 0) ? Collections.EMPTY_LIST : Arrays.asList(strArr);
                if (!listAsList.isEmpty() && session.getLogger().isEnabled(0)) {
                    session.getLogger().log(0, "Signature algorithms unavailable for non-agent identities = " + listAsList);
                }
                List<String> listAsList2 = Arrays.asList(Util.o(config));
                if (listAsList2.isEmpty()) {
                    return false;
                }
                String[] strArr2 = session.Z;
                if (strArr2 != null && strArr2.length > 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (String str : listAsList2) {
                        int length = strArr2.length;
                        while (true) {
                            if (i >= length) {
                                arrayList2.add(str);
                                break;
                            }
                            String str2 = strArr2[i];
                            String strA = OpenSshCertificateKeyTypes.a(str);
                            i = (!str.equals(str2) && (strA == null || !strA.equals(str2))) ? i + 1 : 0;
                            arrayList.add(str);
                            break;
                        }
                    }
                    if (!arrayList.isEmpty() && session.getLogger().isEnabled(0)) {
                        session.getLogger().log(0, "PubkeyAcceptedAlgorithms in server-sig-algs = " + arrayList);
                    }
                    if (!arrayList2.isEmpty() && session.getLogger().isEnabled(0)) {
                        session.getLogger().log(0, "PubkeyAcceptedAlgorithms not in server-sig-algs = " + arrayList2);
                    }
                    if (!arrayList.isEmpty() && !arrayList2.isEmpty()) {
                        if (a(session, identities, arrayList, listAsList)) {
                            return true;
                        }
                        return a(session, identities, arrayList2, listAsList);
                    }
                } else if (session.getLogger().isEnabled(0)) {
                    session.getLogger().log(0, "No server-sig-algs found, using PubkeyAcceptedAlgorithms = " + listAsList2);
                }
                return a(session, identities, listAsList2, listAsList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
