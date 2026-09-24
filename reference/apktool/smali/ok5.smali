.class public final Lok5;
.super Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lnk5;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;Lnk5;Lb05;Lsl4;Lsl4;Lns0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lok5;->a:Lnk5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lok5;->a:Lnk5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
