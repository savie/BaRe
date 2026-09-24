.class public final Lmq4;
.super Ly23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:[I

.field public final f:[[I

.field public final synthetic g:Lpq4;


# direct methods
.method public constructor <init>(Lpq4;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmq4;->g:Lpq4;

    .line 2
    .line 3
    invoke-direct {p0}, Ly23;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    shl-int p2, p1, p2

    .line 8
    .line 9
    new-array v0, p2, [I

    .line 10
    .line 11
    iput-object v0, p0, Lmq4;->e:[I

    .line 12
    .line 13
    sub-int/2addr p3, p1

    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    aput p3, v0, p1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    aput p2, v0, p1

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [[I

    .line 35
    .line 36
    iput-object p1, p0, Lmq4;->f:[[I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    invoke-super {p0}, Ly23;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lmq4;->e:[I

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    aput v0, v2, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public final f(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly23;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [S

    .line 4
    .line 5
    add-int/lit8 v1, p1, -0x2

    .line 6
    .line 7
    iget-object v2, p0, Lmq4;->g:Lpq4;

    .line 8
    .line 9
    iget-object v2, v2, Lpq4;->m:Lbf6;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/16 v5, 0x8

    .line 14
    .line 15
    if-ge v1, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v0, v3, v3}, Lbf6;->R([SII)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ly23;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, [[S

    .line 23
    .line 24
    aget-object p1, p1, p2

    .line 25
    .line 26
    invoke-virtual {v2, v1, p1}, Lbf6;->S(I[S)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2, v0, v3, v4}, Lbf6;->R([SII)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, p1, -0xa

    .line 34
    .line 35
    if-ge v1, v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v0, v4, v3}, Lbf6;->R([SII)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Ly23;->c:Ljava/io/Serializable;

    .line 41
    .line 42
    check-cast p1, [[S

    .line 43
    .line 44
    aget-object p1, p1, p2

    .line 45
    .line 46
    invoke-virtual {v2, v1, p1}, Lbf6;->S(I[S)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2, v0, v4, v4}, Lbf6;->R([SII)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Ly23;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, [S

    .line 56
    .line 57
    add-int/lit8 p1, p1, -0x12

    .line 58
    .line 59
    invoke-virtual {v2, p1, v0}, Lbf6;->S(I[S)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p0, p0, Lmq4;->e:[I

    .line 63
    .line 64
    aget p1, p0, p2

    .line 65
    .line 66
    sub-int/2addr p1, v4

    .line 67
    aput p1, p0, p2

    .line 68
    .line 69
    return-void
.end method

.method public final g()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lmq4;->e:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_3

    .line 7
    .line 8
    aget v3, v2, v1

    .line 9
    .line 10
    if-gtz v3, :cond_2

    .line 11
    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    aput v3, v2, v1

    .line 15
    .line 16
    iget-object v2, p0, Ly23;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, [S

    .line 19
    .line 20
    aget-short v3, v2, v0

    .line 21
    .line 22
    invoke-static {v3, v0}, Lbf6;->T(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    move v4, v0

    .line 27
    :goto_1
    const/16 v5, 0x8

    .line 28
    .line 29
    iget-object v6, p0, Lmq4;->f:[[I

    .line 30
    .line 31
    if-ge v4, v5, :cond_0

    .line 32
    .line 33
    aget-object v5, v6, v1

    .line 34
    .line 35
    iget-object v6, p0, Ly23;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, [[S

    .line 38
    .line 39
    aget-object v6, v6, v1

    .line 40
    .line 41
    invoke-static {v4, v6}, Lbf6;->U(I[S)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    add-int/2addr v6, v3

    .line 46
    aput v6, v5, v4

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    aget-short v3, v2, v0

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    invoke-static {v3, v5}, Lbf6;->T(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    aget-short v7, v2, v5

    .line 59
    .line 60
    invoke-static {v7, v0}, Lbf6;->T(II)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    :goto_2
    const/16 v8, 0x10

    .line 65
    .line 66
    if-ge v4, v8, :cond_1

    .line 67
    .line 68
    aget-object v8, v6, v1

    .line 69
    .line 70
    add-int v9, v3, v7

    .line 71
    .line 72
    iget-object v10, p0, Ly23;->c:Ljava/io/Serializable;

    .line 73
    .line 74
    check-cast v10, [[S

    .line 75
    .line 76
    aget-object v10, v10, v1

    .line 77
    .line 78
    add-int/lit8 v11, v4, -0x8

    .line 79
    .line 80
    invoke-static {v11, v10}, Lbf6;->U(I[S)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    add-int/2addr v10, v9

    .line 85
    aput v10, v8, v4

    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    aget-short v2, v2, v5

    .line 91
    .line 92
    invoke-static {v2, v5}, Lbf6;->T(II)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    :goto_3
    aget-object v5, v6, v1

    .line 97
    .line 98
    array-length v7, v5

    .line 99
    if-ge v4, v7, :cond_2

    .line 100
    .line 101
    add-int v7, v3, v2

    .line 102
    .line 103
    iget-object v8, p0, Ly23;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v8, [S

    .line 106
    .line 107
    add-int/lit8 v9, v4, -0x10

    .line 108
    .line 109
    invoke-static {v9, v8}, Lbf6;->U(I[S)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    add-int/2addr v8, v7

    .line 114
    aput v8, v5, v4

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    return-void
.end method
