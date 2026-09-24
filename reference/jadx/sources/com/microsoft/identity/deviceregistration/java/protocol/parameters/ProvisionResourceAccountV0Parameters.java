package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProvisionResourceAccountV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<ProvisionResourceAccountV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(ProvisionResourceAccountV0Parameters.class);
    private final String mRaObjectId;
    private final String mTenantId;

    public ProvisionResourceAccountV0Parameters(UUID uuid, String str, String str2) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("tenantId is marked non-null but is null");
            throw null;
        }
        if (str2 == null) {
            f6.n("raObjectId is marked non-null but is null");
            throw null;
        }
        this.mTenantId = str;
        this.mRaObjectId = str2;
    }

    public static ProvisionResourceAccountV0Parameters create(byte[] bArr) throws ClientException {
        return (ProvisionResourceAccountV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.provision.resource.account.v0";
    }

    public String getRaObjectId() {
        return this.mRaObjectId;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
