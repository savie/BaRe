.class public Lcom/jcraft/jsch/jzlib/Compression;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# instance fields
.field public a:Lcom/jcraft/jsch/jzlib/Deflater;

.field public b:Lcom/jcraft/jsch/jzlib/Inflater;

.field public final c:[B

.field public d:[B

.field public e:Lcom/jcraft/jsch/Session;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->c:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/function/Supplier;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p0, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final compress([BI[I)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 4
    .line 5
    iput p2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, p3, v1

    .line 9
    .line 10
    sub-int/2addr v2, p2

    .line 11
    iput v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->c:[B

    .line 16
    .line 17
    iput-object v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 18
    .line 19
    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 20
    .line 21
    const/16 v3, 0x1000

    .line 22
    .line 23
    iput v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/jzlib/Deflater;->c(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v2, Lqp1;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lqp1;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jsch/jzlib/Compression;->a(ILjava/util/function/Supplier;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 43
    .line 44
    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 45
    .line 46
    sub-int/2addr v3, v0

    .line 47
    array-length v0, p1

    .line 48
    add-int v4, p2, v3

    .line 49
    .line 50
    add-int/lit8 v5, v4, 0x34

    .line 51
    .line 52
    if-ge v0, v5, :cond_2

    .line 53
    .line 54
    mul-int/lit8 v5, v5, 0x2

    .line 55
    .line 56
    new-array v0, v5, [B

    .line 57
    .line 58
    array-length v5, p1

    .line 59
    invoke-static {p1, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    move-object p1, v0

    .line 63
    :cond_2
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    move p2, v4

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 68
    .line 69
    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    aput p2, p3, v1

    .line 74
    .line 75
    return-object p1
.end method

.method public final end()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v0, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 21
    .line 22
    iput-object v0, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 23
    .line 24
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 25
    .line 26
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/Deflater;->d()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 34
    .line 35
    :cond_3
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 36
    .line 37
    return-void
.end method

.method public final init(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    :try_start_0
    new-instance p1, Lcom/jcraft/jsch/jzlib/Deflater;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->a:Lcom/jcraft/jsch/jzlib/Deflater;
    :try_end_0
    .catch Lcom/jcraft/jsch/jzlib/GZIPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/io/UncheckedIOException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/jcraft/jsch/jzlib/Inflater;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 27
    .line 28
    const/16 p1, 0x1000

    .line 29
    .line 30
    new-array p1, p1, [B

    .line 31
    .line 32
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 33
    .line 34
    :cond_1
    :goto_0
    new-instance p1, Lsp1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lsp1;-><init>(Lcom/jcraft/jsch/jzlib/Compression;)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/jzlib/Compression;->a(ILjava/util/function/Supplier;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final init(IILcom/jcraft/jsch/Session;)V
    .locals 0

    .line 44
    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Compression;->init(II)V

    return-void
.end method

.method public final uncompress([BI[I)[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 4
    .line 5
    iput p2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, p3, v1

    .line 9
    .line 10
    iput v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 11
    .line 12
    move v0, v1

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Compression;->c:[B

    .line 16
    .line 17
    iput-object v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 18
    .line 19
    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 20
    .line 21
    const/16 v4, 0x1000

    .line 22
    .line 23
    iput v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/jzlib/Inflater;->c(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v5, -0x5

    .line 31
    if-eq v2, v5, :cond_4

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    new-instance p1, Lrp1;

    .line 37
    .line 38
    invoke-direct {p1, v2}, Lrp1;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jsch/jzlib/Compression;->a(ILjava/util/function/Supplier;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_0
    add-int/lit16 v2, v0, 0x1000

    .line 47
    .line 48
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 49
    .line 50
    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 51
    .line 52
    sub-int/2addr v2, v6

    .line 53
    const v6, 0x3fffb

    .line 54
    .line 55
    .line 56
    if-gt v2, v6, :cond_3

    .line 57
    .line 58
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 59
    .line 60
    array-length v7, v6

    .line 61
    if-ge v7, v2, :cond_2

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    mul-int/2addr v7, v5

    .line 65
    if-ge v7, v2, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v2, v7

    .line 69
    :goto_1
    new-array v2, v2, [B

    .line 70
    .line 71
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 77
    .line 78
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 79
    .line 80
    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 81
    .line 82
    rsub-int v5, v5, 0x1000

    .line 83
    .line 84
    invoke-static {v3, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->b:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 88
    .line 89
    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 90
    .line 91
    sub-int/2addr v4, v2

    .line 92
    add-int/2addr v0, v4

    .line 93
    aput v0, p3, v1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/Compression$InflaterException;

    .line 97
    .line 98
    const-string p1, "Decompressed packet exceeds PACKET_MAX_SIZE"

    .line 99
    .line 100
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_4
    array-length v2, p1

    .line 105
    sub-int/2addr v2, p2

    .line 106
    if-le v0, v2, :cond_5

    .line 107
    .line 108
    add-int v2, v0, p2

    .line 109
    .line 110
    new-array v2, v2, [B

    .line 111
    .line 112
    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 116
    .line 117
    invoke-static {p0, v1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    move-object p1, v2

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/Compression;->d:[B

    .line 123
    .line 124
    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    :goto_2
    aput v0, p3, v1

    .line 128
    .line 129
    return-object p1
.end method
