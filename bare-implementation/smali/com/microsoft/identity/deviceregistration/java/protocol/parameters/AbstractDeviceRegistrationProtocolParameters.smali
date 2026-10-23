.class public abstract Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/IDeviceRegistrationProtocolParameters;


# instance fields
.field protected final mCorrelationId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;->mCorrelationId:Ljava/util/UUID;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "correlationId is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public getCorrelationId()Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/deviceregistration/java/protocol/parameters/AbstractDeviceRegistrationProtocolParameters;->mCorrelationId:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract synthetic getProtocolName()Ljava/lang/String;
.end method

.method public abstract synthetic serialize()[B
.end method
