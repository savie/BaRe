.class public Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mClaimsChallenge:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "claims"
    .end annotation
.end field

.field private mPrompt:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "prompt"
    .end annotation
.end field

.field private mResource:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "resource"
    .end annotation
.end field


# virtual methods
.method public final getAuthorizationEndpoint()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
