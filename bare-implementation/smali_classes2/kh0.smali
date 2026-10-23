.class public final Lkh0;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Ldd1;

.field public final h:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lq9;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ldd1;->Box:Ldd1;

    .line 11
    .line 12
    iput-object v1, p0, Lkh0;->g:Ldd1;

    .line 13
    .line 14
    new-instance v1, Lgv7;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lkh0;->h:Lgv7;

    .line 20
    .line 21
    return-void
.end method

.method public static v(Lq63;J)Ljava/io/InputStream;
    .locals 4

    .line 1
    sget-boolean v0, Lq63;->d:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-lez v2, :cond_2

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long v0, v2, v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    sub-long/2addr p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    add-long/2addr p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 36
    .line 37
    const-string p2, "Unexpected EOF while seeking Box upload source"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 1

    .line 1
    new-instance v0, Loh0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Loh0;-><init>(Lkh0;Lzv1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrh0;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lrh0;-><init>(Lkh0;Lfo2;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsj0;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lsj0;-><init>(Lkh0;Lrf8;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, " ("

    .line 6
    .line 7
    const-string v3, ")"

    .line 8
    .line 9
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    const-string v4, "deleteTaggedBackups: Querying cloud for files tagged with "

    .line 16
    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v4, "BClient"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Lkh0;->w(Ljava/lang/String;Ljava/util/List;)Lui1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v9, v2, Lui1;->a:Ljava/util/List;

    .line 35
    .line 36
    iget-object v2, v2, Lui1;->b:Ljava/lang/Exception;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    const-string v11, "deleteTaggedBackups: "

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-string v4, "deleteTaggedBackups: Cloud files to be deleted = "

    .line 48
    .line 49
    invoke-static {v2, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v7, 0x4

    .line 54
    const/4 v8, 0x0

    .line 55
    const-string v4, "BClient"

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    invoke-static {v9, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lpg1;

    .line 87
    .line 88
    iget-object v4, v4, Lpg1;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    const/16 v16, 0x4

    .line 97
    .line 98
    const/16 v17, 0x0

    .line 99
    .line 100
    const-string v13, "BClient"

    .line 101
    .line 102
    const-string v14, "deleteTaggedBackups: Deleting cloud files"

    .line 103
    .line 104
    const/4 v15, 0x0

    .line 105
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Ljd1;

    .line 109
    .line 110
    invoke-static {v2}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v3, v2}, Ljd1;-><init>(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Loh0;

    .line 118
    .line 119
    invoke-direct {v2, v0, v3}, Loh0;-><init>(Lkh0;Lzv1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lxh2;->c()Ljq6;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljq6;->q()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    const/16 v16, 0x4

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const-string v13, "BClient"

    .line 137
    .line 138
    const-string v14, "deleteTaggedBackups: Successful"

    .line 139
    .line 140
    const/4 v15, 0x0

    .line 141
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const/4 v0, 0x1

    .line 145
    return v0

    .line 146
    :cond_1
    iget-object v0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Ljava/lang/Exception;

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_2
    invoke-static {v11, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    const/16 v16, 0x4

    .line 161
    .line 162
    const/16 v17, 0x0

    .line 163
    .line 164
    const-string v13, "BClient"

    .line 165
    .line 166
    const/4 v15, 0x0

    .line 167
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return v10

    .line 171
    :cond_3
    if-eqz v2, :cond_4

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :cond_4
    invoke-static {v11, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const/4 v7, 0x4

    .line 182
    const/4 v8, 0x0

    .line 183
    const-string v4, "BClient"

    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return v10
.end method

.method public final f()Lui1;
    .locals 5

    .line 1
    const-string v0, "created_at"

    .line 2
    .line 3
    const-string v1, "modified_at"

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    const-string v4, "size"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, ".cls ("

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1, v0}, Lkh0;->w(Ljava/lang/String;Ljava/util/List;)Lui1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkh0;->g:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BClient"

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 5

    .line 1
    const-string v0, "created_at"

    .line 2
    .line 3
    const-string v1, "modified_at"

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    const-string v4, "size"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, ".msg ("

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1, v0}, Lkh0;->w(Ljava/lang/String;Ljava/util/List;)Lui1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final k()Lui1;
    .locals 5

    .line 1
    const-string v0, "created_at"

    .line 2
    .line 3
    const-string v1, "modified_at"

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    const-string v4, "size"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ".wal"

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lkh0;->w(Ljava/lang/String;Ljava/util/List;)Lui1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final l()Lui1;
    .locals 5

    .line 1
    const-string v0, "created_at"

    .line 2
    .line 3
    const-string v1, "modified_at"

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    const-string v4, "size"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ".wfi"

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Lkh0;->w(Ljava/lang/String;Ljava/util/List;)Lui1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final m()Ljm1;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const-string v2, "id"

    .line 19
    .line 20
    const-string v3, "name"

    .line 21
    .line 22
    const-string v4, "size"

    .line 23
    .line 24
    const-string v5, "created_at"

    .line 25
    .line 26
    const-string v6, "modified_at"

    .line 27
    .line 28
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v0, v2}, Lkh0;->t(Ljava/lang/String;Ljava/util/List;)Lcv0;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p0, p0, Lcv0;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    .line 46
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lav0;

    .line 68
    .line 69
    new-instance v3, Lpg1;

    .line 70
    .line 71
    iget-object v4, v2, Lav0;->b:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, v2, Lav0;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v3, v4, v5}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-wide v4, v2, Lav0;->c:J

    .line 79
    .line 80
    iput-wide v4, v3, Lpg1;->c:J

    .line 81
    .line 82
    iget-wide v4, v2, Lav0;->d:J

    .line 83
    .line 84
    iput-wide v4, v3, Lpg1;->d:J

    .line 85
    .line 86
    iget-wide v4, v2, Lav0;->e:J

    .line 87
    .line 88
    iput-wide v4, v3, Lpg1;->e:J

    .line 89
    .line 90
    iput-object v1, v3, Lpg1;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object p0, Lqf1;->OPAQUE:Lqf1;

    .line 97
    .line 98
    invoke-static {v0, p0}, Lk55;->h(Ljava/util/ArrayList;Lqf1;)Ljm1;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_2
    const-string p0, "Box main folder id is not initialized"

    .line 104
    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    new-instance v0, Lxa1;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lxa1;-><init>(Ljava/lang/Exception;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 10

    .line 1
    const-string v0, "startCheckAccess()"

    .line 2
    .line 3
    const-string v1, "BClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 9
    .line 10
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lqi1;->a:Lqi1;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "startCheckAccess: "

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lkh0;->u()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object p0, v0

    .line 50
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 51
    .line 52
    invoke-static {p0}, Ldv0;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v7, 0x4

    .line 61
    const/4 v8, 0x0

    .line 62
    const-string v4, "BClient"

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    :goto_1
    if-eqz p0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-static {p0}, Lqb1;->s(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :try_start_1
    sget-object p0, Lzu0;->a:Lzu0;

    .line 82
    .line 83
    invoke-static {}, Lzu0;->c()Lsv0;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lni1;

    .line 88
    .line 89
    iget-object v3, p0, Lsv0;->d:Ljava/lang/Long;

    .line 90
    .line 91
    iget-object v4, p0, Lsv0;->c:Ljava/lang/Long;

    .line 92
    .line 93
    invoke-direct {v0, v3, v4}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lsv0;->b:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-static {p0}, Lqb1;->q(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lsi1;

    .line 110
    .line 111
    invoke-direct {v3, v0, p0}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v3

    .line 115
    :catch_1
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "startCheckAccess: Email address null to uniquely identify the cloud drive!"

    .line 121
    .line 122
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v3, "startCheckAccess: Error while checking access + "

    .line 131
    .line 132
    invoke-static {v3, v0, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const/4 v8, 0x4

    .line 150
    const/4 v9, 0x0

    .line 151
    const-string v5, "BClient"

    .line 152
    .line 153
    const/4 v7, 0x0

    .line 154
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Loi1;

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-direct {v0, p0, v1}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_5
    :goto_3
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 165
    .line 166
    const/4 v6, 0x4

    .line 167
    const/4 v7, 0x0

    .line 168
    const-string v3, "BClient"

    .line 169
    .line 170
    const-string v4, "startCheckAccess: Null folder id!"

    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object p0, Lpi1;->a:Lpi1;

    .line 177
    .line 178
    return-object p0
.end method

.method public final o(Ljava/lang/String;Ljava/io/OutputStream;JJ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "/2.0/files/"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "/content"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "bytes="

    .line 42
    .line 43
    const-string v1, "-"

    .line 44
    .line 45
    invoke-static {v0, v1, p3, p4}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    iget-object p4, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 57
    .line 58
    const-string p5, "Range"

    .line 59
    .line 60
    invoke-virtual {p4, p5, p3}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 64
    .line 65
    .line 66
    new-instance p3, Lokhttp3/Request;

    .line 67
    .line 68
    invoke-direct {p3, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-static {p3}, Lmv0;->j(Lokhttp3/Request;)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    invoke-virtual {p0, p3, p4, p1}, Lmv0;->e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :try_start_0
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 81
    .line 82
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/16 p3, 0x2000

    .line 87
    .line 88
    :try_start_1
    invoke-static {p1, p2, p3}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_0

    .line 100
    :catchall_1
    move-exception p2

    .line 101
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    :catchall_2
    move-exception p3

    .line 103
    :try_start_4
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    :catchall_3
    move-exception p2

    .line 109
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p2
.end method

.method public final p(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "/2.0/files/"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "/thumbnail.jpg"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "min_width"

    .line 39
    .line 40
    const/16 v1, 0x140

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v0, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "min_height"

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v0, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "max_width"

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v0, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "max_height"

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lokhttp3/Request;

    .line 88
    .line 89
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-static {v0}, Lmv0;->j(Lokhttp3/Request;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0, v0, v1, p1}, Lmv0;->e(Lokhttp3/Request;ZLjv0;)Lokhttp3/Response;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 102
    .line 103
    iget v1, p0, Lokhttp3/Response;->d:I

    .line 104
    .line 105
    const/16 v2, 0xca

    .line 106
    .line 107
    if-eq v1, v2, :cond_0

    .line 108
    .line 109
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 110
    .line 111
    .line 112
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/16 v0, 0x2000

    .line 114
    .line 115
    :try_start_1
    invoke-static {p1, p2, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_0

    .line 127
    :catchall_1
    move-exception p2

    .line 128
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    :try_start_4
    invoke-static {p1, p2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_0
    invoke-static {p0}, Lmv0;->n(Lokhttp3/Response;)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v2, Lhv0;

    .line 143
    .line 144
    invoke-static {v0, v1, p1}, Lmv0;->c(Lokhttp3/Request;ILjava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {v2, v1, p1, p2, v0}, Lhv0;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 153
    :catchall_3
    move-exception p2

    .line 154
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p2
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "name"

    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    const-string v2, "id"

    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lkh0;->t(Ljava/lang/String;Ljava/util/List;)Lcv0;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Lcv0;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v1, p1

    .line 40
    check-cast v1, Lav0;

    .line 41
    .line 42
    iget-object v1, v1, Lav0;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object p1, v0

    .line 52
    :goto_0
    check-cast p1, Lav0;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p0, p1, Lav0;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-lez p1, :cond_2

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    return-object v0
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "0"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lkh0;->t(Ljava/lang/String;Ljava/util/List;)Lcv0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcv0;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Lbv0;

    .line 40
    .line 41
    iget-object v2, v2, Lbv0;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v0, v1

    .line 51
    :goto_0
    check-cast v0, Lbv0;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p0, v0, Lbv0;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-lez p1, :cond_2

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_2
    return-object v1
.end method

.method public final s()Lmv0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkh0;->h:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmv0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final t(Ljava/lang/String;Ljava/util/List;)Lcv0;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "type"

    .line 19
    .line 20
    invoke-static {v2, p2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v7, 0x0

    .line 29
    const/16 v8, 0x3e

    .line 30
    .line 31
    const-string v4, ","

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v3, 0x0

    .line 40
    move-object v4, v3

    .line 41
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v6, "/2.0/folders/"

    .line 44
    .line 45
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, "/items"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0, v5}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "fields"

    .line 69
    .line 70
    invoke-virtual {v5, v6, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v6, "usemarker"

    .line 74
    .line 75
    const-string v7, "true"

    .line 76
    .line 77
    invoke-virtual {v5, v6, v7}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "limit"

    .line 81
    .line 82
    const-string v7, "1000"

    .line 83
    .line 84
    invoke-virtual {v5, v6, v7}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    const-string v6, "marker"

    .line 90
    .line 91
    invoke-virtual {v5, v6, v4}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {v5}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->b()V

    .line 103
    .line 104
    .line 105
    new-instance v5, Lokhttp3/Request;

    .line 106
    .line 107
    invoke-direct {v5, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 108
    .line 109
    .line 110
    const/4 v4, 0x6

    .line 111
    invoke-static {p0, v5, v3, v4}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "entries"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5}, Lmv0;->m(Lorg/json/JSONArray;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_4

    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Lorg/json/JSONObject;

    .line 140
    .line 141
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const-string v8, "file"

    .line 146
    .line 147
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_3

    .line 152
    .line 153
    invoke-static {v6}, Lmv0;->q(Lorg/json/JSONObject;)Lav0;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_2

    .line 158
    .line 159
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const-string v8, "folder"

    .line 164
    .line 165
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_2

    .line 170
    .line 171
    invoke-static {v6}, Lmv0;->r(Lorg/json/JSONObject;)Lbv0;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    if-eqz v6, :cond_2

    .line 176
    .line 177
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    const-string v5, "next_marker"

    .line 182
    .line 183
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_5

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    move-object v4, v3

    .line 198
    :goto_1
    if-eqz v4, :cond_6

    .line 199
    .line 200
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_0

    .line 205
    .line 206
    :cond_6
    new-instance p0, Lcv0;

    .line 207
    .line 208
    invoke-direct {p0, v0, v1}, Lcv0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    return-object p0
.end method

.method public final declared-synchronized u()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Main folder created: "

    .line 2
    .line 3
    const-string v1, "Main folder already exists: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "BClient"

    .line 7
    .line 8
    const-string v3, "getOrCreateMainFolder"

    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lkh0;->g:Ldd1;

    .line 14
    .line 15
    invoke-virtual {v2}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v2}, Lkh0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v0, "BClient"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-string v1, "BClient"

    .line 38
    .line 39
    const-string v3, "Main folder not found, Creating folder"

    .line 40
    .line 41
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v2}, Lmv0;->d(Ljava/lang/String;)Lbv0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, v1, Lbv0;->a:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "BClient"

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_0
    monitor-exit p0

    .line 64
    return-object v3

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw v0
.end method

.method public final w(Ljava/lang/String;Ljava/util/List;)Lui1;
    .locals 10

    .line 1
    const-string v0, "search: Total files = "

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string v4, "parent"

    .line 18
    .line 19
    invoke-static {v4, p2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    invoke-direct {v4, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string v4, "id"

    .line 37
    .line 38
    const-string v5, "name"

    .line 39
    .line 40
    const-string v6, "size"

    .line 41
    .line 42
    const-string v7, "created_at"

    .line 43
    .line 44
    const-string v8, "modified_at"

    .line 45
    .line 46
    const-string v9, "parent"

    .line 47
    .line 48
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :goto_0
    invoke-virtual {p0, v3, p1, p2}, Lkh0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    const-string p0, "BClient"

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-object p0, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-string p0, "Box main folder id is not initialized"

    .line 87
    .line 88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    invoke-static {p0}, Ldv0;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string v0, "search: "

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v7, 0x4

    .line 107
    const/4 v8, 0x0

    .line 108
    const-string v4, "BClient"

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v4, 0x0

    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object v5, v3

    .line 139
    check-cast v5, Lav0;

    .line 140
    .line 141
    iget-object v6, v5, Lav0;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v6, p1, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    iget-object v4, v5, Lav0;->f:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v4, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_2

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    sget-object p2, Lgv0;->a:Ljava/util/List;

    .line 162
    .line 163
    new-instance p2, Ljava/util/ArrayList;

    .line 164
    .line 165
    const/16 v1, 0xa

    .line 166
    .line 167
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_4

    .line 183
    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lav0;

    .line 189
    .line 190
    iget-object v5, v5, Lav0;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_4
    invoke-static {p2}, Lgv0;->c(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lgv0;->a()Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    if-eqz p2, :cond_5

    .line 204
    .line 205
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$Data;->getItems()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    goto :goto_5

    .line 210
    :cond_5
    move-object p2, v2

    .line 211
    :goto_5
    if-eqz p2, :cond_a

    .line 212
    .line 213
    new-instance v3, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    :cond_6
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_b

    .line 227
    .line 228
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    move-object v6, v5

    .line 233
    check-cast v6, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 234
    .line 235
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v7, p1, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_6

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_7

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    if-eqz v8, :cond_9

    .line 261
    .line 262
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    check-cast v8, Lav0;

    .line 267
    .line 268
    iget-object v8, v8, Lav0;->a:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-eqz v8, :cond_8

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_9
    :goto_7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_a
    move-object v3, v2

    .line 286
    :cond_b
    if-nez v3, :cond_c

    .line 287
    .line 288
    sget-object v3, Lov2;->a:Lov2;

    .line 289
    .line 290
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_d

    .line 308
    .line 309
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Lav0;

    .line 314
    .line 315
    new-instance v4, Lpg1;

    .line 316
    .line 317
    iget-object v5, v0, Lav0;->b:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v6, v0, Lav0;->a:Ljava/lang/String;

    .line 320
    .line 321
    invoke-direct {v4, v5, v6}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-wide v5, v0, Lav0;->c:J

    .line 325
    .line 326
    iput-wide v5, v4, Lpg1;->c:J

    .line 327
    .line 328
    iget-wide v5, v0, Lav0;->d:J

    .line 329
    .line 330
    iput-wide v5, v4, Lpg1;->d:J

    .line 331
    .line 332
    iget-wide v5, v0, Lav0;->e:J

    .line 333
    .line 334
    iput-wide v5, v4, Lpg1;->e:J

    .line 335
    .line 336
    iput-object v2, v4, Lpg1;->f:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-static {v3, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_e

    .line 360
    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;

    .line 366
    .line 367
    new-instance v3, Lpg1;

    .line 368
    .line 369
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getId()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-direct {v3, v4, v5}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getSize()J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    iput-wide v4, v3, Lpg1;->c:J

    .line 385
    .line 386
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getModifiedAtMillis()J

    .line 387
    .line 388
    .line 389
    move-result-wide v4

    .line 390
    iput-wide v4, v3, Lpg1;->d:J

    .line 391
    .line 392
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/helpers/BoxRecentUploadCache$CachedBoxFile;->getModifiedAtMillis()J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    iput-wide v4, v3, Lpg1;->e:J

    .line 397
    .line 398
    iput-object v2, v3, Lpg1;->f:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_e
    invoke-static {p1, p2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    new-instance p2, Lui1;

    .line 409
    .line 410
    invoke-direct {p2, p0, p1}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 411
    .line 412
    .line 413
    return-object p2
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    move-object v2, p3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v2, v3

    .line 24
    :goto_0
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v4, "parent"

    .line 27
    .line 28
    invoke-static {v4, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v8, 0x0

    .line 37
    const/16 v9, 0x3e

    .line 38
    .line 39
    const-string v5, ","

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v2, v3

    .line 49
    :goto_1
    const-string v4, "/2.0/search"

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lmv0;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "query"

    .line 60
    .line 61
    invoke-virtual {v4, v5, p2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v5, "type"

    .line 65
    .line 66
    const-string v6, "file"

    .line 67
    .line 68
    invoke-virtual {v4, v5, v6}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v5, "ancestor_folder_ids"

    .line 72
    .line 73
    invoke-virtual {v4, v5, p1}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v5, "200"

    .line 77
    .line 78
    const-string v6, "limit"

    .line 79
    .line 80
    invoke-virtual {v4, v6, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "offset"

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v4, v5, v7}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const-string v5, "fields"

    .line 95
    .line 96
    invoke-virtual {v4, v5, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()V

    .line 108
    .line 109
    .line 110
    new-instance v4, Lokhttp3/Request;

    .line 111
    .line 112
    invoke-direct {v4, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 113
    .line 114
    .line 115
    const/4 v2, 0x6

    .line 116
    invoke-static {p0, v4, v3, v2}, Lmv0;->h(Lmv0;Lokhttp3/Request;Ljv0;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v4, "entries"

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Lmv0;->m(Lorg/json/JSONArray;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Lorg/json/JSONObject;

    .line 154
    .line 155
    invoke-static {v8}, Lmv0;->q(Lorg/json/JSONObject;)Lav0;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    if-eqz v8, :cond_4

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    invoke-static {v7, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 166
    .line 167
    .line 168
    const-string v4, "total_count"

    .line 169
    .line 170
    const/4 v7, -0x1

    .line 171
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    if-ltz v4, :cond_6

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    move-object v7, v3

    .line 183
    :goto_3
    const/16 v4, 0xc8

    .line 184
    .line 185
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    if-lez v2, :cond_7

    .line 194
    .line 195
    move-object v3, v6

    .line 196
    :cond_7
    if-eqz v3, :cond_8

    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    :cond_8
    add-int/2addr v1, v4

    .line 203
    if-lez v5, :cond_9

    .line 204
    .line 205
    const/16 v2, 0x2710

    .line 206
    .line 207
    if-gt v1, v2, :cond_9

    .line 208
    .line 209
    if-eqz v7, :cond_0

    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-lt v1, v2, :cond_0

    .line 216
    .line 217
    :cond_9
    return-object v0
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ld86;JLjv0;)Lav0;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object p1, p2

    .line 13
    new-instance p2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "name"

    .line 19
    .line 20
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "id"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v0, "parent"

    .line 34
    .line 35
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p5}, Lmv0;->k(Ljava/lang/String;Lorg/json/JSONObject;Ld86;J)Lokhttp3/MultipartBody;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "/api/2.0/files/content"

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lmv0;->u(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p3, "fields"

    .line 53
    .line 54
    const-string p4, "id,name,size,modified_at"

    .line 55
    .line 56
    invoke-virtual {p2, p3, p4}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string p3, "POST"

    .line 68
    .line 69
    invoke-virtual {p2, p3, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lokhttp3/Request;

    .line 73
    .line 74
    invoke-direct {p1, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, p6}, Lmv0;->g(Lokhttp3/Request;ZLjv0;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lmv0;->i(Lorg/json/JSONObject;)Lav0;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_0

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_0
    const-string p0, "Box upload response did not contain uploaded file"

    .line 90
    .line 91
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    return-object p0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;Ld86;JLjv0;)Lav0;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkh0;->s()Lmv0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p0, "name"

    .line 20
    .line 21
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-object v1, p2

    .line 25
    move-object v3, p3

    .line 26
    move-wide v4, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lmv0;->k(Ljava/lang/String;Lorg/json/JSONObject;Ld86;J)Lokhttp3/MultipartBody;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p3, "/api/2.0/files/"

    .line 34
    .line 35
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "/content"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lmv0;->u(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "fields"

    .line 59
    .line 60
    const-string p3, "id,name,size,modified_at"

    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lmv0;->b(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "POST"

    .line 74
    .line 75
    invoke-virtual {p1, p2, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Lokhttp3/Request;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {v0, p0, p1, p6}, Lmv0;->g(Lokhttp3/Request;ZLjv0;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lmv0;->i(Lorg/json/JSONObject;)Lav0;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_0

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_0
    const-string p0, "Box upload version response did not contain uploaded file"

    .line 96
    .line 97
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method
