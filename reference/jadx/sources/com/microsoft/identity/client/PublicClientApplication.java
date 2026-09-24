package com.microsoft.identity.client;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.microsoft.identity.client.configuration.AccountMode;
import com.microsoft.identity.client.configuration.LoggerConfiguration;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalDeclinedScopeException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.internal.AsyncResult;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.client.internal.controllers.MSALControllerFactory;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.commands.GetDeviceModeCommand;
import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.internal.net.cache.HttpCache;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.java.authorities.Authority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryB2CAuthority;
import com.microsoft.identity.common.java.authorities.CIAMAuthority;
import com.microsoft.identity.common.java.cache.CacheKeyValueDelegate;
import com.microsoft.identity.common.java.cache.MicrosoftStsAccountCredentialAdapter;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.cache.SharedPreferencesAccountCredentialCache;
import com.microsoft.identity.common.java.commands.CommandCallback;
import com.microsoft.identity.common.java.commands.InteractiveTokenCommand;
import com.microsoft.identity.common.java.commands.SilentTokenCommand;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.controllers.CommandDispatcher;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.nativeauth.NativeAuthPublicClientApplication;
import com.microsoft.identity.nativeauth.NativeAuthPublicClientApplicationConfiguration;
import defpackage.c6;
import defpackage.f6;
import defpackage.g84;
import defpackage.l0;
import defpackage.q;
import defpackage.ut5;
import defpackage.vr6;
import defpackage.vt5;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PublicClientApplication {
    public static final /* synthetic */ int a = 0;
    private static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();
    protected final PublicClientApplicationConfiguration mPublicClientConfiguration;

    /* JADX INFO: renamed from: com.microsoft.identity.client.PublicClientApplication$8, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass8 implements IPublicClientApplication$ApplicationCreatedListener {
        final /* synthetic */ ResultFuture val$future;

        public AnonymousClass8(ResultFuture resultFuture) {
            this.val$future = resultFuture;
        }
    }

    public PublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) throws MsalClientException {
        this.mPublicClientConfiguration = publicClientApplicationConfiguration;
        Context appContext = publicClientApplicationConfiguration.getAppContext();
        int i = com.microsoft.identity.common.logging.Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("PublicClientApplication:setupTelemetry", "Telemetry configuration is null. Telemetry is disabled.");
        Telemetry.Builder builder = new Telemetry.Builder();
        builder.withContext(appContext);
        builder.build();
        AzureActiveDirectory.setEnvironment(publicClientApplicationConfiguration.getEnvironment());
        Authority.addKnownAuthorities(publicClientApplicationConfiguration.getAuthorities());
        LoggerConfiguration loggerConfiguration = publicClientApplicationConfiguration.getLoggerConfiguration();
        if (loggerConfiguration != null) {
            Logger.LogLevel logLevel = loggerConfiguration.getLogLevel();
            boolean zIsPiiEnabled = loggerConfiguration.isPiiEnabled();
            boolean zIsLogcatEnabled = loggerConfiguration.isLogcatEnabled();
            Logger logger = Logger.getInstance();
            if (logLevel != null) {
                logger.setLogLevel(logLevel);
            }
            logger.setEnablePII(zIsPiiEnabled);
            logger.setEnableLogcatLog(zIsLogcatEnabled);
        }
        if (publicClientApplicationConfiguration.getOAuth2TokenCache() == null) {
            l0.e("TSL support mandates use of the MsalOAuth2TokenCache");
            throw null;
        }
        publicClientApplicationConfiguration.checkIntentFilterAddedToAppManifestForBrokerFlow();
        checkInternetPermission(publicClientApplicationConfiguration);
        HttpCache.initialize$1(appContext.getCacheDir());
        com.microsoft.identity.common.java.logging.Logger.info("PublicClientApplication:initializeApplication", "Create new public client application.");
    }

    public static void checkInternetPermission(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        PackageManager packageManager = publicClientApplicationConfiguration.getAppContext().getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", publicClientApplicationConfiguration.getAppContext().getPackageName()) == 0 && packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", publicClientApplicationConfiguration.getAppContext().getPackageName()) == 0) {
            return;
        }
        l0.e("android.permission.Internet or android.permission.ACCESS_NETWORK_STATE is missing");
    }

    public static SingleAccountPublicClientApplication createSingleAccountPublicClientApplication(Context context, int i) throws MsalException, InterruptedException {
        MsalUtils.validateNonNullArgument(context, "context");
        PublicClientApplicationConfiguration publicClientApplicationConfigurationLoadConfiguration = AccountAdapter.loadConfiguration(context, i);
        MsalUtils.validateNonNullArgument(context, "context");
        int i2 = com.microsoft.identity.common.logging.Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("PublicClientApplicationConfigurationFactory:loadDefaultConfiguration", "Loading default configuration");
        final PublicClientApplicationConfiguration publicClientApplicationConfigurationLoadConfiguration2 = AccountAdapter.loadConfiguration(context, R.raw.msal_default_config);
        publicClientApplicationConfigurationLoadConfiguration2.setAppContext(context);
        if (publicClientApplicationConfigurationLoadConfiguration != null) {
            publicClientApplicationConfigurationLoadConfiguration2.mergeConfiguration(publicClientApplicationConfigurationLoadConfiguration);
            publicClientApplicationConfigurationLoadConfiguration2.validateConfiguration();
        }
        LibraryConfiguration.LibraryConfigurationBuilder libraryConfigurationBuilder = new LibraryConfiguration.LibraryConfigurationBuilder();
        libraryConfigurationBuilder.authorizationInCurrentTask(publicClientApplicationConfigurationLoadConfiguration2.authorizationInCurrentTask().booleanValue());
        LibraryConfiguration.intializeLibraryConfiguration(libraryConfigurationBuilder.build());
        PlatformComponents platformComponentsCreateFromContext = LibraryInfoHelper.createFromContext(context);
        com.microsoft.identity.common.java.logging.Logger.verbose("MsalOAuth2TokenCache:create", "Creating MsalOAuth2TokenCache");
        publicClientApplicationConfigurationLoadConfiguration2.setOAuth2TokenCache(new MsalOAuth2TokenCache(platformComponentsCreateFromContext, new SharedPreferencesAccountCredentialCache(new CacheKeyValueDelegate(), platformComponentsCreateFromContext.getStorageSupplier().getEncryptedNameValueStore("com.microsoft.identity.client.account_credential_cache")), new MicrosoftStsAccountCredentialAdapter()));
        MsalUtils.validateNonNullArgument(publicClientApplicationConfigurationLoadConfiguration2, "configuration");
        MsalUtils.throwOnMainThread("createPublicClientApplication");
        ResultFuture resultFuture = new ResultFuture();
        final AnonymousClass8 anonymousClass8 = new AnonymousClass8(resultFuture);
        try {
            validateAccountModeConfiguration(publicClientApplicationConfigurationLoadConfiguration2);
            CommandDispatcher.submitSilent(new GetDeviceModeCommand(MsalUtils.createCommandParameters(publicClientApplicationConfigurationLoadConfiguration2, publicClientApplicationConfigurationLoadConfiguration2.getOAuth2TokenCache()), new MSALControllerFactory(publicClientApplicationConfigurationLoadConfiguration2), new CommandCallback<Boolean, BaseException>() { // from class: com.microsoft.identity.client.PublicClientApplication.9
                @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                public final void onError(Object obj) {
                    ((AnonymousClass8) anonymousClass8).val$future.setResult(new AsyncResult(null, LibraryInfoHelper.msalExceptionFromBaseException((BaseException) obj)));
                }

                @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                public final void onTaskCompleted(Object obj) {
                    Boolean bool = (Boolean) obj;
                    IPublicClientApplication$ApplicationCreatedListener iPublicClientApplication$ApplicationCreatedListener = anonymousClass8;
                    boolean zBooleanValue = bool.booleanValue();
                    PublicClientApplicationConfiguration publicClientApplicationConfiguration = publicClientApplicationConfigurationLoadConfiguration2;
                    publicClientApplicationConfiguration.setIsSharedDevice(zBooleanValue);
                    try {
                        boolean z = publicClientApplicationConfiguration instanceof NativeAuthPublicClientApplicationConfiguration;
                        AccountMode accountMode = AccountMode.SINGLE;
                        if (z && publicClientApplicationConfiguration.getAccountMode() == accountMode) {
                            publicClientApplicationConfiguration.validateConfiguration();
                            ((AnonymousClass8) iPublicClientApplication$ApplicationCreatedListener).val$future.setResult(new AsyncResult(new NativeAuthPublicClientApplication((NativeAuthPublicClientApplicationConfiguration) publicClientApplicationConfiguration), null));
                            return;
                        }
                        if (publicClientApplicationConfiguration.getAccountMode() != accountMode && !bool.booleanValue()) {
                            ((AnonymousClass8) iPublicClientApplication$ApplicationCreatedListener).val$future.setResult(new AsyncResult(new MultipleAccountPublicClientApplication(publicClientApplicationConfiguration), null));
                            return;
                        }
                        ((AnonymousClass8) iPublicClientApplication$ApplicationCreatedListener).val$future.setResult(new AsyncResult(new SingleAccountPublicClientApplication(publicClientApplicationConfiguration), null));
                    } catch (MsalClientException e) {
                        ((AnonymousClass8) iPublicClientApplication$ApplicationCreatedListener).val$future.setResult(new AsyncResult(null, e));
                    }
                }

                @Override // com.microsoft.identity.common.java.commands.CommandCallback
                public final void onCancel() {
                }
            }, "1200"));
        } catch (MsalClientException e) {
            anonymousClass8.val$future.setResult(new AsyncResult(null, e));
        }
        try {
            AsyncResult asyncResult = (AsyncResult) resultFuture.get();
            if (!asyncResult.getSuccess()) {
                throw asyncResult.getException();
            }
            PublicClientApplication publicClientApplication = (PublicClientApplication) asyncResult.getResult();
            if (publicClientApplication instanceof SingleAccountPublicClientApplication) {
                return (SingleAccountPublicClientApplication) publicClientApplication;
            }
            if (publicClientApplicationConfigurationLoadConfiguration2.getAccountMode() != AccountMode.SINGLE) {
                throw new MsalClientException("single_account_pca_init_fail_account_mode", "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication.", null);
            }
            throw new MsalClientException("single_account_pca_init_fail_unknown_reason", "A single account public client application could not be created for unknown reasons.", null);
        } catch (ExecutionException e2) {
            throw new MsalClientException("unknown_error", "Unexpected error while initializing PCA.", e2);
        }
    }

    public static void postAuthResult(LocalAuthenticationResult localAuthenticationResult, TokenParameters tokenParameters, SilentAuthenticationCallback silentAuthenticationCallback) {
        AcquireTokenSilentParameters acquireTokenSilentParameters;
        if (silentAuthenticationCallback == null) {
            l0.e("callback cannot be null or empty");
            return;
        }
        List listAsList = Arrays.asList(localAuthenticationResult.getScope());
        List<String> scopes = tokenParameters.getScopes();
        HashSet hashSet = new HashSet();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            hashSet.add(((String) it.next()).toLowerCase(Locale.ROOT));
        }
        HashSet<String> hashSet2 = new HashSet();
        Iterator<String> it2 = scopes.iterator();
        while (it2.hasNext()) {
            hashSet2.add(it2.next().toLowerCase(Locale.ROOT));
        }
        ArrayList arrayList = new ArrayList();
        for (String str : hashSet2) {
            if (!hashSet.contains(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            silentAuthenticationCallback.onSuccess(new AuthenticationResult(localAuthenticationResult.getCorrelationId(), localAuthenticationResult.getCacheRecordWithTenantProfileData()));
            return;
        }
        List<String> listAsList2 = Arrays.asList(localAuthenticationResult.getScope());
        String str2 = "Returning DeclinedScopeException as not all requested scopes are granted, Requested scopes: " + tokenParameters.getScopes().toString() + " Granted scopes:" + listAsList2.toString();
        int i = com.microsoft.identity.common.logging.Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("com.microsoft.identity.client.AuthenticationResultAdapter:declinedScopeExceptionFromResult", str2);
        if (tokenParameters instanceof AcquireTokenSilentParameters) {
            acquireTokenSilentParameters = (AcquireTokenSilentParameters) tokenParameters;
        } else {
            AcquireTokenParameters acquireTokenParameters = (AcquireTokenParameters) tokenParameters;
            Account account = (Account) AccountAdapter.adapt(localAuthenticationResult.getCacheRecordWithTenantProfileData()).get(0);
            AcquireTokenSilentParameters.Builder builder = new AcquireTokenSilentParameters.Builder();
            builder.withCallback$1(acquireTokenParameters.getCallback());
            acquireTokenSilentParameters = new AcquireTokenSilentParameters(builder.fromAuthority(acquireTokenParameters.getAuthority()).withClaims(acquireTokenParameters.getClaimsRequest()).withScopes(acquireTokenParameters.getScopes()).forAccount(account));
        }
        acquireTokenSilentParameters.setScopes(listAsList2);
        silentAuthenticationCallback.onError(new MsalDeclinedScopeException(listAsList2, arrayList));
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    public static AccountRecord selectAccountRecordForTokenRequest(PublicClientApplicationConfiguration publicClientApplicationConfiguration, TokenParameters tokenParameters) throws ServiceException, ClientException {
        TenantProfile tenantProfile;
        if (TextUtils.isEmpty(tokenParameters.getAuthority())) {
            tokenParameters.setAuthority(publicClientApplicationConfiguration.getDefaultAuthority().getAuthorityURL().toString());
        }
        if (tokenParameters.getAccount() == null) {
            return null;
        }
        TenantProfile account = tokenParameters.getAccount();
        MultiTenantAccount multiTenantAccount = (MultiTenantAccount) account;
        Authority authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(tokenParameters.getAuthority());
        if ((authorityFromAuthorityUrl instanceof AzureActiveDirectoryB2CAuthority) || (authorityFromAuthorityUrl instanceof CIAMAuthority)) {
            String clientId = publicClientApplicationConfiguration.getClientId();
            MsalOAuth2TokenCache oAuth2TokenCache = publicClientApplicationConfiguration.getOAuth2TokenCache();
            String homeAccountId = multiTenantAccount.getHomeAccountId();
            String tenantId = multiTenantAccount.getTenantId();
            if (!StringUtil.isNullOrEmpty(homeAccountId)) {
                return oAuth2TokenCache.getAccount(null, clientId, homeAccountId, tenantId);
            }
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("AccountAdapter:getAccountInternal", "homeAccountIdentifier was null or empty -- invalid criteria");
            return null;
        }
        if (!(authorityFromAuthorityUrl instanceof AzureActiveDirectoryAuthority)) {
            g84.j("Unsupported Authority type: ".concat(authorityFromAuthorityUrl.getClass().getSimpleName()));
            return null;
        }
        AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authorityFromAuthorityUrl;
        String tenantId2 = azureActiveDirectoryAuthority.getAudience().getTenantId();
        AccountRecord accountRecord = new AccountRecord();
        accountRecord.setEnvironment(multiTenantAccount.getEnvironment());
        accountRecord.setHomeAccountId(multiTenantAccount.getHomeAccountId());
        if (tenantId2 == null) {
            f6.n("inputString is marked non-null but is null");
            return null;
        }
        try {
            UUID.fromString(tenantId2);
        } catch (IllegalArgumentException unused) {
            if (!AzureActiveDirectoryAudience.isHomeTenantAlias(tenantId2)) {
                tenantId2 = azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authorityFromAuthorityUrl.getAuthorityURL().toString());
            }
        }
        accountRecord.setRealm(tenantId2);
        if (!AzureActiveDirectoryAudience.isHomeTenantAlias(tenantId2)) {
            Map<String, ?> claims = multiTenantAccount.getClaims();
            if (!((claims == null || claims.isEmpty()) ? false : claims.get("tid").equals(tenantId2))) {
                tenantProfile = multiTenantAccount.getTenantProfiles().get(tenantId2);
            } else if (multiTenantAccount.getClaims() != null) {
                tenantProfile = multiTenantAccount;
            } else {
                tenantProfile = null;
            }
        } else if (multiTenantAccount.getClaims() != null) {
            tenantProfile = multiTenantAccount;
        } else {
            tenantProfile = null;
        }
        if (tenantProfile != null || !(tokenParameters instanceof AcquireTokenSilentParameters)) {
            account = tenantProfile;
            break;
        }
        if (account.getClaims() == null) {
            Iterator<TenantProfile> it = multiTenantAccount.getTenantProfiles().values().iterator();
            do {
                if (!it.hasNext()) {
                    account = tenantProfile;
                    break;
                }
                account = it.next();
            } while (account.getClaims() == null);
        }
        if (account != null) {
            accountRecord.setLocalAccountId(account.getId());
            accountRecord.setUsername(account.getUsername());
            return accountRecord;
        }
        String strJ = xs1.j("No account record found for IAccount with request tenantId: ", tenantId2);
        int i2 = com.microsoft.identity.common.logging.Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warnPII("PublicClientApplication:selectAccountRecordForTokenRequest", strJ);
        q.i("no_account_found", "No account record found for IAccount", null);
        return null;
    }

    private static void validateAccountModeConfiguration(PublicClientApplicationConfiguration publicClientApplicationConfiguration) throws MsalClientException {
        if (publicClientApplicationConfiguration.getAccountMode() == AccountMode.SINGLE && publicClientApplicationConfiguration.getDefaultAuthority() != null && (publicClientApplicationConfiguration.getDefaultAuthority() instanceof AzureActiveDirectoryB2CAuthority)) {
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("PublicClientApplication:validateAccountModeConfiguration", "Warning! B2C applications should use MultipleAccountPublicClientApplication. Use of SingleAccount mode with multiple IEF policies is unsupported.");
            if (publicClientApplicationConfiguration.getAuthorities().size() > 1) {
                throw new MsalClientException("SingleAccountPublicClientApplication cannot be used with multiple B2C policies.", null, null);
            }
        }
    }

    public final void acquireTokenInternal(final AcquireTokenParameters acquireTokenParameters, final String str) {
        sBackgroundExecutor.submit(LibraryInfoHelper.wrap(new Runnable() { // from class: com.microsoft.identity.client.PublicClientApplication.15
            @Override // java.lang.Runnable
            public final void run() {
                PublicClientApplication publicClientApplication = PublicClientApplication.this;
                PublicClientApplicationConfiguration publicClientApplicationConfiguration = publicClientApplication.mPublicClientConfiguration;
                AcquireTokenParameters acquireTokenParameters2 = acquireTokenParameters;
                final CommandCallback commandCallback = publicClientApplication.getCommandCallback(acquireTokenParameters2.getCallback(), acquireTokenParameters2);
                try {
                    Activity activity = acquireTokenParameters2.getActivity();
                    List<String> scopes = acquireTokenParameters2.getScopes();
                    AuthenticationCallback callback = acquireTokenParameters2.getCallback();
                    MsalUtils.validateNonNullArg(activity, "activity");
                    MsalUtils.validateNonNullArg(scopes, "scopes");
                    MsalUtils.validateNonNullArg(callback, "callback");
                    acquireTokenParameters2.setAccountRecord(PublicClientApplication.selectAccountRecordForTokenRequest(publicClientApplicationConfiguration, acquireTokenParameters2));
                    AndroidInteractiveTokenCommandParameters androidInteractiveTokenCommandParametersCreateInteractiveTokenCommandParameters = MsalUtils.createInteractiveTokenCommandParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache(), acquireTokenParameters2);
                    CommandDispatcher.beginInteractive(new InteractiveTokenCommand(androidInteractiveTokenCommandParametersCreateInteractiveTokenCommandParameters, new MSALControllerFactory(publicClientApplicationConfiguration, androidInteractiveTokenCommandParametersCreateInteractiveTokenCommandParameters.getAuthority()), commandCallback, str));
                } catch (Exception e) {
                    final BaseException baseExceptionBaseExceptionFromException = PropertyBagUtil.baseExceptionFromException(e);
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.microsoft.identity.client.PublicClientApplication.15.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            commandCallback.onError(baseExceptionBaseExceptionFromException);
                        }
                    });
                }
            }
        }));
    }

    public final AuthenticationResult acquireTokenSilentInternal(final AcquireTokenSilentParameters acquireTokenSilentParameters) throws MsalException, InterruptedException {
        if (acquireTokenSilentParameters.getCallback() != null) {
            c6.f("Do not provide callback for synchronous methods");
            return null;
        }
        final ResultFuture resultFuture = new ResultFuture();
        acquireTokenSilentParameters.setCallback(new SilentAuthenticationCallback() { // from class: com.microsoft.identity.client.PublicClientApplication.17
            @Override // com.microsoft.identity.client.SilentAuthenticationCallback
            public final void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }

            @Override // com.microsoft.identity.client.SilentAuthenticationCallback
            public final void onSuccess(AuthenticationResult authenticationResult) {
                resultFuture.setResult(new AsyncResult(authenticationResult, null));
            }
        });
        sBackgroundExecutor.submit(LibraryInfoHelper.wrap(new Runnable() { // from class: com.microsoft.identity.client.PublicClientApplication.16
            @Override // java.lang.Runnable
            public final void run() {
                PublicClientApplication publicClientApplication = PublicClientApplication.this;
                PublicClientApplicationConfiguration publicClientApplicationConfiguration = publicClientApplication.mPublicClientConfiguration;
                AcquireTokenSilentParameters acquireTokenSilentParameters2 = acquireTokenSilentParameters;
                final CommandCallback commandCallback = publicClientApplication.getCommandCallback(acquireTokenSilentParameters2.getCallback(), acquireTokenSilentParameters2);
                try {
                    String authority = acquireTokenSilentParameters2.getAuthority();
                    Account account = acquireTokenSilentParameters2.getAccount();
                    List<String> scopes = acquireTokenSilentParameters2.getScopes();
                    SilentAuthenticationCallback callback = acquireTokenSilentParameters2.getCallback();
                    MsalUtils.validateNonNullArg(authority, "authority");
                    MsalUtils.validateNonNullArg(account, "account");
                    MsalUtils.validateNonNullArg(callback, "callback");
                    MsalUtils.validateNonNullArg(scopes, "scopes");
                    acquireTokenSilentParameters2.setAccountRecord(PublicClientApplication.selectAccountRecordForTokenRequest(publicClientApplicationConfiguration, acquireTokenSilentParameters2));
                    SilentTokenCommandParameters silentTokenCommandParametersCreateSilentTokenCommandParameters = MsalUtils.createSilentTokenCommandParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache(), acquireTokenSilentParameters2);
                    CommandDispatcher.submitSilent(new SilentTokenCommand(silentTokenCommandParametersCreateSilentTokenCommandParameters, new MSALControllerFactory(publicClientApplicationConfiguration, silentTokenCommandParametersCreateSilentTokenCommandParameters.getAuthority()), commandCallback, "23"));
                } catch (Exception e) {
                    final BaseException baseExceptionBaseExceptionFromException = PropertyBagUtil.baseExceptionFromException(e);
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.microsoft.identity.client.PublicClientApplication.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            commandCallback.onError(baseExceptionBaseExceptionFromException);
                        }
                    });
                }
            }
        }));
        try {
            AsyncResult asyncResult = (AsyncResult) resultFuture.get();
            if (asyncResult.getSuccess()) {
                return (AuthenticationResult) asyncResult.getResult();
            }
            throw asyncResult.getException();
        } catch (ExecutionException e) {
            throw new MsalClientException("unknown_error", "Unexpected error while acquiring token.", e);
        }
    }

    public CommandCallback getCommandCallback(final SilentAuthenticationCallback silentAuthenticationCallback, final TokenParameters tokenParameters) {
        return new CommandCallback<LocalAuthenticationResult, BaseException>(this) { // from class: com.microsoft.identity.client.PublicClientApplication.19
            @Override // com.microsoft.identity.common.java.commands.CommandCallback
            public final void onCancel() {
                SilentAuthenticationCallback silentAuthenticationCallback2 = silentAuthenticationCallback;
                if (!(silentAuthenticationCallback2 instanceof AuthenticationCallback)) {
                    l0.e("Silent requests cannot be cancelled.");
                    return;
                }
                vr6 vr6Var = vr6.INSTANCE;
                vt5 vt5Var = ((ut5) ((AuthenticationCallback) silentAuthenticationCallback2)).a;
                vr6.i$default(vr6Var, vt5Var.b, "User cancelled login.", null, 4, null);
                vt5Var.j(false, null);
            }

            @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
            public final void onError(Object obj) {
                MsalException msalExceptionMsalExceptionFromBaseException = LibraryInfoHelper.msalExceptionFromBaseException((BaseException) obj);
                SilentAuthenticationCallback silentAuthenticationCallback2 = silentAuthenticationCallback;
                if (silentAuthenticationCallback2 != null) {
                    silentAuthenticationCallback2.onError(msalExceptionMsalExceptionFromBaseException);
                } else {
                    l0.e("callback cannot be null or empty");
                }
            }

            @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
            public final void onTaskCompleted(Object obj) {
                PublicClientApplication.postAuthResult((LocalAuthenticationResult) obj, tokenParameters, silentAuthenticationCallback);
            }
        };
    }

    public final PublicClientApplicationConfiguration getConfiguration() {
        return this.mPublicClientConfiguration;
    }
}
