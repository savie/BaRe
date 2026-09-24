package com.microsoft.identity.common.internal.ui.webview;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewParent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.u;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.broker.AuthUxJavaScriptInterface;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.internal.fido.AuthFidoChallengeHandler;
import com.microsoft.identity.common.internal.fido.CredManFidoManager;
import com.microsoft.identity.common.internal.fido.FidoChallenge;
import com.microsoft.identity.common.internal.fido.LegacyFido2ApiManager;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.PasskeyOriginRulesManager;
import com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment;
import com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractCertBasedAuthChallengeHandler;
import com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler;
import com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.NonceRedirectHandler;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallenge;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallengeHandler;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeHandler;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.ReAttachPrtHeaderHandler;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.SwitchBrowserChallenge;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.SwitchBrowserRequestHandler;
import com.microsoft.identity.common.internal.ui.webview.switchbrowser.SwitchBrowserUriHelper;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.challengehandlers.PKeyAuthChallengeFactory;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.IErrorInformation;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.opentelemetry.AttributeName;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.c6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.fu4;
import defpackage.fz5;
import defpackage.ge;
import defpackage.qj7;
import defpackage.r40;
import defpackage.r86;
import defpackage.rj7;
import defpackage.t40;
import defpackage.uq7;
import defpackage.v57;
import defpackage.xs1;
import defpackage.zd4;
import defpackage.zh8;
import defpackage.zk0;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AzureActiveDirectoryWebViewClient extends WebViewClient {
    private static final ge sWebViewSslErrorCount;
    private final u mActivity;
    private AbstractCertBasedAuthChallengeHandler mCertBasedAuthChallengeHandler;
    private final CertBasedAuthFactory mCertBasedAuthFactory;
    private final IAuthorizationCompletionCallback mCompletionCallback;
    private final boolean mIsWebViewWebCpEnabledInBrokerlessCase;
    private final OnPageLoadedCallback mPageLoadedCallback;
    private String mPasskeyRegistrationScript;
    private final String mRedirectUrl;
    private HashMap<String, String> mRequestHeaders;
    private String mRequestUrl;
    private final rj7 mSpanContext;
    private final SwitchBrowserRequestHandler mSwitchBrowserRequestHandler;
    private final IUrlLoadTracker mUrlLoadTracker;
    private final String mUtid;
    protected boolean mAuthUxJavaScriptInterfaceAdded$1 = false;
    private boolean mInWebCpFlow = false;
    private boolean mAuthUxJavaScriptInterfaceAdded = false;

    static {
        PropertyBagUtil.createLongCounter("web_view_ssl_error_count", "Number of SSL errors received in onReceivedSslError");
        sWebViewSslErrorCount = zh8.d;
    }

    public AzureActiveDirectoryWebViewClient(u uVar, IAuthorizationCompletionCallback iAuthorizationCompletionCallback, OnPageLoadedCallback onPageLoadedCallback, String str, SwitchBrowserRequestHandler switchBrowserRequestHandler, String str2, boolean z, IUrlLoadTracker iUrlLoadTracker) {
        this.mActivity = uVar;
        this.mCompletionCallback = iAuthorizationCompletionCallback;
        this.mPageLoadedCallback = onPageLoadedCallback;
        this.mRedirectUrl = str;
        this.mCertBasedAuthFactory = new CertBasedAuthFactory(uVar);
        this.mSwitchBrowserRequestHandler = switchBrowserRequestHandler;
        this.mUtid = str2;
        this.mSpanContext = uVar instanceof AuthorizationActivity ? ((AuthorizationActivity) getActivity()).getSpanContext() : null;
        this.mIsWebViewWebCpEnabledInBrokerlessCase = z;
        this.mUrlLoadTracker = iUrlLoadTracker;
    }

    private r86 createSpanWithAttributesFromParent(String str) {
        r86 r86VarCreateSpanFromParent = PropertyBagUtil.createSpanFromParent(str, this.mSpanContext);
        t40 otelContext = getActivity() instanceof AuthorizationActivity ? ((AuthorizationActivity) getActivity()).getOtelContext() : null;
        if (otelContext != null) {
            zk0 zk0VarFromContext = PropertyBagUtil.fromContext(otelContext);
            for (AttributeName attributeName : Arrays.asList(AttributeName.correlation_id, AttributeName.calling_package_name)) {
                if (zk0VarFromContext.getEntryValue(attributeName.name()) != null) {
                    attributeName.name();
                }
            }
        }
        return r86VarCreateSpanFromParent;
    }

    private static String getBrokerAppPackageNameFromUrl(String str) {
        for (BrokerData brokerData : BrokerData.allBrokers) {
            if (str.contains(brokerData.getPackageName())) {
                return brokerData.getPackageName();
            }
        }
        String strJ = xs1.j("No known broker app package name found in URL: ", str);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:getBrokerAppPackageNameFromUrl", strJ);
        return "";
    }

    private void handleBrowserRedirect(String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processWebsiteRequest", "Not a device CA request. Redirecting to browser.");
        SpanExtension.current().getClass();
        openLinkInBrowser(str);
        int i2 = this.mInWebCpFlow ? 8 : 2;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processWebsiteRequest", "Returning result code: ".concat(fz5.v(i2)));
        getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(i2));
    }

    private boolean handleUrl(WebView webView, String str) {
        fu4 fu4Var;
        String str2 = this.mRedirectUrl;
        Locale locale = Locale.US;
        String lowerCase = str.toLowerCase(locale);
        try {
            Locale locale2 = Locale.ROOT;
            if (lowerCase.startsWith("urn:http-auth:PKeyAuth".toLowerCase(locale2))) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "WebView detected request for pkeyauth challenge.");
                new PKeyAuthChallengeHandler(webView, getCompletionCallback()).processChallenge2(PKeyAuthChallengeFactory.getPKeyAuthChallengeFromWebViewRedirect(str));
            } else if (lowerCase.startsWith("urn:http-auth:PassKey".toLowerCase(locale2))) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "WebView detected request for passkey protocol.");
                FidoChallenge fidoChallengeCreateFromRedirectUri = FidoChallenge.createFromRedirectUri(str);
                Activity activity = getActivity();
                t40 otelContext = activity instanceof AuthorizationActivity ? ((AuthorizationActivity) activity).getOtelContext() : null;
                CredManFidoManager credManFidoManager = new CredManFidoManager(webView.getContext(), ((activity instanceof AuthorizationActivity) && (((AuthorizationActivity) activity).getFragment() instanceof WebViewAuthorizationFragment) && CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC) && Build.VERSION.SDK_INT < 34) ? new LegacyFido2ApiManager(webView.getContext(), (WebViewAuthorizationFragment) ((AuthorizationActivity) activity).getFragment()) : null);
                View view = webView;
                while (view != null) {
                    Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
                    fu4Var = tag instanceof fu4 ? (fu4) tag : null;
                    if (fu4Var != null) {
                        new AuthFidoChallengeHandler(credManFidoManager, webView, otelContext, fu4Var).processChallenge2(fidoChallengeCreateFromRedirectUri);
                    } else {
                        Object parent = view.getParent();
                        if (parent == null) {
                            Object tag2 = view.getTag(R.id.view_tree_disjoint_parent);
                            parent = tag2 instanceof ViewParent ? (ViewParent) tag2 : null;
                        }
                        view = parent instanceof View ? (View) parent : null;
                    }
                }
                fu4Var = null;
                new AuthFidoChallengeHandler(credManFidoManager, webView, otelContext, fu4Var).processChallenge2(fidoChallengeCreateFromRedirectUri);
            } else if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED) && lowerCase.contains("sso_nonce")) {
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Navigation contains new nonce within the redirect uri.");
                processNonceAndReAttachHeaders(webView, str);
            } else if (lowerCase.startsWith(str2.toLowerCase(locale))) {
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Navigation starts with the redirect uri.");
                this.mSwitchBrowserRequestHandler.getClass();
                int i5 = SwitchBrowserUriHelper.a;
                if (uq7.V(lowerCase, str2.concat("/switch_browser"), true)) {
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Request to switch browser.");
                    processSwitchBrowserRequest(str);
                } else {
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is a redirect request.");
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processRedirectUrl", "It is pointing to redirect. Final url can be processed to get the code or error.");
                    getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromRedirectUri(str));
                    webView.stopLoading();
                }
            } else if (lowerCase.startsWith("browser://")) {
                int i6 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an external website request");
                processWebsiteRequest(webView, str);
            } else if (lowerCase.startsWith("msauth://")) {
                int i7 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an install request");
                processInstallRequest(webView, str);
            } else if (lowerCase.startsWith("companyportal://")) {
                int i8 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is a request from WebCP");
                webView.stopLoading();
                if (str.equalsIgnoreCase("companyportal://enrollment")) {
                    launchCompanyPortal();
                } else {
                    returnError("webcp_uri_invalid", "Unexpected URL from WebCP: ".concat(str));
                }
            } else {
                if (lowerCase.startsWith("market://details?id=")) {
                    int i9 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Request to open PlayStore.");
                    return processPlayStoreURL(webView, str);
                }
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_PLAYSTORE_URL_LAUNCH) && lowerCase.startsWith("https://play.google.com/store/apps/details?id=")) {
                    Iterator it = BrokerData.allBrokers.iterator();
                    while (it.hasNext()) {
                        if (lowerCase.contains("id=" + ((BrokerData) it.next()).getPackageName())) {
                            int i10 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Request to open PlayStore for broker app install.");
                            return processPlayStoreURLForBrokerApps(webView, str);
                        }
                    }
                }
                if (lowerCase.startsWith("microsoft-authenticator://activatemfa")) {
                    int i11 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Request to link account with Authenticator.");
                    com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryWebViewClient:processAuthAppMFAUrl", "Linking Account in Broker for MFA.");
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.addFlags(268435456);
                        getActivity().startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processAuthAppMFAUrl", "Failed to open the Authenticator application.", e);
                    }
                } else {
                    if (lowerCase.startsWith("https://")) {
                        Uri uri = Uri.parse(lowerCase);
                        String host = uri.getHost();
                        String path = uri.getPath();
                        if (host != null && path != null) {
                            boolean z = host.equalsIgnoreCase("login.microsoftonline.com") || host.equalsIgnoreCase("login.microsoftonline.us") || host.equalsIgnoreCase("login.chinacloudapi.cn");
                            boolean zEqualsIgnoreCase = path.equalsIgnoreCase("/authenticatorapp/activateaccount");
                            if (z && zEqualsIgnoreCase) {
                                int i12 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Request to open Authenticator via activation app link.");
                                processAuthenticatorActivationAppLink(webView, str);
                            }
                        }
                    }
                    if (lowerCase.startsWith("aea://")) {
                        int i13 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an Amazon app request");
                        getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processAmazonAppUri", "Sent Intent to launch Amazon app");
                    } else if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_OPEN_ID_VC_REDIRECT) && lowerCase.startsWith("openid-vc://")) {
                        int i14 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an OpenID Verifiable Credentials request.");
                        processOpenIdVcRequest(webView, str);
                    } else {
                        Intent intent2 = getActivity().getIntent();
                        if (intent2 != null && !StringExtensions.isNullOrBlank(intent2.getStringExtra("com.microsoft.aadbroker.adal.broker.request")) && str.startsWith("msauth")) {
                            int i15 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Check for Redirect Uri.");
                            processInvalidRedirectUri(webView, str);
                        } else if ("about:blank".equals(lowerCase)) {
                            int i16 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an blank page request");
                        } else if (isIntentRequestToInstallBrokerApp(lowerCase)) {
                            int i17 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "It is an intent request");
                            processIntentToInstallBrokerApp(webView, str);
                        } else if (lowerCase.startsWith("https://")) {
                            boolean zStartsWith = str.startsWith("https://login.live.com/");
                            HashMap<String, String> map = this.mRequestHeaders;
                            boolean z2 = (map == null || map.isEmpty()) ? false : true;
                            if (zStartsWith && z2) {
                                String str3 = "We are loading this new URL: '" + removeQueryParametersOrRedact(str) + "' with original requestHeaders appended.";
                                int i18 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.infoPII("AzureActiveDirectoryWebViewClient:processHeaderForwardingRequiredUri", str3);
                                webView.loadUrl(str, this.mRequestHeaders);
                            } else if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD) && isCrossCloudRedirect(lowerCase)) {
                                int i19 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Navigation contains cross cloud redirect.");
                                r86 r86VarCreateSpanFromParent = PropertyBagUtil.createSpanFromParent("ProcessCrossCloudRedirect", this.mSpanContext);
                                reAttachPrtHeader(str, new ReAttachPrtHeaderHandler(webView, this.mRequestHeaders, r86VarCreateSpanFromParent), webView, "AzureActiveDirectoryWebViewClient:processCrossCloudRedirect", r86VarCreateSpanFromParent);
                            } else if (this.mInWebCpFlow && str.startsWith("https://enterprise.google.com/android/enroll")) {
                                int i20 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Navigation contains web cp enrollment url.");
                                processWebCpEnrollmentUrl(webView, str);
                            } else if (this.mInWebCpFlow && isWebCpAuthorizeUrl(str)) {
                                int i21 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processWebCPAuthorize", "Processing WebCP authorize request.");
                                r86 r86VarCreateSpanWithAttributesFromParent = createSpanWithAttributesFromParent("ProcessWebCpAuthorizeUrlRedirect");
                                reAttachPrtHeader(str, new ReAttachPrtHeaderHandler(webView, this.mRequestHeaders, r86VarCreateSpanWithAttributesFromParent), webView, "AzureActiveDirectoryWebViewClient:processWebCPAuthorize", r86VarCreateSpanWithAttributesFromParent);
                            } else {
                                if (!str.contains("&ismdmurl=1") || !str.startsWith("https") || !isWebCpInWebviewFeatureEnabled(str)) {
                                    int i22 = Logger.a;
                                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "This maybe a valid URI, but no special handling for this mentioned URI, hence deferring to WebView for loading.");
                                    StringBuilder sb = new StringBuilder("We are declining to override loading and redirect to invalid URL: '");
                                    sb.append(removeQueryParametersOrRedact(str));
                                    sb.append("' the user's url pattern is '");
                                    String strN = dj7.n(sb, str2, "'");
                                    int i23 = Logger.a;
                                    com.microsoft.identity.common.java.logging.Logger.infoPII("AzureActiveDirectoryWebViewClient:processInvalidUrl", strN);
                                    return false;
                                }
                                int i24 = Logger.a;
                                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Navigation contains device CA request with https scheme.");
                                processDeviceCaRequest(webView, str);
                            }
                        } else {
                            int i25 = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handleUrl", "Check for SSL protection");
                            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processSSLProtectionCheck", "The webView was redirected to an unsafe URL: " + removeQueryParametersOrRedact(str), null);
                            returnError("Redirect url scheme not SSL protected", "The webView was redirected to an unsafe URL.");
                            webView.stopLoading();
                        }
                    }
                }
            }
        } catch (ClientException e2) {
            String errorCode = e2.getErrorCode();
            int i26 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:handleUrl", errorCode, null);
            com.microsoft.identity.common.java.logging.Logger.errorPII(e2, "AzureActiveDirectoryWebViewClient:handleUrl", e2.getMessage());
            returnError(e2.getErrorCode(), e2.getMessage());
            webView.stopLoading();
        }
        return true;
    }

    private boolean isCrossCloudRedirect(String str) {
        try {
            URL url = new URL(str);
            URL url2 = new URL(this.mRequestUrl);
            if (!AzureActiveDirectory.isValidCloudHost(url) || !AzureActiveDirectory.isValidCloudHost(url2)) {
                return false;
            }
            if (Authority.getAuthorityFromAuthorityUrl(this.mRequestUrl).getAuthorityURL().getHost().equalsIgnoreCase(Authority.getAuthorityFromAuthorityUrl(str).getAuthorityURL().getHost())) {
                return false;
            }
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient", "Detected a cross cloud redirect.");
            return true;
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient", "Failure in detecting if it is a cross cloud redirect url." + th);
            return false;
        }
    }

    private static boolean isIntentRequestToInstallBrokerApp(String str) {
        if (!str.startsWith("intent://") || !str.contains(";package=com.android.vending;")) {
            return false;
        }
        Iterator it = BrokerData.allBrokers.iterator();
        while (it.hasNext()) {
            if (str.contains("id=" + ((BrokerData) it.next()).getPackageName())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isWebCpAuthorizeUrl(String str) {
        try {
            URI uri = new URI(str);
            String host = uri.getHost();
            String path = uri.getPath();
            if (host != null && path != null) {
                if (!AzureActiveDirectory.isValidCloudHost(new URL(str))) {
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", "URL host is not a valid Azure cloud host");
                    return false;
                }
                if (!path.contains("/authorize")) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", "URL path does not contain /authorize");
                    return false;
                }
                String str2 = StringExtensions.getUrlParameters(str).get("client_id");
                if (StringUtil.isNullOrEmpty(str2)) {
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", "Authorize URL does not contain client_id");
                    return false;
                }
                boolean zEqualsIgnoreCase = "74bcdadc-2fdc-4bb3-8459-76d06952a0e9".equalsIgnoreCase(str2);
                String str3 = zEqualsIgnoreCase ? "WebCP authorize URL contains valid WebCP client_id." : "Not running WebCP flow as client_id in authorize is not webcp client_id";
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", str3);
                return zEqualsIgnoreCase;
            }
            int i5 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", "URL missing host or path");
            return false;
        } catch (MalformedURLException e) {
            e = e;
            String str4 = "Invalid URL: " + e.getMessage();
            int i6 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", str4);
            return false;
        } catch (URISyntaxException e2) {
            e = e2;
            String str5 = "Invalid URL: " + e.getMessage();
            int i7 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpAuthorizeUrl", str5);
            return false;
        }
    }

    private void launchCompanyPortal() {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryWebViewClient:launchCompanyPortal", "Sending intent to launch the CompanyPortal.");
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.microsoft.windowsintune.companyportal", "com.microsoft.windowsintune.companyportal.views.SplashActivity"));
        intent.addFlags(268468224);
        getActivity().startActivity(intent);
        getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(8));
    }

    private void processDeviceCaRequest(WebView webView, String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processDeviceCaRequest", "This is a device CA request.");
        PackageHelper packageHelper = new PackageHelper(getActivity().getPackageManager());
        if (packageHelper.isPackageInstalledAndEnabled("com.microsoft.skype.teams.ipphone") && "iPULpH0pq8ms1Qy7cOzGsVRQN7/zW4IbW+UKcajvtrTrzM5o5VcaghNEA1Ho4Wq7ay0efqqJcalxa8eHxVnHKA==".equals(packageHelper.getSha512SignatureForPackage()) && packageHelper.isPackageInstalledAndEnabled("com.microsoft.windowsintune.companyportal")) {
            try {
                launchCompanyPortal();
                return;
            } catch (Exception unused) {
                com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:processDeviceCaRequest", "Failed to launch Company Portal, falling back to browser.");
            }
        }
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(createSpanWithAttributesFromParent("ProcessWebCpRedirects"));
            try {
                if (isWebCpInWebviewFeatureEnabled(str)) {
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:loadDeviceCaUrl", "Loading device CA request in WebView.");
                    webView.loadUrl(str.replace("browser://", "https://"), this.mRequestHeaders);
                } else {
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:loadDeviceCaUrl", "Loading device CA request in browser.");
                    openLinkInBrowser(str);
                    getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(8));
                }
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:loadDeviceCaUrl", "Failed to load device CA URL in WebView.", th3);
            returnError("unknown_error", th3.getMessage());
        }
    }

    private void processInstallRequest(final WebView webView, String str) {
        RawAuthorizationResult rawAuthorizationResultFromRedirectUri = RawAuthorizationResult.fromRedirectUri(str);
        if (rawAuthorizationResultFromRedirectUri.getResultCode() != 5) {
            getCompletionCallback().onChallengeResponseReceived(rawAuthorizationResultFromRedirectUri);
            webView.stopLoading();
            return;
        }
        final String str2 = StringExtensions.getUrlParameters(str).get("app_link");
        String strJ = xs1.j("Launching the link to app:", str2);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processInstallRequest", strJ);
        getCompletionCallback().onChallengeResponseReceived(rawAuthorizationResultFromRedirectUri);
        new Handler().postDelayed(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.AzureActiveDirectoryWebViewClient.2
            @Override // java.lang.Runnable
            public final void run() {
                AzureActiveDirectoryWebViewClient.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2.replace("browser://", "https://"))));
                webView.stopLoading();
            }
        }, 1000L);
        webView.stopLoading();
    }

    private void processIntentToInstallBrokerApp(WebView webView, String str) {
        try {
            Intent uri = Intent.parseUri(str, 1);
            if (uri == null || uri.getPackage() == null) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp", "Unable to parse the intent URI");
                return;
            }
            webView.getContext().startActivity(uri);
            String str2 = "Intent request sent to launch the app: " + uri.getPackage();
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp", str2);
        } catch (ActivityNotFoundException e) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp", "No activity found to handle the intent.", e);
            returnError("activity_not_found", e.getMessage());
        } catch (URISyntaxException e2) {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp", "Failed to parse the intent URI due to invalid syntax.", e2);
            returnError("uri_syntax_error", e2.getMessage());
        } catch (Throwable th) {
            int i5 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processIntentToInstallBrokerApp", "An unexpected error occurred while processing the intent URI.", th);
            returnError("unexpected_error", th.getMessage());
        }
    }

    private void processInvalidRedirectUri(WebView webView, String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processInvalidRedirectUri", "The RedirectUri is not as expected.", null);
        String str2 = this.mRedirectUrl;
        com.microsoft.identity.common.java.logging.Logger.errorPII(null, "AzureActiveDirectoryWebViewClient:processInvalidRedirectUri", dj7.l("Received ", str, " and expected ", str2));
        StringBuilder sb = new StringBuilder("The RedirectUri is not as expected. Received ");
        sb.append(str);
        returnError("The redirectUri for broker is invalid", dj7.n(sb, " and expected ", str2));
        webView.stopLoading();
    }

    private void processNonceAndReAttachHeaders(WebView webView, String str) {
        String str2 = StringExtensions.getUrlParameters(str).get("sso_nonce");
        SpanExtension.current().getClass();
        if (str2 != null) {
            r86 r86VarCreateSpanFromParent = PropertyBagUtil.createSpanFromParent("ProcessNonceFromEstsRedirect", this.mSpanContext);
            try {
                v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(r86VarCreateSpanFromParent);
                try {
                    new NonceRedirectHandler(webView, this.mRequestHeaders, r86VarCreateSpanFromParent).processChallenge2(new URL(str));
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th) {
                    try {
                        v57VarMakeCurrentSpan.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (MalformedURLException e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.errorPII(e, "AzureActiveDirectoryWebViewClient:processNonceAndReAttachHeaders", "Redirect URI has invalid syntax, unable to parse");
            } catch (Throwable th3) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processNonceAndReAttachHeaders", "Error processing nonce and re-attaching headers", th3);
                webView.loadUrl(str, this.mRequestHeaders);
            }
        }
    }

    private void processOpenIdVcRequest(WebView webView, String str) {
        webView.stopLoading();
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(createSpanWithAttributesFromParent("ProcessOpenIdVcRequest"));
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.addFlags(268435456);
                if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                    getActivity().startActivity(intent);
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processOpenIdVcRequest", "Launched external handler for OpenID VC request.");
                } else {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:processOpenIdVcRequest", "No application found to handle openid-vc:// URI.");
                    returnError("activity_not_found", "No application found to handle the OpenID Verifiable Credentials request.");
                }
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (ActivityNotFoundException e) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processOpenIdVcRequest", "Failed to launch handler for openid-vc:// URI.", e);
            returnError("activity_not_found", "Failed to launch handler for the OpenID Verifiable Credentials request.");
        }
    }

    private boolean processPlayStoreURL(WebView webView, String str) {
        webView.stopLoading();
        if (!str.startsWith("market://details?id=com.microsoft.windowsintune.companyportal") && !str.startsWith("market://details?id=com.azure.authenticator")) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processPlayStoreURL", "The URI is either trying to open an unknown application or contains unknown query parameters");
            return false;
        }
        String brokerAppPackageNameFromUrl = getBrokerAppPackageNameFromUrl(str);
        String strK = eq3.k("Request to open PlayStore to install package : '", brokerAppPackageNameFromUrl, "'");
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processPlayStoreURL", strK);
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + brokerAppPackageNameFromUrl));
            intent.addFlags(268468224);
            getActivity().startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processPlayStoreURL", "PlayStore is not present on the device", e);
            return true;
        }
    }

    private boolean processPlayStoreURLForBrokerApps(WebView webView, String str) {
        String brokerAppPackageNameFromUrl = getBrokerAppPackageNameFromUrl(str);
        String strK = eq3.k("Request to open PlayStore to install package : '", brokerAppPackageNameFromUrl, "'");
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processPlayStoreURL", strK);
        try {
            getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + brokerAppPackageNameFromUrl)));
            webView.stopLoading();
            return true;
        } catch (ActivityNotFoundException e) {
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processPlayStoreURL", "PlayStore is not present on the device", e);
            return false;
        } catch (Exception e2) {
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processPlayStoreURL", "Failed to intercept install broker playstore URL and launch the intent", e2);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void processSwitchBrowserRequest(String str) {
        try {
            SwitchBrowserRequestHandler switchBrowserRequestHandler = this.mSwitchBrowserRequestHandler;
            String str2 = this.mRequestUrl;
            str.getClass();
            str2.getClass();
            Uri uri = Uri.parse(str);
            int i = SwitchBrowserUriHelper.a;
            uri.getClass();
            switchBrowserRequestHandler.processChallenge2(new SwitchBrowserChallenge(SwitchBrowserUriHelper.buildProcessUri(uri), str2));
        } catch (Throwable th) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processSwitchBrowserRequest", "Switch browser challenge could not be processed.", th);
            returnError(th instanceof IErrorInformation ? ((IErrorInformation) th).getErrorCode() : "unknown_error", th.getMessage());
        }
    }

    private void processWebCpEnrollmentUrl(WebView webView, String str) {
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(createSpanWithAttributesFromParent("ProcessWebCpEnrollmentRedirect"));
            try {
                webView.stopLoading();
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processWebCpEnrollmentUrl", "Loading WebCP enrollment url in browser.");
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:openGoogleEnrollmentUrl", "Opening Google enrollment URL");
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.addFlags(268468224);
                    getActivity().startActivity(intent);
                    new Handler().postDelayed(new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.AzureActiveDirectoryWebViewClient.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AzureActiveDirectoryWebViewClient.this.getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(8));
                        }
                    }, 3000L);
                    v57VarMakeCurrentSpan.close();
                } catch (ActivityNotFoundException e) {
                    com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:openGoogleEnrollmentUrl", "Failed to open the intent for google enrollment.", e);
                    throw e;
                }
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processWebCpEnrollmentUrl", "Failed to process WebCP enrollment URL.", th3);
            returnError("unknown_error", th3.getMessage());
        }
    }

    public static void reAttachPrtHeader(String str, ReAttachPrtHeaderHandler reAttachPrtHeaderHandler, WebView webView, String str2, r86 r86Var) {
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(r86Var);
            try {
                reAttachPrtHeaderHandler.processChallenge2(str);
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn(str2, "Error attaching PRT header." + th3);
            webView.loadUrl(str);
        }
    }

    private static String removeQueryParametersOrRedact(String str) {
        try {
            URI uri = new URI(str);
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        } catch (URISyntaxException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.errorPII(e, "AzureActiveDirectoryWebViewClient:removeQueryParametersOrRedact", "Redirect URI has invalid syntax, unable to parse");
            return "redacted";
        }
    }

    private void returnError(String str, String str2) {
        getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromException(new ClientException(str, str2, null)));
    }

    private void sendErrorToCallback(WebView webView, int i, String str) {
        webView.stopLoading();
        this.mCompletionCallback.onChallengeResponseReceived(RawAuthorizationResult.fromException(new ClientException(fz5.j(i, "Code:"), str, null)));
    }

    public final void addPasskeyRegistrationJsScript() {
        this.mPasskeyRegistrationScript = "\n            var __webauthn_interface__,__webauthn_hooks__;!function(e){__webauthn_interface__.addEventListener(\"message\",(function(e){console.log(e.data);var n=JSON.parse(e.data);\"get\"===n.type?o(n):\"create\"===n.type?l(n):console.log(\"Incorrect response format for reply: \"+n.type)}));var n=null,t=null,r=null,a=null;function o(e){if(null!==n&&null!==r){if(\"success\"!=e.status){var o=r;return n=null,r=null,void o(new DOMException(e.data.domExceptionMessage,e.data.domExceptionName))}var s=u(e.data),i=n;n=null,r=null,i(s)}else console.log(\"Reply failure: Resolve: \"+t+\" and reject: \"+a)}function s(e){var n=e.length%4;return Uint8Array.from(atob(e.replace(/-/g,\"+\").replace(/_/g,\"/\").padEnd(e.length+(0===n?0:4-n),\"=\")),(function(e){return e.charCodeAt(0)})).buffer}function i(e){return btoa(Array.from(new Uint8Array(e),(function(e){return String.fromCharCode(e)})).join(\"\")).replace(/\\+/g,\"-\").replace(/\\//g,\"_\").replace(/=+$/,\"\")}function l(e){if(null!==t&&null!==a){if(\"success\"!=e.status){var n=a;return t=null,a=null,void n(new DOMException(e.data.domExceptionMessage,e.data.domExceptionName))}var r=u(e.data),o=t;t=null,a=null,o(r)}else console.log(\"Reply failure: Resolve: \"+t+\" and reject: \"+a)}function u(e){return e.rawId=s(e.rawId),e.response.clientDataJSON=s(e.response.clientDataJSON),e.response.hasOwnProperty(\"attestationObject\")&&(e.response.attestationObject=s(e.response.attestationObject)),e.response.hasOwnProperty(\"authenticatorData\")&&(e.response.authenticatorData=s(e.response.authenticatorData)),e.response.hasOwnProperty(\"signature\")&&(e.response.signature=s(e.response.signature)),e.response.hasOwnProperty(\"userHandle\")&&(e.response.userHandle=s(e.response.userHandle)),e.getClientExtensionResults=function(){return{}},e.response.getTransports=function(){return e.response.hasOwnProperty(\"transports\")?e.response.transports:[]},e}e.create=function(n){if(!(\"publicKey\"in n))return e.originalCreateFunction(n);var r=new Promise((function(e,n){t=e,a=n})),o=n.publicKey;if(o.hasOwnProperty(\"challenge\")){var s=i(o.challenge);o.challenge=s}if(o.hasOwnProperty(\"user\")&&o.user.hasOwnProperty(\"id\")){var l=i(o.user.id);o.user.id=l}if(o.hasOwnProperty(\"excludeCredentials\")&&Array.isArray(o.excludeCredentials)&&o.excludeCredentials.length>0)for(var u=0;u<o.excludeCredentials.length;u++){var c=o.excludeCredentials[u];c&&c.hasOwnProperty(\"id\")&&(c.id=i(c.id))}var p={type:\"create\",request:o},_=JSON.stringify(p);return __webauthn_interface__.postMessage(_),r},e.get=function(t){if(!(\"publicKey\"in t))return e.originalGetFunction(t);var a=new Promise((function(e,t){n=e,r=t})),o=t.publicKey;if(o.hasOwnProperty(\"challenge\")){var s=i(o.challenge);o.challenge=s}var l={type:\"get\",request:o},u=JSON.stringify(l);return __webauthn_interface__.postMessage(u),a},e.onReplyGet=o,e.CM_base64url_decode=s,e.CM_base64url_encode=i,e.onReplyCreate=l}(__webauthn_hooks__||(__webauthn_hooks__={})),__webauthn_hooks__.originalGetFunction=navigator.credentials.get,__webauthn_hooks__.originalCreateFunction=navigator.credentials.create,navigator.credentials.get=__webauthn_hooks__.get,navigator.credentials.create=__webauthn_hooks__.create,window.PublicKeyCredential=function(){},window.PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable=function(){return Promise.resolve(!0)};\n         ";
    }

    public final void finalizeBeforeSendingResult(RawAuthorizationResult rawAuthorizationResult, ISendResultCallback iSendResultCallback) {
        AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler = this.mCertBasedAuthChallengeHandler;
        if (abstractCertBasedAuthChallengeHandler == null) {
            iSendResultCallback.onResultReady();
            return;
        }
        abstractCertBasedAuthChallengeHandler.emitTelemetryForCertBasedAuthResults(rawAuthorizationResult);
        AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler2 = this.mCertBasedAuthChallengeHandler;
        if (abstractCertBasedAuthChallengeHandler2 instanceof AbstractSmartcardCertBasedAuthChallengeHandler) {
            ((AbstractSmartcardCertBasedAuthChallengeHandler) abstractCertBasedAuthChallengeHandler2).promptSmartcardRemovalForResult(iSendResultCallback);
        } else {
            iSendResultCallback.onResultReady();
        }
    }

    public final Activity getActivity() {
        return this.mActivity;
    }

    public final IAuthorizationCompletionCallback getCompletionCallback() {
        return this.mCompletionCallback;
    }

    public final void initializeAuthUxJavaScriptApi(WebView webView, String str) {
        if (shouldExposeJavaScriptInterface(str)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient", "Adding AuthUx JavaScript Interface");
            webView.addJavascriptInterface(new AuthUxJavaScriptInterface(), "broker");
            this.mAuthUxJavaScriptInterfaceAdded = true;
        }
    }

    public final boolean isWebCpInWebviewFeatureEnabled(String str) {
        String str2 = this.mUtid;
        boolean z = this.mIsWebViewWebCpEnabledInBrokerlessCase;
        try {
            if (!PropertyBagUtil.isRunningOnAuthService(getActivity().getApplicationContext())) {
                this.mInWebCpFlow = z;
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpInWebviewFeatureEnabled", "Not running on AuthService, WebCP in WebView feature enabled? " + z);
                return this.mInWebCpFlow;
            }
            if (StringUtil.isNullOrEmpty(str2)) {
                String str3 = StringExtensions.getUrlParameters(str).get("login_hint");
                if (!StringUtil.isNullOrEmpty(str3)) {
                    str3.getClass();
                    com.microsoft.identity.common.java.logging.Logger.warn("CommonTenantInfoProvider:getTenantId", "mTenantInfoProvider is not initialized!");
                }
                str2 = null;
            }
            if (StringUtil.isNullOrEmpty(str2)) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpInWebviewFeatureEnabled", "Home tenantId is empty");
                return false;
            }
            System.currentTimeMillis();
            CommonFlightsManager commonFlightsManager = CommonFlightsManager.INSTANCE;
            CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.getIntValue(CommonFlight.WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS);
            boolean zIsFlightEnabled = commonFlightsManager.getFlightsProviderForTenant(str2).isFlightEnabled(CommonFlight.ENABLE_WEB_CP_IN_WEBVIEW);
            qj7 qj7VarCurrent = SpanExtension.current();
            System.currentTimeMillis();
            qj7VarCurrent.getClass();
            SpanExtension.current().getClass();
            if (!zIsFlightEnabled) {
                return false;
            }
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:isWebCpInWebviewFeatureEnabled", "WebCP in WebView feature is enabled.");
            this.mInWebCpFlow = true;
            return true;
        } catch (Throwable th) {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:isWebCpInWebviewFeatureEnabled", "Failed to check if WebCP in WebView feature is enabled.", th);
            return false;
        }
    }

    public final void onDestroy() {
        AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler = this.mCertBasedAuthChallengeHandler;
        if (abstractCertBasedAuthChallengeHandler != null) {
            abstractCertBasedAuthChallengeHandler.cleanUp();
        }
        this.mCertBasedAuthFactory.onDestroy();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        onPageFinished$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(webView, str);
        if (this.mAuthUxJavaScriptInterfaceAdded) {
            webView.evaluateJavascript("window.broker.postMessageToBroker = function(message) {     window.broker.receiveAuthUxMessage(JSON.stringify(message)); };", null);
        }
    }

    public final void onPageFinished$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.mPageLoadedCallback.onPageLoaded(str);
        webView.setVisibility(0);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        onPageStarted$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(webView, str, bitmap);
        IUrlLoadTracker iUrlLoadTracker = this.mUrlLoadTracker;
        if (iUrlLoadTracker != null) {
            iUrlLoadTracker.trackNewUrlStatus(str);
        }
        if (this.mPasskeyRegistrationScript == null || !PasskeyOriginRulesManager.isAllowedOrigin(str)) {
            return;
        }
        String strConcat = "Executing onPageStarted PasskeyRegistration script for URL: ".concat(str);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("AzureActiveDirectoryWebViewClient", strConcat);
        webView.evaluateJavascript(this.mPasskeyRegistrationScript, null);
    }

    public final void onPageStarted$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(WebView webView, String str, Bitmap bitmap) {
        if (GzipUtil.isEmpty(str)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:checkStartUrl", "onPageStarted: Null url for page to load.");
        } else {
            Uri uri = Uri.parse(str);
            if (uri.isOpaque()) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:checkStartUrl", "onPageStarted: Non-hierarchical loading uri.");
                com.microsoft.identity.common.java.logging.Logger.infoPII("OAuth2WebViewClient:checkStartUrl", "start url: " + str);
            } else if (GzipUtil.isEmpty(uri.getQueryParameter("code"))) {
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:checkStartUrl", "onPageStarted: URI has no auth code ('code') query parameter.");
                com.microsoft.identity.common.java.logging.Logger.infoPII("OAuth2WebViewClient:checkStartUrl", "Scheme:" + uri.getScheme() + " Host: " + uri.getHost() + " Path: " + uri.getPath());
            } else {
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:checkStartUrl", "Auth code is returned for the loading url.");
                com.microsoft.identity.common.java.logging.Logger.infoPII("OAuth2WebViewClient:checkStartUrl", "Scheme:" + uri.getScheme() + " Host: " + uri.getHost() + " Path: " + uri.getPath());
            }
        }
        if (shouldExposeJavaScriptInterface(str)) {
            com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:onPageStarted", "Adding AuthUx JavaScript Interface");
            webView.addJavascriptInterface(new AuthUxJavaScriptInterface(), "broker");
            this.mAuthUxJavaScriptInterfaceAdded$1 = true;
        } else if (this.mAuthUxJavaScriptInterfaceAdded$1) {
            com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:onPageStarted", "Removing AuthUx JavaScript Interface");
            webView.removeJavascriptInterface("broker");
            this.mAuthUxJavaScriptInterfaceAdded$1 = false;
        }
        com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:onPageStarted", "WebView starts loading.");
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedClientCertRequest(WebView webView, final ClientCertRequest clientCertRequest) {
        Principal[] principals = clientCertRequest.getPrincipals();
        if (principals != null) {
            for (Principal principal : principals) {
                if (principal.getName().contains("CN=MS-Organization-Access")) {
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:onReceivedClientCertRequest", "Cancelling the TLS request, not responding to TLS challenge triggered by device authentication.");
                    clientCertRequest.cancel();
                    return;
                }
            }
        }
        AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler = this.mCertBasedAuthChallengeHandler;
        if (abstractCertBasedAuthChallengeHandler != null) {
            abstractCertBasedAuthChallengeHandler.cleanUp();
        }
        this.mCertBasedAuthFactory.createCertBasedAuthChallengeHandler(new CertBasedAuthFactory.CertBasedAuthChallengeHandlerCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.AzureActiveDirectoryWebViewClient.3
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory.CertBasedAuthChallengeHandlerCallback
            public final void onReceived(AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler2) {
                AzureActiveDirectoryWebViewClient azureActiveDirectoryWebViewClient = AzureActiveDirectoryWebViewClient.this;
                azureActiveDirectoryWebViewClient.mCertBasedAuthChallengeHandler = abstractCertBasedAuthChallengeHandler2;
                AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler3 = azureActiveDirectoryWebViewClient.mCertBasedAuthChallengeHandler;
                ClientCertRequest clientCertRequest2 = clientCertRequest;
                if (abstractCertBasedAuthChallengeHandler3 == null) {
                    clientCertRequest2.cancel();
                } else {
                    azureActiveDirectoryWebViewClient.mCertBasedAuthChallengeHandler.processChallenge(clientCertRequest2);
                }
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        IUrlLoadTracker iUrlLoadTracker = this.mUrlLoadTracker;
        if (iUrlLoadTracker != null && webResourceRequest.isForMainFrame()) {
            iUrlLoadTracker.updateLatestUrlStatus("Code:" + webResourceError.getErrorCode() + ", " + ((Object) webResourceError.getDescription()));
        }
        onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(webView, webResourceRequest, webResourceError);
    }

    public final void onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String strM = dj7.m("WebResourceError - isForMainFrame? ", webResourceRequest.isForMainFrame());
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("OAuth2WebViewClient:onReceivedError", strM);
        com.microsoft.identity.common.java.logging.Logger.warnPII("OAuth2WebViewClient:onReceivedError", "Failing url: " + webResourceRequest.getUrl());
        if (webResourceRequest.isForMainFrame()) {
            sendErrorToCallback(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("OAuth2WebViewClient:onReceivedHttpAuthRequest", "Receive the http auth request. Start the dialog to ask for creds. ");
        com.microsoft.identity.common.java.logging.Logger.infoPII("OAuth2WebViewClient:onReceivedHttpAuthRequest", "Host:" + str);
        new NtlmChallengeHandler(this.mActivity, this.mCompletionCallback).processChallenge(new NtlmChallenge(httpAuthHandler));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        IUrlLoadTracker iUrlLoadTracker = this.mUrlLoadTracker;
        if (iUrlLoadTracker == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        iUrlLoadTracker.updateLatestUrlStatus("HTTP Error Code: " + webResourceResponse.getStatusCode());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        IUrlLoadTracker iUrlLoadTracker = this.mUrlLoadTracker;
        if (iUrlLoadTracker != null) {
            iUrlLoadTracker.updateLatestUrlStatus(sslError.toString());
        }
        onReceivedSslError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(webView, sslErrorHandler, sslError);
    }

    public final void onReceivedSslError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        String str = "Received SSL Error during request. For more info see: https://go.microsoft.com/fwlink/?linkid=2138180. Error: " + sslError.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("OAuth2WebViewClient:onReceivedSslError", str);
        ArrayList arrayList = new ArrayList();
        long primaryError = sslError.getPrimaryError();
        zd4 zd4Var = new zd4(3, "web_view_ssl_primary_error_code");
        Long lValueOf = Long.valueOf(primaryError);
        arrayList.add(zd4Var);
        arrayList.add(lValueOf);
        if (arrayList.size() != 2 || arrayList.get(0) == null) {
            Object[] array = arrayList.toArray();
            Comparator comparator = r40.b;
            for (int i2 = 0; i2 < array.length; i2 += 2) {
                zd4 zd4Var2 = (zd4) array[i2];
                if (zd4Var2 != null && zd4Var2.b.isEmpty()) {
                    array[i2] = null;
                }
            }
            new r40(array, r40.b);
        } else {
            arrayList.toArray();
        }
        sWebViewSslErrorCount.getClass();
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR)) {
            return;
        }
        this.mCompletionCallback.onChallengeResponseReceived(RawAuthorizationResult.fromException(new ClientException("Code:-11", sslError.toString(), null)));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        sendErrorToCallback(webView, -1, "WebView render process gone, crashed? : " + renderProcessGoneDetail.didCrash());
        return true;
    }

    public final void openLinkInBrowser(String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:openLinkInBrowser", "Try to open url link in browser");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replace("browser://", "https://")));
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            getActivity().startActivity(intent);
        } else {
            com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:openLinkInBrowser", "Unable to find an app to resolve the activity.");
        }
    }

    public final void processAuthenticatorActivationAppLink(WebView webView, String str) {
        webView.stopLoading();
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                getActivity().startActivity(intent);
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:processAuthenticatorActivationAppLink", "Launched Authenticator via activation app link.");
            } else {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AzureActiveDirectoryWebViewClient:processAuthenticatorActivationAppLink", "No application found to handle activation app link. Opening in browser.");
                openLinkInBrowser(str);
            }
        } catch (ActivityNotFoundException e) {
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processAuthenticatorActivationAppLink", "Failed to launch Authenticator via activation app link.", e);
            openLinkInBrowser(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0054 A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #2 {all -> 0x001e, blocks: (B:4:0x000d, B:6:0x0015, B:13:0x0020, B:15:0x0028, B:17:0x0035, B:18:0x0054), top: B:30:0x000d, outer: #1 }] */
    public final void processWebsiteRequest(WebView webView, String str) {
        webView.stopLoading();
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(createSpanWithAttributesFromParent("ProcessWebsiteRequest"));
            try {
                if (str.contains("&ismdmurl=1")) {
                    processDeviceCaRequest(webView, str);
                } else if (str.contains("https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal")) {
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient", "Redirect to Playstore to install Company Portal app.");
                    if (this.mInWebCpFlow) {
                        com.microsoft.identity.common.java.logging.Logger.info("AzureActiveDirectoryWebViewClient:handlePlaystoreLaunchUrlFromWebCp", "Handling playstore launch URL from WebCP.");
                        SpanExtension.current().getClass();
                        openLinkInBrowser(str);
                        getCompletionCallback().onChallengeResponseReceived(RawAuthorizationResult.fromResultCode(8));
                    } else {
                        handleBrowserRedirect(str);
                    }
                } else {
                    handleBrowserRedirect(str);
                }
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("AzureActiveDirectoryWebViewClient:processWebsiteRequest", "Failed to open link in browser.", th3);
            returnError("unexpected_error", "No browser found to open the link.");
        }
    }

    public final void setRequestHeaders(HashMap<String, String> map) {
        this.mRequestHeaders = map;
    }

    public final void setRequestUrl(String str) {
        this.mRequestUrl = str;
    }

    public final boolean shouldExposeJavaScriptInterface(String str) {
        if (PropertyBagUtil.isRunningOnAuthService(this.mActivity.getApplicationContext()) && str != null && str.length() != 0) {
            try {
                String host = new URI(str).getHost();
                host.getClass();
                if ((uq7.O(host, ".microsoftonline.com", false) || uq7.O(host, ".microsoft.com", false) || uq7.O(host, ".microsoftonline.us", false) || uq7.O(host, ".microsoftonline.cn", false)) && CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_JS_API_FOR_AUTHUX)) {
                    return true;
                }
            } catch (URISyntaxException e) {
                StringBuilder sbU = dj7.u("URISyntaxException received. uri: ", str, ", Message: ");
                sbU.append(e.getMessage());
                String string = sbU.toString();
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AuthUxJavaScriptInterface", string);
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!StringUtil.isNullOrEmpty(str)) {
            return handleUrl(webView, str);
        }
        c6.f("Redirect to empty url in web view.");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return handleUrl(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        IUrlLoadTracker iUrlLoadTracker = this.mUrlLoadTracker;
        if (iUrlLoadTracker != null) {
            iUrlLoadTracker.updateLatestUrlStatus("Code:" + i + ", " + str);
        }
        onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(webView, i, str, str2);
    }

    public final void onReceivedError$com$microsoft$identity$common$internal$ui$webview$OAuth2WebViewClient(WebView webView, int i, String str, String str2) {
        sendErrorToCallback(webView, i, str);
    }
}
