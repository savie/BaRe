package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.api.IDeviceRegistrationRecord;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetDeviceTokenV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<GetDeviceTokenV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetDeviceTokenV0Parameters.class);
    private final IDeviceRegistrationRecord mDeviceRegistrationRecord;
    private final String mResources;
    private final String mScope;

    public GetDeviceTokenV0Parameters(UUID uuid, IDeviceRegistrationRecord iDeviceRegistrationRecord, String str, String str2) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (iDeviceRegistrationRecord == null) {
            f6.n("deviceRegistrationRecord is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("resources is marked non-null but is null");
            throw null;
        }
        this.mDeviceRegistrationRecord = iDeviceRegistrationRecord;
        this.mResources = str;
        this.mScope = str2;
    }

    public static GetDeviceTokenV0Parameters create(byte[] bArr) throws ClientException {
        return (GetDeviceTokenV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public IDeviceRegistrationRecord getDeviceRegistrationRecord() {
        return this.mDeviceRegistrationRecord;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.get.device.token.v0";
    }

    public String getResources() {
        return this.mResources;
    }

    public String getScope() {
        return this.mScope;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
