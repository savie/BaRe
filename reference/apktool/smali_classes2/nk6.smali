.class public final Lnk6;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lc62;

.field public final synthetic d:Lmt3;


# direct methods
.method public constructor <init>(JLc62;Lmt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnk6;->b:J

    .line 5
    .line 6
    iput-object p3, p0, Lnk6;->c:Lc62;

    .line 7
    .line 8
    iput-object p4, p0, Lnk6;->d:Lmt3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnk6;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final declared-synchronized d(Lyw0;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnk6;->c:Lc62;

    .line 3
    .line 4
    invoke-virtual {v0}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lf86;

    .line 9
    .line 10
    invoke-interface {p1}, Lyw0;->n0()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-wide v2, p0, Lnk6;->b:J

    .line 15
    .line 16
    iget-object v4, p0, Lnk6;->d:Lmt3;

    .line 17
    .line 18
    new-instance v5, Lss;

    .line 19
    .line 20
    const/4 v6, 0x4

    .line 21
    invoke-direct {v5, v4, v6}, Lss;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, v2, v3, v5}, Lf86;-><init>(Ljava/io/OutputStream;JLqt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    .line 26
    .line 27
    const/high16 p1, 0x40000

    .line 28
    .line 29
    :try_start_1
    invoke-static {v0, v1, p1}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-virtual {v1}, Lf86;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 44
    :catchall_2
    move-exception v2

    .line 45
    :try_start_5
    invoke-static {v1, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :goto_0
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 50
    :catchall_3
    move-exception v1

    .line 51
    :try_start_7
    invoke-static {v0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :catchall_4
    move-exception p1

    .line 56
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 57
    throw p1
.end method
