.class public final Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private certAuthorities:Ljava/util/ArrayList;

.field private context:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private submitUrl:Ljava/lang/String;

.field private tenantId:Ljava/lang/String;

.field private thumbprint:Ljava/lang/String;

.field private version:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;
    .locals 9

    .line 1
    new-instance v7, Lcom/microsoft/identity/common/java/util/JWSBuilder;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->nonce:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->context:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->certAuthorities:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->thumbprint:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->version:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->submitUrl:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v8, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->tenantId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/JWSBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final certAuthorities(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->certAuthorities:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final context(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->context:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final nonce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->nonce:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final submitUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->submitUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final tenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->tenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final thumbprint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->thumbprint:Ljava/lang/String;

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
    const-string v1, "PKeyAuthChallenge.PKeyAuthChallengeBuilder(nonce="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->nonce:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", context="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->context:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", certAuthorities="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->certAuthorities:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", thumbprint="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->thumbprint:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", version="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->version:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", submitUrl="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->submitUrl:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", jwsBuilder$value=null, tenantId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->tenantId:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, ")"

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

.method public final version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
