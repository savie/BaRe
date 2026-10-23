.class public Lcom/nimbusds/jwt/util/DateUtils;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromSecondsSinceEpoch(J)Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    mul-long/2addr p0, v1

    .line 6
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static isAfter(Ljava/util/Date;Ljava/util/Date;J)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long/2addr p2, v3

    .line 10
    add-long/2addr p2, v1

    .line 11
    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static isBefore(Ljava/util/Date;Ljava/util/Date;J)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 8
    .line 9
    mul-long/2addr p2, v3

    .line 10
    sub-long/2addr v1, p2

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static isWithin(Ljava/util/Date;Ljava/util/Date;J)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    mul-long/2addr p2, v2

    .line 8
    sub-long/2addr v0, p2

    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, p2

    .line 14
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    cmp-long p1, p1, v0

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    cmp-long p0, p0, v2

    .line 27
    .line 28
    if-gez p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static nowWithSecondsPrecision()Ljava/util/Date;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/nimbusds/jwt/util/DateUtils;->toSecondsSinceEpoch(Ljava/util/Date;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->fromSecondsSinceEpoch(J)Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static toSecondsSinceEpoch(Ljava/util/Date;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method
