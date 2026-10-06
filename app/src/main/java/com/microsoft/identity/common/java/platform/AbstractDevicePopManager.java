package com.microsoft.identity.common.java.platform;

import android.security.keystore.KeyPermanentlyInvalidatedException;
import com.google.gson.internal.Excluder;
import com.google.gson.reflect.TypeToken;
import com.microsoft.identity.common.internal.platform.AndroidDeviceKeyManager;
import com.microsoft.identity.common.internal.platform.AndroidDevicePopManager;
import com.microsoft.identity.common.java.base64.Base64Flags;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.crypto.IDevicePopManager;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.marker.CodeMarkerManager;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.crypto.RSASSASigner;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.nimbusds.jose.jwk.RSAKey;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import defpackage.f6;
import defpackage.t14;
import defpackage.v57;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDevicePopManager implements IDevicePopManager {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static final CodeMarkerManager sCodeMarkerManager;
    private static final ExecutorService sThreadExecutor;
    protected final AndroidDeviceKeyManager mKeyManager;

    /* JADX INFO: renamed from: com.microsoft.identity.common.java.platform.AbstractDevicePopManager$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements TaskCompletedCallbackWithError<String, ClientException> {
        final /* synthetic */ ClientException[] val$errorResult;
        final /* synthetic */ CountDownLatch val$latch;
        final /* synthetic */ String[] val$result;

        public AnonymousClass2(String[] strArr, CountDownLatch countDownLatch, ClientException[] clientExceptionArr) {
            this.val$result = strArr;
            this.val$latch = countDownLatch;
            this.val$errorResult = clientExceptionArr;
        }

        @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
        public final void onError(ClientException clientException) {
            this.val$errorResult[0] = clientException;
            this.val$latch.countDown();
        }

        @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
        public final void onTaskCompleted(Object obj) {
            this.val$result[0] = (String) obj;
            this.val$latch.countDown();
        }
    }

    static {
        TypeToken.getParameterized(Map.class, String.class, String.class).getType();
        t14 t14Var = t14.s;
        new ThreadLocal();
        new ConcurrentHashMap();
        Excluder excluder = t14Var.a;
        new HashMap(t14Var.b);
        t14.b(t14Var.c);
        t14.b(t14Var.d);
        t14.b(t14Var.k);
        sThreadExecutor = Executors.newFixedThreadPool(5);
        sCodeMarkerManager = CodeMarkerManager.getInstance();
    }

    public AbstractDevicePopManager(AndroidDeviceKeyManager androidDeviceKeyManager) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        this.mKeyManager = androidDeviceKeyManager;
    }

    public static String access$000(RSAKey rSAKey) throws JSONException, JOSEException {
        if (rSAKey == null) {
            f6.n("rsaKey is marked non-null but is null");
            return null;
        }
        int i = AbstractKeyStoreKeyManager.a;
        String string = new JSONObject().put("kid", rSAKey.computeThumbprint().toString()).toString();
        if (string == null) {
            f6.n("input is marked non-null but is null");
            return null;
        }
        byte[] bytes = string.getBytes(UTF8);
        Base64Flags[] base64FlagsArr = {Base64Flags.NO_PADDING, Base64Flags.NO_WRAP, Base64Flags.URL_SAFE};
        int i2 = Base64Util.a;
        return LibraryInfoHelper.encodeToString(bytes, base64FlagsArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HashMap getDevicePopJwkMinifiedJson() throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableEntryException {
        Map<String, Object> jSONObject = AbstractKeyStoreKeyManager.getRsaKeyForKeyPair(AbstractKeyStoreKeyManager.getKeyPairForEntry((KeyStore.PrivateKeyEntry) this.mKeyManager.getEntry())).toPublicJWK().toJSONObject();
        HashMap map = new HashMap();
        map.put(HeaderParameterNames.JWK, jSONObject);
        return map;
    }

    private static boolean isNegativeInternalError(Throwable th) {
        if (th == null) {
            f6.n("t is marked non-null but is null");
            return false;
        }
        if (th.getMessage() == null || !th.getMessage().contains("internal Keystore code: -33")) {
            return false;
        }
        Logger.info("AbstractDevicePopManager", "Found internal Keystore code: -33 error.");
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0114  */
    /* JADX WARN: Multi-variable type inference failed */
    private String mintSignedHttpRequestInternal(String str, long j, URL url, String str2, String str3, String str4) throws ClientException {
        String str5;
        AndroidDevicePopManager androidDevicePopManager;
        if (url == null) {
            f6.n("requestUrl is marked non-null but is null");
            return null;
        }
        try {
            JWTClaimsSet.Builder builder = new JWTClaimsSet.Builder();
            if (!StringUtil.isNullOrEmpty(str2)) {
                builder.claim("at", str2);
            }
            builder.claim("ts", Long.valueOf(j));
            builder.claim("u", url.getAuthority());
            builder.claim("cnf", getDevicePopJwkMinifiedJson());
            if (!StringUtil.isNullOrEmpty(url.getPath())) {
                builder.claim(JWKParameterNames.RSA_FIRST_PRIME_FACTOR, url.getPath());
            }
            if (!StringUtil.isNullOrEmpty(str)) {
                builder.claim("m", str);
            }
            if (!StringUtil.isNullOrEmpty(str3)) {
                builder.claim("nonce", str3);
            }
            if (!StringUtil.isNullOrEmpty(str4)) {
                builder.claim("client_claims", str4);
            }
            JWTClaimsSet jWTClaimsSetBuild = builder.build();
            RSASSASigner rSASSASigner = new RSASSASigner(((KeyStore.PrivateKeyEntry) this.mKeyManager.getEntry()).getPrivateKey());
            SignedJWT signedJWT = new SignedJWT(new JWSHeader.Builder(JWSAlgorithm.RS256).keyID(getAsymmetricKeyThumbprint()).build(), jWTClaimsSetBuild);
            signedJWT.sign(rSASSASigner);
            return signedJWT.serialize();
        } catch (JOSEException e) {
            e = e;
            if (isNegativeInternalError(e) || ((e.getCause() != null && isNegativeInternalError(e.getCause())) || (e.getCause().getCause() != null && isNegativeInternalError(e.getCause().getCause())))) {
                Logger.error("AbstractDevicePopManager:mintSignedHttpRequestInternal", "Getting Invalid key blob, Invalid private RSA key.", e);
                Logger.info("AbstractDevicePopManager:mintSignedHttpRequestInternal", "Unable to access asymmetric key, clearing the key.");
                clearAsymmetricKey();
                Logger.info("AbstractDevicePopManager:mintSignedHttpRequestInternal", "Generating new PoP asymmetric key.");
                String strGenerateAsymmetricKey = generateAsymmetricKey();
                Logger.info("AbstractDevicePopManager:mintSignedHttpRequestInternal", "Generated new PoP asymmetric key.");
                Logger.verbosePII("AbstractDevicePopManager:mintSignedHttpRequestInternal", "Generated new PoP asymmetric key with thumbprint: " + strGenerateAsymmetricKey);
            }
            str5 = "failed_to_sign_jwt";
            androidDevicePopManager = (AndroidDevicePopManager) this;
            if (e.getCause() instanceof KeyPermanentlyInvalidatedException) {
                int i = com.microsoft.identity.common.logging.Logger.a;
                Logger.warn("AndroidDevicePopManager:performCleanupIfMintShrFails", "Unable to access asymmetric key - clearing.");
                androidDevicePopManager.clearAsymmetricKey();
            }
            ClientException clientException = new ClientException(str5, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:mintSignedHttpRequestInternal", clientException.getMessage(), clientException);
            throw clientException;
        } catch (KeyStoreException e2) {
            e = e2;
            str5 = "keystore_not_initialized";
            androidDevicePopManager = (AndroidDevicePopManager) this;
            if (e.getCause() instanceof KeyPermanentlyInvalidatedException) {
                int i2 = com.microsoft.identity.common.logging.Logger.a;
                Logger.warn("AndroidDevicePopManager:performCleanupIfMintShrFails", "Unable to access asymmetric key - clearing.");
                androidDevicePopManager.clearAsymmetricKey();
            }
            ClientException clientException2 = new ClientException(str5, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:mintSignedHttpRequestInternal", clientException2.getMessage(), clientException2);
            throw clientException2;
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            str5 = "no_such_algorithm";
            androidDevicePopManager = (AndroidDevicePopManager) this;
            if (e.getCause() instanceof KeyPermanentlyInvalidatedException) {
                int i3 = com.microsoft.identity.common.logging.Logger.a;
                Logger.warn("AndroidDevicePopManager:performCleanupIfMintShrFails", "Unable to access asymmetric key - clearing.");
                androidDevicePopManager.clearAsymmetricKey();
            }
            ClientException clientException3 = new ClientException(str5, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:mintSignedHttpRequestInternal", clientException3.getMessage(), clientException3);
            throw clientException3;
        } catch (UnrecoverableEntryException e4) {
            e = e4;
            str5 = "protection_params_invalid";
            androidDevicePopManager = (AndroidDevicePopManager) this;
            if (e.getCause() instanceof KeyPermanentlyInvalidatedException) {
                int i4 = com.microsoft.identity.common.logging.Logger.a;
                Logger.warn("AndroidDevicePopManager:performCleanupIfMintShrFails", "Unable to access asymmetric key - clearing.");
                androidDevicePopManager.clearAsymmetricKey();
            }
            ClientException clientException4 = new ClientException(str5, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:mintSignedHttpRequestInternal", clientException4.getMessage(), clientException4);
            throw clientException4;
        }
    }

    public final boolean asymmetricKeyExists() {
        return this.mKeyManager.exists();
    }

    public final void clearAsymmetricKey() {
        this.mKeyManager.clear();
    }

    public final String generateAsymmetricKey() throws ClientException {
        String str;
        CodeMarkerManager codeMarkerManager = sCodeMarkerManager;
        try {
            codeMarkerManager.getClass();
            RSAKey rsaKeyForKeyPair = AbstractKeyStoreKeyManager.getRsaKeyForKeyPair(generateNewRsaKeyPair());
            if (rsaKeyForKeyPair != null) {
                return rsaKeyForKeyPair.computeThumbprint().toString();
            }
            throw new NullPointerException("rsaKey is marked non-null but is null");
        } catch (JOSEException e) {
            e = e;
            str = "failed_to_compute_thumbprint_with_sha256";
            codeMarkerManager.getClass();
            ClientException clientException = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException.getMessage(), clientException);
            throw clientException;
        } catch (UnsupportedOperationException e2) {
            e = e2;
            str = "keystore_produced_invalid_cert";
            codeMarkerManager.getClass();
            ClientException clientException2 = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException2.getMessage(), clientException2);
            throw clientException2;
        } catch (InvalidAlgorithmParameterException e3) {
            e = e3;
            str = "keystore_initialization_failed";
            codeMarkerManager.getClass();
            ClientException clientException3 = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException3.getMessage(), clientException3);
            throw clientException3;
        } catch (KeyStoreException e4) {
            e = e4;
            str = "keystore_not_initialized";
            codeMarkerManager.getClass();
            ClientException clientException4 = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException4.getMessage(), clientException4);
            throw clientException4;
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            str = "no_such_algorithm";
            codeMarkerManager.getClass();
            ClientException clientException5 = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException5.getMessage(), clientException5);
            throw clientException5;
        } catch (NoSuchProviderException e6) {
            e = e6;
            str = "android_keystore_unavailable";
            codeMarkerManager.getClass();
            ClientException clientException6 = new ClientException(str, e.getMessage(), e);
            Logger.error("AbstractDevicePopManager:generateAsymmetricKey", clientException6.getMessage(), clientException6);
            throw clientException6;
        } catch (Throwable th) {
            codeMarkerManager.getClass();
            throw th;
        }
    }

    public abstract KeyPair generateNewRsaKeyPair() throws UnsupportedOperationException, NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException, InvalidAlgorithmParameterException, ClientException;

    public final String getAsymmetricKeyThumbprint() throws ClientException {
        return new String(this.mKeyManager.getThumbprint(), UTF8);
    }

    public final String getRequestConfirmation() throws ClientException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String[] strArr = new String[1];
        ClientException[] clientExceptionArr = new ClientException[1];
        final AnonymousClass2 anonymousClass2 = new AnonymousClass2(strArr, countDownLatch, clientExceptionArr);
        sThreadExecutor.submit(new Runnable() { // from class: com.microsoft.identity.common.java.platform.AbstractDevicePopManager.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                TaskCompletedCallbackWithError taskCompletedCallbackWithError = anonymousClass2;
                try {
                    ((AnonymousClass2) taskCompletedCallbackWithError).onTaskCompleted(AbstractDevicePopManager.access$000(AbstractKeyStoreKeyManager.getRsaKeyForKeyPair(AbstractKeyStoreKeyManager.getKeyPairForEntry((KeyStore.PrivateKeyEntry) AbstractDevicePopManager.this.mKeyManager.getEntry()))));
                } catch (JOSEException e) {
                    e = e;
                    str = "failed_to_compute_thumbprint_with_sha256";
                    ClientException clientException = new ClientException(str, e.getMessage(), e);
                    Logger.error("AbstractDevicePopManager:getRequestConfirmation", clientException.getMessage(), clientException);
                    ((AnonymousClass2) taskCompletedCallbackWithError).onError(clientException);
                } catch (KeyStoreException e2) {
                    e = e2;
                    str = "keystore_not_initialized";
                    ClientException clientException2 = new ClientException(str, e.getMessage(), e);
                    Logger.error("AbstractDevicePopManager:getRequestConfirmation", clientException2.getMessage(), clientException2);
                    ((AnonymousClass2) taskCompletedCallbackWithError).onError(clientException2);
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    str = "no_such_algorithm";
                    ClientException clientException3 = new ClientException(str, e.getMessage(), e);
                    Logger.error("AbstractDevicePopManager:getRequestConfirmation", clientException3.getMessage(), clientException3);
                    ((AnonymousClass2) taskCompletedCallbackWithError).onError(clientException3);
                } catch (UnrecoverableEntryException e4) {
                    e = e4;
                    str = "protection_params_invalid";
                    ClientException clientException4 = new ClientException(str, e.getMessage(), e);
                    Logger.error("AbstractDevicePopManager:getRequestConfirmation", clientException4.getMessage(), clientException4);
                    ((AnonymousClass2) taskCompletedCallbackWithError).onError(clientException4);
                } catch (JSONException e5) {
                    e = e5;
                    str = "json_construction_failed";
                    ClientException clientException5 = new ClientException(str, e.getMessage(), e);
                    Logger.error("AbstractDevicePopManager:getRequestConfirmation", clientException5.getMessage(), clientException5);
                    ((AnonymousClass2) taskCompletedCallbackWithError).onError(clientException5);
                }
            }
        });
        try {
            countDownLatch.await();
            String str = strArr[0];
            if (str != null) {
                return str;
            }
            throw clientExceptionArr[0];
        } catch (InterruptedException e) {
            Logger.error("AbstractDevicePopManager:getRequestConfirmation", "Interrupted while waiting on callback.", e);
            throw new ClientException("operation_interrupted", e.getMessage(), e);
        }
    }

    public final String mintSignedAccessToken(String str, long j, URL url, String str2, String str3, String str4) throws Exception {
        if (url == null) {
            f6.n("requestUrl is marked non-null but is null");
            return null;
        }
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(LibraryInfoHelper.createSpan("DevicePopMintSignedAccessToken"));
        try {
            String strMintSignedHttpRequestInternal = mintSignedHttpRequestInternal(str, j, url, str2, str3, str4);
            v57VarMakeCurrentSpan.close();
            return strMintSignedHttpRequestInternal;
        } catch (Throwable th) {
            try {
                v57VarMakeCurrentSpan.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }
}
