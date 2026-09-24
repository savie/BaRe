.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;
.super Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mClaims:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "claims"
    .end annotation
.end field

.field private mClientAppName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-app-name"
    .end annotation
.end field

.field private mClientAppVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-app-ver"
    .end annotation
.end field

.field private mClientInfoEnabled:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "client_info"
    .end annotation
.end field

.field private mCodeVerifier:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code_verifier"
    .end annotation
.end field

.field private mCorrelationId:Ljava/util/UUID;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "client-request-id"
    .end annotation
.end field

.field private mDeviceCode:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "device_code"
    .end annotation
.end field

.field private mIdTokenVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "itver"
    .end annotation
.end field

.field private mInstanceAware:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "instance_aware"
    .end annotation
.end field

.field private mMamVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "mamver"
    .end annotation
.end field

.field private mMicrosoftEnrollmentId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "microsoft_enrollment_id"
    .end annotation
.end field

.field private mTransferToken:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "transfer_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClientInfoEnabled:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getClientAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClientAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientAppVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClientAppVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setClaims(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClientAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClientAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setClientAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mClientAppVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCodeVerifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mCodeVerifier:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCorrelationId(Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mCorrelationId:Ljava/util/UUID;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeviceCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mDeviceCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIdTokenVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenRequest;->mIdTokenVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
