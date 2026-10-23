.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private transient mClientId:Ljava/lang/String;

.field private mClientInfo:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "client_info"
    .end annotation
.end field

.field private mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "cloud_instance_host_name"
    .end annotation
.end field

.field private mExtendedExpiresIn:Ljava/lang/Long;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "ext_expires_in"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "foci"
    .end annotation
.end field

.field private mRefreshTokenAge:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private mRefreshTokenExpiresIn:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "refresh_token_expires_in"
    .end annotation
.end field

.field private mSessionKeyJwe:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "session_key_jwe"
    .end annotation
.end field

.field private mSpeRing:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtExpiresIn()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFamilyId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MicrosoftTokenResponse{mExtExpiresOn=null, mClientInfo=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', mClientId=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', mExtendedExpiresIn="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mFamilyId=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\'} "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-super {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
