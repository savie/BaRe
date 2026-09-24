.class public final Ls1;
.super Lq1;


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:[B

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1;->a:[B

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ls1;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static B(ILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 8
    .line 9
    const/16 v4, 0x30

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-lt v3, p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/16 v7, 0x2e

    .line 19
    .line 20
    if-ne v6, v7, :cond_1

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    if-le v2, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v4, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-gt v4, v6, :cond_4

    .line 36
    .line 37
    const/16 v0, 0x39

    .line 38
    .line 39
    if-gt v6, v0, :cond_4

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    :goto_1
    move v0, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v2, :cond_4

    .line 46
    .line 47
    if-le v2, v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-ne p0, v4, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    return v5

    .line 57
    :cond_4
    :goto_2
    return v1
.end method

.method public static C(Ljava/io/ByteArrayOutputStream;J)V
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    long-to-int v1, p1

    .line 6
    and-int/lit8 v1, v1, 0x7f

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    aput-byte v1, v0, v2

    .line 12
    .line 13
    :goto_0
    const-wide/16 v3, 0x80

    .line 14
    .line 15
    cmp-long v1, p1, v3

    .line 16
    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    shr-long/2addr p1, v1

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    long-to-int v1, p1

    .line 24
    or-int/lit16 v1, v1, 0x80

    .line 25
    .line 26
    int-to-byte v1, v1

    .line 27
    aput-byte v1, v0, v2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    rsub-int/lit8 p1, v2, 0x9

    .line 31
    .line 32
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static E(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x6

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    div-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-array v3, v0, [B

    .line 17
    .line 18
    add-int/lit8 v4, v0, -0x1

    .line 19
    .line 20
    move v5, v4

    .line 21
    :goto_0
    if-ltz v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    or-int/lit16 v6, v6, 0x80

    .line 28
    .line 29
    int-to-byte v6, v6

    .line 30
    aput-byte v6, v3, v5

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    add-int/lit8 v5, v5, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    aget-byte p1, v3, v4

    .line 40
    .line 41
    and-int/lit8 p1, p1, 0x7f

    .line 42
    .line 43
    int-to-byte p1, p1

    .line 44
    aput-byte p1, v3, v4

    .line 45
    .line 46
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static x([BZ)Ls1;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x1000

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    new-instance v0, Lc1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lc1;-><init>([B)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ls1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ls1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-static {p0}, Ls1;->y([B)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Ls1;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lms8;->k([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_1
    invoke-direct {v0, p0}, Ls1;-><init>([B)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    const-string p0, "invalid relative OID contents"

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_3
    const-string p0, "exceeded relative OID contents length limit"

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public static y([B)Z
    .locals 5

    .line 1
    const-string v0, "org.bouncycastle.asn1.allow_wrong_oid_enc"

    .line 2
    .line 3
    invoke-static {v0}, Lu86;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    array-length v0, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    move v3, v1

    .line 17
    move v0, v2

    .line 18
    :goto_0
    array-length v4, p0

    .line 19
    if-ge v0, v4, :cond_4

    .line 20
    .line 21
    const/16 v4, 0x80

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    aget-byte v3, p0, v0

    .line 26
    .line 27
    and-int/lit16 v3, v3, 0xff

    .line 28
    .line 29
    if-ne v3, v4, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    aget-byte v3, p0, v0

    .line 33
    .line 34
    and-int/2addr v3, v4

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    move v3, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v2

    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    return v3
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Ls1;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lms8;->x([B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Ls1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Ls1;

    .line 12
    .line 13
    iget-object p0, p0, Ls1;->a:[B

    .line 14
    .line 15
    iget-object p1, p1, Ls1;->a:[B

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iget-object p0, p0, Ls1;->a:[B

    .line 4
    .line 5
    invoke-virtual {p1, v0, p2, p0}, Lm1;->k(IZ[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Ls1;->a:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, v1, Ls1;->b:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget-object v0, v1, Ls1;->a:[B

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v11, v5

    .line 19
    move v8, v7

    .line 20
    const-wide/16 v9, 0x0

    .line 21
    .line 22
    :goto_0
    array-length v12, v0

    .line 23
    if-eq v8, v12, :cond_6

    .line 24
    .line 25
    aget-byte v12, v0, v8

    .line 26
    .line 27
    const-wide v13, 0xffffffffffff80L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v13, v9, v13

    .line 33
    .line 34
    const/4 v14, 0x7

    .line 35
    const/16 v15, 0x2e

    .line 36
    .line 37
    if-gtz v13, :cond_2

    .line 38
    .line 39
    and-int/lit8 v13, v12, 0x7f

    .line 40
    .line 41
    int-to-long v3, v13

    .line 42
    add-long/2addr v9, v3

    .line 43
    and-int/lit16 v3, v12, 0x80

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    move v6, v7

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :goto_2
    const-wide/16 v9, 0x0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_1
    shl-long/2addr v9, v14

    .line 61
    goto :goto_4

    .line 62
    :cond_2
    if-nez v11, :cond_3

    .line 63
    .line 64
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    :cond_3
    and-int/lit8 v3, v12, 0x7f

    .line 69
    .line 70
    int-to-long v3, v3

    .line 71
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    and-int/lit16 v4, v12, 0x80

    .line 80
    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    move v6, v7

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-object v11, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, v1, Ls1;->b:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_6

    .line 111
    :cond_7
    :goto_5
    iget-object v0, v1, Ls1;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-object v0

    .line 115
    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw v0
.end method
