.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public b:[B

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x5000

    .line 24
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->a:[B

    .line 8
    .line 9
    new-array p1, p1, [B

    .line 10
    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 15
    .line 16
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->a:[B

    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 23
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    return-void
.end method

.method public static b([[B)Lcom/jcraft/jsch/Buffer;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    array-length v3, p0

    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    add-int/2addr v0, v3

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 19
    .line 20
    .line 21
    :goto_1
    array-length v0, p0

    .line 22
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    aget-object v0, p0, v1

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    add-int/lit16 p1, p1, 0x80

    .line 5
    .line 6
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v2, p1, :cond_1

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    mul-int/lit8 v2, v2, 0x2

    .line 13
    .line 14
    if-ge v2, p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v2

    .line 18
    :goto_0
    new-array p1, p1, [B

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final c([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public final d(ILjava/lang/String;)[[B
    .locals 5

    .line 1
    new-array v0, p1, [[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-lt v4, v3, :cond_0

    .line 16
    .line 17
    new-array v4, v3, [B

    .line 18
    .line 19
    aput-object v4, v0, v2

    .line 20
    .line 21
    invoke-virtual {p0, v4, v1, v3}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p2}, Le6;->h(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    return-object v0
.end method

.method public final e()B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    aget-byte p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public final f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    const v1, 0xff00

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 16
    .line 17
    or-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 3
    .line 4
    return-void
.end method

.method public final getByte()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 8
    .line 9
    aget-byte p0, v0, v1

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    return p0
.end method

.method public final getByte(I)I
    .locals 1

    .line 15
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    return v0
.end method

.method public final getByte([B)V
    .locals 2

    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    return-void
.end method

.method public final getInt()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    const/high16 v1, -0x10000

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->f()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const v1, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr p0, v1

    .line 18
    or-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public final getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 2
    .line 3
    iget p0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final getLong()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    shl-long/2addr v0, v4

    .line 15
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long v4, p0

    .line 20
    and-long/2addr v2, v4

    .line 21
    or-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public final getMPInt()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2000

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move v0, v1

    .line 12
    :cond_1
    new-array v1, v0, [B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public final getMPIntBits()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 13
    .line 14
    .line 15
    aget-byte p0, v1, v2

    .line 16
    .line 17
    and-int/lit16 p0, p0, 0x80

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    add-int/lit8 p0, v0, 0x1

    .line 22
    .line 23
    new-array p0, p0, [B

    .line 24
    .line 25
    aput-byte v2, p0, v2

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v1, v2, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    return-object v1
.end method

.method public final getOffSet()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public final getString()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    move v0, v1

    .line 12
    :cond_1
    new-array v1, v0, [B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public final getUInt()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    shl-long/2addr v0, v2

    .line 9
    const-wide/32 v3, 0xff00

    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v3

    .line 13
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    or-long/2addr v0, v5

    .line 21
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    shl-long/2addr v5, v2

    .line 27
    and-long v2, v5, v3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    and-int/lit16 p0, p0, 0xff

    .line 34
    .line 35
    int-to-long v4, p0

    .line 36
    or-long/2addr v2, v4

    .line 37
    const/16 p0, 0x10

    .line 38
    .line 39
    shl-long/2addr v0, p0

    .line 40
    const-wide/32 v4, -0x10000

    .line 41
    .line 42
    .line 43
    and-long/2addr v0, v4

    .line 44
    const-wide/32 v4, 0xffff

    .line 45
    .line 46
    .line 47
    and-long/2addr v2, v4

    .line 48
    or-long/2addr v0, v2

    .line 49
    return-wide v0
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public final putByte(B)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final putByte([B)V
    .locals 2

    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    return-void
.end method

.method public final putByte([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 12
    .line 13
    return-void
.end method

.method public final putInt(I)V
    .locals 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->a:[B

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v0, v1, v2

    .line 8
    .line 9
    ushr-int/lit8 v0, p1, 0x10

    .line 10
    .line 11
    int-to-byte v0, v0

    .line 12
    const/4 v3, 0x1

    .line 13
    aput-byte v0, v1, v3

    .line 14
    .line 15
    ushr-int/lit8 v0, p1, 0x8

    .line 16
    .line 17
    int-to-byte v0, v0

    .line 18
    const/4 v3, 0x2

    .line 19
    aput-byte v0, v1, v3

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v1, v0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 26
    .line 27
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 34
    .line 35
    add-int/2addr p1, v3

    .line 36
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 37
    .line 38
    return-void
.end method

.method public final putLong(J)V
    .locals 10

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->a:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v0, v1, v2

    .line 11
    .line 12
    const/16 v0, 0x30

    .line 13
    .line 14
    ushr-long v3, p1, v0

    .line 15
    .line 16
    long-to-int v0, v3

    .line 17
    int-to-byte v0, v0

    .line 18
    const/4 v3, 0x1

    .line 19
    aput-byte v0, v1, v3

    .line 20
    .line 21
    const/16 v0, 0x28

    .line 22
    .line 23
    ushr-long v4, p1, v0

    .line 24
    .line 25
    long-to-int v0, v4

    .line 26
    int-to-byte v0, v0

    .line 27
    const/4 v4, 0x2

    .line 28
    aput-byte v0, v1, v4

    .line 29
    .line 30
    const/16 v0, 0x20

    .line 31
    .line 32
    ushr-long v5, p1, v0

    .line 33
    .line 34
    long-to-int v0, v5

    .line 35
    int-to-byte v0, v0

    .line 36
    const/4 v5, 0x3

    .line 37
    aput-byte v0, v1, v5

    .line 38
    .line 39
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 40
    .line 41
    iget v6, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 42
    .line 43
    const/4 v7, 0x4

    .line 44
    invoke-static {v1, v2, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x18

    .line 48
    .line 49
    ushr-long v8, p1, v0

    .line 50
    .line 51
    long-to-int v0, v8

    .line 52
    int-to-byte v0, v0

    .line 53
    aput-byte v0, v1, v2

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    ushr-long v8, p1, v0

    .line 58
    .line 59
    long-to-int v0, v8

    .line 60
    int-to-byte v0, v0

    .line 61
    aput-byte v0, v1, v3

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    ushr-long v8, p1, v0

    .line 66
    .line 67
    long-to-int v3, v8

    .line 68
    int-to-byte v3, v3

    .line 69
    aput-byte v3, v1, v4

    .line 70
    .line 71
    long-to-int p1, p1

    .line 72
    int-to-byte p1, p1

    .line 73
    aput-byte p1, v1, v5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 76
    .line 77
    iget p2, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 78
    .line 79
    add-int/2addr p2, v7

    .line 80
    invoke-static {v1, v2, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 84
    .line 85
    add-int/2addr p1, v0

    .line 86
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 87
    .line 88
    return-void
.end method

.method public final putMPInt([B)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    aget-byte v2, p1, v1

    .line 4
    .line 5
    and-int/lit16 v2, v2, 0x80

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    array-length v0, p1

    .line 22
    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final putString([B)V
    .locals 2

    const/4 v0, 0x0

    .line 8
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    return-void
.end method

.method public final putString([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 3
    .line 4
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 5
    .line 6
    return-void
.end method

.method public final setOffSet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final shift()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 7
    .line 8
    iget v2, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 9
    .line 10
    sub-int/2addr v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 16
    .line 17
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->c:I

    .line 21
    .line 22
    iput v3, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 23
    .line 24
    return-void
.end method
