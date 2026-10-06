package com.microsoft.identity.client;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.microsoft.identity.client.configuration.AccountMode;
import com.microsoft.identity.client.configuration.HttpConfiguration;
import com.microsoft.identity.client.configuration.LoggerConfiguration;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.common.internal.authorities.UnknownAudience;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.internal.telemetry.TelemetryConfiguration;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authorities.Environment;
import com.microsoft.identity.common.java.authorities.UnknownAuthority;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import defpackage.c6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.l0;
import defpackage.u48;
import defpackage.y77;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PublicClientApplicationConfiguration {

    @y77("handle_null_taskaffinity")
    private Boolean handleNullTaskAffinity;

    @y77("authorization_in_current_task")
    private Boolean isAuthorizationInCurrentTask;

    @y77("account_mode")
    private AccountMode mAccountMode;
    private transient Context mAppContext;

    @y77("authorities")
    private List<Authority> mAuthorities;

    @y77("authorization_user_agent")
    private AuthorizationAgent mAuthorizationAgent;

    @y77("browser_safelist")
    private List<BrowserDescriptor> mBrowserSafeList;

    @y77("client_capabilities")
    private String mClientCapabilities;

    @y77("client_id")
    private String mClientId;

    @y77("environment")
    private Environment mEnvironment;

    @y77("http")
    private HttpConfiguration mHttpConfiguration;
    private transient boolean mIsSharedDevice = false;

    @y77("logging")
    private LoggerConfiguration mLoggerConfiguration;

    @y77("multiple_clouds_supported")
    private Boolean mMultipleCloudsSupported;
    private transient MsalOAuth2TokenCache mOAuth2TokenCache;

    @y77("preferred_browser")
    private BrowserDescriptor mPreferredBrowser;

    @y77("redirect_uri")
    private String mRedirectUri;

    @y77("minimum_required_broker_protocol_version")
    private String mRequiredBrokerProtocolVersion;

    @y77("telemetry")
    private TelemetryConfiguration mTelemetryConfiguration;

    @y77("broker_redirect_uri_registered")
    private Boolean mUseBroker;

    @y77("power_opt_check_for_network_req_enabled")
    private Boolean powerOptCheckEnabled;

    @y77("web_view_zoom_controls_enabled")
    private Boolean webViewZoomControlsEnabled;

    @y77("web_view_zoom_enabled")
    private Boolean webViewZoomEnabled;

    @y77("webauthn_capable")
    private Boolean webauthnCapable;

    @y77("webauthn_version")
    private String webauthnVersion;

    private boolean isValidAuthenticatorRedirectUri() {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = this.mAppContext.getPackageManager().getPackageInfo("com.azure.authenticator", 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0) {
                Signature signature = signatureArr[0];
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
                messageDigest.update(signature.toByteArray());
                String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 2);
                if ("Gu8CuaYmSV5CHWd6dz3tGPXIE+YTalCVIXi5lEBXpvUgsMKoHbU9Rqou3WNRNU1tsz8pvEADTCCJ5f02fbw9qw==".equalsIgnoreCase(strEncodeToString) || "pdAtoxfsEwbpQsIaua5Uobl5AQEjqt40aPXI7UY1lIW0NTmg0G4jHQ5T5mujSjjU06q4mEHs5hb6z/Mr0PNlmQ==".equalsIgnoreCase(strEncodeToString)) {
                    MessageDigest messageDigest2 = MessageDigest.getInstance("SHA");
                    messageDigest2.update(signature.toByteArray());
                    if (this.mRedirectUri.equalsIgnoreCase(new Uri.Builder().scheme("msauth").authority(this.mAppContext.getPackageName()).appendPath(Base64.encodeToString(messageDigest2.digest(), 2)).build().toString()) || this.mRedirectUri.equalsIgnoreCase("urn:ietf:wg:oauth:2.0:oob") || this.mRedirectUri.equalsIgnoreCase("msauth://Microsoft.AAD.BrokerPlugin")) {
                        return true;
                    }
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            com.microsoft.identity.common.internal.logging.Logger.error(e, "PublicClientApplicationConfiguration:isValidAuthenticatorRedirectUri", "Unexpected error in getting package info/signature for Authenticator");
            return false;
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            com.microsoft.identity.common.internal.logging.Logger.error(e, "PublicClientApplicationConfiguration:isValidAuthenticatorRedirectUri", "Unexpected error in getting package info/signature for Authenticator");
            return false;
        }
    }

    public final Boolean authorizationInCurrentTask() {
        return this.isAuthorizationInCurrentTask;
    }

    public void checkIntentFilterAddedToAppManifestForBrokerFlow() throws MsalClientException {
        boolean z;
        AuthorizationAgent authorizationAgent = this.mAuthorizationAgent;
        if (authorizationAgent == AuthorizationAgent.DEFAULT || authorizationAgent == AuthorizationAgent.BROWSER) {
            Context context = this.mAppContext;
            String str = this.mRedirectUri;
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                z = false;
            } else {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.setDataAndNormalize(Uri.parse(str));
                Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 64).iterator();
                z = false;
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    String name = BrowserTabActivity.class.getName();
                    if (LibraryConfiguration.getInstance().isAuthorizationInCurrentTask()) {
                        name = CurrentTaskBrowserTabActivity.class.getName();
                    }
                    if (!activityInfo.name.equals(name) || !activityInfo.packageName.equals(context.getPackageName())) {
                        String strL = dj7.l("Another application ", activityInfo.packageName, " is listening for the URL scheme ", str);
                        int i = com.microsoft.identity.common.logging.Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplicationConfiguration:validateCustomTabRedirectActivity", strL);
                        throw new MsalClientException("multiple_apps_listening_url_scheme", "More than one app is listening for the URL scheme defined for BrowserTabActivity in the AndroidManifest. The package name of this other app is: " + activityInfo.packageName, null);
                    }
                    z = true;
                }
            }
            if (!z) {
                String str2 = LibraryConfiguration.getInstance().isAuthorizationInCurrentTask() ? "CurrentTaskBrowserTabActivity" : "BrowserTabActivity";
                Uri uri = Uri.parse(this.mRedirectUri);
                StringBuilder sbP = u48.p("Intent filter for: ", str2, " is missing.  Please make sure you have the following activity in your AndroidManifest.xml \n\n<activity android:name=\"com.microsoft.identity.client.", str2, "\">\n\t<intent-filter>\n\t\t<action android:name=\"android.intent.action.VIEW\" />\n\t\t<category android:name=\"android.intent.category.DEFAULT\" />\n\t\t<category android:name=\"android.intent.category.BROWSABLE\" />\n\t\t<data\n\t\t\tandroid:host=\"");
                sbP.append(uri.getHost());
                sbP.append("\"\n\t\t\tandroid:path=\"");
                sbP.append(uri.getPath());
                sbP.append("\"\n\t\t\tandroid:scheme=\"");
                sbP.append(uri.getScheme());
                sbP.append("\" />\n\t</intent-filter>\n</activity>\n");
                throw new MsalClientException("app_manifest_validation_error", sbP.toString(), null);
            }
        }
        if (this.mUseBroker.booleanValue()) {
            Context context2 = this.mAppContext;
            if (context2 != null && "com.azure.authenticator".equalsIgnoreCase(context2.getPackageName()) && isValidAuthenticatorRedirectUri()) {
                return;
            }
            Context context3 = this.mAppContext;
            if (context3 != null) {
                String str3 = this.mRedirectUri;
                String strK = eq3.k("msauth://", context3.getPackageName(), "/");
                if (str3 == null || !str3.startsWith(strK)) {
                    com.microsoft.identity.common.internal.logging.Logger.warn("PublicClientApplicationConfiguration:checkIntentFilterAddedToAppManifestForBrokerFlow", "The app is still using legacy MSAL redirect uri. Switch to MSAL local auth.  For brokered auth, the redirect URI is expected to conform to 'msauth://<authority>/.*' where the authority in that uri is the package name of the app. This package name is listed as 'applicationId' in the build.gradle file.");
                    this.mUseBroker = Boolean.FALSE;
                    return;
                }
            }
            String packageName = this.mAppContext.getPackageName();
            try {
                Signature[] signatures = PackageHelper.getSignatures(PackageHelper.getPackageInfo(this.mAppContext.getPackageManager(), packageName));
                if (signatures.length > 0) {
                    Signature signature = signatures[0];
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                    messageDigest.update(signature.toByteArray());
                    Uri uriBuild = new Uri.Builder().scheme("msauth").authority(packageName).appendPath(Base64.encodeToString(messageDigest.digest(), 2)).build();
                    if (this.mRedirectUri.equalsIgnoreCase(uriBuild.toString())) {
                        return;
                    }
                    throw new MsalClientException("redirect_uri_validation_error", "The redirect URI in the configuration file doesn't match with the one generated with package name and signature hash. Please verify the uri in the config file and your app registration in Azure portal.We expected '" + uriBuild.toString() + "' and we received '" + this.mRedirectUri + "'.", null);
                }
            } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
                com.microsoft.identity.common.internal.logging.Logger.error(e, "PublicClientApplicationConfiguration:verifyRedirectUriWithAppSignature", "Unexpected error in verifyRedirectUriWithAppSignature()");
                throw new MsalClientException("unknown_error", "Unexpected error in verifyRedirectUriWithAppSignature()", e);
            }
        }
    }

    public final AccountMode getAccountMode() {
        return this.mAccountMode;
    }

    public final Context getAppContext() {
        return this.mAppContext;
    }

    public final List<Authority> getAuthorities() {
        return this.mAuthorities;
    }

    public final AuthorizationAgent getAuthorizationAgent() {
        return this.mAuthorizationAgent;
    }

    public final List<BrowserDescriptor> getBrowserSafeList() {
        return this.mBrowserSafeList;
    }

    public final String getClientCapabilities() {
        return this.mClientCapabilities;
    }

    public final String getClientId() {
        return this.mClientId;
    }

    public final Authority getDefaultAuthority() {
        List<Authority> list = this.mAuthorities;
        if (list == null) {
            return null;
        }
        int size = list.size();
        List<Authority> list2 = this.mAuthorities;
        if (size <= 1) {
            return list2.get(0);
        }
        for (Authority authority : list2) {
            if (authority.getDefault()) {
                return authority;
            }
        }
        return null;
    }

    public final Environment getEnvironment() {
        return this.mEnvironment;
    }

    public final boolean getIsSharedDevice() {
        return this.mIsSharedDevice;
    }

    public final LoggerConfiguration getLoggerConfiguration() {
        return this.mLoggerConfiguration;
    }

    public final Boolean getMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public final MsalOAuth2TokenCache getOAuth2TokenCache() {
        return this.mOAuth2TokenCache;
    }

    public final BrowserDescriptor getPreferredBrowser() {
        return this.mPreferredBrowser;
    }

    public final String getRedirectUri() {
        return this.mRedirectUri;
    }

    public final String getRequiredBrokerProtocolVersion() {
        return this.mRequiredBrokerProtocolVersion;
    }

    public final Boolean getUseBroker() {
        return this.mUseBroker;
    }

    public final String getWebauthnVersion() {
        return this.webauthnVersion;
    }

    public final Boolean isHandleNullTaskAffinityEnabled() {
        return this.handleNullTaskAffinity;
    }

    public final Boolean isPowerOptCheckForEnabled() {
        return this.powerOptCheckEnabled;
    }

    public final boolean isWebViewZoomControlsEnabled() {
        return this.webViewZoomControlsEnabled.booleanValue();
    }

    public final boolean isWebViewZoomEnabled() {
        return this.webViewZoomEnabled.booleanValue();
    }

    public final Boolean isWebauthnCapable() {
        return Boolean.valueOf(Boolean.TRUE.equals(this.webauthnCapable));
    }

    public final void mergeConfiguration(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        String str = publicClientApplicationConfiguration.mClientId;
        if (str == null) {
            str = this.mClientId;
        }
        this.mClientId = str;
        String str2 = publicClientApplicationConfiguration.mRedirectUri;
        if (str2 == null) {
            str2 = this.mRedirectUri;
        }
        this.mRedirectUri = str2;
        List<Authority> list = publicClientApplicationConfiguration.mAuthorities;
        if (list == null) {
            list = this.mAuthorities;
        }
        this.mAuthorities = list;
        AuthorizationAgent authorizationAgent = publicClientApplicationConfiguration.mAuthorizationAgent;
        if (authorizationAgent == null) {
            authorizationAgent = this.mAuthorizationAgent;
        }
        this.mAuthorizationAgent = authorizationAgent;
        Environment environment = publicClientApplicationConfiguration.mEnvironment;
        if (environment == null) {
            environment = this.mEnvironment;
        }
        this.mEnvironment = environment;
        HttpConfiguration httpConfiguration = publicClientApplicationConfiguration.mHttpConfiguration;
        if (httpConfiguration == null) {
            httpConfiguration = this.mHttpConfiguration;
        }
        this.mHttpConfiguration = httpConfiguration;
        Boolean bool = publicClientApplicationConfiguration.mMultipleCloudsSupported;
        if (bool == null) {
            bool = this.mMultipleCloudsSupported;
        }
        this.mMultipleCloudsSupported = bool;
        Boolean bool2 = publicClientApplicationConfiguration.mUseBroker;
        if (bool2 == null) {
            bool2 = this.mUseBroker;
        }
        this.mUseBroker = bool2;
        String str3 = publicClientApplicationConfiguration.mRequiredBrokerProtocolVersion;
        if (str3 == null) {
            str3 = this.mRequiredBrokerProtocolVersion;
        }
        this.mRequiredBrokerProtocolVersion = str3;
        BrowserDescriptor browserDescriptor = publicClientApplicationConfiguration.mPreferredBrowser;
        if (browserDescriptor == null) {
            browserDescriptor = this.mPreferredBrowser;
        }
        this.mPreferredBrowser = browserDescriptor;
        List<BrowserDescriptor> list2 = this.mBrowserSafeList;
        List<BrowserDescriptor> list3 = publicClientApplicationConfiguration.mBrowserSafeList;
        if (list2 == null) {
            this.mBrowserSafeList = list3;
        } else if (list3 != null) {
            list2.addAll(list3);
        }
        AccountMode accountMode = publicClientApplicationConfiguration.mAccountMode;
        if (accountMode == AccountMode.MULTIPLE || accountMode == null) {
            accountMode = this.mAccountMode;
        }
        this.mAccountMode = accountMode;
        String str4 = publicClientApplicationConfiguration.mClientCapabilities;
        if (str4 == null) {
            str4 = this.mClientCapabilities;
        }
        this.mClientCapabilities = str4;
        boolean z = publicClientApplicationConfiguration.mIsSharedDevice;
        if (z) {
            z = this.mIsSharedDevice;
        }
        this.mIsSharedDevice = z;
        LoggerConfiguration loggerConfiguration = publicClientApplicationConfiguration.mLoggerConfiguration;
        if (loggerConfiguration == null) {
            loggerConfiguration = this.mLoggerConfiguration;
        }
        this.mLoggerConfiguration = loggerConfiguration;
        Boolean bool3 = publicClientApplicationConfiguration.webViewZoomControlsEnabled;
        if (bool3 == null) {
            bool3 = this.webViewZoomControlsEnabled;
        }
        this.webViewZoomControlsEnabled = bool3;
        Boolean bool4 = publicClientApplicationConfiguration.webViewZoomEnabled;
        if (bool4 == null) {
            bool4 = this.webViewZoomEnabled;
        }
        this.webViewZoomEnabled = bool4;
        Boolean bool5 = publicClientApplicationConfiguration.powerOptCheckEnabled;
        if (bool5 == null) {
            bool5 = this.powerOptCheckEnabled;
        }
        this.powerOptCheckEnabled = bool5;
        Boolean bool6 = publicClientApplicationConfiguration.handleNullTaskAffinity;
        if (bool6 == null) {
            bool6 = this.handleNullTaskAffinity;
        }
        this.handleNullTaskAffinity = bool6;
        Boolean bool7 = publicClientApplicationConfiguration.isAuthorizationInCurrentTask;
        if (bool7 == null) {
            bool7 = this.isAuthorizationInCurrentTask;
        }
        this.isAuthorizationInCurrentTask = bool7;
        Boolean bool8 = publicClientApplicationConfiguration.webauthnCapable;
        if (bool8 == null) {
            bool8 = this.webauthnCapable;
        }
        this.webauthnCapable = bool8;
        String str5 = publicClientApplicationConfiguration.webauthnVersion;
        if (str5 == null) {
            str5 = this.webauthnVersion;
        }
        this.webauthnVersion = str5;
    }

    public final void setAppContext(Context context) {
        this.mAppContext = context;
    }

    public final void setIsSharedDevice(boolean z) {
        this.mIsSharedDevice = z;
    }

    public final void setOAuth2TokenCache(MsalOAuth2TokenCache msalOAuth2TokenCache) {
        this.mOAuth2TokenCache = msalOAuth2TokenCache;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003e  */
    public void validateConfiguration() {
        boolean z;
        AzureActiveDirectoryAudience azureActiveDirectoryAudience;
        List<BrowserDescriptor> list;
        String str = this.mRedirectUri;
        Context context = this.mAppContext;
        int i = 0;
        if (context != null && "com.azure.authenticator".equalsIgnoreCase(context.getPackageName())) {
            z = !isValidAuthenticatorRedirectUri();
        } else if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            try {
                Uri uri = Uri.parse(str);
                boolean zIsEmpty = TextUtils.isEmpty(uri.getScheme());
                boolean zIsEmpty2 = TextUtils.isEmpty(uri.getAuthority());
                if (zIsEmpty || zIsEmpty2) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (NullPointerException e) {
                com.microsoft.identity.common.internal.logging.Logger.errorPII(e);
            }
        }
        if (z) {
            c6.f("Invalid, null, or malformed redirect_uri supplied");
            return;
        }
        if (TextUtils.isEmpty(this.mClientId)) {
            c6.f("client_id cannot be null.  Invalid configuration.");
            return;
        }
        List<Authority> list2 = this.mAuthorities;
        if (list2 != null && list2.size() > 1) {
            Iterator<Authority> it = this.mAuthorities.iterator();
            while (it.hasNext()) {
                if (it.next().getDefault()) {
                    i++;
                }
            }
            if (i == 0) {
                c6.f("One authority in your configuration must be marked as default.");
                return;
            } else if (i > 1) {
                c6.f("More than one authority in your configuration is marked as default.  Only one authority may be default.");
                return;
            }
        }
        Boolean bool = this.handleNullTaskAffinity;
        if (bool != null && bool.booleanValue() && this.mAppContext.getPackageManager().checkPermission("android.permission.REORDER_TASKS", this.mAppContext.getPackageName()) != 0) {
            l0.e("You requested that we handle null taskAffinity but your manifest does not include the REORDER_TASKS permission");
            return;
        }
        if (!this.mAuthorizationAgent.equals(AuthorizationAgent.WEBVIEW) && ((list = this.mBrowserSafeList) == null || list.isEmpty())) {
            c6.f("Null browser safe list configured.");
            return;
        }
        for (Authority authority : this.mAuthorities) {
            if (authority instanceof UnknownAuthority) {
                c6.f("Unrecognized authority type -- null, invalid or unknown type specified.");
                return;
            } else if ((authority instanceof AzureActiveDirectoryAuthority) && (azureActiveDirectoryAudience = ((AzureActiveDirectoryAuthority) authority).mAudience) != null && (azureActiveDirectoryAudience instanceof UnknownAudience)) {
                c6.f("Unrecognized audience type for AzureActiveDirectoryAuthority -- null, invalid, or unknown type specified");
                return;
            }
        }
    }
}
