.class public final Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final transient mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

.field private final transient mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field private transient mUsingOpenIdConfiguration:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mUsingOpenIdConfiguration:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isUsingOpenIdConfiguration()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mUsingOpenIdConfiguration:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setUsingOpenIdConfiguration(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mUsingOpenIdConfiguration:Z

    .line 2
    .line 3
    return-void
.end method
