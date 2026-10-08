package com.microsoft.identity.deviceregistration.java.protocol.response;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.deviceregistration.java.protocol.packer.DeviceRegistrationProtocolMoshiSerializer;
import com.microsoft.identity.deviceregistration.java.protocol.packer.IDeviceRegistrationProtocolSerializer;
import defpackage.f6;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class InstallCertificateSilentlyV0Response extends AbstractDeviceRegistrationProtocolResponse {
    private static final IDeviceRegistrationProtocolSerializer<InstallCertificateSilentlyV0Response> serializer = new DeviceRegistrationProtocolMoshiSerializer(InstallCertificateSilentlyV0Response.class);
    private final boolean mCertificateInstalled;

    public InstallCertificateSilentlyV0Response(UUID uuid, boolean z) {
        super(uuid);
        if (uuid != null) {
            this.mCertificateInstalled = z;
        } else {
            f6.n("correlationId is marked non-null but is null");
            throw null;
        }
    }

    public static InstallCertificateSilentlyV0Response create(byte[] bArr) throws ClientException {
        return (InstallCertificateSilentlyV0Response) ((DeviceRegistrationProtocolMoshiSerializer) serializer).deserialize(bArr);
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public String getProtocolName() {
        return "protocol.install.certificate.silently.v0";
    }

    public boolean isCertificateInstalled() {
        return this.mCertificateInstalled;
    }

    @Override // com.microsoft.identity.deviceregistration.java.protocol.response.AbstractDeviceRegistrationProtocolResponse, com.microsoft.identity.deviceregistration.java.protocol.response.IDeviceRegistrationProtocolResponse
    public byte[] serialize() {
        return ((DeviceRegistrationProtocolMoshiSerializer) serializer).serialize(this);
    }
}
