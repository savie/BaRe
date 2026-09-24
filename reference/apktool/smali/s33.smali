.class public final Ls33;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# instance fields
.field public final a:[B

.field public final b:I

.field public c:Ljava/io/OutputStream;

.field public d:I

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls33;->e:Ljava/util/HashMap;

    .line 10
    .line 11
    const v1, 0x8000

    .line 12
    .line 13
    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    iput-object v2, p0, Ls33;->a:[B

    .line 17
    .line 18
    iput v1, p0, Ls33;->b:I

    .line 19
    .line 20
    iget-object v1, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Ls33;->d:I

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "setOutput() called before calling release()"

    .line 37
    .line 38
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Ls33;->d:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 6
    .line 7
    iget-object v2, p0, Ls33;->a:[B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    .line 12
    .line 13
    iput v3, p0, Ls33;->d:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls33;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ls33;->writeShort(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const v1, 0xffff

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ls33;->writeShort(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ls33;->writeUTF(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-ge p0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ls33;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    move-object v2, v1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v2

    .line 13
    :goto_0
    iput-object v1, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Ls33;->d:I

    .line 17
    .line 18
    iget-object p0, p0, Ls33;->e:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    if-nez v2, :cond_2

    .line 36
    .line 37
    :goto_2
    return-void

    .line 38
    :cond_2
    throw v2
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls33;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Ls33;->writeByte(I)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ls33;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 1
    iget v0, p0, Ls33;->b:I

    .line 2
    .line 3
    if-ge v0, p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ls33;->a()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ls33;->c:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v1, p0, Ls33;->d:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-ge v0, p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ls33;->a()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Ls33;->a:[B

    .line 23
    .line 24
    iget v1, p0, Ls33;->d:I

    .line 25
    .line 26
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget p1, p0, Ls33;->d:I

    .line 30
    .line 31
    add-int/2addr p1, p3

    .line 32
    iput p1, p0, Ls33;->d:I

    .line 33
    .line 34
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls33;->writeByte(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final writeByte(I)V
    .locals 2

    .line 1
    iget v0, p0, Ls33;->b:I

    .line 2
    .line 3
    iget v1, p0, Ls33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ls33;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Ls33;->d:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    iput v1, p0, Ls33;->d:I

    .line 17
    .line 18
    and-int/lit16 p1, p1, 0xff

    .line 19
    .line 20
    int-to-byte p1, p1

    .line 21
    iget-object p0, p0, Ls33;->a:[B

    .line 22
    .line 23
    aput-byte p1, p0, v0

    .line 24
    .line 25
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
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

.method public final writeChar(I)V
    .locals 0

    .line 1
    int-to-short p1, p1

    .line 2
    invoke-virtual {p0, p1}, Ls33;->writeShort(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
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

.method public final writeDouble(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Ls33;->writeLong(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final writeFloat(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Ls33;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final writeInt(I)V
    .locals 6

    .line 1
    iget v0, p0, Ls33;->b:I

    .line 2
    .line 3
    iget v1, p0, Ls33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x4

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ls33;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Ls33;->d:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Ls33;->d:I

    .line 17
    .line 18
    shr-int/lit8 v3, p1, 0x18

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    int-to-byte v3, v3

    .line 23
    iget-object v4, p0, Ls33;->a:[B

    .line 24
    .line 25
    aput-byte v3, v4, v0

    .line 26
    .line 27
    add-int/lit8 v3, v0, 0x2

    .line 28
    .line 29
    iput v3, p0, Ls33;->d:I

    .line 30
    .line 31
    shr-int/lit8 v5, p1, 0x10

    .line 32
    .line 33
    and-int/lit16 v5, v5, 0xff

    .line 34
    .line 35
    int-to-byte v5, v5

    .line 36
    aput-byte v5, v4, v2

    .line 37
    .line 38
    add-int/lit8 v2, v0, 0x3

    .line 39
    .line 40
    iput v2, p0, Ls33;->d:I

    .line 41
    .line 42
    shr-int/lit8 v5, p1, 0x8

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    int-to-byte v5, v5

    .line 47
    aput-byte v5, v4, v3

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    iput v0, p0, Ls33;->d:I

    .line 51
    .line 52
    and-int/lit16 p0, p1, 0xff

    .line 53
    .line 54
    int-to-byte p0, p0

    .line 55
    aput-byte p0, v4, v2

    .line 56
    .line 57
    return-void
.end method

.method public final writeLong(J)V
    .locals 7

    .line 1
    iget v0, p0, Ls33;->b:I

    .line 2
    .line 3
    iget v1, p0, Ls33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ls33;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x20

    .line 14
    .line 15
    shr-long v2, p1, v0

    .line 16
    .line 17
    long-to-int v0, v2

    .line 18
    iget v2, p0, Ls33;->d:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, p0, Ls33;->d:I

    .line 23
    .line 24
    shr-int/lit8 v4, v0, 0x18

    .line 25
    .line 26
    and-int/lit16 v4, v4, 0xff

    .line 27
    .line 28
    int-to-byte v4, v4

    .line 29
    iget-object v5, p0, Ls33;->a:[B

    .line 30
    .line 31
    aput-byte v4, v5, v2

    .line 32
    .line 33
    add-int/lit8 v4, v2, 0x2

    .line 34
    .line 35
    iput v4, p0, Ls33;->d:I

    .line 36
    .line 37
    shr-int/lit8 v6, v0, 0x10

    .line 38
    .line 39
    and-int/lit16 v6, v6, 0xff

    .line 40
    .line 41
    int-to-byte v6, v6

    .line 42
    aput-byte v6, v5, v3

    .line 43
    .line 44
    add-int/lit8 v3, v2, 0x3

    .line 45
    .line 46
    iput v3, p0, Ls33;->d:I

    .line 47
    .line 48
    shr-int/lit8 v6, v0, 0x8

    .line 49
    .line 50
    and-int/lit16 v6, v6, 0xff

    .line 51
    .line 52
    int-to-byte v6, v6

    .line 53
    aput-byte v6, v5, v4

    .line 54
    .line 55
    add-int/lit8 v4, v2, 0x4

    .line 56
    .line 57
    iput v4, p0, Ls33;->d:I

    .line 58
    .line 59
    and-int/lit16 v0, v0, 0xff

    .line 60
    .line 61
    int-to-byte v0, v0

    .line 62
    aput-byte v0, v5, v3

    .line 63
    .line 64
    long-to-int p1, p1

    .line 65
    add-int/lit8 p2, v2, 0x5

    .line 66
    .line 67
    iput p2, p0, Ls33;->d:I

    .line 68
    .line 69
    shr-int/lit8 v0, p1, 0x18

    .line 70
    .line 71
    and-int/lit16 v0, v0, 0xff

    .line 72
    .line 73
    int-to-byte v0, v0

    .line 74
    aput-byte v0, v5, v4

    .line 75
    .line 76
    add-int/lit8 v0, v2, 0x6

    .line 77
    .line 78
    iput v0, p0, Ls33;->d:I

    .line 79
    .line 80
    shr-int/lit8 v3, p1, 0x10

    .line 81
    .line 82
    and-int/lit16 v3, v3, 0xff

    .line 83
    .line 84
    int-to-byte v3, v3

    .line 85
    aput-byte v3, v5, p2

    .line 86
    .line 87
    add-int/lit8 p2, v2, 0x7

    .line 88
    .line 89
    iput p2, p0, Ls33;->d:I

    .line 90
    .line 91
    shr-int/lit8 v3, p1, 0x8

    .line 92
    .line 93
    and-int/lit16 v3, v3, 0xff

    .line 94
    .line 95
    int-to-byte v3, v3

    .line 96
    aput-byte v3, v5, v0

    .line 97
    .line 98
    add-int/2addr v2, v1

    .line 99
    iput v2, p0, Ls33;->d:I

    .line 100
    .line 101
    and-int/lit16 p0, p1, 0xff

    .line 102
    .line 103
    int-to-byte p0, p0

    .line 104
    aput-byte p0, v5, p2

    .line 105
    .line 106
    return-void
.end method

.method public final writeShort(I)V
    .locals 5

    .line 1
    iget v0, p0, Ls33;->b:I

    .line 2
    .line 3
    iget v1, p0, Ls33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ls33;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Ls33;->d:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Ls33;->d:I

    .line 17
    .line 18
    shr-int/lit8 v3, p1, 0x8

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    int-to-byte v3, v3

    .line 23
    iget-object v4, p0, Ls33;->a:[B

    .line 24
    .line 25
    aput-byte v3, v4, v0

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Ls33;->d:I

    .line 29
    .line 30
    and-int/lit16 p0, p1, 0xff

    .line 31
    .line 32
    int-to-byte p0, p0

    .line 33
    aput-byte p0, v4, v2

    .line 34
    .line 35
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const/16 v6, 0x7f

    .line 18
    .line 19
    if-gt v5, v6, :cond_0

    .line 20
    .line 21
    const-wide/16 v5, 0x1

    .line 22
    .line 23
    :goto_1
    add-long/2addr v1, v5

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/16 v6, 0x7ff

    .line 26
    .line 27
    if-gt v5, v6, :cond_1

    .line 28
    .line 29
    const-wide/16 v5, 0x2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 v5, 0x3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    long-to-int v0, v1

    .line 39
    const v1, 0xffff

    .line 40
    .line 41
    .line 42
    if-gt v0, v1, :cond_5

    .line 43
    .line 44
    add-int/lit8 v1, v0, 0x2

    .line 45
    .line 46
    iget v2, p0, Ls33;->b:I

    .line 47
    .line 48
    if-lt v2, v1, :cond_4

    .line 49
    .line 50
    iget v3, p0, Ls33;->d:I

    .line 51
    .line 52
    sub-int/2addr v2, v3

    .line 53
    if-ge v2, v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Ls33;->a()V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0, v0}, Ls33;->writeShort(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Ls33;->a:[B

    .line 62
    .line 63
    iget v2, p0, Ls33;->d:I

    .line 64
    .line 65
    invoke-static {p1, v2, v1}, Lnc8;->w(Ljava/lang/String;I[B)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Ls33;->d:I

    .line 69
    .line 70
    add-int/2addr p1, v0

    .line 71
    iput p1, p0, Ls33;->d:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 75
    .line 76
    new-array v1, v1, [B

    .line 77
    .line 78
    invoke-static {p1, v3, v1}, Lnc8;->w(Ljava/lang/String;I[B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ls33;->writeShort(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1, v3, v0}, Ls33;->write([BII)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    const-string p0, "Modified UTF-8 length too large: "

    .line 89
    .line 90
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
