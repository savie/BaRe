.class public final Lr33;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# instance fields
.field public final a:[B

.field public final b:I

.field public c:Ljava/io/InputStream;

.field public d:I

.field public e:I

.field public f:I

.field public k:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lr33;->f:I

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lr33;->k:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lr33;->c:Ljava/io/InputStream;

    .line 17
    .line 18
    const p1, 0x8000

    .line 19
    .line 20
    .line 21
    new-array v0, p1, [B

    .line 22
    .line 23
    iput-object v0, p0, Lr33;->a:[B

    .line 24
    .line 25
    iput p1, p0, Lr33;->b:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget v1, p0, Lr33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lr33;->a:[B

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iput v3, p0, Lr33;->d:I

    .line 13
    .line 14
    iput v0, p0, Lr33;->e:I

    .line 15
    .line 16
    :goto_0
    sub-int/2addr p1, v0

    .line 17
    if-lez p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lr33;->c:Ljava/io/InputStream;

    .line 20
    .line 21
    iget v1, p0, Lr33;->e:I

    .line 22
    .line 23
    iget v3, p0, Lr33;->b:I

    .line 24
    .line 25
    sub-int/2addr v3, v1

    .line 26
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lr33;->e:I

    .line 34
    .line 35
    add-int/2addr v1, v0

    .line 36
    iput v1, p0, Lr33;->e:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr33;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lr33;->readUTF()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, p0, Lr33;->f:I

    .line 15
    .line 16
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lr33;->k:[Ljava/lang/String;

    .line 19
    .line 20
    array-length v3, v1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    shr-int/lit8 v3, v2, 0x1

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, p0, Lr33;->k:[Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lr33;->k:[Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p0, Lr33;->f:I

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    iput v3, p0, Lr33;->f:I

    .line 41
    .line 42
    aput-object v0, v1, v2

    .line 43
    .line 44
    :cond_1
    return-object v0

    .line 45
    :cond_2
    iget v1, p0, Lr33;->f:I

    .line 46
    .line 47
    if-ge v0, v1, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lr33;->k:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object p0, p0, v0

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    const-string v1, "Invalid interned string reference "

    .line 55
    .line 56
    const-string v2, " for "

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget p0, p0, Lr33;->f:I

    .line 63
    .line 64
    const-string v1, " interned strings"

    .line 65
    .line 66
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr33;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lr33;->c:Ljava/io/InputStream;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lr33;->d:I

    .line 8
    .line 9
    iput v1, p0, Lr33;->e:I

    .line 10
    .line 11
    iput v1, p0, Lr33;->f:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final readBoolean()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr33;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final readByte()B
    .locals 2

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget v1, p0, Lr33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lr33;->a(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lr33;->d:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    iput v1, p0, Lr33;->d:I

    .line 17
    .line 18
    iget-object p0, p0, Lr33;->a:[B

    .line 19
    .line 20
    aget-byte p0, p0, v0

    .line 21
    .line 22
    return p0
.end method

.method public final readChar()C
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr33;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-char p0, p0

    .line 6
    return p0
.end method

.method public final readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr33;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final readFloat()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr33;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lr33;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 3

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lr33;->a:[B

    .line 4
    .line 5
    iget v2, p0, Lr33;->b:I

    .line 6
    .line 7
    if-lt v2, p3, :cond_1

    .line 8
    .line 9
    iget v2, p0, Lr33;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v2

    .line 12
    if-ge v0, p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lr33;->a(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lr33;->d:I

    .line 18
    .line 19
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lr33;->d:I

    .line 23
    .line 24
    add-int/2addr p1, p3

    .line 25
    iput p1, p0, Lr33;->d:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v2, p0, Lr33;->d:I

    .line 29
    .line 30
    sub-int/2addr v0, v2

    .line 31
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lr33;->d:I

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    iput v1, p0, Lr33;->d:I

    .line 38
    .line 39
    :goto_0
    add-int/2addr p2, v0

    .line 40
    sub-int/2addr p3, v0

    .line 41
    if-lez p3, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lr33;->c:Ljava/io/InputStream;

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, -0x1

    .line 50
    if-eq v0, v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Ld6;->d()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final readInt()I
    .locals 6

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget v1, p0, Lr33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x4

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lr33;->a(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lr33;->d:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Lr33;->d:I

    .line 17
    .line 18
    iget-object v3, p0, Lr33;->a:[B

    .line 19
    .line 20
    aget-byte v4, v3, v0

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 23
    .line 24
    shl-int/lit8 v4, v4, 0x18

    .line 25
    .line 26
    add-int/lit8 v5, v0, 0x2

    .line 27
    .line 28
    iput v5, p0, Lr33;->d:I

    .line 29
    .line 30
    aget-byte v2, v3, v2

    .line 31
    .line 32
    and-int/lit16 v2, v2, 0xff

    .line 33
    .line 34
    shl-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    or-int/2addr v2, v4

    .line 37
    add-int/lit8 v4, v0, 0x3

    .line 38
    .line 39
    iput v4, p0, Lr33;->d:I

    .line 40
    .line 41
    aget-byte v5, v3, v5

    .line 42
    .line 43
    and-int/lit16 v5, v5, 0xff

    .line 44
    .line 45
    shl-int/lit8 v5, v5, 0x8

    .line 46
    .line 47
    or-int/2addr v2, v5

    .line 48
    add-int/2addr v0, v1

    .line 49
    iput v0, p0, Lr33;->d:I

    .line 50
    .line 51
    aget-byte p0, v3, v4

    .line 52
    .line 53
    and-int/lit16 p0, p0, 0xff

    .line 54
    .line 55
    or-int/2addr p0, v2

    .line 56
    return p0
.end method

.method public final readLine()Ljava/lang/String;
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

.method public final readLong()J
    .locals 7

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget v1, p0, Lr33;->d:I

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
    invoke-virtual {p0, v1}, Lr33;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lr33;->d:I

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    iput v2, p0, Lr33;->d:I

    .line 18
    .line 19
    iget-object v3, p0, Lr33;->a:[B

    .line 20
    .line 21
    aget-byte v4, v3, v0

    .line 22
    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 24
    .line 25
    shl-int/lit8 v4, v4, 0x18

    .line 26
    .line 27
    add-int/lit8 v5, v0, 0x2

    .line 28
    .line 29
    iput v5, p0, Lr33;->d:I

    .line 30
    .line 31
    aget-byte v2, v3, v2

    .line 32
    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    shl-int/lit8 v2, v2, 0x10

    .line 36
    .line 37
    or-int/2addr v2, v4

    .line 38
    add-int/lit8 v4, v0, 0x3

    .line 39
    .line 40
    iput v4, p0, Lr33;->d:I

    .line 41
    .line 42
    aget-byte v5, v3, v5

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    shl-int/2addr v5, v1

    .line 47
    or-int/2addr v2, v5

    .line 48
    add-int/lit8 v5, v0, 0x4

    .line 49
    .line 50
    iput v5, p0, Lr33;->d:I

    .line 51
    .line 52
    aget-byte v4, v3, v4

    .line 53
    .line 54
    and-int/lit16 v4, v4, 0xff

    .line 55
    .line 56
    or-int/2addr v2, v4

    .line 57
    add-int/lit8 v4, v0, 0x5

    .line 58
    .line 59
    iput v4, p0, Lr33;->d:I

    .line 60
    .line 61
    aget-byte v5, v3, v5

    .line 62
    .line 63
    and-int/lit16 v5, v5, 0xff

    .line 64
    .line 65
    shl-int/lit8 v5, v5, 0x18

    .line 66
    .line 67
    add-int/lit8 v6, v0, 0x6

    .line 68
    .line 69
    iput v6, p0, Lr33;->d:I

    .line 70
    .line 71
    aget-byte v4, v3, v4

    .line 72
    .line 73
    and-int/lit16 v4, v4, 0xff

    .line 74
    .line 75
    shl-int/lit8 v4, v4, 0x10

    .line 76
    .line 77
    or-int/2addr v4, v5

    .line 78
    add-int/lit8 v5, v0, 0x7

    .line 79
    .line 80
    iput v5, p0, Lr33;->d:I

    .line 81
    .line 82
    aget-byte v6, v3, v6

    .line 83
    .line 84
    and-int/lit16 v6, v6, 0xff

    .line 85
    .line 86
    shl-int/2addr v6, v1

    .line 87
    or-int/2addr v4, v6

    .line 88
    add-int/2addr v0, v1

    .line 89
    iput v0, p0, Lr33;->d:I

    .line 90
    .line 91
    aget-byte p0, v3, v5

    .line 92
    .line 93
    and-int/lit16 p0, p0, 0xff

    .line 94
    .line 95
    or-int/2addr p0, v4

    .line 96
    int-to-long v0, v2

    .line 97
    const/16 v2, 0x20

    .line 98
    .line 99
    shl-long/2addr v0, v2

    .line 100
    int-to-long v2, p0

    .line 101
    const-wide v4, 0xffffffffL

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    and-long/2addr v2, v4

    .line 107
    or-long/2addr v0, v2

    .line 108
    return-wide v0
.end method

.method public final readShort()S
    .locals 5

    .line 1
    iget v0, p0, Lr33;->e:I

    .line 2
    .line 3
    iget v1, p0, Lr33;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lr33;->a(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lr33;->d:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Lr33;->d:I

    .line 17
    .line 18
    iget-object v3, p0, Lr33;->a:[B

    .line 19
    .line 20
    aget-byte v4, v3, v0

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 23
    .line 24
    shl-int/lit8 v4, v4, 0x8

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lr33;->d:I

    .line 28
    .line 29
    aget-byte p0, v3, v2

    .line 30
    .line 31
    and-int/lit16 p0, p0, 0xff

    .line 32
    .line 33
    or-int/2addr p0, v4

    .line 34
    int-to-short p0, p0

    .line 35
    return p0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr33;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lr33;->b:I

    .line 6
    .line 7
    if-le v1, v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lr33;->e:I

    .line 10
    .line 11
    iget v2, p0, Lr33;->d:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lr33;->a(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-array v1, v0, [C

    .line 20
    .line 21
    iget v2, p0, Lr33;->d:I

    .line 22
    .line 23
    iget-object v3, p0, Lr33;->a:[B

    .line 24
    .line 25
    invoke-static {v3, v1, v2, v0}, Lnc8;->r([B[CII)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lr33;->d:I

    .line 30
    .line 31
    add-int/2addr v2, v0

    .line 32
    iput v2, p0, Lr33;->d:I

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 36
    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lr33;->readFully([BII)V

    .line 41
    .line 42
    .line 43
    new-array p0, v0, [C

    .line 44
    .line 45
    invoke-static {v1, p0, v2, v0}, Lnc8;->r([B[CII)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final readUnsignedByte()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr33;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final readUnsignedShort()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr33;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final skipBytes(I)I
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
