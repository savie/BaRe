package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDeviceRegistrationProtocolParameters implements IDeviceRegistrationProtocolParameters {
    protected final UUID mCorrelationId;

    public AbstractDeviceRegistrationProtocolParameters(UUID uuid) {
        if (uuid != null) {
            this.mCorrelationId = uuid;
        } else {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public UUID getCorrelationId() {
        return this.mCorrelationId;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public abstract /* synthetic */ String getProtocolName();

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public abstract /* synthetic */ byte[] serialize();
}
