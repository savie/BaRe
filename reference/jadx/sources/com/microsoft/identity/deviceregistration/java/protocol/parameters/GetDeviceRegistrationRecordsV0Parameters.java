package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetDeviceRegistrationRecordsV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<GetDeviceRegistrationRecordsV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetDeviceRegistrationRecordsV0Parameters.class);

    public GetDeviceRegistrationRecordsV0Parameters(UUID uuid) {
        super(uuid);
        if (uuid != null) {
            return;
        }
        f6.n("correlationId is marked non-null but is null");
        throw null;
    }

    public static GetDeviceRegistrationRecordsV0Parameters create(byte[] bArr) throws ClientException {
        return (GetDeviceRegistrationRecordsV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "get.all.device.registration.records.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
