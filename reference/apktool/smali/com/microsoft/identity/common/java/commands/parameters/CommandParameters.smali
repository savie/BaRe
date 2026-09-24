.class public Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private applicationName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private applicationVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private callerPackageName:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private callerSignature:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private childClientId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private childRedirectUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private correlationId:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private final transient flightInformation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient isSharedDevice:Z

.field private final transient oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

.field private final transient platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

.field private powerOptCheckEnabled:Z
    .annotation runtime Lq03;
    .end annotation
.end field

.field private redirectUri:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private requiredBrokerProtocolVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private sdkType:Lcom/microsoft/identity/common/java/request/SdkType;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;
    .annotation runtime Lq03;
    .end annotation
.end field

.field private spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
    .annotation runtime Lq03;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$1800(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$1900(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2000(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice:Z

    .line 23
    .line 24
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2100(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2200(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2300(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2400(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/request/SdkType;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2500(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2600(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2700(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2800(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$2900(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3000(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 83
    .line 84
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3100(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3200(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3300(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3400(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_0
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->flightInformation:Ljava/util/Map;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_1
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3500(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->correlationId:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->access$3600(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_1
    const-string p0, "platformComponents is marked non-null but is null"

    .line 126
    .line 127
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 p0, 0x0

    .line 131
    throw p0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->flightInformation:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 22
    .line 23
    iget-boolean v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_5
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    if-eqz v1, :cond_7

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_7

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_7
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 68
    .line 69
    if-nez v0, :cond_8

    .line 70
    .line 71
    if-eqz v1, :cond_9

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_9

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_9
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 84
    .line 85
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 86
    .line 87
    if-nez v0, :cond_a

    .line 88
    .line 89
    if-eqz v1, :cond_b

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_b

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_b
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 104
    .line 105
    if-nez v0, :cond_c

    .line 106
    .line 107
    if-eqz v1, :cond_d

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_d

    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_d
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 122
    .line 123
    if-nez v0, :cond_e

    .line 124
    .line 125
    if-eqz v1, :cond_f

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_f

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_f
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 140
    .line 141
    if-nez v0, :cond_10

    .line 142
    .line 143
    if-eqz v1, :cond_11

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_11

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_11
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 156
    .line 157
    if-nez v0, :cond_12

    .line 158
    .line 159
    if-eqz v1, :cond_13

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_13

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_13
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 172
    .line 173
    if-nez v0, :cond_14

    .line 174
    .line 175
    if-eqz v1, :cond_15

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_15

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_15
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 188
    .line 189
    if-nez v0, :cond_16

    .line 190
    .line 191
    if-eqz v1, :cond_17

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_17

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_17
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 204
    .line 205
    if-nez v0, :cond_18

    .line 206
    .line 207
    if-eqz v1, :cond_19

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_19

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_19
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 218
    .line 219
    iget-object p1, p1, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 220
    .line 221
    if-nez p0, :cond_1a

    .line 222
    .line 223
    if-eqz p1, :cond_1b

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_1b

    .line 231
    .line 232
    :goto_0
    const/4 p0, 0x0

    .line 233
    return p0

    .line 234
    :cond_1b
    :goto_1
    const/4 p0, 0x1

    .line 235
    return p0
.end method

.method public final getApplicationIdentifier()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApplicationVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChildClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChildRedirectUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCorrelationId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOAuth2TokenCache()Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->oAuth2TokenCache:Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->platformComponents:Lcom/microsoft/identity/common/java/interfaces/PlatformComponents;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequiredBrokerProtocolVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasNestedAppParameters()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4f

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x61

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x3b

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationName:Ljava/lang/String;

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    const/16 v3, 0x2b

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    move v2, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_1
    add-int/2addr v0, v2

    .line 27
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->applicationVersion:Ljava/lang/String;

    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    move v2, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_2
    add-int/2addr v0, v2

    .line 39
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->requiredBrokerProtocolVersion:Ljava/lang/String;

    .line 40
    .line 41
    mul-int/2addr v0, v1

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v3

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    .line 52
    .line 53
    mul-int/2addr v0, v1

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    move v2, v3

    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_4
    add-int/2addr v0, v2

    .line 63
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->sdkVersion:Ljava/lang/String;

    .line 64
    .line 65
    mul-int/2addr v0, v1

    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :goto_5
    add-int/2addr v0, v2

    .line 75
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->clientId:Ljava/lang/String;

    .line 76
    .line 77
    mul-int/2addr v0, v1

    .line 78
    if-nez v2, :cond_6

    .line 79
    .line 80
    move v2, v3

    .line 81
    goto :goto_6

    .line 82
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    :goto_6
    add-int/2addr v0, v2

    .line 87
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->redirectUri:Ljava/lang/String;

    .line 88
    .line 89
    mul-int/2addr v0, v1

    .line 90
    if-nez v2, :cond_7

    .line 91
    .line 92
    move v2, v3

    .line 93
    goto :goto_7

    .line 94
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_7
    add-int/2addr v0, v2

    .line 99
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childClientId:Ljava/lang/String;

    .line 100
    .line 101
    mul-int/2addr v0, v1

    .line 102
    if-nez v2, :cond_8

    .line 103
    .line 104
    move v2, v3

    .line 105
    goto :goto_8

    .line 106
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :goto_8
    add-int/2addr v0, v2

    .line 111
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->childRedirectUri:Ljava/lang/String;

    .line 112
    .line 113
    mul-int/2addr v0, v1

    .line 114
    if-nez v2, :cond_9

    .line 115
    .line 116
    move v2, v3

    .line 117
    goto :goto_9

    .line 118
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    :goto_9
    add-int/2addr v0, v2

    .line 123
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerPackageName:Ljava/lang/String;

    .line 124
    .line 125
    mul-int/2addr v0, v1

    .line 126
    if-nez v2, :cond_a

    .line 127
    .line 128
    move v2, v3

    .line 129
    goto :goto_a

    .line 130
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :goto_a
    add-int/2addr v0, v2

    .line 135
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->callerSignature:Ljava/lang/String;

    .line 136
    .line 137
    mul-int/2addr v0, v1

    .line 138
    if-nez v2, :cond_b

    .line 139
    .line 140
    move v2, v3

    .line 141
    goto :goto_b

    .line 142
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    :goto_b
    add-int/2addr v0, v2

    .line 147
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->spanContext:Lcom/microsoft/identity/common/java/opentelemetry/SerializableSpanContext;

    .line 148
    .line 149
    mul-int/2addr v0, v1

    .line 150
    if-nez p0, :cond_c

    .line 151
    .line 152
    goto :goto_c

    .line 153
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    :goto_c
    add-int/2addr v0, v3

    .line 158
    return v0
.end method

.method public final isPowerOptCheckEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->powerOptCheckEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSharedDevice()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->isSharedDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->correlationId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
