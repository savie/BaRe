package com.microsoft.identity.deviceregistration.java.protocol.response;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UnregisterDeviceV0Response extends AbstractDeviceRegistrationProtocolResponse {
    private static final IDeviceRegistrationProtocolSerializer<UnregisterDeviceV0Response> serializer = new DeviceRegistrationProtocolMoshiSerializer(UnregisterDeviceV0Response.class);

    public UnregisterDeviceV0Response(UUID uuid) {
        super(uuid);
        if (uuid != null) {
            return;
        }
        f6.n("correlationId is marked non-null but is null");
        throw null;
    }

    public static UnregisterDeviceV0Response create(byte[] bArr) throws ClientException {
        return (UnregisterDeviceV0Response) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public String getProtocolName() {
        return "protocol.unregister.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
