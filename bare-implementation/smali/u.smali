.class public abstract Lu;
.super Lq1;

# interfaces
.implements Lw;


# static fields
.field public static final b:Lr;

.field public static final c:[C


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr;

    .line 2
    .line 3
    const-class v1, Lu;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v0, v1, v2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lu;->b:Lr;

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    sput-object v0, Lu;->c:[C

    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lu;->a:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "zero length data with non-zero pad bits"

    .line 14
    .line 15
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x7

    .line 20
    if-gt p2, v1, :cond_2

    .line 21
    .line 22
    if-ltz p2, :cond_2

    .line 23
    .line 24
    int-to-byte p2, p2

    .line 25
    array-length v0, p1

    .line 26
    add-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    aput-byte p2, v1, v2

    .line 36
    .line 37
    iput-object v1, p0, Lu;->a:[B

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const-string p0, "pad bits cannot be greater than 7 or less than 0"

    .line 41
    .line 42
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_3
    const-string p0, "\'data\' cannot be null"

    .line 47
    .line 48
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public static B(Ljava/lang/Object;)Lu;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    instance-of v0, p0, Lu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lb0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, Lb0;

    .line 15
    .line 16
    invoke-interface {v0}, Lb0;->d()Lq1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v2, v0, Lu;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast v0, Lu;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    instance-of v0, p0, [B

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :try_start_0
    sget-object v0, Lu;->b:Lr;

    .line 32
    .line 33
    check-cast p0, [B

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lol1;->l([B)Lq1;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lu;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "failed to construct BIT STRING from byte[]: "

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0, v0}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "illegal object in getInstance: "

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_0
    check-cast p0, Lu;

    .line 72
    .line 73
    return-object p0
.end method

.method public static x([B)Lu;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt v0, v2, :cond_2

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aget-byte v3, p0, v3

    .line 8
    .line 9
    const/16 v4, 0xff

    .line 10
    .line 11
    and-int/2addr v3, v4

    .line 12
    if-lez v3, :cond_1

    .line 13
    .line 14
    const/4 v5, 0x7

    .line 15
    if-gt v3, v5, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-lt v0, v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v0, v2

    .line 21
    aget-byte v0, p0, v0

    .line 22
    .line 23
    shl-int v1, v4, v3

    .line 24
    .line 25
    and-int/2addr v1, v0

    .line 26
    int-to-byte v1, v1

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    new-instance v0, Ld92;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lu;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    const-string p0, "invalid pad bits detected"

    .line 36
    .line 37
    :goto_0
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    new-instance v0, Lf82;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lu;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    const-string p0, "truncated BIT STRING detected"

    .line 48
    .line 49
    goto :goto_0
.end method


# virtual methods
.method public final C()[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lu;->a:[B

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    array-length v1, p0

    .line 10
    invoke-static {p0, v0, v1}, Lms8;->t([BII)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "attempt to get non-octet aligned data from BIT STRING"

    .line 16
    .line 17
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final e()Ljava/io/InputStream;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    iget-object p0, p0, Lu;->a:[B

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x1

    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-direct {v0, p0, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object p0, p0, Lu;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte p0, p0, v0

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    return p0
.end method

.method public final g()Lq1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object p0, p0, Lu;->a:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    aget-byte v1, p0, v0

    .line 11
    .line 12
    const/16 v2, 0xff

    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    array-length v3, p0

    .line 16
    add-int/lit8 v4, v3, -0x1

    .line 17
    .line 18
    aget-byte v5, p0, v4

    .line 19
    .line 20
    shl-int v1, v2, v1

    .line 21
    .line 22
    and-int/2addr v1, v5

    .line 23
    int-to-byte v1, v1

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v3

    .line 28
    :goto_0
    add-int/lit8 v4, v4, -0x1

    .line 29
    .line 30
    if-ltz v4, :cond_2

    .line 31
    .line 32
    mul-int/lit16 v0, v0, 0x101

    .line 33
    .line 34
    aget-byte v2, p0, v4

    .line 35
    .line 36
    xor-int/2addr v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    mul-int/lit16 v0, v0, 0x101

    .line 39
    .line 40
    xor-int p0, v0, v1

    .line 41
    .line 42
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lu;

    .line 8
    .line 9
    iget-object p1, p1, Lu;->a:[B

    .line 10
    .line 11
    iget-object p0, p0, Lu;->a:[B

    .line 12
    .line 13
    array-length v0, p0

    .line 14
    array-length v2, p1

    .line 15
    if-eq v2, v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    sub-int/2addr v0, v2

    .line 23
    move v3, v1

    .line 24
    :goto_0
    if-ge v3, v0, :cond_4

    .line 25
    .line 26
    aget-byte v4, p0, v3

    .line 27
    .line 28
    aget-byte v5, p1, v3

    .line 29
    .line 30
    if-eq v4, v5, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    aget-byte v3, p0, v1

    .line 37
    .line 38
    const/16 v4, 0xff

    .line 39
    .line 40
    and-int/2addr v3, v4

    .line 41
    aget-byte p0, p0, v0

    .line 42
    .line 43
    shl-int v3, v4, v3

    .line 44
    .line 45
    and-int/2addr p0, v3

    .line 46
    int-to-byte p0, p0

    .line 47
    aget-byte p1, p1, v0

    .line 48
    .line 49
    and-int/2addr p1, v3

    .line 50
    int-to-byte p1, p1

    .line 51
    if-ne p0, p1, :cond_5

    .line 52
    .line 53
    return v2

    .line 54
    :cond_5
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ly0;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x23

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    array-length v2, p0

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    aget-byte v2, p0, v1

    .line 25
    .line 26
    ushr-int/lit8 v3, v2, 0x4

    .line 27
    .line 28
    and-int/lit8 v3, v3, 0xf

    .line 29
    .line 30
    sget-object v4, Lu;->c:[C

    .line 31
    .line 32
    aget-char v3, v4, v3

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v2, v2, 0xf

    .line 38
    .line 39
    aget-char v2, v4, v2

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string v0, "Internal error encoding BitString: "

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1, p0}, Lq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public u()Lq1;
    .locals 1

    .line 1
    new-instance v0, Lf82;

    .line 2
    .line 3
    iget-object p0, p0, Lu;->a:[B

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lu;-><init>([B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public w()Lq1;
    .locals 1

    .line 1
    new-instance v0, Ld92;

    .line 2
    .line 3
    iget-object p0, p0, Lu;->a:[B

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lu;-><init>([B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final y()[B
    .locals 4

    .line 1
    iget-object p0, p0, Lu;->a:[B

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lj1;->c:[B

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    aget-byte v0, p0, v0

    .line 12
    .line 13
    const/16 v2, 0xff

    .line 14
    .line 15
    and-int/2addr v0, v2

    .line 16
    array-length v3, p0

    .line 17
    invoke-static {p0, v1, v3}, Lms8;->t([BII)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length v3, p0

    .line 22
    sub-int/2addr v3, v1

    .line 23
    aget-byte v1, p0, v3

    .line 24
    .line 25
    shl-int v0, v2, v0

    .line 26
    .line 27
    int-to-byte v0, v0

    .line 28
    and-int/2addr v0, v1

    .line 29
    int-to-byte v0, v0

    .line 30
    aput-byte v0, p0, v3

    .line 31
    .line 32
    return-object p0
.end method
