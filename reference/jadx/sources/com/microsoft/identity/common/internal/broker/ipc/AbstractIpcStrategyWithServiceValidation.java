package com.microsoft.identity.common.internal.broker.ipc;

import android.os.Bundle;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.logging.Logger;
import defpackage.ph6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractIpcStrategyWithServiceValidation implements IIpcStrategy {
    private static final String TAG = ph6.a(AbstractIpcStrategyWithServiceValidation.class).c();

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final Bundle communicateToBroker(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException {
        String str;
        brokerOperationBundle.getClass();
        String str2 = brokerOperationBundle.targetBrokerAppPackageName;
        String str3 = TAG + ":communicateToBroker";
        str2.getClass();
        if (isSupportedByTargetedBroker(str2)) {
            return communicateToBrokerAfterValidation(brokerOperationBundle);
        }
        StringBuilder sb = new StringBuilder("Operation ");
        int type = getType();
        if (type == 1) {
            str = "BOUND_SERVICE";
        } else if (type == 2) {
            str = "ACCOUNT_MANAGER_ADD_ACCOUNT";
        } else if (type != 3) {
            str = type != 4 ? "null" : "LEGACY_ACCOUNT_AUTHENTICATOR_FOR_WPJ_API";
        } else {
            str = "CONTENT_PROVIDER";
        }
        sb.append(str);
        sb.append(" is not supported on ");
        sb.append(str2);
        String string = sb.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info(str3, string);
        throw new BrokerCommunicationException(2, getType(), string, null);
    }

    public abstract Bundle communicateToBrokerAfterValidation(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException;
}
