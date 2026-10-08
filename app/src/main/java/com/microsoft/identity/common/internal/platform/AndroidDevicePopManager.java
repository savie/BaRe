package com.microsoft.identity.common.internal.platform;

import android.content.Context;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyInfo;
import android.security.keystore.StrongBoxUnavailableException;
import com.microsoft.identity.common.internal.util.AndroidKeyStoreUtil;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.platform.AbstractDevicePopManager;
import com.microsoft.identity.common.java.util.ported.DateUtilities;
import com.microsoft.identity.common.logging.Logger;
import com.nimbusds.jose.crypto.impl.RSAKeyUtils;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.f6;
import defpackage.g84;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidDevicePopManager extends AbstractDevicePopManager {
    private final Context mContext;

    public AndroidDevicePopManager(Context context, String str) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (str == null) {
            f6.n("alias is marked non-null but is null");
            throw null;
        }
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        int i = AndroidDeviceKeyManager.b;
        AndroidDeviceKeyManager.AndroidDeviceKeyManagerBuilder androidDeviceKeyManagerBuilder = new AndroidDeviceKeyManager.AndroidDeviceKeyManagerBuilder();
        androidDeviceKeyManagerBuilder.keyAlias(str);
        androidDeviceKeyManagerBuilder.keyStore(keyStore);
        super(androidDeviceKeyManagerBuilder.build());
        if (context != null) {
            this.mContext = context;
        } else {
            f6.n("context is marked non-null but is null");
            throw null;
        }
    }

    private KeyGenParameterSpec.Builder buildCommonKeyGenSpec(int i, boolean z) {
        KeyGenParameterSpec.Builder digests = new KeyGenParameterSpec.Builder(this.mKeyManager.getKeyAlias(), i).setKeySize(RSAKeyGenerator.MIN_KEY_SIZE_BITS).setSignaturePaddings("PKCS1").setDigests("NONE", "SHA-1", "SHA-256");
        if (digests == null) {
            f6.n("builder is marked non-null but is null");
            return null;
        }
        if (z) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AndroidDevicePopManager:setEncryptionPaddingsIfNeeded", "Skipping encryption paddings due to SDL security restrictions");
            return digests;
        }
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AndroidDevicePopManager:setEncryptionPaddingsIfNeeded", "Adding encryption paddings (RSA_OAEP, RSA_PKCS1) to key specification");
        digests.setEncryptionPaddings("OAEPPadding", "PKCS1Padding");
        return digests;
    }

    private KeyPair generateNewKeyPair(Context context, boolean z, boolean z2, boolean z3) throws NoSuchAlgorithmException, StrongBoxUnavailableException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyPair keyPairGenerateKeyPair;
        synchronized ((DateUtilities.isLocaleCalendarNonGregorian(Locale.getDefault()) ? DateUtilities.LOCALE_CHANGE_LOCK : new Object())) {
            try {
                Locale locale = Locale.getDefault();
                int i = AndroidKeyStoreUtil.a;
                synchronized (AndroidKeyStoreUtil.class) {
                    if (locale == null) {
                        throw new NullPointerException("currentLocale is marked non-null but is null");
                    }
                    throw th;
                }
                try {
                    keyPairGenerateKeyPair = getInitializedRsaKeyPairGenerator(context, z, z2, z3).generateKeyPair();
                    Locale.setDefault(locale);
                } catch (Throwable th) {
                    Locale.setDefault(locale);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return keyPairGenerateKeyPair;
    }

    private KeyPairGenerator getInitializedRsaKeyPairGenerator(Context context, boolean z, boolean z2, boolean z3) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        if (context == null) {
            f6.n("context is marked non-null but is null");
            return null;
        }
        if (keyPairGenerator == null) {
            f6.n("keyPairGenerator is marked non-null but is null");
            return null;
        }
        boolean zIsFlightEnabled = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER);
        int i = !zIsFlightEnabled ? 15 : 12;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            KeyGenParameterSpec.Builder builderBuildCommonKeyGenSpec = buildCommonKeyGenSpec(i, zIsFlightEnabled);
            if (z3) {
                builderBuildCommonKeyGenSpec = builderBuildCommonKeyGenSpec.setAttestationChallenge(null);
            }
            if (i2 >= 28 && z) {
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("AndroidDevicePopManager", "Attempting to apply StrongBox isolation.");
                builderBuildCommonKeyGenSpec = builderBuildCommonKeyGenSpec.setIsStrongBoxBacked(true);
            }
            keyPairGenerator.initialize(builderBuildCommonKeyGenSpec.build());
            return keyPairGenerator;
        }
        if (!zIsFlightEnabled && z2) {
            i |= 32;
        }
        KeyGenParameterSpec.Builder builderBuildCommonKeyGenSpec2 = buildCommonKeyGenSpec(i, zIsFlightEnabled);
        if (z3) {
            builderBuildCommonKeyGenSpec2 = builderBuildCommonKeyGenSpec2.setAttestationChallenge(null);
        }
        if (z) {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AndroidDevicePopManager", "Attempting to apply StrongBox isolation.");
            builderBuildCommonKeyGenSpec2 = builderBuildCommonKeyGenSpec2.setIsStrongBoxBacked(true);
        }
        keyPairGenerator.initialize(builderBuildCommonKeyGenSpec2.build());
        return keyPairGenerator;
    }

    private static boolean isNegativeInternalError(Throwable th) {
        boolean z = th.getMessage() != null && th.getMessage().contains("internal Keystore code: -1000");
        if (z) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager", "StrongBox not supported. internal Keystore code: -1000", th);
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    @Override // com.microsoft.identity.common.java.platform.AbstractDevicePopManager
    public final KeyPair generateNewRsaKeyPair() throws UnsupportedOperationException, NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        Context context = this.mContext;
        int i = 0;
        while (true) {
            KeyPair keyPairGenerateNewKeyPair = null;
            if (i >= 4) {
                clearAsymmetricKey();
                g84.j("Failed to generate valid KeyPair. Attempted 4 times.");
                return null;
            }
            boolean z = true;
            boolean z2 = true;
            boolean z3 = true;
            boolean z4 = false;
            while (!z4) {
                try {
                    keyPairGenerateNewKeyPair = generateNewKeyPair(context, z, z2, z3);
                    try {
                        int i2 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("AndroidDevicePopManager", "Key pair generated successfully (StrongBox [" + z + "], Import [" + z2 + "], Attestation Challenge [" + z3 + "])");
                        z4 = true;
                    } catch (ProviderException e) {
                        e = e;
                        z4 = true;
                        if (z) {
                            boolean zEquals = e.getClass().getSimpleName().equals("StrongBoxUnavailableException");
                            if (zEquals) {
                                int i3 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager:isStrongBoxUnavailableException", "StrongBox not supported.", e);
                            }
                            if (!zEquals) {
                                if (!z2) {
                                }
                                if (!z3) {
                                }
                                if (z) {
                                }
                                clearAsymmetricKey();
                                throw e;
                            }
                            int i4 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager", "StrongBox unavailable. Skipping StrongBox then retry.", e);
                            z = false;
                        } else if (!z2 && e.getClass().getSimpleName().equals("SecureKeyImportUnavailableException")) {
                            int i5 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager", "Import unsupported. Skipping import flag then retry.", e);
                            if (z && e.getCause() != null) {
                                Throwable cause = e.getCause();
                                boolean zEquals2 = cause.getClass().getSimpleName().equals("StrongBoxUnavailableException");
                                if (zEquals2) {
                                    com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager:isStrongBoxUnavailableException", "StrongBox not supported.", cause);
                                }
                                if (zEquals2 || isNegativeInternalError(e.getCause())) {
                                    z = false;
                                }
                            }
                            z2 = false;
                        } else if (!z3 && "Failed to generate attestation certificate chain".equalsIgnoreCase(e.getMessage())) {
                            int i6 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager", "Failed to generate attestation cert. Skipping attestation then retry.", e);
                            z3 = false;
                        } else {
                            if (z || Build.VERSION.SDK_INT < 34 || e.getCause() == null || !isNegativeInternalError(e.getCause())) {
                                clearAsymmetricKey();
                                throw e;
                            }
                            int i7 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager", "Android 14 Internal Key store error with StrongBox. Skipping strongbox then retry.", e);
                            z = false;
                        }
                    }
                } catch (ProviderException e2) {
                    e = e2;
                }
            }
            int iKeyBitLength = RSAKeyUtils.keyBitLength(keyPairGenerateNewKeyPair.getPrivate());
            if (iKeyBitLength >= 2048 || iKeyBitLength < 0) {
                try {
                    PrivateKey privateKey = keyPairGenerateNewKeyPair.getPrivate();
                    String str = "SecretKey is secure hardware backed? " + ((KeyInfo) KeyFactory.getInstance(privateKey.getAlgorithm(), "AndroidKeyStore").getKeySpec(privateKey, KeyInfo.class)).isInsideSecureHardware();
                    int i8 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AndroidDevicePopManager:getSecureHardwareState", str);
                } catch (NoSuchAlgorithmException | NoSuchProviderException | InvalidKeySpecException e3) {
                    int i9 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("AndroidDevicePopManager:getSecureHardwareState", "Failed to query secure hardware state.", e3);
                }
                return keyPairGenerateNewKeyPair;
            }
            i++;
        }
    }
}
