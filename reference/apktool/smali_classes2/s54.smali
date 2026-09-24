.class public final Ls54;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu54;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final k:Z

.field public final n:Lji;

.field public final p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final q:Ljava/lang/Integer;

.field public final r:Lzc6;

.field public final t:Ljava/util/List;

.field public final x:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IILji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;II)V
    .locals 17

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v9, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v9, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_1
    move v10, v2

    .line 18
    and-int/lit16 v1, v0, 0x80

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v11, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move-object/from16 v11, p7

    .line 26
    .line 27
    :goto_1
    and-int/lit16 v1, v0, 0x100

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v12, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_3
    move-object/from16 v12, p8

    .line 34
    .line 35
    :goto_2
    and-int/lit16 v1, v0, 0x200

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v13, v2

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    move-object/from16 v13, p9

    .line 42
    .line 43
    :goto_3
    and-int/lit16 v0, v0, 0x400

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    move-object v14, v2

    .line 48
    :goto_4
    move-object/from16 v3, p0

    .line 49
    .line 50
    move-object/from16 v4, p1

    .line 51
    .line 52
    move-object/from16 v5, p2

    .line 53
    .line 54
    move-object/from16 v6, p3

    .line 55
    .line 56
    move-object/from16 v7, p4

    .line 57
    .line 58
    move/from16 v8, p5

    .line 59
    .line 60
    move-object/from16 v15, p11

    .line 61
    .line 62
    move/from16 v16, p12

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_5
    move-object/from16 v14, p10

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :goto_5
    invoke-direct/range {v3 .. v16}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IIZLji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IIZLji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ls54;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Ls54;->b:Lu54;

    .line 75
    iput-object p3, p0, Ls54;->c:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Ls54;->d:Ljava/lang/String;

    .line 77
    iput p5, p0, Ls54;->e:I

    .line 78
    iput p6, p0, Ls54;->f:I

    .line 79
    iput-boolean p7, p0, Ls54;->k:Z

    .line 80
    iput-object p8, p0, Ls54;->n:Lji;

    .line 81
    iput-object p9, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 82
    iput-object p10, p0, Ls54;->q:Ljava/lang/Integer;

    .line 83
    iput-object p11, p0, Ls54;->r:Lzc6;

    .line 84
    iput-object p12, p0, Ls54;->t:Ljava/util/List;

    .line 85
    iput p13, p0, Ls54;->x:I

    return-void
.end method

.method public static a(Ls54;Lzc6;I)Ls54;
    .locals 14

    .line 1
    iget-object v1, p0, Ls54;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Ls54;->b:Lu54;

    .line 4
    .line 5
    iget-object v3, p0, Ls54;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Ls54;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget v5, p0, Ls54;->e:I

    .line 10
    .line 11
    iget v6, p0, Ls54;->f:I

    .line 12
    .line 13
    iget-boolean v7, p0, Ls54;->k:Z

    .line 14
    .line 15
    iget-object v8, p0, Ls54;->n:Lji;

    .line 16
    .line 17
    iget-object v9, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 18
    .line 19
    iget-object v10, p0, Ls54;->q:Ljava/lang/Integer;

    .line 20
    .line 21
    move/from16 v0, p2

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0x400

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Ls54;->r:Lzc6;

    .line 28
    .line 29
    :cond_0
    move-object v11, p1

    .line 30
    iget-object v12, p0, Ls54;->t:Ljava/util/List;

    .line 31
    .line 32
    iget v13, p0, Ls54;->x:I

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v0, Ls54;

    .line 50
    .line 51
    invoke-direct/range {v0 .. v13}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IIZLji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;I)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ls54;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Ls54;

    .line 12
    .line 13
    iget-object v1, p0, Ls54;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Ls54;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Ls54;->b:Lu54;

    .line 25
    .line 26
    iget-object v3, p1, Ls54;->b:Lu54;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Ls54;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Ls54;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Ls54;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Ls54;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Ls54;->e:I

    .line 54
    .line 55
    iget v3, p1, Ls54;->e:I

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget v1, p0, Ls54;->f:I

    .line 61
    .line 62
    iget v3, p1, Ls54;->f:I

    .line 63
    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-boolean v1, p0, Ls54;->k:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Ls54;->k:Z

    .line 70
    .line 71
    if-eq v1, v3, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Ls54;->n:Lji;

    .line 75
    .line 76
    iget-object v3, p1, Ls54;->n:Lji;

    .line 77
    .line 78
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget-object v1, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 86
    .line 87
    iget-object v3, p1, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 88
    .line 89
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_a

    .line 94
    .line 95
    return v2

    .line 96
    :cond_a
    iget-object v1, p0, Ls54;->q:Ljava/lang/Integer;

    .line 97
    .line 98
    iget-object v3, p1, Ls54;->q:Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_b

    .line 105
    .line 106
    return v2

    .line 107
    :cond_b
    iget-object v1, p0, Ls54;->r:Lzc6;

    .line 108
    .line 109
    iget-object v3, p1, Ls54;->r:Lzc6;

    .line 110
    .line 111
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_c

    .line 116
    .line 117
    return v2

    .line 118
    :cond_c
    iget-object v1, p0, Ls54;->t:Ljava/util/List;

    .line 119
    .line 120
    iget-object v3, p1, Ls54;->t:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_d

    .line 127
    .line 128
    return v2

    .line 129
    :cond_d
    iget p0, p0, Ls54;->x:I

    .line 130
    .line 131
    iget p1, p1, Ls54;->x:I

    .line 132
    .line 133
    if-eq p0, p1, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    return v0
.end method

.method public final getCopy()Ljl0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x1fff

    .line 3
    .line 4
    invoke-static {p0, v0, v1}, Ls54;->a(Ls54;Lzc6;I)Ls54;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ls54;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Ls54;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Ls54;->b:Lu54;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Ls54;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Lfz5;->g(IILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object v3, p0, Ls54;->d:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move v3, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :goto_0
    add-int/2addr v0, v3

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget v3, p0, Ls54;->e:I

    .line 38
    .line 39
    invoke-static {v3, v0, v1}, Leq3;->d(III)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v3, p0, Ls54;->f:I

    .line 44
    .line 45
    invoke-static {v3, v0, v1}, Leq3;->d(III)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-boolean v3, p0, Ls54;->k:Z

    .line 50
    .line 51
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v3, p0, Ls54;->n:Lji;

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    move v3, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v3}, Lji;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_1
    add-int/2addr v0, v3

    .line 66
    mul-int/2addr v0, v1

    .line 67
    iget-object v3, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_2
    add-int/2addr v0, v3

    .line 78
    mul-int/2addr v0, v1

    .line 79
    iget-object v3, p0, Ls54;->q:Ljava/lang/Integer;

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    move v3, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :goto_3
    add-int/2addr v0, v3

    .line 90
    mul-int/2addr v0, v1

    .line 91
    iget-object v3, p0, Ls54;->r:Lzc6;

    .line 92
    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {v3}, Lzc6;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_4
    add-int/2addr v0, v2

    .line 101
    mul-int/2addr v0, v1

    .line 102
    iget-object v2, p0, Ls54;->t:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget p0, p0, Ls54;->x:I

    .line 109
    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    add-int/2addr p0, v0

    .line 115
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HomeSearchResult(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ls54;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", section="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ls54;->b:Lu54;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", title="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", subtitle="

    .line 29
    .line 30
    const-string v2, ", iconRes="

    .line 31
    .line 32
    iget-object v3, p0, Ls54;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Ls54;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", iconColorRes="

    .line 40
    .line 41
    const-string v2, ", iconTinted="

    .line 42
    .line 43
    iget v3, p0, Ls54;->e:I

    .line 44
    .line 45
    iget v4, p0, Ls54;->f:I

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Ls54;->k:Z

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", app="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Ls54;->n:Lji;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", folderItem="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", shortcutId="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Ls54;->q:Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", quickActionItem="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Ls54;->r:Lzc6;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", searchableText="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Ls54;->t:Ljava/util/List;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", displayOrder="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ")"

    .line 111
    .line 112
    iget p0, p0, Ls54;->x:I

    .line 113
    .line 114
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
