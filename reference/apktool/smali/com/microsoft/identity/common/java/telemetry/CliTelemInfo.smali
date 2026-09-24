.class public final Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;


# instance fields
.field private mRefreshTokenAge:Ljava/lang/String;

.field private mServerErrorCode:Ljava/lang/String;

.field private mServerSubErrorCode:Ljava/lang/String;

.field private mSpeRing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^[1-9]+\\.?[0-9|\\.]*,[0-9|\\.]*,[0-9|\\.]*,[^,]*[0-9\\.]*,[^,]*$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static fromXMsCliTelemHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    array-length v3, v2

    .line 16
    const-string v4, "CliTelemInfo"

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    const-string p0, "SPE Ring header missing version field."

    .line 21
    .line 22
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    aget-object v2, v2, v3

    .line 28
    .line 29
    new-instance v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "1"

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    sget-object v2, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-string p0, "Malformed x-ms-clitelem header"

    .line 55
    .line 56
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_2
    const/4 v1, 0x5

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 v0, 0x1

    .line 66
    aget-object v0, p0, v0

    .line 67
    .line 68
    iput-object v0, v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    aget-object v0, p0, v0

    .line 72
    .line 73
    iput-object v0, v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    aget-object v0, p0, v0

    .line 77
    .line 78
    iput-object v0, v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v0, 0x4

    .line 81
    aget-object p0, p0, v0

    .line 82
    .line 83
    iput-object p0, v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    .line 84
    .line 85
    return-object v3

    .line 86
    :cond_3
    const-string p0, "Unrecognized x-ms-clitelem header version"

    .line 87
    .line 88
    invoke-static {v4, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v1
.end method


# virtual methods
.method public final getRefreshTokenAge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerSubErrorCode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpeRing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
