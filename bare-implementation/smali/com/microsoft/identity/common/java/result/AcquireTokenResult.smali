.class public final Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

.field private mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

.field private mSucceeded:Ljava/lang/Boolean;

.field private mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAuthorizationResult()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalAuthenticationResult()Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSucceeded()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTokenResult()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAuthorizationResult(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResult;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalAuthenticationResult(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    .line 2
    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public final setTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    .line 2
    .line 3
    return-void
.end method
