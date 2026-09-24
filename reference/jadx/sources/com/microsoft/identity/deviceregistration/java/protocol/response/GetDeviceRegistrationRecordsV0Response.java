package com.microsoft.identity.deviceregistration.java.protocol.response;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.api.IDeviceRegistrationRecord;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetDeviceRegistrationRecordsV0Response extends AbstractDeviceRegistrationProtocolResponse {
    private static final IDeviceRegistrationProtocolSerializer<GetDeviceRegistrationRecordsV0Response> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetDeviceRegistrationRecordsV0Response.class);
    private final List<IDeviceRegistrationRecord> mDeviceRegistrationRecords;

    public GetDeviceRegistrationRecordsV0Response(UUID uuid, List<IDeviceRegistrationRecord> list) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (list != null) {
            this.mDeviceRegistrationRecords = list;
        } else {
            f6.n("deviceRegistrationRecordList is marked non-null but is null");
            throw null;
        }
    }

    public static GetDeviceRegistrationRecordsV0Response create(byte[] bArr) throws ClientException {
        return (GetDeviceRegistrationRecordsV0Response) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public List<IDeviceRegistrationRecord> getDeviceRegistrationRecords() {
        return this.mDeviceRegistrationRecords;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public String getProtocolName() {
        return "get.all.device.registration.records.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
