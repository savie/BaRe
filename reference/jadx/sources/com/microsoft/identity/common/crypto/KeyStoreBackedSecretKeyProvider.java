package com.microsoft.identity.common.crypto;

import android.content.Context;
import android.security.keystore.KeyInfo;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.crypto.wrappedsecretkey.WrappedSecretKey;
import com.microsoft.identity.common.internal.util.AndroidKeyStoreUtil;
import com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider;
import com.microsoft.identity.common.java.crypto.key.KeyUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.bn6;
import defpackage.el1;
import defpackage.en6;
import defpackage.fl1;
import defpackage.k55;
import defpackage.nq7;
import defpackage.q;
import defpackage.qj7;
import defpackage.v57;
import defpackage.xs1;
import java.io.File;
import java.io.Serializable;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class KeyStoreBackedSecretKeyProvider implements ISecretKeyProvider {
    private static final ConcurrentHashMap sKeyCacheMap = new ConcurrentHashMap();
    private final CryptoParameterSpecFactory cryptoParameterSpecFactory;
    private final File keyFile;

    public KeyStoreBackedSecretKeyProvider(Context context) {
        context.getClass();
        this.cryptoParameterSpecFactory = new CryptoParameterSpecFactory(context);
        this.keyFile = new File(context.getDir(context.getPackageName(), 0), "adalks");
    }

    /* JADX INFO: renamed from: attemptKeyGeneration-IoAF18A, reason: not valid java name */
    private static Serializable m63attemptKeyGenerationIoAF18A(IKeyGenSpec iKeyGenSpec) {
        try {
            System.nanoTime();
            KeyPair keyPairGenerateKeyPair = AndroidKeyStoreUtil.generateKeyPair(iKeyGenSpec.getAlgorithm(), iKeyGenSpec.getAlgorithmParameterSpec());
            System.nanoTime();
            SpanExtension.current().getClass();
            return keyPairGenerateKeyPair;
        } catch (Throwable th) {
            return new bn6(th);
        }
    }

    private final SecretKey deserializeAndUnwrapSecretKey(byte[] bArr, KeyPair keyPair) {
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("SecretKeyRetrieval", SpanExtension.current().getSpanContext()));
        try {
            try {
                WrappedSecretKey wrappedSecretKeyDeserialize = PropertyBagUtil.deserialize(bArr);
                SpanExtension.current().getClass();
                SecretKey secretKeyUnwrapSecretKey = unwrapSecretKey(wrappedSecretKeyDeserialize, keyPair);
                k55.d(v57VarMakeCurrentSpan, null);
                return secretKeyUnwrapSecretKey;
            } catch (Exception e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("KeyStoreBackedSecretKeyProvider:deserializeAndUnwrapSecretKey", "Failed to deserialize and unwrap secret key", e);
                throw e;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    k55.d(v57VarMakeCurrentSpan, th2);
                    throw th3;
                }
            }
        }
    }

    private final KeyPair generateKeyPair() throws ClientException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList<IKeyGenSpec> prioritizedKeyGenParameterSpecs = this.cryptoParameterSpecFactory.getPrioritizedKeyGenParameterSpecs();
        if (prioritizedKeyGenParameterSpecs.isEmpty()) {
            q.i("unknown_crypto_error", "No key generation specifications available for generating key pair.", null);
            return null;
        }
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("KeyPairGeneration", SpanExtension.current().getSpanContext()));
        try {
            try {
                int i = 0;
                for (IKeyGenSpec iKeyGenSpec : prioritizedKeyGenParameterSpecs) {
                    i++;
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.verbose("KeyStoreBackedSecretKeyProvider:generateKeyPair", "Attempting key generation with spec " + i + ": " + iKeyGenSpec);
                    Serializable serializableM63attemptKeyGenerationIoAF18A = m63attemptKeyGenerationIoAF18A(iKeyGenSpec);
                    if (!(serializableM63attemptKeyGenerationIoAF18A instanceof bn6)) {
                        KeyPair keyPair = (KeyPair) serializableM63attemptKeyGenerationIoAF18A;
                        recordKeyPairGenSuccess(iKeyGenSpec, linkedHashMap);
                        com.microsoft.identity.common.java.logging.Logger.info("KeyStoreBackedSecretKeyProvider:generateKeyPair", "Key pair generated successfully with spec: " + iKeyGenSpec);
                        k55.d(v57VarMakeCurrentSpan, null);
                        return keyPair;
                    }
                    Throwable thA = en6.a(serializableM63attemptKeyGenerationIoAF18A);
                    if (thA != null) {
                        com.microsoft.identity.common.java.logging.Logger.warn("KeyStoreBackedSecretKeyProvider:generateKeyPair", "Failed to generate key pair with spec: " + iKeyGenSpec + ", error: " + thA.getMessage());
                        linkedHashMap.put(iKeyGenSpec, thA);
                    }
                }
                handleAllFailures(linkedHashMap);
                throw null;
            } catch (ClientException e) {
                throw e;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    k55.d(v57VarMakeCurrentSpan, th2);
                    throw th3;
                }
            }
        }
    }

    private final ArrayList getKeyPairCompatibleCipherSpecs(KeyPair keyPair) throws ClientException {
        Collection<String> collection;
        int i = AndroidKeyStoreUtil.a;
        synchronized (AndroidKeyStoreUtil.class) {
            try {
                try {
                    PrivateKey privateKey = keyPair.getPrivate();
                    KeyInfo keyInfo = (KeyInfo) KeyFactory.getInstance(privateKey.getAlgorithm(), "AndroidKeyStore").getKeySpec(privateKey, KeyInfo.class);
                    ArrayList arrayList = new ArrayList();
                    for (String str : keyInfo.getEncryptionPaddings()) {
                        arrayList.add(str.replace("Padding", ""));
                    }
                    com.microsoft.identity.common.java.logging.Logger.info("AndroidKeyStoreUtil:getKeyPairEncryptionPaddings", "Supported encryption paddings: " + arrayList);
                    collection = arrayList;
                } catch (Exception e) {
                    com.microsoft.identity.common.java.logging.Logger.warn("AndroidKeyStoreUtil:getKeyPairEncryptionPaddings", "Failed to retrieve key padding information: " + e.getMessage());
                    collection = Collections.EMPTY_LIST;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.cryptoParameterSpecFactory.getClass();
        List listA0 = fl1.A0(CipherSpec.oaepCipherSpec, CipherSpec.pkcs1CipherSpec);
        String strL = xs1.l("Ciphers: ", listA0);
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CryptoParameterSpecFactory:getPrioritizedCipherParameterSpecs", strL);
        com.microsoft.identity.common.java.logging.Logger.verbose("KeyStoreBackedSecretKeyProvider:selectCompatibleCipherSpecs", "Supported paddings by the keyPair: " + collection + ",Specs available in order of priority: " + listA0);
        qj7 qj7VarCurrent = SpanExtension.current();
        collection.toString();
        qj7VarCurrent.getClass();
        el1.Y0(listA0, ",", null, null, KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1.INSTANCE, 30);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listA0) {
            CipherSpec cipherSpec = (CipherSpec) obj;
            if (!collection.isEmpty()) {
                for (String str2 : collection) {
                    String padding = cipherSpec.getPadding();
                    str2.getClass();
                    if (nq7.Z(padding, str2, true)) {
                        arrayList2.add(obj);
                        break;
                    }
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            qj7 qj7VarCurrent2 = SpanExtension.current();
            ((CipherSpec) el1.S0(arrayList2)).getClass();
            qj7VarCurrent2.getClass();
        }
        com.microsoft.identity.common.java.logging.Logger.verbose("KeyStoreBackedSecretKeyProvider:selectCompatibleCipherSpecs", "Found " + arrayList2.size() + " compatible cipher specs: " + arrayList2);
        return arrayList2;
    }

    private static void handleAllFailures(LinkedHashMap linkedHashMap) throws ClientException {
        if (linkedHashMap.isEmpty()) {
            throw new IllegalArgumentException("No failures encountered, but no key pair generated. This should not happen.");
        }
        ClientException clientException = new ClientException("unknown_crypto_error", "All key generation attempts failed. Total failures: " + linkedHashMap.size(), (Throwable) el1.Z0(linkedHashMap.values()));
        String message = clientException.getMessage();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error("KeyStoreBackedSecretKeyProvider:handleAllFailures", message, clientException);
        throw clientException;
    }

    private final byte[] readRawWrappedSecretKeyFromFile() throws ClientException {
        File file = this.keyFile;
        if (!file.exists()) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("KeyStoreBackedSecretKeyProvider:readRawWrappedSecretKeyFromFile", "Key file does not exist");
            return null;
        }
        byte[] fromFile = FileUtil.readFromFile(file);
        if (fromFile != null && fromFile.length != 0) {
            return fromFile;
        }
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("KeyStoreBackedSecretKeyProvider:readRawWrappedSecretKeyFromFile", "Key file is empty");
        return null;
    }

    private static void recordKeyPairGenSuccess(IKeyGenSpec iKeyGenSpec, LinkedHashMap linkedHashMap) {
        qj7 qj7VarCurrent = SpanExtension.current();
        iKeyGenSpec.getClass();
        qj7VarCurrent.getClass();
        iKeyGenSpec.getEncryptionPaddings().toString();
        if (linkedHashMap.isEmpty()) {
            return;
        }
        el1.Y0(linkedHashMap.entrySet(), ";", null, null, KeyStoreBackedSecretKeyProvider$formatFailureHistory$1.INSTANCE, 30);
    }

    private final SecretKey unwrapSecretKey(WrappedSecretKey wrappedSecretKey, KeyPair keyPair) throws ClientException {
        Object next;
        Iterator it = getKeyPairCompatibleCipherSpecs(keyPair).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!nq7.Z(((CipherSpec) next).getTransformation(), wrappedSecretKey.getCipherTransformation(), true));
        CipherSpec cipherSpec = (CipherSpec) next;
        if (cipherSpec == null) {
            throw new ClientException("unknown_crypto_error", "No compatible cipher specs found for key pair: " + keyPair, null);
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("KeyStoreBackedSecretKeyProvider:unwrapSecretKey", "Unwrapping secret key with cipher spec: " + cipherSpec);
        SecretKey secretKeyUnwrap = AndroidKeyStoreUtil.unwrap(wrappedSecretKey.getWrappedKeyData(), wrappedSecretKey.getAlgorithm(), keyPair, cipherSpec.getTransformation(), cipherSpec.getAlgorithmParameterSpec());
        secretKeyUnwrap.getClass();
        return secretKeyUnwrap;
    }

    private final WrappedSecretKey wrapSecretKey(SecretKey secretKey, KeyPair keyPair) throws ClientException {
        CipherSpec cipherSpec = (CipherSpec) el1.U0(getKeyPairCompatibleCipherSpecs(keyPair));
        if (cipherSpec == null) {
            throw new ClientException("unknown_crypto_error", "No compatible cipher specs found for key pair: " + keyPair, null);
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("KeyStoreBackedSecretKeyProvider:wrapSecretKey", "Wrapping secret key with cipher spec: " + cipherSpec);
        byte[] bArrWrap = AndroidKeyStoreUtil.wrap(secretKey, keyPair, cipherSpec.getTransformation(), cipherSpec.getAlgorithmParameterSpec());
        bArrWrap.getClass();
        String algorithm = secretKey.getAlgorithm();
        algorithm.getClass();
        return new WrappedSecretKey(algorithm, cipherSpec.getTransformation(), bArrWrap);
    }

    public final SecretKey generateNewSecretKey() throws Exception {
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("SecretKeyGeneration", SpanExtension.current().getSpanContext()));
            try {
                try {
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                    keyGenerator.init(256, new SecureRandom());
                    SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
                    secretKeyGenerateKey.getClass();
                    KeyPair key = AndroidKeyStoreUtil.readKey();
                    if (key == null) {
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("KeyStoreBackedSecretKeyProvider:generateNewSecretKey", "No existing keypair found. Generating a new one.");
                        key = generateKeyPair();
                    }
                    WrappedSecretKey wrappedSecretKeyWrapSecretKey = wrapSecretKey(secretKeyGenerateKey, key);
                    SpanExtension.current().getClass();
                    FileUtil.writeDataToFile(this.keyFile, wrappedSecretKeyWrapSecretKey.serialize());
                    k55.d(v57VarMakeCurrentSpan, null);
                    return secretKeyGenerateKey;
                } catch (NoSuchAlgorithmException e) {
                    ClientException clientException = new ClientException("no_such_algorithm", e.getMessage(), e);
                    com.microsoft.identity.common.java.logging.Logger.error("AES256SecretKeyGenerator:generateRandomKey", clientException.getErrorCode(), e);
                    throw clientException;
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(v57VarMakeCurrentSpan, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("KeyStoreBackedSecretKeyProvider:generateNewSecretKey", "Failed to wrap secret key", e2);
            throw e2;
        }
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final String getAlias() {
        return "AdalKey";
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final synchronized SecretKey getKey() throws ClientException {
        ConcurrentHashMap concurrentHashMap = sKeyCacheMap;
        int i = AndroidWrappedKeyProvider.a;
        if (!AndroidKeyStoreUtil.canLoadKey() || !this.keyFile.exists()) {
            concurrentHashMap.remove("adalks");
        }
        SecretKey secretKey = (SecretKey) concurrentHashMap.get("adalks");
        if (secretKey != null) {
            return secretKey;
        }
        SecretKey secretKeyFromStorage = readSecretKeyFromStorage();
        if (secretKeyFromStorage != null) {
            concurrentHashMap.put("adalks", secretKeyFromStorage);
            String strConcat = "Key loaded from storage and cached with thumbprint: ".concat(KeyUtil.getKeyThumbPrint(secretKeyFromStorage));
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("KeyStoreBackedSecretKeyProvider:getKey", strConcat);
            return secretKeyFromStorage;
        }
        SecretKey secretKeyGenerateNewSecretKey = generateNewSecretKey();
        concurrentHashMap.put("adalks", secretKeyGenerateNewSecretKey);
        String strConcat2 = "New key is generated and cached with thumbprint: ".concat(KeyUtil.getKeyThumbPrint(secretKeyGenerateNewSecretKey));
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("KeyStoreBackedSecretKeyProvider:getKey", strConcat2);
        return secretKeyGenerateNewSecretKey;
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
                com.microsoft.identity.common.java.logging.Logger.info("KeyStoreBackedSecretKeyProvider:readSecretKeyFromStorage", "key does not exist in keystore");
                AndroidKeyStoreUtil.deleteKey();
                FileUtil.deleteFile(this.keyFile);
                sKeyCacheMap.remove("adalks");
                return null;
            }
            byte[] rawWrappedSecretKeyFromFile = readRawWrappedSecretKeyFromFile();
            if (rawWrappedSecretKeyFromFile != null) {
                return deserializeAndUnwrapSecretKey(rawWrappedSecretKeyFromFile, key);
            }
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("KeyStoreBackedSecretKeyProvider:readSecretKeyFromStorage", "Key file is empty");
            FileUtil.deleteFile(this.keyFile);
            sKeyCacheMap.remove("adalks");
            return null;
        } catch (ClientException e) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("KeyStoreBackedSecretKeyProvider:readSecretKeyFromStorage", "Error when loading key from Storage, wipe all existing key data ");
            AndroidKeyStoreUtil.deleteKey();
            FileUtil.deleteFile(this.keyFile);
            sKeyCacheMap.remove("adalks");
            throw e;
        }
    }
}
