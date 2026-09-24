package com.microsoft.identity.client;

import android.app.Activity;
import android.content.Context;
import com.google.gson.a;
import com.google.gson.reflect.TypeToken;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.internal.AsyncResult;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.client.internal.controllers.MSALControllerFactory;
import com.microsoft.identity.common.adal.internal.util.JsonExtensions;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.crypto.AndroidAuthSdkStorageEncryptionManager;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.commands.GetCurrentAccountCommand;
import com.microsoft.identity.common.internal.commands.RemoveCurrentAccountCommand;
import com.microsoft.identity.common.internal.migration.AdalMigrationAdapter;
import com.microsoft.identity.common.internal.migration.TokenMigrationCallback;
import com.microsoft.identity.common.internal.migration.TokenMigrationUtility;
import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.commands.CommandCallback;
import com.microsoft.identity.common.java.controllers.CommandDispatcher;
import com.microsoft.identity.common.java.dto.AccountRecord;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.result.LocalAuthenticationResult;
import com.microsoft.identity.common.java.util.ResultFuture;
import defpackage.l0;
import defpackage.ut5;
import defpackage.vr6;
import defpackage.vt5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SingleAccountPublicClientApplication extends PublicClientApplication {
    private final SharedPreferencesFileManager sharedPreferencesFileManager;

    /* JADX INFO: renamed from: com.microsoft.identity.client.SingleAccountPublicClientApplication$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements ISingleAccountPublicClientApplication$CurrentAccountCallback {
        final /* synthetic */ ResultFuture val$future;

        public AnonymousClass2(ResultFuture resultFuture) {
            this.val$future = resultFuture;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.client.SingleAccountPublicClientApplication$5, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass5 implements ISingleAccountPublicClientApplication$SignOutCallback {
        final /* synthetic */ ResultFuture val$future;

        public AnonymousClass5(ResultFuture resultFuture) {
            this.val$future = resultFuture;
        }
    }

    public SingleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) throws MsalClientException {
        super(publicClientApplicationConfiguration);
        Context appContext = publicClientApplicationConfiguration.getAppContext();
        this.sharedPreferencesFileManager = new SharedPreferencesFileManager(appContext, "com.microsoft.identity.client.single_account_credential_cache", new AndroidAuthSdkStorageEncryptionManager(appContext));
    }

    public static void access$200(SingleAccountPublicClientApplication singleAccountPublicClientApplication, List list) {
        synchronized (SingleAccountPublicClientApplication.class) {
            if (list != null) {
                try {
                    if (list.size() != 0) {
                        String str = "persisting cache records with size " + list.size();
                        int i = com.microsoft.identity.common.logging.Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info("SingleAccountPublicClientApplication", str);
                        singleAccountPublicClientApplication.sharedPreferencesFileManager.putString("com.microsoft.identity.client.single_account_credential_cache.current_account", new a().j(list, TypeToken.getParameterized(List.class, ICacheRecord.class).getType()));
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            singleAccountPublicClientApplication.sharedPreferencesFileManager.clear();
        }
    }

    public static void access$300(SingleAccountPublicClientApplication singleAccountPublicClientApplication, ISingleAccountPublicClientApplication$CurrentAccountCallback iSingleAccountPublicClientApplication$CurrentAccountCallback, List list, MultiTenantAccount multiTenantAccount, boolean z) {
        MultiTenantAccount accountFromICacheRecordList = list == null ? null : getAccountFromICacheRecordList(list);
        if (z || !isHomeAccountIdMatching(multiTenantAccount, accountFromICacheRecordList)) {
            ((AnonymousClass2) iSingleAccountPublicClientApplication$CurrentAccountCallback).val$future.setResult(new AsyncResult(new CurrentAccountResult(accountFromICacheRecordList), null));
        }
        ((AnonymousClass2) iSingleAccountPublicClientApplication$CurrentAccountCallback).val$future.setResult(new AsyncResult(new CurrentAccountResult(accountFromICacheRecordList), null));
    }

    private static MultiTenantAccount getAccountFromICacheRecordList(List list) {
        if (list.size() == 0) {
            return null;
        }
        ArrayList arrayListAdapt = AccountAdapter.adapt(list);
        if (arrayListAdapt.size() != 1) {
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("SingleAccountPublicClientApplication:getAccountFromICacheRecords", "Returned cacheRecords were adapted into multiple IAccount. This is unexpected in Single account mode.Returning the first adapted account.");
        }
        if (arrayListAdapt.isEmpty()) {
            return null;
        }
        return (MultiTenantAccount) arrayListAdapt.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MultiTenantAccount getPersistedCurrentAccount() {
        synchronized (SingleAccountPublicClientApplication.class) {
            try {
                String string = this.sharedPreferencesFileManager.getString("com.microsoft.identity.client.single_account_credential_cache.current_account");
                if (StringExtensions.isNullOrBlank(string)) {
                    return null;
                }
                return getAccountFromICacheRecordList(JsonExtensions.getICacheRecordListFromJsonString(string));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean isHomeAccountIdMatching(MultiTenantAccount multiTenantAccount, Account account) {
        if (multiTenantAccount == null) {
            multiTenantAccount = null;
        }
        MultiTenantAccount multiTenantAccount2 = account instanceof MultiTenantAccount ? (MultiTenantAccount) account : null;
        return (multiTenantAccount == null ? "" : multiTenantAccount.getHomeAccountId()).equalsIgnoreCase(multiTenantAccount2 != null ? multiTenantAccount2.getHomeAccountId() : "");
    }

    public final AuthenticationResult acquireTokenSilent(AcquireTokenSilentParameters acquireTokenSilentParameters) throws MsalException, InterruptedException {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount == null) {
            throw new MsalClientException("no_current_account", "There is no signed in account.", null);
        }
        if (isHomeAccountIdMatching(persistedCurrentAccount, acquireTokenSilentParameters.getAccount())) {
            return acquireTokenSilentInternal(acquireTokenSilentParameters);
        }
        throw new MsalClientException("current_account_mismatch", "The signed in account does not match with the provided account.", null);
    }

    @Override // com.microsoft.identity.client.PublicClientApplication
    public final CommandCallback<LocalAuthenticationResult, BaseException> getCommandCallback(final SilentAuthenticationCallback silentAuthenticationCallback, final TokenParameters tokenParameters) {
        return new CommandCallback<LocalAuthenticationResult, BaseException>() { // from class: com.microsoft.identity.client.SingleAccountPublicClientApplication.3
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
                LocalAuthenticationResult localAuthenticationResult = (LocalAuthenticationResult) obj;
                SilentAuthenticationCallback silentAuthenticationCallback2 = silentAuthenticationCallback;
                if (silentAuthenticationCallback2 == null) {
                    l0.e("callback cannot be null or empty");
                    return;
                }
                SingleAccountPublicClientApplication.access$200(SingleAccountPublicClientApplication.this, localAuthenticationResult.getCacheRecordWithTenantProfileData());
                PublicClientApplication.postAuthResult(localAuthenticationResult, tokenParameters, silentAuthenticationCallback2);
            }
        };
    }

    public final CurrentAccountResult getCurrentAccount() throws MsalException, InterruptedException {
        MsalUtils.throwOnMainThread("getCurrentAccount");
        ResultFuture resultFuture = new ResultFuture();
        final AnonymousClass2 anonymousClass2 = new AnonymousClass2(resultFuture);
        TokenMigrationCallback tokenMigrationCallback = new TokenMigrationCallback() { // from class: com.microsoft.identity.client.SingleAccountPublicClientApplication.1
            @Override // com.microsoft.identity.common.internal.migration.TokenMigrationCallback
            public final void onMigrationFinished() {
                PublicClientApplicationConfiguration publicClientApplicationConfiguration = SingleAccountPublicClientApplication.this.mPublicClientConfiguration;
                CommandDispatcher.submitSilent(new GetCurrentAccountCommand(MsalUtils.createCommandParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache()), new MSALControllerFactory(publicClientApplicationConfiguration), new CommandCallback<List<ICacheRecord>, BaseException>() { // from class: com.microsoft.identity.client.SingleAccountPublicClientApplication.1.1
                    @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                    public final void onError(Object obj) {
                        ((AnonymousClass2) anonymousClass2).val$future.setResult(new AsyncResult(null, LibraryInfoHelper.msalExceptionFromBaseException((BaseException) obj)));
                    }

                    @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                    public final void onTaskCompleted(Object obj) {
                        MultiTenantAccount persistedCurrentAccount;
                        boolean z;
                        List list = (List) obj;
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        SingleAccountPublicClientApplication singleAccountPublicClientApplication = SingleAccountPublicClientApplication.this;
                        try {
                            persistedCurrentAccount = singleAccountPublicClientApplication.getPersistedCurrentAccount();
                            z = false;
                        } catch (NullPointerException e) {
                            int i = com.microsoft.identity.common.logging.Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.error("SingleAccountPublicClientApplication:getCurrentAccountAsyncInternal", "Failed to load Persisted Current Account", e);
                            singleAccountPublicClientApplication.sharedPreferencesFileManager.remove("com.microsoft.identity.client.single_account_credential_cache.current_account");
                            persistedCurrentAccount = null;
                            z = true;
                        }
                        SingleAccountPublicClientApplication.access$200(singleAccountPublicClientApplication, list);
                        SingleAccountPublicClientApplication.access$300(singleAccountPublicClientApplication, anonymousClass2, list, persistedCurrentAccount, z);
                    }

                    @Override // com.microsoft.identity.common.java.commands.CommandCallback
                    public final void onCancel() {
                    }
                }, "921"));
            }
        };
        HashMap map = new HashMap();
        PublicClientApplicationConfiguration publicClientApplicationConfiguration = this.mPublicClientConfiguration;
        map.put(publicClientApplicationConfiguration.getClientId(), publicClientApplicationConfiguration.getRedirectUri());
        AdalMigrationAdapter adalMigrationAdapter = new AdalMigrationAdapter(publicClientApplicationConfiguration.getAppContext(), map, publicClientApplicationConfiguration.getDefaultAuthority());
        if (adalMigrationAdapter.getMigrationStatus()) {
            tokenMigrationCallback.onMigrationFinished();
        } else {
            TokenMigrationUtility._import(adalMigrationAdapter, new SharedPreferencesFileManager(publicClientApplicationConfiguration.getAppContext(), "com.microsoft.aad.adal.cache", new AndroidAuthSdkStorageEncryptionManager(publicClientApplicationConfiguration.getAppContext())).getAll(), publicClientApplicationConfiguration.getOAuth2TokenCache(), tokenMigrationCallback);
        }
        try {
            AsyncResult asyncResult = (AsyncResult) resultFuture.get();
            if (asyncResult.getSuccess()) {
                return (CurrentAccountResult) asyncResult.getResult();
            }
            throw asyncResult.getException();
        } catch (ExecutionException e) {
            throw new MsalClientException("unknown_error", "Unknown exception while fetching current account.", e);
        }
    }

    public final void signIn(SignInParameters signInParameters) {
        if (getPersistedCurrentAccount() != null) {
            ((ut5) signInParameters.getCallback()).onError(new MsalClientException("invalid_parameter", "An account is already signed in.", null));
            return;
        }
        Activity activity = signInParameters.getActivity();
        List<String> scopes = signInParameters.getScopes();
        AuthenticationCallback callback = signInParameters.getCallback();
        MsalUtils.validateNonNullArgument(activity, "activity");
        MsalUtils.validateNonNullArgument(scopes, "scopes");
        MsalUtils.validateNonNullArgument(callback, "callback");
        AcquireTokenParameters.Builder builder = new AcquireTokenParameters.Builder();
        builder.startAuthorizationFromActivity(activity);
        AcquireTokenParameters.Builder builderWithScopes = builder.forAccount(null).withScopes(scopes);
        builderWithScopes.withPrompt(null);
        builderWithScopes.withOtherScopesToAuthorize(Arrays.asList(new String[0]));
        AcquireTokenParameters.Builder builderFromAuthority = builderWithScopes.fromAuthority(null);
        builderFromAuthority.withCallback(callback);
        builderFromAuthority.withLoginHint(null);
        acquireTokenInternal(new AcquireTokenParameters(builderFromAuthority.withClaims(null)), "132");
    }

    public final void signOut() throws MsalException, InterruptedException {
        MsalUtils.throwOnMainThread("signOut");
        ResultFuture resultFuture = new ResultFuture();
        final AnonymousClass5 anonymousClass5 = new AnonymousClass5(resultFuture);
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount == null) {
            resultFuture.setResult(new AsyncResult(Boolean.FALSE, new MsalClientException("no_current_account", "There is no signed in account.", null)));
        } else {
            AccountRecord accountRecord = new AccountRecord();
            accountRecord.setEnvironment(persistedCurrentAccount.getEnvironment());
            accountRecord.setHomeAccountId(persistedCurrentAccount.getHomeAccountId());
            PublicClientApplicationConfiguration publicClientApplicationConfiguration = this.mPublicClientConfiguration;
            CommandDispatcher.submitSilent(new RemoveCurrentAccountCommand(MsalUtils.createRemoveAccountCommandParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache(), accountRecord), new MSALControllerFactory(publicClientApplicationConfiguration), new CommandCallback<Boolean, BaseException>() { // from class: com.microsoft.identity.client.SingleAccountPublicClientApplication.4
                @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                public final void onError(Object obj) {
                    ((AnonymousClass5) anonymousClass5).val$future.setResult(new AsyncResult(Boolean.FALSE, LibraryInfoHelper.msalExceptionFromBaseException((BaseException) obj)));
                }

                @Override // com.microsoft.identity.common.java.util.TaskCompletedCallbackWithError
                public final void onTaskCompleted(Object obj) {
                    SingleAccountPublicClientApplication.access$200(SingleAccountPublicClientApplication.this, null);
                    ((AnonymousClass5) anonymousClass5).val$future.setResult(new AsyncResult(Boolean.TRUE, null));
                }

                @Override // com.microsoft.identity.common.java.commands.CommandCallback
                public final void onCancel() {
                }
            }, "927"));
        }
        try {
            AsyncResult asyncResult = (AsyncResult) resultFuture.get();
            if (!asyncResult.getSuccess()) {
                throw asyncResult.getException();
            }
            ((Boolean) asyncResult.getResult()).getClass();
        } catch (ExecutionException e) {
            throw new MsalClientException("unknown_error", "Unexpected error during signOut.", e);
        }
    }
}
