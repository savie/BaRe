.class public final Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "cloud_graph_host_name"

    .line 5
    .line 6
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudGraphHostName:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "cloud_instance_host_name"

    .line 15
    .line 16
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceHostName:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "cloud_instance_name"

    .line 25
    .line 26
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceName:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "session_state"

    .line 35
    .line 36
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mSessionState:Ljava/lang/String;

    .line 43
    .line 44
    const-string p1, "device_code"

    .line 45
    .line 46
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mDeviceCode:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "user_code"

    .line 55
    .line 56
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mUserCode:Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "verification_uri"

    .line 65
    .line 66
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mVerificationUri:Ljava/lang/String;

    .line 73
    .line 74
    const-string p1, "expires_in"

    .line 75
    .line 76
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/String;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mExpiresIn:Ljava/lang/String;

    .line 83
    .line 84
    const-string p1, "interval"

    .line 85
    .line 86
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/String;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mInterval:Ljava/lang/String;

    .line 93
    .line 94
    const-string p1, "message"

    .line 95
    .line 96
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mMessage:Ljava/lang/String;

    .line 103
    .line 104
    return-void
.end method
