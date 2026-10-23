.class public Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;
.super Lcom/microsoft/identity/deviceregistration/java/protocol/response/AbstractDeviceRegistrationProtocolResponse;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer<",
            "Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityClassName:Ljava/lang/String;

.field private final mBrokerPackageName:Ljava/lang/String;

.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallCertActivityErrorKey:Ljava/lang/String;

.field private final mInstallCertActivityResultKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/deviceregistration/java/protocol/response/AbstractDeviceRegistrationProtocolResponse;-><init>(Ljava/util/UUID;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    if-eqz p3, :cond_3

    .line 10
    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    if-eqz p5, :cond_1

    .line 14
    .line 15
    if-eqz p6, :cond_0

    .line 16
    .line 17
    iput-object p2, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mActivityClassName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mBrokerPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mInstallCertActivityResultKey:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mInstallCertActivityErrorKey:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mExtras:Ljava/util/Map;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "extras is marked non-null but is null"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    const-string p0, "installCertActivityErrorKey is marked non-null but is null"

    .line 35
    .line 36
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    const-string p0, "installCertActivityResultKey is marked non-null but is null"

    .line 41
    .line 42
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_3
    const-string p0, "brokerPackageName is marked non-null but is null"

    .line 47
    .line 48
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_4
    const-string p0, "activityClassName is marked non-null but is null"

    .line 53
    .line 54
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_5
    const-string p0, "correlationId is marked non-null but is null"

    .line 59
    .line 60
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public static create([B)Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

    .line 2
    .line 3
    check-cast v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->deserialize([B)Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public getActivityClassName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mActivityClassName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBrokerPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mBrokerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInstallCertActivityErrorKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mInstallCertActivityErrorKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInstallCertActivityResultKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->mInstallCertActivityResultKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "protocol.device.registration.with.tokens.v0"

    .line 2
    .line 3
    return-object p0
.end method

.method public serialize()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/response/GetInstallWpjCertificateIntentRequestV0Response;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

    .line 2
    .line 3
    check-cast v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;->serialize(Lcom/microsoft/identity/deviceregistration/java/protocol/IDeviceRegistrationProtocol;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
