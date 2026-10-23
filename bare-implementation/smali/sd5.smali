.class public final Lsd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lk57;


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Ls4;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lpm5;

.field public final k:Lyw4;

.field public final l:Lke8;

.field public final m:Ll65;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lsd5;->n:[I

    .line 5
    .line 6
    invoke-static {}, Lef8;->i()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lsd5;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILs4;[IIILpm5;Lyw4;Lke8;Ld13;Ll65;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsd5;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lsd5;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lsd5;->c:I

    .line 9
    .line 10
    iput p4, p0, Lsd5;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Lav3;

    .line 13
    .line 14
    iput-boolean p1, p0, Lsd5;->f:Z

    .line 15
    .line 16
    iput-object p6, p0, Lsd5;->g:[I

    .line 17
    .line 18
    iput p7, p0, Lsd5;->h:I

    .line 19
    .line 20
    iput p8, p0, Lsd5;->i:I

    .line 21
    .line 22
    iput-object p9, p0, Lsd5;->j:Lpm5;

    .line 23
    .line 24
    iput-object p10, p0, Lsd5;->k:Lyw4;

    .line 25
    .line 26
    iput-object p11, p0, Lsd5;->l:Lke8;

    .line 27
    .line 28
    iput-object p5, p0, Lsd5;->e:Ls4;

    .line 29
    .line 30
    iput-object p13, p0, Lsd5;->m:Ll65;

    .line 31
    .line 32
    return-void
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static K(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lav3;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lav3;

    .line 10
    .line 11
    invoke-virtual {p0}, Lav3;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static w(Lhf6;Lpm5;Lyw4;Lke8;Ld13;Ll65;)Lsd5;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lhf6;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    .line 7
    sget-object v7, Lsd5;->n:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    .line 25
    :goto_a
    sget-object v14, Lsd5;->o:Lsun/misc/Unsafe;

    .line 26
    iget-object v3, v0, Lhf6;->c:[Ljava/lang/Object;

    .line 27
    iget-object v8, v0, Lhf6;->a:Ls4;

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v5, v11, 0x3

    .line 29
    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v24, v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    .line 35
    aput v21, v15, v20

    move/from16 v20, v4

    :cond_19
    const/16 v4, 0x33

    move-object/from16 v30, v5

    if-lt v3, v4, :cond_22

    add-int/lit8 v4, v6, 0x1

    .line 36
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v5, 0xd800

    if-lt v6, v5, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_f
    add-int/lit8 v32, v4, 0x1

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v6, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v5, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v4, v31

    or-int/2addr v6, v4

    move/from16 v4, v32

    :cond_1b
    add-int/lit8 v5, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v5, v4, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v4, 0xc

    if-ne v5, v4, :cond_1f

    .line 38
    invoke-virtual {v0}, Lhf6;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ldj7;->a(II)Z

    move-result v4

    if-nez v4, :cond_1d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_1f

    .line 39
    :cond_1d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_10
    move v10, v5

    goto :goto_12

    .line 40
    :cond_1e
    :goto_11
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_10

    :cond_1f
    :goto_12
    mul-int/lit8 v6, v6, 0x2

    .line 41
    aget-object v4, v24, v6

    .line 42
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    .line 43
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_13

    .line 44
    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lsd5;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 45
    aput-object v4, v24, v6

    .line 46
    :goto_13
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v6, v6, 0x1

    .line 47
    aget-object v5, v24, v6

    move/from16 v28, v4

    .line 48
    instance-of v4, v5, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    .line 49
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 50
    :cond_21
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lsd5;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 51
    aput-object v5, v24, v6

    .line 52
    :goto_14
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v7

    move v7, v4

    move/from16 v4, v28

    move/from16 v28, v5

    move v5, v10

    move/from16 v29, v31

    const/4 v6, 0x0

    move-object v10, v8

    goto/16 :goto_1f

    :cond_22
    add-int/lit8 v4, v10, 0x1

    .line 53
    aget-object v5, v24, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lsd5;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_23

    const/16 v4, 0x11

    if-ne v3, v4, :cond_24

    :cond_23
    move/from16 v28, v7

    const/4 v7, 0x1

    goto/16 :goto_18

    :cond_24
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_25

    const/16 v4, 0x31

    if-ne v3, v4, :cond_26

    :cond_25
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_17

    :cond_26
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_27

    goto :goto_15

    :cond_27
    const/16 v4, 0x32

    if-ne v3, v4, :cond_29

    add-int/lit8 v4, v22, 0x1

    .line 54
    aput v21, v15, v22

    .line 55
    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v31

    aput-object v29, v11, v22

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v10, 0x3

    .line 56
    aget-object v10, v24, v28

    aput-object v10, v11, v22

    move/from16 v28, v7

    move-object v10, v8

    move/from16 v22, v29

    goto :goto_1a

    :cond_28
    move-object v10, v8

    move/from16 v4, v28

    move/from16 v22, v29

    move/from16 v28, v7

    goto :goto_1a

    :cond_29
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_19

    .line 57
    :cond_2a
    :goto_15
    invoke-virtual {v0}, Lhf6;->a()I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2b

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2c

    .line 58
    :cond_2b
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    :goto_16
    move v4, v10

    move-object v10, v8

    goto :goto_1a

    .line 59
    :goto_17
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    goto :goto_16

    .line 60
    :goto_18
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v11, v4

    :cond_2c
    :goto_19
    move-object v10, v8

    move/from16 v4, v31

    .line 61
    :goto_1a
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_30

    const/16 v7, 0x11

    if-gt v3, v7, :cond_30

    add-int/lit8 v7, v6, 0x1

    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1b
    add-int/lit8 v29, v7, 0x1

    .line 63
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2d

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v6, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v29

    goto :goto_1b

    :cond_2d
    shl-int v7, v7, v25

    or-int/2addr v6, v7

    goto :goto_1c

    :cond_2e
    move/from16 v29, v7

    :goto_1c
    mul-int/lit8 v7, v28, 0x2

    .line 64
    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v7

    .line 65
    aget-object v7, v24, v25

    .line 66
    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2f

    .line 67
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1d

    .line 68
    :cond_2f
    check-cast v7, Ljava/lang/String;

    invoke-static {v10, v7}, Lsd5;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 69
    aput-object v7, v24, v25

    .line 70
    :goto_1d
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    .line 71
    rem-int/lit8 v6, v6, 0x20

    goto :goto_1e

    :cond_30
    const v7, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_1e
    const/16 v8, 0x12

    if-lt v3, v8, :cond_31

    const/16 v8, 0x31

    if-gt v3, v8, :cond_31

    add-int/lit8 v8, v23, 0x1

    .line 72
    aput v5, v15, v23

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    move/from16 v23, v8

    goto :goto_1f

    :cond_31
    move/from16 v33, v5

    move v5, v4

    move/from16 v4, v33

    :goto_1f
    add-int/lit8 v8, v21, 0x1

    .line 73
    aput v26, v30, v21

    add-int/lit8 v25, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_20

    :cond_32
    const/4 v1, 0x0

    :goto_20
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    :goto_21
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_34

    const/high16 v2, -0x80000000

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    .line 74
    aput v1, v30, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v7

    .line 75
    aput v1, v30, v25

    move-object v8, v10

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v4, v29

    const v6, 0xd800

    move v10, v5

    move-object/from16 v5, v30

    goto/16 :goto_b

    :cond_35
    move-object/from16 v30, v5

    .line 76
    new-instance v1, Lsd5;

    .line 77
    iget-object v14, v0, Lhf6;->a:Ls4;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    .line 78
    invoke-direct/range {v9 .. v22}, Lsd5;-><init>([I[Ljava/lang/Object;IILs4;[IIILpm5;Lyw4;Lke8;Ld13;Ll65;)V

    return-object v9
.end method

.method public static x(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static y(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lef8;->c:Ldf8;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static z(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lef8;->c:Ldf8;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method


# virtual methods
.method public final A(I)I
    .locals 5

    .line 1
    iget v0, p0, Lsd5;->c:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lsd5;->d:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Lsd5;->a:[I

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    div-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-gt v1, v0, :cond_2

    .line 18
    .line 19
    add-int v2, v0, v1

    .line 20
    .line 21
    ushr-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    mul-int/lit8 v3, v2, 0x3

    .line 24
    .line 25
    aget v4, p0, v3

    .line 26
    .line 27
    if-ne p1, v4, :cond_0

    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    if-ge p1, v4, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public final B(Ljava/lang/Object;JLhk1;Lk57;Lc13;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lsd5;->k:Lyw4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p1, p4, Lhk1;->a:Lgk1;

    .line 11
    .line 12
    iget p2, p4, Lhk1;->b:I

    .line 13
    .line 14
    and-int/lit8 p3, p2, 0x7

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p3, v0, :cond_3

    .line 18
    .line 19
    :cond_0
    invoke-interface {p5}, Lk57;->i()Lav3;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p4, p3, p5, p6}, Lhk1;->b(Ljava/lang/Object;Lk57;Lc13;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p5, p3}, Lk57;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Lt96;

    .line 31
    .line 32
    invoke-virtual {v0, p3}, Lt96;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lgk1;->c()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    iget p3, p4, Lhk1;->d:I

    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lgk1;->v()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eq p3, p2, :cond_0

    .line 51
    .line 52
    iput p3, p4, Lhk1;->d:I

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    invoke-static {}, Lfg4;->b()Leg4;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public final C(Ljava/lang/Object;ILhk1;Lk57;Lc13;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p0, p0, Lsd5;->k:Lyw4;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p1, p3, Lhk1;->a:Lgk1;

    .line 16
    .line 17
    iget p2, p3, Lhk1;->b:I

    .line 18
    .line 19
    and-int/lit8 v0, p2, 0x7

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    :cond_0
    invoke-interface {p4}, Lk57;->i()Lav3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p3, v0, p4, p5}, Lhk1;->c(Ljava/lang/Object;Lk57;Lc13;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p4, v0}, Lk57;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object v1, p0

    .line 35
    check-cast v1, Lt96;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lt96;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lgk1;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget v0, p3, Lhk1;->d:I

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lgk1;->v()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v0, p2, :cond_0

    .line 56
    .line 57
    iput v0, p3, Lhk1;->d:I

    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    invoke-static {}, Lfg4;->b()Leg4;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0
.end method

.method public final D(ILhk1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    const v2, 0xfffff

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    and-int p0, p1, v2

    .line 11
    .line 12
    int-to-long p0, p0

    .line 13
    invoke-virtual {p2, v1}, Lhk1;->w(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p2, Lhk1;->a:Lgk1;

    .line 17
    .line 18
    invoke-virtual {p2}, Lgk1;->u()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p3, p0, p1, p2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean p0, p0, Lsd5;->f:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    and-int p0, p1, v2

    .line 31
    .line 32
    int-to-long p0, p0

    .line 33
    invoke-virtual {p2, v1}, Lhk1;->w(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p2, Lhk1;->a:Lgk1;

    .line 37
    .line 38
    invoke-virtual {p2}, Lgk1;->t()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p3, p0, p1, p2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    and-int p0, p1, v2

    .line 47
    .line 48
    int-to-long p0, p0

    .line 49
    invoke-virtual {p2}, Lhk1;->e()Lgy0;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p3, p0, p1, p2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final E(ILhk1;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lsd5;->k:Lyw4;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/2addr p1, v3

    .line 19
    int-to-long v0, p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p3, v0, v1}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p2, p0, v2}, Lhk1;->s(Lxd4;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    and-int/2addr p1, v3

    .line 32
    int-to-long v2, p1

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p3, v2, v3}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p2, p0, v1}, Lhk1;->s(Lxd4;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final G(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lsd5;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    shl-int p0, p1, p0

    .line 24
    .line 25
    sget-object p1, Lef8;->c:Ldf8;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    or-int/2addr p0, p1

    .line 32
    invoke-static {p2, v0, v1, p0}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final H(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lsd5;->a:[I

    .line 4
    .line 5
    aget p0, p0, p3

    .line 6
    .line 7
    const p3, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p3

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p2}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final I(Ljava/lang/Object;ILs4;)V
    .locals 3

    .line 1
    sget-object v0, Lsd5;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lsd5;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final J(Ljava/lang/Object;IILs4;)V
    .locals 3

    .line 1
    sget-object v0, Lsd5;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lsd5;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final L(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lsd5;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final M(Ljava/lang/Object;Lfu;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-object v7, v0, Lsd5;->a:[I

    array-length v8, v7

    .line 2
    sget-object v9, Lsd5;->o:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v8, :cond_10

    .line 3
    invoke-virtual {v0, v2}, Lsd5;->L(I)I

    move-result v5

    .line 4
    aget v12, v7, v2

    .line 5
    invoke-static {v5}, Lsd5;->K(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_2

    add-int/lit8 v14, v2, 0x2

    .line 6
    aget v14, v7, v14

    and-int v11, v14, v10

    if-eq v11, v3, :cond_1

    if-ne v11, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v11

    .line 7
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v11

    :cond_1
    ushr-int/lit8 v11, v14, 0x14

    shl-int v11, v15, v11

    move/from16 v32, v11

    move v11, v5

    move/from16 v5, v32

    goto :goto_2

    :cond_2
    move v11, v5

    const/4 v5, 0x0

    :goto_2
    and-int/2addr v11, v10

    int-to-long v10, v11

    const/16 v16, 0x3f

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_18

    .line 8
    :pswitch_0
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v10

    .line 10
    invoke-virtual {v6, v12, v5, v10}, Lfu;->f(ILjava/lang/Object;Lk57;)V

    goto :goto_3

    .line 11
    :pswitch_1
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {v1, v10, v11}, Lsd5;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 13
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    shl-long v17, v10, v15

    shr-long v10, v10, v16

    xor-long v10, v17, v10

    .line 14
    invoke-virtual {v5, v12, v10, v11}, Ljk1;->E(IJ)V

    goto :goto_3

    .line 15
    :pswitch_2
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 17
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    .line 18
    invoke-virtual {v10, v12, v5}, Ljk1;->C(II)V

    goto :goto_3

    .line 19
    :pswitch_3
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-static {v1, v10, v11}, Lsd5;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 21
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    .line 22
    invoke-virtual {v5, v12, v10, v11}, Ljk1;->t(IJ)V

    goto :goto_3

    .line 23
    :pswitch_4
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 25
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    .line 26
    invoke-virtual {v10, v12, v5}, Ljk1;->r(II)V

    goto :goto_3

    .line 27
    :pswitch_5
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 29
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    .line 30
    invoke-virtual {v10, v12, v5}, Ljk1;->v(II)V

    goto :goto_3

    .line 31
    :pswitch_6
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 32
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 33
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->C(II)V

    goto/16 :goto_3

    .line 34
    :pswitch_7
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 35
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgy0;

    .line 36
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->p(ILgy0;)V

    goto/16 :goto_3

    .line 37
    :pswitch_8
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 39
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v10

    .line 40
    iget-object v11, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v11, Ljk1;

    check-cast v5, Ls4;

    invoke-virtual {v11, v12, v5, v10}, Ljk1;->y(ILs4;Lk57;)V

    goto/16 :goto_3

    .line 41
    :pswitch_9
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 43
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->z(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 46
    :cond_4
    check-cast v5, Lgy0;

    .line 47
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->p(ILgy0;)V

    goto/16 :goto_3

    .line 48
    :pswitch_a
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    sget-object v5, Lef8;->c:Ldf8;

    invoke-virtual {v5, v1, v10, v11}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 51
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->o(IZ)V

    goto/16 :goto_3

    .line 52
    :pswitch_b
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 54
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->r(II)V

    goto/16 :goto_3

    .line 55
    :pswitch_c
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    invoke-static {v1, v10, v11}, Lsd5;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 57
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v10, v11}, Ljk1;->t(IJ)V

    goto/16 :goto_3

    .line 58
    :pswitch_d
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    invoke-static {v1, v10, v11}, Lsd5;->y(Ljava/lang/Object;J)I

    move-result v5

    .line 60
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10, v12, v5}, Ljk1;->v(II)V

    goto/16 :goto_3

    .line 61
    :pswitch_e
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    invoke-static {v1, v10, v11}, Lsd5;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 63
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v10, v11}, Ljk1;->E(IJ)V

    goto/16 :goto_3

    .line 64
    :pswitch_f
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    invoke-static {v1, v10, v11}, Lsd5;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 66
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    .line 67
    invoke-virtual {v5, v12, v10, v11}, Ljk1;->E(IJ)V

    goto/16 :goto_3

    .line 68
    :pswitch_10
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    sget-object v5, Lef8;->c:Ldf8;

    invoke-virtual {v5, v1, v10, v11}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 70
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 71
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v12, v5}, Ljk1;->r(II)V

    goto/16 :goto_3

    .line 73
    :pswitch_11
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    sget-object v5, Lef8;->c:Ldf8;

    invoke-virtual {v5, v1, v10, v11}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 76
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Ljk1;->t(IJ)V

    goto/16 :goto_3

    .line 78
    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 79
    div-int/lit8 v10, v2, 0x3

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    iget-object v13, v0, Lsd5;->b:[Ljava/lang/Object;

    aget-object v10, v13, v10

    .line 80
    iget-object v13, v0, Lsd5;->m:Ll65;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    check-cast v10, Lh65;

    .line 82
    iget-object v10, v10, Lh65;->a:Lka;

    iget-object v13, v10, Lka;->b:Ljava/lang/Object;

    check-cast v13, Lgw8;

    iget-object v10, v10, Lka;->a:Ljava/lang/Object;

    check-cast v10, Lgw8;

    .line 83
    check-cast v5, Lk65;

    .line 84
    iget-object v14, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v14, Ljk1;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-virtual {v5}, Lk65;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 86
    invoke-virtual {v14, v12, v11}, Ljk1;->B(II)V

    move/from16 v19, v11

    .line 87
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    move/from16 v20, v15

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 88
    sget v21, Ll63;->c:I

    .line 89
    invoke-static/range {v20 .. v20}, Ljk1;->h(I)I

    move-result v21

    move/from16 v22, v3

    .line 90
    sget-object v3, Lgw8;->d:Ldw8;

    if-ne v10, v3, :cond_5

    mul-int/lit8 v21, v21, 0x2

    .line 91
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    const-string v24, "There is no way to get here, but the compiler thinks otherwise."

    const/16 v25, 0x8

    const/16 v26, 0x4

    move/from16 v27, v4

    packed-switch v23, :pswitch_data_1

    .line 92
    invoke-static/range {v24 .. v24}, Lg84;->h(Ljava/lang/String;)V

    return-void

    .line 93
    :pswitch_13
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    shl-long v30, v28, v20

    shr-long v28, v28, v16

    xor-long v28, v30, v28

    .line 94
    invoke-static/range {v28 .. v29}, Ljk1;->j(J)I

    move-result v11

    :goto_5
    move-object/from16 v23, v5

    move v4, v11

    goto/16 :goto_a

    .line 95
    :pswitch_14
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    shl-int/lit8 v23, v11, 0x1

    shr-int/lit8 v11, v11, 0x1f

    xor-int v11, v23, v11

    .line 96
    invoke-static {v11}, Ljk1;->i(I)I

    move-result v11

    goto :goto_5

    .line 97
    :pswitch_15
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v5

    :goto_6
    move/from16 v4, v25

    goto/16 :goto_a

    .line 98
    :pswitch_16
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v5

    :goto_7
    move/from16 v4, v26

    goto/16 :goto_a

    .line 99
    :pswitch_17
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v23, v5

    int-to-long v4, v11

    .line 100
    invoke-static {v4, v5}, Ljk1;->j(J)I

    move-result v4

    goto/16 :goto_a

    :pswitch_18
    move-object/from16 v23, v5

    .line 101
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljk1;->i(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_19
    move-object/from16 v23, v5

    .line 102
    instance-of v4, v11, Lgy0;

    if-eqz v4, :cond_6

    .line 103
    check-cast v11, Lgy0;

    .line 104
    invoke-virtual {v11}, Lgy0;->size()I

    move-result v4

    .line 105
    invoke-static {v4}, Ljk1;->i(I)I

    move-result v5

    :goto_8
    add-int/2addr v4, v5

    goto/16 :goto_a

    .line 106
    :cond_6
    check-cast v11, [B

    .line 107
    array-length v4, v11

    .line 108
    invoke-static {v4}, Ljk1;->i(I)I

    move-result v5

    goto :goto_8

    :pswitch_1a
    move-object/from16 v23, v5

    .line 109
    check-cast v11, Ls4;

    .line 110
    check-cast v11, Lav3;

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v11, v4}, Lav3;->a(Lk57;)I

    move-result v5

    .line 112
    invoke-static {v5}, Ljk1;->i(I)I

    move-result v11

    add-int/2addr v5, v11

    :goto_9
    move v4, v5

    goto/16 :goto_a

    :pswitch_1b
    move-object/from16 v23, v5

    const/4 v4, 0x0

    .line 113
    check-cast v11, Ls4;

    .line 114
    check-cast v11, Lav3;

    .line 115
    invoke-virtual {v11, v4}, Lav3;->a(Lk57;)I

    move-result v5

    goto :goto_9

    :pswitch_1c
    move-object/from16 v23, v5

    .line 116
    instance-of v4, v11, Lgy0;

    if-eqz v4, :cond_7

    .line 117
    check-cast v11, Lgy0;

    .line 118
    invoke-virtual {v11}, Lgy0;->size()I

    move-result v4

    .line 119
    invoke-static {v4}, Ljk1;->i(I)I

    move-result v5

    goto :goto_8

    .line 120
    :cond_7
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljk1;->g(Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    :pswitch_1d
    move-object/from16 v23, v5

    .line 121
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v4, v20

    goto :goto_a

    :pswitch_1e
    move-object/from16 v23, v5

    .line 122
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_1f
    move-object/from16 v23, v5

    .line 123
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_6

    :pswitch_20
    move-object/from16 v23, v5

    .line 124
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 125
    invoke-static {v4, v5}, Ljk1;->j(J)I

    move-result v4

    goto :goto_a

    :pswitch_21
    move-object/from16 v23, v5

    .line 126
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljk1;->j(J)I

    move-result v4

    goto :goto_a

    :pswitch_22
    move-object/from16 v23, v5

    .line 127
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 128
    invoke-static {v4, v5}, Ljk1;->j(J)I

    move-result v4

    goto :goto_a

    :pswitch_23
    move-object/from16 v23, v5

    .line 129
    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_24
    move-object/from16 v23, v5

    .line 130
    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_6

    :goto_a
    add-int v4, v4, v21

    .line 131
    invoke-static/range {v19 .. v19}, Ljk1;->h(I)I

    move-result v5

    if-ne v13, v3, :cond_8

    mul-int/lit8 v5, v5, 0x2

    .line 132
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 133
    invoke-static/range {v24 .. v24}, Lg84;->h(Ljava/lang/String;)V

    return-void

    .line 134
    :pswitch_25
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    shl-long v28, v24, v20

    shr-long v24, v24, v16

    xor-long v24, v28, v24

    .line 135
    invoke-static/range {v24 .. v25}, Ljk1;->j(J)I

    move-result v3

    :goto_b
    move v11, v4

    goto/16 :goto_f

    .line 136
    :pswitch_26
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v11, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v11

    .line 137
    invoke-static {v3}, Ljk1;->i(I)I

    move-result v3

    goto :goto_b

    .line 138
    :pswitch_27
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v4

    :goto_c
    move/from16 v3, v25

    goto/16 :goto_f

    .line 139
    :pswitch_28
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v4

    :goto_d
    move/from16 v3, v26

    goto/16 :goto_f

    .line 140
    :pswitch_29
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v11, v4

    int-to-long v3, v3

    .line 141
    invoke-static {v3, v4}, Ljk1;->j(J)I

    move-result v3

    goto/16 :goto_f

    :pswitch_2a
    move v11, v4

    .line 142
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljk1;->i(I)I

    move-result v3

    goto/16 :goto_f

    :pswitch_2b
    move v11, v4

    .line 143
    instance-of v3, v15, Lgy0;

    if-eqz v3, :cond_9

    .line 144
    check-cast v15, Lgy0;

    .line 145
    invoke-virtual {v15}, Lgy0;->size()I

    move-result v3

    .line 146
    invoke-static {v3}, Ljk1;->i(I)I

    move-result v4

    :goto_e
    add-int/2addr v3, v4

    goto/16 :goto_f

    .line 147
    :cond_9
    check-cast v15, [B

    .line 148
    array-length v3, v15

    .line 149
    invoke-static {v3}, Ljk1;->i(I)I

    move-result v4

    goto :goto_e

    :pswitch_2c
    move v11, v4

    .line 150
    check-cast v15, Ls4;

    .line 151
    check-cast v15, Lav3;

    const/4 v4, 0x0

    .line 152
    invoke-virtual {v15, v4}, Lav3;->a(Lk57;)I

    move-result v3

    .line 153
    invoke-static {v3}, Ljk1;->i(I)I

    move-result v4

    goto :goto_e

    :pswitch_2d
    move v11, v4

    const/4 v4, 0x0

    .line 154
    check-cast v15, Ls4;

    .line 155
    check-cast v15, Lav3;

    .line 156
    invoke-virtual {v15, v4}, Lav3;->a(Lk57;)I

    move-result v3

    goto/16 :goto_f

    :pswitch_2e
    move v11, v4

    .line 157
    instance-of v3, v15, Lgy0;

    if-eqz v3, :cond_a

    .line 158
    check-cast v15, Lgy0;

    .line 159
    invoke-virtual {v15}, Lgy0;->size()I

    move-result v3

    .line 160
    invoke-static {v3}, Ljk1;->i(I)I

    move-result v4

    goto :goto_e

    .line 161
    :cond_a
    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljk1;->g(Ljava/lang/String;)I

    move-result v3

    goto :goto_f

    :pswitch_2f
    move v11, v4

    .line 162
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v20

    goto :goto_f

    :pswitch_30
    move v11, v4

    .line 163
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :pswitch_31
    move v11, v4

    .line 164
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :pswitch_32
    move v11, v4

    .line 165
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 166
    invoke-static {v3, v4}, Ljk1;->j(J)I

    move-result v3

    goto :goto_f

    :pswitch_33
    move v11, v4

    .line 167
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljk1;->j(J)I

    move-result v3

    goto :goto_f

    :pswitch_34
    move v11, v4

    .line 168
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 169
    invoke-static {v3, v4}, Ljk1;->j(J)I

    move-result v3

    goto :goto_f

    :pswitch_35
    move v11, v4

    .line 170
    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_d

    :pswitch_36
    move v11, v4

    .line 171
    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :goto_f
    add-int/2addr v3, v5

    add-int/2addr v3, v11

    .line 172
    invoke-virtual {v14, v3}, Ljk1;->D(I)V

    .line 173
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move/from16 v5, v20

    .line 174
    invoke-static {v14, v10, v5, v3}, Ll63;->b(Ljk1;Lgw8;ILjava/lang/Object;)V

    move/from16 v3, v19

    .line 175
    invoke-static {v14, v13, v3, v4}, Ll63;->b(Ljk1;Lgw8;ILjava/lang/Object;)V

    move v11, v3

    move/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v4, v27

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_b
    move/from16 v22, v3

    move/from16 v27, v4

    :cond_c
    :goto_10
    move/from16 v3, v22

    move/from16 v4, v27

    goto/16 :goto_3

    :pswitch_37
    move/from16 v22, v3

    move/from16 v27, v4

    .line 176
    aget v3, v7, v2

    .line 177
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 178
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v5

    .line 179
    sget-object v10, Lu57;->a:Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 180
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 182
    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 183
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v3, v11, v5}, Lfu;->f(ILjava/lang/Object;Lk57;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :pswitch_38
    move/from16 v22, v3

    move/from16 v27, v4

    .line 184
    aget v3, v7, v2

    .line 185
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    .line 186
    invoke-static {v3, v4, v6, v5}, Lu57;->x(ILjava/util/List;Lfu;Z)V

    goto :goto_10

    :pswitch_39
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 187
    aget v3, v7, v2

    .line 188
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 189
    invoke-static {v3, v4, v6, v5}, Lu57;->w(ILjava/util/List;Lfu;Z)V

    goto :goto_10

    :pswitch_3a
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 190
    aget v3, v7, v2

    .line 191
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 192
    invoke-static {v3, v4, v6, v5}, Lu57;->v(ILjava/util/List;Lfu;Z)V

    goto :goto_10

    :pswitch_3b
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 193
    aget v3, v7, v2

    .line 194
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 195
    invoke-static {v3, v4, v6, v5}, Lu57;->u(ILjava/util/List;Lfu;Z)V

    goto :goto_10

    :pswitch_3c
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 196
    aget v3, v7, v2

    .line 197
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 198
    invoke-static {v3, v4, v6, v5}, Lu57;->o(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_3d
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 199
    aget v3, v7, v2

    .line 200
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 201
    invoke-static {v3, v4, v6, v5}, Lu57;->y(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_3e
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 202
    aget v3, v7, v2

    .line 203
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 204
    invoke-static {v3, v4, v6, v5}, Lu57;->m(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_3f
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 205
    aget v3, v7, v2

    .line 206
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 207
    invoke-static {v3, v4, v6, v5}, Lu57;->p(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_40
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 208
    aget v3, v7, v2

    .line 209
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 210
    invoke-static {v3, v4, v6, v5}, Lu57;->q(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_41
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 211
    aget v3, v7, v2

    .line 212
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 213
    invoke-static {v3, v4, v6, v5}, Lu57;->s(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_42
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 214
    aget v3, v7, v2

    .line 215
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 216
    invoke-static {v3, v4, v6, v5}, Lu57;->z(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_43
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 217
    aget v3, v7, v2

    .line 218
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 219
    invoke-static {v3, v4, v6, v5}, Lu57;->t(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_44
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 220
    aget v3, v7, v2

    .line 221
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 222
    invoke-static {v3, v4, v6, v5}, Lu57;->r(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_45
    move/from16 v22, v3

    move/from16 v27, v4

    move v5, v15

    .line 223
    aget v3, v7, v2

    .line 224
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 225
    invoke-static {v3, v4, v6, v5}, Lu57;->n(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_10

    :pswitch_46
    move/from16 v22, v3

    move/from16 v27, v4

    .line 226
    aget v3, v7, v2

    .line 227
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    .line 228
    invoke-static {v3, v4, v6, v5}, Lu57;->x(ILjava/util/List;Lfu;Z)V

    :goto_12
    move v13, v5

    :goto_13
    move/from16 v3, v22

    move/from16 v4, v27

    goto/16 :goto_18

    :pswitch_47
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v5, 0x0

    .line 229
    aget v3, v7, v2

    .line 230
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 231
    invoke-static {v3, v4, v6, v5}, Lu57;->w(ILjava/util/List;Lfu;Z)V

    goto :goto_12

    :pswitch_48
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v5, 0x0

    .line 232
    aget v3, v7, v2

    .line 233
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 234
    invoke-static {v3, v4, v6, v5}, Lu57;->v(ILjava/util/List;Lfu;Z)V

    goto :goto_12

    :pswitch_49
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v5, 0x0

    .line 235
    aget v3, v7, v2

    .line 236
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 237
    invoke-static {v3, v4, v6, v5}, Lu57;->u(ILjava/util/List;Lfu;Z)V

    goto :goto_12

    :pswitch_4a
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v5, 0x0

    .line 238
    aget v3, v7, v2

    .line 239
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 240
    invoke-static {v3, v4, v6, v5}, Lu57;->o(ILjava/util/List;Lfu;Z)V

    goto :goto_12

    :pswitch_4b
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v5, 0x0

    .line 241
    aget v3, v7, v2

    .line 242
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 243
    invoke-static {v3, v4, v6, v5}, Lu57;->y(ILjava/util/List;Lfu;Z)V

    goto :goto_12

    :pswitch_4c
    move/from16 v22, v3

    move/from16 v27, v4

    .line 244
    aget v3, v7, v2

    .line 245
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 246
    sget-object v5, Lu57;->a:Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 247
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 248
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    .line 249
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_c

    .line 250
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgy0;

    invoke-virtual {v10, v3, v11}, Ljk1;->p(ILgy0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :pswitch_4d
    move/from16 v22, v3

    move/from16 v27, v4

    .line 251
    aget v3, v7, v2

    .line 252
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 253
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v5

    .line 254
    sget-object v10, Lu57;->a:Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 255
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 256
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    .line 257
    :goto_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 258
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 259
    iget-object v12, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v12, Ljk1;

    check-cast v11, Ls4;

    invoke-virtual {v12, v3, v11, v5}, Ljk1;->y(ILs4;Lk57;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :pswitch_4e
    move/from16 v22, v3

    move/from16 v27, v4

    .line 260
    aget v3, v7, v2

    .line 261
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 262
    sget-object v5, Lu57;->a:Ljava/lang/Class;

    if-eqz v4, :cond_c

    .line 263
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 264
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    .line 265
    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_c

    .line 266
    iget-object v10, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v10, Ljk1;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v3, v11}, Ljk1;->z(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :pswitch_4f
    move/from16 v22, v3

    move/from16 v27, v4

    .line 267
    aget v3, v7, v2

    .line 268
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    .line 269
    invoke-static {v3, v4, v6, v13}, Lu57;->m(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_50
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 270
    aget v3, v7, v2

    .line 271
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 272
    invoke-static {v3, v4, v6, v13}, Lu57;->p(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_51
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 273
    aget v3, v7, v2

    .line 274
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 275
    invoke-static {v3, v4, v6, v13}, Lu57;->q(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_52
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 276
    aget v3, v7, v2

    .line 277
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 278
    invoke-static {v3, v4, v6, v13}, Lu57;->s(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_53
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 279
    aget v3, v7, v2

    .line 280
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 281
    invoke-static {v3, v4, v6, v13}, Lu57;->z(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_54
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 282
    aget v3, v7, v2

    .line 283
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 284
    invoke-static {v3, v4, v6, v13}, Lu57;->t(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_55
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 285
    aget v3, v7, v2

    .line 286
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 287
    invoke-static {v3, v4, v6, v13}, Lu57;->r(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_56
    move/from16 v22, v3

    move/from16 v27, v4

    const/4 v13, 0x0

    .line 288
    aget v3, v7, v2

    .line 289
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 290
    invoke-static {v3, v4, v6, v13}, Lu57;->n(ILjava/util/List;Lfu;Z)V

    goto/16 :goto_13

    :pswitch_57
    const/4 v13, 0x0

    .line 291
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 292
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v10

    .line 293
    invoke-virtual {v6, v12, v5, v10}, Lfu;->f(ILjava/lang/Object;Lk57;)V

    goto/16 :goto_18

    :pswitch_58
    const/4 v13, 0x0

    .line 294
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 295
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 296
    iget-object v0, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v0, Ljk1;

    const/16 v20, 0x1

    shl-long v14, v10, v20

    shr-long v10, v10, v16

    xor-long/2addr v10, v14

    .line 297
    invoke-virtual {v0, v12, v10, v11}, Ljk1;->E(IJ)V

    :cond_d
    :goto_17
    move-object/from16 v0, p0

    goto/16 :goto_18

    :pswitch_59
    const/4 v13, 0x0

    .line 298
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 299
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 300
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    shl-int/lit8 v10, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v10

    .line 301
    invoke-virtual {v5, v12, v0}, Ljk1;->C(II)V

    goto :goto_17

    :pswitch_5a
    const/4 v13, 0x0

    .line 302
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 303
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 304
    iget-object v0, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v0, Ljk1;

    .line 305
    invoke-virtual {v0, v12, v10, v11}, Ljk1;->t(IJ)V

    goto :goto_17

    :pswitch_5b
    const/4 v13, 0x0

    .line 306
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 307
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 308
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    .line 309
    invoke-virtual {v5, v12, v0}, Ljk1;->r(II)V

    goto :goto_17

    :pswitch_5c
    const/4 v13, 0x0

    .line 310
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 311
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 312
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    .line 313
    invoke-virtual {v5, v12, v0}, Ljk1;->v(II)V

    goto :goto_17

    :pswitch_5d
    const/4 v13, 0x0

    .line 314
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 315
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 316
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->C(II)V

    goto :goto_17

    :pswitch_5e
    const/4 v13, 0x0

    .line 317
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 318
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgy0;

    .line 319
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->p(ILgy0;)V

    goto :goto_17

    :pswitch_5f
    const/4 v13, 0x0

    .line 320
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 321
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 322
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    move-result-object v10

    .line 323
    iget-object v11, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v11, Ljk1;

    check-cast v5, Ls4;

    invoke-virtual {v11, v12, v5, v10}, Ljk1;->y(ILs4;Lk57;)V

    goto/16 :goto_18

    :pswitch_60
    const/4 v13, 0x0

    .line 324
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 325
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 326
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 327
    check-cast v0, Ljava/lang/String;

    .line 328
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->z(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 329
    :cond_e
    check-cast v0, Lgy0;

    .line 330
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->p(ILgy0;)V

    goto/16 :goto_17

    :pswitch_61
    const/4 v13, 0x0

    .line 331
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 332
    sget-object v0, Lef8;->c:Ldf8;

    invoke-virtual {v0, v1, v10, v11}, Ldf8;->c(Ljava/lang/Object;J)Z

    move-result v0

    .line 333
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->o(IZ)V

    goto/16 :goto_17

    :pswitch_62
    const/4 v13, 0x0

    .line 334
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 335
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 336
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->r(II)V

    goto/16 :goto_17

    :pswitch_63
    const/4 v13, 0x0

    .line 337
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 338
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 339
    iget-object v0, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v0, Ljk1;

    invoke-virtual {v0, v12, v10, v11}, Ljk1;->t(IJ)V

    goto/16 :goto_17

    :pswitch_64
    const/4 v13, 0x0

    .line 340
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 341
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 342
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5, v12, v0}, Ljk1;->v(II)V

    goto/16 :goto_17

    :pswitch_65
    const/4 v13, 0x0

    .line 343
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 344
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 345
    iget-object v0, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v0, Ljk1;

    invoke-virtual {v0, v12, v10, v11}, Ljk1;->E(IJ)V

    goto/16 :goto_17

    :pswitch_66
    const/4 v13, 0x0

    .line 346
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 347
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 348
    iget-object v0, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v0, Ljk1;

    .line 349
    invoke-virtual {v0, v12, v10, v11}, Ljk1;->E(IJ)V

    goto/16 :goto_17

    :pswitch_67
    const/4 v13, 0x0

    .line 350
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 351
    sget-object v0, Lef8;->c:Ldf8;

    invoke-virtual {v0, v1, v10, v11}, Ldf8;->e(Ljava/lang/Object;J)F

    move-result v0

    .line 352
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v12, v0}, Ljk1;->r(II)V

    goto/16 :goto_17

    :pswitch_68
    const/4 v13, 0x0

    .line 354
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 355
    sget-object v5, Lef8;->c:Ldf8;

    invoke-virtual {v5, v1, v10, v11}, Ldf8;->d(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 356
    iget-object v5, v6, Lfu;->a:Ljava/lang/Object;

    check-cast v5, Ljk1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Ljk1;->t(IJ)V

    :cond_f
    :goto_18
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    goto/16 :goto_0

    .line 358
    :cond_10
    iget-object v0, v0, Lsd5;->l:Lke8;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    move-object v0, v1

    check-cast v0, Lav3;

    iget-object v0, v0, Lav3;->unknownFields:Lje8;

    .line 361
    invoke-virtual {v0, v6}, Lje8;->d(Lfu;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lfu;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lsd5;->M(Ljava/lang/Object;Lfu;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lsd5;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lsd5;->L(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v2

    .line 24
    int-to-long v6, v3

    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    invoke-static {v2}, Lsd5;->K(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lsd5;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_1
    move-object v5, p1

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    sget-object v2, Lef8;->c:Ldf8;

    .line 48
    .line 49
    invoke-virtual {v2, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {p1, v6, v7, v2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v1, v0}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lsd5;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    sget-object v2, Lef8;->c:Ldf8;

    .line 71
    .line 72
    invoke-virtual {v2, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1, v6, v7, v2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v0}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_4
    sget-object v1, Lu57;->a:Ljava/lang/Class;

    .line 84
    .line 85
    sget-object v1, Lef8;->c:Ldf8;

    .line 86
    .line 87
    invoke-virtual {v1, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v3, p0, Lsd5;->m:Ll65;

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1}, Ll65;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk65;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p1, v6, v7, v1}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_5
    iget-object v1, p0, Lsd5;->k:Lyw4;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lef8;->c:Ldf8;

    .line 114
    .line 115
    invoke-virtual {v1, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lxd4;

    .line 120
    .line 121
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lxd4;

    .line 126
    .line 127
    move-object v3, v2

    .line 128
    check-cast v3, Lt96;

    .line 129
    .line 130
    iget v3, v3, Lt96;->c:I

    .line 131
    .line 132
    move-object v4, v1

    .line 133
    check-cast v4, Lt96;

    .line 134
    .line 135
    iget v4, v4, Lt96;->c:I

    .line 136
    .line 137
    if-lez v3, :cond_2

    .line 138
    .line 139
    if-lez v4, :cond_2

    .line 140
    .line 141
    move-object v5, v2

    .line 142
    check-cast v5, Lt96;

    .line 143
    .line 144
    iget-boolean v5, v5, Lt96;->a:Z

    .line 145
    .line 146
    if-nez v5, :cond_1

    .line 147
    .line 148
    add-int/2addr v4, v3

    .line 149
    check-cast v2, Lt96;

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Lt96;->e(I)Lt96;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_1
    move-object v4, v2

    .line 156
    check-cast v4, Lt96;

    .line 157
    .line 158
    invoke-virtual {v4, v1}, Lt96;->addAll(Ljava/util/Collection;)Z

    .line 159
    .line 160
    .line 161
    :cond_2
    if-lez v3, :cond_3

    .line 162
    .line 163
    move-object v1, v2

    .line 164
    :cond_3
    invoke-static {p1, v6, v7, v1}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lsd5;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    .line 180
    sget-object v1, Lef8;->c:Ldf8;

    .line 181
    .line 182
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    invoke-static {p1, v6, v7, v1, v2}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    .line 200
    sget-object v1, Lef8;->c:Ldf8;

    .line 201
    .line 202
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_0

    .line 219
    .line 220
    sget-object v1, Lef8;->c:Ldf8;

    .line 221
    .line 222
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    invoke-static {p1, v6, v7, v1, v2}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_0

    .line 239
    .line 240
    sget-object v1, Lef8;->c:Ldf8;

    .line 241
    .line 242
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    .line 260
    sget-object v1, Lef8;->c:Ldf8;

    .line 261
    .line 262
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_0

    .line 279
    .line 280
    sget-object v1, Lef8;->c:Ldf8;

    .line 281
    .line 282
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_0

    .line 299
    .line 300
    sget-object v1, Lef8;->c:Ldf8;

    .line 301
    .line 302
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {p1, v6, v7, v1}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lsd5;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_1

    .line 318
    .line 319
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    .line 325
    sget-object v1, Lef8;->c:Ldf8;

    .line 326
    .line 327
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {p1, v6, v7, v1}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_0

    .line 344
    .line 345
    sget-object v1, Lef8;->c:Ldf8;

    .line 346
    .line 347
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->c(Ljava/lang/Object;J)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {v1, p1, v6, v7, v2}, Ldf8;->j(Ljava/lang/Object;JZ)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    .line 365
    sget-object v1, Lef8;->c:Ldf8;

    .line 366
    .line 367
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_0

    .line 384
    .line 385
    sget-object v1, Lef8;->c:Ldf8;

    .line 386
    .line 387
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {p1, v6, v7, v1, v2}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_0

    .line 404
    .line 405
    sget-object v1, Lef8;->c:Ldf8;

    .line 406
    .line 407
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    invoke-static {p1, v6, v7, v1}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_1

    .line 418
    .line 419
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_0

    .line 424
    .line 425
    sget-object v1, Lef8;->c:Ldf8;

    .line 426
    .line 427
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 428
    .line 429
    .line 430
    move-result-wide v1

    .line 431
    invoke-static {p1, v6, v7, v1, v2}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_0

    .line 444
    .line 445
    sget-object v1, Lef8;->c:Ldf8;

    .line 446
    .line 447
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 448
    .line 449
    .line 450
    move-result-wide v1

    .line 451
    invoke-static {p1, v6, v7, v1, v2}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_0

    .line 464
    .line 465
    sget-object v1, Lef8;->c:Ldf8;

    .line 466
    .line 467
    invoke-virtual {v1, p2, v6, v7}, Ldf8;->e(Ljava/lang/Object;J)F

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    invoke-virtual {v1, p1, v6, v7, v2}, Ldf8;->m(Ljava/lang/Object;JF)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p0, v0, p1}, Lsd5;->G(ILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_1

    .line 478
    .line 479
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_0

    .line 484
    .line 485
    sget-object v4, Lef8;->c:Ldf8;

    .line 486
    .line 487
    invoke-virtual {v4, p2, v6, v7}, Ldf8;->d(Ljava/lang/Object;J)D

    .line 488
    .line 489
    .line 490
    move-result-wide v8

    .line 491
    move-object v5, p1

    .line 492
    invoke-virtual/range {v4 .. v9}, Ldf8;->l(Ljava/lang/Object;JD)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v0, v5}, Lsd5;->G(ILjava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 499
    .line 500
    move-object p1, v5

    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_4
    move-object v5, p1

    .line 504
    iget-object p0, p0, Lsd5;->l:Lke8;

    .line 505
    .line 506
    invoke-static {p0, v5, p2}, Lu57;->k(Lke8;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :cond_5
    move-object v5, p1

    .line 511
    const-string p0, "Mutating immutable message: "

    .line 512
    .line 513
    invoke-static {v5, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lav3;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lav3;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lav3;->k(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Ls4;->memoizedHashCode:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lav3;->h()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lsd5;->a:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lsd5;->L(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v4}, Lsd5;->K(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v7, 0x9

    .line 48
    .line 49
    if-eq v4, v7, :cond_3

    .line 50
    .line 51
    const/16 v7, 0x3c

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    const/16 v7, 0x44

    .line 56
    .line 57
    if-eq v4, v7, :cond_2

    .line 58
    .line 59
    packed-switch v4, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    sget-object v4, Lsd5;->o:Lsun/misc/Unsafe;

    .line 64
    .line 65
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v8, p0, Lsd5;->m:Ll65;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-object v8, v7

    .line 77
    check-cast v8, Lk65;

    .line 78
    .line 79
    iput-boolean v1, v8, Lk65;->a:Z

    .line 80
    .line 81
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_1
    iget-object v4, p0, Lsd5;->k:Lyw4;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v4, Lef8;->c:Ldf8;

    .line 91
    .line 92
    invoke-virtual {v4, p1, v5, v6}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lxd4;

    .line 97
    .line 98
    check-cast v4, Lt96;

    .line 99
    .line 100
    iget-boolean v5, v4, Lt96;->a:Z

    .line 101
    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    iput-boolean v1, v4, Lt96;->a:Z

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    aget v4, v0, v3

    .line 108
    .line 109
    invoke-virtual {p0, p1, v4, v3}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lsd5;->m(I)Lk57;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    sget-object v7, Lsd5;->o:Lsun/misc/Unsafe;

    .line 120
    .line 121
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v4, v5}, Lk57;->c(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Lsd5;->m(I)Lk57;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    sget-object v7, Lsd5;->o:Lsun/misc/Unsafe;

    .line 140
    .line 141
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v4, v5}, Lk57;->c(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    iget-object p0, p0, Lsd5;->l:Lke8;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    check-cast p1, Lav3;

    .line 157
    .line 158
    iget-object p0, p1, Lav3;->unknownFields:Lje8;

    .line 159
    .line 160
    iget-boolean p1, p0, Lje8;->e:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    iput-boolean v1, p0, Lje8;->e:Z

    .line 165
    .line 166
    :cond_6
    :goto_2
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v6, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move v2, v6

    .line 10
    move v3, v7

    .line 11
    move v8, v3

    .line 12
    :goto_0
    iget v4, v0, Lsd5;->h:I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v8, v4, :cond_e

    .line 16
    .line 17
    iget-object v4, v0, Lsd5;->g:[I

    .line 18
    .line 19
    aget v4, v4, v8

    .line 20
    .line 21
    iget-object v9, v0, Lsd5;->a:[I

    .line 22
    .line 23
    aget v10, v9, v4

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lsd5;->L(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    add-int/lit8 v12, v4, 0x2

    .line 30
    .line 31
    aget v9, v9, v12

    .line 32
    .line 33
    and-int v12, v9, v6

    .line 34
    .line 35
    ushr-int/lit8 v9, v9, 0x14

    .line 36
    .line 37
    shl-int/2addr v5, v9

    .line 38
    if-eq v12, v2, :cond_1

    .line 39
    .line 40
    if-eq v12, v6, :cond_0

    .line 41
    .line 42
    sget-object v2, Lsd5;->o:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_0
    move v2, v4

    .line 50
    move v4, v3

    .line 51
    move v3, v12

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v15, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v4

    .line 56
    move v4, v15

    .line 57
    :goto_1
    const/high16 v9, 0x10000000

    .line 58
    .line 59
    and-int/2addr v9, v11

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_2
    invoke-static {v11}, Lsd5;->K(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/16 v12, 0x9

    .line 75
    .line 76
    if-eq v9, v12, :cond_c

    .line 77
    .line 78
    const/16 v12, 0x11

    .line 79
    .line 80
    if-eq v9, v12, :cond_c

    .line 81
    .line 82
    const/16 v5, 0x1b

    .line 83
    .line 84
    if-eq v9, v5, :cond_9

    .line 85
    .line 86
    const/16 v5, 0x3c

    .line 87
    .line 88
    if-eq v9, v5, :cond_8

    .line 89
    .line 90
    const/16 v5, 0x44

    .line 91
    .line 92
    if-eq v9, v5, :cond_8

    .line 93
    .line 94
    const/16 v5, 0x31

    .line 95
    .line 96
    if-eq v9, v5, :cond_9

    .line 97
    .line 98
    const/16 v5, 0x32

    .line 99
    .line 100
    if-eq v9, v5, :cond_3

    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_3
    and-int v5, v11, v6

    .line 105
    .line 106
    int-to-long v9, v5

    .line 107
    sget-object v5, Lef8;->c:Ldf8;

    .line 108
    .line 109
    invoke-virtual {v5, v1, v9, v10}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v9, v0, Lsd5;->m:Ll65;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast v5, Lk65;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_4

    .line 125
    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_4
    div-int/lit8 v2, v2, 0x3

    .line 129
    .line 130
    mul-int/lit8 v2, v2, 0x2

    .line 131
    .line 132
    iget-object v9, v0, Lsd5;->b:[Ljava/lang/Object;

    .line 133
    .line 134
    aget-object v2, v9, v2

    .line 135
    .line 136
    check-cast v2, Lh65;

    .line 137
    .line 138
    iget-object v2, v2, Lh65;->a:Lka;

    .line 139
    .line 140
    iget-object v2, v2, Lka;->b:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v2, Lgw8;

    .line 143
    .line 144
    iget-object v2, v2, Lgw8;->a:Lhw8;

    .line 145
    .line 146
    sget-object v9, Lhw8;->q:Lhw8;

    .line 147
    .line 148
    if-eq v2, v9, :cond_5

    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/4 v5, 0x0

    .line 161
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_d

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-nez v5, :cond_7

    .line 172
    .line 173
    sget-object v5, Ls96;->c:Ls96;

    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v5, v10}, Ls96;->a(Ljava/lang/Class;)Lk57;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :cond_7
    invoke-interface {v5, v9}, Lk57;->d(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-nez v9, :cond_6

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    invoke-virtual {v0, v1, v10, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_d

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    and-int v5, v11, v6

    .line 201
    .line 202
    int-to-long v9, v5

    .line 203
    sget-object v5, Lef8;->c:Ldf8;

    .line 204
    .line 205
    invoke-virtual {v5, v1, v9, v10}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-interface {v2, v5}, Lk57;->d(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-nez v2, :cond_d

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    and-int v5, v11, v6

    .line 217
    .line 218
    int-to-long v9, v5

    .line 219
    sget-object v5, Lef8;->c:Ldf8;

    .line 220
    .line 221
    invoke-virtual {v5, v1, v9, v10}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_a

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_a
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    move v9, v7

    .line 239
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-ge v9, v10, :cond_d

    .line 244
    .line 245
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-interface {v2, v10}, Lk57;->d(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-nez v10, :cond_b

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_c
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_d

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    and-int v5, v11, v6

    .line 270
    .line 271
    int-to-long v9, v5

    .line 272
    sget-object v5, Lef8;->c:Ldf8;

    .line 273
    .line 274
    invoke-virtual {v5, v1, v9, v10}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-interface {v2, v5}, Lk57;->d(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_d

    .line 283
    .line 284
    :goto_3
    return v7

    .line 285
    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 286
    .line 287
    move v2, v3

    .line 288
    move v3, v4

    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_e
    return v5
.end method

.method public final e(Lav3;Lav3;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lsd5;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lsd5;->L(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Lsd5;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    sget-object v9, Lef8;->c:Ldf8;

    .line 35
    .line 36
    invoke-virtual {v9, p1, v5, v6}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {v9, p2, v5, v6}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v10, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v9, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v9, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    move v4, v2

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_1
    sget-object v4, Lef8;->c:Ldf8;

    .line 66
    .line 67
    invoke-virtual {v4, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_2
    sget-object v4, Lef8;->c:Ldf8;

    .line 82
    .line 83
    invoke-virtual {v4, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v5, v4}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    sget-object v5, Lef8;->c:Ldf8;

    .line 104
    .line 105
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v6, v5}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_0

    .line 126
    .line 127
    sget-object v5, Lef8;->c:Ldf8;

    .line 128
    .line 129
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    cmp-long v5, v9, v5

    .line 138
    .line 139
    if-nez v5, :cond_0

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_0

    .line 148
    .line 149
    sget-object v5, Lef8;->c:Ldf8;

    .line 150
    .line 151
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-ne v6, v5, :cond_0

    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_0

    .line 168
    .line 169
    sget-object v5, Lef8;->c:Ldf8;

    .line 170
    .line 171
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long v5, v9, v5

    .line 180
    .line 181
    if-nez v5, :cond_0

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_0

    .line 190
    .line 191
    sget-object v5, Lef8;->c:Ldf8;

    .line 192
    .line 193
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-ne v6, v5, :cond_0

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_0

    .line 210
    .line 211
    sget-object v5, Lef8;->c:Ldf8;

    .line 212
    .line 213
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ne v6, v5, :cond_0

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_0

    .line 230
    .line 231
    sget-object v5, Lef8;->c:Ldf8;

    .line 232
    .line 233
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ne v6, v5, :cond_0

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_0

    .line 250
    .line 251
    sget-object v5, Lef8;->c:Ldf8;

    .line 252
    .line 253
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v6, v5}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    sget-object v5, Lef8;->c:Ldf8;

    .line 276
    .line 277
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v6, v5}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_0

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_0

    .line 298
    .line 299
    sget-object v5, Lef8;->c:Ldf8;

    .line 300
    .line 301
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v6, v5}, Lu57;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_0

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_0

    .line 322
    .line 323
    sget-object v5, Lef8;->c:Ldf8;

    .line 324
    .line 325
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->c(Ljava/lang/Object;J)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->c(Ljava/lang/Object;J)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-ne v6, v5, :cond_0

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_0

    .line 342
    .line 343
    sget-object v5, Lef8;->c:Ldf8;

    .line 344
    .line 345
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-ne v6, v5, :cond_0

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_0

    .line 362
    .line 363
    sget-object v5, Lef8;->c:Ldf8;

    .line 364
    .line 365
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    cmp-long v5, v9, v5

    .line 374
    .line 375
    if-nez v5, :cond_0

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_0

    .line 384
    .line 385
    sget-object v5, Lef8;->c:Ldf8;

    .line 386
    .line 387
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ne v6, v5, :cond_0

    .line 396
    .line 397
    goto :goto_1

    .line 398
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_0

    .line 403
    .line 404
    sget-object v5, Lef8;->c:Ldf8;

    .line 405
    .line 406
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 411
    .line 412
    .line 413
    move-result-wide v5

    .line 414
    cmp-long v5, v9, v5

    .line 415
    .line 416
    if-nez v5, :cond_0

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_0

    .line 424
    .line 425
    sget-object v5, Lef8;->c:Ldf8;

    .line 426
    .line 427
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 428
    .line 429
    .line 430
    move-result-wide v9

    .line 431
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v5

    .line 435
    cmp-long v5, v9, v5

    .line 436
    .line 437
    if-nez v5, :cond_0

    .line 438
    .line 439
    goto :goto_1

    .line 440
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_0

    .line 445
    .line 446
    sget-object v5, Lef8;->c:Ldf8;

    .line 447
    .line 448
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->e(Ljava/lang/Object;J)F

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->e(Ljava/lang/Object;J)F

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v6, v5, :cond_0

    .line 465
    .line 466
    goto :goto_1

    .line 467
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lsd5;->j(Lav3;Lav3;I)Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v5, :cond_0

    .line 472
    .line 473
    sget-object v5, Lef8;->c:Ldf8;

    .line 474
    .line 475
    invoke-virtual {v5, p1, v7, v8}, Ldf8;->d(Ljava/lang/Object;J)D

    .line 476
    .line 477
    .line 478
    move-result-wide v9

    .line 479
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 480
    .line 481
    .line 482
    move-result-wide v9

    .line 483
    invoke-virtual {v5, p2, v7, v8}, Ldf8;->d(Ljava/lang/Object;J)D

    .line 484
    .line 485
    .line 486
    move-result-wide v5

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    cmp-long v5, v9, v5

    .line 492
    .line 493
    if-nez v5, :cond_0

    .line 494
    .line 495
    :goto_1
    if-nez v4, :cond_1

    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_2
    iget-object p0, p0, Lsd5;->l:Lke8;

    .line 503
    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object p0, p1, Lav3;->unknownFields:Lje8;

    .line 508
    .line 509
    iget-object p1, p2, Lav3;->unknownFields:Lje8;

    .line 510
    .line 511
    invoke-virtual {p0, p1}, Lje8;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result p0

    .line 515
    if-nez p0, :cond_3

    .line 516
    .line 517
    :goto_2
    return v2

    .line 518
    :cond_3
    return v4

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Lhk1;Lc13;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_f

    .line 17
    .line 18
    iget-object v8, v1, Lsd5;->l:Lke8;

    .line 19
    .line 20
    iget-object v9, v1, Lsd5;->g:[I

    .line 21
    .line 22
    iget v10, v1, Lsd5;->i:I

    .line 23
    .line 24
    iget v11, v1, Lsd5;->h:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v12, v0

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lhk1;->a()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Lsd5;->A(I)I

    .line 33
    .line 34
    .line 35
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v13, 0x0

    .line 37
    if-gez v3, :cond_5

    .line 38
    .line 39
    const v3, 0x7fffffff

    .line 40
    .line 41
    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    :goto_1
    if-ge v11, v10, :cond_0

    .line 45
    .line 46
    aget v0, v9, v11

    .line 47
    .line 48
    invoke-virtual {v1, v0, v2, v12}, Lsd5;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    if-eqz v12, :cond_b

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    :goto_2
    move-object v0, v2

    .line 60
    check-cast v0, Lav3;

    .line 61
    .line 62
    iput-object v12, v0, Lav3;->unknownFields:Lje8;

    .line 63
    .line 64
    goto/16 :goto_e

    .line 65
    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    if-nez v12, :cond_2

    .line 70
    .line 71
    invoke-static {v2}, Lke8;->a(Ljava/lang/Object;)Lje8;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move-object v12, v0

    .line 76
    goto :goto_4

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    :goto_3
    move-object v6, v1

    .line 79
    goto/16 :goto_10

    .line 80
    .line 81
    :cond_2
    :goto_4
    invoke-static {v13, v4, v12}, Lke8;->b(ILhk1;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    :goto_5
    if-ge v11, v10, :cond_4

    .line 89
    .line 90
    aget v0, v9, v11

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2, v12}, Lsd5;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v11, v11, 0x1

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_4
    if-eqz v12, :cond_b

    .line 99
    .line 100
    :goto_6
    goto :goto_2

    .line 101
    :cond_5
    :try_start_2
    invoke-virtual {v1, v3}, Lsd5;->L(I)I

    .line 102
    .line 103
    .line 104
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-static {v6}, Lsd5;->K(I)I

    .line 106
    .line 107
    .line 108
    move-result v7
    :try_end_3
    .catch Leg4; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    const/4 v15, 0x3

    .line 110
    iget-object v14, v1, Lsd5;->k:Lyw4;

    .line 111
    .line 112
    packed-switch v7, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    if-nez v12, :cond_6

    .line 116
    .line 117
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lke8;->a(Ljava/lang/Object;)Lje8;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object v12, v0

    .line 125
    goto :goto_8

    .line 126
    :catch_0
    move-object v6, v1

    .line 127
    :goto_7
    move-object v14, v4

    .line 128
    goto/16 :goto_c

    .line 129
    .line 130
    :cond_6
    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v13, v4, v12}, Lke8;->b(ILhk1;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0
    :try_end_4
    .catch Leg4; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    :goto_9
    if-ge v11, v10, :cond_7

    .line 140
    .line 141
    aget v0, v9, v11

    .line 142
    .line 143
    invoke-virtual {v1, v0, v2, v12}, Lsd5;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v11, v11, 0x1

    .line 147
    .line 148
    goto :goto_9

    .line 149
    :cond_7
    if-eqz v12, :cond_b

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->v(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Ls4;

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lsd5;->m(I)Lk57;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v4, v15}, Lhk1;->w(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v6, v7, v5}, Lhk1;->b(Ljava/lang/Object;Lk57;Lc13;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2, v0, v3, v6}, Lsd5;->J(Ljava/lang/Object;IILs4;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_a
    move-object v6, v1

    .line 172
    move-object v14, v4

    .line 173
    goto/16 :goto_f

    .line 174
    .line 175
    :pswitch_1
    invoke-static {v6}, Lsd5;->x(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v6

    .line 179
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 180
    .line 181
    .line 182
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 183
    .line 184
    invoke-virtual {v14}, Lgk1;->s()J

    .line 185
    .line 186
    .line 187
    move-result-wide v14

    .line 188
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 196
    .line 197
    .line 198
    goto :goto_a

    .line 199
    :pswitch_2
    invoke-static {v6}, Lsd5;->x(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v6

    .line 203
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 204
    .line 205
    .line 206
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 207
    .line 208
    invoke-virtual {v14}, Lgk1;->r()I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 220
    .line 221
    .line 222
    goto :goto_a

    .line 223
    :pswitch_3
    invoke-static {v6}, Lsd5;->x(I)J

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    const/4 v14, 0x1

    .line 228
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 229
    .line 230
    .line 231
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 232
    .line 233
    invoke-virtual {v14}, Lgk1;->q()J

    .line 234
    .line 235
    .line 236
    move-result-wide v14

    .line 237
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    goto :goto_a

    .line 248
    :pswitch_4
    invoke-static {v6}, Lsd5;->x(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v6

    .line 252
    const/4 v14, 0x5

    .line 253
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 254
    .line 255
    .line 256
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 257
    .line 258
    invoke-virtual {v14}, Lgk1;->p()I

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 270
    .line 271
    .line 272
    goto :goto_a

    .line 273
    :pswitch_5
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 274
    .line 275
    .line 276
    iget-object v7, v4, Lhk1;->a:Lgk1;

    .line 277
    .line 278
    invoke-virtual {v7}, Lgk1;->j()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    invoke-virtual {v1, v3}, Lsd5;->l(I)V

    .line 283
    .line 284
    .line 285
    invoke-static {v6}, Lsd5;->x(I)J

    .line 286
    .line 287
    .line 288
    move-result-wide v14

    .line 289
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-static {v2, v14, v15, v6}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_a

    .line 300
    .line 301
    :pswitch_6
    invoke-static {v6}, Lsd5;->x(I)J

    .line 302
    .line 303
    .line 304
    move-result-wide v6

    .line 305
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 306
    .line 307
    .line 308
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 309
    .line 310
    invoke-virtual {v14}, Lgk1;->w()I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_a

    .line 325
    .line 326
    :pswitch_7
    invoke-static {v6}, Lsd5;->x(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v6

    .line 330
    invoke-virtual {v4}, Lhk1;->e()Lgy0;

    .line 331
    .line 332
    .line 333
    move-result-object v14

    .line 334
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_a

    .line 341
    .line 342
    :pswitch_8
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->v(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Ls4;

    .line 347
    .line 348
    invoke-virtual {v1, v3}, Lsd5;->m(I)Lk57;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    const/4 v14, 0x2

    .line 353
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v6, v7, v5}, Lhk1;->c(Ljava/lang/Object;Lk57;Lc13;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2, v0, v3, v6}, Lsd5;->J(Ljava/lang/Object;IILs4;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_a

    .line 363
    .line 364
    :pswitch_9
    invoke-virtual {v1, v6, v4, v2}, Lsd5;->D(ILhk1;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_a

    .line 371
    .line 372
    :pswitch_a
    invoke-static {v6}, Lsd5;->x(I)J

    .line 373
    .line 374
    .line 375
    move-result-wide v6

    .line 376
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 377
    .line 378
    .line 379
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 380
    .line 381
    invoke-virtual {v14}, Lgk1;->f()Z

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_a

    .line 396
    .line 397
    :pswitch_b
    invoke-static {v6}, Lsd5;->x(I)J

    .line 398
    .line 399
    .line 400
    move-result-wide v6

    .line 401
    const/4 v14, 0x5

    .line 402
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 403
    .line 404
    .line 405
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 406
    .line 407
    invoke-virtual {v14}, Lgk1;->k()I

    .line 408
    .line 409
    .line 410
    move-result v14

    .line 411
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_a

    .line 422
    .line 423
    :pswitch_c
    invoke-static {v6}, Lsd5;->x(I)J

    .line 424
    .line 425
    .line 426
    move-result-wide v6

    .line 427
    const/4 v14, 0x1

    .line 428
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 429
    .line 430
    .line 431
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 432
    .line 433
    invoke-virtual {v14}, Lgk1;->l()J

    .line 434
    .line 435
    .line 436
    move-result-wide v14

    .line 437
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_a

    .line 448
    .line 449
    :pswitch_d
    invoke-static {v6}, Lsd5;->x(I)J

    .line 450
    .line 451
    .line 452
    move-result-wide v6

    .line 453
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 454
    .line 455
    .line 456
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 457
    .line 458
    invoke-virtual {v14}, Lgk1;->n()I

    .line 459
    .line 460
    .line 461
    move-result v14

    .line 462
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_a

    .line 473
    .line 474
    :pswitch_e
    invoke-static {v6}, Lsd5;->x(I)J

    .line 475
    .line 476
    .line 477
    move-result-wide v6

    .line 478
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 479
    .line 480
    .line 481
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 482
    .line 483
    invoke-virtual {v14}, Lgk1;->x()J

    .line 484
    .line 485
    .line 486
    move-result-wide v14

    .line 487
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v14

    .line 491
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_a

    .line 498
    .line 499
    :pswitch_f
    invoke-static {v6}, Lsd5;->x(I)J

    .line 500
    .line 501
    .line 502
    move-result-wide v6

    .line 503
    invoke-virtual {v4, v13}, Lhk1;->w(I)V

    .line 504
    .line 505
    .line 506
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 507
    .line 508
    invoke-virtual {v14}, Lgk1;->o()J

    .line 509
    .line 510
    .line 511
    move-result-wide v14

    .line 512
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 513
    .line 514
    .line 515
    move-result-object v14

    .line 516
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_a

    .line 523
    .line 524
    :pswitch_10
    invoke-static {v6}, Lsd5;->x(I)J

    .line 525
    .line 526
    .line 527
    move-result-wide v6

    .line 528
    const/4 v14, 0x5

    .line 529
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 530
    .line 531
    .line 532
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 533
    .line 534
    invoke-virtual {v14}, Lgk1;->m()F

    .line 535
    .line 536
    .line 537
    move-result v14

    .line 538
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 539
    .line 540
    .line 541
    move-result-object v14

    .line 542
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_a

    .line 549
    .line 550
    :pswitch_11
    invoke-static {v6}, Lsd5;->x(I)J

    .line 551
    .line 552
    .line 553
    move-result-wide v6

    .line 554
    const/4 v14, 0x1

    .line 555
    invoke-virtual {v4, v14}, Lhk1;->w(I)V

    .line 556
    .line 557
    .line 558
    iget-object v14, v4, Lhk1;->a:Lgk1;

    .line 559
    .line 560
    invoke-virtual {v14}, Lgk1;->h()D

    .line 561
    .line 562
    .line 563
    move-result-wide v14

    .line 564
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 565
    .line 566
    .line 567
    move-result-object v14

    .line 568
    invoke-static {v2, v6, v7, v14}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2, v0, v3}, Lsd5;->H(Ljava/lang/Object;II)V
    :try_end_5
    .catch Leg4; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 572
    .line 573
    .line 574
    goto/16 :goto_a

    .line 575
    .line 576
    :pswitch_12
    :try_start_6
    iget-object v0, v1, Lsd5;->b:[Ljava/lang/Object;

    .line 577
    .line 578
    div-int/lit8 v6, v3, 0x3

    .line 579
    .line 580
    const/16 v16, 0x2

    .line 581
    .line 582
    mul-int/lit8 v6, v6, 0x2

    .line 583
    .line 584
    aget-object v0, v0, v6

    .line 585
    .line 586
    move-object v6, v4

    .line 587
    move-object v4, v0

    .line 588
    invoke-virtual/range {v1 .. v6}, Lsd5;->r(Ljava/lang/Object;ILjava/lang/Object;Lc13;Lhk1;)V

    .line 589
    .line 590
    .line 591
    move-object/from16 v2, p1

    .line 592
    .line 593
    move-object/from16 v14, p2

    .line 594
    .line 595
    move-object v6, v1

    .line 596
    goto/16 :goto_f

    .line 597
    .line 598
    :catchall_1
    move-exception v0

    .line 599
    move-object/from16 v2, p1

    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    .line 603
    :catch_1
    move-object/from16 v2, p1

    .line 604
    .line 605
    move-object/from16 v14, p2

    .line 606
    .line 607
    move-object v6, v1

    .line 608
    goto/16 :goto_c

    .line 609
    .line 610
    :pswitch_13
    move v7, v3

    .line 611
    invoke-static {v6}, Lsd5;->x(I)J

    .line 612
    .line 613
    .line 614
    move-result-wide v3

    .line 615
    invoke-virtual {v1, v7}, Lsd5;->m(I)Lk57;

    .line 616
    .line 617
    .line 618
    move-result-object v6
    :try_end_6
    .catch Leg4; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 619
    move-object/from16 v2, p1

    .line 620
    .line 621
    move-object/from16 v5, p2

    .line 622
    .line 623
    move-object/from16 v7, p3

    .line 624
    .line 625
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Lsd5;->B(Ljava/lang/Object;JLhk1;Lk57;Lc13;)V
    :try_end_7
    .catch Leg4; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 626
    .line 627
    .line 628
    move-object v4, v5

    .line 629
    goto/16 :goto_a

    .line 630
    .line 631
    :catch_2
    move-object v6, v1

    .line 632
    move-object v14, v5

    .line 633
    goto/16 :goto_c

    .line 634
    .line 635
    :pswitch_14
    :try_start_8
    invoke-static {v6}, Lsd5;->x(I)J

    .line 636
    .line 637
    .line 638
    move-result-wide v5

    .line 639
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-virtual {v4, v0}, Lhk1;->r(Lxd4;)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_a

    .line 650
    .line 651
    :pswitch_15
    invoke-static {v6}, Lsd5;->x(I)J

    .line 652
    .line 653
    .line 654
    move-result-wide v5

    .line 655
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v4, v0}, Lhk1;->q(Lxd4;)V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_a

    .line 666
    .line 667
    :pswitch_16
    invoke-static {v6}, Lsd5;->x(I)J

    .line 668
    .line 669
    .line 670
    move-result-wide v5

    .line 671
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v4, v0}, Lhk1;->p(Lxd4;)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_a

    .line 682
    .line 683
    :pswitch_17
    invoke-static {v6}, Lsd5;->x(I)J

    .line 684
    .line 685
    .line 686
    move-result-wide v5

    .line 687
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v4, v0}, Lhk1;->o(Lxd4;)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_a

    .line 698
    .line 699
    :pswitch_18
    move v7, v3

    .line 700
    invoke-static {v6}, Lsd5;->x(I)J

    .line 701
    .line 702
    .line 703
    move-result-wide v5

    .line 704
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    invoke-virtual {v4, v3}, Lhk1;->h(Lxd4;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1, v7}, Lsd5;->l(I)V

    .line 715
    .line 716
    .line 717
    invoke-static {v2, v0, v3, v12, v8}, Lu57;->j(Ljava/lang/Object;ILxd4;Ljava/lang/Object;Lke8;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    goto/16 :goto_a

    .line 721
    .line 722
    :pswitch_19
    invoke-static {v6}, Lsd5;->x(I)J

    .line 723
    .line 724
    .line 725
    move-result-wide v5

    .line 726
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v4, v0}, Lhk1;->t(Lxd4;)V

    .line 734
    .line 735
    .line 736
    goto/16 :goto_a

    .line 737
    .line 738
    :pswitch_1a
    invoke-static {v6}, Lsd5;->x(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v5

    .line 742
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v4, v0}, Lhk1;->d(Lxd4;)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_a

    .line 753
    .line 754
    :pswitch_1b
    invoke-static {v6}, Lsd5;->x(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v4, v0}, Lhk1;->j(Lxd4;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_a

    .line 769
    .line 770
    :pswitch_1c
    invoke-static {v6}, Lsd5;->x(I)J

    .line 771
    .line 772
    .line 773
    move-result-wide v5

    .line 774
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v4, v0}, Lhk1;->k(Lxd4;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_a

    .line 785
    .line 786
    :pswitch_1d
    invoke-static {v6}, Lsd5;->x(I)J

    .line 787
    .line 788
    .line 789
    move-result-wide v5

    .line 790
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v4, v0}, Lhk1;->m(Lxd4;)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_a

    .line 801
    .line 802
    :pswitch_1e
    invoke-static {v6}, Lsd5;->x(I)J

    .line 803
    .line 804
    .line 805
    move-result-wide v5

    .line 806
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v4, v0}, Lhk1;->u(Lxd4;)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_a

    .line 817
    .line 818
    :pswitch_1f
    invoke-static {v6}, Lsd5;->x(I)J

    .line 819
    .line 820
    .line 821
    move-result-wide v5

    .line 822
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {v4, v0}, Lhk1;->n(Lxd4;)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_a

    .line 833
    .line 834
    :pswitch_20
    invoke-static {v6}, Lsd5;->x(I)J

    .line 835
    .line 836
    .line 837
    move-result-wide v5

    .line 838
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v4, v0}, Lhk1;->l(Lxd4;)V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_a

    .line 849
    .line 850
    :pswitch_21
    invoke-static {v6}, Lsd5;->x(I)J

    .line 851
    .line 852
    .line 853
    move-result-wide v5

    .line 854
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v4, v0}, Lhk1;->g(Lxd4;)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_a

    .line 865
    .line 866
    :pswitch_22
    invoke-static {v6}, Lsd5;->x(I)J

    .line 867
    .line 868
    .line 869
    move-result-wide v5

    .line 870
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 871
    .line 872
    .line 873
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v4, v0}, Lhk1;->r(Lxd4;)V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_a

    .line 881
    .line 882
    :pswitch_23
    invoke-static {v6}, Lsd5;->x(I)J

    .line 883
    .line 884
    .line 885
    move-result-wide v5

    .line 886
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {v4, v0}, Lhk1;->q(Lxd4;)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_a

    .line 897
    .line 898
    :pswitch_24
    invoke-static {v6}, Lsd5;->x(I)J

    .line 899
    .line 900
    .line 901
    move-result-wide v5

    .line 902
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 903
    .line 904
    .line 905
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {v4, v0}, Lhk1;->p(Lxd4;)V

    .line 910
    .line 911
    .line 912
    goto/16 :goto_a

    .line 913
    .line 914
    :pswitch_25
    invoke-static {v6}, Lsd5;->x(I)J

    .line 915
    .line 916
    .line 917
    move-result-wide v5

    .line 918
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-virtual {v4, v0}, Lhk1;->o(Lxd4;)V

    .line 926
    .line 927
    .line 928
    goto/16 :goto_a

    .line 929
    .line 930
    :pswitch_26
    move v7, v3

    .line 931
    invoke-static {v6}, Lsd5;->x(I)J

    .line 932
    .line 933
    .line 934
    move-result-wide v5

    .line 935
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    invoke-virtual {v4, v3}, Lhk1;->h(Lxd4;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v1, v7}, Lsd5;->l(I)V

    .line 946
    .line 947
    .line 948
    invoke-static {v2, v0, v3, v12, v8}, Lu57;->j(Ljava/lang/Object;ILxd4;Ljava/lang/Object;Lke8;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    goto/16 :goto_a

    .line 952
    .line 953
    :pswitch_27
    invoke-static {v6}, Lsd5;->x(I)J

    .line 954
    .line 955
    .line 956
    move-result-wide v5

    .line 957
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    invoke-virtual {v4, v0}, Lhk1;->t(Lxd4;)V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_a

    .line 968
    .line 969
    :pswitch_28
    invoke-static {v6}, Lsd5;->x(I)J

    .line 970
    .line 971
    .line 972
    move-result-wide v5

    .line 973
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    invoke-static {v2, v5, v6}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    invoke-virtual {v4, v0}, Lhk1;->f(Lxd4;)V
    :try_end_8
    .catch Leg4; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 981
    .line 982
    .line 983
    goto/16 :goto_a

    .line 984
    .line 985
    :pswitch_29
    move v7, v3

    .line 986
    :try_start_9
    invoke-virtual {v1, v7}, Lsd5;->m(I)Lk57;

    .line 987
    .line 988
    .line 989
    move-result-object v5
    :try_end_9
    .catch Leg4; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 990
    move v3, v6

    .line 991
    move-object/from16 v6, p3

    .line 992
    .line 993
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lsd5;->C(Ljava/lang/Object;ILhk1;Lk57;Lc13;)V
    :try_end_a
    .catch Leg4; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 994
    .line 995
    .line 996
    move-object v0, v6

    .line 997
    move-object v6, v1

    .line 998
    move-object v1, v0

    .line 999
    move-object v0, v4

    .line 1000
    :goto_b
    move-object v14, v0

    .line 1001
    goto/16 :goto_f

    .line 1002
    .line 1003
    :catch_3
    move-object/from16 v17, v6

    .line 1004
    .line 1005
    move-object v6, v1

    .line 1006
    move-object/from16 v1, v17

    .line 1007
    .line 1008
    goto/16 :goto_7

    .line 1009
    .line 1010
    :catch_4
    move-object v6, v1

    .line 1011
    move-object/from16 v1, p3

    .line 1012
    .line 1013
    goto/16 :goto_7

    .line 1014
    .line 1015
    :pswitch_2a
    move-object v0, v4

    .line 1016
    move v3, v6

    .line 1017
    move-object v6, v1

    .line 1018
    move-object v1, v5

    .line 1019
    :try_start_b
    invoke-virtual {v6, v3, v0, v2}, Lsd5;->E(ILhk1;Ljava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_b

    .line 1023
    :catch_5
    move-object v14, v0

    .line 1024
    goto/16 :goto_c

    .line 1025
    .line 1026
    :pswitch_2b
    move-object v0, v4

    .line 1027
    move v3, v6

    .line 1028
    move-object v6, v1

    .line 1029
    move-object v1, v5

    .line 1030
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v3

    .line 1034
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-virtual {v0, v3}, Lhk1;->d(Lxd4;)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_b

    .line 1045
    :catchall_2
    move-exception v0

    .line 1046
    goto/16 :goto_10

    .line 1047
    .line 1048
    :pswitch_2c
    move-object v0, v4

    .line 1049
    move v3, v6

    .line 1050
    move-object v6, v1

    .line 1051
    move-object v1, v5

    .line 1052
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1053
    .line 1054
    .line 1055
    move-result-wide v3

    .line 1056
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    .line 1058
    .line 1059
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    invoke-virtual {v0, v3}, Lhk1;->j(Lxd4;)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_b

    .line 1067
    :pswitch_2d
    move-object v0, v4

    .line 1068
    move v3, v6

    .line 1069
    move-object v6, v1

    .line 1070
    move-object v1, v5

    .line 1071
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1072
    .line 1073
    .line 1074
    move-result-wide v3

    .line 1075
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    invoke-virtual {v0, v3}, Lhk1;->k(Lxd4;)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_b

    .line 1086
    :pswitch_2e
    move-object v0, v4

    .line 1087
    move v3, v6

    .line 1088
    move-object v6, v1

    .line 1089
    move-object v1, v5

    .line 1090
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v3

    .line 1094
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    invoke-virtual {v0, v3}, Lhk1;->m(Lxd4;)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_b

    .line 1105
    :pswitch_2f
    move-object v0, v4

    .line 1106
    move v3, v6

    .line 1107
    move-object v6, v1

    .line 1108
    move-object v1, v5

    .line 1109
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v3

    .line 1113
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v3

    .line 1120
    invoke-virtual {v0, v3}, Lhk1;->u(Lxd4;)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_b

    .line 1124
    :pswitch_30
    move-object v0, v4

    .line 1125
    move v3, v6

    .line 1126
    move-object v6, v1

    .line 1127
    move-object v1, v5

    .line 1128
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1129
    .line 1130
    .line 1131
    move-result-wide v3

    .line 1132
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1133
    .line 1134
    .line 1135
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v3

    .line 1139
    invoke-virtual {v0, v3}, Lhk1;->n(Lxd4;)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_b

    .line 1143
    .line 1144
    :pswitch_31
    move-object v0, v4

    .line 1145
    move v3, v6

    .line 1146
    move-object v6, v1

    .line 1147
    move-object v1, v5

    .line 1148
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v3

    .line 1152
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    invoke-virtual {v0, v3}, Lhk1;->l(Lxd4;)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_b

    .line 1163
    .line 1164
    :pswitch_32
    move-object v0, v4

    .line 1165
    move v3, v6

    .line 1166
    move-object v6, v1

    .line 1167
    move-object v1, v5

    .line 1168
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v3

    .line 1172
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v2, v3, v4}, Lyw4;->a(Ljava/lang/Object;J)Lxd4;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-virtual {v0, v3}, Lhk1;->g(Lxd4;)V

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_b

    .line 1183
    .line 1184
    :pswitch_33
    move-object v6, v1

    .line 1185
    move v7, v3

    .line 1186
    move-object v0, v4

    .line 1187
    move-object v1, v5

    .line 1188
    invoke-virtual {v6, v7, v2}, Lsd5;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v3

    .line 1192
    check-cast v3, Ls4;

    .line 1193
    .line 1194
    invoke-virtual {v6, v7}, Lsd5;->m(I)Lk57;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    invoke-virtual {v0, v15}, Lhk1;->w(I)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v0, v3, v4, v1}, Lhk1;->b(Ljava/lang/Object;Lk57;Lc13;)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v6, v2, v7, v3}, Lsd5;->I(Ljava/lang/Object;ILs4;)V

    .line 1205
    .line 1206
    .line 1207
    goto/16 :goto_b

    .line 1208
    .line 1209
    :pswitch_34
    move v7, v3

    .line 1210
    move-object v0, v4

    .line 1211
    move v3, v6

    .line 1212
    move-object v6, v1

    .line 1213
    move-object v1, v5

    .line 1214
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1215
    .line 1216
    .line 1217
    move-result-wide v3

    .line 1218
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1219
    .line 1220
    .line 1221
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1222
    .line 1223
    invoke-virtual {v5}, Lgk1;->s()J

    .line 1224
    .line 1225
    .line 1226
    move-result-wide v14

    .line 1227
    invoke-static {v2, v3, v4, v14, v15}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1231
    .line 1232
    .line 1233
    goto/16 :goto_b

    .line 1234
    .line 1235
    :pswitch_35
    move v7, v3

    .line 1236
    move-object v0, v4

    .line 1237
    move v3, v6

    .line 1238
    move-object v6, v1

    .line 1239
    move-object v1, v5

    .line 1240
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1241
    .line 1242
    .line 1243
    move-result-wide v3

    .line 1244
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1245
    .line 1246
    .line 1247
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1248
    .line 1249
    invoke-virtual {v5}, Lgk1;->r()I

    .line 1250
    .line 1251
    .line 1252
    move-result v5

    .line 1253
    invoke-static {v2, v3, v4, v5}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_b

    .line 1260
    .line 1261
    :pswitch_36
    move v7, v3

    .line 1262
    move-object v0, v4

    .line 1263
    move v3, v6

    .line 1264
    move-object v6, v1

    .line 1265
    move-object v1, v5

    .line 1266
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1267
    .line 1268
    .line 1269
    move-result-wide v3

    .line 1270
    const/4 v14, 0x1

    .line 1271
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1272
    .line 1273
    .line 1274
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1275
    .line 1276
    invoke-virtual {v5}, Lgk1;->q()J

    .line 1277
    .line 1278
    .line 1279
    move-result-wide v14

    .line 1280
    invoke-static {v2, v3, v4, v14, v15}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    goto/16 :goto_b

    .line 1287
    .line 1288
    :pswitch_37
    move v7, v3

    .line 1289
    move-object v0, v4

    .line 1290
    move v3, v6

    .line 1291
    move-object v6, v1

    .line 1292
    move-object v1, v5

    .line 1293
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1294
    .line 1295
    .line 1296
    move-result-wide v3

    .line 1297
    const/4 v14, 0x5

    .line 1298
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1299
    .line 1300
    .line 1301
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1302
    .line 1303
    invoke-virtual {v5}, Lgk1;->p()I

    .line 1304
    .line 1305
    .line 1306
    move-result v5

    .line 1307
    invoke-static {v2, v3, v4, v5}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1311
    .line 1312
    .line 1313
    goto/16 :goto_b

    .line 1314
    .line 1315
    :pswitch_38
    move v7, v3

    .line 1316
    move-object v0, v4

    .line 1317
    move v3, v6

    .line 1318
    move-object v6, v1

    .line 1319
    move-object v1, v5

    .line 1320
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v4, v0, Lhk1;->a:Lgk1;

    .line 1324
    .line 1325
    invoke-virtual {v4}, Lgk1;->j()I

    .line 1326
    .line 1327
    .line 1328
    move-result v4

    .line 1329
    invoke-virtual {v6, v7}, Lsd5;->l(I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1333
    .line 1334
    .line 1335
    move-result-wide v14

    .line 1336
    invoke-static {v2, v14, v15, v4}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_b

    .line 1343
    .line 1344
    :pswitch_39
    move v7, v3

    .line 1345
    move-object v0, v4

    .line 1346
    move v3, v6

    .line 1347
    move-object v6, v1

    .line 1348
    move-object v1, v5

    .line 1349
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1350
    .line 1351
    .line 1352
    move-result-wide v3

    .line 1353
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1354
    .line 1355
    .line 1356
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1357
    .line 1358
    invoke-virtual {v5}, Lgk1;->w()I

    .line 1359
    .line 1360
    .line 1361
    move-result v5

    .line 1362
    invoke-static {v2, v3, v4, v5}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_b

    .line 1369
    .line 1370
    :pswitch_3a
    move v7, v3

    .line 1371
    move-object v0, v4

    .line 1372
    move v3, v6

    .line 1373
    move-object v6, v1

    .line 1374
    move-object v1, v5

    .line 1375
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v3

    .line 1379
    invoke-virtual {v0}, Lhk1;->e()Lgy0;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v5

    .line 1383
    invoke-static {v2, v3, v4, v5}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1387
    .line 1388
    .line 1389
    goto/16 :goto_b

    .line 1390
    .line 1391
    :pswitch_3b
    move-object v6, v1

    .line 1392
    move v7, v3

    .line 1393
    move-object v0, v4

    .line 1394
    move-object v1, v5

    .line 1395
    invoke-virtual {v6, v7, v2}, Lsd5;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    check-cast v3, Ls4;

    .line 1400
    .line 1401
    invoke-virtual {v6, v7}, Lsd5;->m(I)Lk57;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v4

    .line 1405
    const/4 v14, 0x2

    .line 1406
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v0, v3, v4, v1}, Lhk1;->c(Ljava/lang/Object;Lk57;Lc13;)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v6, v2, v7, v3}, Lsd5;->I(Ljava/lang/Object;ILs4;)V

    .line 1413
    .line 1414
    .line 1415
    goto/16 :goto_b

    .line 1416
    .line 1417
    :pswitch_3c
    move v7, v3

    .line 1418
    move-object v0, v4

    .line 1419
    move v3, v6

    .line 1420
    move-object v6, v1

    .line 1421
    move-object v1, v5

    .line 1422
    invoke-virtual {v6, v3, v0, v2}, Lsd5;->D(ILhk1;Ljava/lang/Object;)V

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1426
    .line 1427
    .line 1428
    goto/16 :goto_b

    .line 1429
    .line 1430
    :pswitch_3d
    move v7, v3

    .line 1431
    move-object v0, v4

    .line 1432
    move v3, v6

    .line 1433
    move-object v6, v1

    .line 1434
    move-object v1, v5

    .line 1435
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1436
    .line 1437
    .line 1438
    move-result-wide v3

    .line 1439
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1440
    .line 1441
    .line 1442
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1443
    .line 1444
    invoke-virtual {v5}, Lgk1;->f()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v5

    .line 1448
    sget-object v14, Lef8;->c:Ldf8;

    .line 1449
    .line 1450
    invoke-virtual {v14, v2, v3, v4, v5}, Ldf8;->j(Ljava/lang/Object;JZ)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_b

    .line 1457
    .line 1458
    :pswitch_3e
    move v7, v3

    .line 1459
    move-object v0, v4

    .line 1460
    move v3, v6

    .line 1461
    move-object v6, v1

    .line 1462
    move-object v1, v5

    .line 1463
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1464
    .line 1465
    .line 1466
    move-result-wide v3

    .line 1467
    const/4 v14, 0x5

    .line 1468
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1469
    .line 1470
    .line 1471
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1472
    .line 1473
    invoke-virtual {v5}, Lgk1;->k()I

    .line 1474
    .line 1475
    .line 1476
    move-result v5

    .line 1477
    invoke-static {v2, v3, v4, v5}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1481
    .line 1482
    .line 1483
    goto/16 :goto_b

    .line 1484
    .line 1485
    :pswitch_3f
    move v7, v3

    .line 1486
    move-object v0, v4

    .line 1487
    move v3, v6

    .line 1488
    move-object v6, v1

    .line 1489
    move-object v1, v5

    .line 1490
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1491
    .line 1492
    .line 1493
    move-result-wide v3

    .line 1494
    const/4 v14, 0x1

    .line 1495
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1496
    .line 1497
    .line 1498
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1499
    .line 1500
    invoke-virtual {v5}, Lgk1;->l()J

    .line 1501
    .line 1502
    .line 1503
    move-result-wide v14

    .line 1504
    invoke-static {v2, v3, v4, v14, v15}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1508
    .line 1509
    .line 1510
    goto/16 :goto_b

    .line 1511
    .line 1512
    :pswitch_40
    move v7, v3

    .line 1513
    move-object v0, v4

    .line 1514
    move v3, v6

    .line 1515
    move-object v6, v1

    .line 1516
    move-object v1, v5

    .line 1517
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1518
    .line 1519
    .line 1520
    move-result-wide v3

    .line 1521
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1525
    .line 1526
    invoke-virtual {v5}, Lgk1;->n()I

    .line 1527
    .line 1528
    .line 1529
    move-result v5

    .line 1530
    invoke-static {v2, v3, v4, v5}, Lef8;->m(Ljava/lang/Object;JI)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_b

    .line 1537
    .line 1538
    :pswitch_41
    move v7, v3

    .line 1539
    move-object v0, v4

    .line 1540
    move v3, v6

    .line 1541
    move-object v6, v1

    .line 1542
    move-object v1, v5

    .line 1543
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1544
    .line 1545
    .line 1546
    move-result-wide v3

    .line 1547
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1548
    .line 1549
    .line 1550
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1551
    .line 1552
    invoke-virtual {v5}, Lgk1;->x()J

    .line 1553
    .line 1554
    .line 1555
    move-result-wide v14

    .line 1556
    invoke-static {v2, v3, v4, v14, v15}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1560
    .line 1561
    .line 1562
    goto/16 :goto_b

    .line 1563
    .line 1564
    :pswitch_42
    move v7, v3

    .line 1565
    move-object v0, v4

    .line 1566
    move v3, v6

    .line 1567
    move-object v6, v1

    .line 1568
    move-object v1, v5

    .line 1569
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1570
    .line 1571
    .line 1572
    move-result-wide v3

    .line 1573
    invoke-virtual {v0, v13}, Lhk1;->w(I)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1577
    .line 1578
    invoke-virtual {v5}, Lgk1;->o()J

    .line 1579
    .line 1580
    .line 1581
    move-result-wide v14

    .line 1582
    invoke-static {v2, v3, v4, v14, v15}, Lef8;->n(Ljava/lang/Object;JJ)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1586
    .line 1587
    .line 1588
    goto/16 :goto_b

    .line 1589
    .line 1590
    :pswitch_43
    move v7, v3

    .line 1591
    move-object v0, v4

    .line 1592
    move v3, v6

    .line 1593
    move-object v6, v1

    .line 1594
    move-object v1, v5

    .line 1595
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1596
    .line 1597
    .line 1598
    move-result-wide v3

    .line 1599
    const/4 v14, 0x5

    .line 1600
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1604
    .line 1605
    invoke-virtual {v5}, Lgk1;->m()F

    .line 1606
    .line 1607
    .line 1608
    move-result v5

    .line 1609
    sget-object v14, Lef8;->c:Ldf8;

    .line 1610
    .line 1611
    invoke-virtual {v14, v2, v3, v4, v5}, Ldf8;->m(Ljava/lang/Object;JF)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_b

    .line 1618
    .line 1619
    :pswitch_44
    move v7, v3

    .line 1620
    move-object v0, v4

    .line 1621
    move v3, v6

    .line 1622
    move-object v6, v1

    .line 1623
    move-object v1, v5

    .line 1624
    invoke-static {v3}, Lsd5;->x(I)J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v3

    .line 1628
    const/4 v14, 0x1

    .line 1629
    invoke-virtual {v0, v14}, Lhk1;->w(I)V

    .line 1630
    .line 1631
    .line 1632
    iget-object v5, v0, Lhk1;->a:Lgk1;

    .line 1633
    .line 1634
    invoke-virtual {v5}, Lgk1;->h()D

    .line 1635
    .line 1636
    .line 1637
    move-result-wide v14
    :try_end_b
    .catch Leg4; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1638
    :try_start_c
    sget-object v0, Lef8;->c:Ldf8;
    :try_end_c
    .catch Leg4; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1639
    .line 1640
    move-object v1, v2

    .line 1641
    move-wide v2, v3

    .line 1642
    move-wide v4, v14

    .line 1643
    move-object/from16 v14, p2

    .line 1644
    .line 1645
    :try_start_d
    invoke-virtual/range {v0 .. v5}, Ldf8;->l(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Leg4; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1646
    .line 1647
    .line 1648
    move-object v2, v1

    .line 1649
    :try_start_e
    invoke-virtual {v6, v7, v2}, Lsd5;->G(ILjava/lang/Object;)V
    :try_end_e
    .catch Leg4; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1650
    .line 1651
    .line 1652
    goto :goto_f

    .line 1653
    :catchall_3
    move-exception v0

    .line 1654
    move-object v2, v1

    .line 1655
    goto :goto_10

    .line 1656
    :catch_6
    move-object v2, v1

    .line 1657
    goto :goto_c

    .line 1658
    :catch_7
    move-object/from16 v14, p2

    .line 1659
    .line 1660
    :catch_8
    :goto_c
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1661
    .line 1662
    .line 1663
    if-nez v12, :cond_9

    .line 1664
    .line 1665
    invoke-static {v2}, Lke8;->a(Ljava/lang/Object;)Lje8;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v0

    .line 1669
    move-object v12, v0

    .line 1670
    :cond_9
    invoke-static {v13, v14, v12}, Lke8;->b(ILhk1;Ljava/lang/Object;)Z

    .line 1671
    .line 1672
    .line 1673
    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1674
    if-nez v0, :cond_c

    .line 1675
    .line 1676
    :goto_d
    if-ge v11, v10, :cond_a

    .line 1677
    .line 1678
    aget v0, v9, v11

    .line 1679
    .line 1680
    invoke-virtual {v6, v0, v2, v12}, Lsd5;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1681
    .line 1682
    .line 1683
    add-int/lit8 v11, v11, 0x1

    .line 1684
    .line 1685
    goto :goto_d

    .line 1686
    :cond_a
    if-eqz v12, :cond_b

    .line 1687
    .line 1688
    goto/16 :goto_6

    .line 1689
    .line 1690
    :cond_b
    :goto_e
    return-void

    .line 1691
    :cond_c
    :goto_f
    move-object/from16 v5, p3

    .line 1692
    .line 1693
    move-object v1, v6

    .line 1694
    move-object v4, v14

    .line 1695
    goto/16 :goto_0

    .line 1696
    .line 1697
    :goto_10
    if-ge v11, v10, :cond_d

    .line 1698
    .line 1699
    aget v1, v9, v11

    .line 1700
    .line 1701
    invoke-virtual {v6, v1, v2, v12}, Lsd5;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1702
    .line 1703
    .line 1704
    add-int/lit8 v11, v11, 0x1

    .line 1705
    .line 1706
    goto :goto_10

    .line 1707
    :cond_d
    if-eqz v12, :cond_e

    .line 1708
    .line 1709
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1710
    .line 1711
    .line 1712
    move-object v1, v2

    .line 1713
    check-cast v1, Lav3;

    .line 1714
    .line 1715
    iput-object v12, v1, Lav3;->unknownFields:Lje8;

    .line 1716
    .line 1717
    :cond_e
    throw v0

    .line 1718
    :cond_f
    const-string v0, "Mutating immutable message: "

    .line 1719
    .line 1720
    invoke-static {v2, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    return-void

    .line 1724
    nop

    .line 1725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lav3;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lsd5;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lsd5;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Lsd5;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    sget-object v4, Lef8;->c:Ldf8;

    .line 41
    .line 42
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {p1, v6, v7}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    mul-int/lit8 v3, v3, 0x35

    .line 80
    .line 81
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    goto :goto_1

    .line 86
    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    mul-int/lit8 v3, v3, 0x35

    .line 93
    .line 94
    invoke-static {p1, v6, v7}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    goto :goto_1

    .line 103
    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    mul-int/lit8 v3, v3, 0x35

    .line 110
    .line 111
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    goto :goto_1

    .line 116
    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    mul-int/lit8 v3, v3, 0x35

    .line 123
    .line 124
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    goto :goto_1

    .line 129
    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    mul-int/lit8 v3, v3, 0x35

    .line 136
    .line 137
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto :goto_1

    .line 142
    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_2

    .line 147
    .line 148
    mul-int/lit8 v3, v3, 0x35

    .line 149
    .line 150
    sget-object v4, Lef8;->c:Ldf8;

    .line 151
    .line 152
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_1

    .line 161
    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    sget-object v4, Lef8;->c:Ldf8;

    .line 168
    .line 169
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    mul-int/lit8 v3, v3, 0x35

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    goto :goto_1

    .line 180
    :pswitch_9
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_2

    .line 185
    .line 186
    mul-int/lit8 v3, v3, 0x35

    .line 187
    .line 188
    sget-object v4, Lef8;->c:Ldf8;

    .line 189
    .line 190
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_a
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_2

    .line 207
    .line 208
    mul-int/lit8 v3, v3, 0x35

    .line 209
    .line 210
    sget-object v4, Lef8;->c:Ldf8;

    .line 211
    .line 212
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    sget-object v5, Lyd4;->a:Ljava/nio/charset/Charset;

    .line 223
    .line 224
    if-eqz v4, :cond_0

    .line 225
    .line 226
    :goto_2
    move v8, v9

    .line 227
    :cond_0
    add-int/2addr v8, v3

    .line 228
    move v3, v8

    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :pswitch_b
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_2

    .line 236
    .line 237
    mul-int/lit8 v3, v3, 0x35

    .line 238
    .line 239
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_c
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_2

    .line 250
    .line 251
    mul-int/lit8 v3, v3, 0x35

    .line 252
    .line 253
    invoke-static {p1, v6, v7}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 254
    .line 255
    .line 256
    move-result-wide v4

    .line 257
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :pswitch_d
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_2

    .line 268
    .line 269
    mul-int/lit8 v3, v3, 0x35

    .line 270
    .line 271
    invoke-static {p1, v6, v7}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :pswitch_e
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eqz v4, :cond_2

    .line 282
    .line 283
    mul-int/lit8 v3, v3, 0x35

    .line 284
    .line 285
    invoke-static {p1, v6, v7}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :pswitch_f
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_2

    .line 300
    .line 301
    mul-int/lit8 v3, v3, 0x35

    .line 302
    .line 303
    invoke-static {p1, v6, v7}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 304
    .line 305
    .line 306
    move-result-wide v4

    .line 307
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :pswitch_10
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_2

    .line 318
    .line 319
    mul-int/lit8 v3, v3, 0x35

    .line 320
    .line 321
    sget-object v4, Lef8;->c:Ldf8;

    .line 322
    .line 323
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Ljava/lang/Float;

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :pswitch_11
    invoke-virtual {p0, p1, v5, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_2

    .line 344
    .line 345
    mul-int/lit8 v3, v3, 0x35

    .line 346
    .line 347
    sget-object v4, Lef8;->c:Ldf8;

    .line 348
    .line 349
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Ljava/lang/Double;

    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 356
    .line 357
    .line 358
    move-result-wide v4

    .line 359
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 360
    .line 361
    .line 362
    move-result-wide v4

    .line 363
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 370
    .line 371
    sget-object v4, Lef8;->c:Ldf8;

    .line 372
    .line 373
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    goto/16 :goto_1

    .line 382
    .line 383
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 384
    .line 385
    sget-object v4, Lef8;->c:Ldf8;

    .line 386
    .line 387
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :pswitch_14
    sget-object v4, Lef8;->c:Ldf8;

    .line 398
    .line 399
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    if-eqz v4, :cond_1

    .line 404
    .line 405
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    .line 410
    .line 411
    add-int/2addr v3, v10

    .line 412
    goto/16 :goto_4

    .line 413
    .line 414
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 415
    .line 416
    sget-object v4, Lef8;->c:Ldf8;

    .line 417
    .line 418
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4

    .line 422
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 429
    .line 430
    sget-object v4, Lef8;->c:Ldf8;

    .line 431
    .line 432
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    goto/16 :goto_1

    .line 437
    .line 438
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 439
    .line 440
    sget-object v4, Lef8;->c:Ldf8;

    .line 441
    .line 442
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 443
    .line 444
    .line 445
    move-result-wide v4

    .line 446
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 453
    .line 454
    sget-object v4, Lef8;->c:Ldf8;

    .line 455
    .line 456
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 463
    .line 464
    sget-object v4, Lef8;->c:Ldf8;

    .line 465
    .line 466
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 473
    .line 474
    sget-object v4, Lef8;->c:Ldf8;

    .line 475
    .line 476
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 483
    .line 484
    sget-object v4, Lef8;->c:Ldf8;

    .line 485
    .line 486
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    goto/16 :goto_1

    .line 495
    .line 496
    :pswitch_1c
    sget-object v4, Lef8;->c:Ldf8;

    .line 497
    .line 498
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    if-eqz v4, :cond_1

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    goto :goto_3

    .line 509
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 510
    .line 511
    sget-object v4, Lef8;->c:Ldf8;

    .line 512
    .line 513
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    check-cast v4, Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 526
    .line 527
    sget-object v4, Lef8;->c:Ldf8;

    .line 528
    .line 529
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->c(Ljava/lang/Object;J)Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    sget-object v5, Lyd4;->a:Ljava/nio/charset/Charset;

    .line 534
    .line 535
    if-eqz v4, :cond_0

    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 540
    .line 541
    sget-object v4, Lef8;->c:Ldf8;

    .line 542
    .line 543
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    goto/16 :goto_1

    .line 548
    .line 549
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 550
    .line 551
    sget-object v4, Lef8;->c:Ldf8;

    .line 552
    .line 553
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 554
    .line 555
    .line 556
    move-result-wide v4

    .line 557
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    goto/16 :goto_1

    .line 562
    .line 563
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 564
    .line 565
    sget-object v4, Lef8;->c:Ldf8;

    .line 566
    .line 567
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    goto/16 :goto_1

    .line 572
    .line 573
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 574
    .line 575
    sget-object v4, Lef8;->c:Ldf8;

    .line 576
    .line 577
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 578
    .line 579
    .line 580
    move-result-wide v4

    .line 581
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    goto/16 :goto_1

    .line 586
    .line 587
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 588
    .line 589
    sget-object v4, Lef8;->c:Ldf8;

    .line 590
    .line 591
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 592
    .line 593
    .line 594
    move-result-wide v4

    .line 595
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    goto/16 :goto_1

    .line 600
    .line 601
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 602
    .line 603
    sget-object v4, Lef8;->c:Ldf8;

    .line 604
    .line 605
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->e(Ljava/lang/Object;J)F

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    goto/16 :goto_1

    .line 614
    .line 615
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 616
    .line 617
    sget-object v4, Lef8;->c:Ldf8;

    .line 618
    .line 619
    invoke-virtual {v4, p1, v6, v7}, Ldf8;->d(Ljava/lang/Object;J)D

    .line 620
    .line 621
    .line 622
    move-result-wide v4

    .line 623
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 624
    .line 625
    .line 626
    move-result-wide v4

    .line 627
    invoke-static {v4, v5}, Lyd4;->b(J)I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    goto/16 :goto_1

    .line 632
    .line 633
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 638
    .line 639
    iget-object p0, p0, Lsd5;->l:Lke8;

    .line 640
    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object p0, p1, Lav3;->unknownFields:Lje8;

    .line 645
    .line 646
    invoke-virtual {p0}, Lje8;->hashCode()I

    .line 647
    .line 648
    .line 649
    move-result p0

    .line 650
    add-int/2addr p0, v3

    .line 651
    return p0

    .line 652
    nop

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lav3;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Lsd5;->o:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const v8, 0xfffff

    .line 8
    .line 9
    .line 10
    move v3, v8

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    :goto_0
    iget-object v5, v0, Lsd5;->a:[I

    .line 15
    .line 16
    array-length v10, v5

    .line 17
    if-ge v2, v10, :cond_23

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lsd5;->L(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    invoke-static {v10}, Lsd5;->K(I)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    aget v12, v5, v2

    .line 28
    .line 29
    add-int/lit8 v13, v2, 0x2

    .line 30
    .line 31
    aget v5, v5, v13

    .line 32
    .line 33
    and-int v13, v5, v8

    .line 34
    .line 35
    const/16 v14, 0x11

    .line 36
    .line 37
    const/4 v15, 0x1

    .line 38
    if-gt v11, v14, :cond_2

    .line 39
    .line 40
    if-eq v13, v3, :cond_1

    .line 41
    .line 42
    if-ne v13, v8, :cond_0

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    int-to-long v3, v13

    .line 47
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v4, v3

    .line 52
    :goto_1
    move v3, v13

    .line 53
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 54
    .line 55
    shl-int v5, v15, v5

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v5, 0x0

    .line 59
    :goto_2
    and-int/2addr v10, v8

    .line 60
    int-to-long v13, v10

    .line 61
    sget-object v10, Lm63;->b:Lm63;

    .line 62
    .line 63
    iget v10, v10, Lm63;->a:I

    .line 64
    .line 65
    if-lt v11, v10, :cond_3

    .line 66
    .line 67
    sget-object v10, Lm63;->c:Lm63;

    .line 68
    .line 69
    iget v10, v10, Lm63;->a:I

    .line 70
    .line 71
    :cond_3
    const/16 v10, 0x3f

    .line 72
    .line 73
    const/16 v16, 0x2

    .line 74
    .line 75
    const/16 v17, 0x4

    .line 76
    .line 77
    const/16 v18, 0x8

    .line 78
    .line 79
    packed-switch v11, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :pswitch_0
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ls4;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-static {v12}, Ljk1;->h(I)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    mul-int/lit8 v11, v11, 0x2

    .line 104
    .line 105
    invoke-virtual {v5, v10}, Ls4;->a(Lk57;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-int/2addr v5, v11

    .line 110
    :goto_3
    add-int/2addr v9, v5

    .line 111
    :cond_4
    :goto_4
    const/16 v19, 0x0

    .line 112
    .line 113
    goto/16 :goto_2e

    .line 114
    .line 115
    :pswitch_1
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    invoke-static {v1, v13, v14}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v13

    .line 125
    invoke-static {v12}, Ljk1;->h(I)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    shl-long v11, v13, v15

    .line 130
    .line 131
    shr-long/2addr v13, v10

    .line 132
    xor-long v10, v11, v13

    .line 133
    .line 134
    invoke-static {v10, v11}, Ljk1;->j(J)I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    :goto_5
    add-int/2addr v10, v5

    .line 139
    :goto_6
    add-int/2addr v9, v10

    .line 140
    goto :goto_4

    .line 141
    :pswitch_2
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_4

    .line 146
    .line 147
    invoke-static {v1, v13, v14}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-static {v12}, Ljk1;->h(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    shl-int/lit8 v11, v5, 0x1

    .line 156
    .line 157
    shr-int/lit8 v5, v5, 0x1f

    .line 158
    .line 159
    xor-int/2addr v5, v11

    .line 160
    invoke-static {v5}, Ljk1;->i(I)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    :goto_7
    add-int/2addr v5, v10

    .line 165
    goto :goto_3

    .line 166
    :pswitch_3
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_4

    .line 171
    .line 172
    invoke-static {v12}, Ljk1;->h(I)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    :goto_8
    add-int/lit8 v5, v5, 0x8

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :pswitch_4
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_4

    .line 184
    .line 185
    invoke-static {v12}, Ljk1;->h(I)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    :goto_9
    add-int/lit8 v5, v5, 0x4

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :pswitch_5
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_4

    .line 197
    .line 198
    invoke-static {v1, v13, v14}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-static {v12}, Ljk1;->h(I)I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    int-to-long v11, v5

    .line 207
    invoke-static {v11, v12}, Ljk1;->j(J)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    goto :goto_7

    .line 212
    :pswitch_6
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_4

    .line 217
    .line 218
    invoke-static {v1, v13, v14}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    invoke-static {v12}, Ljk1;->h(I)I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    invoke-static {v5}, Ljk1;->i(I)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    goto :goto_7

    .line 231
    :pswitch_7
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_4

    .line 236
    .line 237
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Lgy0;

    .line 242
    .line 243
    invoke-static {v12, v5}, Ljk1;->f(ILgy0;)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :pswitch_8
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_4

    .line 254
    .line 255
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    sget-object v11, Lu57;->a:Ljava/lang/Class;

    .line 264
    .line 265
    check-cast v5, Ls4;

    .line 266
    .line 267
    invoke-static {v12}, Ljk1;->h(I)I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-virtual {v5, v10}, Ls4;->a(Lk57;)I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    invoke-static {v5}, Ljk1;->i(I)I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    add-int/2addr v10, v5

    .line 280
    add-int/2addr v10, v11

    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :pswitch_9
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_4

    .line 288
    .line 289
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    instance-of v10, v5, Lgy0;

    .line 294
    .line 295
    if-eqz v10, :cond_5

    .line 296
    .line 297
    check-cast v5, Lgy0;

    .line 298
    .line 299
    invoke-static {v12, v5}, Ljk1;->f(ILgy0;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    :goto_a
    add-int/2addr v5, v9

    .line 304
    move v9, v5

    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_5
    check-cast v5, Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v12}, Ljk1;->h(I)I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    invoke-static {v5}, Ljk1;->g(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    add-int/2addr v5, v10

    .line 318
    goto :goto_a

    .line 319
    :pswitch_a
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-eqz v5, :cond_4

    .line 324
    .line 325
    invoke-static {v12}, Ljk1;->h(I)I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    add-int/2addr v5, v15

    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :pswitch_b
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eqz v5, :cond_4

    .line 337
    .line 338
    invoke-static {v12}, Ljk1;->h(I)I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    goto/16 :goto_9

    .line 343
    .line 344
    :pswitch_c
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_4

    .line 349
    .line 350
    invoke-static {v12}, Ljk1;->h(I)I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :pswitch_d
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_4

    .line 361
    .line 362
    invoke-static {v1, v13, v14}, Lsd5;->y(Ljava/lang/Object;J)I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    invoke-static {v12}, Ljk1;->h(I)I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    int-to-long v11, v5

    .line 371
    invoke-static {v11, v12}, Ljk1;->j(J)I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    goto/16 :goto_7

    .line 376
    .line 377
    :pswitch_e
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_4

    .line 382
    .line 383
    invoke-static {v1, v13, v14}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 384
    .line 385
    .line 386
    move-result-wide v10

    .line 387
    invoke-static {v12}, Ljk1;->h(I)I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    invoke-static {v10, v11}, Ljk1;->j(J)I

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    goto/16 :goto_5

    .line 396
    .line 397
    :pswitch_f
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_4

    .line 402
    .line 403
    invoke-static {v1, v13, v14}, Lsd5;->z(Ljava/lang/Object;J)J

    .line 404
    .line 405
    .line 406
    move-result-wide v10

    .line 407
    invoke-static {v12}, Ljk1;->h(I)I

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    invoke-static {v10, v11}, Ljk1;->j(J)I

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :pswitch_10
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_4

    .line 422
    .line 423
    invoke-static {v12}, Ljk1;->h(I)I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    goto/16 :goto_9

    .line 428
    .line 429
    :pswitch_11
    invoke-virtual {v0, v1, v12, v2}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-eqz v5, :cond_4

    .line 434
    .line 435
    invoke-static {v12}, Ljk1;->h(I)I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    goto/16 :goto_8

    .line 440
    .line 441
    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    div-int/lit8 v11, v2, 0x3

    .line 446
    .line 447
    mul-int/lit8 v11, v11, 0x2

    .line 448
    .line 449
    iget-object v13, v0, Lsd5;->b:[Ljava/lang/Object;

    .line 450
    .line 451
    aget-object v11, v13, v11

    .line 452
    .line 453
    iget-object v13, v0, Lsd5;->m:Ll65;

    .line 454
    .line 455
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    check-cast v5, Lk65;

    .line 459
    .line 460
    check-cast v11, Lh65;

    .line 461
    .line 462
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 463
    .line 464
    .line 465
    move-result v13

    .line 466
    if-eqz v13, :cond_7

    .line 467
    .line 468
    const/4 v13, 0x0

    .line 469
    :cond_6
    move/from16 v25, v3

    .line 470
    .line 471
    move v10, v4

    .line 472
    const/16 v19, 0x0

    .line 473
    .line 474
    goto/16 :goto_15

    .line 475
    .line 476
    :cond_7
    invoke-virtual {v5}, Lk65;->entrySet()Ljava/util/Set;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    const/4 v13, 0x0

    .line 485
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    if-eqz v14, :cond_6

    .line 490
    .line 491
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v14

    .line 495
    check-cast v14, Ljava/util/Map$Entry;

    .line 496
    .line 497
    const/16 v19, 0x0

    .line 498
    .line 499
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v14

    .line 507
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    invoke-static {v12}, Ljk1;->h(I)I

    .line 511
    .line 512
    .line 513
    move-result v20

    .line 514
    iget-object v8, v11, Lh65;->a:Lka;

    .line 515
    .line 516
    move/from16 v21, v10

    .line 517
    .line 518
    iget-object v10, v8, Lka;->a:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v10, Lgw8;

    .line 521
    .line 522
    sget v22, Ll63;->c:I

    .line 523
    .line 524
    invoke-static {v15}, Ljk1;->h(I)I

    .line 525
    .line 526
    .line 527
    move-result v22

    .line 528
    move/from16 v23, v15

    .line 529
    .line 530
    sget-object v15, Lgw8;->d:Ldw8;

    .line 531
    .line 532
    if-ne v10, v15, :cond_8

    .line 533
    .line 534
    mul-int/lit8 v22, v22, 0x2

    .line 535
    .line 536
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    const-string v24, "There is no way to get here, but the compiler thinks otherwise."

    .line 541
    .line 542
    move/from16 v25, v3

    .line 543
    .line 544
    packed-switch v10, :pswitch_data_1

    .line 545
    .line 546
    .line 547
    invoke-static/range {v24 .. v24}, Lg84;->h(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    return v19

    .line 551
    :pswitch_13
    check-cast v7, Ljava/lang/Long;

    .line 552
    .line 553
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 554
    .line 555
    .line 556
    move-result-wide v26

    .line 557
    shl-long v28, v26, v23

    .line 558
    .line 559
    shr-long v26, v26, v21

    .line 560
    .line 561
    xor-long v26, v28, v26

    .line 562
    .line 563
    invoke-static/range {v26 .. v27}, Ljk1;->j(J)I

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    :goto_c
    move v10, v4

    .line 568
    goto/16 :goto_10

    .line 569
    .line 570
    :pswitch_14
    check-cast v7, Ljava/lang/Integer;

    .line 571
    .line 572
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    shl-int/lit8 v10, v7, 0x1

    .line 577
    .line 578
    shr-int/lit8 v7, v7, 0x1f

    .line 579
    .line 580
    xor-int/2addr v7, v10

    .line 581
    invoke-static {v7}, Ljk1;->i(I)I

    .line 582
    .line 583
    .line 584
    move-result v7

    .line 585
    goto :goto_c

    .line 586
    :pswitch_15
    check-cast v7, Ljava/lang/Long;

    .line 587
    .line 588
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    move v10, v4

    .line 592
    :goto_d
    move/from16 v7, v18

    .line 593
    .line 594
    goto/16 :goto_10

    .line 595
    .line 596
    :pswitch_16
    check-cast v7, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    move v10, v4

    .line 602
    :goto_e
    move/from16 v7, v17

    .line 603
    .line 604
    goto/16 :goto_10

    .line 605
    .line 606
    :pswitch_17
    check-cast v7, Ljava/lang/Integer;

    .line 607
    .line 608
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 609
    .line 610
    .line 611
    move-result v7

    .line 612
    move v10, v4

    .line 613
    int-to-long v3, v7

    .line 614
    invoke-static {v3, v4}, Ljk1;->j(J)I

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    goto/16 :goto_10

    .line 619
    .line 620
    :pswitch_18
    move v10, v4

    .line 621
    check-cast v7, Ljava/lang/Integer;

    .line 622
    .line 623
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    invoke-static {v3}, Ljk1;->i(I)I

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    goto/16 :goto_10

    .line 632
    .line 633
    :pswitch_19
    move v10, v4

    .line 634
    instance-of v3, v7, Lgy0;

    .line 635
    .line 636
    if-eqz v3, :cond_9

    .line 637
    .line 638
    check-cast v7, Lgy0;

    .line 639
    .line 640
    invoke-virtual {v7}, Lgy0;->size()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    invoke-static {v3}, Ljk1;->i(I)I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    :goto_f
    add-int v7, v4, v3

    .line 649
    .line 650
    goto/16 :goto_10

    .line 651
    .line 652
    :cond_9
    check-cast v7, [B

    .line 653
    .line 654
    array-length v3, v7

    .line 655
    invoke-static {v3}, Ljk1;->i(I)I

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    goto :goto_f

    .line 660
    :pswitch_1a
    move v10, v4

    .line 661
    check-cast v7, Ls4;

    .line 662
    .line 663
    check-cast v7, Lav3;

    .line 664
    .line 665
    const/4 v3, 0x0

    .line 666
    invoke-virtual {v7, v3}, Lav3;->a(Lk57;)I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    invoke-static {v4}, Ljk1;->i(I)I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    add-int/2addr v7, v4

    .line 675
    goto/16 :goto_10

    .line 676
    .line 677
    :pswitch_1b
    move v10, v4

    .line 678
    const/4 v3, 0x0

    .line 679
    check-cast v7, Ls4;

    .line 680
    .line 681
    check-cast v7, Lav3;

    .line 682
    .line 683
    invoke-virtual {v7, v3}, Lav3;->a(Lk57;)I

    .line 684
    .line 685
    .line 686
    move-result v7

    .line 687
    goto/16 :goto_10

    .line 688
    .line 689
    :pswitch_1c
    move v10, v4

    .line 690
    instance-of v3, v7, Lgy0;

    .line 691
    .line 692
    if-eqz v3, :cond_a

    .line 693
    .line 694
    check-cast v7, Lgy0;

    .line 695
    .line 696
    invoke-virtual {v7}, Lgy0;->size()I

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    invoke-static {v3}, Ljk1;->i(I)I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    goto :goto_f

    .line 705
    :cond_a
    check-cast v7, Ljava/lang/String;

    .line 706
    .line 707
    invoke-static {v7}, Ljk1;->g(Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    move-result v7

    .line 711
    goto :goto_10

    .line 712
    :pswitch_1d
    move v10, v4

    .line 713
    check-cast v7, Ljava/lang/Boolean;

    .line 714
    .line 715
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    move/from16 v7, v23

    .line 719
    .line 720
    goto :goto_10

    .line 721
    :pswitch_1e
    move v10, v4

    .line 722
    check-cast v7, Ljava/lang/Integer;

    .line 723
    .line 724
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    goto :goto_e

    .line 728
    :pswitch_1f
    move v10, v4

    .line 729
    check-cast v7, Ljava/lang/Long;

    .line 730
    .line 731
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    goto/16 :goto_d

    .line 735
    .line 736
    :pswitch_20
    move v10, v4

    .line 737
    check-cast v7, Ljava/lang/Integer;

    .line 738
    .line 739
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    int-to-long v3, v3

    .line 744
    invoke-static {v3, v4}, Ljk1;->j(J)I

    .line 745
    .line 746
    .line 747
    move-result v7

    .line 748
    goto :goto_10

    .line 749
    :pswitch_21
    move v10, v4

    .line 750
    check-cast v7, Ljava/lang/Long;

    .line 751
    .line 752
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 753
    .line 754
    .line 755
    move-result-wide v3

    .line 756
    invoke-static {v3, v4}, Ljk1;->j(J)I

    .line 757
    .line 758
    .line 759
    move-result v7

    .line 760
    goto :goto_10

    .line 761
    :pswitch_22
    move v10, v4

    .line 762
    check-cast v7, Ljava/lang/Long;

    .line 763
    .line 764
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 765
    .line 766
    .line 767
    move-result-wide v3

    .line 768
    invoke-static {v3, v4}, Ljk1;->j(J)I

    .line 769
    .line 770
    .line 771
    move-result v7

    .line 772
    goto :goto_10

    .line 773
    :pswitch_23
    move v10, v4

    .line 774
    check-cast v7, Ljava/lang/Float;

    .line 775
    .line 776
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    goto/16 :goto_e

    .line 780
    .line 781
    :pswitch_24
    move v10, v4

    .line 782
    check-cast v7, Ljava/lang/Double;

    .line 783
    .line 784
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    goto/16 :goto_d

    .line 788
    .line 789
    :goto_10
    add-int v7, v7, v22

    .line 790
    .line 791
    iget-object v3, v8, Lka;->b:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v3, Lgw8;

    .line 794
    .line 795
    invoke-static/range {v16 .. v16}, Ljk1;->h(I)I

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-ne v3, v15, :cond_b

    .line 800
    .line 801
    mul-int/lit8 v4, v4, 0x2

    .line 802
    .line 803
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    packed-switch v3, :pswitch_data_2

    .line 808
    .line 809
    .line 810
    invoke-static/range {v24 .. v24}, Lg84;->h(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    return v19

    .line 814
    :pswitch_25
    check-cast v14, Ljava/lang/Long;

    .line 815
    .line 816
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 817
    .line 818
    .line 819
    move-result-wide v14

    .line 820
    shl-long v26, v14, v23

    .line 821
    .line 822
    shr-long v14, v14, v21

    .line 823
    .line 824
    xor-long v14, v26, v14

    .line 825
    .line 826
    invoke-static {v14, v15}, Ljk1;->j(J)I

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    goto/16 :goto_14

    .line 831
    .line 832
    :pswitch_26
    check-cast v14, Ljava/lang/Integer;

    .line 833
    .line 834
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    shl-int/lit8 v8, v3, 0x1

    .line 839
    .line 840
    shr-int/lit8 v3, v3, 0x1f

    .line 841
    .line 842
    xor-int/2addr v3, v8

    .line 843
    invoke-static {v3}, Ljk1;->i(I)I

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    goto/16 :goto_14

    .line 848
    .line 849
    :pswitch_27
    check-cast v14, Ljava/lang/Long;

    .line 850
    .line 851
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    :goto_11
    move/from16 v3, v18

    .line 855
    .line 856
    goto/16 :goto_14

    .line 857
    .line 858
    :pswitch_28
    check-cast v14, Ljava/lang/Integer;

    .line 859
    .line 860
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    .line 862
    .line 863
    :goto_12
    move/from16 v3, v17

    .line 864
    .line 865
    goto/16 :goto_14

    .line 866
    .line 867
    :pswitch_29
    check-cast v14, Ljava/lang/Integer;

    .line 868
    .line 869
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    int-to-long v14, v3

    .line 874
    invoke-static {v14, v15}, Ljk1;->j(J)I

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    goto/16 :goto_14

    .line 879
    .line 880
    :pswitch_2a
    check-cast v14, Ljava/lang/Integer;

    .line 881
    .line 882
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 883
    .line 884
    .line 885
    move-result v3

    .line 886
    invoke-static {v3}, Ljk1;->i(I)I

    .line 887
    .line 888
    .line 889
    move-result v3

    .line 890
    goto/16 :goto_14

    .line 891
    .line 892
    :pswitch_2b
    instance-of v3, v14, Lgy0;

    .line 893
    .line 894
    if-eqz v3, :cond_c

    .line 895
    .line 896
    check-cast v14, Lgy0;

    .line 897
    .line 898
    invoke-virtual {v14}, Lgy0;->size()I

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    invoke-static {v3}, Ljk1;->i(I)I

    .line 903
    .line 904
    .line 905
    move-result v8

    .line 906
    :goto_13
    add-int/2addr v3, v8

    .line 907
    goto/16 :goto_14

    .line 908
    .line 909
    :cond_c
    check-cast v14, [B

    .line 910
    .line 911
    array-length v3, v14

    .line 912
    invoke-static {v3}, Ljk1;->i(I)I

    .line 913
    .line 914
    .line 915
    move-result v8

    .line 916
    goto :goto_13

    .line 917
    :pswitch_2c
    check-cast v14, Ls4;

    .line 918
    .line 919
    check-cast v14, Lav3;

    .line 920
    .line 921
    const/4 v3, 0x0

    .line 922
    invoke-virtual {v14, v3}, Lav3;->a(Lk57;)I

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    invoke-static {v3}, Ljk1;->i(I)I

    .line 927
    .line 928
    .line 929
    move-result v8

    .line 930
    goto :goto_13

    .line 931
    :pswitch_2d
    const/4 v3, 0x0

    .line 932
    check-cast v14, Ls4;

    .line 933
    .line 934
    check-cast v14, Lav3;

    .line 935
    .line 936
    invoke-virtual {v14, v3}, Lav3;->a(Lk57;)I

    .line 937
    .line 938
    .line 939
    move-result v3

    .line 940
    goto :goto_14

    .line 941
    :pswitch_2e
    instance-of v3, v14, Lgy0;

    .line 942
    .line 943
    if-eqz v3, :cond_d

    .line 944
    .line 945
    check-cast v14, Lgy0;

    .line 946
    .line 947
    invoke-virtual {v14}, Lgy0;->size()I

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    invoke-static {v3}, Ljk1;->i(I)I

    .line 952
    .line 953
    .line 954
    move-result v8

    .line 955
    goto :goto_13

    .line 956
    :cond_d
    check-cast v14, Ljava/lang/String;

    .line 957
    .line 958
    invoke-static {v14}, Ljk1;->g(Ljava/lang/String;)I

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    goto :goto_14

    .line 963
    :pswitch_2f
    check-cast v14, Ljava/lang/Boolean;

    .line 964
    .line 965
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 966
    .line 967
    .line 968
    move/from16 v3, v23

    .line 969
    .line 970
    goto :goto_14

    .line 971
    :pswitch_30
    check-cast v14, Ljava/lang/Integer;

    .line 972
    .line 973
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    goto :goto_12

    .line 977
    :pswitch_31
    check-cast v14, Ljava/lang/Long;

    .line 978
    .line 979
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 980
    .line 981
    .line 982
    goto/16 :goto_11

    .line 983
    .line 984
    :pswitch_32
    check-cast v14, Ljava/lang/Integer;

    .line 985
    .line 986
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    int-to-long v14, v3

    .line 991
    invoke-static {v14, v15}, Ljk1;->j(J)I

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    goto :goto_14

    .line 996
    :pswitch_33
    check-cast v14, Ljava/lang/Long;

    .line 997
    .line 998
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 999
    .line 1000
    .line 1001
    move-result-wide v14

    .line 1002
    invoke-static {v14, v15}, Ljk1;->j(J)I

    .line 1003
    .line 1004
    .line 1005
    move-result v3

    .line 1006
    goto :goto_14

    .line 1007
    :pswitch_34
    check-cast v14, Ljava/lang/Long;

    .line 1008
    .line 1009
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 1010
    .line 1011
    .line 1012
    move-result-wide v14

    .line 1013
    invoke-static {v14, v15}, Ljk1;->j(J)I

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    goto :goto_14

    .line 1018
    :pswitch_35
    check-cast v14, Ljava/lang/Float;

    .line 1019
    .line 1020
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_12

    .line 1024
    .line 1025
    :pswitch_36
    check-cast v14, Ljava/lang/Double;

    .line 1026
    .line 1027
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_11

    .line 1031
    .line 1032
    :goto_14
    add-int/2addr v3, v4

    .line 1033
    add-int/2addr v3, v7

    .line 1034
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v4

    .line 1038
    add-int/2addr v4, v3

    .line 1039
    add-int v4, v4, v20

    .line 1040
    .line 1041
    add-int/2addr v13, v4

    .line 1042
    move v4, v10

    .line 1043
    move/from16 v10, v21

    .line 1044
    .line 1045
    move/from16 v15, v23

    .line 1046
    .line 1047
    move/from16 v3, v25

    .line 1048
    .line 1049
    const v8, 0xfffff

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_b

    .line 1053
    .line 1054
    :goto_15
    add-int/2addr v9, v13

    .line 1055
    :cond_e
    :goto_16
    move v4, v10

    .line 1056
    :goto_17
    move/from16 v3, v25

    .line 1057
    .line 1058
    goto/16 :goto_2e

    .line 1059
    .line 1060
    :pswitch_37
    move/from16 v25, v3

    .line 1061
    .line 1062
    move v10, v4

    .line 1063
    const/16 v19, 0x0

    .line 1064
    .line 1065
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    check-cast v3, Ljava/util/List;

    .line 1070
    .line 1071
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    sget-object v5, Lu57;->a:Ljava/lang/Class;

    .line 1076
    .line 1077
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1078
    .line 1079
    .line 1080
    move-result v5

    .line 1081
    if-nez v5, :cond_f

    .line 1082
    .line 1083
    move/from16 v8, v19

    .line 1084
    .line 1085
    goto :goto_19

    .line 1086
    :cond_f
    move/from16 v7, v19

    .line 1087
    .line 1088
    move v8, v7

    .line 1089
    :goto_18
    if-ge v7, v5, :cond_10

    .line 1090
    .line 1091
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v11

    .line 1095
    check-cast v11, Ls4;

    .line 1096
    .line 1097
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1098
    .line 1099
    .line 1100
    move-result v13

    .line 1101
    mul-int/lit8 v13, v13, 0x2

    .line 1102
    .line 1103
    invoke-virtual {v11, v4}, Ls4;->a(Lk57;)I

    .line 1104
    .line 1105
    .line 1106
    move-result v11

    .line 1107
    add-int/2addr v11, v13

    .line 1108
    add-int/2addr v8, v11

    .line 1109
    add-int/lit8 v7, v7, 0x1

    .line 1110
    .line 1111
    goto :goto_18

    .line 1112
    :cond_10
    :goto_19
    add-int/2addr v9, v8

    .line 1113
    goto :goto_16

    .line 1114
    :pswitch_38
    move/from16 v25, v3

    .line 1115
    .line 1116
    move v10, v4

    .line 1117
    const/16 v19, 0x0

    .line 1118
    .line 1119
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v3

    .line 1123
    check-cast v3, Ljava/util/List;

    .line 1124
    .line 1125
    invoke-static {v3}, Lu57;->g(Ljava/util/List;)I

    .line 1126
    .line 1127
    .line 1128
    move-result v3

    .line 1129
    if-lez v3, :cond_e

    .line 1130
    .line 1131
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1132
    .line 1133
    .line 1134
    move-result v4

    .line 1135
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1136
    .line 1137
    .line 1138
    move-result v5

    .line 1139
    :goto_1a
    add-int/2addr v5, v4

    .line 1140
    add-int/2addr v5, v3

    .line 1141
    add-int/2addr v9, v5

    .line 1142
    goto :goto_16

    .line 1143
    :pswitch_39
    move/from16 v25, v3

    .line 1144
    .line 1145
    move v10, v4

    .line 1146
    const/16 v19, 0x0

    .line 1147
    .line 1148
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v3

    .line 1152
    check-cast v3, Ljava/util/List;

    .line 1153
    .line 1154
    invoke-static {v3}, Lu57;->f(Ljava/util/List;)I

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-lez v3, :cond_e

    .line 1159
    .line 1160
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1161
    .line 1162
    .line 1163
    move-result v4

    .line 1164
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1165
    .line 1166
    .line 1167
    move-result v5

    .line 1168
    goto :goto_1a

    .line 1169
    :pswitch_3a
    move/from16 v25, v3

    .line 1170
    .line 1171
    move v10, v4

    .line 1172
    const/16 v19, 0x0

    .line 1173
    .line 1174
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v3

    .line 1178
    check-cast v3, Ljava/util/List;

    .line 1179
    .line 1180
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1181
    .line 1182
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    mul-int/lit8 v3, v3, 0x8

    .line 1187
    .line 1188
    if-lez v3, :cond_e

    .line 1189
    .line 1190
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1191
    .line 1192
    .line 1193
    move-result v4

    .line 1194
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1195
    .line 1196
    .line 1197
    move-result v5

    .line 1198
    goto :goto_1a

    .line 1199
    :pswitch_3b
    move/from16 v25, v3

    .line 1200
    .line 1201
    move v10, v4

    .line 1202
    const/16 v19, 0x0

    .line 1203
    .line 1204
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    check-cast v3, Ljava/util/List;

    .line 1209
    .line 1210
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1211
    .line 1212
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1213
    .line 1214
    .line 1215
    move-result v3

    .line 1216
    mul-int/lit8 v3, v3, 0x4

    .line 1217
    .line 1218
    if-lez v3, :cond_e

    .line 1219
    .line 1220
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1221
    .line 1222
    .line 1223
    move-result v4

    .line 1224
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1225
    .line 1226
    .line 1227
    move-result v5

    .line 1228
    goto :goto_1a

    .line 1229
    :pswitch_3c
    move/from16 v25, v3

    .line 1230
    .line 1231
    move v10, v4

    .line 1232
    const/16 v19, 0x0

    .line 1233
    .line 1234
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v3

    .line 1238
    check-cast v3, Ljava/util/List;

    .line 1239
    .line 1240
    invoke-static {v3}, Lu57;->a(Ljava/util/List;)I

    .line 1241
    .line 1242
    .line 1243
    move-result v3

    .line 1244
    if-lez v3, :cond_e

    .line 1245
    .line 1246
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1247
    .line 1248
    .line 1249
    move-result v4

    .line 1250
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    goto :goto_1a

    .line 1255
    :pswitch_3d
    move/from16 v25, v3

    .line 1256
    .line 1257
    move v10, v4

    .line 1258
    const/16 v19, 0x0

    .line 1259
    .line 1260
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v3

    .line 1264
    check-cast v3, Ljava/util/List;

    .line 1265
    .line 1266
    invoke-static {v3}, Lu57;->h(Ljava/util/List;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v3

    .line 1270
    if-lez v3, :cond_e

    .line 1271
    .line 1272
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1273
    .line 1274
    .line 1275
    move-result v4

    .line 1276
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1277
    .line 1278
    .line 1279
    move-result v5

    .line 1280
    goto/16 :goto_1a

    .line 1281
    .line 1282
    :pswitch_3e
    move/from16 v25, v3

    .line 1283
    .line 1284
    move v10, v4

    .line 1285
    const/16 v19, 0x0

    .line 1286
    .line 1287
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v3

    .line 1291
    check-cast v3, Ljava/util/List;

    .line 1292
    .line 1293
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1294
    .line 1295
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    if-lez v3, :cond_e

    .line 1300
    .line 1301
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1302
    .line 1303
    .line 1304
    move-result v4

    .line 1305
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1306
    .line 1307
    .line 1308
    move-result v5

    .line 1309
    goto/16 :goto_1a

    .line 1310
    .line 1311
    :pswitch_3f
    move/from16 v25, v3

    .line 1312
    .line 1313
    move v10, v4

    .line 1314
    const/16 v19, 0x0

    .line 1315
    .line 1316
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    check-cast v3, Ljava/util/List;

    .line 1321
    .line 1322
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1323
    .line 1324
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    mul-int/lit8 v3, v3, 0x4

    .line 1329
    .line 1330
    if-lez v3, :cond_e

    .line 1331
    .line 1332
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1333
    .line 1334
    .line 1335
    move-result v4

    .line 1336
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1337
    .line 1338
    .line 1339
    move-result v5

    .line 1340
    goto/16 :goto_1a

    .line 1341
    .line 1342
    :pswitch_40
    move/from16 v25, v3

    .line 1343
    .line 1344
    move v10, v4

    .line 1345
    const/16 v19, 0x0

    .line 1346
    .line 1347
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v3

    .line 1351
    check-cast v3, Ljava/util/List;

    .line 1352
    .line 1353
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1354
    .line 1355
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1356
    .line 1357
    .line 1358
    move-result v3

    .line 1359
    mul-int/lit8 v3, v3, 0x8

    .line 1360
    .line 1361
    if-lez v3, :cond_e

    .line 1362
    .line 1363
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1368
    .line 1369
    .line 1370
    move-result v5

    .line 1371
    goto/16 :goto_1a

    .line 1372
    .line 1373
    :pswitch_41
    move/from16 v25, v3

    .line 1374
    .line 1375
    move v10, v4

    .line 1376
    const/16 v19, 0x0

    .line 1377
    .line 1378
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v3

    .line 1382
    check-cast v3, Ljava/util/List;

    .line 1383
    .line 1384
    invoke-static {v3}, Lu57;->d(Ljava/util/List;)I

    .line 1385
    .line 1386
    .line 1387
    move-result v3

    .line 1388
    if-lez v3, :cond_e

    .line 1389
    .line 1390
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1391
    .line 1392
    .line 1393
    move-result v4

    .line 1394
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    goto/16 :goto_1a

    .line 1399
    .line 1400
    :pswitch_42
    move/from16 v25, v3

    .line 1401
    .line 1402
    move v10, v4

    .line 1403
    const/16 v19, 0x0

    .line 1404
    .line 1405
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v3

    .line 1409
    check-cast v3, Ljava/util/List;

    .line 1410
    .line 1411
    invoke-static {v3}, Lu57;->i(Ljava/util/List;)I

    .line 1412
    .line 1413
    .line 1414
    move-result v3

    .line 1415
    if-lez v3, :cond_e

    .line 1416
    .line 1417
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1418
    .line 1419
    .line 1420
    move-result v4

    .line 1421
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1422
    .line 1423
    .line 1424
    move-result v5

    .line 1425
    goto/16 :goto_1a

    .line 1426
    .line 1427
    :pswitch_43
    move/from16 v25, v3

    .line 1428
    .line 1429
    move v10, v4

    .line 1430
    const/16 v19, 0x0

    .line 1431
    .line 1432
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    check-cast v3, Ljava/util/List;

    .line 1437
    .line 1438
    invoke-static {v3}, Lu57;->e(Ljava/util/List;)I

    .line 1439
    .line 1440
    .line 1441
    move-result v3

    .line 1442
    if-lez v3, :cond_e

    .line 1443
    .line 1444
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1445
    .line 1446
    .line 1447
    move-result v4

    .line 1448
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1449
    .line 1450
    .line 1451
    move-result v5

    .line 1452
    goto/16 :goto_1a

    .line 1453
    .line 1454
    :pswitch_44
    move/from16 v25, v3

    .line 1455
    .line 1456
    move v10, v4

    .line 1457
    const/16 v19, 0x0

    .line 1458
    .line 1459
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v3

    .line 1463
    check-cast v3, Ljava/util/List;

    .line 1464
    .line 1465
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1466
    .line 1467
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1468
    .line 1469
    .line 1470
    move-result v3

    .line 1471
    mul-int/lit8 v3, v3, 0x4

    .line 1472
    .line 1473
    if-lez v3, :cond_e

    .line 1474
    .line 1475
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1476
    .line 1477
    .line 1478
    move-result v4

    .line 1479
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1480
    .line 1481
    .line 1482
    move-result v5

    .line 1483
    goto/16 :goto_1a

    .line 1484
    .line 1485
    :pswitch_45
    move/from16 v25, v3

    .line 1486
    .line 1487
    move v10, v4

    .line 1488
    const/16 v19, 0x0

    .line 1489
    .line 1490
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v3

    .line 1494
    check-cast v3, Ljava/util/List;

    .line 1495
    .line 1496
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1497
    .line 1498
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1499
    .line 1500
    .line 1501
    move-result v3

    .line 1502
    mul-int/lit8 v3, v3, 0x8

    .line 1503
    .line 1504
    if-lez v3, :cond_e

    .line 1505
    .line 1506
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1507
    .line 1508
    .line 1509
    move-result v4

    .line 1510
    invoke-static {v3}, Ljk1;->i(I)I

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    goto/16 :goto_1a

    .line 1515
    .line 1516
    :pswitch_46
    move/from16 v25, v3

    .line 1517
    .line 1518
    move v10, v4

    .line 1519
    const/16 v19, 0x0

    .line 1520
    .line 1521
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v3

    .line 1525
    check-cast v3, Ljava/util/List;

    .line 1526
    .line 1527
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1528
    .line 1529
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1530
    .line 1531
    .line 1532
    move-result v4

    .line 1533
    if-nez v4, :cond_11

    .line 1534
    .line 1535
    :goto_1b
    move/from16 v5, v19

    .line 1536
    .line 1537
    goto :goto_1d

    .line 1538
    :cond_11
    invoke-static {v3}, Lu57;->g(Ljava/util/List;)I

    .line 1539
    .line 1540
    .line 1541
    move-result v3

    .line 1542
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1543
    .line 1544
    .line 1545
    move-result v5

    .line 1546
    :goto_1c
    mul-int/2addr v5, v4

    .line 1547
    add-int/2addr v5, v3

    .line 1548
    :cond_12
    :goto_1d
    add-int/2addr v9, v5

    .line 1549
    goto/16 :goto_16

    .line 1550
    .line 1551
    :pswitch_47
    move/from16 v25, v3

    .line 1552
    .line 1553
    move v10, v4

    .line 1554
    const/16 v19, 0x0

    .line 1555
    .line 1556
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v3

    .line 1560
    check-cast v3, Ljava/util/List;

    .line 1561
    .line 1562
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1563
    .line 1564
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1565
    .line 1566
    .line 1567
    move-result v4

    .line 1568
    if-nez v4, :cond_13

    .line 1569
    .line 1570
    goto :goto_1b

    .line 1571
    :cond_13
    invoke-static {v3}, Lu57;->f(Ljava/util/List;)I

    .line 1572
    .line 1573
    .line 1574
    move-result v3

    .line 1575
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1576
    .line 1577
    .line 1578
    move-result v5

    .line 1579
    goto :goto_1c

    .line 1580
    :pswitch_48
    move/from16 v25, v3

    .line 1581
    .line 1582
    move v10, v4

    .line 1583
    const/16 v19, 0x0

    .line 1584
    .line 1585
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v3

    .line 1589
    check-cast v3, Ljava/util/List;

    .line 1590
    .line 1591
    invoke-static {v12, v3}, Lu57;->c(ILjava/util/List;)I

    .line 1592
    .line 1593
    .line 1594
    move-result v3

    .line 1595
    :goto_1e
    add-int/2addr v9, v3

    .line 1596
    goto/16 :goto_17

    .line 1597
    .line 1598
    :pswitch_49
    move/from16 v25, v3

    .line 1599
    .line 1600
    move v10, v4

    .line 1601
    const/16 v19, 0x0

    .line 1602
    .line 1603
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v3

    .line 1607
    check-cast v3, Ljava/util/List;

    .line 1608
    .line 1609
    invoke-static {v12, v3}, Lu57;->b(ILjava/util/List;)I

    .line 1610
    .line 1611
    .line 1612
    move-result v3

    .line 1613
    goto :goto_1e

    .line 1614
    :pswitch_4a
    move/from16 v25, v3

    .line 1615
    .line 1616
    move v10, v4

    .line 1617
    const/16 v19, 0x0

    .line 1618
    .line 1619
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v3

    .line 1623
    check-cast v3, Ljava/util/List;

    .line 1624
    .line 1625
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1626
    .line 1627
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1628
    .line 1629
    .line 1630
    move-result v4

    .line 1631
    if-nez v4, :cond_14

    .line 1632
    .line 1633
    goto :goto_1b

    .line 1634
    :cond_14
    invoke-static {v3}, Lu57;->a(Ljava/util/List;)I

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    goto :goto_1c

    .line 1643
    :pswitch_4b
    move/from16 v25, v3

    .line 1644
    .line 1645
    move v10, v4

    .line 1646
    const/16 v19, 0x0

    .line 1647
    .line 1648
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v3

    .line 1652
    check-cast v3, Ljava/util/List;

    .line 1653
    .line 1654
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1655
    .line 1656
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1657
    .line 1658
    .line 1659
    move-result v4

    .line 1660
    if-nez v4, :cond_15

    .line 1661
    .line 1662
    goto :goto_1b

    .line 1663
    :cond_15
    invoke-static {v3}, Lu57;->h(Ljava/util/List;)I

    .line 1664
    .line 1665
    .line 1666
    move-result v3

    .line 1667
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1668
    .line 1669
    .line 1670
    move-result v5

    .line 1671
    goto :goto_1c

    .line 1672
    :pswitch_4c
    move/from16 v25, v3

    .line 1673
    .line 1674
    move v10, v4

    .line 1675
    const/16 v19, 0x0

    .line 1676
    .line 1677
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v3

    .line 1681
    check-cast v3, Ljava/util/List;

    .line 1682
    .line 1683
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1684
    .line 1685
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1686
    .line 1687
    .line 1688
    move-result v4

    .line 1689
    if-nez v4, :cond_16

    .line 1690
    .line 1691
    goto/16 :goto_1b

    .line 1692
    .line 1693
    :cond_16
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1694
    .line 1695
    .line 1696
    move-result v5

    .line 1697
    mul-int/2addr v5, v4

    .line 1698
    move/from16 v4, v19

    .line 1699
    .line 1700
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1701
    .line 1702
    .line 1703
    move-result v7

    .line 1704
    if-ge v4, v7, :cond_12

    .line 1705
    .line 1706
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v7

    .line 1710
    check-cast v7, Lgy0;

    .line 1711
    .line 1712
    invoke-virtual {v7}, Lgy0;->size()I

    .line 1713
    .line 1714
    .line 1715
    move-result v7

    .line 1716
    invoke-static {v7}, Ljk1;->i(I)I

    .line 1717
    .line 1718
    .line 1719
    move-result v8

    .line 1720
    add-int/2addr v8, v7

    .line 1721
    add-int/2addr v5, v8

    .line 1722
    add-int/lit8 v4, v4, 0x1

    .line 1723
    .line 1724
    goto :goto_1f

    .line 1725
    :pswitch_4d
    move/from16 v25, v3

    .line 1726
    .line 1727
    move v10, v4

    .line 1728
    const/16 v19, 0x0

    .line 1729
    .line 1730
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v3

    .line 1734
    check-cast v3, Ljava/util/List;

    .line 1735
    .line 1736
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v4

    .line 1740
    sget-object v5, Lu57;->a:Ljava/lang/Class;

    .line 1741
    .line 1742
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1743
    .line 1744
    .line 1745
    move-result v5

    .line 1746
    if-nez v5, :cond_17

    .line 1747
    .line 1748
    move/from16 v7, v19

    .line 1749
    .line 1750
    goto :goto_21

    .line 1751
    :cond_17
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1752
    .line 1753
    .line 1754
    move-result v7

    .line 1755
    mul-int/2addr v7, v5

    .line 1756
    move/from16 v8, v19

    .line 1757
    .line 1758
    :goto_20
    if-ge v8, v5, :cond_18

    .line 1759
    .line 1760
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v11

    .line 1764
    check-cast v11, Ls4;

    .line 1765
    .line 1766
    invoke-virtual {v11, v4}, Ls4;->a(Lk57;)I

    .line 1767
    .line 1768
    .line 1769
    move-result v11

    .line 1770
    invoke-static {v11}, Ljk1;->i(I)I

    .line 1771
    .line 1772
    .line 1773
    move-result v12

    .line 1774
    add-int/2addr v12, v11

    .line 1775
    add-int/2addr v7, v12

    .line 1776
    add-int/lit8 v8, v8, 0x1

    .line 1777
    .line 1778
    goto :goto_20

    .line 1779
    :cond_18
    :goto_21
    add-int/2addr v9, v7

    .line 1780
    goto/16 :goto_16

    .line 1781
    .line 1782
    :pswitch_4e
    move/from16 v25, v3

    .line 1783
    .line 1784
    move v10, v4

    .line 1785
    const/16 v19, 0x0

    .line 1786
    .line 1787
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v3

    .line 1791
    check-cast v3, Ljava/util/List;

    .line 1792
    .line 1793
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1794
    .line 1795
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1796
    .line 1797
    .line 1798
    move-result v4

    .line 1799
    if-nez v4, :cond_19

    .line 1800
    .line 1801
    goto/16 :goto_1b

    .line 1802
    .line 1803
    :cond_19
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1804
    .line 1805
    .line 1806
    move-result v5

    .line 1807
    mul-int/2addr v5, v4

    .line 1808
    move/from16 v7, v19

    .line 1809
    .line 1810
    :goto_22
    if-ge v7, v4, :cond_12

    .line 1811
    .line 1812
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v8

    .line 1816
    instance-of v11, v8, Lgy0;

    .line 1817
    .line 1818
    if-eqz v11, :cond_1a

    .line 1819
    .line 1820
    check-cast v8, Lgy0;

    .line 1821
    .line 1822
    invoke-virtual {v8}, Lgy0;->size()I

    .line 1823
    .line 1824
    .line 1825
    move-result v8

    .line 1826
    invoke-static {v8}, Ljk1;->i(I)I

    .line 1827
    .line 1828
    .line 1829
    move-result v11

    .line 1830
    add-int/2addr v11, v8

    .line 1831
    add-int/2addr v11, v5

    .line 1832
    move v5, v11

    .line 1833
    goto :goto_23

    .line 1834
    :cond_1a
    check-cast v8, Ljava/lang/String;

    .line 1835
    .line 1836
    invoke-static {v8}, Ljk1;->g(Ljava/lang/String;)I

    .line 1837
    .line 1838
    .line 1839
    move-result v8

    .line 1840
    add-int/2addr v8, v5

    .line 1841
    move v5, v8

    .line 1842
    :goto_23
    add-int/lit8 v7, v7, 0x1

    .line 1843
    .line 1844
    goto :goto_22

    .line 1845
    :pswitch_4f
    move/from16 v25, v3

    .line 1846
    .line 1847
    move v10, v4

    .line 1848
    move/from16 v23, v15

    .line 1849
    .line 1850
    const/16 v19, 0x0

    .line 1851
    .line 1852
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v3

    .line 1856
    check-cast v3, Ljava/util/List;

    .line 1857
    .line 1858
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1859
    .line 1860
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1861
    .line 1862
    .line 1863
    move-result v3

    .line 1864
    if-nez v3, :cond_1b

    .line 1865
    .line 1866
    move/from16 v4, v19

    .line 1867
    .line 1868
    goto :goto_24

    .line 1869
    :cond_1b
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1870
    .line 1871
    .line 1872
    move-result v4

    .line 1873
    add-int/lit8 v4, v4, 0x1

    .line 1874
    .line 1875
    mul-int/2addr v4, v3

    .line 1876
    :goto_24
    add-int/2addr v9, v4

    .line 1877
    goto/16 :goto_16

    .line 1878
    .line 1879
    :pswitch_50
    move/from16 v25, v3

    .line 1880
    .line 1881
    move v10, v4

    .line 1882
    const/16 v19, 0x0

    .line 1883
    .line 1884
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v3

    .line 1888
    check-cast v3, Ljava/util/List;

    .line 1889
    .line 1890
    invoke-static {v12, v3}, Lu57;->b(ILjava/util/List;)I

    .line 1891
    .line 1892
    .line 1893
    move-result v3

    .line 1894
    goto/16 :goto_1e

    .line 1895
    .line 1896
    :pswitch_51
    move/from16 v25, v3

    .line 1897
    .line 1898
    move v10, v4

    .line 1899
    const/16 v19, 0x0

    .line 1900
    .line 1901
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v3

    .line 1905
    check-cast v3, Ljava/util/List;

    .line 1906
    .line 1907
    invoke-static {v12, v3}, Lu57;->c(ILjava/util/List;)I

    .line 1908
    .line 1909
    .line 1910
    move-result v3

    .line 1911
    goto/16 :goto_1e

    .line 1912
    .line 1913
    :pswitch_52
    move/from16 v25, v3

    .line 1914
    .line 1915
    move v10, v4

    .line 1916
    const/16 v19, 0x0

    .line 1917
    .line 1918
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v3

    .line 1922
    check-cast v3, Ljava/util/List;

    .line 1923
    .line 1924
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1925
    .line 1926
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1927
    .line 1928
    .line 1929
    move-result v4

    .line 1930
    if-nez v4, :cond_1c

    .line 1931
    .line 1932
    goto/16 :goto_1b

    .line 1933
    .line 1934
    :cond_1c
    invoke-static {v3}, Lu57;->d(Ljava/util/List;)I

    .line 1935
    .line 1936
    .line 1937
    move-result v3

    .line 1938
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1939
    .line 1940
    .line 1941
    move-result v5

    .line 1942
    goto/16 :goto_1c

    .line 1943
    .line 1944
    :pswitch_53
    move/from16 v25, v3

    .line 1945
    .line 1946
    move v10, v4

    .line 1947
    const/16 v19, 0x0

    .line 1948
    .line 1949
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v3

    .line 1953
    check-cast v3, Ljava/util/List;

    .line 1954
    .line 1955
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1956
    .line 1957
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1958
    .line 1959
    .line 1960
    move-result v4

    .line 1961
    if-nez v4, :cond_1d

    .line 1962
    .line 1963
    goto/16 :goto_1b

    .line 1964
    .line 1965
    :cond_1d
    invoke-static {v3}, Lu57;->i(Ljava/util/List;)I

    .line 1966
    .line 1967
    .line 1968
    move-result v3

    .line 1969
    invoke-static {v12}, Ljk1;->h(I)I

    .line 1970
    .line 1971
    .line 1972
    move-result v5

    .line 1973
    goto/16 :goto_1c

    .line 1974
    .line 1975
    :pswitch_54
    move/from16 v25, v3

    .line 1976
    .line 1977
    move v10, v4

    .line 1978
    const/16 v19, 0x0

    .line 1979
    .line 1980
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v3

    .line 1984
    check-cast v3, Ljava/util/List;

    .line 1985
    .line 1986
    sget-object v4, Lu57;->a:Ljava/lang/Class;

    .line 1987
    .line 1988
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1989
    .line 1990
    .line 1991
    move-result v4

    .line 1992
    if-nez v4, :cond_1e

    .line 1993
    .line 1994
    goto/16 :goto_1b

    .line 1995
    .line 1996
    :cond_1e
    invoke-static {v3}, Lu57;->e(Ljava/util/List;)I

    .line 1997
    .line 1998
    .line 1999
    move-result v4

    .line 2000
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2001
    .line 2002
    .line 2003
    move-result v3

    .line 2004
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2005
    .line 2006
    .line 2007
    move-result v5

    .line 2008
    mul-int/2addr v5, v3

    .line 2009
    add-int/2addr v5, v4

    .line 2010
    goto/16 :goto_1d

    .line 2011
    .line 2012
    :pswitch_55
    move/from16 v25, v3

    .line 2013
    .line 2014
    move v10, v4

    .line 2015
    const/16 v19, 0x0

    .line 2016
    .line 2017
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v3

    .line 2021
    check-cast v3, Ljava/util/List;

    .line 2022
    .line 2023
    invoke-static {v12, v3}, Lu57;->b(ILjava/util/List;)I

    .line 2024
    .line 2025
    .line 2026
    move-result v3

    .line 2027
    goto/16 :goto_1e

    .line 2028
    .line 2029
    :pswitch_56
    move/from16 v25, v3

    .line 2030
    .line 2031
    move v10, v4

    .line 2032
    const/16 v19, 0x0

    .line 2033
    .line 2034
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v3

    .line 2038
    check-cast v3, Ljava/util/List;

    .line 2039
    .line 2040
    invoke-static {v12, v3}, Lu57;->c(ILjava/util/List;)I

    .line 2041
    .line 2042
    .line 2043
    move-result v3

    .line 2044
    goto/16 :goto_1e

    .line 2045
    .line 2046
    :pswitch_57
    const/16 v19, 0x0

    .line 2047
    .line 2048
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v5

    .line 2052
    if-eqz v5, :cond_22

    .line 2053
    .line 2054
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v5

    .line 2058
    check-cast v5, Ls4;

    .line 2059
    .line 2060
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v7

    .line 2064
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2065
    .line 2066
    .line 2067
    move-result v8

    .line 2068
    mul-int/lit8 v8, v8, 0x2

    .line 2069
    .line 2070
    invoke-virtual {v5, v7}, Ls4;->a(Lk57;)I

    .line 2071
    .line 2072
    .line 2073
    move-result v5

    .line 2074
    add-int/2addr v5, v8

    .line 2075
    :goto_25
    add-int/2addr v9, v5

    .line 2076
    goto/16 :goto_2e

    .line 2077
    .line 2078
    :pswitch_58
    move/from16 v21, v10

    .line 2079
    .line 2080
    move/from16 v23, v15

    .line 2081
    .line 2082
    const/16 v19, 0x0

    .line 2083
    .line 2084
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2085
    .line 2086
    .line 2087
    move-result v5

    .line 2088
    if-eqz v5, :cond_1f

    .line 2089
    .line 2090
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2091
    .line 2092
    .line 2093
    move-result-wide v7

    .line 2094
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2095
    .line 2096
    .line 2097
    move-result v0

    .line 2098
    shl-long v10, v7, v23

    .line 2099
    .line 2100
    shr-long v7, v7, v21

    .line 2101
    .line 2102
    xor-long/2addr v7, v10

    .line 2103
    invoke-static {v7, v8}, Ljk1;->j(J)I

    .line 2104
    .line 2105
    .line 2106
    move-result v5

    .line 2107
    :goto_26
    add-int/2addr v5, v0

    .line 2108
    add-int/2addr v9, v5

    .line 2109
    :cond_1f
    :goto_27
    move-object/from16 v0, p0

    .line 2110
    .line 2111
    goto/16 :goto_2e

    .line 2112
    .line 2113
    :pswitch_59
    const/16 v19, 0x0

    .line 2114
    .line 2115
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2116
    .line 2117
    .line 2118
    move-result v5

    .line 2119
    if-eqz v5, :cond_1f

    .line 2120
    .line 2121
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2122
    .line 2123
    .line 2124
    move-result v0

    .line 2125
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2126
    .line 2127
    .line 2128
    move-result v5

    .line 2129
    shl-int/lit8 v7, v0, 0x1

    .line 2130
    .line 2131
    shr-int/lit8 v0, v0, 0x1f

    .line 2132
    .line 2133
    xor-int/2addr v0, v7

    .line 2134
    invoke-static {v0}, Ljk1;->i(I)I

    .line 2135
    .line 2136
    .line 2137
    move-result v0

    .line 2138
    :goto_28
    add-int/2addr v0, v5

    .line 2139
    :goto_29
    add-int/2addr v9, v0

    .line 2140
    goto :goto_27

    .line 2141
    :pswitch_5a
    const/16 v19, 0x0

    .line 2142
    .line 2143
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v5

    .line 2147
    if-eqz v5, :cond_20

    .line 2148
    .line 2149
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2150
    .line 2151
    .line 2152
    move-result v0

    .line 2153
    :goto_2a
    add-int/lit8 v0, v0, 0x8

    .line 2154
    .line 2155
    :goto_2b
    add-int/2addr v9, v0

    .line 2156
    :cond_20
    move-object/from16 v0, p0

    .line 2157
    .line 2158
    move-object/from16 v1, p1

    .line 2159
    .line 2160
    goto/16 :goto_2e

    .line 2161
    .line 2162
    :pswitch_5b
    const/16 v19, 0x0

    .line 2163
    .line 2164
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2165
    .line 2166
    .line 2167
    move-result v5

    .line 2168
    if-eqz v5, :cond_20

    .line 2169
    .line 2170
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2171
    .line 2172
    .line 2173
    move-result v0

    .line 2174
    :goto_2c
    add-int/lit8 v0, v0, 0x4

    .line 2175
    .line 2176
    goto :goto_2b

    .line 2177
    :pswitch_5c
    const/16 v19, 0x0

    .line 2178
    .line 2179
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2180
    .line 2181
    .line 2182
    move-result v5

    .line 2183
    if-eqz v5, :cond_1f

    .line 2184
    .line 2185
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2186
    .line 2187
    .line 2188
    move-result v0

    .line 2189
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2190
    .line 2191
    .line 2192
    move-result v5

    .line 2193
    int-to-long v7, v0

    .line 2194
    invoke-static {v7, v8}, Ljk1;->j(J)I

    .line 2195
    .line 2196
    .line 2197
    move-result v0

    .line 2198
    goto :goto_28

    .line 2199
    :pswitch_5d
    const/16 v19, 0x0

    .line 2200
    .line 2201
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2202
    .line 2203
    .line 2204
    move-result v5

    .line 2205
    if-eqz v5, :cond_1f

    .line 2206
    .line 2207
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2208
    .line 2209
    .line 2210
    move-result v0

    .line 2211
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2212
    .line 2213
    .line 2214
    move-result v5

    .line 2215
    invoke-static {v0}, Ljk1;->i(I)I

    .line 2216
    .line 2217
    .line 2218
    move-result v0

    .line 2219
    goto :goto_28

    .line 2220
    :pswitch_5e
    const/16 v19, 0x0

    .line 2221
    .line 2222
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v5

    .line 2226
    if-eqz v5, :cond_1f

    .line 2227
    .line 2228
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v0

    .line 2232
    check-cast v0, Lgy0;

    .line 2233
    .line 2234
    invoke-static {v12, v0}, Ljk1;->f(ILgy0;)I

    .line 2235
    .line 2236
    .line 2237
    move-result v0

    .line 2238
    goto :goto_29

    .line 2239
    :pswitch_5f
    const/16 v19, 0x0

    .line 2240
    .line 2241
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v5

    .line 2245
    if-eqz v5, :cond_22

    .line 2246
    .line 2247
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v5

    .line 2251
    invoke-virtual {v0, v2}, Lsd5;->m(I)Lk57;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v7

    .line 2255
    sget-object v8, Lu57;->a:Ljava/lang/Class;

    .line 2256
    .line 2257
    check-cast v5, Ls4;

    .line 2258
    .line 2259
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2260
    .line 2261
    .line 2262
    move-result v8

    .line 2263
    invoke-virtual {v5, v7}, Ls4;->a(Lk57;)I

    .line 2264
    .line 2265
    .line 2266
    move-result v5

    .line 2267
    invoke-static {v5}, Ljk1;->i(I)I

    .line 2268
    .line 2269
    .line 2270
    move-result v7

    .line 2271
    add-int/2addr v7, v5

    .line 2272
    add-int/2addr v7, v8

    .line 2273
    add-int/2addr v9, v7

    .line 2274
    goto/16 :goto_2e

    .line 2275
    .line 2276
    :pswitch_60
    const/16 v19, 0x0

    .line 2277
    .line 2278
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2279
    .line 2280
    .line 2281
    move-result v5

    .line 2282
    if-eqz v5, :cond_1f

    .line 2283
    .line 2284
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v0

    .line 2288
    instance-of v5, v0, Lgy0;

    .line 2289
    .line 2290
    if-eqz v5, :cond_21

    .line 2291
    .line 2292
    check-cast v0, Lgy0;

    .line 2293
    .line 2294
    invoke-static {v12, v0}, Ljk1;->f(ILgy0;)I

    .line 2295
    .line 2296
    .line 2297
    move-result v0

    .line 2298
    :goto_2d
    add-int/2addr v0, v9

    .line 2299
    move v9, v0

    .line 2300
    goto/16 :goto_27

    .line 2301
    .line 2302
    :cond_21
    check-cast v0, Ljava/lang/String;

    .line 2303
    .line 2304
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2305
    .line 2306
    .line 2307
    move-result v5

    .line 2308
    invoke-static {v0}, Ljk1;->g(Ljava/lang/String;)I

    .line 2309
    .line 2310
    .line 2311
    move-result v0

    .line 2312
    add-int/2addr v0, v5

    .line 2313
    goto :goto_2d

    .line 2314
    :pswitch_61
    move/from16 v23, v15

    .line 2315
    .line 2316
    const/16 v19, 0x0

    .line 2317
    .line 2318
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2319
    .line 2320
    .line 2321
    move-result v5

    .line 2322
    if-eqz v5, :cond_20

    .line 2323
    .line 2324
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2325
    .line 2326
    .line 2327
    move-result v0

    .line 2328
    add-int/lit8 v0, v0, 0x1

    .line 2329
    .line 2330
    goto/16 :goto_2b

    .line 2331
    .line 2332
    :pswitch_62
    const/16 v19, 0x0

    .line 2333
    .line 2334
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2335
    .line 2336
    .line 2337
    move-result v5

    .line 2338
    if-eqz v5, :cond_20

    .line 2339
    .line 2340
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2341
    .line 2342
    .line 2343
    move-result v0

    .line 2344
    goto/16 :goto_2c

    .line 2345
    .line 2346
    :pswitch_63
    const/16 v19, 0x0

    .line 2347
    .line 2348
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2349
    .line 2350
    .line 2351
    move-result v5

    .line 2352
    if-eqz v5, :cond_20

    .line 2353
    .line 2354
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2355
    .line 2356
    .line 2357
    move-result v0

    .line 2358
    goto/16 :goto_2a

    .line 2359
    .line 2360
    :pswitch_64
    const/16 v19, 0x0

    .line 2361
    .line 2362
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2363
    .line 2364
    .line 2365
    move-result v5

    .line 2366
    if-eqz v5, :cond_1f

    .line 2367
    .line 2368
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2369
    .line 2370
    .line 2371
    move-result v0

    .line 2372
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2373
    .line 2374
    .line 2375
    move-result v5

    .line 2376
    int-to-long v7, v0

    .line 2377
    invoke-static {v7, v8}, Ljk1;->j(J)I

    .line 2378
    .line 2379
    .line 2380
    move-result v0

    .line 2381
    goto/16 :goto_28

    .line 2382
    .line 2383
    :pswitch_65
    const/16 v19, 0x0

    .line 2384
    .line 2385
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2386
    .line 2387
    .line 2388
    move-result v5

    .line 2389
    if-eqz v5, :cond_1f

    .line 2390
    .line 2391
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2392
    .line 2393
    .line 2394
    move-result-wide v7

    .line 2395
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2396
    .line 2397
    .line 2398
    move-result v0

    .line 2399
    invoke-static {v7, v8}, Ljk1;->j(J)I

    .line 2400
    .line 2401
    .line 2402
    move-result v5

    .line 2403
    goto/16 :goto_26

    .line 2404
    .line 2405
    :pswitch_66
    const/16 v19, 0x0

    .line 2406
    .line 2407
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2408
    .line 2409
    .line 2410
    move-result v5

    .line 2411
    if-eqz v5, :cond_1f

    .line 2412
    .line 2413
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2414
    .line 2415
    .line 2416
    move-result-wide v7

    .line 2417
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2418
    .line 2419
    .line 2420
    move-result v0

    .line 2421
    invoke-static {v7, v8}, Ljk1;->j(J)I

    .line 2422
    .line 2423
    .line 2424
    move-result v5

    .line 2425
    goto/16 :goto_26

    .line 2426
    .line 2427
    :pswitch_67
    const/16 v19, 0x0

    .line 2428
    .line 2429
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2430
    .line 2431
    .line 2432
    move-result v5

    .line 2433
    if-eqz v5, :cond_20

    .line 2434
    .line 2435
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2436
    .line 2437
    .line 2438
    move-result v0

    .line 2439
    goto/16 :goto_2c

    .line 2440
    .line 2441
    :pswitch_68
    const/16 v19, 0x0

    .line 2442
    .line 2443
    invoke-virtual/range {v0 .. v5}, Lsd5;->o(Ljava/lang/Object;IIII)Z

    .line 2444
    .line 2445
    .line 2446
    move-result v5

    .line 2447
    if-eqz v5, :cond_22

    .line 2448
    .line 2449
    invoke-static {v12}, Ljk1;->h(I)I

    .line 2450
    .line 2451
    .line 2452
    move-result v5

    .line 2453
    add-int/lit8 v5, v5, 0x8

    .line 2454
    .line 2455
    goto/16 :goto_25

    .line 2456
    .line 2457
    :cond_22
    :goto_2e
    add-int/lit8 v2, v2, 0x3

    .line 2458
    .line 2459
    const v8, 0xfffff

    .line 2460
    .line 2461
    .line 2462
    goto/16 :goto_0

    .line 2463
    .line 2464
    :cond_23
    iget-object v0, v0, Lsd5;->l:Lke8;

    .line 2465
    .line 2466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2467
    .line 2468
    .line 2469
    iget-object v0, v1, Lav3;->unknownFields:Lje8;

    .line 2470
    .line 2471
    invoke-virtual {v0}, Lje8;->b()I

    .line 2472
    .line 2473
    .line 2474
    move-result v0

    .line 2475
    add-int/2addr v0, v9

    .line 2476
    return v0

    .line 2477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public final i()Lav3;
    .locals 1

    .line 1
    iget-object v0, p0, Lsd5;->j:Lpm5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lsd5;->e:Ls4;

    .line 7
    .line 8
    check-cast p0, Lav3;

    .line 9
    .line 10
    invoke-virtual {p0}, Lav3;->i()Lav3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final j(Lav3;Lav3;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lsd5;->a:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lsd5;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    sget-object p3, Lef8;->c:Ldf8;

    .line 15
    .line 16
    invoke-virtual {p3, p2, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lsd5;->l(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Lsd5;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Le6;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m(I)Lk57;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Lsd5;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Lk57;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Ls96;->c:Ls96;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ls96;->a(Ljava/lang/Class;)Lk57;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final n(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lsd5;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lsd5;->L(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    invoke-static {p0}, Lsd5;->K(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lc6;->b()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    sget-object p0, Lef8;->c:Ldf8;

    .line 43
    .line 44
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_1
    sget-object p0, Lef8;->c:Ldf8;

    .line 53
    .line 54
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    cmp-long p0, p0, v2

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_2
    sget-object p0, Lef8;->c:Ldf8;

    .line 65
    .line 66
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_3
    sget-object p0, Lef8;->c:Ldf8;

    .line 75
    .line 76
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    cmp-long p0, p0, v2

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_4
    sget-object p0, Lef8;->c:Ldf8;

    .line 87
    .line 88
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_5
    sget-object p0, Lef8;->c:Ldf8;

    .line 97
    .line 98
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_6
    sget-object p0, Lef8;->c:Ldf8;

    .line 107
    .line 108
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_7
    sget-object p0, Lgy0;->c:Lgy0;

    .line 117
    .line 118
    sget-object p1, Lef8;->c:Ldf8;

    .line 119
    .line 120
    invoke-virtual {p1, p2, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lgy0;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    xor-int/2addr p0, v6

    .line 129
    return p0

    .line 130
    :pswitch_8
    sget-object p0, Lef8;->c:Ldf8;

    .line 131
    .line 132
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    if-eqz p0, :cond_3

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_9
    sget-object p0, Lef8;->c:Ldf8;

    .line 141
    .line 142
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    instance-of p1, p0, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    check-cast p0, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    xor-int/2addr p0, v6

    .line 157
    return p0

    .line 158
    :cond_0
    instance-of p1, p0, Lgy0;

    .line 159
    .line 160
    if-eqz p1, :cond_1

    .line 161
    .line 162
    sget-object p1, Lgy0;->c:Lgy0;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Lgy0;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    xor-int/2addr p0, v6

    .line 169
    return p0

    .line 170
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 171
    .line 172
    .line 173
    return v5

    .line 174
    :pswitch_a
    sget-object p0, Lef8;->c:Ldf8;

    .line 175
    .line 176
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->c(Ljava/lang/Object;J)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    return p0

    .line 181
    :pswitch_b
    sget-object p0, Lef8;->c:Ldf8;

    .line 182
    .line 183
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_3

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_c
    sget-object p0, Lef8;->c:Ldf8;

    .line 191
    .line 192
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 193
    .line 194
    .line 195
    move-result-wide p0

    .line 196
    cmp-long p0, p0, v2

    .line 197
    .line 198
    if-eqz p0, :cond_3

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_d
    sget-object p0, Lef8;->c:Ldf8;

    .line 202
    .line 203
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_e
    sget-object p0, Lef8;->c:Ldf8;

    .line 211
    .line 212
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 213
    .line 214
    .line 215
    move-result-wide p0

    .line 216
    cmp-long p0, p0, v2

    .line 217
    .line 218
    if-eqz p0, :cond_3

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :pswitch_f
    sget-object p0, Lef8;->c:Ldf8;

    .line 222
    .line 223
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->g(Ljava/lang/Object;J)J

    .line 224
    .line 225
    .line 226
    move-result-wide p0

    .line 227
    cmp-long p0, p0, v2

    .line 228
    .line 229
    if-eqz p0, :cond_3

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :pswitch_10
    sget-object p0, Lef8;->c:Ldf8;

    .line 233
    .line 234
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->e(Ljava/lang/Object;J)F

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_3

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :pswitch_11
    sget-object p0, Lef8;->c:Ldf8;

    .line 246
    .line 247
    invoke-virtual {p0, p2, v0, v1}, Ldf8;->d(Ljava/lang/Object;J)D

    .line 248
    .line 249
    .line 250
    move-result-wide p0

    .line 251
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 252
    .line 253
    .line 254
    move-result-wide p0

    .line 255
    cmp-long p0, p0, v2

    .line 256
    .line 257
    if-eqz p0, :cond_3

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 261
    .line 262
    shl-int p0, v6, p0

    .line 263
    .line 264
    sget-object p1, Lef8;->c:Ldf8;

    .line 265
    .line 266
    invoke-virtual {p1, p2, v2, v3}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    and-int/2addr p0, p1

    .line 271
    if-eqz p0, :cond_3

    .line 272
    .line 273
    :goto_0
    return v6

    .line 274
    :cond_3
    return v5

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    and-int p0, p4, p5

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final q(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Lsd5;->a:[I

    .line 4
    .line 5
    aget p0, p0, p3

    .line 6
    .line 7
    const p3, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p3

    .line 11
    int-to-long v0, p0

    .line 12
    sget-object p0, Lef8;->c:Ldf8;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, v1}, Ldf8;->f(Ljava/lang/Object;J)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, p2, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final r(Ljava/lang/Object;ILjava/lang/Object;Lc13;Lhk1;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lsd5;->L(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    sget-object p2, Lef8;->c:Ldf8;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0, v1}, Ldf8;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p0, p0, Lsd5;->m:Ll65;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lk65;->b:Lk65;

    .line 24
    .line 25
    invoke-virtual {p2}, Lk65;->b()Lk65;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, v0, v1, p2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-object v2, p2

    .line 37
    check-cast v2, Lk65;

    .line 38
    .line 39
    iget-boolean v2, v2, Lk65;->a:Z

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    sget-object v2, Lk65;->b:Lk65;

    .line 44
    .line 45
    invoke-virtual {v2}, Lk65;->b()Lk65;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, p2}, Ll65;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk65;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0, v1, v2}, Lef8;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object p2, v2

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast p2, Lk65;

    .line 60
    .line 61
    check-cast p3, Lh65;

    .line 62
    .line 63
    iget-object p0, p3, Lh65;->a:Lka;

    .line 64
    .line 65
    const/4 p1, 0x2

    .line 66
    invoke-virtual {p5, p1}, Lhk1;->w(I)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p5, Lhk1;->a:Lgk1;

    .line 70
    .line 71
    invoke-virtual {p3}, Lgk1;->w()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p3, v0}, Lgk1;->e(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, Lka;->c:Ljava/lang/Object;

    .line 80
    .line 81
    const-string v2, ""

    .line 82
    .line 83
    move-object v3, v1

    .line 84
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Lhk1;->a()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v5, 0x7fffffff

    .line 89
    .line 90
    .line 91
    if-eq v4, v5, :cond_7

    .line 92
    .line 93
    invoke-virtual {p3}, Lgk1;->c()Z

    .line 94
    .line 95
    .line 96
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 v5, 0x1

    .line 101
    const-string v6, "Unable to parse map entry."

    .line 102
    .line 103
    if-eq v4, v5, :cond_5

    .line 104
    .line 105
    if-eq v4, p1, :cond_4

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {p5}, Lhk1;->x()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance v4, Lfg4;

    .line 115
    .line 116
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v4

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v4, p0, Lka;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v4, Lgw8;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {p5, v4, v5, p4}, Lhk1;->i(Lgw8;Ljava/lang/Class;Lc13;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    iget-object v4, p0, Lka;->a:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Lgw8;

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p5, v4, v5, v5}, Lhk1;->i(Lgw8;Ljava/lang/Class;Lc13;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2
    :try_end_1
    .catch Leg4; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    goto :goto_1

    .line 145
    :catch_0
    :try_start_2
    invoke-virtual {p5}, Lhk1;->x()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    new-instance p0, Lfg4;

    .line 153
    .line 154
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    :goto_2
    invoke-virtual {p2, v2, v3}, Lk65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, v0}, Lgk1;->d(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_3
    invoke-virtual {p3, v0}, Lgk1;->d(I)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method

.method public final s(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lsd5;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lsd5;->o:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lsd5;->m(I)Lk57;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lk57;->i()Lav3;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lsd5;->G(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lk57;->i()Lav3;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v3}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Lsd5;->a:[I

    .line 87
    .line 88
    aget p0, p0, p1

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "Source subfield "

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method public final t(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsd5;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, p3, v1, p1}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lsd5;->L(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lsd5;->o:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lsd5;->m(I)Lk57;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p2, v1, p1}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lk57;->i()Lav3;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, p2, v1, p1}, Lsd5;->H(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Lk57;->i()Lav3;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1, p0}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_3
    invoke-interface {p3, p0, v5}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p1, v0, p1

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Source subfield "

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lsd5;->m(I)Lk57;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lsd5;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lsd5;->n(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lk57;->i()Lav3;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lsd5;->o:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lk57;->i()Lav3;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final v(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lsd5;->m(I)Lk57;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lsd5;->q(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lk57;->i()Lav3;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p2, Lsd5;->o:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lsd5;->L(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p3, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p3

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lsd5;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lk57;->i()Lav3;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lk57;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method
