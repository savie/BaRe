package com.microsoft.identity.deviceregistration.java.protocol.response;

import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDeviceRegistrationProtocolResponse implements IDeviceRegistrationProtocolResponse {
    protected final UUID mCorrelationId;

    public AbstractDeviceRegistrationProtocolResponse(UUID uuid) {
        if (uuid != null) {
            this.mCorrelationId = uuid;
        } else {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public UUID getCorrelationId() {
        return this.mCorrelationId;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public abstract /* synthetic */ String getProtocolName();

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public abstract /* synthetic */ byte[] serialize();
}
