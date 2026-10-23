.class public final Lwj0;
.super Lpp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final e:Ldz0;

.field public f:I

.field public k:I

.field public n:I

.field public p:I

.field public q:I

.field public final r:I

.field public t:Lvj0;

.field public x:Lft0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lpp1;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ldz0;

    .line 5
    .line 6
    invoke-direct {p1}, Ldz0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lwj0;->e:Ldz0;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lwj0;->n:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "blockSize("

    .line 17
    .line 18
    if-lt p2, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    if-gt p2, v1, :cond_1

    .line 23
    .line 24
    const v1, 0x186a0

    .line 25
    .line 26
    .line 27
    mul-int/2addr v1, p2

    .line 28
    add-int/lit8 v1, v1, -0x14

    .line 29
    .line 30
    iput v1, p0, Lwj0;->r:I

    .line 31
    .line 32
    const/16 v1, 0x42

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lwj0;->b(I)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x5a

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lwj0;->b(I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lvj0;

    .line 43
    .line 44
    invoke-direct {v1, p2}, Lvj0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lwj0;->t:Lvj0;

    .line 48
    .line 49
    new-instance v1, Lft0;

    .line 50
    .line 51
    iget-object v2, p0, Lwj0;->t:Lvj0;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lft0;-><init>(Lvj0;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lwj0;->x:Lft0;

    .line 57
    .line 58
    const/16 v1, 0x68

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lwj0;->b(I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 p2, p2, 0x30

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Lwj0;->b(I)V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lwj0;->q:I

    .line 70
    .line 71
    iput v0, p1, Ldz0;->a:I

    .line 72
    .line 73
    iput v0, p0, Lwj0;->b:I

    .line 74
    .line 75
    iget-object p0, p0, Lwj0;->t:Lvj0;

    .line 76
    .line 77
    iget-object p0, p0, Lvj0;->a:[Z

    .line 78
    .line 79
    const/16 p1, 0x100

    .line 80
    .line 81
    :goto_0
    add-int/2addr p1, v0

    .line 82
    if-ltz p1, :cond_0

    .line 83
    .line 84
    aput-boolean p2, p0, p1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return-void

    .line 88
    :cond_1
    const-string p0, ") > 9"

    .line 89
    .line 90
    invoke-static {p2, v3, p0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v2

    .line 98
    :cond_2
    const-string p0, ") < 1"

    .line 99
    .line 100
    invoke-static {p2, v3, p0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v2
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lwj0;->g(II)V

    .line 8
    .line 9
    .line 10
    shr-int/lit8 v0, p1, 0x10

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lwj0;->g(II)V

    .line 15
    .line 16
    .line 17
    shr-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lwj0;->g(II)V

    .line 22
    .line 23
    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lwj0;->g(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lwj0;->g(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpp1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_1
    iget v1, p0, Lwj0;->p:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lwj0;->n()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lwj0;->n:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lwj0;->h()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lwj0;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    iput-object v0, p0, Lwj0;->x:Lft0;

    .line 36
    .line 37
    iput-object v0, p0, Lwj0;->t:Lvj0;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    iput-object v0, p0, Lwj0;->x:Lft0;

    .line 41
    .line 42
    iput-object v0, p0, Lwj0;->t:Lvj0;

    .line 43
    .line 44
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :cond_1
    :goto_2
    invoke-super {p0}, Lpp1;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    invoke-super {p0}, Lpp1;->close()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final g(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget v1, p0, Lwj0;->d:I

    .line 4
    .line 5
    iget v2, p0, Lwj0;->c:I

    .line 6
    .line 7
    :goto_0
    const/16 v3, 0x8

    .line 8
    .line 9
    if-lt v1, v3, :cond_0

    .line 10
    .line 11
    shr-int/lit8 v3, v2, 0x18

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 14
    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x8

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x8

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    rsub-int/lit8 v0, v1, 0x20

    .line 22
    .line 23
    sub-int/2addr v0, p1

    .line 24
    shl-int/2addr p2, v0

    .line 25
    or-int/2addr p2, v2

    .line 26
    iput p2, p0, Lwj0;->c:I

    .line 27
    .line 28
    add-int/2addr v1, p1

    .line 29
    iput v1, p0, Lwj0;->d:I

    .line 30
    .line 31
    return-void
.end method

.method public final h()V
    .locals 62

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lwj0;->e:Ldz0;

    .line 2
    iget v1, v1, Ldz0;->a:I

    not-int v1, v1

    .line 3
    iget v2, v0, Lwj0;->q:I

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    xor-int/2addr v2, v1

    .line 4
    iput v2, v0, Lwj0;->q:I

    .line 5
    iget v2, v0, Lwj0;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v4, v0, Lwj0;->x:Lft0;

    iget-object v5, v0, Lwj0;->t:Lvj0;

    mul-int/lit8 v6, v2, 0x1e

    .line 7
    iput v6, v4, Lft0;->b:I

    const/4 v7, 0x0

    .line 8
    iput v7, v4, Lft0;->a:I

    const/4 v8, 0x1

    .line 9
    iput-boolean v8, v4, Lft0;->c:Z

    add-int/lit8 v9, v2, 0x1

    const/16 v10, 0x2710

    const/16 v14, 0x14

    const/16 v16, 0x8

    if-ge v9, v10, :cond_1

    .line 10
    invoke-virtual {v4, v5, v2}, Lft0;->a(Lvj0;I)V

    move/from16 v19, v3

    move/from16 v23, v7

    const/16 v17, 0x3

    goto/16 :goto_2e

    .line 11
    :cond_1
    iget-object v10, v4, Lft0;->g:[I

    const/16 v17, 0x3

    .line 12
    iget-object v12, v4, Lft0;->h:[I

    .line 13
    iget-object v15, v4, Lft0;->i:[Z

    move/from16 v19, v3

    .line 14
    iget-object v3, v4, Lft0;->j:[I

    const/16 v20, 0x2

    .line 15
    iget-object v13, v5, Lvj0;->q:[B

    move/from16 v21, v8

    .line 16
    iget-object v8, v5, Lvj0;->r:[I

    .line 17
    iget-object v11, v4, Lft0;->k:[C

    .line 18
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([II)V

    move/from16 v23, v7

    :goto_0
    if-ge v7, v14, :cond_2

    add-int v24, v2, v7

    add-int/lit8 v24, v24, 0x2

    .line 19
    rem-int v25, v7, v9

    add-int/lit8 v25, v25, 0x1

    aget-byte v25, v13, v25

    aput-byte v25, v13, v24

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v2, 0x15

    :goto_1
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3

    .line 20
    aput-char v23, v11, v7

    goto :goto_1

    .line 21
    :cond_3
    aget-byte v7, v13, v9

    aput-byte v7, v13, v23

    const/16 v14, 0xff

    and-int/2addr v7, v14

    move/from16 v14, v23

    :goto_2
    if-gt v14, v2, :cond_4

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v25, v3

    .line 22
    aget-byte v3, v13, v14

    move/from16 v26, v7

    const/16 v7, 0xff

    and-int/2addr v3, v7

    shl-int/lit8 v7, v26, 0x8

    add-int/2addr v7, v3

    .line 23
    aget v26, v25, v7

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v7

    move v7, v3

    move-object/from16 v3, v25

    goto :goto_2

    :cond_4
    move-object/from16 v25, v3

    move/from16 v3, v21

    :goto_3
    const/high16 v7, 0x10000

    if-gt v3, v7, :cond_5

    .line 24
    aget v7, v25, v3

    add-int/lit8 v14, v3, -0x1

    aget v14, v25, v14

    add-int/2addr v7, v14

    aput v7, v25, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 25
    :cond_5
    aget-byte v3, v13, v21

    const/16 v7, 0xff

    and-int/2addr v3, v7

    move/from16 v14, v23

    :goto_4
    if-ge v14, v2, :cond_6

    add-int/lit8 v22, v14, 0x2

    move/from16 v26, v3

    .line 26
    aget-byte v3, v13, v22

    and-int/2addr v3, v7

    shl-int/lit8 v22, v26, 0x8

    add-int v22, v22, v3

    .line 27
    aget v26, v25, v22

    add-int/lit8 v26, v26, -0x1

    aput v26, v25, v22

    aput v14, v8, v26

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 28
    :cond_6
    aget-byte v3, v13, v9

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    aget-byte v14, v13, v21

    and-int/2addr v14, v7

    add-int/2addr v3, v14

    aget v7, v25, v3

    add-int/lit8 v7, v7, -0x1

    aput v7, v25, v3

    aput v2, v8, v7

    const/16 v3, 0x100

    :goto_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 29
    aput-boolean v23, v15, v3

    .line 30
    aput v3, v10, v3

    goto :goto_5

    :cond_7
    const/16 v3, 0x16c

    move/from16 v7, v21

    :goto_6
    if-eq v3, v7, :cond_b

    .line 31
    div-int/lit8 v3, v3, 0x3

    move v7, v3

    :goto_7
    const/16 v14, 0xff

    if-gt v7, v14, :cond_a

    .line 32
    aget v14, v10, v7

    add-int/lit8 v26, v14, 0x1

    shl-int/lit8 v26, v26, 0x8

    .line 33
    aget v26, v25, v26

    shl-int/lit8 v27, v14, 0x8

    aget v27, v25, v27

    move/from16 v28, v3

    sub-int v3, v26, v27

    move/from16 v26, v7

    add-int/lit8 v7, v28, -0x1

    sub-int v27, v26, v28

    .line 34
    aget v27, v10, v27

    move/from16 v29, v26

    :goto_8
    add-int/lit8 v30, v27, 0x1

    shl-int/lit8 v30, v30, 0x8

    aget v30, v25, v30

    shl-int/lit8 v31, v27, 0x8

    aget v31, v25, v31

    move-object/from16 v32, v8

    sub-int v8, v30, v31

    if-le v8, v3, :cond_9

    .line 35
    aput v27, v10, v29

    sub-int v8, v29, v28

    if-gt v8, v7, :cond_8

    move/from16 v29, v8

    goto :goto_9

    :cond_8
    sub-int v27, v8, v28

    .line 36
    aget v27, v10, v27

    move/from16 v29, v8

    move-object/from16 v8, v32

    goto :goto_8

    .line 37
    :cond_9
    :goto_9
    aput v14, v10, v29

    add-int/lit8 v7, v26, 0x1

    move/from16 v3, v28

    move-object/from16 v8, v32

    goto :goto_7

    :cond_a
    move/from16 v28, v3

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v32, v8

    move/from16 v3, v23

    :goto_a
    const/16 v7, 0xff

    if-gt v3, v7, :cond_45

    .line 38
    aget v8, v10, v3

    move/from16 v26, v8

    move/from16 v14, v23

    :goto_b
    const/high16 v8, 0x200000

    const v27, -0x200001

    if-gt v14, v7, :cond_3c

    shl-int/lit8 v7, v26, 0x8

    add-int/2addr v7, v14

    .line 39
    aget v28, v25, v7

    move/from16 v29, v7

    and-int v7, v28, v8

    if-eq v7, v8, :cond_3b

    and-int v7, v28, v27

    add-int/lit8 v30, v29, 0x1

    .line 40
    aget v30, v25, v30

    and-int v27, v30, v27

    move/from16 v30, v8

    const/16 v21, 0x1

    add-int/lit8 v8, v27, -0x1

    if-le v8, v7, :cond_39

    move/from16 v31, v7

    .line 41
    iget-object v7, v4, Lft0;->d:[I

    move-object/from16 v27, v7

    .line 42
    iget-object v7, v4, Lft0;->e:[I

    move-object/from16 v33, v7

    .line 43
    iget-object v7, v4, Lft0;->f:[I

    move-object/from16 v34, v7

    .line 44
    iget-object v7, v5, Lvj0;->q:[B

    .line 45
    aput v31, v27, v23

    .line 46
    aput v8, v33, v23

    .line 47
    aput v20, v34, v23

    const/4 v8, 0x1

    :goto_c
    add-int/lit8 v31, v8, -0x1

    if-ltz v31, :cond_38

    .line 48
    aget v35, v27, v31

    move-object/from16 v36, v7

    .line 49
    aget v7, v33, v31

    move/from16 v37, v8

    .line 50
    aget v8, v34, v31

    move-object/from16 v38, v10

    sub-int v10, v7, v35

    move-object/from16 v39, v11

    const/16 v11, 0x14

    if-lt v10, v11, :cond_c

    const/16 v11, 0xa

    if-le v8, v11, :cond_d

    :cond_c
    move/from16 v40, v8

    move-object/from16 v42, v12

    move-object/from16 v46, v13

    move/from16 v44, v14

    goto/16 :goto_17

    :cond_d
    add-int/lit8 v11, v8, 0x1

    .line 51
    aget v10, v32, v35

    add-int/2addr v10, v11

    aget-byte v10, v36, v10

    move/from16 v40, v8

    const/16 v8, 0xff

    and-int/2addr v10, v8

    aget v22, v32, v7

    add-int v22, v22, v11

    move/from16 v41, v11

    aget-byte v11, v36, v22

    and-int/2addr v11, v8

    add-int v22, v35, v7

    const/16 v21, 0x1

    ushr-int/lit8 v22, v22, 0x1

    aget v22, v32, v22

    add-int v22, v22, v41

    move-object/from16 v42, v12

    aget-byte v12, v36, v22

    and-int/2addr v12, v8

    if-ge v10, v11, :cond_f

    if-ge v11, v12, :cond_e

    goto :goto_e

    :cond_e
    if-ge v10, v12, :cond_11

    goto :goto_d

    :cond_f
    if-le v11, v12, :cond_10

    goto :goto_e

    :cond_10
    if-le v10, v12, :cond_11

    :goto_d
    move v11, v12

    goto :goto_e

    :cond_11
    move v11, v10

    :goto_e
    move v10, v7

    move/from16 v43, v10

    move/from16 v8, v35

    move v12, v8

    :goto_f
    if-gt v8, v10, :cond_13

    .line 52
    aget v44, v32, v8

    add-int v45, v44, v41

    move/from16 v46, v10

    aget-byte v10, v36, v45

    move/from16 v45, v11

    const/16 v11, 0xff

    and-int/2addr v10, v11

    sub-int v10, v10, v45

    if-nez v10, :cond_12

    add-int/lit8 v10, v8, 0x1

    .line 53
    aget v11, v32, v12

    aput v11, v32, v8

    add-int/lit8 v8, v12, 0x1

    .line 54
    aput v44, v32, v12

    move v12, v8

    move v8, v10

    goto :goto_10

    :cond_12
    if-gez v10, :cond_14

    add-int/lit8 v8, v8, 0x1

    :goto_10
    move/from16 v11, v45

    move/from16 v10, v46

    goto :goto_f

    :cond_13
    move/from16 v46, v10

    move/from16 v45, v11

    :cond_14
    move/from16 v11, v43

    move/from16 v10, v46

    :goto_11
    if-gt v8, v10, :cond_16

    .line 55
    aget v43, v32, v10

    add-int v44, v43, v41

    move-object/from16 v46, v13

    aget-byte v13, v36, v44

    move/from16 v44, v14

    const/16 v14, 0xff

    and-int/2addr v13, v14

    sub-int v13, v13, v45

    if-nez v13, :cond_15

    add-int/lit8 v13, v10, -0x1

    .line 56
    aget v14, v32, v11

    aput v14, v32, v10

    add-int/lit8 v10, v11, -0x1

    .line 57
    aput v43, v32, v11

    move v11, v10

    move v10, v13

    goto :goto_12

    :cond_15
    if-lez v13, :cond_17

    add-int/lit8 v10, v10, -0x1

    :goto_12
    move/from16 v14, v44

    move-object/from16 v13, v46

    goto :goto_11

    :cond_16
    move-object/from16 v46, v13

    move/from16 v44, v14

    :cond_17
    if-le v8, v10, :cond_1c

    if-ge v11, v12, :cond_18

    .line 58
    aput v35, v27, v31

    .line 59
    aput v7, v33, v31

    .line 60
    aput v41, v34, v31

    :goto_13
    const/16 v21, 0x1

    goto :goto_16

    :cond_18
    sub-int v13, v12, v35

    sub-int v14, v8, v12

    .line 61
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v14, v8, v13

    add-int v13, v13, v35

    move/from16 v43, v8

    move/from16 v8, v35

    :goto_14
    if-ge v8, v13, :cond_19

    .line 62
    aget v45, v32, v8

    add-int/lit8 v47, v8, 0x1

    .line 63
    aget v48, v32, v14

    aput v48, v32, v8

    add-int/lit8 v8, v14, 0x1

    .line 64
    aput v45, v32, v14

    move v14, v8

    move/from16 v8, v47

    goto :goto_14

    :cond_19
    sub-int v8, v7, v11

    sub-int/2addr v11, v10

    .line 65
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v10, v7, v8

    const/16 v21, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int v8, v8, v43

    move/from16 v13, v43

    :goto_15
    if-ge v13, v8, :cond_1a

    .line 66
    aget v14, v32, v13

    add-int/lit8 v45, v13, 0x1

    .line 67
    aget v47, v32, v10

    aput v47, v32, v13

    add-int/lit8 v13, v10, 0x1

    .line 68
    aput v14, v32, v10

    move v10, v13

    move/from16 v13, v45

    goto :goto_15

    :cond_1a
    add-int v8, v35, v43

    sub-int/2addr v8, v12

    add-int/lit8 v10, v8, -0x1

    sub-int v11, v7, v11

    add-int/lit8 v12, v11, 0x1

    .line 69
    aput v35, v27, v31

    .line 70
    aput v10, v33, v31

    .line 71
    aput v40, v34, v31

    .line 72
    aput v8, v27, v37

    .line 73
    aput v11, v33, v37

    .line 74
    aput v41, v34, v37

    add-int/lit8 v31, v37, 0x1

    .line 75
    aput v12, v27, v31

    .line 76
    aput v7, v33, v31

    .line 77
    aput v40, v34, v31

    goto :goto_13

    :goto_16
    add-int/lit8 v31, v31, 0x1

    :cond_1b
    move/from16 v8, v31

    goto/16 :goto_24

    :cond_1c
    move/from16 v43, v8

    .line 78
    aget v8, v32, v43

    add-int/lit8 v13, v43, 0x1

    .line 79
    aget v14, v32, v10

    aput v14, v32, v43

    add-int/lit8 v14, v10, -0x1

    .line 80
    aput v8, v32, v10

    move/from16 v43, v11

    move v8, v13

    move v10, v14

    move/from16 v14, v44

    move/from16 v11, v45

    move-object/from16 v13, v46

    goto/16 :goto_f

    .line 81
    :goto_17
    sget-object v8, Lft0;->n:[I

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v20

    if-ge v10, v11, :cond_1d

    .line 82
    iget-boolean v7, v4, Lft0;->c:Z

    if-eqz v7, :cond_1b

    iget v7, v4, Lft0;->a:I

    iget v8, v4, Lft0;->b:I

    if-le v7, v8, :cond_1b

    goto/16 :goto_25

    :cond_1d
    move/from16 v11, v23

    .line 83
    :goto_18
    aget v12, v8, v11

    if-ge v12, v10, :cond_1e

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 84
    :cond_1e
    iget-boolean v10, v4, Lft0;->c:Z

    .line 85
    iget v12, v4, Lft0;->b:I

    .line 86
    iget v13, v4, Lft0;->a:I

    :goto_19
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_37

    .line 87
    aget v14, v8, v11

    add-int v37, v35, v14

    move-object/from16 v41, v8

    add-int/lit8 v8, v37, -0x1

    move/from16 v61, v37

    move/from16 v37, v10

    move/from16 v10, v61

    :goto_1a
    if-gt v10, v7, :cond_36

    move/from16 v43, v17

    :goto_1b
    if-gt v10, v7, :cond_34

    add-int/lit8 v43, v43, -0x1

    if-ltz v43, :cond_34

    .line 88
    aget v45, v32, v10

    add-int v47, v45, v40

    move/from16 v50, v10

    move/from16 v48, v23

    move/from16 v49, v48

    :goto_1c
    if-eqz v48, :cond_20

    .line 89
    aput v49, v32, v50

    move/from16 v49, v11

    sub-int v11, v50, v14

    if-gt v11, v8, :cond_1f

    move/from16 v53, v8

    move/from16 v57, v14

    goto/16 :goto_22

    :cond_1f
    move/from16 v50, v11

    goto :goto_1d

    :cond_20
    move/from16 v49, v11

    const/16 v48, 0x1

    :goto_1d
    sub-int v11, v50, v14

    .line 90
    aget v11, v32, v11

    add-int v51, v11, v40

    add-int/lit8 v52, v51, 0x1

    move/from16 v53, v8

    .line 91
    aget-byte v8, v36, v52

    add-int/lit8 v52, v47, 0x1

    move/from16 v54, v11

    aget-byte v11, v36, v52

    if-ne v8, v11, :cond_32

    add-int/lit8 v8, v51, 0x2

    .line 92
    aget-byte v8, v36, v8

    add-int/lit8 v11, v47, 0x2

    aget-byte v11, v36, v11

    if-ne v8, v11, :cond_31

    add-int/lit8 v8, v51, 0x3

    .line 93
    aget-byte v8, v36, v8

    add-int/lit8 v11, v47, 0x3

    aget-byte v11, v36, v11

    if-ne v8, v11, :cond_30

    add-int/lit8 v8, v51, 0x4

    .line 94
    aget-byte v8, v36, v8

    add-int/lit8 v11, v47, 0x4

    aget-byte v11, v36, v11

    if-ne v8, v11, :cond_2f

    add-int/lit8 v8, v51, 0x5

    .line 95
    aget-byte v8, v36, v8

    add-int/lit8 v11, v47, 0x5

    aget-byte v11, v36, v11

    if-ne v8, v11, :cond_2e

    add-int/lit8 v51, v51, 0x6

    .line 96
    aget-byte v8, v36, v51

    add-int/lit8 v11, v47, 0x6

    move/from16 v52, v11

    aget-byte v11, v36, v52

    if-ne v8, v11, :cond_2d

    move v8, v2

    move/from16 v11, v52

    :goto_1e
    if-lez v8, :cond_2b

    add-int/lit8 v8, v8, -0x4

    add-int/lit8 v52, v51, 0x1

    move/from16 v55, v8

    .line 97
    aget-byte v8, v36, v52

    add-int/lit8 v56, v11, 0x1

    move/from16 v57, v11

    aget-byte v11, v36, v56

    if-ne v8, v11, :cond_2a

    .line 98
    aget-char v8, v39, v51

    aget-char v11, v39, v57

    if-ne v8, v11, :cond_29

    add-int/lit8 v8, v51, 0x2

    .line 99
    aget-byte v11, v36, v8

    add-int/lit8 v58, v57, 0x2

    move/from16 v59, v8

    aget-byte v8, v36, v58

    if-ne v11, v8, :cond_28

    .line 100
    aget-char v8, v39, v52

    aget-char v11, v39, v56

    if-ne v8, v11, :cond_27

    add-int/lit8 v8, v51, 0x3

    .line 101
    aget-byte v11, v36, v8

    add-int/lit8 v52, v57, 0x3

    move/from16 v56, v8

    aget-byte v8, v36, v52

    if-ne v11, v8, :cond_26

    .line 102
    aget-char v8, v39, v59

    aget-char v11, v39, v58

    if-ne v8, v11, :cond_25

    add-int/lit8 v8, v51, 0x4

    .line 103
    aget-byte v11, v36, v8

    move/from16 v51, v13

    add-int/lit8 v13, v57, 0x4

    move/from16 v57, v14

    aget-byte v14, v36, v13

    if-ne v11, v14, :cond_24

    .line 104
    aget-char v11, v39, v56

    aget-char v14, v39, v52

    if-ne v11, v14, :cond_23

    if-lt v8, v9, :cond_21

    sub-int/2addr v8, v9

    :cond_21
    if-lt v13, v9, :cond_22

    sub-int/2addr v13, v9

    :cond_22
    move v11, v13

    add-int/lit8 v13, v51, 0x1

    move/from16 v51, v8

    move/from16 v8, v55

    move/from16 v14, v57

    goto :goto_1e

    :cond_23
    if-le v11, v14, :cond_2c

    goto :goto_1f

    :cond_24
    and-int/lit16 v8, v11, 0xff

    and-int/lit16 v11, v14, 0xff

    if-le v8, v11, :cond_2c

    goto :goto_1f

    :cond_25
    move/from16 v51, v13

    move/from16 v57, v14

    if-le v8, v11, :cond_2c

    goto :goto_1f

    :cond_26
    move/from16 v51, v13

    move/from16 v57, v14

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v8, v8, 0xff

    if-le v11, v8, :cond_2c

    goto :goto_1f

    :cond_27
    move/from16 v51, v13

    move/from16 v57, v14

    if-le v8, v11, :cond_2c

    goto :goto_1f

    :cond_28
    move/from16 v51, v13

    move/from16 v57, v14

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v8, v8, 0xff

    if-le v11, v8, :cond_2c

    goto :goto_1f

    :cond_29
    move/from16 v51, v13

    move/from16 v57, v14

    if-le v8, v11, :cond_2c

    goto :goto_1f

    :cond_2a
    move/from16 v51, v13

    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_2c

    :goto_1f
    move/from16 v11, v49

    move/from16 v13, v51

    :goto_20
    move/from16 v8, v53

    move/from16 v49, v54

    move/from16 v14, v57

    goto/16 :goto_1c

    :cond_2b
    move/from16 v51, v13

    move/from16 v57, v14

    :cond_2c
    move/from16 v11, v50

    move/from16 v13, v51

    goto :goto_22

    :cond_2d
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    goto :goto_21

    :cond_2e
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    goto :goto_21

    :cond_2f
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    goto :goto_21

    :cond_30
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    goto :goto_21

    :cond_31
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    goto :goto_21

    :cond_32
    move/from16 v57, v14

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v11, 0xff

    if-le v8, v11, :cond_33

    :goto_21
    move/from16 v11, v49

    goto :goto_20

    :cond_33
    move/from16 v11, v50

    .line 105
    :goto_22
    aput v45, v32, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v49

    move/from16 v8, v53

    move/from16 v14, v57

    goto/16 :goto_1b

    :cond_34
    move/from16 v53, v8

    move/from16 v49, v11

    move/from16 v57, v14

    if-eqz v37, :cond_35

    if-gt v10, v7, :cond_35

    if-le v13, v12, :cond_35

    goto :goto_23

    :cond_35
    move/from16 v11, v49

    move/from16 v8, v53

    move/from16 v14, v57

    goto/16 :goto_1a

    :cond_36
    move/from16 v49, v11

    move/from16 v10, v37

    move-object/from16 v8, v41

    goto/16 :goto_19

    :cond_37
    move/from16 v37, v10

    .line 106
    :goto_23
    iput v13, v4, Lft0;->a:I

    if-eqz v37, :cond_1b

    if-le v13, v12, :cond_1b

    goto :goto_25

    :goto_24
    move-object/from16 v7, v36

    move-object/from16 v10, v38

    move-object/from16 v11, v39

    move-object/from16 v12, v42

    move/from16 v14, v44

    move-object/from16 v13, v46

    const/16 v20, 0x2

    goto/16 :goto_c

    :cond_38
    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v42, v12

    move-object/from16 v46, v13

    move/from16 v44, v14

    .line 107
    :goto_25
    iget v7, v4, Lft0;->a:I

    if-le v7, v6, :cond_3a

    goto/16 :goto_2d

    :cond_39
    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v42, v12

    move-object/from16 v46, v13

    move/from16 v44, v14

    :cond_3a
    or-int v7, v28, v30

    .line 108
    aput v7, v25, v29

    goto :goto_26

    :cond_3b
    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v42, v12

    move-object/from16 v46, v13

    move/from16 v44, v14

    :goto_26
    add-int/lit8 v14, v44, 0x1

    move-object/from16 v10, v38

    move-object/from16 v11, v39

    move-object/from16 v12, v42

    move-object/from16 v13, v46

    const/16 v7, 0xff

    const/16 v20, 0x2

    goto/16 :goto_b

    :cond_3c
    move/from16 v30, v8

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v42, v12

    move-object/from16 v46, v13

    move v14, v7

    move/from16 v7, v23

    :goto_27
    if-gt v7, v14, :cond_3d

    shl-int/lit8 v8, v7, 0x8

    add-int v8, v8, v26

    .line 109
    aget v8, v25, v8

    and-int v8, v8, v27

    aput v8, v42, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0xff

    goto :goto_27

    :cond_3d
    shl-int/lit8 v7, v26, 0x8

    .line 110
    aget v8, v25, v7

    and-int v8, v8, v27

    add-int/lit8 v10, v26, 0x1

    shl-int/lit8 v10, v10, 0x8

    aget v11, v25, v10

    and-int v11, v11, v27

    :goto_28
    if-ge v8, v11, :cond_40

    .line 111
    aget v12, v32, v8

    .line 112
    aget-byte v13, v46, v12

    const/16 v14, 0xff

    and-int/2addr v13, v14

    .line 113
    aget-boolean v14, v15, v13

    if-nez v14, :cond_3f

    .line 114
    aget v14, v42, v13

    if-nez v12, :cond_3e

    move v12, v2

    goto :goto_29

    :cond_3e
    add-int/lit8 v12, v12, -0x1

    :goto_29
    aput v12, v32, v14

    .line 115
    aget v12, v42, v13

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v42, v13

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_40
    const/16 v8, 0x100

    :goto_2a
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_41

    shl-int/lit8 v11, v8, 0x8

    add-int v11, v11, v26

    .line 116
    aget v12, v25, v11

    or-int v12, v12, v30

    aput v12, v25, v11

    goto :goto_2a

    :cond_41
    const/16 v21, 0x1

    .line 117
    aput-boolean v21, v15, v26

    const/16 v14, 0xff

    if-ge v3, v14, :cond_44

    .line 118
    aget v7, v25, v7

    and-int v7, v7, v27

    .line 119
    aget v8, v25, v10

    and-int v8, v8, v27

    sub-int/2addr v8, v7

    move/from16 v10, v23

    :goto_2b
    shr-int v11, v8, v10

    const v12, 0xfffe

    if-le v11, v12, :cond_42

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :cond_42
    move/from16 v11, v23

    :goto_2c
    if-ge v11, v8, :cond_44

    add-int v12, v7, v11

    .line 120
    aget v12, v32, v12

    shr-int v13, v11, v10

    int-to-char v13, v13

    .line 121
    aput-char v13, v39, v12

    const/16 v14, 0x14

    if-ge v12, v14, :cond_43

    add-int/2addr v12, v2

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 122
    aput-char v13, v39, v12

    :cond_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    :cond_44
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v38

    move-object/from16 v11, v39

    move-object/from16 v12, v42

    move-object/from16 v13, v46

    const/16 v20, 0x2

    goto/16 :goto_a

    .line 123
    :cond_45
    :goto_2d
    iget-boolean v3, v4, Lft0;->c:Z

    if-eqz v3, :cond_46

    iget v3, v4, Lft0;->a:I

    iget v6, v4, Lft0;->b:I

    if-le v3, v6, :cond_46

    .line 124
    invoke-virtual {v4, v5, v2}, Lft0;->a(Lvj0;I)V

    .line 125
    :cond_46
    :goto_2e
    iget-object v3, v5, Lvj0;->r:[I

    move/from16 v4, v19

    .line 126
    iput v4, v5, Lvj0;->t:I

    move/from16 v4, v23

    :goto_2f
    if-gt v4, v2, :cond_48

    .line 127
    aget v6, v3, v4

    if-nez v6, :cond_47

    .line 128
    iput v4, v5, Lvj0;->t:I

    goto :goto_30

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_48
    :goto_30
    const/16 v2, 0x31

    .line 129
    invoke-virtual {v0, v2}, Lwj0;->b(I)V

    const/16 v2, 0x41

    .line 130
    invoke-virtual {v0, v2}, Lwj0;->b(I)V

    const/16 v2, 0x59

    .line 131
    invoke-virtual {v0, v2}, Lwj0;->b(I)V

    const/16 v3, 0x26

    .line 132
    invoke-virtual {v0, v3}, Lwj0;->b(I)V

    const/16 v3, 0x53

    .line 133
    invoke-virtual {v0, v3}, Lwj0;->b(I)V

    .line 134
    invoke-virtual {v0, v2}, Lwj0;->b(I)V

    .line 135
    invoke-virtual {v0, v1}, Lwj0;->a(I)V

    move/from16 v1, v23

    const/4 v7, 0x1

    .line 136
    invoke-virtual {v0, v7, v1}, Lwj0;->g(II)V

    .line 137
    iget-object v1, v0, Lwj0;->t:Lvj0;

    iget v1, v1, Lvj0;->t:I

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lwj0;->g(II)V

    .line 138
    iget v1, v0, Lwj0;->b:I

    .line 139
    iget-object v2, v0, Lwj0;->t:Lvj0;

    .line 140
    iget-object v3, v2, Lvj0;->a:[Z

    .line 141
    iget-object v4, v2, Lvj0;->q:[B

    .line 142
    iget-object v5, v2, Lvj0;->r:[I

    .line 143
    iget-object v6, v2, Lvj0;->s:[C

    .line 144
    iget-object v7, v2, Lvj0;->c:[I

    .line 145
    iget-object v8, v2, Lvj0;->b:[B

    .line 146
    iget-object v2, v2, Lvj0;->f:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    :goto_31
    if-ge v9, v11, :cond_4a

    .line 147
    aget-boolean v12, v3, v9

    if-eqz v12, :cond_49

    int-to-byte v12, v10

    .line 148
    aput-byte v12, v8, v9

    add-int/lit8 v10, v10, 0x1

    :cond_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 149
    :cond_4a
    iput v10, v0, Lwj0;->f:I

    add-int/lit8 v3, v10, 0x1

    add-int/lit8 v9, v10, 0x2

    const/4 v11, 0x0

    .line 150
    invoke-static {v7, v11, v9, v11}, Ljava/util/Arrays;->fill([IIII)V

    :goto_32
    const/16 v19, -0x1

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4b

    int-to-byte v9, v10

    .line 151
    aput-byte v9, v2, v10

    goto :goto_32

    :cond_4b
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_33
    if-gt v9, v1, :cond_51

    .line 152
    aget v12, v5, v9

    aget-byte v12, v4, v12

    const/16 v14, 0xff

    and-int/2addr v12, v14

    aget-byte v12, v8, v12

    const/16 v23, 0x0

    .line 153
    aget-byte v13, v2, v23

    move/from16 v14, v23

    :goto_34
    if-eq v12, v13, :cond_4c

    add-int/lit8 v14, v14, 0x1

    .line 154
    aget-byte v15, v2, v14

    .line 155
    aput-byte v13, v2, v14

    move v13, v15

    goto :goto_34

    .line 156
    :cond_4c
    aput-byte v13, v2, v23

    if-nez v14, :cond_4d

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    :cond_4d
    if-lez v10, :cond_50

    add-int/lit8 v10, v10, -0x1

    :goto_35
    and-int/lit8 v12, v10, 0x1

    if-nez v12, :cond_4e

    const/16 v23, 0x0

    .line 157
    aput-char v23, v6, v11

    add-int/lit8 v11, v11, 0x1

    .line 158
    aget v12, v7, v23

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v7, v23

    :goto_36
    const/4 v12, 0x2

    goto :goto_37

    :cond_4e
    const/16 v21, 0x1

    .line 159
    aput-char v21, v6, v11

    add-int/lit8 v11, v11, 0x1

    .line 160
    aget v12, v7, v21

    add-int/lit8 v12, v12, 0x1

    aput v12, v7, v21

    goto :goto_36

    :goto_37
    if-ge v10, v12, :cond_4f

    const/4 v10, 0x0

    goto :goto_38

    :cond_4f
    add-int/lit8 v10, v10, -0x2

    shr-int/lit8 v10, v10, 0x1

    goto :goto_35

    :cond_50
    const/16 v21, 0x1

    :goto_38
    add-int/lit8 v14, v14, 0x1

    int-to-char v12, v14

    .line 161
    aput-char v12, v6, v11

    add-int/lit8 v11, v11, 0x1

    .line 162
    aget v12, v7, v14

    add-int/lit8 v12, v12, 0x1

    aput v12, v7, v14

    :goto_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_51
    if-lez v10, :cond_54

    const/16 v19, -0x1

    add-int/lit8 v10, v10, -0x1

    :goto_3a
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_52

    const/16 v23, 0x0

    .line 163
    aput-char v23, v6, v11

    add-int/lit8 v11, v11, 0x1

    .line 164
    aget v1, v7, v23

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    aput v1, v7, v23

    :goto_3b
    const/4 v12, 0x2

    goto :goto_3c

    :cond_52
    const/16 v21, 0x1

    .line 165
    aput-char v21, v6, v11

    add-int/lit8 v11, v11, 0x1

    .line 166
    aget v1, v7, v21

    add-int/lit8 v1, v1, 0x1

    aput v1, v7, v21

    goto :goto_3b

    :goto_3c
    if-ge v10, v12, :cond_53

    goto :goto_3d

    :cond_53
    add-int/lit8 v10, v10, -0x2

    shr-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_54
    const/16 v21, 0x1

    :goto_3d
    int-to-char v1, v3

    .line 167
    aput-char v1, v6, v11

    .line 168
    aget v1, v7, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v7, v3

    add-int/lit8 v11, v11, 0x1

    .line 169
    iput v11, v0, Lwj0;->k:I

    .line 170
    iget-object v1, v0, Lwj0;->t:Lvj0;

    iget-object v1, v1, Lvj0;->g:[[B

    .line 171
    iget v2, v0, Lwj0;->f:I

    add-int/lit8 v3, v2, 0x2

    const/4 v5, 0x6

    :cond_55
    const/16 v19, -0x1

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0xf

    if-ltz v5, :cond_56

    .line 172
    aget-object v7, v1, v5

    move v8, v3

    :goto_3e
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_55

    .line 173
    aput-byte v6, v7, v8

    const/16 v19, -0x1

    goto :goto_3e

    .line 174
    :cond_56
    iget v1, v0, Lwj0;->k:I

    const/16 v5, 0xc8

    const/4 v7, 0x4

    if-ge v1, v5, :cond_57

    const/4 v11, 0x2

    goto :goto_3f

    :cond_57
    const/16 v5, 0x258

    if-ge v1, v5, :cond_58

    move/from16 v11, v17

    goto :goto_3f

    :cond_58
    const/16 v5, 0x4b0

    if-ge v1, v5, :cond_59

    move v11, v7

    goto :goto_3f

    :cond_59
    const/16 v5, 0x960

    if-ge v1, v5, :cond_5a

    const/4 v11, 0x5

    goto :goto_3f

    :cond_5a
    const/4 v11, 0x6

    .line 175
    :goto_3f
    iget-object v5, v0, Lwj0;->t:Lvj0;

    iget-object v9, v5, Lvj0;->g:[[B

    .line 176
    iget-object v5, v5, Lvj0;->c:[I

    move v12, v11

    const/4 v10, 0x0

    :goto_40
    if-lez v12, :cond_5f

    .line 177
    div-int v13, v1, v12

    add-int/lit8 v14, v10, -0x1

    const/16 v21, 0x1

    add-int/lit8 v15, v2, 0x1

    const/4 v8, 0x0

    const/16 v18, 0x5

    :goto_41
    if-ge v8, v13, :cond_5b

    if-ge v14, v15, :cond_5b

    add-int/lit8 v14, v14, 0x1

    .line 178
    aget v25, v5, v14

    add-int v8, v8, v25

    goto :goto_41

    :cond_5b
    if-le v14, v10, :cond_5c

    if-eq v12, v11, :cond_5c

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5c

    sub-int v15, v11, v12

    and-int/2addr v15, v13

    if-eqz v15, :cond_5c

    add-int/lit8 v13, v14, -0x1

    .line 179
    aget v14, v5, v14

    sub-int/2addr v8, v14

    move v14, v13

    :cond_5c
    add-int/lit8 v13, v12, -0x1

    .line 180
    aget-object v13, v9, v13

    move v15, v3

    :goto_42
    const/16 v19, -0x1

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_5e

    if-lt v15, v10, :cond_5d

    if-gt v15, v14, :cond_5d

    const/16 v23, 0x0

    .line 181
    aput-byte v23, v13, v15

    goto :goto_42

    .line 182
    :cond_5d
    aput-byte v6, v13, v15

    goto :goto_42

    :cond_5e
    add-int/lit8 v10, v14, 0x1

    sub-int/2addr v1, v8

    add-int/lit8 v12, v12, -0x1

    goto :goto_40

    :cond_5f
    const/16 v18, 0x5

    .line 183
    iget-object v1, v0, Lwj0;->t:Lvj0;

    .line 184
    iget-object v2, v1, Lvj0;->h:[[I

    .line 185
    iget-object v5, v1, Lvj0;->i:[I

    .line 186
    iget-object v8, v1, Lvj0;->j:[S

    .line 187
    iget-object v9, v1, Lvj0;->s:[C

    .line 188
    iget-object v10, v1, Lvj0;->d:[B

    .line 189
    iget-object v1, v1, Lvj0;->g:[[B

    const/16 v23, 0x0

    .line 190
    aget-object v12, v1, v23

    const/16 v21, 0x1

    .line 191
    aget-object v13, v1, v21

    const/16 v20, 0x2

    .line 192
    aget-object v14, v1, v20

    .line 193
    aget-object v15, v1, v17

    .line 194
    aget-object v25, v1, v7

    .line 195
    aget-object v26, v1, v18

    .line 196
    iget v6, v0, Lwj0;->k:I

    const/4 v4, 0x0

    const/16 v60, 0x0

    :goto_43
    if-ge v4, v7, :cond_7f

    move/from16 v19, v11

    :goto_44
    const/16 v29, -0x1

    add-int/lit8 v30, v19, -0x1

    if-ltz v30, :cond_61

    const/16 v23, 0x0

    .line 197
    aput v23, v5, v30

    .line 198
    aget-object v31, v2, v30

    move/from16 v19, v3

    :goto_45
    add-int/lit8 v32, v19, -0x1

    if-ltz v32, :cond_60

    .line 199
    aput v23, v31, v32

    move/from16 v19, v32

    const/16 v23, 0x0

    const/16 v29, -0x1

    goto :goto_45

    :cond_60
    move/from16 v19, v30

    goto :goto_44

    :cond_61
    move-object/from16 v30, v1

    move/from16 v29, v7

    const/4 v7, 0x0

    const/16 v60, 0x0

    .line 200
    :goto_46
    iget v1, v0, Lwj0;->k:I

    if-ge v7, v1, :cond_6a

    add-int/lit8 v1, v7, 0x31

    move-object/from16 v31, v2

    const/16 v21, 0x1

    add-int/lit8 v2, v6, -0x1

    .line 201
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x6

    if-ne v11, v2, :cond_63

    move v2, v7

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_47
    if-gt v2, v1, :cond_62

    .line 202
    aget-char v38, v9, v2

    move/from16 v39, v2

    .line 203
    aget-byte v2, v12, v38

    int-to-short v2, v2

    add-int v2, v28, v2

    int-to-short v2, v2

    move/from16 v28, v2

    .line 204
    aget-byte v2, v13, v38

    int-to-short v2, v2

    add-int v2, v32, v2

    int-to-short v2, v2

    move/from16 v32, v2

    .line 205
    aget-byte v2, v14, v38

    int-to-short v2, v2

    add-int v2, v33, v2

    int-to-short v2, v2

    move/from16 v33, v2

    .line 206
    aget-byte v2, v15, v38

    int-to-short v2, v2

    add-int v2, v34, v2

    int-to-short v2, v2

    move/from16 v34, v2

    .line 207
    aget-byte v2, v25, v38

    int-to-short v2, v2

    add-int v2, v35, v2

    int-to-short v2, v2

    move/from16 v35, v2

    .line 208
    aget-byte v2, v26, v38

    int-to-short v2, v2

    add-int v2, v36, v2

    int-to-short v2, v2

    add-int/lit8 v36, v39, 0x1

    move/from16 v61, v36

    move/from16 v36, v2

    move/from16 v2, v61

    goto :goto_47

    :cond_62
    const/16 v23, 0x0

    .line 209
    aput-short v28, v8, v23

    const/16 v21, 0x1

    .line 210
    aput-short v32, v8, v21

    const/16 v20, 0x2

    .line 211
    aput-short v33, v8, v20

    .line 212
    aput-short v34, v8, v17

    .line 213
    aput-short v35, v8, v29

    .line 214
    aput-short v36, v8, v18

    goto :goto_4b

    :cond_63
    move v2, v11

    const/16 v19, -0x1

    :goto_48
    const/16 v23, 0x0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_64

    .line 215
    aput-short v23, v8, v2

    goto :goto_48

    :cond_64
    move v2, v7

    :goto_49
    if-gt v2, v1, :cond_66

    .line 216
    aget-char v28, v9, v2

    move/from16 v32, v11

    :goto_4a
    add-int/lit8 v32, v32, -0x1

    if-ltz v32, :cond_65

    .line 217
    aget-short v33, v8, v32

    aget-object v34, v30, v32

    move/from16 v35, v2

    aget-byte v2, v34, v28

    int-to-short v2, v2

    add-int v2, v33, v2

    int-to-short v2, v2

    aput-short v2, v8, v32

    move/from16 v2, v35

    const/16 v19, -0x1

    goto :goto_4a

    :cond_65
    move/from16 v35, v2

    add-int/lit8 v2, v35, 0x1

    const/16 v19, -0x1

    goto :goto_49

    :cond_66
    :goto_4b
    const v2, 0x3b9ac9ff

    move/from16 v28, v4

    move/from16 v19, v11

    const/4 v4, -0x1

    :goto_4c
    const/16 v32, -0x1

    add-int/lit8 v33, v19, -0x1

    if-ltz v33, :cond_68

    move-object/from16 v32, v5

    .line 218
    aget-short v5, v8, v33

    if-ge v5, v2, :cond_67

    move v2, v5

    move/from16 v4, v33

    :cond_67
    move-object/from16 v5, v32

    move/from16 v19, v33

    goto :goto_4c

    :cond_68
    move-object/from16 v32, v5

    .line 219
    aget v2, v32, v4

    const/16 v21, 0x1

    add-int/lit8 v2, v2, 0x1

    aput v2, v32, v4

    int-to-byte v2, v4

    .line 220
    aput-byte v2, v10, v60

    add-int/lit8 v60, v60, 0x1

    .line 221
    aget-object v2, v31, v4

    :goto_4d
    if-gt v7, v1, :cond_69

    .line 222
    aget-char v4, v9, v7

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    add-int/lit8 v7, v7, 0x1

    const/16 v21, 0x1

    goto :goto_4d

    :cond_69
    add-int/lit8 v7, v1, 0x1

    move/from16 v4, v28

    move-object/from16 v2, v31

    move-object/from16 v5, v32

    goto/16 :goto_46

    :cond_6a
    move-object/from16 v31, v2

    move/from16 v28, v4

    move-object/from16 v32, v5

    const/4 v1, 0x0

    :goto_4e
    if-ge v1, v11, :cond_7e

    .line 223
    aget-object v2, v30, v1

    aget-object v4, v31, v1

    iget-object v5, v0, Lwj0;->t:Lvj0;

    .line 224
    iget-object v7, v5, Lvj0;->n:[I

    move/from16 v33, v1

    .line 225
    iget-object v1, v5, Lvj0;->o:[I

    .line 226
    iget-object v5, v5, Lvj0;->p:[I

    move/from16 v34, v3

    :goto_4f
    add-int/lit8 v35, v34, -0x1

    if-ltz v35, :cond_6c

    .line 227
    aget v36, v4, v35

    if-nez v36, :cond_6b

    const/16 v36, 0x1

    :cond_6b
    shl-int/lit8 v36, v36, 0x8

    aput v36, v1, v34

    move/from16 v34, v35

    goto :goto_4f

    :cond_6c
    const/4 v4, 0x1

    :goto_50
    if-eqz v4, :cond_7d

    const/16 v23, 0x0

    .line 228
    aput v23, v7, v23

    .line 229
    aput v23, v1, v23

    const/4 v4, -0x2

    .line 230
    aput v4, v5, v23

    const/4 v4, 0x1

    const/16 v34, 0x0

    :goto_51
    if-gt v4, v3, :cond_6e

    const/16 v19, -0x1

    .line 231
    aput v19, v5, v4

    add-int/lit8 v34, v34, 0x1

    .line 232
    aput v4, v7, v34

    move-object/from16 v36, v1

    move/from16 v35, v34

    .line 233
    :goto_52
    aget v1, v36, v4

    shr-int/lit8 v38, v35, 0x1

    aget v39, v7, v38

    move-object/from16 v40, v2

    aget v2, v36, v39

    if-ge v1, v2, :cond_6d

    .line 234
    aput v39, v7, v35

    move/from16 v35, v38

    move-object/from16 v2, v40

    goto :goto_52

    .line 235
    :cond_6d
    aput v4, v7, v35

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v36

    move-object/from16 v2, v40

    goto :goto_51

    :cond_6e
    move-object/from16 v36, v1

    move-object/from16 v40, v2

    move v2, v3

    move/from16 v1, v34

    :goto_53
    const/4 v4, 0x1

    if-le v1, v4, :cond_78

    .line 236
    aget v34, v7, v4

    .line 237
    aget v35, v7, v1

    aput v35, v7, v4

    add-int/lit8 v4, v1, -0x1

    const/16 v38, 0x1

    :goto_54
    move/from16 v39, v1

    shl-int/lit8 v1, v38, 0x1

    if-le v1, v4, :cond_6f

    move/from16 v44, v2

    goto :goto_56

    :cond_6f
    if-ge v1, v4, :cond_70

    add-int/lit8 v41, v1, 0x1

    .line 238
    aget v42, v7, v41

    move/from16 v43, v1

    aget v1, v36, v42

    aget v42, v7, v43

    move/from16 v44, v2

    aget v2, v36, v42

    if-ge v1, v2, :cond_71

    goto :goto_55

    :cond_70
    move/from16 v43, v1

    move/from16 v44, v2

    :cond_71
    move/from16 v41, v43

    .line 239
    :goto_55
    aget v1, v36, v35

    aget v2, v7, v41

    move/from16 v42, v2

    aget v2, v36, v42

    if-ge v1, v2, :cond_77

    .line 240
    :goto_56
    aput v35, v7, v38

    const/16 v21, 0x1

    .line 241
    aget v1, v7, v21

    .line 242
    aget v2, v7, v4

    aput v2, v7, v21

    move/from16 v43, v1

    add-int/lit8 v1, v39, -0x2

    const/16 v35, 0x1

    :goto_57
    move/from16 v45, v2

    shl-int/lit8 v2, v35, 0x1

    if-le v2, v1, :cond_72

    goto :goto_59

    :cond_72
    if-ge v2, v1, :cond_73

    add-int/lit8 v38, v2, 0x1

    .line 243
    aget v39, v7, v38

    move/from16 v46, v1

    aget v1, v36, v39

    aget v39, v7, v2

    move/from16 v41, v2

    aget v2, v36, v39

    if-ge v1, v2, :cond_74

    goto :goto_58

    :cond_73
    move/from16 v46, v1

    move/from16 v41, v2

    :cond_74
    move/from16 v38, v41

    .line 244
    :goto_58
    aget v1, v36, v45

    aget v2, v7, v38

    move/from16 v39, v2

    aget v2, v36, v39

    if-ge v1, v2, :cond_76

    .line 245
    :goto_59
    aput v45, v7, v35

    const/16 v21, 0x1

    add-int/lit8 v2, v44, 0x1

    .line 246
    aput v2, v5, v43

    aput v2, v5, v34

    .line 247
    aget v1, v36, v34

    move/from16 v35, v2

    .line 248
    aget v2, v36, v43

    move/from16 v47, v4

    and-int/lit16 v4, v1, -0x100

    move/from16 v34, v4

    and-int/lit16 v4, v2, -0x100

    add-int v4, v34, v4

    move/from16 v34, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    and-int/2addr v2, v4

    .line 249
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    or-int v1, v34, v1

    aput v1, v36, v35

    const/16 v19, -0x1

    .line 250
    aput v19, v5, v35

    .line 251
    aput v35, v7, v47

    .line 252
    aget v1, v36, v35

    move/from16 v2, v47

    :goto_5a
    shr-int/lit8 v4, v2, 0x1

    .line 253
    aget v34, v7, v4

    move/from16 v38, v2

    aget v2, v36, v34

    if-ge v1, v2, :cond_75

    .line 254
    aput v34, v7, v38

    move v2, v4

    goto :goto_5a

    .line 255
    :cond_75
    aput v35, v7, v38

    move/from16 v2, v35

    move/from16 v1, v47

    goto/16 :goto_53

    :cond_76
    move/from16 v47, v4

    .line 256
    aput v39, v7, v35

    move/from16 v35, v38

    move/from16 v2, v45

    move/from16 v1, v46

    goto/16 :goto_57

    :cond_77
    move/from16 v47, v4

    .line 257
    aput v42, v7, v38

    move/from16 v1, v39

    move/from16 v38, v41

    move/from16 v2, v44

    goto/16 :goto_54

    :cond_78
    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_5b
    if-gt v1, v3, :cond_7b

    move/from16 v34, v1

    const/4 v2, 0x0

    .line 258
    :goto_5c
    aget v34, v5, v34

    if-ltz v34, :cond_79

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_79
    add-int/lit8 v34, v1, -0x1

    move/from16 v35, v1

    int-to-byte v1, v2

    .line 259
    aput-byte v1, v40, v34

    const/16 v1, 0x14

    if-le v2, v1, :cond_7a

    const/4 v4, 0x1

    :cond_7a
    add-int/lit8 v2, v35, 0x1

    move v1, v2

    goto :goto_5b

    :cond_7b
    const/16 v1, 0x14

    if-eqz v4, :cond_7c

    const/4 v2, 0x1

    :goto_5d
    if-ge v2, v3, :cond_7c

    .line 260
    aget v24, v36, v2

    shr-int/lit8 v24, v24, 0x9

    const/16 v21, 0x1

    add-int/lit8 v24, v24, 0x1

    shl-int/lit8 v24, v24, 0x8

    .line 261
    aput v24, v36, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_7c
    move-object/from16 v1, v36

    move-object/from16 v2, v40

    goto/16 :goto_50

    :cond_7d
    const/16 v1, 0x14

    add-int/lit8 v2, v33, 0x1

    move v1, v2

    goto/16 :goto_4e

    :cond_7e
    const/16 v1, 0x14

    add-int/lit8 v4, v28, 0x1

    move/from16 v7, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v5, v32

    goto/16 :goto_43

    .line 262
    :cond_7f
    iget-object v1, v0, Lwj0;->t:Lvj0;

    .line 263
    iget-object v2, v1, Lvj0;->l:[B

    move v4, v11

    :goto_5e
    const/16 v19, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_80

    int-to-byte v5, v4

    .line 264
    aput-byte v5, v2, v4

    goto :goto_5e

    :cond_80
    move/from16 v5, v60

    const/4 v4, 0x0

    :goto_5f
    if-ge v4, v5, :cond_82

    .line 265
    iget-object v6, v1, Lvj0;->d:[B

    aget-byte v6, v6, v4

    const/16 v23, 0x0

    .line 266
    aget-byte v7, v2, v23

    move/from16 v8, v23

    :goto_60
    if-eq v6, v7, :cond_81

    add-int/lit8 v8, v8, 0x1

    .line 267
    aget-byte v9, v2, v8

    .line 268
    aput-byte v7, v2, v8

    move v7, v9

    goto :goto_60

    .line 269
    :cond_81
    aput-byte v7, v2, v23

    .line 270
    iget-object v6, v1, Lvj0;->e:[B

    int-to-byte v7, v8

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 271
    :cond_82
    iget-object v1, v0, Lwj0;->t:Lvj0;

    iget-object v2, v1, Lvj0;->k:[[I

    .line 272
    iget-object v1, v1, Lvj0;->g:[[B

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v11, :cond_89

    .line 273
    aget-object v6, v1, v4

    const/16 v7, 0x20

    move v9, v3

    const/4 v8, 0x0

    :cond_83
    :goto_62
    const/16 v19, -0x1

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_85

    .line 274
    aget-byte v10, v6, v9

    const/16 v14, 0xff

    and-int/2addr v10, v14

    if-le v10, v8, :cond_84

    move v8, v10

    :cond_84
    if-ge v10, v7, :cond_83

    move v7, v10

    goto :goto_62

    .line 275
    :cond_85
    aget-object v6, v2, v4

    aget-object v9, v1, v4

    const/4 v10, 0x0

    :goto_63
    if-gt v7, v8, :cond_88

    const/4 v12, 0x0

    :goto_64
    if-ge v12, v3, :cond_87

    .line 276
    aget-byte v13, v9, v12

    const/16 v14, 0xff

    and-int/2addr v13, v14

    if-ne v13, v7, :cond_86

    .line 277
    aput v10, v6, v12

    add-int/lit8 v10, v10, 0x1

    :cond_86
    add-int/lit8 v12, v12, 0x1

    goto :goto_64

    :cond_87
    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 278
    :cond_89
    iget-object v1, v0, Lwj0;->t:Lvj0;

    iget-object v2, v1, Lvj0;->a:[Z

    .line 279
    iget-object v1, v1, Lvj0;->m:[Z

    const/16 v4, 0x10

    move v6, v4

    const/16 v19, -0x1

    :goto_65
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_8c

    const/16 v23, 0x0

    .line 280
    aput-boolean v23, v1, v6

    mul-int/lit8 v7, v6, 0x10

    move v8, v4

    :cond_8a
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_8b

    add-int v9, v7, v8

    .line 281
    aget-boolean v9, v2, v9

    if-eqz v9, :cond_8a

    const/4 v13, 0x1

    .line 282
    aput-boolean v13, v1, v6

    goto :goto_65

    :cond_8b
    const/4 v13, 0x1

    goto :goto_65

    :cond_8c
    const/4 v6, 0x0

    :goto_66
    const/4 v13, 0x1

    if-ge v6, v4, :cond_8d

    .line 283
    aget-boolean v7, v1, v6

    invoke-virtual {v0, v13, v7}, Lwj0;->g(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 284
    :cond_8d
    iget-object v6, v0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 285
    iget v7, v0, Lwj0;->d:I

    .line 286
    iget v8, v0, Lwj0;->c:I

    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_67
    if-ge v7, v4, :cond_92

    .line 287
    aget-boolean v10, v1, v7

    if-eqz v10, :cond_91

    mul-int/lit8 v10, v7, 0x10

    move v12, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_68
    if-ge v8, v4, :cond_90

    move/from16 v13, v16

    :goto_69
    if-lt v9, v13, :cond_8e

    shr-int/lit8 v13, v12, 0x18

    .line 288
    invoke-virtual {v6, v13}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v9, v9, -0x8

    const/16 v13, 0x8

    goto :goto_69

    :cond_8e
    add-int v13, v10, v8

    .line 289
    aget-boolean v13, v2, v13

    if-eqz v13, :cond_8f

    rsub-int/lit8 v13, v9, 0x1f

    const/16 v21, 0x1

    shl-int v13, v21, v13

    or-int/2addr v12, v13

    :cond_8f
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v16, 0x8

    goto :goto_68

    :cond_90
    move v8, v9

    move v9, v12

    :cond_91
    add-int/lit8 v7, v7, 0x1

    const/16 v16, 0x8

    goto :goto_67

    .line 290
    :cond_92
    iput v9, v0, Lwj0;->c:I

    .line 291
    iput v8, v0, Lwj0;->d:I

    move/from16 v1, v17

    .line 292
    invoke-virtual {v0, v1, v11}, Lwj0;->g(II)V

    const/16 v1, 0xf

    .line 293
    invoke-virtual {v0, v1, v5}, Lwj0;->g(II)V

    .line 294
    iget-object v1, v0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 295
    iget-object v2, v0, Lwj0;->t:Lvj0;

    iget-object v2, v2, Lvj0;->e:[B

    .line 296
    iget v4, v0, Lwj0;->d:I

    .line 297
    iget v6, v0, Lwj0;->c:I

    move v7, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_6a
    if-ge v4, v5, :cond_96

    .line 298
    aget-byte v8, v2, v4

    const/16 v14, 0xff

    and-int/2addr v8, v14

    move v9, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_6b
    if-ge v6, v8, :cond_94

    :goto_6c
    const/16 v13, 0x8

    if-lt v7, v13, :cond_93

    shr-int/lit8 v10, v9, 0x18

    .line 299
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_6c

    :cond_93
    rsub-int/lit8 v10, v7, 0x1f

    const/16 v21, 0x1

    shl-int v10, v21, v10

    or-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_94
    const/16 v21, 0x1

    :goto_6d
    const/16 v13, 0x8

    if-lt v7, v13, :cond_95

    shr-int/lit8 v6, v9, 0x18

    .line 300
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_6d

    :cond_95
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    goto :goto_6a

    .line 301
    :cond_96
    iput v7, v0, Lwj0;->c:I

    .line 302
    iput v6, v0, Lwj0;->d:I

    .line 303
    iget-object v1, v0, Lwj0;->t:Lvj0;

    iget-object v1, v1, Lvj0;->g:[[B

    .line 304
    iget-object v2, v0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    :goto_6e
    if-ge v4, v11, :cond_9e

    .line 305
    aget-object v5, v1, v4

    const/16 v23, 0x0

    .line 306
    aget-byte v8, v5, v23

    const/16 v14, 0xff

    and-int/2addr v8, v14

    :goto_6f
    const/16 v13, 0x8

    if-lt v6, v13, :cond_97

    shr-int/lit8 v9, v7, 0x18

    .line 307
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v6, -0x8

    goto :goto_6f

    :cond_97
    rsub-int/lit8 v9, v6, 0x1b

    shl-int v9, v8, v9

    or-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x5

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v23

    :goto_70
    if-ge v6, v3, :cond_9d

    .line 308
    aget-byte v10, v5, v6

    const/16 v14, 0xff

    and-int/2addr v10, v14

    :goto_71
    if-ge v9, v10, :cond_99

    :goto_72
    const/16 v13, 0x8

    if-lt v7, v13, :cond_98

    shr-int/lit8 v12, v8, 0x18

    .line 309
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_72

    :cond_98
    rsub-int/lit8 v12, v7, 0x1e

    const/16 v20, 0x2

    shl-int v12, v20, v12

    or-int/2addr v8, v12

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    :cond_99
    const/16 v20, 0x2

    :goto_73
    if-le v9, v10, :cond_9b

    :goto_74
    const/16 v13, 0x8

    if-lt v7, v13, :cond_9a

    shr-int/lit8 v12, v8, 0x18

    .line 310
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_74

    :cond_9a
    rsub-int/lit8 v12, v7, 0x1e

    const/16 v17, 0x3

    shl-int v12, v17, v12

    or-int/2addr v8, v12

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v9, v9, -0x1

    goto :goto_73

    :cond_9b
    const/16 v17, 0x3

    :goto_75
    const/16 v13, 0x8

    if-lt v7, v13, :cond_9c

    shr-int/lit8 v10, v8, 0x18

    .line 311
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, -0x8

    goto :goto_75

    :cond_9c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    :cond_9d
    const/16 v17, 0x3

    const/16 v20, 0x2

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    move v7, v8

    goto/16 :goto_6e

    :cond_9e
    const/16 v23, 0x0

    .line 312
    iput v7, v0, Lwj0;->c:I

    .line 313
    iput v6, v0, Lwj0;->d:I

    .line 314
    iget-object v1, v0, Lwj0;->t:Lvj0;

    .line 315
    iget-object v2, v1, Lvj0;->g:[[B

    .line 316
    iget-object v3, v1, Lvj0;->k:[[I

    .line 317
    iget-object v4, v0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 318
    iget-object v5, v1, Lvj0;->d:[B

    .line 319
    iget-object v1, v1, Lvj0;->s:[C

    .line 320
    iget v8, v0, Lwj0;->k:I

    move v9, v7

    move/from16 v7, v23

    :goto_76
    if-ge v7, v8, :cond_a1

    add-int/lit8 v10, v7, 0x31

    add-int/lit8 v11, v8, -0x1

    .line 321
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 322
    aget-byte v11, v5, v23

    const/16 v14, 0xff

    and-int/2addr v11, v14

    .line 323
    aget-object v12, v3, v11

    .line 324
    aget-object v11, v2, v11

    :goto_77
    if-gt v7, v10, :cond_a0

    .line 325
    aget-char v13, v1, v7

    const/16 v14, 0x8

    :goto_78
    if-lt v6, v14, :cond_9f

    shr-int/lit8 v15, v9, 0x18

    .line 326
    invoke-virtual {v4, v15}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v6, -0x8

    goto :goto_78

    .line 327
    :cond_9f
    aget-byte v15, v11, v13

    const/16 v14, 0xff

    and-int/2addr v15, v14

    .line 328
    aget v13, v12, v13

    rsub-int/lit8 v17, v6, 0x20

    sub-int v17, v17, v15

    shl-int v13, v13, v17

    or-int/2addr v9, v13

    add-int/2addr v6, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    :cond_a0
    const/16 v14, 0xff

    add-int/lit8 v7, v10, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_76

    .line 329
    :cond_a1
    iput v9, v0, Lwj0;->c:I

    .line 330
    iput v6, v0, Lwj0;->d:I

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x72

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x45

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x38

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x50

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x90

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lwj0;->b(I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lwj0;->q:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lwj0;->a(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget v0, p0, Lwj0;->d:I

    .line 37
    .line 38
    if-lez v0, :cond_0

    .line 39
    .line 40
    iget v0, p0, Lwj0;->c:I

    .line 41
    .line 42
    shr-int/lit8 v0, v0, 0x18

    .line 43
    .line 44
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lwj0;->c:I

    .line 50
    .line 51
    shl-int/lit8 v0, v0, 0x8

    .line 52
    .line 53
    iput v0, p0, Lwj0;->c:I

    .line 54
    .line 55
    iget v0, p0, Lwj0;->d:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x8

    .line 58
    .line 59
    iput v0, p0, Lwj0;->d:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 3

    .line 1
    iget v0, p0, Lwj0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_2

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0xff

    .line 8
    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    .line 11
    iget p1, p0, Lwj0;->p:I

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iput p1, p0, Lwj0;->p:I

    .line 15
    .line 16
    const/16 v0, 0xfe

    .line 17
    .line 18
    if-le p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lwj0;->n()V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Lwj0;->n:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lwj0;->p:I

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lwj0;->n()V

    .line 30
    .line 31
    .line 32
    iput v1, p0, Lwj0;->p:I

    .line 33
    .line 34
    iput p1, p0, Lwj0;->n:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    and-int/lit16 p1, p1, 0xff

    .line 38
    .line 39
    iput p1, p0, Lwj0;->n:I

    .line 40
    .line 41
    iget p1, p0, Lwj0;->p:I

    .line 42
    .line 43
    add-int/2addr p1, v1

    .line 44
    iput p1, p0, Lwj0;->p:I

    .line 45
    .line 46
    return-void
.end method

.method public final n()V
    .locals 12

    .line 1
    iget v0, p0, Lwj0;->b:I

    .line 2
    .line 3
    iget v1, p0, Lwj0;->r:I

    .line 4
    .line 5
    iget-object v2, p0, Lwj0;->e:Ldz0;

    .line 6
    .line 7
    if-ge v0, v1, :cond_5

    .line 8
    .line 9
    iget v1, p0, Lwj0;->n:I

    .line 10
    .line 11
    iget-object v3, p0, Lwj0;->t:Lvj0;

    .line 12
    .line 13
    iget-object v4, v3, Lvj0;->a:[Z

    .line 14
    .line 15
    iget-object v5, v3, Lvj0;->q:[B

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    aput-boolean v6, v4, v1

    .line 19
    .line 20
    int-to-byte v4, v1

    .line 21
    iget v7, p0, Lwj0;->p:I

    .line 22
    .line 23
    iget v8, v2, Ldz0;->a:I

    .line 24
    .line 25
    move v9, v7

    .line 26
    :goto_0
    add-int/lit8 v10, v9, -0x1

    .line 27
    .line 28
    if-lez v9, :cond_1

    .line 29
    .line 30
    shr-int/lit8 v9, v8, 0x18

    .line 31
    .line 32
    xor-int/2addr v9, v1

    .line 33
    shl-int/lit8 v8, v8, 0x8

    .line 34
    .line 35
    if-gez v9, :cond_0

    .line 36
    .line 37
    add-int/lit16 v9, v9, 0x100

    .line 38
    .line 39
    :cond_0
    sget-object v11, Ldz0;->b:[I

    .line 40
    .line 41
    aget v9, v11, v9

    .line 42
    .line 43
    xor-int/2addr v8, v9

    .line 44
    move v9, v10

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput v8, v2, Ldz0;->a:I

    .line 47
    .line 48
    if-eq v7, v6, :cond_4

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    const/4 v2, 0x2

    .line 52
    if-eq v7, v2, :cond_3

    .line 53
    .line 54
    if-eq v7, v1, :cond_2

    .line 55
    .line 56
    add-int/lit8 v7, v7, -0x4

    .line 57
    .line 58
    iget-object v1, v3, Lvj0;->a:[Z

    .line 59
    .line 60
    aput-boolean v6, v1, v7

    .line 61
    .line 62
    add-int/lit8 v1, v0, 0x2

    .line 63
    .line 64
    aput-byte v4, v5, v1

    .line 65
    .line 66
    add-int/lit8 v1, v0, 0x3

    .line 67
    .line 68
    aput-byte v4, v5, v1

    .line 69
    .line 70
    add-int/lit8 v1, v0, 0x4

    .line 71
    .line 72
    aput-byte v4, v5, v1

    .line 73
    .line 74
    add-int/lit8 v1, v0, 0x5

    .line 75
    .line 76
    aput-byte v4, v5, v1

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x6

    .line 79
    .line 80
    int-to-byte v2, v7

    .line 81
    aput-byte v2, v5, v0

    .line 82
    .line 83
    iput v1, p0, Lwj0;->b:I

    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 87
    .line 88
    aput-byte v4, v5, v1

    .line 89
    .line 90
    add-int/lit8 v1, v0, 0x3

    .line 91
    .line 92
    aput-byte v4, v5, v1

    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x4

    .line 95
    .line 96
    aput-byte v4, v5, v0

    .line 97
    .line 98
    iput v1, p0, Lwj0;->b:I

    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    add-int/lit8 v2, v0, 0x2

    .line 102
    .line 103
    aput-byte v4, v5, v2

    .line 104
    .line 105
    add-int/2addr v0, v1

    .line 106
    aput-byte v4, v5, v0

    .line 107
    .line 108
    iput v2, p0, Lwj0;->b:I

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    add-int/lit8 v1, v0, 0x2

    .line 112
    .line 113
    aput-byte v4, v5, v1

    .line 114
    .line 115
    add-int/2addr v0, v6

    .line 116
    iput v0, p0, Lwj0;->b:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    invoke-virtual {p0}, Lwj0;->h()V

    .line 120
    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, v2, Ldz0;->a:I

    .line 124
    .line 125
    iput v0, p0, Lwj0;->b:I

    .line 126
    .line 127
    iget-object v1, p0, Lwj0;->t:Lvj0;

    .line 128
    .line 129
    iget-object v1, v1, Lvj0;->a:[Z

    .line 130
    .line 131
    const/16 v2, 0x100

    .line 132
    .line 133
    :goto_1
    add-int/2addr v2, v0

    .line 134
    if-ltz v2, :cond_6

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    aput-boolean v3, v1, v2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual {p0}, Lwj0;->n()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lpp1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lwj0;->m(I)V

    return-void

    .line 79
    :cond_0
    const-string p0, "Stream closed"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    const-string v0, ") < 0."

    .line 2
    .line 3
    const-string v1, "offs("

    .line 4
    .line 5
    if-ltz p2, :cond_4

    .line 6
    .line 7
    if-ltz p3, :cond_3

    .line 8
    .line 9
    add-int v0, p2, p3

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    if-gt v0, v2, :cond_2

    .line 13
    .line 14
    iget-object p3, p0, Lpp1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    :goto_0
    if-ge p2, v0, :cond_0

    .line 23
    .line 24
    add-int/lit8 p3, p2, 0x1

    .line 25
    .line 26
    aget-byte p2, p1, p2

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lwj0;->m(I)V

    .line 29
    .line 30
    .line 31
    move p2, p3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const-string p0, "Stream closed"

    .line 35
    .line 36
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const-string p0, ") + len("

    .line 41
    .line 42
    const-string v0, ") > buf.length("

    .line 43
    .line 44
    invoke-static {v1, p2, p0, v0, p3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    array-length p1, p1

    .line 49
    const-string p2, ")."

    .line 50
    .line 51
    invoke-static {p0, p1, p2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    const-string p0, "len("

    .line 60
    .line 61
    invoke-static {p3, p0, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-static {p2, v1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
