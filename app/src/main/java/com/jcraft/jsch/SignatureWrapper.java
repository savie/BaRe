package com.jcraft.jsch;

import defpackage.eq3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class SignatureWrapper implements Signature {
    public final Signature a;
    public final PubKeySetter b;
    public final PubKeyParameterValidator c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @FunctionalInterface
    public interface PubKeyParameterValidator {
        void validatePublicKeyParameter(byte[]... bArr) throws Exception;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @FunctionalInterface
    public interface PubKeySetter {
        void setPubKey(byte[]... bArr) throws Exception;
    }

    public SignatureWrapper(String str, Session session) throws JSchException {
        try {
            Signature signature = (Signature) Class.forName(session.getConfig(str)).asSubclass(Signature.class).getDeclaredConstructor(null).newInstance(null);
            this.a = signature;
            if (signature instanceof SignatureRSA) {
                this.c = new n();
                this.b = new PubKeySetter() { // from class: com.jcraft.jsch.o
                    @Override // com.jcraft.jsch.SignatureWrapper.PubKeySetter
                    public final void setPubKey(byte[][] bArr) throws Exception {
                        ((SignatureRSA) this.a.a).setPubKey(bArr[0], bArr[1]);
                    }
                };
                return;
            }
            if (signature instanceof SignatureDSA) {
                this.c = new n();
                this.b = new PubKeySetter() { // from class: com.jcraft.jsch.p
                    @Override // com.jcraft.jsch.SignatureWrapper.PubKeySetter
                    public final void setPubKey(byte[][] bArr) throws Exception {
                        ((SignatureDSA) this.a.a).setPubKey(bArr[0], bArr[1], bArr[2], bArr[3]);
                    }
                };
            } else if (signature instanceof SignatureECDSA) {
                this.c = new n();
                this.b = new PubKeySetter() { // from class: com.jcraft.jsch.q
                    @Override // com.jcraft.jsch.SignatureWrapper.PubKeySetter
                    public final void setPubKey(byte[][] bArr) throws Exception {
                        ((SignatureECDSA) this.a.a).setPubKey(bArr[0], bArr[1]);
                    }
                };
            } else {
                if (!(signature instanceof SignatureEdDSA)) {
                    throw new JSchException("Unrecognized signature algorithm: ".concat(str));
                }
                this.c = new n();
                this.b = new PubKeySetter() { // from class: com.jcraft.jsch.r
                    @Override // com.jcraft.jsch.SignatureWrapper.PubKeySetter
                    public final void setPubKey(byte[][] bArr) throws Exception {
                        ((SignatureEdDSA) this.a.a).setPubKey(bArr[0]);
                    }
                };
            }
        } catch (Exception | LinkageError e) {
            throw new JSchException(eq3.k("Failed to instantiate signature for algorithm '", str, "'"), e);
        }
    }

    @Override // com.jcraft.jsch.Signature
    public final void init() throws Exception {
        this.a.init();
    }

    @Override // com.jcraft.jsch.Signature
    public final byte[] sign() throws Exception {
        return this.a.sign();
    }

    @Override // com.jcraft.jsch.Signature
    public final void update(byte[] bArr) throws Exception {
        this.a.update(bArr);
    }

    @Override // com.jcraft.jsch.Signature
    public final boolean verify(byte[] bArr) throws Exception {
        return this.a.verify(bArr);
    }
}
