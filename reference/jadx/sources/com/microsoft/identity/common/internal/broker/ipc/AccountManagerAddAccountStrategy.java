package com.microsoft.identity.common.internal.broker.ipc;

import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.os.Bundle;
import android.os.UserManager;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.internal.activebrokerdiscovery.AccountManagerBrokerDiscoveryUtil;
import com.microsoft.identity.common.internal.broker.BrokerData;
import com.microsoft.identity.common.internal.util.GzipUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.eq3;
import java.io.IOException;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AccountManagerAddAccountStrategy implements IIpcStrategy {
    private final Context mContext;

    public AccountManagerAddAccountStrategy(Context context) {
        this.mContext = context;
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final Bundle communicateToBroker(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException {
        StringBuilder sbU = dj7.u("Broker operation: ", brokerOperationBundle.operation.name(), " brokerPackage: ");
        sbU.append(brokerOperationBundle.targetBrokerAppPackageName);
        String string = sbU.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AccountManagerAddAccountStrategy:communicateToBroker", string);
        try {
            AccountManagerFuture<Bundle> accountManagerFutureAddAccount = AccountManager.get(this.mContext).addAccount("com.microsoft.workaccount", "adal.authtoken.type", null, brokerOperationBundle.getAccountManagerBundle(), null, null, GzipUtil.getPreferredHandler());
            com.microsoft.identity.common.java.logging.Logger.verbose("AccountManagerAddAccountStrategy:communicateToBroker", "Received result from broker");
            return accountManagerFutureAddAccount.getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            com.microsoft.identity.common.java.logging.Logger.error("AccountManagerAddAccountStrategy:communicateToBroker", e.getMessage(), e);
            throw new BrokerCommunicationException(3, 2, "Failed to connect to AccountManager", e);
        }
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final int getType() {
        return 2;
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final boolean isSupportedByTargetedBroker(String str) throws ClientException {
        DevicePolicyManager devicePolicyManager;
        String[] accountTypesWithManagementDisabled;
        Context context = this.mContext;
        BrokerData activeBrokerFromAccountManager = new AccountManagerBrokerDiscoveryUtil(context).getActiveBrokerFromAccountManager();
        if (activeBrokerFromAccountManager == null || !activeBrokerFromAccountManager.getPackageName().equalsIgnoreCase(str)) {
            return false;
        }
        HashSet hashSet = new HashSet();
        hashSet.add("com.microsoft.workaccount");
        if (((UserManager) context.getSystemService("user")).hasUserRestriction("no_modify_accounts")) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AccountManagerUtil:canUseAccountManagerOperation:", "UserManager.DISALLOW_MODIFY_ACCOUNTS is enabled for this user.");
            return false;
        }
        try {
            devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        } catch (Throwable unused) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("AccountManagerUtil:getDevicePolicyManager", "Cannot get DevicePolicyManager.");
            devicePolicyManager = null;
        }
        if (devicePolicyManager != null && (accountTypesWithManagementDisabled = devicePolicyManager.getAccountTypesWithManagementDisabled()) != null) {
            for (String str2 : accountTypesWithManagementDisabled) {
                if (hashSet.contains(str2)) {
                    String strK = eq3.k("Account type ", str2, " is disabled by MDM.");
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("AccountManagerUtil:canUseAccountManagerOperation:", strK);
                    return false;
                }
            }
        }
        return true;
    }
}
