.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mClientId:Ljava/lang/String;

.field private final mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

.field private mEnvironment:Ljava/lang/String;

.field private final mFamilyId:Ljava/lang/String;

.field private final mRawRefreshToken:Ljava/lang/String;

.field private final mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mRawRefreshToken:Ljava/lang/String;

    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->getClientId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mRawRefreshToken:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 49
    iput-object p3, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFamilyId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHomeAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSecret()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mRawRefreshToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
