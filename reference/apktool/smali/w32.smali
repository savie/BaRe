.class public Lw32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lnk4;
    ignoreUnknown = true
.end annotation

.annotation runtime Lno6;
    name = "Credentials"
    strict = false
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "AccessKeyId"
    .end annotation

    .annotation runtime Lnl4;
        value = "accessKey"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "SecretAccessKey"
    .end annotation

    .annotation runtime Lnl4;
        value = "secretKey"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "SessionToken"
    .end annotation

    .annotation runtime Lnl4;
        value = "sessionToken"
    .end annotation
.end field

.field private final d:Lh38$a;
    .annotation runtime Lat2;
        name = "Expiration"
    .end annotation

    .annotation runtime Lnl4;
        value = "expiration"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh38$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "AccessKeyId"
        .end annotation

        .annotation runtime Lnl4;
            value = "accessKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "SecretAccessKey"
        .end annotation

        .annotation runtime Lnl4;
            value = "secretKey"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lat2;
            name = "SessionToken"
        .end annotation

        .annotation runtime Lnl4;
            value = "sessionToken"
        .end annotation
    .end param
    .param p4    # Lh38$a;
        .annotation runtime Lat2;
            name = "Expiration"
        .end annotation

        .annotation runtime Lnl4;
            value = "expiration"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AccessKey must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lw32;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "SecretKey must not be null"

    .line 12
    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lw32;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iput-object p3, p0, Lw32;->c:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p4, p0, Lw32;->d:Lh38$a;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string p0, "AccessKey and SecretKey must not be empty"

    .line 36
    .line 37
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lw32;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/time/ZonedDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lw32;->d:Lh38$a;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lh38$a;->b()Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw32;->d:Lh38$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0xa

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lw32;->d:Lh38$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lh38$a;->b()Ljava/time/ZonedDateTime;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v0, p0}, Ljava/time/chrono/ChronoZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lw32;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lw32;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
