.class public abstract Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected mCloudGraphHostName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mCloudInstanceName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mCorrelationId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mDeviceCode:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mExpiresIn:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mInterval:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mMessage:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mSessionState:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mUserCode:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field protected mVerificationUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field


# virtual methods
.method public final getCloudInstanceHostName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceHostName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeviceCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mDeviceCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
