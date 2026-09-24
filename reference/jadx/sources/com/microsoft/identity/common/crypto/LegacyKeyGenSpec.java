package com.microsoft.identity.common.crypto;

import android.content.Context;
import android.security.KeyPairGeneratorSpec;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.pe4;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LegacyKeyGenSpec implements IKeyGenSpec {
    private final KeyPairGeneratorSpec algorithmParameterSpec;
    private final Context context;
    private final List<String> encryptionPaddings;

    public LegacyKeyGenSpec(Context context, List list) {
        context.getClass();
        this.context = context;
        this.encryptionPaddings = list;
        String str = String.format(Locale.ROOT, "CN=%s, OU=%s", Arrays.copyOf(new Object[]{"AdalKey", context.getPackageName()}, 2));
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(1, 100);
        KeyPairGeneratorSpec keyPairGeneratorSpecBuild = new KeyPairGeneratorSpec.Builder(context).setAlias("AdalKey").setSubject(new X500Principal(str)).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
        keyPairGeneratorSpecBuild.getClass();
        this.algorithmParameterSpec = keyPairGeneratorSpecBuild;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegacyKeyGenSpec)) {
            return false;
        }
        LegacyKeyGenSpec legacyKeyGenSpec = (LegacyKeyGenSpec) obj;
        return pe4.d(this.context, legacyKeyGenSpec.context) && this.encryptionPaddings.equals(legacyKeyGenSpec.encryptionPaddings);
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
        return "legacy_key_gen_spec";
    }

    @Override // com.microsoft.identity.common.crypto.IKeyGenSpec
    public final List<String> getEncryptionPaddings() {
        return this.encryptionPaddings;
    }

    public final int hashCode() {
        return this.encryptionPaddings.hashCode() + ((((((Integer.hashCode(RSAKeyGenerator.MIN_KEY_SIZE_BITS) + (((this.context.hashCode() * 31) + 513986513) * 31)) * 31) + 528819680) * 31) + 81440) * 31);
    }

    public final String toString() {
        return LibraryInfoHelper.print(this);
    }
}
