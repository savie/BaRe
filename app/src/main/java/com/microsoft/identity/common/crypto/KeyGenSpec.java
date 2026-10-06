package com.microsoft.identity.common.crypto;

import android.security.keystore.KeyGenParameterSpec;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.eq3;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class KeyGenSpec implements IKeyGenSpec {
    private final KeyGenParameterSpec algorithmParameterSpec;
    private final String description;
    private final List<String> digestAlgorithms;
    private final ArrayList encryptionPaddings;
    private final int purposes;

    public KeyGenSpec(int i, List list, String str, ArrayList arrayList) {
        this.purposes = i;
        this.digestAlgorithms = list;
        this.description = str;
        this.encryptionPaddings = arrayList;
        KeyGenParameterSpec.Builder keySize = new KeyGenParameterSpec.Builder("AdalKey", i).setKeySize(RSAKeyGenerator.MIN_KEY_SIZE_BITS);
        String[] strArr = (String[]) list.toArray(new String[0]);
        KeyGenParameterSpec.Builder digests = keySize.setDigests((String[]) Arrays.copyOf(strArr, strArr.length));
        String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
        KeyGenParameterSpec keyGenParameterSpecBuild = digests.setEncryptionPaddings((String[]) Arrays.copyOf(strArr2, strArr2.length)).build();
        keyGenParameterSpecBuild.getClass();
        this.algorithmParameterSpec = keyGenParameterSpecBuild;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyGenSpec)) {
            return false;
        }
        KeyGenSpec keyGenSpec = (KeyGenSpec) obj;
        return this.purposes == keyGenSpec.purposes && this.digestAlgorithms.equals(keyGenSpec.digestAlgorithms) && this.description.equals(keyGenSpec.description) && this.encryptionPaddings.equals(keyGenSpec.encryptionPaddings);
    }

    @Override // com.microsoft.identity.common.crypto.IKeyGenSpec
    public final String getAlgorithm() {
        return "RSA";
    }

    @Override // com.microsoft.identity.common.crypto.IKeyGenSpec
    public final AlgorithmParameterSpec getAlgorithmParameterSpec() {
        return this.algorithmParameterSpec;
    }

    @Override // com.microsoft.identity.common.crypto.IKeyGenSpec
    public final String getDescription() {
        return this.description;
    }

    @Override // com.microsoft.identity.common.crypto.IKeyGenSpec
    public final List<String> getEncryptionPaddings() {
        return this.encryptionPaddings;
    }

    public final int hashCode() {
        return this.encryptionPaddings.hashCode() + ((((this.description.hashCode() + eq3.d(RSAKeyGenerator.MIN_KEY_SIZE_BITS, (((this.digestAlgorithms.hashCode() + (Integer.hashCode(this.purposes) * 31)) * 31) + 513986513) * 31, 31)) * 31) + 81440) * 31);
    }

    public final String toString() {
        return LibraryInfoHelper.print(this);
    }
}
