.class public final Lb82;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final g:Ldd1;

.field public final h:Lbr2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb82;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->Dropbox:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lb82;->g:Ldd1;

    .line 7
    .line 8
    new-instance v8, Lbr2;

    .line 9
    .line 10
    new-instance v0, Lrk;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    const-class v3, Lb82;

    .line 16
    .line 17
    const-string v4, "accessToken"

    .line 18
    .line 19
    const-string v5, "accessToken()Ljava/lang/String;"

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v0 .. v7}, Lrk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    move-object v9, v0

    .line 26
    new-instance v0, Lae1;

    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v1, 0x1

    .line 30
    const-class v3, Lb82;

    .line 31
    .line 32
    const-string v4, "forceRefreshAccessToken"

    .line 33
    .line 34
    const-string v5, "forceRefreshAccessToken(Ljava/lang/String;)Ljava/lang/String;"

    .line 35
    .line 36
    invoke-direct/range {v0 .. v7}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x3c

    .line 40
    .line 41
    invoke-direct {v8, v9, v0, v1}, Lbr2;-><init>(Lbt3;Lae1;I)V

    .line 42
    .line 43
    .line 44
    iput-object v8, p0, Lb82;->h:Lbr2;

    .line 45
    .line 46
    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed refreshing token: "

    .line 4
    .line 5
    sget-object v2, Lb82;->i:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-static {}, Llg7;->m()Lnq2;

    .line 9
    .line 10
    .line 11
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v9, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    monitor-exit v2

    .line 16
    return-object v9

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    iget-object v4, v3, Lnq2;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {v3}, Lnq2;->a(Lnq2;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v3, Lnq2;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    monitor-exit v2

    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    :try_start_2
    iget-object v0, v3, Lnq2;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    monitor-exit v2

    .line 45
    return-object v9

    .line 46
    :cond_2
    :try_start_3
    iget-object v4, v3, Lnq2;->d:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    const-string v4, "mzc5bxvbe0960q1"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    :cond_3
    move-object v7, v4

    .line 53
    :try_start_4
    new-instance v10, Luj;

    .line 54
    .line 55
    const-string v11, "https://www.dropbox.com/oauth2/authorize"

    .line 56
    .line 57
    const-string v12, "https://api.dropboxapi.com/oauth2/token"

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "db-"

    .line 62
    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, "://1/connect"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    const-string v4, "token_access_type"

    .line 79
    .line 80
    const-string v5, "offline"

    .line 81
    .line 82
    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0xd0

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    move-object v13, v7

    .line 95
    invoke-direct/range {v10 .. v18}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 96
    .line 97
    .line 98
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 99
    .line 100
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v10, v4, v0}, Luj;->c(Landroid/content/Context;Ljava/lang/String;)Lvj;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/16 v8, 0x17

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-static/range {v3 .. v8}, Lnq2;->b(Lnq2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lnq2;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    iget-object v11, v0, Lvj;->a:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v12, v0, Lvj;->b:Ljava/lang/Long;

    .line 120
    .line 121
    iget-object v0, v0, Lvj;->c:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_4

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    move-object v0, v9

    .line 133
    :goto_0
    if-nez v0, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    :goto_1
    move-object v13, v0

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    iget-object v0, v10, Lnq2;->c:Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :goto_3
    const/4 v14, 0x0

    .line 142
    const/16 v15, 0x18

    .line 143
    .line 144
    invoke-static/range {v10 .. v15}, Lnq2;->b(Lnq2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lnq2;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v3, "dropbox_credential"

    .line 149
    .line 150
    invoke-virtual {v0}, Lnq2;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 155
    .line 156
    if-eqz v5, :cond_7

    .line 157
    .line 158
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    .line 164
    .line 165
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 166
    .line 167
    const-string v11, "DropboxClient"

    .line 168
    .line 169
    const-string v12, "Token refresh successful"

    .line 170
    .line 171
    const/4 v14, 0x4

    .line 172
    const/4 v15, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v9, v0, Lnq2;->a:Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    const-string v0, "editor"

    .line 183
    .line 184
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :goto_4
    :try_start_5
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 189
    .line 190
    const-string v4, "DropboxClient"

    .line 191
    .line 192
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const/4 v7, 0x4

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v6, 0x0

    .line 203
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    .line 205
    .line 206
    :goto_5
    monitor-exit v2

    .line 207
    return-object v9

    .line 208
    :goto_6
    monitor-exit v2

    .line 209
    throw v0
.end method

.method public static final q(Lb82;Ljava/lang/String;)Lwq2;
    .locals 3

    .line 1
    iget-object p0, p0, Lb82;->h:Lbr2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lbr2;->f(Ljava/lang/String;)Lyq2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lyq2;->a:Ljava/util/List;

    .line 13
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
    instance-of v2, v1, Lwq2;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lwq2;

    .line 57
    .line 58
    iget-object v1, v1, Lwq2;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v0, 0x0

    .line 68
    :goto_1
    check-cast v0, Lwq2;

    .line 69
    .line 70
    return-object v0
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 1

    .line 1
    iget-object p0, p0, Lb82;->h:Lbr2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc82;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lc82;-><init>(Lbr2;Lzv1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lb82;->h:Lbr2;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ld82;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Ld82;-><init>(Lbr2;Lfo2;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lb82;->h:Lbr2;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ln92;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Ln92;-><init>(Lbr2;Lrf8;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string p1, "deleteTaggedBackups: Deleting folder="

    .line 2
    .line 3
    iget-object v0, p0, Lb82;->g:Ldd1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "/"

    .line 14
    .line 15
    invoke-static {v2, v0, v2, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    :try_start_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    const-string v3, "DropboxClient"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lb82;->h:Lbr2;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string p1, "/2/files/delete_v2"

    .line 40
    .line 41
    new-instance v2, Lfl4;

    .line 42
    .line 43
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "path"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, p1}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    instance-of p1, p0, Lkq2;

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    move-object p1, p0

    .line 62
    check-cast p1, Lkq2;

    .line 63
    .line 64
    invoke-virtual {p1}, Lkq2;->c()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    return v1

    .line 71
    :cond_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    const-string p0, ""

    .line 80
    .line 81
    :cond_1
    const-string p1, "deleteTaggedBackups: "

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const/4 v6, 0x4

    .line 88
    const/4 v7, 0x0

    .line 89
    const-string v3, "DropboxClient"

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_0
    if-eqz v1, :cond_2

    .line 97
    .line 98
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    const/4 v7, 0x0

    .line 102
    const-string v3, "DropboxClient"

    .line 103
    .line 104
    const-string v4, "deleteTaggedBackups: Successful"

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return v1
.end method

.method public final f()Lui1;
    .locals 3

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, ".cls ("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ")"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lb82;->r(Ljava/lang/String;Z)Lui1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lb82;->g:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DropboxClient"

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 3

    .line 1
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, ".msg ("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ")"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lb82;->r(Ljava/lang/String;Z)Lui1;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final k()Lui1;
    .locals 2

    .line 1
    const-string v0, ".wal"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lb82;->r(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final l()Lui1;
    .locals 2

    .line 1
    const-string v0, ".wfi"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lb82;->r(Ljava/lang/String;Z)Lui1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final m()Ljm1;
    .locals 4

    .line 1
    iget-object v0, p0, Lb82;->g:Ldd1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lqf1;->CASE_INSENSITIVE_PATH:Lqf1;

    .line 8
    .line 9
    new-instance v2, Lcz;

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-direct {v2, p0, v3}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lqc1;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {p0, v3}, Lqc1;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2, p0}, Lk55;->i(Ljava/lang/String;Lqf1;Lmt3;Lqt3;)Ljm1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 10

    .line 1
    iget-object v1, p0, Lb82;->h:Lbr2;

    .line 2
    .line 3
    const-string v0, "DropboxClient"

    .line 4
    .line 5
    const-string v2, "startCheckAccess()"

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 11
    .line 12
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lqi1;->a:Lqi1;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-static {}, Llg7;->m()Lnq2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lqb1;->a()V

    .line 32
    .line 33
    .line 34
    new-instance p0, Loi1;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v1, "Null credentials!"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v0, v1}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lb82;->p()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object v6, v0

    .line 74
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    const/16 v8, 0x8

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const-string v4, "DropboxClient"

    .line 80
    .line 81
    const-string v5, "folderId"

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object p0, v2

    .line 88
    :goto_1
    if-eqz p0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-static {p0}, Lqb1;->s(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string p0, "/2/users/get_current_account"

    .line 104
    .line 105
    invoke-virtual {v1, v2, p0}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance v0, Ljq2;

    .line 110
    .line 111
    const-string v2, "account_id"

    .line 112
    .line 113
    invoke-static {p0, v2}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    const-string v2, ""

    .line 120
    .line 121
    :cond_5
    const-string v3, "email"

    .line 122
    .line 123
    invoke-static {p0, v3}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {v0, v2, p0}, Ljq2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p0, Lsh;

    .line 131
    .line 132
    const/4 v2, 0x4

    .line 133
    invoke-direct {p0, v2}, Lsh;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lsh;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ler2;

    .line 141
    .line 142
    new-instance v1, Lni1;

    .line 143
    .line 144
    iget-wide v2, p0, Ler2;->a:J

    .line 145
    .line 146
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object p0, p0, Ler2;->b:Ljava/lang/Long;

    .line 151
    .line 152
    invoke-direct {v1, v2, p0}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, v0, Ljq2;->b:Ljava/lang/String;

    .line 156
    .line 157
    if-eqz p0, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    invoke-static {p0}, Lqb1;->q(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lsi1;

    .line 169
    .line 170
    invoke-direct {v0, v1, p0}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v0, "startCheckAccess: Email address null to uniquely identify the cloud drive!"

    .line 177
    .line 178
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    move-object p0, v0

    .line 184
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 185
    .line 186
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "startCheckAccess: "

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const/4 v4, 0x4

    .line 197
    const/4 v5, 0x0

    .line 198
    const-string v1, "DropboxClient"

    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lti1;

    .line 205
    .line 206
    invoke-direct {v0, p0}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 207
    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_7
    :goto_2
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 211
    .line 212
    const/4 v5, 0x4

    .line 213
    const/4 v6, 0x0

    .line 214
    const-string v2, "DropboxClient"

    .line 215
    .line 216
    const-string v3, "startCheckAccess: Null folder id!"

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    sget-object p0, Lpi1;->a:Lpi1;

    .line 223
    .line 224
    return-object p0
.end method

.method public final declared-synchronized p()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Main folder created: "

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const-string v2, "Main folder already exists: "

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v3, "DropboxClient"

    .line 9
    .line 10
    const-string v4, "getOrCreateMainFolder"

    .line 11
    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lb82;->g:Ldd1;

    .line 16
    .line 17
    invoke-virtual {v3}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p0, v3}, Lb82;->q(Lb82;Ljava/lang/String;)Lwq2;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-string v0, "DropboxClient"

    .line 28
    .line 29
    iget-object v1, v4, Lwq2;->a:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v0, v4, Lwq2;->a:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const-string v2, "DropboxClient"

    .line 52
    .line 53
    const-string v4, "Main folder not found, Creating folder"

    .line 54
    .line 55
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lv10;

    .line 71
    .line 72
    const/16 v3, 0x8

    .line 73
    .line 74
    invoke-direct {v2, v1, v3}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lb82;->h:Lbr2;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lv10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lwq2;

    .line 84
    .line 85
    iget-object v1, v1, Lwq2;->a:Ljava/lang/String;

    .line 86
    .line 87
    const-string v2, "DropboxClient"

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    move-object v0, v1

    .line 105
    :goto_0
    monitor-exit p0

    .line 106
    return-object v0

    .line 107
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw v0
.end method

.method public final r(Ljava/lang/String;Z)Lui1;
    .locals 9

    .line 1
    iget-object v0, p0, Lb82;->h:Lbr2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lb82;->g:Ldd1;

    .line 9
    .line 10
    invoke-virtual {p0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    const-string v3, "search: "

    .line 17
    .line 18
    const-string v4, "DropboxClient"

    .line 19
    .line 20
    const-string v5, "/"

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lbr2;->f(Ljava/lang/String;)Lyq2;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object v6, p0, Lyq2;->a:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-boolean v6, p0, Lyq2;->c:Z

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lyq2;->b:Ljava/lang/String;

    .line 81
    .line 82
    if-nez p0, :cond_1

    .line 83
    .line 84
    move-object p0, v2

    .line 85
    :cond_1
    const-string v6, "/2/files/list_folder/continue"

    .line 86
    .line 87
    new-instance v7, Lfl4;

    .line 88
    .line 89
    invoke-direct {v7}, Lfl4;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v8, "cursor"

    .line 93
    .line 94
    invoke-virtual {v7, v8, p0}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7, v6}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lbr2;->m(Lfl4;)Lyq2;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget-object v6, p0, Lyq2;->a:Ljava/util/List;

    .line 106
    .line 107
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_2
    invoke-static {v4, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    instance-of p2, p0, Lkq2;

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    move-object p2, p0

    .line 121
    check-cast p2, Lkq2;

    .line 122
    .line 123
    invoke-virtual {p2}, Lkq2;->c()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_2

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_2
    const/4 p0, 0x0

    .line 131
    :cond_3
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    instance-of v7, v6, Lvq2;

    .line 151
    .line 152
    if-eqz v7, :cond_4

    .line 153
    .line 154
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_6
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_7

    .line 172
    .line 173
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    move-object v7, v6

    .line 178
    check-cast v7, Lvq2;

    .line 179
    .line 180
    iget-object v7, v7, Lvq2;->b:Ljava/lang/String;

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    invoke-static {v7, p1, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    const-string v1, " valid drive files found"

    .line 202
    .line 203
    invoke-static {v3, p1, v5, v1, p2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    sget-object p1, Lov2;->a:Lov2;

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 220
    .line 221
    const/16 p2, 0xa

    .line 222
    .line 223
    invoke-static {v0, p2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_b

    .line 239
    .line 240
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Lvq2;

    .line 245
    .line 246
    iget-object v1, v0, Lvq2;->a:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v3, v0, Lvq2;->f:Ljava/lang/String;

    .line 249
    .line 250
    if-nez v1, :cond_a

    .line 251
    .line 252
    if-nez v3, :cond_9

    .line 253
    .line 254
    move-object v1, v2

    .line 255
    goto :goto_7

    .line 256
    :cond_9
    move-object v1, v3

    .line 257
    :cond_a
    :goto_7
    new-instance v4, Lpg1;

    .line 258
    .line 259
    iget-object v5, v0, Lvq2;->b:Ljava/lang/String;

    .line 260
    .line 261
    invoke-direct {v4, v5, v1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-wide v5, v0, Lvq2;->c:J

    .line 265
    .line 266
    iput-wide v5, v4, Lpg1;->c:J

    .line 267
    .line 268
    iget-wide v5, v0, Lvq2;->d:J

    .line 269
    .line 270
    iput-wide v5, v4, Lpg1;->d:J

    .line 271
    .line 272
    iget-wide v0, v0, Lvq2;->e:J

    .line 273
    .line 274
    iput-wide v0, v4, Lpg1;->e:J

    .line 275
    .line 276
    iput-object v3, v4, Lpg1;->f:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    :goto_8
    new-instance p2, Lui1;

    .line 283
    .line 284
    invoke-direct {p2, p0, p1}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    return-object p2
.end method
