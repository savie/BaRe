.class public final Lqk5;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field public final c:I

.field public final d:[B

.field public final e:[B

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lqk5;->f:Z

    .line 6
    .line 7
    iput-object p1, p0, Lqk5;->a:Ljava/io/OutputStream;

    .line 8
    .line 9
    iput-object p2, p0, Lqk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lqk5;->e:[B

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->g()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/lit16 p2, p1, 0x100

    .line 22
    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    array-length v0, p2

    .line 26
    sub-int/2addr v0, p1

    .line 27
    iput v0, p0, Lqk5;->c:I

    .line 28
    .line 29
    iput-object p2, p0, Lqk5;->d:[B

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqk5;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lqk5;->e:[B

    .line 4
    .line 5
    iget-object v2, p0, Lqk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 6
    .line 7
    iget-boolean v3, p0, Lqk5;->f:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Lqk5;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    :try_start_1
    array-length p0, v1

    .line 16
    invoke-virtual {v2, v1, p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->d([BI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->c()V

    .line 31
    .line 32
    .line 33
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lqk5;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 67
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 68
    invoke-virtual {p0, v1, v2, v0}, Lqk5;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 66
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lqk5;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 14

    .line 1
    array-length v2, p1

    .line 2
    add-int v3, p2, p3

    .line 3
    .line 4
    if-lt v2, v3, :cond_2

    .line 5
    .line 6
    iget v7, p0, Lqk5;->c:I

    .line 7
    .line 8
    div-int v8, p3, v7

    .line 9
    .line 10
    rem-int v9, p3, v7

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    move/from16 v2, p2

    .line 14
    .line 15
    move v11, v10

    .line 16
    :goto_0
    iget-object v12, p0, Lqk5;->d:[B

    .line 17
    .line 18
    iget-object v13, p0, Lqk5;->a:Ljava/io/OutputStream;

    .line 19
    .line 20
    if-ge v11, v8, :cond_0

    .line 21
    .line 22
    iget-object v5, p0, Lqk5;->d:[B

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    iget-object v1, p0, Lqk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 26
    .line 27
    iget v4, p0, Lqk5;->c:I

    .line 28
    .line 29
    move v3, v2

    .line 30
    move-object v2, p1

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->h([BII[BI)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    move v2, v3

    .line 36
    invoke-virtual {v13, v12, v10, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    add-int/2addr v2, v7

    .line 40
    add-int/lit8 v11, v11, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-lez v9, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Lqk5;->d:[B

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    iget-object v0, p0, Lqk5;->b:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    move v3, v9

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->h([BII[BI)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v13, v12, v10, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 61
    .line 62
    invoke-direct {v0, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method
