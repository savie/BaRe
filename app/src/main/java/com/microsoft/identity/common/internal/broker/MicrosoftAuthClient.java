package com.microsoft.identity.common.internal.broker;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.microsoft.identity.client.IMicrosoftAuthService;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.internal.broker.ipc.BrokerOperationBundle;
import com.microsoft.identity.common.java.util.ResultFuture;
import com.microsoft.identity.common.logging.Logger;
import defpackage.e6;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftAuthClient {
    private BoundServiceConnection mConnection;
    protected final Context mContext;
    private boolean mHasStartedBinding;

    public MicrosoftAuthClient(Context context) {
        this.mContext = context;
    }

    public final void disconnect() {
        if (this.mHasStartedBinding) {
            try {
                this.mContext.unbindService(this.mConnection);
            } catch (IllegalArgumentException e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("MicrosoftAuthClient:disconnect", "Error occurred while unbinding bound Service with MicrosoftAuthClient", e);
            }
            this.mHasStartedBinding = false;
        }
    }

    public final boolean isBoundServiceSupported(String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent("com.microsoft.identity.client.MicrosoftAuth");
        intent.setPackage(str);
        intent.setClassName(str, "com.microsoft.identity.client.MicrosoftAuthService");
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        return listQueryIntentServices != null && listQueryIntentServices.size() > 0;
    }

    public final Bundle performOperation(BrokerOperationBundle brokerOperationBundle) throws ExecutionException, InterruptedException, BrokerCommunicationException, TimeoutException, RemoteException {
        String str = brokerOperationBundle.targetBrokerAppPackageName;
        if (!isBoundServiceSupported(str)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("MicrosoftAuthClient:connect", "Bound service is not supported.");
            throw new BrokerCommunicationException(2, 1, "Bound service is not supported.", null);
        }
        ResultFuture resultFuture = new ResultFuture();
        this.mConnection = new BoundServiceConnection(resultFuture);
        Intent intent = new Intent("com.microsoft.identity.client.MicrosoftAuth");
        intent.setPackage(str);
        intent.setClassName(str, "com.microsoft.identity.client.MicrosoftAuthService");
        boolean zBindService = this.mContext.bindService(intent, this.mConnection, 1);
        this.mHasStartedBinding = zBindService;
        if (!zBindService) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("MicrosoftAuthClient:connect", "failed to bind. The service is not available.");
            throw new BrokerCommunicationException(2, 1, "failed to bind. The service is not available.", null);
        }
        int i3 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("MicrosoftAuthClient:connect", "Android is establishing the bound service connection.");
        IMicrosoftAuthService iMicrosoftAuthServiceAsInterface = IMicrosoftAuthService.Stub.asInterface((IBinder) resultFuture.get(30L, TimeUnit.SECONDS));
        if (iMicrosoftAuthServiceAsInterface == null) {
            e6.j("Failed to extract IMicrosoftAuthService from IBinder.", null);
            return null;
        }
        Bundle bundle = brokerOperationBundle.bundle;
        BrokerOperationBundle.Operation operation = brokerOperationBundle.operation;
        switch (operation) {
            case MSAL_HELLO:
                return iMicrosoftAuthServiceAsInterface.hello(bundle);
            case MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:
                Intent intentForInteractiveRequest = iMicrosoftAuthServiceAsInterface.getIntentForInteractiveRequest();
                Bundle extras = intentForInteractiveRequest.getExtras();
                if (intentForInteractiveRequest.getComponent() != null && !TextUtils.isEmpty(intentForInteractiveRequest.getPackage()) && !TextUtils.isEmpty(intentForInteractiveRequest.getComponent().getClassName())) {
                    extras.putString("broker.package.name", intentForInteractiveRequest.getPackage());
                    extras.putString("broker.activity.name", intentForInteractiveRequest.getComponent().getClassName());
                }
                return extras;
            case MSAL_ACQUIRE_TOKEN_SILENT:
                return iMicrosoftAuthServiceAsInterface.acquireTokenSilently(bundle);
            case MSAL_GET_ACCOUNTS:
                return iMicrosoftAuthServiceAsInterface.getAccounts(bundle);
            case MSAL_REMOVE_ACCOUNT:
                return iMicrosoftAuthServiceAsInterface.removeAccount(bundle);
            case MSAL_GET_DEVICE_MODE:
                return iMicrosoftAuthServiceAsInterface.getDeviceMode();
            case MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE:
                return iMicrosoftAuthServiceAsInterface.getCurrentAccount(bundle);
            case MSAL_SIGN_OUT_FROM_SHARED_DEVICE:
                return iMicrosoftAuthServiceAsInterface.removeAccountFromSharedDevice(bundle);
            case MSAL_GENERATE_SHR:
                return iMicrosoftAuthServiceAsInterface.generateSignedHttpRequest(bundle);
            default:
                throw new BrokerCommunicationException(1, 1, "Operation " + operation.name() + " is not supported by MicrosoftAuthClient.", null);
        }
    }
}
