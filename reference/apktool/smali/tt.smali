.class public final Ltt;
.super Let;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public g:Z

.field public final h:Lex6;

.field public final i:Lex6;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;

.field public n:Ldv;

.field public final o:Lst;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Let;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lnt;->a:Lnt;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Ltt;->h:Lex6;

    .line 15
    .line 16
    new-instance v0, Lex6;

    .line 17
    .line 18
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ltt;->i:Lex6;

    .line 22
    .line 23
    sget-object v0, Lov2;->a:Lov2;

    .line 24
    .line 25
    iput-object v0, p0, Ltt;->j:Ljava/util/List;

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    iput-object v1, p0, Ltt;->l:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Ltt;->m:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Lst;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lst;-><init>(Ltt;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ltt;->o:Lst;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltt;->n:Ldv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ltt;->o:Lst;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ldv;->p(Lgk6;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, La55;->b()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "repo"

    .line 15
    .line 16
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public final k(ZZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La55;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, v0, Let;->e:Z

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "loadApps called for repo (isCloudSection="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ")"

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string v1, "key_filter_app_synced"

    .line 30
    .line 31
    sget-object v2, Lce3;->All:Lce3;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v1, "prefs"

    .line 48
    .line 49
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :goto_0
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lce3;->getEntries()Ljx2;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lz3;

    .line 60
    .line 61
    invoke-virtual {v1}, Lz3;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    move-object v4, v1

    .line 66
    check-cast v4, Lw3;

    .line 67
    .line 68
    invoke-virtual {v4}, Lw3;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Lw3;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move-object v5, v4

    .line 79
    check-cast v5, Lce3;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v5, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v4, v3

    .line 93
    :goto_1
    check-cast v4, Lce3;

    .line 94
    .line 95
    if-nez v4, :cond_4

    .line 96
    .line 97
    :cond_3
    sget-object v4, Lce3;->All:Lce3;

    .line 98
    .line 99
    :cond_4
    iget-boolean v1, v0, Let;->e:Z

    .line 100
    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {v4}, Lce3;->isApplied()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 110
    .line 111
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lai8;->i(Landroid/content/Context;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    sget-object v1, Ltb1;->a:Ltb1;

    .line 122
    .line 123
    invoke-static {}, Lqb1;->m()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    :cond_5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const v2, 0x7f1303c7

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Lai8;->m(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 140
    .line 141
    iget-object v6, v0, La55;->b:Ljava/lang/String;

    .line 142
    .line 143
    const/4 v9, 0x4

    .line 144
    const/4 v10, 0x0

    .line 145
    const-string v7, "Resetting sync mode filter as no internet connection"

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lce3;->reset()V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v11, v0, Ltt;->n:Ldv;

    .line 155
    .line 156
    if-eqz v11, :cond_9

    .line 157
    .line 158
    if-nez p1, :cond_8

    .line 159
    .line 160
    if-eqz p2, :cond_7

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    const/4 v1, 0x0

    .line 164
    :goto_2
    move v14, v1

    .line 165
    goto :goto_4

    .line 166
    :cond_8
    :goto_3
    const/4 v1, 0x1

    .line 167
    goto :goto_2

    .line 168
    :goto_4
    const/4 v15, 0x0

    .line 169
    const/16 v16, 0x8

    .line 170
    .line 171
    iget-object v13, v0, Ltt;->o:Lst;

    .line 172
    .line 173
    move/from16 v12, p1

    .line 174
    .line 175
    invoke-static/range {v11 .. v16}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_9
    const-string v0, "repo"

    .line 180
    .line 181
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v3
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Let;->e:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [Lod3;

    .line 6
    .line 7
    sget-object v2, Ldd3;->a:Ldd3;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 11
    .line 12
    sget-object v2, Lud3;->a:Lud3;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    sget-object v2, Lgd3;->a:Lgd3;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    sget-object v2, Lmd3;->a:Lmd3;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    sget-object v2, Lrd3;->a:Lrd3;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    sget-object v2, Lde3;->a:Lde3;

    .line 33
    .line 34
    const/4 v3, 0x5

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    sget-object v2, Ljd3;->a:Ljd3;

    .line 38
    .line 39
    const/4 v3, 0x6

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    sget-object v2, Lae3;->a:Lae3;

    .line 43
    .line 44
    const/4 v3, 0x7

    .line 45
    aput-object v2, v1, v3

    .line 46
    .line 47
    invoke-static {v1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, v0}, Lqq;->c(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Let;->j(Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final declared-synchronized m(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_4

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    iput-object v0, p0, Ltt;->l:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Ltt;->m:Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lns0;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lns0;->k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v0, 0x1

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object p1, Lpt;->a:Lpt;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2, v0}, Ltt;->n(Lqt;Ljava/util/List;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    new-instance p2, Lmt;

    .line 61
    .line 62
    invoke-direct {p2, p1}, Lmt;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, p1, v0}, Ltt;->n(Lqt;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :cond_4
    :goto_3
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public final n(Lqt;Ljava/util/List;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltt;->h:Lex6;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfm7;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v6, 0x16

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v2, p2

    .line 13
    move v4, p3

    .line 14
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ltt;->i:Lex6;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Ltt;->k:Z

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iput-object v2, p0, Ltt;->j:Ljava/util/List;

    .line 27
    .line 28
    :cond_0
    return-void
.end method
