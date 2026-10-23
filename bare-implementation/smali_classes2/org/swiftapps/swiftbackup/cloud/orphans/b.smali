.class public final Lorg/swiftapps/swiftbackup/cloud/orphans/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ldd1;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>(Ldd1;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput p3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 24
    .line 25
    iput-boolean p4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 26
    .line 27
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean p6, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 30
    .line 31
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 34
    .line 35
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 36
    .line 37
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 38
    .line 39
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 40
    .line 41
    iput p12, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 42
    .line 43
    iput p13, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 44
    .line 45
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;
    .locals 14

    .line 1
    move/from16 v0, p7

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 16
    .line 17
    and-int/lit16 v8, v0, 0x80

    .line 18
    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v8, p1

    .line 25
    :goto_0
    and-int/lit16 v9, v0, 0x100

    .line 26
    .line 27
    if-eqz v9, :cond_1

    .line 28
    .line 29
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object/from16 v9, p2

    .line 33
    .line 34
    :goto_1
    and-int/lit16 v10, v0, 0x200

    .line 35
    .line 36
    if-eqz v10, :cond_2

    .line 37
    .line 38
    iget-object v10, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object/from16 v10, p3

    .line 42
    .line 43
    :goto_2
    and-int/lit16 v11, v0, 0x400

    .line 44
    .line 45
    if-eqz v11, :cond_3

    .line 46
    .line 47
    iget-object v11, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v11, p4

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v12, v0, 0x800

    .line 53
    .line 54
    if-eqz v12, :cond_4

    .line 55
    .line 56
    iget v12, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move/from16 v12, p5

    .line 60
    .line 61
    :goto_4
    and-int/lit16 v0, v0, 0x1000

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 66
    .line 67
    move v13, v0

    .line 68
    goto :goto_5

    .line 69
    :cond_5
    move/from16 v13, p6

    .line 70
    .line 71
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 90
    .line 91
    invoke-direct/range {v0 .. v13}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;-><init>(Ldd1;Ljava/lang/String;IZLjava/lang/String;ZLjava/lang/String;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 6
    .line 7
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->RESULTS:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lwa1;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v4, v3, Lwa1;->d:Lva1;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v3, v3, Lwa1;->b:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, "\u0000"

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 57
    .line 58
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->SCANNING:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->DELETING:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_3
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 34
    .line 35
    iget v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 59
    .line 60
    iget-boolean v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 77
    .line 78
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 79
    .line 80
    if-eq v0, v1, :cond_9

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_9
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 84
    .line 85
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_a

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_a
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 95
    .line 96
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_b

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_b
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_c

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_c
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 117
    .line 118
    iget v1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 119
    .line 120
    if-eq v0, v1, :cond_d

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_d
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 124
    .line 125
    iget p1, p1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 126
    .line 127
    if-eq p0, p1, :cond_e

    .line 128
    .line 129
    :goto_0
    const/4 p0, 0x0

    .line 130
    return p0

    .line 131
    :cond_e
    :goto_1
    const/4 p0, 0x1

    .line 132
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v0

    .line 53
    mul-int/2addr v2, v1

    .line 54
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v0, v2, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int/2addr v2, v0

    .line 67
    mul-int/2addr v2, v1

    .line 68
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_0
    add-int/2addr v2, v0

    .line 79
    mul-int/2addr v2, v1

    .line 80
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 81
    .line 82
    invoke-static {v0, v2, v1}, Leq3;->d(III)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    add-int/2addr p0, v0

    .line 93
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(cloudType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a:Ldd1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", providerTitle="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", providerIconRes="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isProviderPresetIcon="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->d:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", providerSubtitle="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isCloudConnected="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->f:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", providerIdentityKey="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", phase="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->h:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", files="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->i:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", selectedIds="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->j:Ljava/util/Set;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", statusMessage="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->k:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", scannedFileCount="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->l:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", firebaseReferenceCount="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ")"

    .line 129
    .line 130
    iget p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->m:I

    .line 131
    .line 132
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method
