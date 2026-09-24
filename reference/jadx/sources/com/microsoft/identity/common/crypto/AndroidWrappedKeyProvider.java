package com.microsoft.identity.common.crypto;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.util.AndroidKeyStoreUtil;
import com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider;
import com.microsoft.identity.common.java.crypto.key.KeyUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.f6;
import defpackage.qj7;
import defpackage.v57;
import defpackage.xs1;
import java.io.File;
import java.math.BigInteger;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidWrappedKeyProvider implements ISecretKeyProvider {
    public static final /* synthetic */ int a = 0;
    private static final ConcurrentHashMap sKeyCacheMap = new ConcurrentHashMap();
    private final Context mContext;

    public AndroidWrappedKeyProvider(Context context) {
        if (context != null) {
            this.mContext = context;
        } else {
            f6.n("context is marked non-null but is null");
            throw null;
        }
    }

    private static KeyPair attemptKeyPairGeneration(AlgorithmParameterSpec algorithmParameterSpec) throws ClientException {
        if (algorithmParameterSpec == null) {
            f6.n("keyPairGenSpec is marked non-null but is null");
            return null;
        }
        System.currentTimeMillis();
        KeyPair keyPairGenerateKeyPair = AndroidKeyStoreUtil.generateKeyPair("RSA", algorithmParameterSpec);
        System.currentTimeMillis();
        SpanExtension.current().getClass();
        return keyPairGenerateKeyPair;
    }

    private KeyPair generateKeyPairWithLegacySpec() throws ClientException {
        qj7 qj7VarCurrent = SpanExtension.current();
        try {
            KeyPair keyPairAttemptKeyPairGeneration = attemptKeyPairGeneration(getLegacySpecForKeyStoreKey());
            qj7VarCurrent.getClass();
            return keyPairAttemptKeyPairGeneration;
        } catch (Throwable th) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AndroidWrappedKeyProvider#:generateKeyPairWithLegacySpec", "Error generating keypair with legacy spec.", th);
            throw PropertyBagUtil.clientExceptionFromException(th);
        }
    }

    private KeyPair generateNewKeyPair() throws ClientException {
        if (Build.VERSION.SDK_INT < 28) {
            return CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY) ? generateWrappingKeyPair() : generateKeyPairWithLegacySpec();
        }
        if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY)) {
            return CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY) ? generateWrappingKeyPair() : generateKeyPairWithLegacySpec();
        }
        qj7 qj7VarCurrent = SpanExtension.current();
        try {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:generateWrappingKeyPair_WithPurposeWrapKey", "Generating new keypair with new spec with purpose_wrap_key");
            KeyPair keyPairAttemptKeyPairGeneration = attemptKeyPairGeneration(getSpecForWrappingKey(35));
            qj7VarCurrent.getClass();
            return keyPairAttemptKeyPairGeneration;
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AndroidWrappedKeyProvider#:generateWrappingKeyPair_WithPurposeWrapKey", "Error generating keypair with new spec with purpose_wrap_key.Attempting without purpose_wrap_key.", th);
            if (!StringUtil.isNullOrEmpty(th.getMessage())) {
                th.getMessage();
                qj7VarCurrent.getClass();
            }
            return generateWrappingKeyPair();
        }
    }

    private KeyPair generateWrappingKeyPair() throws ClientException {
        qj7 qj7VarCurrent = SpanExtension.current();
        try {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:generateWrappingKeyPair", "Generating new keypair with new spec without wrap key");
            KeyPair keyPairAttemptKeyPairGeneration = attemptKeyPairGeneration(getSpecForWrappingKey(3));
            qj7VarCurrent.getClass();
            return keyPairAttemptKeyPairGeneration;
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AndroidWrappedKeyProvider#:generateWrappingKeyPair", "Error generating keypair with new spec.Attempting with legacy spec.", th);
            if (!StringUtil.isNullOrEmpty(th.getMessage())) {
                th.getMessage();
                qj7VarCurrent.getClass();
            }
            return generateKeyPairWithLegacySpec();
        }
    }

    private File getKeyFile() {
        Context context = this.mContext;
        return new File(context.getDir(context.getPackageName(), 0), "adalks");
    }

    private KeyPairGeneratorSpec getLegacySpecForKeyStoreKey() {
        Locale locale = Locale.ROOT;
        Context context = this.mContext;
        String strJ = xs1.j("CN=AdalKey, OU=", context.getPackageName());
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(1, 100);
        return new KeyPairGeneratorSpec.Builder(context).setAlias("AdalKey").setSubject(new X500Principal(strJ)).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
    }

    private KeyGenParameterSpec getSpecForWrappingKey(int i) {
        return new KeyGenParameterSpec.Builder("AdalKey", i).setKeySize(RSAKeyGenerator.MIN_KEY_SIZE_BITS).setDigests("SHA-256", "SHA-512").setEncryptionPaddings("PKCS1Padding").build();
    }

    public final SecretKey generateRandomKey() throws Exception {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256, new SecureRandom());
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            secretKeyGenerateKey.getClass();
            KeyPair key = AndroidKeyStoreUtil.readKey();
            if (key == null) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:saveSecretKeyToStorage", "No existing keypair. Generating a new one.");
                v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("KeyPairGeneration", SpanExtension.current().getSpanContext()));
                try {
                    KeyPair keyPairGenerateNewKeyPair = generateNewKeyPair();
                    v57VarMakeCurrentSpan.close();
                    key = keyPairGenerateNewKeyPair;
                } catch (Throwable th) {
                    try {
                        v57VarMakeCurrentSpan.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            FileUtil.writeDataToFile(getKeyFile(), AndroidKeyStoreUtil.wrap(secretKeyGenerateKey, key, "RSA/ECB/PKCS1Padding", null));
            String strConcat = "New key is generated with thumbprint: ".concat(KeyUtil.getKeyThumbPrint(secretKeyGenerateKey));
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:generateRandomKey", strConcat);
            return secretKeyGenerateKey;
        } catch (NoSuchAlgorithmException e) {
            ClientException clientException = new ClientException("no_such_algorithm", e.getMessage(), e);
            com.microsoft.identity.common.java.logging.Logger.error("AES256SecretKeyGenerator:generateRandomKey", clientException.getErrorCode(), e);
            throw clientException;
        }
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final String getAlias() {
        return "AdalKey";
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final synchronized SecretKey getKey() throws ClientException {
        try {
            ConcurrentHashMap concurrentHashMap = sKeyCacheMap;
            if (!AndroidKeyStoreUtil.canLoadKey() || !getKeyFile().exists()) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AndroidWrappedKeyProvider#:getKeyFromCache", "Key is invalid, removing from cache");
                concurrentHashMap.remove("adalks");
            }
            SecretKey secretKey = (SecretKey) concurrentHashMap.get("adalks");
            if (secretKey != null) {
                return secretKey;
            }
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:getKey", "Key not in cache or cache is empty, loading key from storage");
            SecretKey secretKeyFromStorage = readSecretKeyFromStorage();
            if (secretKeyFromStorage == null) {
                com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:getKey", "Key does not exist in storage, generating a new key");
                secretKeyFromStorage = generateRandomKey();
            }
            concurrentHashMap.put("adalks", secretKeyFromStorage);
            return secretKeyFromStorage;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final String getKeyTypeIdentifier() {
        return "A001";
    }

    public final synchronized SecretKey readSecretKeyFromStorage() throws ClientException {
        try {
            KeyPair key = AndroidKeyStoreUtil.readKey();
            if (key == null) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:readSecretKeyFromStorage", "key does not exist in keystore");
                AndroidKeyStoreUtil.deleteKey();
                FileUtil.deleteFile(getKeyFile());
                sKeyCacheMap.remove("adalks");
                return null;
            }
            byte[] fromFile = FileUtil.readFromFile(getKeyFile());
            if (fromFile == null) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AndroidWrappedKeyProvider#:readSecretKeyFromStorage", "Key file is empty");
                FileUtil.deleteFile(getKeyFile());
                sKeyCacheMap.remove("adalks");
                return null;
            }
            SecretKey secretKeyUnwrap = AndroidKeyStoreUtil.unwrap(fromFile, "AES", key, "RSA/ECB/PKCS1Padding", null);
            String strConcat = "Key is loaded with thumbprint: ".concat(KeyUtil.getKeyThumbPrint(secretKeyUnwrap));
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidWrappedKeyProvider#:readSecretKeyFromStorage", strConcat);
            return secretKeyUnwrap;
        } catch (ClientException e) {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AndroidWrappedKeyProvider#:readSecretKeyFromStorage", "Error when loading key from Storage, wipe all existing key data ");
            AndroidKeyStoreUtil.deleteKey();
            FileUtil.deleteFile(getKeyFile());
            sKeyCacheMap.remove("adalks");
            throw e;
        }
    }
}
