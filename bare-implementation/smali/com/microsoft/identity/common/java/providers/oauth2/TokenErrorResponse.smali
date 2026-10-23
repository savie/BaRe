.class public Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/IErrorResponse;


# instance fields
.field private mError:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "error"
    .end annotation
.end field

.field private mErrorDescription:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "error_description"
    .end annotation
.end field

.field private mErrorUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "error_uri"
    .end annotation
.end field

.field private mResponseBody:Ljava/lang/String;

.field private mResponseHeadersJson:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private mStatusCode:I
    .annotation runtime Lq03;
    .end annotation
.end field

.field private mSubError:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "suberror"
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
.method public final getError()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mError:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mErrorDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResponseBody()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseBody:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResponseHeadersJson()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseHeadersJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatusCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mStatusCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSubError()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mSubError:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mError:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mErrorDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseBody:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseHeadersJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseHeadersJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mStatusCode:I

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
    const-string v1, "TokenErrorResponse{mStatusCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mStatusCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mResponseBody=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseBody:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', mResponseHeadersJson="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mResponseHeadersJson:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mError=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mError:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', mSubError=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mSubError:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', mErrorDescription=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mErrorDescription:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', mErrorUri=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->mErrorUri:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "\'}"

    .line 71
    .line 72
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
