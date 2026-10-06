package com.microsoft.identity.deviceregistration.java.protocol.response;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GetInstallWpjCertificateIntentRequestV0Response extends AbstractDeviceRegistrationProtocolResponse {
    private static final IDeviceRegistrationProtocolSerializer<GetInstallWpjCertificateIntentRequestV0Response> serializer = new DeviceRegistrationProtocolMoshiSerializer(GetInstallWpjCertificateIntentRequestV0Response.class);
    private final String mActivityClassName;
    private final String mBrokerPackageName;
    private final Map<String, String> mExtras;
    private final String mInstallCertActivityErrorKey;
    private final String mInstallCertActivityResultKey;

    public GetInstallWpjCertificateIntentRequestV0Response(UUID uuid, String str, String str2, String str3, String str4, Map<String, String> map) {
        super(uuid);
        if (uuid == null) {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("activityClassName is marked non-null but is null");
            throw null;
        }
        if (str2 == null) {
            f6.n("brokerPackageName is marked non-null but is null");
            throw null;
        }
        if (str3 == null) {
            f6.n("installCertActivityResultKey is marked non-null but is null");
            throw null;
        }
        if (str4 == null) {
            f6.n("installCertActivityErrorKey is marked non-null but is null");
            throw null;
        }
        if (map == null) {
            f6.n("extras is marked non-null but is null");
            throw null;
        }
        this.mActivityClassName = str;
        this.mBrokerPackageName = str2;
        this.mInstallCertActivityResultKey = str3;
        this.mInstallCertActivityErrorKey = str4;
        this.mExtras = map;
    }

    public static GetInstallWpjCertificateIntentRequestV0Response create(byte[] bArr) throws ClientException {
        return (GetInstallWpjCertificateIntentRequestV0Response) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    public String getActivityClassName() {
        return this.mActivityClassName;
    }

    public String getBrokerPackageName() {
        return this.mBrokerPackageName;
    }

    public Map<String, String> getExtras() {
        return this.mExtras;
    }

    public String getInstallCertActivityErrorKey() {
        return this.mInstallCertActivityErrorKey;
    }

    public String getInstallCertActivityResultKey() {
        return this.mInstallCertActivityResultKey;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public String getProtocolName() {
        return "protocol.device.registration.with.tokens.v0";
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
