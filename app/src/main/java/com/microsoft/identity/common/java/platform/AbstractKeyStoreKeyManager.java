package com.microsoft.identity.common.java.platform;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.jwk.RSAKey;
import defpackage.f6;
import java.nio.charset.Charset;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.KeyStore.Entry;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.interfaces.RSAPublicKey;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractKeyStoreKeyManager<K extends KeyStore.Entry> {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    public static final /* synthetic */ int a = 0;
    private final String mKeyAlias;
    protected final KeyStore mKeyStore;

    public AbstractKeyStoreKeyManager(String str, KeyStore keyStore) throws KeyStoreException {
        if (keyStore == null) {
            f6.n("keyStore is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("keyAlias is marked non-null but is null");
            throw null;
        }
        this.mKeyAlias = str;
        this.mKeyStore = keyStore;
    }

    public static KeyPair getKeyPairForEntry(KeyStore.PrivateKeyEntry privateKeyEntry) {
        if (privateKeyEntry != null) {
            return new KeyPair(privateKeyEntry.getCertificate().getPublicKey(), privateKeyEntry.getPrivateKey());
        }
        f6.n("entry is marked non-null but is null");
        return null;
    }

    public static RSAKey getRsaKeyForKeyPair(KeyPair keyPair) {
        if (keyPair.getPublic() instanceof RSAPublicKey) {
            return new RSAKey.Builder((RSAPublicKey) keyPair.getPublic()).keyUse(null).build();
        }
        throw new UnsupportedOperationException("Cannot get RSAKey for key of type: " + keyPair.getPublic().getClass().getCanonicalName());
    }

    public static String getRsaThumbprint(KeyStore.PrivateKeyEntry privateKeyEntry) throws JOSEException {
        RSAKey rsaKeyForKeyPair = getRsaKeyForKeyPair(getKeyPairForEntry(privateKeyEntry));
        if (rsaKeyForKeyPair != null) {
            return rsaKeyForKeyPair.computeThumbprint().toString();
        }
        f6.n("rsaKey is marked non-null but is null");
        return null;
    }

    public static byte[] getSecretKeyThumbprint(KeyStore.SecretKeyEntry secretKeyEntry) {
        try {
            SecretKey secretKey = secretKeyEntry.getSecretKey();
            Cipher cipher = Cipher.getInstance(secretKey.getAlgorithm());
            return MessageDigest.getInstance("SHA256").digest(cipher.doFinal((secretKey.getAlgorithm() + cipher.getBlockSize() + cipher.getParameters()).getBytes(UTF8)));
        } catch (NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            Logger.error("KeyAccessor:newInstance", null, "Exception while getting key entry", e);
            return null;
        }
    }

    public final boolean clear() {
        try {
            this.mKeyStore.deleteEntry(this.mKeyAlias);
            return true;
        } catch (KeyStoreException e) {
            Logger.error("AbstractKeyStoreKeyManager", "Error while clearing KeyStore", e);
            return false;
        }
    }

    public final boolean exists() {
        try {
            return this.mKeyStore.containsAlias(this.mKeyAlias);
        } catch (KeyStoreException e) {
            Logger.error("AbstractKeyStoreKeyManager", "Error while querying KeyStore", e);
            return false;
        }
    }

    public final K getEntry() throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableEntryException {
        return (K) this.mKeyStore.getEntry(this.mKeyAlias, null);
    }

    public final String getKeyAlias() {
        return this.mKeyAlias;
    }

    public final byte[] getThumbprint() throws ClientException {
        String str;
        try {
            KeyStore.Entry entry = getEntry();
            if (entry instanceof KeyStore.PrivateKeyEntry) {
                return getRsaThumbprint((KeyStore.PrivateKeyEntry) entry).getBytes(UTF8);
            }
            if (entry instanceof KeyStore.SecretKeyEntry) {
                return getSecretKeyThumbprint((KeyStore.SecretKeyEntry) entry);
            }
            throw new UnsupportedOperationException("Get thumbprint currently not supported for key of type: " + entry.getClass().getCanonicalName());
        } catch (JOSEException e) {
            e = e;
            str = "failed_to_compute_thumbprint_with_sha256";
            throw new ClientException(str, e.getMessage(), e);
        } catch (KeyStoreException e2) {
            e = e2;
            str = "keystore_not_initialized";
            throw new ClientException(str, e.getMessage(), e);
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str = "no_such_algorithm";
            throw new ClientException(str, e.getMessage(), e);
        } catch (UnrecoverableEntryException e4) {
            e = e4;
            str = "protection_params_invalid";
            throw new ClientException(str, e.getMessage(), e);
        }
    }
}
