.class public final Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mCertAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Ljava/lang/String;

.field private final mSubmitUrl:Ljava/lang/String;

.field private final mThumbprint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/JWSBuilder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private getChallengeHeaderWithoutSignedJwt()Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "PKeyAuth Context=\""

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, "\",Version=\"1.0\""

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "Authorization"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public final getChallengeHeader()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const-string v0, "PKeyAuthChallenge:getChallengeHeader"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v1, "Both cert Authorities and Thumbprint are not provided.Sending a response which is equivalent to no certificate present on client."

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string v1, "Device Certificate loader is not initialized."

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final getSubmitUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
