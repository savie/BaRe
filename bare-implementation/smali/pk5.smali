.class public final Lpk5;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lkx7;

.field public final b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field public c:[B

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lpk5;->d:Z

    .line 6
    .line 7
    new-instance v0, Lkx7;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lkx7;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lpk5;->a:Lkx7;

    .line 13
    .line 14
    iput-object p2, p0, Lpk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 2
    .line 3
    iget-boolean v1, p0, Lpk5;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lpk5;->d:Z

    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lpk5;->a:Lkx7;

    .line 12
    .line 13
    iget v1, p0, Lkx7;->c:I

    .line 14
    .line 15
    iget v2, p0, Lkx7;->b:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lkx7;->a:[B

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    invoke-virtual {v0, p0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->a([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->c()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v1, "Not enough tail data"

    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->c()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpk5;->a:Lkx7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpk5;->a:Lkx7;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lpk5;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public final mark(I)V
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

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read()I
    .locals 0

    .line 37
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 36
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lpk5;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    add-int v1, p2, p3

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lpk5;->a:Lkx7;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lkx7;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 p3, -0x1

    .line 13
    if-ne v4, p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lpk5;->a()V

    .line 16
    .line 17
    .line 18
    return p3

    .line 19
    :cond_0
    iget-object v1, p0, Lpk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 20
    .line 21
    move-object v5, p1

    .line 22
    move v6, p2

    .line 23
    move-object v2, p1

    .line 24
    move v3, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->h([BII[BI)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 31
    .line 32
    invoke-direct {p0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 5
    .line 6
    .line 7
    throw v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public final skip(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lpk5;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x100

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lpk5;->c:[B

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    move-wide v2, v0

    .line 14
    :goto_0
    cmp-long v4, p1, v0

    .line 15
    .line 16
    if-lez v4, :cond_2

    .line 17
    .line 18
    const-wide/16 v4, 0x100

    .line 19
    .line 20
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    long-to-int v4, v4

    .line 25
    iget-object v5, p0, Lpk5;->c:[B

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {p0, v5, v6, v4}, Lpk5;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    int-to-long v4, v4

    .line 36
    add-long/2addr v2, v4

    .line 37
    sub-long/2addr p1, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    cmp-long p0, v2, v0

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    const-wide/16 p0, -0x1

    .line 44
    .line 45
    return-wide p0

    .line 46
    :cond_3
    return-wide v2
.end method
