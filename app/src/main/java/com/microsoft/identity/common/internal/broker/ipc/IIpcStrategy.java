package com.microsoft.identity.common.internal.broker.ipc;

import android.os.Bundle;
import com.microsoft.identity.common.exception.BrokerCommunicationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IIpcStrategy {
    Bundle communicateToBroker(BrokerOperationBundle brokerOperationBundle) throws BrokerCommunicationException;

    int getType();

    boolean isSupportedByTargetedBroker(String str);
}
