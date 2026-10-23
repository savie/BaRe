.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
        "TC;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private callerPackageName:Ljava/lang/String;

.field private callerSignature:Ljava/lang/String;

.field private childClientId:Ljava/lang/String;

.field private childRedirectUri:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private correlationId:Ljava/lang/String;

.field private flightInformation$set:Z

.field private flightInformation$value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isSharedDevice:Z

.field private oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

.field private platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field private powerOptCheckEnabled:Z

.field private redirectUri:Ljava/lang/String;

.field private requiredBrokerProtocolVersion:Ljava/lang/String;

.field private sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

.field private sdkVersion:Ljava/lang/String;

.field private spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;


# direct methods
.method public static synthetic access$1800(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2100(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2500(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2800(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3000(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3100(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerSignature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->flightInformation$set:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3400(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->flightInformation$value:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3500(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3600(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/request/SdkType;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$800(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childClientId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childRedirectUri:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerPackageName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerSignature:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->flightInformation$value:Ljava/util/Map;

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->flightInformation$set:Z

    .line 110
    .line 111
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->access$1700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 123
    .line 124
    return-void
.end method

.method public final applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isSharedDevice(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final oAuth2TokenCache(Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final platformComponents(Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;",
            ")TB;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "platformComponents is marked non-null but is null"

    .line 11
    .line 12
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final powerOptCheckEnabled(Z)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final redirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final requiredBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final sdkType(Lcom/microsoft/identity/common/java/request/SdkType;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/request/SdkType;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final sdkVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public abstract self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CommandParameters.CommandParametersBuilder(platformComponents="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", oAuth2TokenCache="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isSharedDevice="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->isSharedDevice:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", applicationName="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", applicationVersion="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->applicationVersion:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", requiredBrokerProtocolVersion="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", sdkType="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", sdkVersion="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->sdkVersion:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", clientId="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->clientId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", redirectUri="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->redirectUri:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", childClientId="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childClientId:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", childRedirectUri="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->childRedirectUri:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", powerOptCheckEnabled="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->powerOptCheckEnabled:Z

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", callerPackageName="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerPackageName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", callerSignature="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->callerSignature:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", flightInformation$value="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->flightInformation$value:Ljava/util/Map;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", correlationId="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->correlationId:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", spanContext="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 179
    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p0, ")"

    .line 184
    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0
.end method
