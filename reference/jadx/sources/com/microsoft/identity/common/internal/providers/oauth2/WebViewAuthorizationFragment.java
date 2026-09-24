package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.fragment.app.u;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.fido.LegacyFidoActivityResultContract;
import com.microsoft.identity.common.internal.ui.webview.AzureActiveDirectoryWebViewClient;
import com.microsoft.identity.common.internal.ui.webview.ISendResultCallback;
import com.microsoft.identity.common.internal.ui.webview.IUrlLoadTracker;
import com.microsoft.identity.common.internal.ui.webview.OnPageLoadedCallback;
import com.microsoft.identity.common.internal.ui.webview.WebViewUtil;
import com.microsoft.identity.common.internal.ui.webview.switchbrowser.SwitchBrowserProtocolCoordinator;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.java.util.ClientExtraSku;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.cn2;
import defpackage.cr3;
import defpackage.cy0;
import defpackage.dv1;
import defpackage.er8;
import defpackage.fz5;
import defpackage.g84;
import defpackage.g9;
import defpackage.i55;
import defpackage.jr8;
import defpackage.kr8;
import defpackage.l0;
import defpackage.l73;
import defpackage.lr8;
import defpackage.m9;
import defpackage.nb;
import defpackage.r86;
import defpackage.rf2;
import defpackage.rj7;
import defpackage.su0;
import defpackage.v12;
import defpackage.v57;
import defpackage.xs1;
import defpackage.zq8;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class WebViewAuthorizationFragment extends AuthorizationFragment {
    private boolean isWebViewWebcpEnabledInBrokerlessCase;
    private AzureActiveDirectoryWebViewClient mAADWebViewClient;
    private Intent mAuthIntent;
    private String mAuthorizationRequestUrl;
    private cr3 mFidoLauncher;
    private cr3 mFileChooserLauncher;
    private ValueCallback<Uri[]> mFileUploadCallback;
    private String mPostPageLoadedJavascript;
    private ProgressBar mProgressBar;
    private String mRedirectUri;
    private HashMap<String, String> mRequestHeaders;
    private String mUtid;
    private WebView mWebView;
    private boolean webViewZoomControlsEnabled;
    private boolean webViewZoomEnabled;
    private boolean mPkeyAuthStatus = false;
    private final CameraPermissionRequestHandler mCameraPermissionRequestHandler = new CameraPermissionRequestHandler(this);
    private SwitchBrowserProtocolCoordinator mSwitchBrowserProtocolCoordinator = null;
    private boolean isBrokerRequest = false;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if ((action != 0 && action != 1) || view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment$4, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass4 extends WebChromeClient {
        public AnonymousClass4() {
        }

        @Override // android.webkit.WebChromeClient
        public final Bitmap getDefaultVideoPoster() {
            return Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            if (message.obj == null) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:setUpWebView", "onCreateWindow: resultMsg.obj is null, cannot set up transport.", null);
                return false;
            }
            WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
            r86 r86VarCreateSpanFromParent = PropertyBagUtil.createSpanFromParent("WebViewTargetBlankNavigation", webViewAuthorizationFragment.requireActivity() instanceof AuthorizationActivity ? ((AuthorizationActivity) webViewAuthorizationFragment.requireActivity()).getSpanContext() : null);
            try {
                v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(r86VarCreateSpanFromParent);
                try {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:setUpWebView", "onCreateWindow: intercepting target=_blank navigation.");
                    WebView webView2 = new WebView(webView.getContext());
                    webView2.setWebViewClient(new WebViewClient(this, webView, r86VarCreateSpanFromParent, z2) { // from class: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment.4.1
                        final /* synthetic */ boolean val$isUserGesture;
                        final /* synthetic */ WebView val$view;

                        {
                            this.val$isUserGesture = z2;
                        }

                        /* JADX WARN: Code duplicated, block: B:26:0x0060 A[Catch: all -> 0x001e, Exception -> 0x0021, TryCatch #1 {Exception -> 0x0021, blocks: (B:3:0x0008, B:5:0x0016, B:13:0x0028, B:14:0x0033, B:16:0x003d, B:26:0x0060, B:27:0x006b, B:19:0x0049, B:21:0x0053), top: B:35:0x0008, outer: #0 }] */
                        /* JADX WARN: Code duplicated, block: B:27:0x006b A[Catch: all -> 0x001e, Exception -> 0x0021, TRY_LEAVE, TryCatch #1 {Exception -> 0x0021, blocks: (B:3:0x0008, B:5:0x0016, B:13:0x0028, B:14:0x0033, B:16:0x003d, B:26:0x0060, B:27:0x006b, B:19:0x0049, B:21:0x0053), top: B:35:0x0008, outer: #0 }] */
                        @Override // android.webkit.WebViewClient
                        public final boolean shouldOverrideUrlLoading(WebView webView3, WebResourceRequest webResourceRequest) {
                            v12 v12Var;
                            boolean z3;
                            WebView webView4 = this.val$view;
                            int i3 = 3;
                            try {
                                try {
                                    String string = webResourceRequest.getUrl().toString();
                                    String url = webView4.getUrl();
                                    if (string == null) {
                                        int i4 = Logger.a;
                                        com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: target URL is null, ignoring.");
                                    } else if (!this.val$isUserGesture) {
                                        int i5 = Logger.a;
                                        com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: popup not initiated by user gesture, loading URL inline.");
                                        webView4.loadUrl(string);
                                    } else if (string.toLowerCase().startsWith("https://")) {
                                        if (url != null) {
                                            String lowerCase = url.toLowerCase();
                                            if (lowerCase.startsWith("https://") && lowerCase.contains("/tlr/start")) {
                                                z3 = true;
                                            }
                                            if (z3) {
                                                int i6 = Logger.a;
                                                com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: TLR page, delegating URL to system browser.");
                                                webView4.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                                            } else {
                                                int i7 = Logger.a;
                                                com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: non-TLR page, loading URL inline as fallback.");
                                                webView4.loadUrl(string);
                                            }
                                        }
                                        z3 = false;
                                        if (z3) {
                                            int i8 = Logger.a;
                                            com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: non-TLR page, loading URL inline as fallback.");
                                            webView4.loadUrl(string);
                                        } else {
                                            int i9 = Logger.a;
                                            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: TLR page, delegating URL to system browser.");
                                            webView4.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                                        }
                                    } else {
                                        int i10 = Logger.a;
                                        com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "onCreateWindow: URL is not SSL protected, refusing to open.", null);
                                    }
                                    Objects.requireNonNull(webView3);
                                    v12Var = new v12(webView3, i3);
                                } catch (Exception e) {
                                    int i11 = Logger.a;
                                    com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:handleInterceptedUrlFromNewWindow", "Error handling target=_blank URL.", e);
                                    Objects.requireNonNull(webView3);
                                    v12Var = new v12(webView3, i3);
                                }
                                webView3.post(v12Var);
                                return true;
                            } catch (Throwable th) {
                                Objects.requireNonNull(webView3);
                                webView3.post(new v12(webView3, i3));
                                throw th;
                            }
                        }
                    });
                    ((WebView.WebViewTransport) message.obj).setWebView(webView2);
                    message.sendToTarget();
                    v57VarMakeCurrentSpan.close();
                    return true;
                } catch (Throwable th) {
                    try {
                        v57VarMakeCurrentSpan.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:setUpWebView", "Error handling target=_blank navigation.", e);
                return false;
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onPermissionRequest(final PermissionRequest permissionRequest) {
            WebViewAuthorizationFragment.this.requireActivity().runOnUiThread(new Runnable() { // from class: com.microsoft.identity.common.internal.providers.oauth2.a
                @Override // java.lang.Runnable
                public final void run() {
                    StringBuilder sb = new StringBuilder("Permission requested from:");
                    PermissionRequest permissionRequest2 = permissionRequest;
                    sb.append(permissionRequest2.getOrigin());
                    sb.append(" for resources:");
                    sb.append(Arrays.toString(permissionRequest2.getResources()));
                    String string = sb.toString();
                    int i = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:setUpWebView", string);
                    WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
                    webViewAuthorizationFragment.mCameraPermissionRequestHandler.handle(permissionRequest2, webViewAuthorizationFragment.requireContext());
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
            u activity = webViewAuthorizationFragment.getActivity();
            return webViewAuthorizationFragment.handleFileUploadRequest(valueCallback, fileChooserParams, activity instanceof AuthorizationActivity ? ((AuthorizationActivity) activity).getSpanContext() : null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AuthorizationCompletionCallback implements IAuthorizationCompletionCallback {
        public AuthorizationCompletionCallback() {
        }

        @Override // com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback
        public final void onChallengeResponseReceived(final RawAuthorizationResult rawAuthorizationResult) {
            String strConcat = "onChallengeResponseReceived:".concat(fz5.v(rawAuthorizationResult.getResultCode()));
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:onChallengeResponseReceived", null, strConcat);
            WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
            if (webViewAuthorizationFragment.mAADWebViewClient != null) {
                webViewAuthorizationFragment.mAADWebViewClient.finalizeBeforeSendingResult(rawAuthorizationResult, new ISendResultCallback() { // from class: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment.AuthorizationCompletionCallback.1
                    @Override // com.microsoft.identity.common.internal.ui.webview.ISendResultCallback
                    public final void onResultReady() {
                        WebViewAuthorizationFragment webViewAuthorizationFragment2 = WebViewAuthorizationFragment.this;
                        webViewAuthorizationFragment2.sendResult(rawAuthorizationResult);
                        webViewAuthorizationFragment2.finish();
                    }
                });
            } else {
                webViewAuthorizationFragment.sendResult(rawAuthorizationResult);
                webViewAuthorizationFragment.finish();
            }
        }

        @Override // com.microsoft.identity.common.java.ui.webview.authorization.IAuthorizationCompletionCallback
        public final void setPKeyAuthStatus() {
            WebViewAuthorizationFragment.this.mPkeyAuthStatus = true;
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:setPKeyAuthStatus", null, "setPKeyAuthStatus:true");
        }
    }

    private SwitchBrowserProtocolCoordinator getSwitchBrowserCoordinator() {
        if (this.mSwitchBrowserProtocolCoordinator == null) {
            this.mSwitchBrowserProtocolCoordinator = new SwitchBrowserProtocolCoordinator(requireActivity(), requireActivity() instanceof AuthorizationActivity ? ((AuthorizationActivity) requireActivity()).getSpanContext() : null);
        }
        return this.mSwitchBrowserProtocolCoordinator;
    }

    public static void i(WebViewAuthorizationFragment webViewAuthorizationFragment, g9 g9Var) {
        Uri[] uriArr;
        Intent intent;
        if (webViewAuthorizationFragment.mFileUploadCallback == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:onCreate", "File upload callback is null, ignoring result.");
            return;
        }
        if (g9Var.a != -1 || (intent = g9Var.b) == null) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:onCreate", "File chooser cancelled or returned no data.");
            uriArr = null;
        } else {
            if (intent.getClipData() != null) {
                int itemCount = intent.getClipData().getItemCount();
                uriArr = new Uri[itemCount];
                for (int i3 = 0; i3 < itemCount; i3++) {
                    uriArr[i3] = intent.getClipData().getItemAt(i3).getUri();
                }
            } else {
                uriArr = intent.getData() != null ? new Uri[]{intent.getData()} : null;
            }
            String strM = xs1.m(new StringBuilder("File chooser returned "), uriArr != null ? uriArr.length : 0, " file(s).");
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:onCreate", strM);
        }
        webViewAuthorizationFragment.mFileUploadCallback.onReceiveValue(uriArr);
        webViewAuthorizationFragment.mFileUploadCallback = null;
    }

    private void injectPasskeyProtocolHeader(HashMap<String, String> map) {
        if (StringUtil.isNullOrEmpty(Uri.parse(this.mAuthorizationRequestUrl).getQueryParameter("webauthn"))) {
            return;
        }
        if (this.isBrokerRequest) {
            String str = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_PASSKEY_REGISTRATION) ? "1.1/passkey" : "1.0/passkey";
            String strConcat = "Injecting Passkey protocol header for broker request: ".concat(str);
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("WebViewAuthorizationFragment:injectPasskeyProtocolHeader", strConcat);
            map.put("x-ms-PassKeyAuth", str);
            return;
        }
        if (!map.containsKey("x-ms-PassKeyAuth")) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("WebViewAuthorizationFragment:injectPasskeyProtocolHeader", "Injecting Passkey protocol header for auth only.");
            map.put("x-ms-PassKeyAuth", "1.0/passkey");
        } else {
            String str2 = "Passkey protocol header already exists in request headers  " + map.get("x-ms-PassKeyAuth");
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("WebViewAuthorizationFragment:injectPasskeyProtocolHeader", str2);
        }
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment
    public void extractState$1(Bundle bundle) {
        HashMap<String, String> map;
        super.extractState$1(bundle);
        this.mAuthIntent = (Intent) bundle.getParcelable("com.microsoft.identity.auth.intent");
        this.mPkeyAuthStatus = bundle.getBoolean("pkeyAuthStatus", false);
        this.mAuthorizationRequestUrl = bundle.getString("com.microsoft.identity.request.url");
        Context context = getContext();
        if (context != null) {
            this.isBrokerRequest = PropertyBagUtil.isRunningOnAuthService(context);
        }
        this.mRedirectUri = bundle.getString("com.microsoft.identity.request.redirect.uri");
        try {
            map = (HashMap) bundle.getSerializable("com.microsoft.identity.request.headers");
            if (map == null) {
                map = new HashMap<>();
            }
            if (this.isBrokerRequest) {
                ClientExtraSku.ClientExtraSkuBuilder clientExtraSkuBuilder = new ClientExtraSku.ClientExtraSkuBuilder();
                clientExtraSkuBuilder.srcSku(bundle.getString("x-client-SKU"));
                clientExtraSkuBuilder.srcSkuVer(bundle.getString("x-client-Ver"));
                map.put("x-client-xtra-sku", clientExtraSkuBuilder.build().toString());
            }
            injectPasskeyProtocolHeader(map);
        } catch (Exception unused) {
            map = new HashMap<>();
        }
        this.mRequestHeaders = map;
        this.mPostPageLoadedJavascript = bundle.getString("com.microsoft.identity.post.page.loaded.url");
        this.webViewZoomEnabled = bundle.getBoolean("com.microsoft.identity.web.view.zoom.enabled", true);
        this.webViewZoomControlsEnabled = bundle.getBoolean("com.microsoft.identity.web.view.zoom.controls.enabled", true);
        this.isWebViewWebcpEnabledInBrokerlessCase = bundle.getBoolean("com.microsoft.identity.web.view.web.cp.enabled", false);
        this.mUtid = bundle.getString("utid");
    }

    public final cr3 getFidoLauncher() {
        return this.mFidoLauncher;
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment
    public final void handleBackButtonPressed() {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:handleBackButtonPressed", "Back button is pressed");
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            cancelAuthorization(true);
        }
    }

    public final boolean handleFileUploadRequest(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams, rj7 rj7Var) {
        if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_WEBVIEW_FILE_UPLOAD)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:handleFileUploadRequest", "ENABLE_WEBVIEW_FILE_UPLOAD flight is disabled.");
            return false;
        }
        try {
            v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(PropertyBagUtil.createSpanFromParent("WebViewFileUpload", rj7Var));
            try {
                ValueCallback<Uri[]> valueCallback2 = this.mFileUploadCallback;
                if (valueCallback2 != null) {
                    valueCallback2.onReceiveValue(null);
                }
                this.mFileUploadCallback = null;
                if (this.mFileChooserLauncher == null) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:handleFileUploadRequest", "File chooser launcher is not initialized. Cannot handle file upload request.", null);
                    valueCallback.onReceiveValue(null);
                    v57VarMakeCurrentSpan.close();
                    return false;
                }
                this.mFileUploadCallback = valueCallback;
                Intent intentCreateIntent = fileChooserParams.createIntent();
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:handleFileUploadRequest", "Launching file chooser for WebView file upload.");
                this.mFileChooserLauncher.a(intentCreateIntent);
                v57VarMakeCurrentSpan.close();
                return true;
            } catch (Throwable th) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:handleFileUploadRequest", "Failed to launch file chooser.", e);
            ValueCallback<Uri[]> valueCallback3 = this.mFileUploadCallback;
            if (valueCallback3 != null) {
                valueCallback3.onReceiveValue(null);
                this.mFileUploadCallback = null;
            }
            return false;
        }
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("WebViewAuthorizationFragment:onCreate", "WebViewAuthorizationFragment onCreate");
        u activity = getActivity();
        if (activity != null) {
            WebViewUtil.setDataDirectorySuffix(activity.getApplicationContext());
        }
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_WEBVIEW_FILE_UPLOAD)) {
            this.mFileChooserLauncher = (cr3) registerForActivityResult(new nb(this, 5), new m9(0));
        }
        if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC) || Build.VERSION.SDK_INT >= 34) {
            return;
        }
        this.mFidoLauncher = (cr3) registerForActivityResult(new l0(13), new LegacyFidoActivityResultContract());
    }

    @Override // androidx.fragment.app.o
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        lr8 lr8Var;
        int i = 0;
        View viewInflate = layoutInflater.inflate(R.layout.common_activity_authentication, viewGroup, false);
        this.mProgressBar = (ProgressBar) viewInflate.findViewById(R.id.common_auth_webview_progressbar);
        u activity = getActivity();
        if (activity == null) {
            return null;
        }
        AzureActiveDirectoryWebViewClient azureActiveDirectoryWebViewClient = new AzureActiveDirectoryWebViewClient(activity, new AuthorizationCompletionCallback(), new OnPageLoadedCallback() { // from class: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment.1
            /* JADX WARN: Code duplicated, block: B:21:0x0070  */
            @Override // com.microsoft.identity.common.internal.ui.webview.OnPageLoadedCallback
            public final void onPageLoaded(String str) {
                boolean z;
                String[] strArr = new String[1];
                WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
                webViewAuthorizationFragment.mProgressBar.setVisibility(4);
                try {
                    strArr[0] = String.format("window.expectedUrl = '%s';%n%s", URLEncoder.encode(str, "UTF-8"), webViewAuthorizationFragment.mPostPageLoadedJavascript);
                } catch (UnsupportedEncodingException unused) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:onCreateView", "Inject expectedUrl failed.");
                }
                if (!webViewAuthorizationFragment.mAuthResultSent && !StringExtensions.isNullOrBlank(strArr[0])) {
                    webViewAuthorizationFragment.mWebView.evaluateJavascript(strArr[0], null);
                }
                if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_WEBVIEW_MULTIPLE_WINDOWS)) {
                    WebSettings settings = webViewAuthorizationFragment.mWebView.getSettings();
                    if (str != null) {
                        String lowerCase = str.toLowerCase();
                        z = lowerCase.startsWith("https://") && lowerCase.contains("/tlr/start");
                    }
                    settings.setSupportMultipleWindows(z);
                }
            }
        }, this.mRedirectUri, getSwitchBrowserCoordinator().getSwitchBrowserRequestHandler(), this.mUtid, this.isWebViewWebcpEnabledInBrokerlessCase, new IUrlLoadTracker() { // from class: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment.2
            @Override // com.microsoft.identity.common.internal.ui.webview.IUrlLoadTracker
            public final void trackNewUrlStatus(String str) {
                WebViewAuthorizationFragment.this.trackUrlStatus(str);
            }

            @Override // com.microsoft.identity.common.internal.ui.webview.IUrlLoadTracker
            public final void updateLatestUrlStatus(String str) {
                WebViewAuthorizationFragment.this.updateLatestUrlStatus(str, null);
            }
        });
        this.mAADWebViewClient = azureActiveDirectoryWebViewClient;
        WebView webView = (WebView) viewInflate.findViewById(R.id.common_auth_webview);
        this.mWebView = webView;
        WebSettings settings = webView.getSettings();
        settings.setUserAgentString(settings.getUserAgentString() + " PKeyAuth/1.0");
        settings.setJavaScriptEnabled(true);
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_WEBVIEW_SECURITY_SETTINGS)) {
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            settings.setGeolocationEnabled(false);
        }
        this.mWebView.requestFocus(130);
        this.mWebView.setOnTouchListener(new AnonymousClass3());
        this.mWebView.getSettings().setLoadWithOverviewMode(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setUseWideViewPort(true);
        this.mWebView.getSettings().setBuiltInZoomControls(this.webViewZoomControlsEnabled);
        this.mWebView.getSettings().setSupportZoom(this.webViewZoomEnabled);
        this.mWebView.setVisibility(4);
        this.mWebView.setWebViewClient(azureActiveDirectoryWebViewClient);
        this.mWebView.setWebChromeClient(new AnonymousClass4());
        WebView webView2 = this.mWebView;
        if ("1.1/passkey".equals(this.mRequestHeaders.get("x-ms-PassKeyAuth"))) {
            u uVarRequireActivity = requireActivity();
            webView2.getClass();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 28) {
                String strJ = fz5.j(i2, "Passkey functionality requires Android 9 (Pie) or higher. Current version: ");
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("PasskeyWebListener:hook", strJ);
            } else if (cy0.x("WEB_MESSAGE_LISTENER")) {
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("PasskeyWebListener:hook", "WEB_MESSAGE_LISTENER is supported on this WebView.");
                LinkedHashSet allowedOriginRules = PasskeyOriginRulesManager.getAllowedOriginRules();
                rf2 rf2Var = cn2.a;
                dv1 dv1VarC = l73.c(i55.a);
                CredentialManagerHandler credentialManagerHandler = new CredentialManagerHandler(uVarRequireActivity);
                AuthorizationActivity authorizationActivity = uVarRequireActivity instanceof AuthorizationActivity ? (AuthorizationActivity) uVarRequireActivity : null;
                PasskeyWebListener passkeyWebListener = new PasskeyWebListener(dv1VarC, credentialManagerHandler, authorizationActivity != null ? authorizationActivity.getOtelContext() : null);
                WeakHashMap weakHashMap = er8.a;
                if (!jr8.c.b()) {
                    g84.j("This method is not supported by the current version of the framework and the current WebView APK");
                    return null;
                }
                if (jr8.d.b()) {
                    WeakHashMap weakHashMap2 = er8.a;
                    lr8Var = (lr8) weakHashMap2.get(webView2);
                    if (lr8Var == null) {
                        lr8Var = new lr8(kr8.a.createWebView(webView2));
                        weakHashMap2.put(webView2, lr8Var);
                    }
                } else {
                    lr8Var = new lr8(kr8.a.createWebView(webView2));
                }
                lr8Var.a.addWebMessageListener("__webauthn_interface__", (String[]) allowedOriginRules.toArray(new String[0]), new su0(new zq8(passkeyWebListener, i)));
                com.microsoft.identity.common.java.logging.Logger.info("PasskeyWebListener:hook", "PasskeyWebListener successfully hooked into WebView.");
                azureActiveDirectoryWebViewClient.addPasskeyRegistrationJsScript();
            } else {
                int i5 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("PasskeyWebListener:hook", "WEB_MESSAGE_LISTENER not supported on this device/WebView.");
            }
            com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:setupPasskeyWebListener", "PasskeyWebListener hook failed, Downgrading to auth only.");
            this.mRequestHeaders.put("x-ms-PassKeyAuth", "1.0/passkey");
        } else {
            int i6 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("WebViewAuthorizationFragment:setupPasskeyWebListener", "Passkey protocol header not found or not for both auth and reg. Not hooking the PasskeyWebListener.");
        }
        this.mAADWebViewClient.initializeAuthUxJavaScriptApi(this.mWebView, this.mAuthorizationRequestUrl);
        final String str = this.mAuthorizationRequestUrl;
        final HashMap<String, String> map = this.mRequestHeaders;
        this.mWebView.post(new Runnable() { // from class: com.microsoft.identity.common.internal.providers.oauth2.WebViewAuthorizationFragment.5
            @Override // java.lang.Runnable
            public final void run() {
                int i7 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("WebViewAuthorizationFragment:launchWebView", "Launching embedded WebView for acquiring auth code.");
                StringBuilder sb = new StringBuilder("The start url is ");
                String str2 = str;
                sb.append(str2);
                com.microsoft.identity.common.java.logging.Logger.infoPII("WebViewAuthorizationFragment:launchWebView", sb.toString());
                WebViewAuthorizationFragment webViewAuthorizationFragment = WebViewAuthorizationFragment.this;
                AzureActiveDirectoryWebViewClient azureActiveDirectoryWebViewClient2 = webViewAuthorizationFragment.mAADWebViewClient;
                HashMap<String, String> map2 = map;
                azureActiveDirectoryWebViewClient2.setRequestHeaders(map2);
                webViewAuthorizationFragment.mAADWebViewClient.setRequestUrl(str2);
                webViewAuthorizationFragment.mWebView.loadUrl(str2, map2);
                webViewAuthorizationFragment.mProgressBar.setVisibility(0);
            }
        });
        return viewInflate;
    }

    @Override // com.microsoft.identity.common.internal.providers.oauth2.AuthorizationFragment, androidx.fragment.app.o
    public final void onDestroy() {
        cr3 cr3Var;
        super.onDestroy();
        AzureActiveDirectoryWebViewClient azureActiveDirectoryWebViewClient = this.mAADWebViewClient;
        if (azureActiveDirectoryWebViewClient != null) {
            azureActiveDirectoryWebViewClient.onDestroy();
        } else {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:onDestroy", "Fragment destroyed, but smartcard usb discovery was unable to be stopped.", null);
        }
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC) && Build.VERSION.SDK_INT < 34 && (cr3Var = this.mFidoLauncher) != null) {
            cr3Var.b();
        }
        ValueCallback<Uri[]> valueCallback = this.mFileUploadCallback;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
            this.mFileUploadCallback = null;
        }
        cr3 cr3Var2 = this.mFileChooserLauncher;
        if (cr3Var2 != null) {
            cr3Var2.b();
        }
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("WebViewAuthorizationFragment:onResume", "WebViewAuthorizationFragment onResume");
        if (!getSwitchBrowserCoordinator().isExpectingSwitchBrowserResume()) {
            synchronized (WebViewAuthorizationFragment.class) {
            }
            return;
        }
        try {
            throw new ClientException("null_object", "No switch browser bundle found to resume the flow.", null);
        } catch (ClientException e) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("WebViewAuthorizationFragment:resumeSwitchBrowser", "Error processing switch browser resume", e);
            sendResult(RawAuthorizationResult.fromException(e));
            finish();
        }
    }

    @Override // androidx.fragment.app.o
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("com.microsoft.identity.auth.intent", this.mAuthIntent);
        bundle.putBoolean("pkeyAuthStatus", this.mPkeyAuthStatus);
        bundle.putString("com.microsoft.identity.request.redirect.uri", this.mRedirectUri);
        bundle.putString("com.microsoft.identity.request.url", this.mAuthorizationRequestUrl);
        bundle.putSerializable("com.microsoft.identity.request.headers", this.mRequestHeaders);
        bundle.putSerializable("com.microsoft.identity.post.page.loaded.url", this.mPostPageLoadedJavascript);
        bundle.putBoolean("com.microsoft.identity.web.view.zoom.controls.enabled", this.webViewZoomControlsEnabled);
        bundle.putBoolean("com.microsoft.identity.web.view.zoom.enabled", this.webViewZoomEnabled);
        bundle.putBoolean("com.microsoft.identity.web.view.web.cp.enabled", this.isWebViewWebcpEnabledInBrokerlessCase);
        bundle.putString("utid", this.mUtid);
    }
}
