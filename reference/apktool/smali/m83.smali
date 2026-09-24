.class public final Lm83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljw0;

.field public final b:Lr73;

.field public c:I

.field public d:Li73;


# direct methods
.method public constructor <init>([BLr73;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljw0;

    .line 5
    .line 6
    sget-object v1, Lvw2;->b:Luw2;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, p1, v2, v1}, Low0;-><init>([BZLvw2;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lm83;->a:Ljw0;

    .line 13
    .line 14
    iput-object p2, p0, Lm83;->b:Lr73;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lm83;->c:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lm83;->a()Li73;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lm83;->d:Li73;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Li73;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-nez v0, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget v1, p0, Lm83;->c:I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lm83;->a:Ljw0;

    .line 10
    .line 11
    iput v1, v0, Low0;->c:I

    .line 12
    .line 13
    iget-object v1, p0, Lm83;->b:Lr73;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lr73;->c(Low0;)Lt73;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Li73;

    .line 20
    .line 21
    iget-wide v3, v0, Li73;->b:J

    .line 22
    .line 23
    long-to-int v1, v3

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput v2, p0, Lm83;->c:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v2, p0, Lm83;->c:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, p0, Lm83;->c:I
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Lgv6;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    return-object v0
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lm83;->d:Li73;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lm83;->d:Li73;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm83;->a()Li73;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lm83;->d:Li73;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
