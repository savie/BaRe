.class public Lcom/jcraft/jsch/bc/ChaCha20Poly1305;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field public a:Lh31;

.field public b:Lh31;

.field public c:Loo4;

.field public d:Loo4;

.field public e:I

.field public f:Lf26;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final doFinal([BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    new-array v3, v0, [B

    .line 15
    .line 16
    iget-object v4, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;

    .line 17
    .line 18
    if-gez p2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v5, p2, 0x4

    .line 21
    .line 22
    invoke-virtual {v4, p1, v5, p3}, Lf26;->update([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4, p1, p2, p3}, Lf26;->update([BII)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;

    .line 30
    .line 31
    invoke-virtual {v4, v3, v2}, Lf26;->doFinal([BI)I

    .line 32
    .line 33
    .line 34
    move v4, v2

    .line 35
    :goto_1
    if-ge v2, v0, :cond_1

    .line 36
    .line 37
    aget-byte v5, v1, v2

    .line 38
    .line 39
    aget-byte v6, v3, v2

    .line 40
    .line 41
    xor-int/2addr v5, v6

    .line 42
    or-int/2addr v4, v5

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-nez v4, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 50
    .line 51
    const-string p1, "Tag mismatch"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->b:Lh31;

    .line 58
    .line 59
    if-gez p2, :cond_4

    .line 60
    .line 61
    add-int/lit8 v2, p2, 0x4

    .line 62
    .line 63
    add-int/lit8 v1, p3, -0x4

    .line 64
    .line 65
    sub-int v3, v1, p2

    .line 66
    .line 67
    add-int/lit8 v1, p5, 0x4

    .line 68
    .line 69
    add-int v5, v1, p2

    .line 70
    .line 71
    move-object v1, p1

    .line 72
    move-object v4, p4

    .line 73
    invoke-virtual/range {v0 .. v5}, Lh31;->c([BII[BI)I

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object v1, p1

    .line 78
    move-object v4, p4

    .line 79
    add-int/lit8 v2, p2, 0x4

    .line 80
    .line 81
    add-int/lit8 v3, p3, -0x4

    .line 82
    .line 83
    add-int/lit8 v5, p5, 0x4

    .line 84
    .line 85
    invoke-virtual/range {v0 .. v5}, Lh31;->c([BII[BI)I

    .line 86
    .line 87
    .line 88
    :goto_3
    iget p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->e:I

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;

    .line 93
    .line 94
    invoke-virtual {p1, v4, p5, p3}, Lf26;->update([BII)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;

    .line 98
    .line 99
    invoke-virtual {p0, v4, p3}, Lf26;->doFinal([BI)I

    .line 100
    .line 101
    .line 102
    :cond_5
    return-void
.end method

.method public final getBlockSize()I
    .locals 0

    .line 1
    const/16 p0, 0x40

    .line 2
    .line 3
    return p0
.end method

.method public final getIVSize()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public final getTagSize()I
    .locals 0

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    return p0
.end method

.method public final init(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    if-le p3, v1, :cond_0

    .line 6
    .line 7
    new-array p3, v1, [B

    .line 8
    .line 9
    invoke-static {p2, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    move-object p2, p3

    .line 13
    :cond_0
    const/16 p3, 0x20

    .line 14
    .line 15
    new-array v1, p3, [B

    .line 16
    .line 17
    new-array v2, p3, [B

    .line 18
    .line 19
    invoke-static {p2, p3, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->e:I

    .line 26
    .line 27
    :try_start_0
    new-instance p1, Loo4;

    .line 28
    .line 29
    invoke-direct {p1, v1, p3}, Loo4;-><init>([BI)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->c:Loo4;

    .line 33
    .line 34
    new-instance p1, Loo4;

    .line 35
    .line 36
    invoke-direct {p1, v2, p3}, Loo4;-><init>([BI)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->d:Loo4;

    .line 40
    .line 41
    new-instance p1, Lh31;

    .line 42
    .line 43
    invoke-direct {p1}, Lh31;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->a:Lh31;

    .line 47
    .line 48
    new-instance p1, Lh31;

    .line 49
    .line 50
    invoke-direct {p1}, Lh31;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->b:Lh31;

    .line 54
    .line 55
    new-instance p1, Lf26;

    .line 56
    .line 57
    invoke-direct {p1}, Lf26;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception p1

    .line 64
    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->a:Lh31;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->b:Lh31;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->c:Loo4;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->d:Loo4;

    .line 72
    .line 73
    throw p1
.end method

.method public final isAEAD()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isCBC()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isChaCha20()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final update(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    int-to-long v1, p1

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->a:Lh31;

    .line 13
    .line 14
    iget v2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->e:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, p1

    .line 22
    :goto_0
    new-instance v4, Lvw5;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->c:Loo4;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    array-length v7, v7

    .line 35
    invoke-direct {v4, v5, v6, v7}, Lvw5;-><init>(Lz61;[BI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v4}, Lh31;->b(ZLz61;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->b:Lh31;

    .line 42
    .line 43
    iget v2, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->e:I

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    move p1, v3

    .line 48
    :cond_1
    new-instance v2, Lvw5;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->d:Loo4;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    array-length v0, v0

    .line 61
    invoke-direct {v2, v3, v4, v0}, Lvw5;-><init>(Lz61;[BI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1, v2}, Lh31;->b(ZLz61;)V

    .line 65
    .line 66
    .line 67
    const/16 v8, 0x40

    .line 68
    .line 69
    new-array v6, v8, [B

    .line 70
    .line 71
    iget-object v5, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->b:Lh31;

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    move-object v9, v6

    .line 76
    invoke-virtual/range {v5 .. v10}, Lh31;->c([BII[BI)I

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->f:Lf26;

    .line 80
    .line 81
    new-instance p1, Loo4;

    .line 82
    .line 83
    const/16 v0, 0x20

    .line 84
    .line 85
    invoke-direct {p1, v6, v0}, Loo4;-><init>([BI)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lf26;->c(Lz61;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/jcraft/jsch/bc/ChaCha20Poly1305;->a:Lh31;

    invoke-virtual/range {p0 .. p5}, Lh31;->c([BII[BI)I

    return-void
.end method
