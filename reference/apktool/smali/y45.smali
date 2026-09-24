.class public final Ly45;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lwd7;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lkr7;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkr7;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p1, "[ -b @@ ]"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lkr7;->b(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v1, "w"

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ltd7;

    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Ltd7;-><init>(Lkr7;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lwd7;

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Lwd7;-><init>(Lkr7;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iput-object p1, p0, Ly45;->a:Lwd7;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    int-to-byte p1, p1

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte p1, v1, v2

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2, v0}, Ly45;->write([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ly45;->write([BII)V

    return-void
.end method

.method public final declared-synchronized write([BII)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Ly45;->a:Lwd7;

    invoke-virtual {v0, p1, p2, p3}, Lwd7;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
