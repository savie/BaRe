.class public final Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mApplicationIdentifier:Ljava/lang/String;

.field private mAuthority:Ljava/net/URL;

.field private mBrkClientId:Ljava/lang/String;

.field private mBrkRedirectUri:Ljava/lang/String;

.field private mClaims:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mCompanyPortalVersion:Ljava/lang/String;

.field private mCorrelationId:Ljava/util/UUID;

.field private mDomainHint:Ljava/lang/String;

.field public mExtraQueryParams:Ljava/util/ArrayList;

.field private mFlightParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLibraryName:Ljava/lang/String;

.field private mLibraryVersion:Ljava/lang/String;

.field private mLoginHint:Ljava/lang/String;

.field private mMultipleCloudAware:Ljava/lang/Boolean;

.field private mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

.field private mPreferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

.field private mPrompt:Ljava/lang/String;

.field private mRedirectUri:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScope:Ljava/lang/String;

.field private mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

.field private mState:Ljava/lang/String;

.field private mTokenScope:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUtid:Ljava/lang/String;

.field private mWebViewZoomControlsEnabled:Z

.field private mWebViewZoomEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "-"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mFlightParameters:Ljava/util/Map;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/net/URL;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mAuthority:Ljava/net/URL;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100$2(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mUtid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mDomainHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200$2(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mCompanyPortalVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/util/UUID;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mCorrelationId:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$300$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mState:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mMultipleCloudAware:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mTokenScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mBrkClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLibraryVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mBrkRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/util/Map;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mFlightParameters:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mPreferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mApplicationIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final setApplicationIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mApplicationIdentifier:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAuthority(Ljava/net/URL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mAuthority:Ljava/net/URL;

    .line 2
    .line 3
    return-void
.end method

.method public final setBrkClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mBrkClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBrkRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mBrkRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setClaims(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCorrelationId(Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mCorrelationId:Ljava/util/UUID;

    .line 2
    .line 3
    return-void
.end method

.method public final setDomainHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mDomainHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFlightParameters(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mFlightParameters:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public final setInstalledCompanyPortalVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mCompanyPortalVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLibraryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLibraryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLibraryVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLibraryVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoginHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMultipleCloudAware(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mMultipleCloudAware:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public final setOpenIdProviderConfiguration(Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mOpenIdProviderConfiguration:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdProviderConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method public final setPreferredAuthMethod(Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mPreferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRequestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mState:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTokenScope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mTokenScope:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mUid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUtid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mUtid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setWebViewZoomControlsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->mWebViewZoomEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
