.class public abstract Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;
.super Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest<",
        "TT;>;>",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final transient mAuthority:Ljava/net/URL;

.field private final mCorrelationId:Ljava/util/UUID;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "client-request-id"
    .end annotation
.end field

.field private final mDiagnosticCPU:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-CPU"
    .end annotation
.end field

.field private final mDiagnosticDM:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-DM"
    .end annotation
.end field

.field private final mDiagnosticMN:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-MN"
    .end annotation
.end field

.field private final mDiagnosticOS:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-OS"
    .end annotation
.end field

.field private final mDiagnosticReleaseOS:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-ReleaseOS"
    .end annotation
.end field

.field private final mDomainHint:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "domain_hint"
    .end annotation
.end field

.field private final mLibraryName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-SKU"
    .end annotation
.end field

.field private final mLibraryVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "x-client-Ver"
    .end annotation
.end field

.field private final mLoginHint:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "login_hint"
    .end annotation
.end field

.field private final mMultipleCloudAware:Ljava/lang/Boolean;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "instance_aware"
    .end annotation
.end field

.field private final mPkceCodeChallenge:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code_challenge"
    .end annotation
.end field

.field private final mPkceCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "code_challenge_method"
    .end annotation
.end field

.field private final transient mPkceCodeVerifier:Ljava/lang/String;

.field private final mPreferredAuthMethodCode:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation

    .annotation runtime Ly77;
        value = "pc"
    .end annotation
.end field

.field private final mWorkProfileAvailable:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "x-client-WPAvailable"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$000(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/net/URL;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$100$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$200$1(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDomainHint:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/util/UUID;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mCorrelationId:Ljava/util/UUID;

    .line 27
    .line 28
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->newPkceChallenge()Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeChallengeMethod()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallengeMethod:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeChallenge()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallenge:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeVerifier()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeVerifier:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$500(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$600(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$700(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$800(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    move-object p1, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->access$800(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget p1, p1, Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;->code:I

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPreferredAuthMethodCode:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getOsForEsts()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticOS:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getModel()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticDM:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getCpu()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticCPU:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Lcom/microsoft/identity/common/java/flighting/CommonFlightsManager;->getFlightsProvider$1()Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 112
    .line 113
    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/flighting/IFlightsProvider;->isFlightEnabled(Lcom/microsoft/identity/common/java/flighting/CommonFlight;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getManufacturer()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticMN:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getAndroidReleaseOs()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticReleaseOS:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->isInPersonalProfileButClouddpcWorkProfileAvailable()Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mWorkProfileAvailable:Ljava/lang/Boolean;

    .line 136
    .line 137
    return-void

    .line 138
    :cond_1
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticMN:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticReleaseOS:Ljava/lang/String;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mWorkProfileAvailable:Ljava/lang/Boolean;

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLibraryName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLibraryVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoginHint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMultipleCloudAware()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPkceCodeVerifier()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeVerifier:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
