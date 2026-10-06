package com.microsoft.identity.common.internal.broker.ipc;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.microsoft.identity.common.exception.BrokerCommunicationException;
import com.microsoft.identity.common.internal.broker.MicrosoftAuthClient;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BoundServiceStrategy<T extends IInterface> extends AbstractIpcStrategyWithServiceValidation {
    private final MicrosoftAuthClient mClient;

    public BoundServiceStrategy(MicrosoftAuthClient microsoftAuthClient) {
        this.mClient = microsoftAuthClient;
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.AbstractIpcStrategyWithServiceValidation
    public final Bundle communicateToBrokerAfterValidation(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException {
        MicrosoftAuthClient microsoftAuthClient = this.mClient;
        StringBuilder sbU = dj7.u("Broker operation: ", brokerOperationBundle.operation.name(), " brokerPackage: ");
        sbU.append(brokerOperationBundle.targetBrokerAppPackageName);
        String string = sbU.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("BoundServiceStrategy:communicateToBroker", string);
        try {
            try {
                Bundle bundlePerformOperation = microsoftAuthClient.performOperation(brokerOperationBundle);
                microsoftAuthClient.disconnect();
                return bundlePerformOperation;
            } catch (Throwable th) {
                microsoftAuthClient.disconnect();
                throw th;
            }
        } catch (RemoteException | InterruptedException | RuntimeException | ExecutionException | TimeoutException e) {
            String strConcat = "Error occurred while awaiting (get) return of bound Service with ".concat("MicrosoftAuthClient");
            com.microsoft.identity.common.java.logging.Logger.error("BoundServiceStrategy:communicateToBroker", strConcat, e);
            throw new BrokerCommunicationException(3, 1, strConcat, e);
        }
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final int getType() {
        return 1;
    }

    @Override // com.microsoft.identity.common.internal.broker.ipc.IIpcStrategy
    public final boolean isSupportedByTargetedBroker(String str) {
        return this.mClient.isBoundServiceSupported(str);
    }
}
