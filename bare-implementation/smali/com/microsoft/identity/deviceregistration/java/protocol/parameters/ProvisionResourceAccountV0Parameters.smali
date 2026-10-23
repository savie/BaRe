.class public Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;
.super Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer<",
            "Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRaObjectId:Ljava/lang/String;

.field private final mTenantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;

    .line 2
    .line 3
    const-class v1, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/microsoft/identity/deviceregistration/java/protocol/packer/DeviceRegistrationProtocolMoshiSerializer;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;-><init>(Ljava/util/UUID;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->mTenantId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->mRaObjectId:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "raObjectId is marked non-null but is null"

    .line 17
    .line 18
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const-string p0, "tenantId is marked non-null but is null"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_2
    const-string p0, "correlationId is marked non-null but is null"

    .line 29
    .line 30
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public static create([B)Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

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
    check-cast p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public getProtocolName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "protocol.provision.resource.account.v0"

    .line 2
    .line 3
    return-object p0
.end method

.method public getRaObjectId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->mRaObjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->mTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public serialize()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/ProvisionResourceAccountV0Parameters;->serializer:Lcom/microsoft/identity/deviceregistration/java/protocol/packer/IDeviceRegistrationProtocolSerializer;

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
