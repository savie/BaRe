.class public final Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/IResult;


# instance fields
.field private mCliTelemInfo:Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

.field private final mSuccess:Z

.field private final mTokenErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

.field private final mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenErrorResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mSuccess:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mSuccess:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mCliTelemInfo:Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mSuccess:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSuccessResponse()Lcom/microsoft/identity/common/java/providers/oauth2/ISuccessResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSuccessResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    return-object p0
.end method

.method public final getTokenResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCliTelemInfo(Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mCliTelemInfo:Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

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
    const-string v1, "TokenResult{mTokenResponse="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mTokenErrorResponse="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mSuccess="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->mSuccess:Z

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
