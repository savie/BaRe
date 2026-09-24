package com.microsoft.identity.common.java.providers;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.UrlUtil;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.dj7;
import defpackage.f6;
import defpackage.fz5;
import defpackage.z5;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RawAuthorizationResult {
    private final URI mAuthorizationFinalUri;
    private final BaseException mException;
    private final int mResultCode;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class RawAuthorizationResultBuilder {
        private URI authorizationFinalUri;
        private BaseException exception;
        private int resultCode;

        public static RawAuthorizationResult access$100(RawAuthorizationResultBuilder rawAuthorizationResultBuilder) {
            return new RawAuthorizationResult(rawAuthorizationResultBuilder.resultCode, rawAuthorizationResultBuilder.authorizationFinalUri, rawAuthorizationResultBuilder.exception);
        }

        public final String toString() {
            return "RawAuthorizationResult.RawAuthorizationResultBuilder(resultCode=" + fz5.v(this.resultCode) + ", authorizationFinalUri=" + this.authorizationFinalUri + ", exception=" + this.exception + ")";
        }
    }

    public RawAuthorizationResult(int i, URI uri, BaseException baseException) {
        this.mResultCode = i;
        this.mAuthorizationFinalUri = uri;
        this.mException = baseException;
    }

    public static RawAuthorizationResult fromException(BaseException baseException) {
        RawAuthorizationResultBuilder rawAuthorizationResultBuilder = new RawAuthorizationResultBuilder();
        rawAuthorizationResultBuilder.resultCode = 3;
        rawAuthorizationResultBuilder.exception = baseException;
        return RawAuthorizationResultBuilder.access$100(rawAuthorizationResultBuilder);
    }

    public static RawAuthorizationResult fromPropertyBag(PropertyBag propertyBag) {
        int i;
        RawAuthorizationResultBuilder rawAuthorizationResultBuilder = new RawAuthorizationResultBuilder();
        Integer num = (Integer) propertyBag.get("com.microsoft.identity.client.result.code");
        if (num == null) {
            i = 1;
        } else {
            for (int i2 : dj7.C(10)) {
                if (fz5.d(i2) == num.intValue()) {
                    i = i2;
                }
            }
            i = 0;
        }
        rawAuthorizationResultBuilder.resultCode = i;
        rawAuthorizationResultBuilder.authorizationFinalUri = (URI) propertyBag.get("com.microsoft.aad.adal:BrowserFinalUrl");
        rawAuthorizationResultBuilder.exception = (BaseException) propertyBag.get("com.microsoft.aad.adal:AuthenticationException");
        return RawAuthorizationResultBuilder.access$100(rawAuthorizationResultBuilder);
    }

    public static RawAuthorizationResult fromRedirectUri(String str) {
        if (str == null) {
            f6.n("redirectUri is marked non-null but is null");
            return null;
        }
        try {
            URI uri = new URI(str);
            RawAuthorizationResultBuilder rawAuthorizationResultBuilder = new RawAuthorizationResultBuilder();
            rawAuthorizationResultBuilder.resultCode = getResultCodeFromFinalRedirectUri(uri);
            rawAuthorizationResultBuilder.authorizationFinalUri = uri;
            return RawAuthorizationResultBuilder.access$100(rawAuthorizationResultBuilder);
        } catch (URISyntaxException e) {
            return fromException(new ClientException("malformed_url", "Failed to parse redirect URL", e));
        }
    }

    public static RawAuthorizationResult fromResultCode(int i) {
        if (i == 3 || i == 4 || i == 6 || i == 5) {
            z5.d(fz5.v(i), " should be set via other factory methods", "Result code ");
            return null;
        }
        RawAuthorizationResultBuilder rawAuthorizationResultBuilder = new RawAuthorizationResultBuilder();
        rawAuthorizationResultBuilder.resultCode = i;
        return RawAuthorizationResultBuilder.access$100(rawAuthorizationResultBuilder);
    }

    public static RawAuthorizationResult fromThrowable(Throwable th) {
        if (th instanceof BaseException) {
            return fromException((BaseException) th);
        }
        RawAuthorizationResultBuilder rawAuthorizationResultBuilder = new RawAuthorizationResultBuilder();
        rawAuthorizationResultBuilder.resultCode = 3;
        rawAuthorizationResultBuilder.exception = PropertyBagUtil.baseExceptionFromException(th);
        return RawAuthorizationResultBuilder.access$100(rawAuthorizationResultBuilder);
    }

    private static int getResultCodeFromFinalRedirectUri(URI uri) throws URISyntaxException {
        Map<String, String> parameters = UrlUtil.getParameters(uri);
        if ("msauth".equalsIgnoreCase(uri.getScheme())) {
            if (parameters.containsKey("app_link")) {
                Logger.info("RawAuthorizationResultgetResultCodeFromFinalRedirectUri", "Return to caller with BROWSER_CODE_WAIT_FOR_BROKER_INSTALL, and waiting for result.");
                return 5;
            }
            if ("wpj".equalsIgnoreCase(uri.getHost())) {
                Logger.info("RawAuthorizationResultgetResultCodeFromFinalRedirectUri", " Device needs to be registered, sending BROWSER_CODE_DEVICE_REGISTER");
                return 6;
            }
            if ("upgradeReg".equalsIgnoreCase(uri.getHost())) {
                Logger.info("RawAuthorizationResultgetResultCodeFromFinalRedirectUri", " Device registration needs to be upgraded, sending INSUFFICIENT_DEVICE_REGISTRATION");
                return 9;
            }
        }
        if (!StringUtil.equalsIgnoreCase(parameters.get("error_subcode"), "cancel")) {
            return 4;
        }
        Logger.info("RawAuthorizationResultgetResultCodeFromFinalRedirectUri", "User cancelled the session");
        return 2;
    }

    public static PropertyBag toPropertyBag(RawAuthorizationResult rawAuthorizationResult) {
        PropertyBag propertyBag = new PropertyBag();
        propertyBag.put("com.microsoft.identity.client.result.code", Integer.valueOf(fz5.d(rawAuthorizationResult.mResultCode)));
        propertyBag.put("com.microsoft.aad.adal:BrowserFinalUrl", rawAuthorizationResult.mAuthorizationFinalUri);
        propertyBag.put("com.microsoft.aad.adal:AuthenticationException", rawAuthorizationResult.mException);
        return propertyBag;
    }

    public final URI getAuthorizationFinalUri() {
        return this.mAuthorizationFinalUri;
    }

    public final BaseException getException() {
        return this.mException;
    }

    public final int getResultCode() {
        return this.mResultCode;
    }
}
