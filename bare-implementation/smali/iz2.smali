.class public final Liz2;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ljava/util/ArrayDeque;


# instance fields
.field public a:Leg6;

.field public b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Liz2;->c:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {p0}, Leg6;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {p0}, Leg6;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final mark(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Leg6;->mark(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final read()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {v0}, Leg6;->read()I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    iput-object v0, p0, Liz2;->b:Ljava/io/IOException;

    .line 10
    .line 11
    throw v0
.end method

.method public final read([B)I
    .locals 1

    .line 12
    :try_start_0
    iget-object v0, p0, Liz2;->a:Leg6;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 13
    iput-object p1, p0, Liz2;->b:Ljava/io/IOException;

    .line 14
    throw p1
.end method

.method public final read([BII)I
    .locals 1

    .line 15
    :try_start_0
    iget-object v0, p0, Liz2;->a:Leg6;

    invoke-virtual {v0, p1, p2, p3}, Leg6;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 16
    iput-object p1, p0, Liz2;->b:Ljava/io/IOException;

    .line 17
    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Liz2;->a:Leg6;

    .line 3
    .line 4
    invoke-virtual {v0}, Leg6;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public final skip(J)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Liz2;->a:Leg6;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Leg6;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    iput-object p1, p0, Liz2;->b:Ljava/io/IOException;

    .line 10
    .line 11
    throw p1
.end method
