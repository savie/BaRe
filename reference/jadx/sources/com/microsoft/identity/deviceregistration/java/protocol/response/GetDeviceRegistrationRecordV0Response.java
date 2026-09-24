package com.microsoft.identity.deviceregistration.java.protocol.response;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.api.IDeviceRegistrationRecord;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetDeviceRegistrationRecordV0Response extends AbstractDeviceRegistrationProtocolResponse {
    private static final IDeviceRegistrationProtocolSerializer<GetDeviceRegistrationRecordV0Response> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetDeviceRegistrationRecordV0Response.class);
    private final IDeviceRegistrationRecord mDeviceRegistrationRecord;

    public GetDeviceRegistrationRecordV0Response(UUID uuid, IDeviceRegistrationRecord iDeviceRegistrationRecord) {
        super(uuid);
        if (uuid != null) {
            this.mDeviceRegistrationRecord = iDeviceRegistrationRecord;
        } else {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
    }

    public static GetDeviceRegistrationRecordV0Response create(byte[] bArr) throws ClientException {
        return (GetDeviceRegistrationRecordV0Response) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public IDeviceRegistrationRecord getDeviceRegistrationRecord() {
        return this.mDeviceRegistrationRecord;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public String getProtocolName() {
        return "get.device.registration.record.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
