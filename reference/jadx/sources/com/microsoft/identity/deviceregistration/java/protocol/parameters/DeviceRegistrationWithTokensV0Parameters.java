package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceRegistrationWithTokensV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<DeviceRegistrationWithTokensV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(DeviceRegistrationWithTokensV0Parameters.class);
    private final String mAccessToken;
    private final String mDiscoveryEndpointName;
    private final String mIdToken;
    private final String mRefreshToken;
    private final boolean mRegisterAsSharedDevice;

    public DeviceRegistrationWithTokensV0Parameters(UUID uuid, String str, String str2, String str3, boolean z, String str4) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("idToken is marked non-null but is null");
            throw null;
        }
        if (str2 == null) {
            f6.n("accessToken is marked non-null but is null");
            throw null;
        }
        if (str3 == null) {
            f6.n("refreshToken is marked non-null but is null");
            throw null;
        }
        this.mIdToken = str;
        this.mAccessToken = str2;
        this.mRefreshToken = str3;
        this.mRegisterAsSharedDevice = z;
        this.mDiscoveryEndpointName = str4;
    }

    public static DeviceRegistrationWithTokensV0Parameters create(byte[] bArr) throws ClientException {
        return (DeviceRegistrationWithTokensV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public String getDiscoveryEndpointName() {
        return this.mDiscoveryEndpointName;
    }

    public String getIdToken() {
        return this.mIdToken;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.device.registration.with.tokens.v0";
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public boolean isRegisterAsSharedDevice() {
        return this.mRegisterAsSharedDevice;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
