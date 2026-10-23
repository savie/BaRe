.class public final Lqe6;
.super Ljava/security/SecureRandom;


# instance fields
.field public final a:[B

.field public final b:[B


# direct methods
.method public constructor <init>([BLq15;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x30

    .line 11
    .line 12
    if-lt v0, v4, :cond_0

    .line 13
    .line 14
    new-array p2, v4, [B

    .line 15
    .line 16
    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    new-array p1, v2, [B

    .line 20
    .line 21
    iput-object p1, p0, Lqe6;->a:[B

    .line 22
    .line 23
    new-array v0, v1, [B

    .line 24
    .line 25
    iput-object v0, p0, Lqe6;->b:[B

    .line 26
    .line 27
    invoke-static {p2, p1, v0}, Lqe6;->a([B[B[B)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    array-length v0, p1

    .line 32
    rsub-int/lit8 v0, v0, 0x30

    .line 33
    .line 34
    invoke-interface {p2}, Lhl2;->c()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    array-length v6, p1

    .line 39
    invoke-virtual {p2, p1, v3, v6}, Lq15;->update([BII)V

    .line 40
    .line 41
    .line 42
    new-array v6, v5, [B

    .line 43
    .line 44
    invoke-interface {p2, v6, v3}, Lhl2;->doFinal([BI)I

    .line 45
    .line 46
    .line 47
    if-ne v0, v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    if-ge v0, v5, :cond_2

    .line 51
    .line 52
    new-array p2, v0, [B

    .line 53
    .line 54
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v6, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    move-object v6, p2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-array v7, v5, [B

    .line 64
    .line 65
    invoke-static {v5, v5}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sub-int/2addr v0, v5

    .line 73
    if-lt v0, v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2, v6, v3, v5}, Lq15;->update([BII)V

    .line 76
    .line 77
    .line 78
    new-array v6, v5, [B

    .line 79
    .line 80
    invoke-interface {p2, v6, v3}, Lhl2;->doFinal([BI)I

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v6}, Lms8;->p([B[B)[B

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-lez v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2, v6, v3, v5}, Lq15;->update([BII)V

    .line 91
    .line 92
    .line 93
    new-array v5, v5, [B

    .line 94
    .line 95
    invoke-interface {p2, v5, v3}, Lhl2;->doFinal([BI)I

    .line 96
    .line 97
    .line 98
    array-length p2, v7

    .line 99
    add-int v6, p2, v0

    .line 100
    .line 101
    new-array v8, v6, [B

    .line 102
    .line 103
    array-length v9, v7

    .line 104
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-static {v7, v3, v8, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v3, v8, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    move-object v6, v8

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-object v6, v7

    .line 117
    :goto_1
    invoke-static {p1, v6}, Lms8;->p([B[B)[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-array p2, v4, [B

    .line 122
    .line 123
    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    new-array p1, v2, [B

    .line 127
    .line 128
    iput-object p1, p0, Lqe6;->a:[B

    .line 129
    .line 130
    new-array v0, v1, [B

    .line 131
    .line 132
    iput-object v0, p0, Lqe6;->b:[B

    .line 133
    .line 134
    invoke-static {p2, p1, v0}, Lqe6;->a([B[B[B)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static a([B[B[B)V
    .locals 8

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/4 v4, 0x3

    .line 8
    if-ge v3, v4, :cond_2

    .line 9
    .line 10
    const/16 v4, 0xf

    .line 11
    .line 12
    :goto_1
    if-ltz v4, :cond_1

    .line 13
    .line 14
    aget-byte v5, p2, v4

    .line 15
    .line 16
    and-int/lit16 v6, v5, 0xff

    .line 17
    .line 18
    const/16 v7, 0xff

    .line 19
    .line 20
    if-ne v6, v7, :cond_0

    .line 21
    .line 22
    aput-byte v2, p2, v4

    .line 23
    .line 24
    add-int/lit8 v4, v4, -0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    int-to-byte v5, v5

    .line 30
    aput-byte v5, p2, v4

    .line 31
    .line 32
    :cond_1
    mul-int/lit8 v4, v3, 0x10

    .line 33
    .line 34
    invoke-static {p1, p2, v4, v1}, Lqe6;->b([B[BI[B)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-eqz p0, :cond_3

    .line 41
    .line 42
    move v3, v2

    .line 43
    :goto_2
    if-ge v3, v0, :cond_3

    .line 44
    .line 45
    aget-byte v4, v1, v3

    .line 46
    .line 47
    aget-byte v5, p0, v3

    .line 48
    .line 49
    xor-int/2addr v4, v5

    .line 50
    int-to-byte v4, v4

    .line 51
    aput-byte v4, v1, v3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    array-length p0, p1

    .line 57
    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    const/16 p0, 0x20

    .line 61
    .line 62
    array-length p1, p2

    .line 63
    invoke-static {v1, p0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static b([B[BI[B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lj;

    .line 2
    .line 3
    invoke-direct {v0}, Lj;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Loo4;

    .line 7
    .line 8
    array-length v2, p0

    .line 9
    invoke-direct {v1, p0, v2}, Loo4;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    invoke-virtual {v0, p0, v1}, Lj;->a(ZLz61;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    array-length v1, p1

    .line 18
    if-eq p0, v1, :cond_0

    .line 19
    .line 20
    add-int v1, p2, p0

    .line 21
    .line 22
    invoke-virtual {v0, p1, p3, p0, v1}, Lj;->j([B[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    add-int/lit8 p0, p0, 0x10

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "drbg failure: "

    .line 39
    .line 40
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method


# virtual methods
.method public final nextBytes([B)V
    .locals 12

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    iget-object v5, p0, Lqe6;->a:[B

    .line 9
    .line 10
    iget-object v6, p0, Lqe6;->b:[B

    .line 11
    .line 12
    if-lez v2, :cond_3

    .line 13
    .line 14
    const/16 v7, 0xf

    .line 15
    .line 16
    move v8, v7

    .line 17
    :goto_1
    if-ltz v8, :cond_1

    .line 18
    .line 19
    aget-byte v9, v6, v8

    .line 20
    .line 21
    and-int/lit16 v10, v9, 0xff

    .line 22
    .line 23
    const/16 v11, 0xff

    .line 24
    .line 25
    if-ne v10, v11, :cond_0

    .line 26
    .line 27
    aput-byte v3, v6, v8

    .line 28
    .line 29
    add-int/lit8 v8, v8, -0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 33
    .line 34
    int-to-byte v9, v9

    .line 35
    aput-byte v9, v6, v8

    .line 36
    .line 37
    :cond_1
    invoke-static {v5, v6, v3, v1}, Lqe6;->b([B[BI[B)V

    .line 38
    .line 39
    .line 40
    if-le v2, v7, :cond_2

    .line 41
    .line 42
    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x10

    .line 46
    .line 47
    add-int/lit8 v2, v2, -0x10

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    move v2, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    invoke-static {p0, v5, v6}, Lqe6;->a([B[B[B)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
