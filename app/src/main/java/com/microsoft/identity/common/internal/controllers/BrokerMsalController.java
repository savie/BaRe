package com.microsoft.identity.common.internal.controllers;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.components.AndroidStorageSupplier;
import com.microsoft.identity.common.internal.broker.BrokerActivity;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.broker.ipc.BrokerOperationBundle;
import com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy;
import com.microsoft.identity.common.internal.cache.ActiveBrokerCacheUpdater;
import com.microsoft.identity.common.internal.cache.ClientActiveBrokerCache;
import com.microsoft.identity.common.internal.cache.HelloCache;
import com.microsoft.identity.common.internal.cache.HelloCacheResult;
import com.microsoft.identity.common.internal.commands.parameters.AndroidInteractiveTokenCommandParameters;
import com.microsoft.identity.common.internal.result.MsalBrokerResultAdapter;
import com.microsoft.identity.common.internal.telemetry.events.ApiEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.ApiStartEvent;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.java.authscheme.PopAuthenticationSchemeWithClientKeyInternal;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.commands.parameters.TokenCommandParameters;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.ServiceException;
import com.microsoft.identity.common.java.exception.UnsupportedBrokerException;
import com.microsoft.identity.common.java.interfaces.PlatformComponents;
import com.microsoft.identity.common.java.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.java.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.java.providers.oauth2.IDToken;
import com.microsoft.identity.common.java.request.SdkType;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.util.FileUtil;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.LocalBroadcaster;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import com.microsoft.identity.common.logging.Logger;
import defpackage.mj5;
import defpackage.q;
import defpackage.u48;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrokerMsalController extends BaseController {
    private final String mActiveBrokerPackageName;
    private final Context mApplicationContext;
    private ResultFuture<Bundle> mBrokerResultFuture;
    private final PlatformComponents mComponents;
    private final HelloCache mHelloCache;
    private BrokerOperationExecutor mOperationExecutor;
    protected final Telemetry.Builder mRequestAdapter = new Telemetry.Builder();
    protected final MsalBrokerResultAdapter mResultAdapter = new MsalBrokerResultAdapter();
    private final String mMaxMsalBrokerProtocolVersion = "20.0";

    public BrokerMsalController(Context context, PlatformComponents platformComponents, String str) {
        this.mComponents = platformComponents;
        this.mApplicationContext = context;
        this.mActiveBrokerPackageName = str;
        this.mHelloCache = new HelloCache(context, platformComponents, str);
    }

    public static void access$100(BrokerMsalController brokerMsalController, TokenCommandParameters tokenCommandParameters) throws ClientException {
        String requiredBrokerProtocolVersion = tokenCommandParameters.getRequiredBrokerProtocolVersion();
        if ((tokenCommandParameters.getAuthenticationScheme() instanceof PopAuthenticationSchemeWithClientKeyInternal) && !FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(requiredBrokerProtocolVersion, "11.0")) {
            throw new ClientException("auth_scheme_not_supported", xs1.j("The min broker protocol version for PopAuthenticationSchemeWithClientKey should be equal or more than 11.0. Current required version is set to: ", requiredBrokerProtocolVersion), null);
        }
        if (tokenCommandParameters.hasNestedAppParameters()) {
            if (!StringUtil.isNullOrEmpty(tokenCommandParameters.getChildClientId()) && !StringUtil.isNullOrEmpty(tokenCommandParameters.getChildRedirectUri()) && !FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(requiredBrokerProtocolVersion, "15.0")) {
                throw new ClientException("nested_app_auth_not_supported", xs1.j("The min broker protocol version for Nested app auth should be equal or more than 15.0. Current required version is set to: ", requiredBrokerProtocolVersion), null);
            }
            if (StringUtil.isNullOrEmpty(tokenCommandParameters.getChildClientId())) {
                q.i("nested_app_invalid_parameters", "ClientId of the nested app is null or empty", null);
            } else if (StringUtil.isNullOrEmpty(tokenCommandParameters.getChildRedirectUri())) {
                q.i("nested_app_invalid_parameters", "RedirectURI of the nested app is null or empty", null);
            } else {
                if (tokenCommandParameters.getSdkType() == SdkType.MSAL_CPP) {
                    return;
                }
                q.i("nested_app_invalid_parameters", "Nested app auth is only supported for request originating from OneAuth", null);
            }
        }
    }

    private synchronized BrokerOperationExecutor getBrokerOperationExecutor() {
        try {
            if (this.mOperationExecutor == null) {
                ArrayList ipcStrategies = PropertyBagUtil.getIpcStrategies(this.mApplicationContext, this.mActiveBrokerPackageName);
                Context context = this.mApplicationContext;
                AndroidStorageSupplier storageSupplier = this.mComponents.getStorageSupplier();
                int i = ClientActiveBrokerCache.a;
                storageSupplier.getClass();
                AbstractSharedPrefNameValueStorage encryptedNameValueStore = storageSupplier.getEncryptedNameValueStore("BROKER_METADATA_CACHE_STORE_ON_CLIENT_SDK_SIDE");
                mj5 mj5Var = ClientActiveBrokerCache.sClientSdkSideLock;
                mj5Var.getClass();
                this.mOperationExecutor = new BrokerOperationExecutor(ipcStrategies, new ActiveBrokerCacheUpdater(context, new ClientActiveBrokerCache(encryptedNameValueStore, mj5Var)));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mOperationExecutor;
    }

    private static void saveMsaAccountToCache(Bundle bundle, MsalOAuth2TokenCache msalOAuth2TokenCache) throws BaseException {
        BrokerResult brokerResultBrokerResultFromBundle = MsalBrokerResultAdapter.brokerResultFromBundle(bundle);
        if (bundle.getBoolean("broker_request_v2_success") && AzureActiveDirectoryAudience.MSA_MEGA_TENANT_ID.equalsIgnoreCase(brokerResultBrokerResultFromBundle.getTenantId())) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:saveMsaAccountToCache", "Result returned for MSA Account, saving to cache");
            if (StringUtil.isNullOrEmpty(brokerResultBrokerResultFromBundle.getClientInfo())) {
                com.microsoft.identity.common.java.logging.Logger.error("BrokerMsalController:saveMsaAccountToCache", "ClientInfo is empty.", null);
                q.i("unknown_error", "ClientInfo is empty.", null);
                return;
            }
            try {
                ClientInfo clientInfo = new ClientInfo(brokerResultBrokerResultFromBundle.getClientInfo());
                MicrosoftStsAccount microsoftStsAccount = new MicrosoftStsAccount(new IDToken(brokerResultBrokerResultFromBundle.getIdToken()), clientInfo);
                com.microsoft.identity.common.java.logging.Logger.verbose("MicrosoftStsAccount", "Init: MicrosoftStsAccount");
                microsoftStsAccount.setEnvironment(brokerResultBrokerResultFromBundle.getEnvironment());
                msalOAuth2TokenCache.setSingleSignOnState(microsoftStsAccount, new MicrosoftRefreshToken(brokerResultBrokerResultFromBundle.getRefreshToken(), clientInfo, brokerResultBrokerResultFromBundle.getScope(), brokerResultBrokerResultFromBundle.getClientId(), brokerResultBrokerResultFromBundle.getEnvironment(), brokerResultBrokerResultFromBundle.getFamilyId()));
            } catch (ServiceException e) {
                com.microsoft.identity.common.java.logging.Logger.errorPII(e, "BrokerMsalController:saveMsaAccountToCache", "Exception while creating Idtoken or ClientInfo, cannot save MSA account tokens");
                throw new ClientException("invalid_jwt", e.getMessage(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyBrokerVersionIsSupported(Bundle bundle, String str) throws UnsupportedBrokerException {
        if (bundle == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:verifyBrokerVersionIsSupported", "result bundle is null");
            return;
        }
        try {
            this.mResultAdapter.getClass();
            BrokerResult brokerResultBrokerResultFromBundle = MsalBrokerResultAdapter.brokerResultFromBundle(bundle);
            if (!brokerResultBrokerResultFromBundle.isSuccess() && "unsupported_broker_version".equals(brokerResultBrokerResultFromBundle.getErrorCode())) {
                this.mHelloCache.saveHandshakeError(str, "20.0");
                throw new UnsupportedBrokerException(this.mActiveBrokerPackageName);
            }
        } catch (ClientException unused) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:verifyBrokerVersionIsSupported", "ResultBundle does not contain BrokerResult. So, this is not likely a broker version supported issue. Continuing.");
        }
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final AcquireTokenResult acquireToken(final InteractiveTokenCommandParameters interactiveTokenCommandParameters) throws Exception {
        try {
            Bundle bundleAcquireTokenInternal = acquireTokenInternal(interactiveTokenCommandParameters, (Intent) getBrokerOperationExecutor().execute(interactiveTokenCommandParameters, new BrokerOperationExecutor.BrokerOperation<Intent>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.2
                private String negotiatedBrokerProtocolVersion;

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final Intent extractResultBundle(Bundle bundle) throws BaseException {
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    MsalBrokerResultAdapter msalBrokerResultAdapter = brokerMsalController.mResultAdapter;
                    if (bundle == null) {
                        msalBrokerResultAdapter.getClass();
                        throw MsalBrokerResultAdapter.getExceptionForEmptyResultBundle();
                    }
                    String str = this.negotiatedBrokerProtocolVersion;
                    msalBrokerResultAdapter.getClass();
                    Intent intent = (Intent) bundle.getParcelable("intent");
                    if (intent != null) {
                        bundle = intent.getExtras();
                    }
                    String string = bundle.getString("broker.package.name");
                    String string2 = bundle.getString("broker.activity.name");
                    if (StringUtil.isNullOrEmpty(string) || StringUtil.isNullOrEmpty(string2)) {
                        q.i("invalid_broker_bundle", "Content of Authorization Intent's package and class name should not be null.", null);
                        return null;
                    }
                    Intent intent2 = new Intent();
                    intent2.setPackage(string);
                    intent2.setClassName(string, string2);
                    intent2.putExtras(bundle);
                    intent2.putExtra("common.broker.protocol.version.name", str);
                    Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                    String str2 = this.negotiatedBrokerProtocolVersion;
                    builder.getClass();
                    intent2.putExtras(Telemetry.Builder.getRequestBundleForAcquireTokenInteractive(interactiveTokenCommandParameters, str2));
                    return intent2;
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final BrokerOperationBundle getBundle() {
                    return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST, BrokerMsalController.this.mActiveBrokerPackageName, null);
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getMethodName() {
                    return ":getBrokerAuthorizationIntent";
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getTelemetryApiId() {
                    return null;
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    InteractiveTokenCommandParameters interactiveTokenCommandParameters2 = interactiveTokenCommandParameters;
                    BrokerMsalController.access$100(brokerMsalController, interactiveTokenCommandParameters2);
                    this.negotiatedBrokerProtocolVersion = brokerMsalController.hello(iIpcStrategy, interactiveTokenCommandParameters2.getRequiredBrokerProtocolVersion());
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final /* bridge */ /* synthetic */ void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Intent intent) {
                }
            }));
            String string = bundleAcquireTokenInternal.getString("common.broker.protocol.version.name");
            if (interactiveTokenCommandParameters.getOAuth2TokenCache() != null && !FileUtil.isProvidedBrokerProtocolLargerOrEqualThanRequiredBrokerProtocol(string, "14.0")) {
                saveMsaAccountToCache(bundleAcquireTokenInternal, interactiveTokenCommandParameters.getOAuth2TokenCache());
            }
            verifyBrokerVersionIsSupported(bundleAcquireTokenInternal, interactiveTokenCommandParameters.getRequiredBrokerProtocolVersion());
            this.mResultAdapter.getClass();
            AcquireTokenResult acquireTokenResultFromResultBundle = MsalBrokerResultAdapter.getAcquireTokenResultFromResultBundle(bundleAcquireTokenInternal);
            ApiEndEvent apiEndEvent = new ApiEndEvent();
            apiEndEvent.putResult(acquireTokenResultFromResultBundle);
            apiEndEvent.putApiId("201");
            Telemetry.emit(apiEndEvent);
            return acquireTokenResultFromResultBundle;
        } catch (BaseException e) {
            e = e;
            ApiEndEvent apiEndEvent2 = new ApiEndEvent();
            apiEndEvent2.putException(e);
            apiEndEvent2.putApiId("201");
            Telemetry.emit(apiEndEvent2);
            throw e;
        } catch (ExecutionException e2) {
            e = e2;
            ApiEndEvent apiEndEvent3 = new ApiEndEvent();
            apiEndEvent3.putException(e);
            apiEndEvent3.putApiId("201");
            Telemetry.emit(apiEndEvent3);
            throw e;
        }
    }

    public final Bundle acquireTokenInternal(InteractiveTokenCommandParameters interactiveTokenCommandParameters, Intent intent) throws ExecutionException, InterruptedException, BaseException {
        ApiStartEvent apiStartEvent = new ApiStartEvent();
        apiStartEvent.putProperties(interactiveTokenCommandParameters);
        apiStartEvent.putApiId$1("201");
        Telemetry.emit(apiStartEvent);
        this.mBrokerResultFuture = new ResultFuture<>();
        Activity activity = interactiveTokenCommandParameters instanceof AndroidInteractiveTokenCommandParameters ? ((AndroidInteractiveTokenCommandParameters) interactiveTokenCommandParameters).getActivity() : null;
        Context context = this.mApplicationContext;
        Intent intent2 = new Intent(context, (Class<?>) BrokerActivity.class);
        intent2.putExtra("broker_intent", intent);
        LocalBroadcaster.INSTANCE.registerCallback("return_broker_interactive_acquire_token_result", new LocalBroadcaster.IReceiverCallback() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.1
            @Override // com.microsoft.identity.common.java.util.ported.LocalBroadcaster.IReceiverCallback
            public final void onReceive(PropertyBag propertyBag) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("BrokerMsalController:acquireTokenInternal", "Received result from Broker...");
                ApiStartEvent apiStartEvent2 = new ApiStartEvent();
                apiStartEvent2.putApiId$1("202");
                apiStartEvent2.put$2("Microsoft.MSAL.request_code", ((Integer) propertyBag.getOrDefault("com.microsoft.identity.client.request.code", -1)).toString());
                apiStartEvent2.put$2("Microsoft.MSAL.result_code", ((Integer) propertyBag.getOrDefault("com.microsoft.identity.client.result.code", -1)).toString());
                Telemetry.emit(apiStartEvent2);
                ResultFuture resultFuture = BrokerMsalController.this.mBrokerResultFuture;
                Bundle bundle = new Bundle();
                for (String str : propertyBag.keySet()) {
                    bundle.putSerializable(str, propertyBag.get(str));
                }
                resultFuture.setResult(bundle);
                ApiEndEvent apiEndEvent = new ApiEndEvent();
                apiEndEvent.putApiId("202");
                Telemetry.emit(apiEndEvent);
                LocalBroadcaster.INSTANCE.unregisterCallback("return_broker_interactive_acquire_token_result");
            }
        });
        if (activity == null) {
            intent2.addFlags(268435456);
            context.startActivity(intent2);
        } else {
            activity.startActivity(intent2);
        }
        Bundle bundle = this.mBrokerResultFuture.get();
        bundle.putString("common.broker.protocol.version.name", intent.getStringExtra("common.broker.protocol.version.name"));
        return bundle;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final AcquireTokenResult acquireTokenSilent(final SilentTokenCommandParameters silentTokenCommandParameters) throws BaseException {
        return (AcquireTokenResult) getBrokerOperationExecutor().execute(silentTokenCommandParameters, new BrokerOperationExecutor.BrokerOperation<AcquireTokenResult>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.5
            private String negotiatedBrokerProtocolVersion;

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final AcquireTokenResult extractResultBundle(Bundle bundle) throws BaseException {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                MsalBrokerResultAdapter msalBrokerResultAdapter = brokerMsalController.mResultAdapter;
                if (bundle == null) {
                    msalBrokerResultAdapter.getClass();
                    throw MsalBrokerResultAdapter.getExceptionForEmptyResultBundle();
                }
                brokerMsalController.verifyBrokerVersionIsSupported(bundle, silentTokenCommandParameters.getRequiredBrokerProtocolVersion());
                msalBrokerResultAdapter.getClass();
                return MsalBrokerResultAdapter.getAcquireTokenResultFromResultBundle(bundle);
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final BrokerOperationBundle getBundle() {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                String str = brokerMsalController.mActiveBrokerPackageName;
                Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                Context context = brokerMsalController.mApplicationContext;
                String str2 = this.negotiatedBrokerProtocolVersion;
                builder.getClass();
                return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_ACQUIRE_TOKEN_SILENT, str, Telemetry.Builder.getRequestBundleForAcquireTokenSilent(context, silentTokenCommandParameters, str2));
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getMethodName() {
                return ":acquireTokenSilent";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getTelemetryApiId() {
                return "203";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                SilentTokenCommandParameters silentTokenCommandParameters2 = silentTokenCommandParameters;
                BrokerMsalController.access$100(brokerMsalController, silentTokenCommandParameters2);
                this.negotiatedBrokerProtocolVersion = brokerMsalController.hello(iIpcStrategy, silentTokenCommandParameters2.getRequiredBrokerProtocolVersion());
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void putValueInSuccessEvent(ApiEndEvent apiEndEvent, AcquireTokenResult acquireTokenResult) {
                apiEndEvent.putResult(acquireTokenResult);
            }
        });
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean canEqual(BaseController baseController) {
        return baseController instanceof BrokerMsalController;
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof BrokerMsalController) && super.equals(obj);
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final List<ICacheRecord> getCurrentAccount(final CommandParameters commandParameters) throws BaseException {
        if (commandParameters.isSharedDevice()) {
            return (List) getBrokerOperationExecutor().execute(commandParameters, new BrokerOperationExecutor.BrokerOperation<List<ICacheRecord>>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.10
                private String negotiatedBrokerProtocolVersion;

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final List<ICacheRecord> extractResultBundle(Bundle bundle) throws BaseException {
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    MsalBrokerResultAdapter msalBrokerResultAdapter = brokerMsalController.mResultAdapter;
                    if (bundle == null) {
                        msalBrokerResultAdapter.getClass();
                        throw MsalBrokerResultAdapter.getExceptionForEmptyResultBundle();
                    }
                    brokerMsalController.verifyBrokerVersionIsSupported(bundle, commandParameters.getRequiredBrokerProtocolVersion());
                    msalBrokerResultAdapter.getClass();
                    return MsalBrokerResultAdapter.getAccountsFromResultBundle(bundle);
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final BrokerOperationBundle getBundle() {
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    String str = brokerMsalController.mActiveBrokerPackageName;
                    Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                    String str2 = this.negotiatedBrokerProtocolVersion;
                    builder.getClass();
                    return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE, str, Telemetry.Builder.getRequestBundleForGetAccounts(commandParameters, str2));
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getMethodName() {
                    return ":getCurrentAccount";
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getTelemetryApiId() {
                    return "205";
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                    this.negotiatedBrokerProtocolVersion = BrokerMsalController.this.hello(iIpcStrategy, commandParameters.getRequiredBrokerProtocolVersion());
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final void putValueInSuccessEvent(ApiEndEvent apiEndEvent, List<ICacheRecord> list) {
                    apiEndEvent.put$1("Microsoft.MSAL.accounts_number", Integer.toString(list.size()));
                }
            });
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose("BrokerMsalController:getCurrentAccount", "Not a shared device, invoke getAccounts() instead of getCurrentAccount()");
        return (List) getBrokerOperationExecutor().execute(commandParameters, new BrokerOperationExecutor.BrokerOperation<List<ICacheRecord>>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.6
            private String negotiatedBrokerProtocolVersion;

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final List<ICacheRecord> extractResultBundle(Bundle bundle) throws BaseException {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                MsalBrokerResultAdapter msalBrokerResultAdapter = brokerMsalController.mResultAdapter;
                if (bundle == null) {
                    msalBrokerResultAdapter.getClass();
                    throw MsalBrokerResultAdapter.getExceptionForEmptyResultBundle();
                }
                brokerMsalController.verifyBrokerVersionIsSupported(bundle, commandParameters.getRequiredBrokerProtocolVersion());
                msalBrokerResultAdapter.getClass();
                return MsalBrokerResultAdapter.getAccountsFromResultBundle(bundle);
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final BrokerOperationBundle getBundle() {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                String str = brokerMsalController.mActiveBrokerPackageName;
                Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                String str2 = this.negotiatedBrokerProtocolVersion;
                builder.getClass();
                return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_GET_ACCOUNTS, str, Telemetry.Builder.getRequestBundleForGetAccounts(commandParameters, str2));
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getMethodName() {
                return ":getAccounts";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getTelemetryApiId() {
                return "206";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                this.negotiatedBrokerProtocolVersion = BrokerMsalController.this.hello(iIpcStrategy, commandParameters.getRequiredBrokerProtocolVersion());
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void putValueInSuccessEvent(ApiEndEvent apiEndEvent, List<ICacheRecord> list) {
                apiEndEvent.put$1("Microsoft.MSAL.accounts_number", Integer.toString(list.size()));
            }
        });
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean getDeviceMode(CommandParameters commandParameters) throws BaseException {
        return ((Boolean) getBrokerOperationExecutor().execute(commandParameters, new BrokerOperationExecutor.BrokerOperation<Boolean>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.9
            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final Boolean extractResultBundle(Bundle bundle) throws BaseException {
                MsalBrokerResultAdapter msalBrokerResultAdapter = BrokerMsalController.this.mResultAdapter;
                if (bundle == null) {
                    msalBrokerResultAdapter.getClass();
                    throw MsalBrokerResultAdapter.getExceptionForEmptyResultBundle();
                }
                msalBrokerResultAdapter.getClass();
                if (bundle.containsKey("broker_device_mode")) {
                    return Boolean.valueOf(bundle.getBoolean("broker_device_mode"));
                }
                throw MsalBrokerResultAdapter.getBaseExceptionFromBundle(bundle);
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final BrokerOperationBundle getBundle() {
                return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_GET_DEVICE_MODE, BrokerMsalController.this.mActiveBrokerPackageName, null);
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getMethodName() {
                return ":getDeviceMode";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getTelemetryApiId() {
                return "204";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
                apiEndEvent.put$1("Microsoft.MSAL.is_device_shared", Boolean.toString(bool.booleanValue()));
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void performPrerequisites(IIpcStrategy iIpcStrategy) {
            }
        })).booleanValue();
    }

    public final int hashCode() {
        return 1;
    }

    public final String hello(IIpcStrategy iIpcStrategy, String str) throws BaseException {
        HelloCache helloCache = this.mHelloCache;
        String str2 = this.mMaxMsalBrokerProtocolVersion;
        HelloCacheResult helloCacheResult = helloCache.getHelloCacheResult(str, str2);
        String str3 = this.mActiveBrokerPackageName;
        String str4 = null;
        if (helloCacheResult == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:tryGetNegotiatedProtocolVersionFromHelloCache", "No valid entry found in cache");
        } else {
            if (helloCacheResult.isHandShakeError()) {
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:tryGetNegotiatedProtocolVersionFromHelloCache", "Handshake error from cache.");
                throw new UnsupportedBrokerException(str3);
            }
            String negotiatedProtocolVersion = helloCacheResult.getNegotiatedProtocolVersion();
            if (StringUtil.isNullOrEmpty(negotiatedProtocolVersion)) {
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("BrokerMsalController:tryGetNegotiatedProtocolVersionFromHelloCache", "Unexpected: cachedProtocolVersion is empty. Continue with hello IPC protocol.");
            } else {
                str4 = negotiatedProtocolVersion;
            }
        }
        if (!StringUtil.isNullOrEmpty(str4)) {
            return str4;
        }
        StringBuilder sbP = u48.p("Calling broker for to establish negotiated protocol version for: MinRequestVersion=", str, ", ClientMaxProtocolVersion=", str2, ", ActiveBroker=");
        sbP.append(str3);
        String string = sbP.toString();
        int i4 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("BrokerMsalController:hello", string);
        Bundle bundle = new Bundle();
        bundle.putString("broker.protocol.version.name", str2);
        if (!StringUtil.isNullOrEmpty(str)) {
            bundle.putString("required.broker.protocol.version.name", str);
        }
        BrokerOperationBundle brokerOperationBundle = new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_HELLO, str3, bundle);
        try {
            MsalBrokerResultAdapter msalBrokerResultAdapter = this.mResultAdapter;
            Bundle bundleCommunicateToBroker = iIpcStrategy.communicateToBroker(brokerOperationBundle);
            msalBrokerResultAdapter.getClass();
            String strVerifyHelloFromResultBundle = MsalBrokerResultAdapter.verifyHelloFromResultBundle(bundleCommunicateToBroker, str3);
            helloCache.saveNegotiatedProtocolVersion(str, str2, strVerifyHelloFromResultBundle);
            return strVerifyHelloFromResultBundle;
        } catch (UnsupportedBrokerException e) {
            helloCache.saveHandshakeError(str, str2);
            throw e;
        }
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final void onFinishAuthorizationSession(int i, int i2, PropertyBag propertyBag) {
        throw new UnsupportedOperationException();
    }

    @Override // com.microsoft.identity.common.java.controllers.BaseController
    public final boolean removeCurrentAccount(final RemoveAccountCommandParameters removeAccountCommandParameters) throws BaseException {
        if (removeAccountCommandParameters.isSharedDevice()) {
            return ((Boolean) getBrokerOperationExecutor().execute(removeAccountCommandParameters, new BrokerOperationExecutor.BrokerOperation<Boolean>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.11
                private String negotiatedBrokerProtocolVersion;

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final Boolean extractResultBundle(Bundle bundle) throws BaseException {
                    String requiredBrokerProtocolVersion = removeAccountCommandParameters.getRequiredBrokerProtocolVersion();
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    brokerMsalController.verifyBrokerVersionIsSupported(bundle, requiredBrokerProtocolVersion);
                    brokerMsalController.mResultAdapter.getClass();
                    MsalBrokerResultAdapter.verifyRemoveAccountResultFromBundle(bundle);
                    return Boolean.TRUE;
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final BrokerOperationBundle getBundle() {
                    BrokerMsalController brokerMsalController = BrokerMsalController.this;
                    String str = brokerMsalController.mActiveBrokerPackageName;
                    Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                    String str2 = this.negotiatedBrokerProtocolVersion;
                    builder.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putString("common.broker.protocol.version.name", str2);
                    String requiredBrokerProtocolVersion = removeAccountCommandParameters.getRequiredBrokerProtocolVersion();
                    if (!StringUtil.isNullOrEmpty(requiredBrokerProtocolVersion)) {
                        bundle.putString("required.broker.protocol.version.name", requiredBrokerProtocolVersion);
                    }
                    return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_SIGN_OUT_FROM_SHARED_DEVICE, str, bundle);
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getMethodName() {
                    return ":removeCurrentAccount";
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final String getTelemetryApiId() {
                    return "208";
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                    this.negotiatedBrokerProtocolVersion = BrokerMsalController.this.hello(iIpcStrategy, removeAccountCommandParameters.getRequiredBrokerProtocolVersion());
                }

                @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
                public final /* bridge */ /* synthetic */ void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
                }
            })).booleanValue();
        }
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.verbose(":removeCurrentAccount", "Not a shared device, invoke removeAccount() instead of removeCurrentAccount()");
        return ((Boolean) getBrokerOperationExecutor().execute(removeAccountCommandParameters, new BrokerOperationExecutor.BrokerOperation<Boolean>() { // from class: com.microsoft.identity.common.internal.controllers.BrokerMsalController.7
            private String negotiatedBrokerProtocolVersion;

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final Boolean extractResultBundle(Bundle bundle) throws BaseException {
                String requiredBrokerProtocolVersion = removeAccountCommandParameters.getRequiredBrokerProtocolVersion();
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                brokerMsalController.verifyBrokerVersionIsSupported(bundle, requiredBrokerProtocolVersion);
                brokerMsalController.mResultAdapter.getClass();
                MsalBrokerResultAdapter.verifyRemoveAccountResultFromBundle(bundle);
                return Boolean.TRUE;
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final BrokerOperationBundle getBundle() {
                BrokerMsalController brokerMsalController = BrokerMsalController.this;
                String str = brokerMsalController.mActiveBrokerPackageName;
                Telemetry.Builder builder = brokerMsalController.mRequestAdapter;
                String str2 = this.negotiatedBrokerProtocolVersion;
                builder.getClass();
                Bundle bundle = new Bundle();
                RemoveAccountCommandParameters removeAccountCommandParameters2 = removeAccountCommandParameters;
                if (removeAccountCommandParameters2.getAccount() != null) {
                    bundle.putString("account.clientid.key", removeAccountCommandParameters2.getClientId());
                    bundle.putString("environment", removeAccountCommandParameters2.getAccount().getEnvironment());
                    bundle.putString("account.home.account.id", removeAccountCommandParameters2.getAccount().getHomeAccountId());
                }
                bundle.putString("common.broker.protocol.version.name", str2);
                String requiredBrokerProtocolVersion = removeAccountCommandParameters2.getRequiredBrokerProtocolVersion();
                if (!StringUtil.isNullOrEmpty(requiredBrokerProtocolVersion)) {
                    bundle.putString("required.broker.protocol.version.name", requiredBrokerProtocolVersion);
                }
                return new BrokerOperationBundle(BrokerOperationBundle.Operation.MSAL_REMOVE_ACCOUNT, str, bundle);
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getMethodName() {
                return ":removeAccount";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final String getTelemetryApiId() {
                return "207";
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final void performPrerequisites(IIpcStrategy iIpcStrategy) throws BaseException {
                this.negotiatedBrokerProtocolVersion = BrokerMsalController.this.hello(iIpcStrategy, removeAccountCommandParameters.getRequiredBrokerProtocolVersion());
            }

            @Override // com.microsoft.identity.common.internal.controllers.BrokerOperationExecutor.BrokerOperation
            public final /* bridge */ /* synthetic */ void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
            }
        })).booleanValue();
    }
}
