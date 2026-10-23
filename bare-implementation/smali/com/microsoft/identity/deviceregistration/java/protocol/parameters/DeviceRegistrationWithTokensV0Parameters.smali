.class public Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;
.super Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer<",
            "Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mDiscoveryEndpointName:Ljava/lang/String;

.field private final mIdToken:Ljava/lang/String;

.field private final mRefreshToken:Ljava/lang/String;

.field private final mRegisterAsSharedDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;-><init>(Ljava/util/UUID;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iput-object p2, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mIdToken:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mAccessToken:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mRefreshToken:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p5, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mRegisterAsSharedDevice:Z

    .line 20
    .line 21
    iput-object p6, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mDiscoveryEndpointName:Ljava/lang/String;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "refreshToken is marked non-null but is null"

    .line 25
    .line 26
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    const-string p0, "accessToken is marked non-null but is null"

    .line 31
    .line 32
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_2
    const-string p0, "idToken is marked non-null but is null"

    .line 37
    .line 38
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    const-string p0, "correlationId is marked non-null but is null"

    .line 43
    .line 44
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public static create([B)Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

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
    check-cast p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mAccessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDiscoveryEndpointName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mDiscoveryEndpointName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mIdToken:Ljava/lang/String;

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

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mRefreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isRegisterAsSharedDevice()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->mRegisterAsSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public serialize()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/DeviceRegistrationWithTokensV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

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
