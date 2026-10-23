.class public final Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final error:Ljava/lang/String;

.field private final negotiatedProtocolVersion:Ljava/lang/String;

.field private final timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->negotiatedProtocolVersion:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->error:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->timeStamp:J

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    const/4 p3, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move p1, p0

    .line 24
    :goto_1
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move p0, p3

    .line 34
    :cond_3
    :goto_2
    xor-int/2addr p0, p1

    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    return-void

    .line 38
    :cond_4
    const-string p0, "Either both parameters provided or none provided."

    .line 39
    .line 40
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    throw p0
.end method


# virtual methods
.method public final getNegotiatedProtocolVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->negotiatedProtocolVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTimeStamp$common_distRelease()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isHandShakeError()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->error:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v2, v1

    .line 17
    :goto_1
    if-nez v2, :cond_2

    .line 18
    .line 19
    const-string v2, "handshake_error"

    .line 20
    .line 21
    invoke-static {p0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    return v0
.end method

.method public final serialize$common_distRelease()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->timeStamp:J

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->error:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v3, :cond_1

    .line 7
    .line 8
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {v3, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "E,%s,%d"

    .line 28
    .line 29
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/cache/HelloCacheResult;->negotiatedProtocolVersion:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "S,%s,%d"

    .line 49
    .line 50
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
