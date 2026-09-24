package com.microsoft.identity.common.internal.util;

import android.os.Build;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.ported.DateUtilities;
import defpackage.ge;
import defpackage.s40;
import defpackage.zh8;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidKeyStoreUtil {
    public static final /* synthetic */ int a = 0;
    private static final ge sFailedAndroidKeyStoreUnwrapOperationCount;

    static {
        PropertyBagUtil.createLongCounter("failed_keystore_key_unwrap_operation_count", "Number of failed Android KeyStore unwrap operations");
        sFailedAndroidKeyStoreUnwrapOperationCount = zh8.d;
    }

    public static synchronized boolean canLoadKey() {
        try {
            return getKeyStore().containsAlias("AdalKey");
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            Logger.error("AndroidKeyStoreUtil:hasKey", "Failed to check keystore key", e);
            return false;
        }
    }

    private static s40 createAttributesBuilderFromInvalidKeyException(InvalidKeyException invalidKeyException) {
        String message;
        int i = Build.VERSION.SDK_INT;
        String strValueOf = "";
        String str = "InvalidKeyException";
        if (i >= 33) {
            android.security.KeyStoreException keyStoreException = null;
            if (i >= 33) {
                Throwable cause = invalidKeyException;
                for (int i2 = 0; cause != null && i2 < 20; i2++) {
                    if (cause instanceof android.security.KeyStoreException) {
                        keyStoreException = (android.security.KeyStoreException) cause;
                        break;
                    }
                    cause = cause.getCause();
                }
            }
            if (keyStoreException != null) {
                message = keyStoreException.getMessage();
                if (message == null) {
                    message = "Keystore exception found, no error message";
                }
                strValueOf = String.valueOf(keyStoreException.getNumericErrorCode());
                str = "KeyStoreException";
            } else {
                message = "No keystore exception found";
            }
        } else {
            message = "API Level below 33, keystore exception not available";
        }
        s40 s40Var = new s40(0);
        s40Var.c("error_type", str);
        s40Var.c("keystore_exception_stack_trace", FileUtil.getStackTraceAsString(invalidKeyException));
        s40Var.c("keystore_exception_message", message);
        s40Var.c("keystore_numeric_error_code", strValueOf);
        return s40Var;
    }

    public static synchronized void deleteKey() throws ClientException {
        String str;
        try {
            getKeyStore().deleteEntry("AdalKey");
        } catch (IOException e) {
            e = e;
            str = "io_error";
            try {
                ClientException clientException = new ClientException(str, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:deleteKeyFromKeyStore", str, e);
                throw clientException;
            } catch (Throwable th) {
                throw th;
            }
        } catch (KeyStoreException e2) {
            e = e2;
            str = "android_keystore_unavailable";
            ClientException clientException2 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:deleteKeyFromKeyStore", str, e);
            throw clientException2;
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str = "no_such_algorithm";
            ClientException clientException3 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:deleteKeyFromKeyStore", str, e);
            throw clientException3;
        } catch (CertificateException e4) {
            e = e4;
            str = "certificate_load_failure";
            ClientException clientException4 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:deleteKeyFromKeyStore", str, e);
            throw clientException4;
        } catch (Throwable th2) {
            e = th2;
            str = "unknown_crypto_error";
            ClientException clientException5 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:deleteKeyFromKeyStore", str, e);
            throw clientException5;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 4, instructions: 4 */
    public static synchronized KeyPair generateKeyPair(String str, AlgorithmParameterSpec algorithmParameterSpec) throws ClientException {
        Locale locale;
        String str2;
        KeyPair keyPairGenerateKeyPair;
        try {
            synchronized (AndroidKeyStoreUtil.class) {
                try {
                    if (str == null) {
                        throw new NullPointerException("algorithm is marked non-null but is null");
                    }
                    if (algorithmParameterSpec == null) {
                        throw new NullPointerException("algorithmSpec is marked non-null but is null");
                    }
                    synchronized ((DateUtilities.isLocaleCalendarNonGregorian(Locale.getDefault()) ? DateUtilities.LOCALE_CHANGE_LOCK : new Object())) {
                        locale = Locale.getDefault();
                        synchronized (AndroidKeyStoreUtil.class) {
                            if (locale == null) {
                                throw new NullPointerException("currentLocale is marked non-null but is null");
                            }
                            throw th;
                        }
                        return keyPairGenerateKeyPair;
                    }
                    return keyPairGenerateKeyPair;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Logger.info("AndroidKeyStoreUtil:generateKeyPair", "Generating KeyPair from KeyStore");
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(str, "AndroidKeyStore");
            keyPairGenerator.initialize(algorithmParameterSpec);
            keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            if (keyPairGenerateKeyPair != null) {
                Locale.setDefault(locale);
                return keyPairGenerateKeyPair;
            }
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", "Failed to generate a keypair. The way we're generating it might be incorrect.", null);
            throw new ClientException("invalid_key", "Failed to generate a keypair", null);
        } catch (IllegalStateException e) {
            e = e;
            str2 = "android_keystore_unavailable";
            Locale.setDefault(locale);
            ClientException clientException = new ClientException(str2, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", str2, e);
            throw clientException;
        } catch (InvalidAlgorithmParameterException e2) {
            e = e2;
            str2 = "invalid_algorithm_parameter";
            Locale.setDefault(locale);
            ClientException clientException2 = new ClientException(str2, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", str2, e);
            throw clientException2;
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str2 = "no_such_algorithm";
            Locale.setDefault(locale);
            ClientException clientException3 = new ClientException(str2, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", str2, e);
            throw clientException3;
        } catch (NoSuchProviderException e4) {
            e = e4;
            str2 = "no_such_provider";
            Locale.setDefault(locale);
            ClientException clientException4 = new ClientException(str2, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", str2, e);
            throw clientException4;
        } catch (Throwable th2) {
            e = th2;
            str2 = "unknown_crypto_error";
            Locale.setDefault(locale);
            ClientException clientException5 = new ClientException(str2, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:generateKeyPair", str2, e);
            throw clientException5;
        }
    }

    private static synchronized KeyStore getKeyStore() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        KeyStore keyStore;
        keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        return keyStore;
    }

    public static synchronized KeyPair readKey() throws ClientException {
        String str;
        try {
            KeyStore keyStore = getKeyStore();
            if (!keyStore.containsAlias("AdalKey")) {
                Logger.verbose("AndroidKeyStoreUtil:readKeyPair", "Alias doesn't exist.");
                return null;
            }
            Key key = keyStore.getKey("AdalKey", null);
            if (key == null) {
                Logger.verbose("AndroidKeyStoreUtil:readKeyPair", "Private key entry doesn't exist.");
                return null;
            }
            Certificate certificate = keyStore.getCertificate("AdalKey");
            if (certificate == null) {
                Logger.verbose("AndroidKeyStoreUtil:readKeyPair", "Public key entry doesn't exist.");
                return null;
            }
            return new KeyPair(certificate.getPublicKey(), (PrivateKey) key);
        } catch (IOException e) {
            e = e;
            str = "io_error";
            try {
                ClientException clientException = new ClientException(str, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
                throw clientException;
            } catch (Throwable th) {
                throw th;
            }
        } catch (RuntimeException e2) {
            e = e2;
            str = "android_keystore_unavailable";
            ClientException clientException2 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException2;
        } catch (KeyStoreException e3) {
            e = e3;
            str = "android_keystore_unavailable";
            ClientException clientException3 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException3;
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            str = "no_such_algorithm";
            ClientException clientException4 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException4;
        } catch (UnrecoverableKeyException e5) {
            e = e5;
            str = "invalid_key_private_key_missing";
            ClientException clientException5 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException5;
        } catch (CertificateException e6) {
            e = e6;
            str = "certificate_load_failure";
            ClientException clientException6 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException6;
        } catch (Throwable th2) {
            e = th2;
            str = "unknown_crypto_error";
            ClientException clientException7 = new ClientException(str, e.getMessage(), e);
            Logger.error("AndroidKeyStoreUtil:readKeyPair", str, e);
            throw clientException7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x004f A[Catch: all -> 0x0035, TryCatch #2 {all -> 0x0035, blocks: (B:31:0x0042, B:33:0x004f, B:34:0x006a, B:35:0x006d, B:36:0x006e, B:37:0x0075, B:38:0x0076, B:39:0x007d), top: B:42:0x0003 }] */
    public static synchronized SecretKey unwrap(byte[] bArr, String str, KeyPair keyPair, String str2, AlgorithmParameterSpec algorithmParameterSpec) throws ClientException {
        String str3;
        Cipher cipher;
        try {
            if (str == null) {
                throw new NullPointerException("wrappedKeyAlgorithm is marked non-null but is null");
            }
            if (str2 == null) {
                throw new NullPointerException("wrapAlgorithm is marked non-null but is null");
            }
            try {
                cipher = Cipher.getInstance(str2);
                if (algorithmParameterSpec != null) {
                    cipher.init(4, keyPair.getPrivate(), algorithmParameterSpec);
                } else {
                    cipher.init(4, keyPair.getPrivate());
                }
            } catch (IllegalArgumentException e) {
                e = e;
                str3 = "android_keystore_unavailable";
                ClientException clientException = new ClientException(str3, e.getMessage(), e);
                if (e instanceof InvalidKeyException) {
                    s40 s40VarCreateAttributesBuilderFromInvalidKeyException = createAttributesBuilderFromInvalidKeyException((InvalidKeyException) e);
                    s40VarCreateAttributesBuilderFromInvalidKeyException.c("keystore_operation", "unwrap");
                    s40VarCreateAttributesBuilderFromInvalidKeyException.c("error_code", str3);
                    s40VarCreateAttributesBuilderFromInvalidKeyException.a();
                    sFailedAndroidKeyStoreUnwrapOperationCount.getClass();
                }
                Logger.error("AndroidKeyStoreUtil:unwrap", str3, e);
                throw clientException;
            } catch (InvalidKeyException e2) {
                e = e2;
                str3 = "invalid_key";
                ClientException clientException2 = new ClientException(str3, e.getMessage(), e);
                if (e instanceof InvalidKeyException) {
                    s40 s40VarCreateAttributesBuilderFromInvalidKeyException2 = createAttributesBuilderFromInvalidKeyException((InvalidKeyException) e);
                    s40VarCreateAttributesBuilderFromInvalidKeyException2.c("keystore_operation", "unwrap");
                    s40VarCreateAttributesBuilderFromInvalidKeyException2.c("error_code", str3);
                    s40VarCreateAttributesBuilderFromInvalidKeyException2.a();
                    sFailedAndroidKeyStoreUnwrapOperationCount.getClass();
                }
                Logger.error("AndroidKeyStoreUtil:unwrap", str3, e);
                throw clientException2;
            } catch (NoSuchAlgorithmException e3) {
                e = e3;
                str3 = "no_such_algorithm";
                ClientException clientException3 = new ClientException(str3, e.getMessage(), e);
                if (e instanceof InvalidKeyException) {
                    s40 s40VarCreateAttributesBuilderFromInvalidKeyException3 = createAttributesBuilderFromInvalidKeyException((InvalidKeyException) e);
                    s40VarCreateAttributesBuilderFromInvalidKeyException3.c("keystore_operation", "unwrap");
                    s40VarCreateAttributesBuilderFromInvalidKeyException3.c("error_code", str3);
                    s40VarCreateAttributesBuilderFromInvalidKeyException3.a();
                    sFailedAndroidKeyStoreUnwrapOperationCount.getClass();
                }
                Logger.error("AndroidKeyStoreUtil:unwrap", str3, e);
                throw clientException3;
            } catch (NoSuchPaddingException e4) {
                e = e4;
                str3 = "no_such_padding";
                ClientException clientException4 = new ClientException(str3, e.getMessage(), e);
                if (e instanceof InvalidKeyException) {
                    s40 s40VarCreateAttributesBuilderFromInvalidKeyException4 = createAttributesBuilderFromInvalidKeyException((InvalidKeyException) e);
                    s40VarCreateAttributesBuilderFromInvalidKeyException4.c("keystore_operation", "unwrap");
                    s40VarCreateAttributesBuilderFromInvalidKeyException4.c("error_code", str3);
                    s40VarCreateAttributesBuilderFromInvalidKeyException4.a();
                    sFailedAndroidKeyStoreUnwrapOperationCount.getClass();
                }
                Logger.error("AndroidKeyStoreUtil:unwrap", str3, e);
                throw clientException4;
            } catch (Throwable th) {
                e = th;
                str3 = "unknown_crypto_error";
                ClientException clientException5 = new ClientException(str3, e.getMessage(), e);
                if (e instanceof InvalidKeyException) {
                    s40 s40VarCreateAttributesBuilderFromInvalidKeyException5 = createAttributesBuilderFromInvalidKeyException((InvalidKeyException) e);
                    s40VarCreateAttributesBuilderFromInvalidKeyException5.c("keystore_operation", "unwrap");
                    s40VarCreateAttributesBuilderFromInvalidKeyException5.c("error_code", str3);
                    s40VarCreateAttributesBuilderFromInvalidKeyException5.a();
                    sFailedAndroidKeyStoreUnwrapOperationCount.getClass();
                }
                Logger.error("AndroidKeyStoreUtil:unwrap", str3, e);
                throw clientException5;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (SecretKey) cipher.unwrap(bArr, str, 3);
    }

    public static synchronized byte[] wrap(SecretKey secretKey, KeyPair keyPair, String str, AlgorithmParameterSpec algorithmParameterSpec) throws ClientException {
        String str2;
        Cipher cipher;
        try {
            if (str == null) {
                throw new NullPointerException("wrapAlgorithm is marked non-null but is null");
            }
            try {
                Logger.verbose("AndroidKeyStoreUtil:wrap", "Wrap secret key with a KeyPair.");
                cipher = Cipher.getInstance(str);
                if (algorithmParameterSpec != null) {
                    cipher.init(3, keyPair.getPublic(), algorithmParameterSpec);
                } else {
                    cipher.init(3, keyPair.getPublic());
                }
            } catch (InvalidKeyException e) {
                e = e;
                str2 = "invalid_key";
                ClientException clientException = new ClientException(str2, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:wrap", str2, e);
                throw clientException;
            } catch (NoSuchAlgorithmException e2) {
                e = e2;
                str2 = "no_such_algorithm";
                ClientException clientException2 = new ClientException(str2, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:wrap", str2, e);
                throw clientException2;
            } catch (IllegalBlockSizeException e3) {
                e = e3;
                str2 = "invalid_block_size";
                ClientException clientException3 = new ClientException(str2, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:wrap", str2, e);
                throw clientException3;
            } catch (NoSuchPaddingException e4) {
                e = e4;
                str2 = "no_such_padding";
                ClientException clientException4 = new ClientException(str2, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:wrap", str2, e);
                throw clientException4;
            } catch (Throwable th) {
                e = th;
                str2 = "unknown_crypto_error";
                ClientException clientException5 = new ClientException(str2, e.getMessage(), e);
                Logger.error("AndroidKeyStoreUtil:wrap", str2, e);
                throw clientException5;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return cipher.wrap(secretKey);
    }
}
