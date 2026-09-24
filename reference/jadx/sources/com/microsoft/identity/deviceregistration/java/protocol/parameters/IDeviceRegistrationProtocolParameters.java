package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.deviceregistration.java.protocol.IDeviceRegistrationProtocol;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IDeviceRegistrationProtocolParameters extends IDeviceRegistrationProtocol {
    /* synthetic */ UUID getCorrelationId();

    /* synthetic */ String getProtocolName();

    /* synthetic */ byte[] serialize();
}
