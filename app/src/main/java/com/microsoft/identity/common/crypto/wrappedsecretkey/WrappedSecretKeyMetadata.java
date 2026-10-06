package com.microsoft.identity.common.crypto.wrappedsecretkey;

import defpackage.eq3;
import defpackage.fz5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class WrappedSecretKeyMetadata {
    private final String algorithm;
    private final String cipherTransformation;
    private final int keyLength;

    public WrappedSecretKeyMetadata(String str, String str2, int i) {
        this.algorithm = str;
        this.cipherTransformation = str2;
        this.keyLength = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WrappedSecretKeyMetadata)) {
            return false;
        }
        WrappedSecretKeyMetadata wrappedSecretKeyMetadata = (WrappedSecretKeyMetadata) obj;
        return this.algorithm.equals(wrappedSecretKeyMetadata.algorithm) && this.cipherTransformation.equals(wrappedSecretKeyMetadata.cipherTransformation) && this.keyLength == wrappedSecretKeyMetadata.keyLength;
    }

    public final String getAlgorithm() {
        return this.algorithm;
    }

    public final String getCipherTransformation() {
        return this.cipherTransformation;
    }

    public final int getKeyLength() {
        return this.keyLength;
    }

    public final int hashCode() {
        return Integer.hashCode(this.keyLength) + fz5.g(this.algorithm.hashCode() * 31, 31, this.cipherTransformation);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WrappedSecretKeyMetadata(algorithm=");
        sb.append(this.algorithm);
        sb.append(", cipherTransformation=");
        sb.append(this.cipherTransformation);
        sb.append(", keyLength=");
        return eq3.m(sb, this.keyLength, ')');
    }
}
