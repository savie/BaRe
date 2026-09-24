.class public final Lng2;
.super Lyp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Lk74;

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lk74;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lk74;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    iput-object v1, p0, Lng2;->c:[B

    .line 13
    .line 14
    iput-object v0, p0, Lng2;->b:Lk74;

    .line 15
    .line 16
    iput-object p1, p0, Lng2;->a:Ljava/io/InputStream;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lng2;->b:Lk74;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lk74;->b:Lod2;

    .line 6
    .line 7
    invoke-virtual {p0}, Lod2;->b()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lng2;->b:Lk74;

    .line 3
    .line 4
    invoke-static {v1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lng2;->b:Lk74;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    iget-object v1, p0, Lng2;->a:Ljava/io/InputStream;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v0, p0, Lng2;->a:Ljava/io/InputStream;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    iget-object v2, p0, Lng2;->a:Ljava/io/InputStream;

    .line 21
    .line 22
    sget v3, Ln84;->a:I

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v0, p0, Lng2;->a:Ljava/io/InputStream;

    .line 30
    .line 31
    throw v1
.end method

.method public final read()I
    .locals 3

    .line 44
    :cond_0
    iget-object v0, p0, Lng2;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x0

    .line 45
    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 46
    :cond_1
    const-string p0, "Invalid return value from read: "

    .line 47
    invoke-static {v1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lng2;->b:Lk74;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lk74;->b([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object p2, p0, Lng2;->b:Lk74;

    .line 15
    .line 16
    iget-object p2, p2, Lk74;->c:Lgr0;

    .line 17
    .line 18
    iget-object p2, p2, Lgr0;->a:Lwu0;

    .line 19
    .line 20
    invoke-virtual {p2}, Lwu0;->g()J

    .line 21
    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lng2;->b:Lk74;

    .line 26
    .line 27
    invoke-static {p2}, Ln84;->b(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lng2;->b:Lk74;

    .line 32
    .line 33
    :cond_1
    return p1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    const-string p2, "Invalid Deflate64 input"

    .line 38
    .line 39
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    return v1
.end method
