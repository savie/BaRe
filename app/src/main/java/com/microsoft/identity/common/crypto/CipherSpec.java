package com.microsoft.identity.common.crypto;

import defpackage.dj7;
import defpackage.fz5;
import defpackage.pe4;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CipherSpec {
    private static final CipherSpec oaepCipherSpec;
    private static final CipherSpec pkcs1CipherSpec;
    private final AlgorithmParameterSpec algorithmParameterSpec;
    private final String mode;
    private final String padding;
    private final String transformation;

    static {
        OAEPParameterSpec oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT);
        pkcs1CipherSpec = new CipherSpec(null, "ECB", "PKCS1Padding");
        oaepCipherSpec = new CipherSpec(oAEPParameterSpec, "NONE", "OAEPwithSHA-256andMGF1Padding");
    }

    public CipherSpec(OAEPParameterSpec oAEPParameterSpec, String str, String str2) {
        this.algorithmParameterSpec = oAEPParameterSpec;
        this.mode = str;
        this.padding = str2;
        this.transformation = "RSA/" + str + '/' + str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CipherSpec)) {
            return false;
        }
        CipherSpec cipherSpec = (CipherSpec) obj;
        return pe4.d(this.algorithmParameterSpec, cipherSpec.algorithmParameterSpec) && this.mode.equals(cipherSpec.mode) && this.padding.equals(cipherSpec.padding);
    }

    public final AlgorithmParameterSpec getAlgorithmParameterSpec() {
        return this.algorithmParameterSpec;
    }

    public final String getPadding() {
        return this.padding;
    }

    public final String getTransformation() {
        return this.transformation;
    }

    public final int hashCode() {
        AlgorithmParameterSpec algorithmParameterSpec = this.algorithmParameterSpec;
        return this.padding.hashCode() + fz5.g((((algorithmParameterSpec == null ? 0 : algorithmParameterSpec.hashCode()) * 31) + 81440) * 31, 31, this.mode);
    }

    public final String toString() {
        return dj7.n(new StringBuilder("CipherSpec(transformation='"), this.transformation, "')");
    }
}
