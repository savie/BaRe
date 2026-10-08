package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.api.IDeviceRegistrationRecord;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetRegistrationStateV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<GetRegistrationStateV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetRegistrationStateV0Parameters.class);
    private final IDeviceRegistrationRecord mDeviceRegistrationRecord;

    public GetRegistrationStateV0Parameters(UUID uuid, IDeviceRegistrationRecord iDeviceRegistrationRecord) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (iDeviceRegistrationRecord != null) {
            this.mDeviceRegistrationRecord = iDeviceRegistrationRecord;
        } else {
            f6.n("deviceRegistrationRecord is marked non-null but is null");
            throw null;
        }
    }

    public static GetRegistrationStateV0Parameters create(byte[] bArr) throws ClientException {
        return (GetRegistrationStateV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public IDeviceRegistrationRecord getDeviceRegistrationRecord() {
        return this.mDeviceRegistrationRecord;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.get.state.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
