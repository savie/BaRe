.class public final Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private accountTransferToken:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

.field private authority:Ljava/lang/String;

.field private authorizationAgent:Ljava/lang/String;

.field private childClientId:Ljava/lang/String;

.field private childRedirectUri:Ljava/lang/String;

.field private claims:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private correlationId:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private extraOptions:Ljava/lang/String;

.field private extraQueryStringParameter:Ljava/lang/String;

.field private forceRefresh:Z

.field private homeAccountId:Ljava/lang/String;

.field private localAccountId:Ljava/lang/String;

.field private msalVersion:Ljava/lang/String;

.field private multipleCloudsSupported:Z

.field private powerOptCheckEnabled:Z

.field private preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

.field private preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

.field private prompt:Ljava/lang/String;

.field private redirect:Ljava/lang/String;

.field private requestHeaders:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

.field private signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

.field private spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

.field private suppressAccountPicker:Z

.field private userName:Ljava/lang/String;


# virtual methods
.method public final accountTransferToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->accountTransferToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final applicationName(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationName:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "applicationName is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final applicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationVersion:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "applicationVersion is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final authenticationScheme(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 2
    .line 3
    return-void
.end method

.method public final authority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final authorizationAgent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authorizationAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authority:Ljava/lang/String;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->scope:Ljava/lang/String;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->redirect:Ljava/lang/String;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->clientId:Ljava/lang/String;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget-object v5, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->userName:Ljava/lang/String;

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget-object v6, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->homeAccountId:Ljava/lang/String;

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget-object v7, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->localAccountId:Ljava/lang/String;

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget-object v8, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraQueryStringParameter:Ljava/lang/String;

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget-object v9, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->requestHeaders:Ljava/lang/String;

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget-object v10, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraOptions:Ljava/lang/String;

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget-object v11, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->correlationId:Ljava/lang/String;

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget-object v12, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->prompt:Ljava/lang/String;

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget-object v13, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childRedirectUri:Ljava/lang/String;

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget-object v14, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childClientId:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    iget-object v15, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->claims:Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->forceRefresh:Z

    .line 54
    .line 55
    move/from16 v18, v1

    .line 56
    .line 57
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationName:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v19, v1

    .line 60
    .line 61
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationVersion:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v20, v1

    .line 64
    .line 65
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->msalVersion:Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v21, v1

    .line 68
    .line 69
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 70
    .line 71
    move-object/from16 v22, v1

    .line 72
    .line 73
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->environment:Ljava/lang/String;

    .line 74
    .line 75
    move-object/from16 v23, v1

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->multipleCloudsSupported:Z

    .line 78
    .line 79
    move/from16 v24, v1

    .line 80
    .line 81
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authorizationAgent:Ljava/lang/String;

    .line 82
    .line 83
    move-object/from16 v25, v1

    .line 84
    .line 85
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 86
    .line 87
    move-object/from16 v26, v1

    .line 88
    .line 89
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->powerOptCheckEnabled:Z

    .line 90
    .line 91
    move/from16 v27, v1

    .line 92
    .line 93
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 94
    .line 95
    move-object/from16 v28, v1

    .line 96
    .line 97
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 98
    .line 99
    move-object/from16 v29, v1

    .line 100
    .line 101
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 102
    .line 103
    move-object/from16 v30, v1

    .line 104
    .line 105
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->accountTransferToken:Ljava/lang/String;

    .line 106
    .line 107
    move-object/from16 v31, v1

    .line 108
    .line 109
    iget-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->suppressAccountPicker:Z

    .line 110
    .line 111
    iget-object v0, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 112
    .line 113
    move-object/from16 v32, v31

    .line 114
    .line 115
    move-object/from16 v31, v0

    .line 116
    .line 117
    move-object/from16 v0, v16

    .line 118
    .line 119
    move/from16 v16, v18

    .line 120
    .line 121
    move-object/from16 v18, v20

    .line 122
    .line 123
    move-object/from16 v20, v22

    .line 124
    .line 125
    move/from16 v22, v24

    .line 126
    .line 127
    move-object/from16 v24, v26

    .line 128
    .line 129
    move-object/from16 v26, v28

    .line 130
    .line 131
    move-object/from16 v28, v30

    .line 132
    .line 133
    move/from16 v30, v1

    .line 134
    .line 135
    move-object/from16 v1, v17

    .line 136
    .line 137
    move-object/from16 v17, v19

    .line 138
    .line 139
    move-object/from16 v19, v21

    .line 140
    .line 141
    move-object/from16 v21, v23

    .line 142
    .line 143
    move-object/from16 v23, v25

    .line 144
    .line 145
    move/from16 v25, v27

    .line 146
    .line 147
    move-object/from16 v27, v29

    .line 148
    .line 149
    move-object/from16 v29, v32

    .line 150
    .line 151
    invoke-direct/range {v0 .. v31}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/request/SdkType;Ljava/lang/String;ZLjava/lang/String;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;ZLcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;Ljava/lang/String;ZLcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;)V

    .line 152
    .line 153
    .line 154
    return-object v0
.end method

.method public final childClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final childRedirectUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final claims(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->claims:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final clientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->clientId:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "clientId is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final correlationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->correlationId:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "correlationId is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final environment(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->environment:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "environment is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final extraOptions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraOptions:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final extraQueryStringParameter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraQueryStringParameter:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final forceRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->forceRefresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public final homeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->homeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final localAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->localAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final msalVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->msalVersion:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "msalVersion is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final multipleCloudsSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->multipleCloudsSupported:Z

    .line 2
    .line 3
    return-void
.end method

.method public final powerOptCheckEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final preferredAuthMethod(Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 2
    .line 3
    return-void
.end method

.method public final preferredBrowser(Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 2
    .line 3
    return-void
.end method

.method public final prompt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->prompt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final redirect(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->redirect:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "redirect is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final requestHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->requestHeaders:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final scope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->scope:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "sdkType is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final signInWithGoogleCredential(Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 2
    .line 3
    return-void
.end method

.method public final spanContext(Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 2
    .line 3
    return-void
.end method

.method public final suppressAccountPicker(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->suppressAccountPicker:Z

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
    const-string v1, "BrokerRequest.BrokerRequestBuilder(authority="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authority:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", scope="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->scope:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", redirect="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->redirect:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", clientId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->clientId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", userName="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->userName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", homeAccountId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->homeAccountId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", localAccountId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->localAccountId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", extraQueryStringParameter="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraQueryStringParameter:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", requestHeaders="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->requestHeaders:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", extraOptions="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->extraOptions:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", correlationId="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->correlationId:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", prompt="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->prompt:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", childRedirectUri="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childRedirectUri:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", childClientId="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->childClientId:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", claims="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->claims:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", forceRefresh="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->forceRefresh:Z

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", applicationName="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", applicationVersion="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->applicationVersion:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", msalVersion="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->msalVersion:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", sdkType="

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ", environment="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->environment:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ", multipleCloudsSupported="

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->multipleCloudsSupported:Z

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, ", authorizationAgent="

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authorizationAgent:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ", authenticationScheme="

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->authenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", powerOptCheckEnabled="

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->powerOptCheckEnabled:Z

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, ", spanContext="

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v1, ", preferredBrowser="

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredBrowser:Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, ", preferredAuthMethod="

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->preferredAuthMethod:Lcom/microsoft/identity/common/java/ui/PreferredAuthMethod;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v1, ", accountTransferToken="

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->accountTransferToken:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v1, ", suppressAccountPicker="

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->suppressAccountPicker:Z

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v1, ", signInWithGoogleCredential="

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->signInWithGoogleCredential:Lcom/microsoft/identity/common/internal/msafederation/google/SignInWithGoogleCredential;

    .line 309
    .line 310
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string p0, ", tenantId=null, requestType=null)"

    .line 314
    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0
.end method

.method public final userName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
