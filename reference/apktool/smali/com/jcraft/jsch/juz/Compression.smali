.class public Lcom/jcraft/jsch/juz/Compression;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# instance fields
.field public a:Ljava/util/zip/Deflater;

.field public b:Ljava/util/zip/Inflater;

.field public c:[B

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
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compress([BI[I)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    aget v2, p3, v1

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v0, v2, 0x2

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 16
    .line 17
    sub-int/2addr v2, p2

    .line 18
    invoke-virtual {v0, p1, p2, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    array-length v2, p1

    .line 32
    add-int v3, p2, v0

    .line 33
    .line 34
    add-int/lit8 v4, v3, 0x34

    .line 35
    .line 36
    if-ge v2, v4, :cond_1

    .line 37
    .line 38
    mul-int/lit8 v4, v4, 0x2

    .line 39
    .line 40
    new-array v2, v4, [B

    .line 41
    .line 42
    array-length v4, p1

    .line 43
    invoke-static {p1, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    move-object p1, v2

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 48
    .line 49
    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/zip/Deflater;->needsInput()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    aput v3, p3, v1

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    move p2, v3

    .line 64
    goto :goto_0
.end method

.method public final end()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 21
    .line 22
    :cond_1
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 23
    .line 24
    return-void
.end method

.method public final init(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/zip/Deflater;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->a:Ljava/util/zip/Deflater;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Ljava/util/zip/Inflater;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 20
    .line 21
    const/16 p1, 0x1000

    .line 22
    .line 23
    new-array p1, p1, [B

    .line 24
    .line 25
    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    sget-object p1, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    const/4 p2, 0x0

    .line 39
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "zlib using "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p1, p2, p0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final init(IILcom/jcraft/jsch/Session;)V
    .locals 0

    .line 72
    iput-object p3, p0, Lcom/jcraft/jsch/juz/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/juz/Compression;->init(II)V

    return-void
.end method

.method public final uncompress([BI[I)[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p3, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 7
    .line 8
    .line 9
    move v0, v1

    .line 10
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int v3, v0, v2

    .line 20
    .line 21
    const v4, 0x3fffb

    .line 22
    .line 23
    .line 24
    if-gt v3, v4, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 27
    .line 28
    array-length v5, v4

    .line 29
    if-ge v5, v3, :cond_0

    .line 30
    .line 31
    new-array v5, v3, [B

    .line 32
    .line 33
    invoke-static {v4, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput-object v5, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->c:[B

    .line 42
    .line 43
    iget-object v5, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 44
    .line 45
    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->b:Ljava/util/zip/Inflater;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    if-gtz v0, :cond_1

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_1
    move v0, v3

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v2

    .line 60
    move v0, v3

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :try_start_2
    new-instance v2, Lcom/jcraft/jsch/Compression$InflaterException;

    .line 63
    .line 64
    const-string v3, "Decompressed packet exceeds PACKET_MAX_SIZE"

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v2
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    :goto_2
    iget-object v3, p0, Lcom/jcraft/jsch/juz/Compression;->e:Lcom/jcraft/jsch/Session;

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    sget-object v3, Lcom/jcraft/jsch/JSch;->i:Lcom/jcraft/jsch/Logger;

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_3
    const/4 v4, 0x2

    .line 82
    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_4

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v6, "an exception during uncompress\n"

    .line 92
    .line 93
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v3, v4, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_4
    move v3, v0

    .line 111
    :goto_5
    array-length v0, p1

    .line 112
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 113
    .line 114
    array-length v4, v2

    .line 115
    add-int/2addr v4, p2

    .line 116
    if-ge v0, v4, :cond_5

    .line 117
    .line 118
    array-length v0, v2

    .line 119
    add-int/2addr v0, p2

    .line 120
    new-array v0, v0, [B

    .line 121
    .line 122
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    move-object p1, v0

    .line 126
    :cond_5
    iget-object p0, p0, Lcom/jcraft/jsch/juz/Compression;->d:[B

    .line 127
    .line 128
    invoke-static {p0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    aput v3, p3, v1

    .line 132
    .line 133
    return-object p1
.end method
