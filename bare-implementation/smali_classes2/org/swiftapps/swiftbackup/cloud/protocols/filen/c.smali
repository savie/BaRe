.class public final Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

.field public final b:Lwa3;

.field public final c:Lbt3;

.field public final d:Lbt3;

.field public final e:Lbt3;

.field public final f:J

.field public final g:Lka;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Lmb3;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Lwa3;)V
    .locals 6

    .line 1
    new-instance v0, Lzj;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lb7;

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lb7;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lkc3;->a:Lkc3;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 23
    .line 24
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b:Lwa3;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->c:Lbt3;

    .line 27
    .line 28
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->d:Lbt3;

    .line 29
    .line 30
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e:Lbt3;

    .line 31
    .line 32
    const-wide/16 v0, 0x1388

    .line 33
    .line 34
    iput-wide v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->f:J

    .line 35
    .line 36
    new-instance p2, Lka;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lka;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->g:Lka;

    .line 42
    .line 43
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->h:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    new-instance v0, Lmb3;

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getBaseFolderUuid()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, ""

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-direct/range {v0 .. v5}, Lmb3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->i:Lmb3;

    .line 66
    .line 67
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x2f

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-static {p0, v0, v1}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    const-string v3, "."

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, ".."

    .line 71
    .line 72
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-string p0, "Parent traversal is not allowed"

    .line 80
    .line 81
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    return-object p0

    .line 86
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lob3;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lob3;->a()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->i:Lmb3;

    .line 7
    .line 8
    iget-object v1, v1, Lmb3;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p1, Lmb3;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "/v3/dir/delete/permanent"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v0, "/v3/file/delete/permanent"

    .line 26
    .line 27
    :goto_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b:Lwa3;

    .line 28
    .line 29
    const-string v2, "uuid"

    .line 30
    .line 31
    invoke-interface {p1}, Lob3;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 43
    .line 44
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v4, "POST"

    .line 52
    .line 53
    check-cast v2, Ljava/util/Map;

    .line 54
    .line 55
    invoke-static {v1, v4, v0, v2, v3}, Lwa3;->c(Lwa3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lqj4;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lob3;->b()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :cond_1
    :try_start_1
    const-string p1, "Cannot delete Filen root"

    .line 68
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->h:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e:Lbt3;

    .line 6
    .line 7
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->h:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Llc3;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    iget-wide v7, v5, Llc3;->b:J

    .line 28
    .line 29
    sub-long v7, v2, v7

    .line 30
    .line 31
    iget-wide v9, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->f:J

    .line 32
    .line 33
    cmp-long v7, v7, v9

    .line 34
    .line 35
    if-gtz v7, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x0

    .line 39
    :goto_0
    if-eqz v5, :cond_1

    .line 40
    .line 41
    iget-object v0, v5, Llc3;->a:Ljava/util/List;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    const-string v5, "uuid"

    .line 45
    .line 46
    invoke-static {v5, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 54
    .line 55
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b:Lwa3;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-object v12, v7

    .line 65
    check-cast v12, Ljava/util/Map;

    .line 66
    .line 67
    new-instance v15, Lzk;

    .line 68
    .line 69
    const/16 v7, 0x9

    .line 70
    .line 71
    invoke-direct {v15, v7}, Lzk;-><init>(I)V

    .line 72
    .line 73
    .line 74
    const-string v10, "POST"

    .line 75
    .line 76
    const-string v11, "/v3/dir/content"

    .line 77
    .line 78
    const/4 v14, 0x0

    .line 79
    invoke-virtual/range {v9 .. v15}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7}, Lqj4;->i()Lfl4;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget-object v7, v7, Lfl4;->a:Liw4;

    .line 88
    .line 89
    iget-object v8, v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->g:Lka;

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lnc8;->p()Lww4;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const-string v0, "uploads"

    .line 99
    .line 100
    invoke-virtual {v7, v0}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lxi4;

    .line 105
    .line 106
    const-string v10, "parent"

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    iget-object v0, v0, Lxi4;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lqj4;

    .line 127
    .line 128
    :try_start_0
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v14, "metadata"

    .line 133
    .line 134
    invoke-static {v0, v14}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    new-instance v15, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/a;

    .line 139
    .line 140
    invoke-direct {v15, v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/a;-><init>(Lka;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v14, v15}, Lka;->d(Ljava/lang/String;Lmt3;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    check-cast v14, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;

    .line 148
    .line 149
    const-string v15, "chunks"

    .line 150
    .line 151
    invoke-virtual {v0, v15}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    if-eqz v15, :cond_2

    .line 156
    .line 157
    invoke-virtual {v15}, Lqj4;->l()J

    .line 158
    .line 159
    .line 160
    move-result-wide v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    move-wide v11, v15

    .line 162
    :goto_2
    move-object/from16 v35, v7

    .line 163
    .line 164
    const-wide/16 v33, 0x0

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    move-object/from16 v35, v7

    .line 169
    .line 170
    const-wide/16 v33, 0x0

    .line 171
    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :cond_2
    const-wide/16 v11, 0x0

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :goto_3
    :try_start_1
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getSize()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    invoke-static {v6, v7, v11, v12}, Lx13;->F(JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_6

    .line 186
    .line 187
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getKey()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    const/16 v7, 0x40

    .line 196
    .line 197
    if-ne v6, v7, :cond_3

    .line 198
    .line 199
    sget-object v6, Lhb3;->a:[B

    .line 200
    .line 201
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getKey()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6}, Lhb3;->q(Ljava/lang/String;)[B

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    goto :goto_4

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_3
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getKey()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    sget-object v15, Lf51;->a:Ljava/nio/charset/Charset;

    .line 218
    .line 219
    invoke-virtual {v6, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    :goto_4
    array-length v15, v6

    .line 227
    const/16 v7, 0x20

    .line 228
    .line 229
    if-ne v15, v7, :cond_5

    .line 230
    .line 231
    move-object v7, v14

    .line 232
    new-instance v14, Lnb3;

    .line 233
    .line 234
    invoke-static {v0, v5}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    invoke-static {v0, v10}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v17

    .line 246
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getSize()J

    .line 247
    .line 248
    .line 249
    move-result-wide v18

    .line 250
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getMime()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v20

    .line 254
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getCreation()J

    .line 255
    .line 256
    .line 257
    move-result-wide v21

    .line 258
    invoke-static/range {v21 .. v22}, Lcz4;->k(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v22

    .line 262
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getLastModified()J

    .line 263
    .line 264
    .line 265
    move-result-wide v24

    .line 266
    invoke-static/range {v24 .. v25}, Lcz4;->k(J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v24

    .line 270
    move-object/from16 v21, v6

    .line 271
    .line 272
    const-string v6, "bucket"

    .line 273
    .line 274
    invoke-static {v0, v6}, Lka;->g(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v28

    .line 278
    const-string v6, "region"

    .line 279
    .line 280
    invoke-static {v0, v6}, Lka;->g(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v29

    .line 284
    const-string v6, "version"

    .line 285
    .line 286
    invoke-virtual {v0, v6}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    if-eqz v0, :cond_4

    .line 291
    .line 292
    invoke-virtual {v0}, Lqj4;->f()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    :goto_5
    move/from16 v30, v0

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_4
    const/4 v0, 0x2

    .line 300
    goto :goto_5

    .line 301
    :goto_6
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getBlake3()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const/16 v6, 0x40

    .line 306
    .line 307
    invoke-static {v6, v0}, Lka;->h(ILjava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v31

    .line 311
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$FileMetadata;->getHash()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const/16 v6, 0x80

    .line 316
    .line 317
    invoke-static {v6, v0}, Lka;->h(ILjava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v32

    .line 321
    move-wide/from16 v26, v11

    .line 322
    .line 323
    invoke-direct/range {v14 .. v32}, Lnb3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BJJJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_5
    const-string v0, "Invalid Filen file key length"

    .line 328
    .line 329
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 330
    .line 331
    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v6

    .line 335
    :cond_6
    const-string v0, "Inconsistent Filen file size and chunk count"

    .line 336
    .line 337
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 338
    .line 339
    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    :goto_7
    new-instance v14, Lbn6;

    .line 344
    .line 345
    invoke-direct {v14, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    :goto_8
    instance-of v0, v14, Lbn6;

    .line 349
    .line 350
    if-eqz v0, :cond_7

    .line 351
    .line 352
    const/4 v14, 0x0

    .line 353
    :cond_7
    check-cast v14, Lnb3;

    .line 354
    .line 355
    if-eqz v14, :cond_8

    .line 356
    .line 357
    invoke-virtual {v9, v14}, Lww4;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    :cond_8
    move-object/from16 v7, v35

    .line 361
    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :cond_9
    move-object/from16 v35, v7

    .line 365
    .line 366
    const-wide/16 v33, 0x0

    .line 367
    .line 368
    const-string v0, "folders"

    .line 369
    .line 370
    move-object/from16 v6, v35

    .line 371
    .line 372
    invoke-virtual {v6, v0}, Liw4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lxi4;

    .line 377
    .line 378
    if-eqz v0, :cond_11

    .line 379
    .line 380
    iget-object v0, v0, Lxi4;->a:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    :cond_a
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-eqz v0, :cond_11

    .line 391
    .line 392
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Lqj4;

    .line 397
    .line 398
    :try_start_2
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const-string v7, "name"

    .line 403
    .line 404
    invoke-static {v0, v7}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    new-instance v11, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/b;

    .line 409
    .line 410
    invoke-direct {v11, v8}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/b;-><init>(Lka;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v7, v11}, Lka;->d(Ljava/lang/String;Lmt3;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    check-cast v7, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 418
    .line 419
    invoke-static {v0, v5}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v12

    .line 423
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->getName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v13

    .line 427
    invoke-static {v0, v10}, Lka;->f(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v14

    .line 431
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->getCreation()J

    .line 432
    .line 433
    .line 434
    move-result-wide v15

    .line 435
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    cmp-long v11, v15, v33

    .line 440
    .line 441
    if-eqz v11, :cond_b

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_b
    const/4 v7, 0x0

    .line 445
    :goto_a
    if-eqz v7, :cond_c

    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 448
    .line 449
    .line 450
    move-result-wide v15

    .line 451
    goto :goto_b

    .line 452
    :catchall_2
    move-exception v0

    .line 453
    goto :goto_d

    .line 454
    :cond_c
    const-string v7, "timestamp"

    .line 455
    .line 456
    invoke-virtual {v0, v7}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    if-eqz v0, :cond_d

    .line 461
    .line 462
    invoke-virtual {v0}, Lqj4;->l()J

    .line 463
    .line 464
    .line 465
    move-result-wide v15

    .line 466
    goto :goto_b

    .line 467
    :cond_d
    move-wide/from16 v15, v33

    .line 468
    .line 469
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    .line 471
    .line 472
    move-result-wide v17

    .line 473
    cmp-long v0, v15, v33

    .line 474
    .line 475
    if-nez v0, :cond_e

    .line 476
    .line 477
    move-wide/from16 v15, v33

    .line 478
    .line 479
    goto :goto_c

    .line 480
    :cond_e
    const-wide/16 v19, 0x3e8

    .line 481
    .line 482
    mul-long v19, v19, v15

    .line 483
    .line 484
    sub-long v21, v17, v15

    .line 485
    .line 486
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    .line 487
    .line 488
    .line 489
    move-result-wide v21

    .line 490
    sub-long v17, v17, v19

    .line 491
    .line 492
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v17

    .line 496
    cmp-long v0, v21, v17

    .line 497
    .line 498
    if-gtz v0, :cond_f

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :cond_f
    move-wide/from16 v15, v19

    .line 502
    .line 503
    :goto_c
    new-instance v11, Lmb3;

    .line 504
    .line 505
    invoke-direct/range {v11 .. v16}, Lmb3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 506
    .line 507
    .line 508
    goto :goto_e

    .line 509
    :goto_d
    new-instance v11, Lbn6;

    .line 510
    .line 511
    invoke-direct {v11, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 512
    .line 513
    .line 514
    :goto_e
    instance-of v0, v11, Lbn6;

    .line 515
    .line 516
    if-eqz v0, :cond_10

    .line 517
    .line 518
    const/4 v11, 0x0

    .line 519
    :cond_10
    check-cast v11, Lmb3;

    .line 520
    .line 521
    if-eqz v11, :cond_a

    .line 522
    .line 523
    invoke-virtual {v9, v11}, Lww4;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    goto/16 :goto_9

    .line 527
    .line 528
    :cond_11
    invoke-static {v9}, Lnc8;->h(Lww4;)Lww4;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    new-instance v5, Llc3;

    .line 533
    .line 534
    invoke-direct {v5, v0, v2, v3}, Llc3;-><init>(Lww4;J)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    return-object v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Lob3;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->i:Lmb3;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_9

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    add-int/lit8 v4, v2, 0x1

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-ltz v2, :cond_8

    .line 38
    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, v1, Lmb3;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->c(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-instance v7, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/4 v9, 0x1

    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    move-object v10, v8

    .line 68
    check-cast v10, Lob3;

    .line 69
    .line 70
    invoke-interface {v10}, Lob3;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v10, v3, v9}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-gt v6, v9, :cond_7

    .line 91
    .line 92
    invoke-static {v7}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lob3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-object v5

    .line 102
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    sub-int/2addr v3, v9

    .line 107
    if-ne v2, v3, :cond_4

    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-object v1

    .line 111
    :cond_4
    :try_start_3
    instance-of v2, v1, Lmb3;

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    check-cast v1, Lmb3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object v1, v5

    .line 119
    :goto_2
    if-nez v1, :cond_6

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-object v5

    .line 123
    :cond_6
    move v2, v4

    .line 124
    goto :goto_0

    .line 125
    :cond_7
    :try_start_4
    iget-object p1, v1, Lmb3;->a:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "Duplicate Filen item name in "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, ": "

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_8
    invoke-static {}, Lfl1;->F0()V

    .line 163
    .line 164
    .line 165
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :cond_9
    monitor-exit p0

    .line 167
    return-object v1

    .line 168
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    throw p1
.end method
