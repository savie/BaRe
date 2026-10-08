package com.microsoft.identity.deviceregistration.java.protocol.parameters;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceRegistrationPreAuthorizedV0Parameters extends AbstractDeviceRegistrationProtocolParameters {
    private static final IDeviceRegistrationProtocolSerializer<DeviceRegistrationPreAuthorizedV0Parameters> serializer = new DeviceRegistrationProtocolMoshiSerializer(DeviceRegistrationPreAuthorizedV0Parameters.class);
    private final boolean mChallengeEncrypted;
    private final String mDiscoveryEndpointName;
    private final String mPreAuthorizedJoinChallenge;
    private final boolean mRegisterAsSharedDevice;
    private final String mTenantId;

    public DeviceRegistrationPreAuthorizedV0Parameters(UUID uuid, String str, String str2, boolean z, boolean z2, String str3) {
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
            f6.n("preAuthorizedJoinChallenge is marked non-null but is null");
            throw null;
        }
        this.mTenantId = str;
        this.mPreAuthorizedJoinChallenge = str2;
        this.mChallengeEncrypted = z;
        this.mRegisterAsSharedDevice = z2;
        this.mDiscoveryEndpointName = str3;
    }

    public static DeviceRegistrationPreAuthorizedV0Parameters create(byte[] bArr) throws ClientException {
        return (DeviceRegistrationPreAuthorizedV0Parameters) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public String getDiscoveryEndpointName() {
        return this.mDiscoveryEndpointName;
    }

    public String getPreAuthorizedJoinChallenge() {
        return this.mPreAuthorizedJoinChallenge;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public String getProtocolName() {
        return "protocol.device.registration.preauthorized.v0";
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public boolean isChallengeEncrypted() {
        return this.mChallengeEncrypted;
    }

    public boolean isRegisterAsSharedDevice() {
        return this.mRegisterAsSharedDevice;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.parameters.AbstractDeviceRegistrationProtocolParameters, com.microsoft.identity.deviceregistration.java.protocol.parameters.IDeviceRegistrationProtocolParameters
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
