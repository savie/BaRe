.class public final Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

.field private platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;


# virtual methods
.method public final authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-void
.end method

.method public final build()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;-><init>(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

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
    const-string v1, "OAuth2StrategyParameters.OAuth2StrategyParametersBuilder(platformComponents="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", authenticationScheme="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", challengeTypes=null, capabilities=null, usingOpenIdConfiguration=false)"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
