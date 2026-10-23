.class public final Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mCallerDataBoundary:Ljava/lang/String;

.field private mCloudInstance:Ljava/lang/String;

.field private mError:Ljava/lang/String;

.field private mSubError:Ljava/lang/String;


# direct methods
.method public static fromPipeDelimited(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;
    .locals 6

    .line 1
    const-string v0, "ClientDataInfo"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "\\|"

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    array-length v1, p0

    .line 19
    const/4 v3, 0x3

    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    .line 22
    const-string p0, "clientdata pipe-delimited value has fewer than 3 segments."

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    aget-object v4, p0, v4

    .line 37
    .line 38
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    move-object v4, v2

    .line 45
    :cond_2
    iput-object v4, v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mAccountType:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    aget-object v4, p0, v4

    .line 49
    .line 50
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    :cond_3
    iput-object v4, v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mError:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    aget-object v4, p0, v4

    .line 61
    .line 62
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    move-object v4, v2

    .line 69
    :cond_4
    iput-object v4, v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mSubError:Ljava/lang/String;

    .line 70
    .line 71
    array-length v4, p0

    .line 72
    if-le v4, v3, :cond_5

    .line 73
    .line 74
    aget-object v3, p0, v3

    .line 75
    .line 76
    invoke-static {v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    :cond_5
    move-object v3, v2

    .line 83
    :cond_6
    iput-object v3, v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mCallerDataBoundary:Ljava/lang/String;

    .line 84
    .line 85
    array-length v3, p0

    .line 86
    const/4 v4, 0x4

    .line 87
    if-le v3, v4, :cond_7

    .line 88
    .line 89
    aget-object p0, p0, v4

    .line 90
    .line 91
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_8

    .line 96
    .line 97
    :cond_7
    move-object p0, v2

    .line 98
    :cond_8
    iput-object p0, v1, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mCloudInstance:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    return-object v1

    .line 101
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "Failed to parse clientdata pipe-delimited value: "

    .line 104
    .line 105
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v2
.end method

.method private static truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final emitToSpan()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/java/opentelemetry/SpanExtension;->current()Lqj7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mError:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->truncate(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mSubError:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->truncate(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mAccountType:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    const-string v2, "m"

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v1, "MSA"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v2, "e"

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const-string v1, "AAD"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string v1, "ClientDataInfo"

    .line 52
    .line 53
    const-string v2, "Unknown account_type value in clientdata; emitting as UNKNOWN."

    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "UNKNOWN"

    .line 59
    .line 60
    :goto_0
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->truncate(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mCloudInstance:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-static {v1}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->truncate(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->mCallerDataBoundary:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/ClientDataInfo;->truncate(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :cond_6
    return-void
.end method
