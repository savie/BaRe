.class public final Lh26;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Lg26;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lk45;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lk45;->b:I

    .line 5
    .line 6
    iput v0, p0, Lh26;->b:I

    .line 7
    .line 8
    iget v1, p1, Lk45;->c:I

    .line 9
    .line 10
    iput v1, p0, Lh26;->c:I

    .line 11
    .line 12
    new-array v0, v0, [Lg26;

    .line 13
    .line 14
    iput-object v0, p0, Lh26;->a:[Lg26;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lh26;->b:I

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lh26;->a:[Lg26;

    .line 22
    .line 23
    new-instance v2, Lg26;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lg26;-><init>(Lk45;)V

    .line 26
    .line 27
    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lh26;->b:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lh26;->a:[Lg26;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    iget-object v3, v2, Lg26;->a:[S

    .line 12
    .line 13
    const/16 v4, 0x100

    .line 14
    .line 15
    new-array v5, v4, [S

    .line 16
    .line 17
    invoke-static {v3, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/16 v6, 0x80

    .line 22
    .line 23
    :goto_1
    const/4 v7, 0x2

    .line 24
    if-lt v6, v7, :cond_2

    .line 25
    .line 26
    move v7, v0

    .line 27
    :goto_2
    if-ge v7, v4, :cond_1

    .line 28
    .line 29
    sget-object v8, Lji8;->e:[S

    .line 30
    .line 31
    add-int/lit8 v9, v3, 0x1

    .line 32
    .line 33
    aget-short v3, v8, v3

    .line 34
    .line 35
    move v8, v7

    .line 36
    :goto_3
    add-int v10, v7, v6

    .line 37
    .line 38
    if-ge v8, v10, :cond_0

    .line 39
    .line 40
    add-int v10, v8, v6

    .line 41
    .line 42
    aget-short v11, v5, v10

    .line 43
    .line 44
    mul-int/2addr v11, v3

    .line 45
    invoke-static {v11}, Lwx3;->u(I)S

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    aget-short v12, v5, v8

    .line 50
    .line 51
    sub-int/2addr v12, v11

    .line 52
    int-to-short v12, v12

    .line 53
    aput-short v12, v5, v10

    .line 54
    .line 55
    aget-short v10, v5, v8

    .line 56
    .line 57
    add-int/2addr v10, v11

    .line 58
    int-to-short v10, v10

    .line 59
    aput-short v10, v5, v8

    .line 60
    .line 61
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_0
    add-int v7, v8, v6

    .line 65
    .line 66
    move v3, v9

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    shr-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iput-object v5, v2, Lg26;->a:[S

    .line 72
    .line 73
    invoke-virtual {v2}, Lg26;->c()V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public final b()[B
    .locals 12

    .line 1
    iget v0, p0, Lh26;->c:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Lh26;->b:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Lh26;->a:[Lg26;

    .line 12
    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    move v4, v1

    .line 16
    :goto_1
    const/16 v5, 0x100

    .line 17
    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    iget-object v5, v3, Lg26;->a:[S

    .line 21
    .line 22
    aget-short v6, v5, v4

    .line 23
    .line 24
    add-int/lit16 v6, v6, -0xd01

    .line 25
    .line 26
    int-to-short v6, v6

    .line 27
    shr-int/lit8 v7, v6, 0xf

    .line 28
    .line 29
    and-int/lit16 v7, v7, 0xd01

    .line 30
    .line 31
    add-int/2addr v6, v7

    .line 32
    int-to-short v6, v6

    .line 33
    aput-short v6, v5, v4

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/16 v4, 0x180

    .line 39
    .line 40
    new-array v5, v4, [B

    .line 41
    .line 42
    move v6, v1

    .line 43
    :goto_2
    const/16 v7, 0x80

    .line 44
    .line 45
    if-ge v6, v7, :cond_1

    .line 46
    .line 47
    iget-object v7, v3, Lg26;->a:[S

    .line 48
    .line 49
    mul-int/lit8 v8, v6, 0x2

    .line 50
    .line 51
    aget-short v9, v7, v8

    .line 52
    .line 53
    add-int/lit8 v8, v8, 0x1

    .line 54
    .line 55
    aget-short v7, v7, v8

    .line 56
    .line 57
    mul-int/lit8 v8, v6, 0x3

    .line 58
    .line 59
    int-to-byte v10, v9

    .line 60
    aput-byte v10, v5, v8

    .line 61
    .line 62
    add-int/lit8 v10, v8, 0x1

    .line 63
    .line 64
    shr-int/lit8 v9, v9, 0x8

    .line 65
    .line 66
    shl-int/lit8 v11, v7, 0x4

    .line 67
    .line 68
    or-int/2addr v9, v11

    .line 69
    int-to-byte v9, v9

    .line 70
    aput-byte v9, v5, v10

    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x2

    .line 73
    .line 74
    shr-int/lit8 v7, v7, 0x4

    .line 75
    .line 76
    int-to-byte v7, v7

    .line 77
    aput-byte v7, v5, v8

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    mul-int/lit16 v3, v2, 0x180

    .line 86
    .line 87
    invoke-static {v5, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lh26;->b:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lh26;->a:[Lg26;

    .line 14
    .line 15
    aget-object v3, v3, v1

    .line 16
    .line 17
    invoke-virtual {v3}, Lg26;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const-string v2, ", "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "]"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
