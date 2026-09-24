.class public final Lii2;
.super Loe3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lpe3;

.field public final b:Lfi2;

.field public final c:[B

.field public d:Ljava/io/IOException;

.field public final e:[B


# direct methods
.method public constructor <init>(Lpe3;Lhi2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lii2;->c:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lii2;->d:Ljava/io/IOException;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    iput-object v0, p0, Lii2;->e:[B

    .line 17
    .line 18
    iput-object p1, p0, Lii2;->a:Lpe3;

    .line 19
    .line 20
    new-instance p1, Lfi2;

    .line 21
    .line 22
    iget p2, p2, Lhi2;->a:I

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lgk1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lii2;->b:Lfi2;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lii2;->a:Lpe3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lpe3;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lii2;->d:Ljava/io/IOException;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-object v0, p0, Lii2;->d:Ljava/io/IOException;

    .line 15
    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lii2;->a:Lpe3;

    .line 18
    .line 19
    :cond_1
    iget-object p0, p0, Lii2;->d:Ljava/io/IOException;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    throw p0
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lii2;->d:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lii2;->a:Lpe3;

    .line 6
    .line 7
    invoke-virtual {v0}, Lpe3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iput-object v0, p0, Lii2;->d:Ljava/io/IOException;

    .line 13
    .line 14
    throw v0

    .line 15
    :cond_0
    throw v0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 57
    iget-object v0, p0, Lii2;->e:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lii2;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    if-ltz p3, :cond_2

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-gt v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lii2;->d:Ljava/io/IOException;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/16 v0, 0x1000

    .line 17
    .line 18
    iget-object v1, p0, Lii2;->c:[B

    .line 19
    .line 20
    iget-object v2, p0, Lii2;->b:Lfi2;

    .line 21
    .line 22
    if-le p3, v0, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v2, p1, v1, p2, v0}, Lfi2;->d0([B[BII)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lii2;->a:Lpe3;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lpe3;->write([B)V

    .line 30
    .line 31
    .line 32
    add-int/lit16 p2, p2, 0x1000

    .line 33
    .line 34
    add-int/lit16 p3, p3, -0x1000

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v2, p1, v1, p2, p3}, Lfi2;->d0([B[BII)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lii2;->a:Lpe3;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, v1, p2, p3}, Lpe3;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    iput-object p1, p0, Lii2;->d:Ljava/io/IOException;

    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    throw v0

    .line 53
    :cond_2
    invoke-static {}, Ll0;->a()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
