package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PreProvisionedBlobV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<PreProvisionedBlobV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(PreProvisionedBlobV0Parameters.class);
    private final String mTenantId;

    public PreProvisionedBlobV0Parameters(UUID uuid, String str) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (str != null) {
            this.mTenantId = str;
        } else {
            f6.n("tenantId is marked non-null but is null");
            throw null;
        }
    }

    public static PreProvisionedBlobV0Parameters create(byte[] bArr) throws ClientException {
        return (PreProvisionedBlobV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.get.pre.provisioned.blob.v0";
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
