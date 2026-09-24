.class public abstract Lpq4;
.super Lgq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public A:I

.field public final m:Lbf6;

.field public final n:Laq4;

.field public final o:Loq4;

.field public final p:Lmq4;

.field public final q:Lmq4;

.field public final r:I

.field public s:I

.field public t:I

.field public final u:I

.field public final v:[[I

.field public final w:[[I

.field public final x:[I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lbf6;Laq4;IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0, p5}, Lgq4;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lpq4;->s:I

    .line 6
    .line 7
    iput v0, p0, Lpq4;->t:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v2, v1, [I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    aput v4, v2, v3

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    aput v4, v2, v0

    .line 19
    .line 20
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [[I

    .line 27
    .line 28
    iput-object v2, p0, Lpq4;->w:[[I

    .line 29
    .line 30
    const/16 v2, 0x10

    .line 31
    .line 32
    new-array v2, v2, [I

    .line 33
    .line 34
    iput-object v2, p0, Lpq4;->x:[I

    .line 35
    .line 36
    iput v0, p0, Lpq4;->y:I

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    iput v2, p0, Lpq4;->z:I

    .line 40
    .line 41
    iput v0, p0, Lpq4;->A:I

    .line 42
    .line 43
    iput-object p1, p0, Lpq4;->m:Lbf6;

    .line 44
    .line 45
    iput-object p2, p0, Lpq4;->n:Laq4;

    .line 46
    .line 47
    iput p7, p0, Lpq4;->r:I

    .line 48
    .line 49
    new-instance p1, Loq4;

    .line 50
    .line 51
    invoke-direct {p1, p0, p3, p4}, Loq4;-><init>(Lpq4;II)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lpq4;->o:Loq4;

    .line 55
    .line 56
    new-instance p1, Lmq4;

    .line 57
    .line 58
    invoke-direct {p1, p0, p5, p7}, Lmq4;-><init>(Lpq4;II)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lpq4;->p:Lmq4;

    .line 62
    .line 63
    new-instance p1, Lmq4;

    .line 64
    .line 65
    invoke-direct {p1, p0, p5, p7}, Lmq4;-><init>(Lpq4;II)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lpq4;->q:Lmq4;

    .line 69
    .line 70
    sub-int/2addr p6, v3

    .line 71
    invoke-static {p6}, Lpq4;->e(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-int/2addr p1, v3

    .line 76
    iput p1, p0, Lpq4;->u:I

    .line 77
    .line 78
    new-array p2, v1, [I

    .line 79
    .line 80
    aput p1, p2, v3

    .line 81
    .line 82
    aput v4, p2, v0

    .line 83
    .line 84
    invoke-static {v5, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, [[I

    .line 89
    .line 90
    iput-object p1, p0, Lpq4;->v:[[I

    .line 91
    .line 92
    invoke-virtual {p0}, Lpq4;->a()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static e(I)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-gt p0, v0, :cond_0

    .line 3
    .line 4
    if-ltz p0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    rsub-int/lit8 v1, v0, 0x1f

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    rsub-int/lit8 v0, v0, 0x1e

    .line 16
    .line 17
    ushr-int/2addr p0, v0

    .line 18
    and-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    add-int/2addr v1, p0

    .line 21
    return v1
.end method

.method public static f(Lbf6;IIIIIIIIILv40;)Lpq4;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p4, v1, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p4, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lrq4;

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move/from16 v5, p5

    .line 15
    .line 16
    move/from16 v6, p6

    .line 17
    .line 18
    move/from16 v7, p7

    .line 19
    .line 20
    move/from16 v8, p8

    .line 21
    .line 22
    move/from16 v9, p9

    .line 23
    .line 24
    move-object/from16 v10, p10

    .line 25
    .line 26
    invoke-direct/range {v0 .. v10}, Lrq4;-><init>(Lbf6;IIIIIIIILv40;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lc6;->b()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    move/from16 v8, p8

    .line 35
    .line 36
    new-instance p4, Lqq4;

    .line 37
    .line 38
    move/from16 v6, p6

    .line 39
    .line 40
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v1, 0x4

    .line 45
    const/16 v5, 0x110

    .line 46
    .line 47
    if-eq v8, v1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x14

    .line 50
    .line 51
    if-ne v8, v1, :cond_2

    .line 52
    .line 53
    new-instance v2, Lqj0;

    .line 54
    .line 55
    move/from16 v3, p5

    .line 56
    .line 57
    move/from16 v6, p7

    .line 58
    .line 59
    move/from16 v7, p9

    .line 60
    .line 61
    move-object/from16 v8, p10

    .line 62
    .line 63
    invoke-direct/range {v2 .. v8}, Lqj0;-><init>(IIIIILv40;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    move v4, p1

    .line 67
    move v5, p2

    .line 68
    move v6, p3

    .line 69
    move-object v1, p4

    .line 70
    move/from16 v7, p5

    .line 71
    .line 72
    move/from16 v8, p7

    .line 73
    .line 74
    move-object v3, v2

    .line 75
    move-object v2, p0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {}, Lc6;->b()V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    new-instance v2, Lg24;

    .line 82
    .line 83
    move/from16 v3, p5

    .line 84
    .line 85
    move/from16 v6, p7

    .line 86
    .line 87
    move/from16 v7, p9

    .line 88
    .line 89
    move-object/from16 v8, p10

    .line 90
    .line 91
    invoke-direct/range {v2 .. v8}, Lg24;-><init>(IIIIILv40;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_1
    invoke-direct/range {v1 .. v8}, Lpq4;-><init>(Lbf6;Laq4;IIIII)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v1, Lqq4;->B:Lnn1;

    .line 99
    .line 100
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-super {p0}, Lgq4;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lpq4;->o:Loq4;

    .line 7
    .line 8
    iget-object v2, v2, Loq4;->c:[Lnq4;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    iget-object v2, v2, Lol1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, [S

    .line 18
    .line 19
    invoke-static {v2}, Ly13;->o([S)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lpq4;->p:Lmq4;

    .line 26
    .line 27
    invoke-virtual {v1}, Lmq4;->d()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lpq4;->q:Lmq4;

    .line 31
    .line 32
    invoke-virtual {v1}, Lmq4;->d()V

    .line 33
    .line 34
    .line 35
    iput v0, p0, Lpq4;->s:I

    .line 36
    .line 37
    iput v0, p0, Lpq4;->t:I

    .line 38
    .line 39
    iget v0, p0, Lpq4;->A:I

    .line 40
    .line 41
    iget v1, p0, Lpq4;->z:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    add-int/2addr v1, v0

    .line 46
    iput v1, p0, Lpq4;->A:I

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lpq4;->z:I

    .line 50
    .line 51
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lpq4;->n:Laq4;

    .line 2
    .line 3
    iget v0, v0, Laq4;->g:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lpq4;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v0, p0, Lpq4;->A:I

    .line 23
    .line 24
    const v1, 0x1ffeef

    .line 25
    .line 26
    .line 27
    if-gt v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lpq4;->m:Lbf6;

    .line 30
    .line 31
    invoke-virtual {v0}, Lbf6;->V()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0xffe6

    .line 36
    .line 37
    .line 38
    if-gt v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lpq4;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    :goto_1
    return v3

    .line 47
    :cond_2
    return v2

    .line 48
    :catch_0
    new-instance p0, Ljava/lang/Error;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lpq4;->n:Laq4;

    .line 2
    .line 3
    iget v1, v0, Laq4;->g:I

    .line 4
    .line 5
    iget v0, v0, Laq4;->h:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lpq4;->l(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lgq4;->c:Ldm7;

    .line 15
    .line 16
    iget v1, v1, Ldm7;->a:I

    .line 17
    .line 18
    iget-object v3, p0, Lgq4;->d:[[S

    .line 19
    .line 20
    aget-object v1, v3, v1

    .line 21
    .line 22
    iget-object v3, p0, Lpq4;->m:Lbf6;

    .line 23
    .line 24
    invoke-virtual {v3, v1, v2, v2}, Lbf6;->R([SII)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lpq4;->o:Loq4;

    .line 28
    .line 29
    iget-object v1, v1, Loq4;->c:[Lnq4;

    .line 30
    .line 31
    aget-object v1, v1, v2

    .line 32
    .line 33
    invoke-virtual {v1}, Lnq4;->H()V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lpq4;->z:I

    .line 37
    .line 38
    sub-int/2addr v1, v0

    .line 39
    iput v1, p0, Lpq4;->z:I

    .line 40
    .line 41
    iget v1, p0, Lpq4;->A:I

    .line 42
    .line 43
    add-int/2addr v1, v0

    .line 44
    iput v1, p0, Lpq4;->A:I

    .line 45
    .line 46
    return v0

    .line 47
    :cond_0
    return v2
.end method

.method public final d()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpq4;->z:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iget-object v3, v0, Lpq4;->n:Laq4;

    .line 8
    .line 9
    iget v4, v3, Laq4;->g:I

    .line 10
    .line 11
    sub-int/2addr v4, v1

    .line 12
    iget v1, v3, Laq4;->h:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-ge v4, v1, :cond_f

    .line 16
    .line 17
    invoke-virtual {v0}, Lpq4;->k()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v3, v3, Laq4;->g:I

    .line 22
    .line 23
    iget v4, v0, Lpq4;->z:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    iget v4, v0, Lgq4;->a:I

    .line 27
    .line 28
    and-int/2addr v3, v4

    .line 29
    iget v4, v0, Lpq4;->y:I

    .line 30
    .line 31
    iget-object v6, v0, Lgq4;->c:Ldm7;

    .line 32
    .line 33
    iget v7, v6, Ldm7;->a:I

    .line 34
    .line 35
    const/4 v8, -0x1

    .line 36
    iget-object v9, v0, Lgq4;->d:[[S

    .line 37
    .line 38
    iget-object v10, v0, Lpq4;->m:Lbf6;

    .line 39
    .line 40
    if-ne v4, v8, :cond_0

    .line 41
    .line 42
    aget-object v4, v9, v7

    .line 43
    .line 44
    invoke-virtual {v10, v4, v3, v5}, Lbf6;->R([SII)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lpq4;->o:Loq4;

    .line 48
    .line 49
    iget-object v4, v3, Loq4;->d:Lpq4;

    .line 50
    .line 51
    iget-object v5, v4, Lpq4;->n:Laq4;

    .line 52
    .line 53
    iget v6, v4, Lpq4;->z:I

    .line 54
    .line 55
    add-int/2addr v6, v2

    .line 56
    invoke-virtual {v5, v6}, Laq4;->b(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iget v5, v5, Laq4;->g:I

    .line 61
    .line 62
    iget v4, v4, Lpq4;->z:I

    .line 63
    .line 64
    sub-int/2addr v5, v4

    .line 65
    invoke-virtual {v3, v6, v5}, Lto4;->a(II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v3, v3, Loq4;->c:[Lnq4;

    .line 70
    .line 71
    aget-object v3, v3, v4

    .line 72
    .line 73
    invoke-virtual {v3}, Lnq4;->H()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_0
    aget-object v4, v9, v7

    .line 79
    .line 80
    invoke-virtual {v10, v4, v3, v2}, Lbf6;->R([SII)V

    .line 81
    .line 82
    .line 83
    iget v4, v0, Lpq4;->y:I

    .line 84
    .line 85
    iget v7, v6, Ldm7;->a:I

    .line 86
    .line 87
    iget-object v9, v0, Lgq4;->b:[I

    .line 88
    .line 89
    const/4 v11, 0x2

    .line 90
    const/4 v12, 0x3

    .line 91
    iget-object v13, v0, Lgq4;->e:[S

    .line 92
    .line 93
    const/4 v14, 0x4

    .line 94
    if-ge v4, v14, :cond_7

    .line 95
    .line 96
    invoke-virtual {v10, v13, v7, v2}, Lbf6;->R([SII)V

    .line 97
    .line 98
    .line 99
    iget v4, v0, Lpq4;->y:I

    .line 100
    .line 101
    iget-object v7, v0, Lgq4;->f:[S

    .line 102
    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    iget v4, v6, Ldm7;->a:I

    .line 106
    .line 107
    invoke-virtual {v10, v7, v4, v5}, Lbf6;->R([SII)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v0, Lgq4;->i:[[S

    .line 111
    .line 112
    iget v7, v6, Ldm7;->a:I

    .line 113
    .line 114
    aget-object v4, v4, v7

    .line 115
    .line 116
    if-ne v1, v2, :cond_1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move v5, v2

    .line 120
    :goto_0
    invoke-virtual {v10, v4, v3, v5}, Lbf6;->R([SII)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    aget v8, v9, v4

    .line 125
    .line 126
    iget v13, v6, Ldm7;->a:I

    .line 127
    .line 128
    invoke-virtual {v10, v7, v13, v2}, Lbf6;->R([SII)V

    .line 129
    .line 130
    .line 131
    iget v7, v6, Ldm7;->a:I

    .line 132
    .line 133
    iget-object v13, v0, Lgq4;->g:[S

    .line 134
    .line 135
    if-ne v4, v2, :cond_3

    .line 136
    .line 137
    invoke-virtual {v10, v13, v7, v5}, Lbf6;->R([SII)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v10, v13, v7, v2}, Lbf6;->R([SII)V

    .line 142
    .line 143
    .line 144
    iget v7, v6, Ldm7;->a:I

    .line 145
    .line 146
    add-int/lit8 v13, v4, -0x2

    .line 147
    .line 148
    iget-object v14, v0, Lgq4;->h:[S

    .line 149
    .line 150
    invoke-virtual {v10, v14, v7, v13}, Lbf6;->R([SII)V

    .line 151
    .line 152
    .line 153
    if-ne v4, v12, :cond_4

    .line 154
    .line 155
    aget v4, v9, v11

    .line 156
    .line 157
    aput v4, v9, v12

    .line 158
    .line 159
    :cond_4
    aget v4, v9, v2

    .line 160
    .line 161
    aput v4, v9, v11

    .line 162
    .line 163
    :goto_1
    aget v4, v9, v5

    .line 164
    .line 165
    aput v4, v9, v2

    .line 166
    .line 167
    aput v8, v9, v5

    .line 168
    .line 169
    :goto_2
    if-ne v1, v2, :cond_6

    .line 170
    .line 171
    iget v3, v6, Ldm7;->a:I

    .line 172
    .line 173
    const/4 v4, 0x7

    .line 174
    if-ge v3, v4, :cond_5

    .line 175
    .line 176
    const/16 v3, 0x9

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    const/16 v3, 0xb

    .line 180
    .line 181
    :goto_3
    iput v3, v6, Ldm7;->a:I

    .line 182
    .line 183
    goto/16 :goto_7

    .line 184
    .line 185
    :cond_6
    iget-object v4, v0, Lpq4;->q:Lmq4;

    .line 186
    .line 187
    invoke-virtual {v4, v1, v3}, Lmq4;->f(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ldm7;->b()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_7
    invoke-virtual {v10, v13, v7, v5}, Lbf6;->R([SII)V

    .line 196
    .line 197
    .line 198
    iget v4, v0, Lpq4;->y:I

    .line 199
    .line 200
    sub-int/2addr v4, v14

    .line 201
    invoke-virtual {v6}, Ldm7;->c()V

    .line 202
    .line 203
    .line 204
    iget-object v6, v0, Lpq4;->p:Lmq4;

    .line 205
    .line 206
    invoke-virtual {v6, v1, v3}, Lmq4;->f(II)V

    .line 207
    .line 208
    .line 209
    invoke-static {v4}, Lpq4;->e(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    const/4 v6, 0x6

    .line 214
    if-ge v1, v6, :cond_8

    .line 215
    .line 216
    add-int/lit8 v6, v1, -0x2

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    move v6, v12

    .line 220
    :goto_4
    iget-object v7, v0, Lgq4;->j:[[S

    .line 221
    .line 222
    aget-object v6, v7, v6

    .line 223
    .line 224
    invoke-virtual {v10, v3, v6}, Lbf6;->S(I[S)V

    .line 225
    .line 226
    .line 227
    if-lt v3, v14, :cond_a

    .line 228
    .line 229
    ushr-int/lit8 v6, v3, 0x1

    .line 230
    .line 231
    add-int/lit8 v7, v6, -0x1

    .line 232
    .line 233
    and-int/lit8 v13, v3, 0x1

    .line 234
    .line 235
    or-int/2addr v13, v11

    .line 236
    shl-int v7, v13, v7

    .line 237
    .line 238
    sub-int v7, v4, v7

    .line 239
    .line 240
    const/16 v13, 0xe

    .line 241
    .line 242
    if-ge v3, v13, :cond_b

    .line 243
    .line 244
    iget-object v6, v0, Lgq4;->k:[[S

    .line 245
    .line 246
    sub-int/2addr v3, v14

    .line 247
    aget-object v3, v6, v3

    .line 248
    .line 249
    array-length v6, v3

    .line 250
    or-int/2addr v6, v7

    .line 251
    move v7, v2

    .line 252
    :cond_9
    and-int/lit8 v8, v6, 0x1

    .line 253
    .line 254
    ushr-int/2addr v6, v2

    .line 255
    invoke-virtual {v10, v3, v7, v8}, Lbf6;->R([SII)V

    .line 256
    .line 257
    .line 258
    shl-int/2addr v7, v2

    .line 259
    or-int/2addr v7, v8

    .line 260
    if-ne v6, v2, :cond_9

    .line 261
    .line 262
    :cond_a
    move/from16 v17, v5

    .line 263
    .line 264
    move-object/from16 v16, v9

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_b
    ushr-int/lit8 v3, v7, 0x4

    .line 268
    .line 269
    add-int/lit8 v6, v6, -0x5

    .line 270
    .line 271
    :goto_5
    iget v13, v10, Lbf6;->i:I

    .line 272
    .line 273
    ushr-int/2addr v13, v2

    .line 274
    iput v13, v10, Lbf6;->i:I

    .line 275
    .line 276
    iget-wide v14, v10, Lbf6;->h:J

    .line 277
    .line 278
    add-int/2addr v6, v8

    .line 279
    ushr-int v16, v3, v6

    .line 280
    .line 281
    and-int/lit8 v16, v16, 0x1

    .line 282
    .line 283
    rsub-int/lit8 v16, v16, 0x0

    .line 284
    .line 285
    move/from16 v17, v5

    .line 286
    .line 287
    and-int v5, v13, v16

    .line 288
    .line 289
    move-object/from16 v16, v9

    .line 290
    .line 291
    int-to-long v8, v5

    .line 292
    add-long/2addr v14, v8

    .line 293
    iput-wide v14, v10, Lbf6;->h:J

    .line 294
    .line 295
    const/high16 v5, -0x1000000

    .line 296
    .line 297
    and-int/2addr v5, v13

    .line 298
    if-nez v5, :cond_c

    .line 299
    .line 300
    shl-int/lit8 v5, v13, 0x8

    .line 301
    .line 302
    iput v5, v10, Lbf6;->i:I

    .line 303
    .line 304
    invoke-virtual {v10}, Lbf6;->W()V

    .line 305
    .line 306
    .line 307
    :cond_c
    if-nez v6, :cond_e

    .line 308
    .line 309
    and-int/lit8 v3, v7, 0xf

    .line 310
    .line 311
    iget-object v5, v0, Lgq4;->l:[S

    .line 312
    .line 313
    array-length v6, v5

    .line 314
    or-int/2addr v3, v6

    .line 315
    move v6, v2

    .line 316
    :cond_d
    and-int/lit8 v7, v3, 0x1

    .line 317
    .line 318
    ushr-int/2addr v3, v2

    .line 319
    invoke-virtual {v10, v5, v6, v7}, Lbf6;->R([SII)V

    .line 320
    .line 321
    .line 322
    shl-int/2addr v6, v2

    .line 323
    or-int/2addr v6, v7

    .line 324
    if-ne v3, v2, :cond_d

    .line 325
    .line 326
    iget v3, v0, Lpq4;->t:I

    .line 327
    .line 328
    sub-int/2addr v3, v2

    .line 329
    iput v3, v0, Lpq4;->t:I

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_e
    move-object/from16 v9, v16

    .line 333
    .line 334
    move/from16 v5, v17

    .line 335
    .line 336
    const/4 v8, -0x1

    .line 337
    goto :goto_5

    .line 338
    :goto_6
    aget v3, v16, v11

    .line 339
    .line 340
    aput v3, v16, v12

    .line 341
    .line 342
    aget v3, v16, v2

    .line 343
    .line 344
    aput v3, v16, v11

    .line 345
    .line 346
    aget v3, v16, v17

    .line 347
    .line 348
    aput v3, v16, v2

    .line 349
    .line 350
    aput v4, v16, v17

    .line 351
    .line 352
    iget v3, v0, Lpq4;->s:I

    .line 353
    .line 354
    sub-int/2addr v3, v2

    .line 355
    iput v3, v0, Lpq4;->s:I

    .line 356
    .line 357
    :goto_7
    iget v3, v0, Lpq4;->z:I

    .line 358
    .line 359
    sub-int/2addr v3, v1

    .line 360
    iput v3, v0, Lpq4;->z:I

    .line 361
    .line 362
    iget v3, v0, Lpq4;->A:I

    .line 363
    .line 364
    add-int/2addr v3, v1

    .line 365
    iput v3, v0, Lpq4;->A:I

    .line 366
    .line 367
    return v2

    .line 368
    :cond_f
    move/from16 v17, v5

    .line 369
    .line 370
    return v17
.end method

.method public final g(ILdm7;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lgq4;->d:[[S

    .line 2
    .line 3
    iget v1, p2, Ldm7;->a:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    aget-short v0, v0, p3

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lbf6;->T(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lgq4;->e:[S

    .line 15
    .line 16
    iget v3, p2, Ldm7;->a:I

    .line 17
    .line 18
    aget-short v2, v2, v3

    .line 19
    .line 20
    invoke-static {v2, v1}, Lbf6;->T(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v1, v0, p2, p3}, Lpq4;->h(IILdm7;I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object p0, p0, Lpq4;->q:Lmq4;

    .line 31
    .line 32
    iget-object p0, p0, Lmq4;->f:[[I

    .line 33
    .line 34
    aget-object p0, p0, p3

    .line 35
    .line 36
    add-int/lit8 p1, p1, -0x2

    .line 37
    .line 38
    aget p0, p0, p1

    .line 39
    .line 40
    add-int/2addr p0, p2

    .line 41
    return p0
.end method

.method public final h(IILdm7;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lgq4;->f:[S

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget p2, p3, Ldm7;->a:I

    .line 8
    .line 9
    aget-short p2, v2, p2

    .line 10
    .line 11
    invoke-static {p2, v0}, Lbf6;->T(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object p0, p0, Lgq4;->i:[[S

    .line 16
    .line 17
    iget p3, p3, Ldm7;->a:I

    .line 18
    .line 19
    aget-object p0, p0, p3

    .line 20
    .line 21
    aget-short p0, p0, p4

    .line 22
    .line 23
    invoke-static {p0, v1}, Lbf6;->T(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    add-int/2addr p0, p2

    .line 28
    add-int/2addr p0, p1

    .line 29
    return p0

    .line 30
    :cond_0
    iget p4, p3, Ldm7;->a:I

    .line 31
    .line 32
    aget-short p4, v2, p4

    .line 33
    .line 34
    invoke-static {p4, v1}, Lbf6;->T(II)I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    add-int/2addr p4, p1

    .line 39
    iget-object p1, p0, Lgq4;->g:[S

    .line 40
    .line 41
    if-ne p2, v1, :cond_1

    .line 42
    .line 43
    iget p0, p3, Ldm7;->a:I

    .line 44
    .line 45
    aget-short p0, p1, p0

    .line 46
    .line 47
    invoke-static {p0, v0}, Lbf6;->T(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/2addr p0, p4

    .line 52
    return p0

    .line 53
    :cond_1
    iget v0, p3, Ldm7;->a:I

    .line 54
    .line 55
    aget-short p1, p1, v0

    .line 56
    .line 57
    invoke-static {p1, v1}, Lbf6;->T(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object p0, p0, Lgq4;->h:[S

    .line 62
    .line 63
    iget p3, p3, Ldm7;->a:I

    .line 64
    .line 65
    aget-short p0, p0, p3

    .line 66
    .line 67
    add-int/lit8 p2, p2, -0x2

    .line 68
    .line 69
    invoke-static {p0, p2}, Lbf6;->T(II)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    add-int/2addr p0, p1

    .line 74
    add-int/2addr p0, p4

    .line 75
    return p0
.end method

.method public final i(IIII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lpq4;->p:Lmq4;

    .line 2
    .line 3
    iget-object v0, v0, Lmq4;->f:[[I

    .line 4
    .line 5
    aget-object p4, v0, p4

    .line 6
    .line 7
    add-int/lit8 v0, p3, -0x2

    .line 8
    .line 9
    aget p4, p4, v0

    .line 10
    .line 11
    add-int/2addr p4, p1

    .line 12
    const/4 p1, 0x6

    .line 13
    if-ge p3, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    :goto_0
    const/16 p1, 0x80

    .line 18
    .line 19
    if-ge p2, p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lpq4;->w:[[I

    .line 22
    .line 23
    aget-object p0, p0, v0

    .line 24
    .line 25
    aget p0, p0, p2

    .line 26
    .line 27
    add-int/2addr p4, p0

    .line 28
    return p4

    .line 29
    :cond_1
    invoke-static {p2}, Lpq4;->e(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object p3, p0, Lpq4;->v:[[I

    .line 34
    .line 35
    aget-object p3, p3, v0

    .line 36
    .line 37
    aget p1, p3, p1

    .line 38
    .line 39
    and-int/lit8 p2, p2, 0xf

    .line 40
    .line 41
    iget-object p0, p0, Lpq4;->x:[I

    .line 42
    .line 43
    aget p0, p0, p2

    .line 44
    .line 45
    add-int/2addr p1, p0

    .line 46
    add-int/2addr p1, p4

    .line 47
    return p1
.end method

.method public final j()Lnn1;
    .locals 1

    .line 1
    iget v0, p0, Lpq4;->z:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lpq4;->z:I

    .line 6
    .line 7
    iget-object p0, p0, Lpq4;->n:Laq4;

    .line 8
    .line 9
    invoke-virtual {p0}, Laq4;->d()Lnn1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public abstract k()I
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget v0, p0, Lpq4;->z:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lpq4;->z:I

    .line 5
    .line 6
    iget-object p0, p0, Lpq4;->n:Laq4;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Laq4;->i(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
