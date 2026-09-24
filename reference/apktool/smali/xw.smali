.class public final Lxw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljz;

.field public final b:Lc40;

.field public final c:Lry7;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lck;

.field public final g:Lst3;

.field public final h:Lji;

.field public final i:Z

.field public final j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

.field public final k:Lhk;

.field public final l:Lgv7;

.field public final m:Lgv7;

.field public final n:Lgv7;

.field public final o:Ljava/util/LinkedHashSet;

.field public final p:Lgv7;

.field public final q:Lnm6;

.field public final r:Z

.field public s:Z

.field public t:Z

.field public final u:Luw;


# direct methods
.method public constructor <init>(Ljz;Lc40;Lry7;Ljava/lang/String;ZLck;)V
    .locals 7

    .line 1
    new-instance v0, Ltw;

    .line 2
    .line 3
    const-string v5, "extractWithFileCount(Lorg/swiftapps/filesystem/File;Ljava/lang/String;Lorg/swiftapps/swiftbackup/shell/RootHelper$ShellType;Lkotlin/jvm/functions/Function3;)V"

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x4

    .line 7
    sget-object v2, Lox7;->a:Lox7;

    .line 8
    .line 9
    const-class v3, Lox7;

    .line 10
    .line 11
    const-string v4, "extractWithFileCount"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lxw;->a:Ljz;

    .line 26
    .line 27
    iput-object p2, p0, Lxw;->b:Lc40;

    .line 28
    .line 29
    iput-object p3, p0, Lxw;->c:Lry7;

    .line 30
    .line 31
    iput-object p4, p0, Lxw;->d:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean p5, p0, Lxw;->e:Z

    .line 34
    .line 35
    iput-object p6, p0, Lxw;->f:Lck;

    .line 36
    .line 37
    iput-object v0, p0, Lxw;->g:Lst3;

    .line 38
    .line 39
    iget-object p2, p1, Ljz;->b:Lji;

    .line 40
    .line 41
    iput-object p2, p0, Lxw;->h:Lji;

    .line 42
    .line 43
    iget-object p2, p1, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 44
    .line 45
    const/4 p3, 0x1

    .line 46
    const/4 p4, 0x0

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    move p5, p3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p5, p4

    .line 52
    :goto_0
    iput-boolean p5, p0, Lxw;->i:Z

    .line 53
    .line 54
    const/4 p5, 0x0

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object p2, p5

    .line 65
    :goto_1
    if-eqz p2, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string p0, "Required value was null."

    .line 69
    .line 70
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p5

    .line 74
    :cond_3
    move-object p2, p5

    .line 75
    :goto_2
    iput-object p2, p0, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 76
    .line 77
    iget-object p2, p1, Ljz;->g:Lhk;

    .line 78
    .line 79
    iput-object p2, p0, Lxw;->k:Lhk;

    .line 80
    .line 81
    new-instance p2, Llf;

    .line 82
    .line 83
    const/4 p6, 0x5

    .line 84
    invoke-direct {p2, p0, p6}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lgv7;

    .line 88
    .line 89
    invoke-direct {v0, p2}, Lgv7;-><init>(Lbt3;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lxw;->l:Lgv7;

    .line 93
    .line 94
    new-instance p2, Lej;

    .line 95
    .line 96
    invoke-direct {p2, p0, p6}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    new-instance p6, Lgv7;

    .line 100
    .line 101
    invoke-direct {p6, p2}, Lgv7;-><init>(Lbt3;)V

    .line 102
    .line 103
    .line 104
    iput-object p6, p0, Lxw;->m:Lgv7;

    .line 105
    .line 106
    new-instance p2, Lfj;

    .line 107
    .line 108
    const/4 p6, 0x6

    .line 109
    invoke-direct {p2, p0, p6}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    new-instance p6, Lgv7;

    .line 113
    .line 114
    invoke-direct {p6, p2}, Lgv7;-><init>(Lbt3;)V

    .line 115
    .line 116
    .line 117
    iput-object p6, p0, Lxw;->n:Lgv7;

    .line 118
    .line 119
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 120
    .line 121
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p2, p0, Lxw;->o:Ljava/util/LinkedHashSet;

    .line 125
    .line 126
    new-instance p2, Lsm;

    .line 127
    .line 128
    invoke-direct {p2, p3}, Lsm;-><init>(I)V

    .line 129
    .line 130
    .line 131
    new-instance p3, Lgv7;

    .line 132
    .line 133
    invoke-direct {p3, p2}, Lgv7;-><init>(Lbt3;)V

    .line 134
    .line 135
    .line 136
    iput-object p3, p0, Lxw;->p:Lgv7;

    .line 137
    .line 138
    new-instance p2, Lnm6;

    .line 139
    .line 140
    invoke-direct {p2, p1}, Lnm6;-><init>(Ljz;)V

    .line 141
    .line 142
    .line 143
    iput-object p2, p0, Lxw;->q:Lnm6;

    .line 144
    .line 145
    const-string p1, "prefs"

    .line 146
    .line 147
    const-string p2, "backup_app_cache"

    .line 148
    .line 149
    const-string p3, "KEY_BACKUP_APP_CACHE"

    .line 150
    .line 151
    :try_start_0
    sget-object p6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 152
    .line 153
    if-eqz p6, :cond_4

    .line 154
    .line 155
    invoke-interface {p6, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result p4

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    :goto_3
    :try_start_1
    sget-object p3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 165
    .line 166
    if-eqz p3, :cond_5

    .line 167
    .line 168
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p4

    .line 172
    goto :goto_4

    .line 173
    :cond_5
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :catch_1
    :goto_4
    iput-boolean p4, p0, Lxw;->r:Z

    .line 178
    .line 179
    new-instance p1, Luw;

    .line 180
    .line 181
    invoke-direct {p1, p0}, Luw;-><init>(Lxw;)V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lxw;->u:Luw;

    .line 185
    .line 186
    return-void
.end method

.method public static c(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lq63;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Liu;Lq63;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lww;->c:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 10
    .line 11
    iget-boolean v2, p0, Lxw;->i:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v0, v4, :cond_8

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    if-eq v0, v5, :cond_6

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    if-eq v0, v5, :cond_4

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    if-eq v0, v5, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v0, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpBackupSize()Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    if-eqz v2, :cond_5

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaBackupSize()Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_6
    if-eqz v2, :cond_7

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_7
    invoke-virtual {p0}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataBackupSize()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_0

    .line 95
    :cond_8
    if-eqz v2, :cond_9

    .line 96
    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_9
    invoke-virtual {p0}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataBackupSize()Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_0
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    sget-object v2, Lg00;->a:Lg00;

    .line 119
    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p2, v0}, Lg00;->b(Lq63;Ljava/lang/Long;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p3, :cond_a

    .line 129
    .line 130
    invoke-static {p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_a

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_a
    move-object p3, v3

    .line 138
    :goto_1
    if-eqz p2, :cond_b

    .line 139
    .line 140
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_b

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_b
    move-object p2, v3

    .line 148
    :goto_2
    filled-new-array {p3, p2}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    const/4 v9, 0x0

    .line 157
    const/16 v10, 0x3e

    .line 158
    .line 159
    const-string v6, "; "

    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    if-nez p3, :cond_c

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    move-object p2, v3

    .line 175
    :goto_3
    iget-object p0, p0, Lxw;->u:Luw;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-object p3, p0, Luw;->e:Ljava/lang/String;

    .line 181
    .line 182
    const-string v0, ")"

    .line 183
    .line 184
    const-string v1, " ("

    .line 185
    .line 186
    const-string v2, "File corrupt"

    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    if-eqz p3, :cond_f

    .line 190
    .line 191
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    if-nez p3, :cond_d

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_d
    iget-object p3, p0, Luw;->e:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {p1, v5, v4, v3}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-nez p2, :cond_e

    .line 205
    .line 206
    move-object p2, v2

    .line 207
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p3, ", "

    .line 216
    .line 217
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iput-object p1, p0, Luw;->e:Ljava/lang/String;

    .line 237
    .line 238
    return-void

    .line 239
    :cond_f
    :goto_4
    iget-object p3, p0, Luw;->i:Lxw;

    .line 240
    .line 241
    iget-object p3, p3, Lxw;->h:Lji;

    .line 242
    .line 243
    invoke-virtual {p3}, Lji;->getName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-static {p1, v5, v4, v3}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-nez p2, :cond_10

    .line 252
    .line 253
    move-object p2, v2

    .line 254
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string p3, ": "

    .line 263
    .line 264
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iput-object p1, p0, Luw;->e:Ljava/lang/String;

    .line 284
    .line 285
    return-void
.end method

.method public final b(Lq63;Ljava/lang/String;Lq63;Liu;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-static {p1}, Lmz6;->t(Lq63;)Lky6;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lky6;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v3, v2

    .line 31
    check-cast v3, Lxy6;

    .line 32
    .line 33
    iget-object v3, v3, Lxy6;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v3, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v2, v1

    .line 45
    :goto_0
    check-cast v2, Lxy6;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-wide v2, v2, Lxy6;->g:J

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v0, v1

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    new-instance v2, Lbn6;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    move-object v0, v2

    .line 64
    :goto_2
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object v2, v1

    .line 72
    :goto_3
    instance-of v3, v0, Lbn6;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move-object v1, v0

    .line 78
    :goto_4
    check-cast v1, Ljava/lang/Long;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    const-wide/16 v5, 0x0

    .line 87
    .line 88
    cmp-long v0, v3, v5

    .line 89
    .line 90
    if-lez v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    goto :goto_5

    .line 97
    :cond_5
    if-eqz v2, :cond_6

    .line 98
    .line 99
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 100
    .line 101
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "/"

    .line 110
    .line 111
    const-string v4, "; falling back to archive size ("

    .line 112
    .line 113
    const-string v5, "Unable to read SBA restore size for "

    .line 114
    .line 115
    invoke-static {v5, v1, v3, p2, v4}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v1, ")"

    .line 120
    .line 121
    invoke-static {p2, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v4, 0x4

    .line 126
    const/4 v5, 0x0

    .line 127
    const-string v1, "SpaceChecker"

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-virtual {p1}, Lq63;->A()J

    .line 134
    .line 135
    .line 136
    move-result-wide p1

    .line 137
    :goto_5
    invoke-static {p3, p1, p2}, Lpj7;->b(Lq63;J)Loj7;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    iget-object p2, p1, Loj7;->a:Ljava/lang/String;

    .line 144
    .line 145
    iget-boolean p1, p1, Loj7;->b:Z

    .line 146
    .line 147
    iget-object p0, p0, Lxw;->u:Luw;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0, p2}, Luw;->a(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_7
    invoke-virtual {p0, p4, p2}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_6
    const/4 p0, 0x0

    .line 159
    return p0

    .line 160
    :cond_8
    const/4 p0, 0x1

    .line 161
    return p0
.end method

.method public final d(Lqv;)Luw;
    .locals 51

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v9, ""

    .line 4
    .line 5
    iget-object v10, v1, Lxw;->b:Lc40;

    .line 6
    .line 7
    iget-object v0, v10, Lpw6;->i:Lex6;

    .line 8
    .line 9
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 10
    .line 11
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f130491

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    iget-object v11, v1, Lxw;->h:Lji;

    .line 28
    .line 29
    invoke-virtual {v11}, Lji;->asString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "Started restore: "

    .line 34
    .line 35
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, "AppRestoreTask"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Props="

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v12, v1, Lxw;->a:Ljz;

    .line 55
    .line 56
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v4, "AppRestoreTask"

    .line 64
    .line 65
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    sget-object v0, Lmp6;->a:Lmp6;

    .line 73
    .line 74
    invoke-static {}, Lmp6;->g()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v2, "AppRestoreTask"

    .line 79
    .line 80
    iget-object v15, v1, Lxw;->u:Luw;

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v4, "moe.shizuku.privileged.api"

    .line 89
    .line 90
    invoke-static {v0, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    sget-object v0, Lvr6$a;->YELLOW:Lvr6$a;

    .line 97
    .line 98
    const-string v1, "Shizuku package shouldn\'t be restored when Swift Backup is actively using Shizuku! Skipping."

    .line 99
    .line 100
    invoke-virtual {v3, v2, v1, v0}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v15, v1}, Luw;->c(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v15

    .line 107
    :cond_0
    iget-object v0, v12, Ljz;->c:Ljava/util/List;

    .line 108
    .line 109
    iget-object v4, v12, Ljz;->d:Lyu;

    .line 110
    .line 111
    iget-object v5, v12, Ljz;->c:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v0}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    sget-object v0, Lvr6$a;->YELLOW:Lvr6$a;

    .line 126
    .line 127
    const-string v1, "Can\'t restore any data parts since app isn\'t installed."

    .line 128
    .line 129
    invoke-virtual {v3, v2, v1, v0}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15, v1}, Luw;->c(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v15

    .line 136
    :cond_1
    const/4 v0, 0x2

    .line 137
    iget-boolean v2, v1, Lxw;->i:Z

    .line 138
    .line 139
    if-nez v2, :cond_3

    .line 140
    .line 141
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-eqz v7, :cond_2

    .line 146
    .line 147
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSBVersionCodesRequired()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const/4 v7, 0x0

    .line 153
    :goto_0
    new-instance v8, Lhj;

    .line 154
    .line 155
    invoke-direct {v8, v1, v0}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lxw;->q:Lnm6;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v7, v8}, Lnm6;->a(Ljava/util/List;Lmt3;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_3

    .line 168
    .line 169
    goto/16 :goto_37

    .line 170
    .line 171
    :cond_3
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const/4 v7, 0x1

    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    sget-boolean v0, Lg42;->a:Z

    .line 182
    .line 183
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v8, Lg42;->e:Lgv7;

    .line 191
    .line 192
    invoke-virtual {v8}, Lgv7;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    check-cast v8, Ljava/lang/String;

    .line 197
    .line 198
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    filled-new-array {v0}, [Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    :cond_4
    iget-object v0, v1, Lxw;->k:Lhk;

    .line 218
    .line 219
    invoke-virtual {v0}, Lhk;->c()Lq63;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-static {v5}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 224
    .line 225
    .line 226
    move-result v17

    .line 227
    iget-object v6, v1, Lxw;->o:Ljava/util/LinkedHashSet;

    .line 228
    .line 229
    move-object/from16 v19, v6

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    if-eqz v17, :cond_14

    .line 233
    .line 234
    invoke-virtual {v8}, Lq63;->j()Z

    .line 235
    .line 236
    .line 237
    move-result v17

    .line 238
    if-nez v17, :cond_5

    .line 239
    .line 240
    if-nez v2, :cond_5

    .line 241
    .line 242
    move/from16 v20, v7

    .line 243
    .line 244
    const/4 v7, 0x4

    .line 245
    move-object/from16 v21, v8

    .line 246
    .line 247
    const/4 v8, 0x0

    .line 248
    move-object/from16 v22, v4

    .line 249
    .line 250
    const-string v4, "AppRestoreTask"

    .line 251
    .line 252
    move-object/from16 v23, v5

    .line 253
    .line 254
    const-string v5, "No APK backup"

    .line 255
    .line 256
    move/from16 v24, v6

    .line 257
    .line 258
    const/4 v6, 0x0

    .line 259
    move-wide/from16 v25, v13

    .line 260
    .line 261
    move-object/from16 v30, v19

    .line 262
    .line 263
    move-object/from16 v14, v21

    .line 264
    .line 265
    move-object/from16 v27, v22

    .line 266
    .line 267
    move-object/from16 v28, v23

    .line 268
    .line 269
    move/from16 v13, v24

    .line 270
    .line 271
    const/16 v24, 0x0

    .line 272
    .line 273
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_5
    move-object/from16 v27, v4

    .line 278
    .line 279
    move-object/from16 v28, v5

    .line 280
    .line 281
    move-wide/from16 v25, v13

    .line 282
    .line 283
    move-object/from16 v30, v19

    .line 284
    .line 285
    const/16 v24, 0x0

    .line 286
    .line 287
    move v13, v6

    .line 288
    move-object v14, v8

    .line 289
    :goto_1
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_11

    .line 294
    .line 295
    if-eqz v17, :cond_11

    .line 296
    .line 297
    invoke-static {v14, v13}, Lng;->a(Lq63;Z)Lrg;

    .line 298
    .line 299
    .line 300
    move-result-object v35

    .line 301
    invoke-virtual/range {v35 .. v35}, Lrg;->c()J

    .line 302
    .line 303
    .line 304
    move-result-wide v4

    .line 305
    invoke-virtual {v11}, Lji;->getSourceDir()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    if-nez v6, :cond_6

    .line 310
    .line 311
    const/4 v7, 0x1

    .line 312
    goto/16 :goto_b

    .line 313
    .line 314
    :cond_6
    new-instance v7, Lq63;

    .line 315
    .line 316
    const/4 v8, 0x1

    .line 317
    invoke-direct {v7, v6, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7}, Lq63;->A()J

    .line 321
    .line 322
    .line 323
    move-result-wide v31

    .line 324
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    if-eqz v6, :cond_7

    .line 329
    .line 330
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    move-object/from16 v33, v6

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_7
    move-object/from16 v33, v24

    .line 338
    .line 339
    :goto_2
    new-instance v17, Lpg;

    .line 340
    .line 341
    invoke-virtual {v11}, Lji;->getVersionName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    if-nez v6, :cond_8

    .line 346
    .line 347
    const-string v6, "Empty"

    .line 348
    .line 349
    :cond_8
    move-object/from16 v18, v6

    .line 350
    .line 351
    invoke-virtual {v11}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    if-eqz v6, :cond_9

    .line 356
    .line 357
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    :goto_3
    move-wide/from16 v19, v6

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_9
    const-wide/16 v6, -0x1

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :goto_4
    invoke-virtual {v11}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    if-eqz v6, :cond_b

    .line 372
    .line 373
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_a

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_a
    move v7, v13

    .line 381
    :goto_5
    const/16 v29, 0x1

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_b
    :goto_6
    const/4 v7, 0x1

    .line 385
    goto :goto_5

    .line 386
    :goto_7
    xor-int/lit8 v21, v7, 0x1

    .line 387
    .line 388
    invoke-virtual {v11}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    if-eqz v6, :cond_d

    .line 393
    .line 394
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    if-eqz v6, :cond_c

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_c
    move v7, v13

    .line 402
    goto :goto_9

    .line 403
    :cond_d
    :goto_8
    move/from16 v7, v29

    .line 404
    .line 405
    :goto_9
    xor-int/lit8 v22, v7, 0x1

    .line 406
    .line 407
    invoke-direct/range {v17 .. v22}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Lhk;->C()Lq63;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    invoke-virtual {v6}, Lq63;->j()Z

    .line 415
    .line 416
    .line 417
    move-result v36

    .line 418
    invoke-virtual {v0}, Lhk;->z()Lq63;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-virtual {v6}, Lq63;->j()Z

    .line 423
    .line 424
    .line 425
    move-result v37

    .line 426
    move-object/from16 v34, v17

    .line 427
    .line 428
    invoke-static/range {v31 .. v37}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    .line 429
    .line 430
    .line 431
    move-result v17

    .line 432
    invoke-virtual {v11}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v6

    .line 440
    cmp-long v4, v4, v6

    .line 441
    .line 442
    if-gez v4, :cond_10

    .line 443
    .line 444
    iget-object v4, v1, Lxw;->c:Lry7;

    .line 445
    .line 446
    iget-boolean v4, v4, Lry7;->f:Z

    .line 447
    .line 448
    if-nez v4, :cond_e

    .line 449
    .line 450
    const/4 v7, 0x4

    .line 451
    const/4 v8, 0x0

    .line 452
    const-string v4, "AppRestoreTask"

    .line 453
    .line 454
    const-string v5, "Backup APK is older, APK downgrade is not allowed in batch actions."

    .line 455
    .line 456
    const/4 v6, 0x0

    .line 457
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_a
    move v7, v13

    .line 461
    goto :goto_b

    .line 462
    :cond_e
    invoke-virtual {v11}, Lji;->isBundled()Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_f

    .line 467
    .line 468
    const/4 v7, 0x4

    .line 469
    const/4 v8, 0x0

    .line 470
    const-string v4, "AppRestoreTask"

    .line 471
    .line 472
    const-string v5, "Backup APK is older and this is a system app. You\'d have to be a monkey to downgrade!"

    .line 473
    .line 474
    const/4 v6, 0x0

    .line 475
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    sget-object v4, Lzn4;->a:Lzn4;

    .line 483
    .line 484
    const-string v4, "Skipped APK installation. System apps must not be downgraded!"

    .line 485
    .line 486
    invoke-static {v3, v4}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_f
    const/4 v7, 0x4

    .line 491
    const/4 v8, 0x0

    .line 492
    const-string v4, "AppRestoreTask"

    .line 493
    .line 494
    const-string v5, "APK downgrade restricted by Android System since Android Nougat 7.0, Swift Backup will attempt to downgrade using workarounds."

    .line 495
    .line 496
    const/4 v6, 0x0

    .line 497
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    const/4 v8, 0x1

    .line 501
    iput-boolean v8, v1, Lxw;->s:Z

    .line 502
    .line 503
    :cond_10
    move/from16 v7, v17

    .line 504
    .line 505
    :goto_b
    move/from16 v17, v7

    .line 506
    .line 507
    :cond_11
    if-eqz v17, :cond_13

    .line 508
    .line 509
    invoke-virtual {v0}, Lhk;->z()Lq63;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v3}, Lq63;->j()Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-eqz v3, :cond_12

    .line 518
    .line 519
    sget-object v3, Lgz;->SharedLibs:Lgz;

    .line 520
    .line 521
    move-object/from16 v4, v30

    .line 522
    .line 523
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_12
    move-object/from16 v4, v30

    .line 528
    .line 529
    :goto_c
    sget-object v3, Lgz;->Apk:Lgz;

    .line 530
    .line 531
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_13
    move-object/from16 v4, v30

    .line 536
    .line 537
    goto :goto_d

    .line 538
    :cond_14
    move-object/from16 v27, v4

    .line 539
    .line 540
    move-object/from16 v28, v5

    .line 541
    .line 542
    move-wide/from16 v25, v13

    .line 543
    .line 544
    move-object/from16 v4, v19

    .line 545
    .line 546
    const/16 v24, 0x0

    .line 547
    .line 548
    move v13, v6

    .line 549
    move-object v14, v8

    .line 550
    :goto_d
    invoke-static/range {v28 .. v28}, Lwx3;->n(Ljava/util/Collection;)Z

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-eqz v3, :cond_17

    .line 555
    .line 556
    invoke-virtual {v0}, Lhk;->g()Lq63;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v0}, Lhk;->n()Lq63;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    invoke-virtual {v0}, Lhk;->m()Lq63;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    invoke-virtual {v0}, Lhk;->q()Lq63;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    filled-new-array {v3, v5, v6, v7}, [Lq63;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_15

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    if-eqz v5, :cond_17

    .line 596
    .line 597
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    check-cast v5, Lq63;

    .line 602
    .line 603
    invoke-virtual {v5}, Lq63;->j()Z

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    if-eqz v5, :cond_16

    .line 608
    .line 609
    move v7, v13

    .line 610
    goto :goto_f

    .line 611
    :cond_17
    :goto_e
    const/4 v7, 0x1

    .line 612
    :goto_f
    iget-boolean v3, v1, Lxw;->e:Z

    .line 613
    .line 614
    if-eqz v3, :cond_18

    .line 615
    .line 616
    if-nez v7, :cond_18

    .line 617
    .line 618
    sget-object v3, Lgs0;->a:Lgs0;

    .line 619
    .line 620
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    sget-object v5, Lis0;->NoData:Lis0;

    .line 625
    .line 626
    invoke-static {v3, v5}, Lgs0;->c(Ljava/lang/String;Lis0;)Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    if-eqz v3, :cond_18

    .line 631
    .line 632
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 633
    .line 634
    const/16 v21, 0x4

    .line 635
    .line 636
    const/16 v22, 0x0

    .line 637
    .line 638
    const-string v18, "AppRestoreTask"

    .line 639
    .line 640
    const-string v19, "App is blacklisted. No data parts will be restored."

    .line 641
    .line 642
    const/16 v20, 0x0

    .line 643
    .line 644
    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    const/4 v7, 0x1

    .line 648
    :cond_18
    if-nez v7, :cond_32

    .line 649
    .line 650
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    if-eqz v3, :cond_19

    .line 655
    .line 656
    invoke-static/range {v28 .. v28}, Lwx3;->p(Ljava/util/Collection;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    invoke-static/range {v28 .. v28}, Lwx3;->r(Ljava/util/Collection;)Z

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    invoke-static/range {v28 .. v28}, Lwx3;->s(Ljava/util/Collection;)Z

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    invoke-static/range {v28 .. v28}, Lwx3;->q(Ljava/util/Collection;)Z

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    invoke-virtual {v11, v3, v5, v6, v7}, Lji;->calculateSize(ZZZZ)V

    .line 673
    .line 674
    .line 675
    :cond_19
    invoke-static/range {v28 .. v28}, Lwx3;->p(Ljava/util/Collection;)Z

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    iget-boolean v5, v1, Lxw;->r:Z

    .line 680
    .line 681
    const-string v6, " backup"

    .line 682
    .line 683
    const-string v7, "No "

    .line 684
    .line 685
    if-eqz v3, :cond_1f

    .line 686
    .line 687
    sget-object v3, Liu;->DATA:Liu;

    .line 688
    .line 689
    invoke-virtual {v0}, Lhk;->g()Lq63;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    invoke-virtual {v8}, Lq63;->j()Z

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    if-nez v8, :cond_1a

    .line 698
    .line 699
    if-nez v2, :cond_1a

    .line 700
    .line 701
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 702
    .line 703
    new-instance v13, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v19

    .line 718
    const/16 v21, 0x4

    .line 719
    .line 720
    const/16 v22, 0x0

    .line 721
    .line 722
    const-string v18, "AppRestoreTask"

    .line 723
    .line 724
    const/16 v20, 0x0

    .line 725
    .line 726
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    :cond_1a
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 730
    .line 731
    .line 732
    move-result v13

    .line 733
    if-eqz v13, :cond_1e

    .line 734
    .line 735
    if-eqz v8, :cond_1e

    .line 736
    .line 737
    if-nez v2, :cond_1e

    .line 738
    .line 739
    invoke-virtual {v11}, Lji;->getDataDir()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v32

    .line 743
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    if-eqz v8, :cond_1b

    .line 748
    .line 749
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataBackupDate()Ljava/lang/Long;

    .line 750
    .line 751
    .line 752
    move-result-object v8

    .line 753
    goto :goto_10

    .line 754
    :cond_1b
    move-object/from16 v8, v24

    .line 755
    .line 756
    :goto_10
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 757
    .line 758
    .line 759
    move-result-wide v33

    .line 760
    invoke-virtual {v11}, Lji;->getSizeInfo()Lqx;

    .line 761
    .line 762
    .line 763
    move-result-object v8

    .line 764
    if-eqz v8, :cond_1c

    .line 765
    .line 766
    invoke-virtual {v8, v5}, Lqx;->getTotalDataSize(Z)J

    .line 767
    .line 768
    .line 769
    move-result-wide v17

    .line 770
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 771
    .line 772
    .line 773
    move-result-object v8

    .line 774
    goto :goto_11

    .line 775
    :cond_1c
    move-object/from16 v8, v24

    .line 776
    .line 777
    :goto_11
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 778
    .line 779
    .line 780
    move-result-wide v35

    .line 781
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 782
    .line 783
    .line 784
    move-result-object v8

    .line 785
    if-eqz v8, :cond_1d

    .line 786
    .line 787
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    goto :goto_12

    .line 792
    :cond_1d
    move-object/from16 v8, v24

    .line 793
    .line 794
    :goto_12
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 795
    .line 796
    .line 797
    move-result-wide v37

    .line 798
    iget-object v8, v1, Lxw;->q:Lnm6;

    .line 799
    .line 800
    move-object/from16 v31, v3

    .line 801
    .line 802
    move-object/from16 v30, v8

    .line 803
    .line 804
    invoke-virtual/range {v30 .. v38}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 805
    .line 806
    .line 807
    move-result v8

    .line 808
    :cond_1e
    if-eqz v8, :cond_1f

    .line 809
    .line 810
    sget-object v3, Lgz;->Data:Lgz;

    .line 811
    .line 812
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    :cond_1f
    invoke-static/range {v28 .. v28}, Lwx3;->r(Ljava/util/Collection;)Z

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    if-eqz v3, :cond_25

    .line 820
    .line 821
    sget-object v3, Liu;->EXTDATA:Liu;

    .line 822
    .line 823
    invoke-virtual {v0}, Lhk;->n()Lq63;

    .line 824
    .line 825
    .line 826
    move-result-object v8

    .line 827
    invoke-virtual {v8}, Lq63;->j()Z

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    if-nez v8, :cond_20

    .line 832
    .line 833
    if-nez v2, :cond_20

    .line 834
    .line 835
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 836
    .line 837
    move-object/from16 v40, v0

    .line 838
    .line 839
    const/4 v13, 0x1

    .line 840
    invoke-virtual {v3, v13}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-static {v7, v0, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v19

    .line 848
    const/16 v21, 0x4

    .line 849
    .line 850
    const/16 v22, 0x0

    .line 851
    .line 852
    const-string v18, "AppRestoreTask"

    .line 853
    .line 854
    const/16 v20, 0x0

    .line 855
    .line 856
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 857
    .line 858
    .line 859
    goto :goto_13

    .line 860
    :cond_20
    move-object/from16 v40, v0

    .line 861
    .line 862
    :goto_13
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-eqz v0, :cond_24

    .line 867
    .line 868
    if-eqz v8, :cond_24

    .line 869
    .line 870
    if-nez v2, :cond_24

    .line 871
    .line 872
    invoke-virtual {v11}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v32

    .line 876
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    if-eqz v0, :cond_21

    .line 881
    .line 882
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataBackupDate()Ljava/lang/Long;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    goto :goto_14

    .line 887
    :cond_21
    move-object/from16 v0, v24

    .line 888
    .line 889
    :goto_14
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 890
    .line 891
    .line 892
    move-result-wide v33

    .line 893
    invoke-virtual {v11}, Lji;->getSizeInfo()Lqx;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    if-eqz v0, :cond_22

    .line 898
    .line 899
    invoke-virtual {v0, v5}, Lqx;->getExtDataSize(Z)J

    .line 900
    .line 901
    .line 902
    move-result-wide v17

    .line 903
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    goto :goto_15

    .line 908
    :cond_22
    move-object/from16 v0, v24

    .line 909
    .line 910
    :goto_15
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 911
    .line 912
    .line 913
    move-result-wide v35

    .line 914
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    if-eqz v0, :cond_23

    .line 919
    .line 920
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    goto :goto_16

    .line 925
    :cond_23
    move-object/from16 v0, v24

    .line 926
    .line 927
    :goto_16
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 928
    .line 929
    .line 930
    move-result-wide v37

    .line 931
    iget-object v0, v1, Lxw;->q:Lnm6;

    .line 932
    .line 933
    move-object/from16 v30, v0

    .line 934
    .line 935
    move-object/from16 v31, v3

    .line 936
    .line 937
    invoke-virtual/range {v30 .. v38}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 938
    .line 939
    .line 940
    move-result v8

    .line 941
    :cond_24
    if-eqz v8, :cond_26

    .line 942
    .line 943
    sget-object v0, Lgz;->ExtData:Lgz;

    .line 944
    .line 945
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    goto :goto_17

    .line 949
    :cond_25
    move-object/from16 v40, v0

    .line 950
    .line 951
    :cond_26
    :goto_17
    invoke-static/range {v28 .. v28}, Lwx3;->q(Ljava/util/Collection;)Z

    .line 952
    .line 953
    .line 954
    move-result v0

    .line 955
    if-eqz v0, :cond_2c

    .line 956
    .line 957
    sget-object v0, Liu;->EXPANSION:Liu;

    .line 958
    .line 959
    invoke-virtual/range {v40 .. v40}, Lhk;->m()Lq63;

    .line 960
    .line 961
    .line 962
    move-result-object v3

    .line 963
    invoke-virtual {v3}, Lq63;->j()Z

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    if-nez v3, :cond_27

    .line 968
    .line 969
    if-nez v2, :cond_27

    .line 970
    .line 971
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 972
    .line 973
    const/4 v8, 0x1

    .line 974
    invoke-virtual {v0, v8}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v5

    .line 978
    invoke-static {v7, v5, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v19

    .line 982
    const/16 v21, 0x4

    .line 983
    .line 984
    const/16 v22, 0x0

    .line 985
    .line 986
    const-string v18, "AppRestoreTask"

    .line 987
    .line 988
    const/16 v20, 0x0

    .line 989
    .line 990
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    :cond_27
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 994
    .line 995
    .line 996
    move-result v5

    .line 997
    if-eqz v5, :cond_2b

    .line 998
    .line 999
    if-eqz v3, :cond_2b

    .line 1000
    .line 1001
    if-nez v2, :cond_2b

    .line 1002
    .line 1003
    invoke-virtual {v11}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v32

    .line 1007
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    if-eqz v3, :cond_28

    .line 1012
    .line 1013
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpansionBackupDate()Ljava/lang/Long;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    goto :goto_18

    .line 1018
    :cond_28
    move-object/from16 v3, v24

    .line 1019
    .line 1020
    :goto_18
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 1021
    .line 1022
    .line 1023
    move-result-wide v33

    .line 1024
    invoke-virtual {v11}, Lji;->getSizeInfo()Lqx;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    if-eqz v3, :cond_29

    .line 1029
    .line 1030
    invoke-virtual {v3}, Lqx;->getExternalObbSize()J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v17

    .line 1034
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v3

    .line 1038
    goto :goto_19

    .line 1039
    :cond_29
    move-object/from16 v3, v24

    .line 1040
    .line 1041
    :goto_19
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v35

    .line 1045
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    if-eqz v3, :cond_2a

    .line 1050
    .line 1051
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    goto :goto_1a

    .line 1056
    :cond_2a
    move-object/from16 v3, v24

    .line 1057
    .line 1058
    :goto_1a
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v37

    .line 1062
    iget-object v3, v1, Lxw;->q:Lnm6;

    .line 1063
    .line 1064
    move-object/from16 v31, v0

    .line 1065
    .line 1066
    move-object/from16 v30, v3

    .line 1067
    .line 1068
    invoke-virtual/range {v30 .. v38}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v3

    .line 1072
    :cond_2b
    if-eqz v3, :cond_2c

    .line 1073
    .line 1074
    sget-object v0, Lgz;->Expansion:Lgz;

    .line 1075
    .line 1076
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    :cond_2c
    invoke-static/range {v28 .. v28}, Lwx3;->s(Ljava/util/Collection;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    if-eqz v0, :cond_33

    .line 1084
    .line 1085
    sget-object v0, Liu;->MEDIA:Liu;

    .line 1086
    .line 1087
    invoke-virtual/range {v40 .. v40}, Lhk;->q()Lq63;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v3

    .line 1091
    invoke-virtual {v3}, Lq63;->j()Z

    .line 1092
    .line 1093
    .line 1094
    move-result v3

    .line 1095
    if-nez v3, :cond_2d

    .line 1096
    .line 1097
    if-nez v2, :cond_2d

    .line 1098
    .line 1099
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1100
    .line 1101
    const/4 v8, 0x1

    .line 1102
    invoke-virtual {v0, v8}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v5

    .line 1106
    invoke-static {v7, v5, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v19

    .line 1110
    const/16 v21, 0x4

    .line 1111
    .line 1112
    const/16 v22, 0x0

    .line 1113
    .line 1114
    const-string v18, "AppRestoreTask"

    .line 1115
    .line 1116
    const/16 v20, 0x0

    .line 1117
    .line 1118
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1119
    .line 1120
    .line 1121
    :cond_2d
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 1122
    .line 1123
    .line 1124
    move-result v5

    .line 1125
    if-eqz v5, :cond_31

    .line 1126
    .line 1127
    if-eqz v3, :cond_31

    .line 1128
    .line 1129
    if-nez v2, :cond_31

    .line 1130
    .line 1131
    invoke-virtual {v11}, Lji;->getMediaDir()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v32

    .line 1135
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v3

    .line 1139
    if-eqz v3, :cond_2e

    .line 1140
    .line 1141
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaBackupDate()Ljava/lang/Long;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v6

    .line 1145
    goto :goto_1b

    .line 1146
    :cond_2e
    move-object/from16 v6, v24

    .line 1147
    .line 1148
    :goto_1b
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v33

    .line 1152
    invoke-virtual {v11}, Lji;->getSizeInfo()Lqx;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    if-eqz v3, :cond_2f

    .line 1157
    .line 1158
    invoke-virtual {v3}, Lqx;->getMediaSize()J

    .line 1159
    .line 1160
    .line 1161
    move-result-wide v5

    .line 1162
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v6

    .line 1166
    goto :goto_1c

    .line 1167
    :cond_2f
    move-object/from16 v6, v24

    .line 1168
    .line 1169
    :goto_1c
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v35

    .line 1173
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v3

    .line 1177
    if-eqz v3, :cond_30

    .line 1178
    .line 1179
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v6

    .line 1183
    goto :goto_1d

    .line 1184
    :cond_30
    move-object/from16 v6, v24

    .line 1185
    .line 1186
    :goto_1d
    invoke-static {v6}, Lio4;->h(Ljava/lang/Long;)J

    .line 1187
    .line 1188
    .line 1189
    move-result-wide v37

    .line 1190
    iget-object v3, v1, Lxw;->q:Lnm6;

    .line 1191
    .line 1192
    move-object/from16 v31, v0

    .line 1193
    .line 1194
    move-object/from16 v30, v3

    .line 1195
    .line 1196
    invoke-virtual/range {v30 .. v38}, Lnm6;->b(Liu;Ljava/lang/String;JJJ)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v3

    .line 1200
    :cond_31
    if-eqz v3, :cond_33

    .line 1201
    .line 1202
    sget-object v0, Lgz;->Media:Lgz;

    .line 1203
    .line 1204
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    goto :goto_1e

    .line 1208
    :cond_32
    move-object/from16 v40, v0

    .line 1209
    .line 1210
    :cond_33
    :goto_1e
    invoke-virtual/range {v27 .. v27}, Lyu;->getRestoresAnyPermissions()Z

    .line 1211
    .line 1212
    .line 1213
    move-result v13

    .line 1214
    iget-boolean v0, v12, Ljz;->e:Z

    .line 1215
    .line 1216
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v3

    .line 1220
    if-eqz v3, :cond_35

    .line 1221
    .line 1222
    if-nez v13, :cond_34

    .line 1223
    .line 1224
    if-eqz v0, :cond_35

    .line 1225
    .line 1226
    :cond_34
    const/4 v7, 0x1

    .line 1227
    goto :goto_1f

    .line 1228
    :cond_35
    const/4 v7, 0x0

    .line 1229
    :goto_1f
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v3

    .line 1233
    if-eqz v3, :cond_37

    .line 1234
    .line 1235
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1236
    .line 1237
    const/16 v21, 0x4

    .line 1238
    .line 1239
    const/16 v22, 0x0

    .line 1240
    .line 1241
    const-string v18, "AppRestoreTask"

    .line 1242
    .line 1243
    const-string v19, "No tasks to perform with this app!"

    .line 1244
    .line 1245
    const/16 v20, 0x0

    .line 1246
    .line 1247
    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1248
    .line 1249
    .line 1250
    if-nez v7, :cond_36

    .line 1251
    .line 1252
    goto/16 :goto_37

    .line 1253
    .line 1254
    :cond_36
    move-object/from16 v18, v4

    .line 1255
    .line 1256
    goto :goto_20

    .line 1257
    :cond_37
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    .line 1258
    .line 1259
    const/16 v22, 0x0

    .line 1260
    .line 1261
    const/16 v23, 0x3f

    .line 1262
    .line 1263
    const/16 v19, 0x0

    .line 1264
    .line 1265
    const/16 v20, 0x0

    .line 1266
    .line 1267
    const/16 v21, 0x0

    .line 1268
    .line 1269
    move-object/from16 v18, v4

    .line 1270
    .line 1271
    invoke-static/range {v18 .. v23}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    const-string v4, "Tasks to perform = "

    .line 1276
    .line 1277
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v32

    .line 1281
    const/16 v34, 0x4

    .line 1282
    .line 1283
    const/16 v35, 0x0

    .line 1284
    .line 1285
    const-string v31, "AppRestoreTask"

    .line 1286
    .line 1287
    const/16 v33, 0x0

    .line 1288
    .line 1289
    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1290
    .line 1291
    .line 1292
    :goto_20
    new-instance v8, Ljava/util/ArrayList;

    .line 1293
    .line 1294
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .line 1296
    .line 1297
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    :cond_38
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1302
    .line 1303
    .line 1304
    move-result v4

    .line 1305
    if-eqz v4, :cond_39

    .line 1306
    .line 1307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v4

    .line 1311
    check-cast v4, Lgz;

    .line 1312
    .line 1313
    sget-object v5, Lww;->a:[I

    .line 1314
    .line 1315
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1316
    .line 1317
    .line 1318
    move-result v4

    .line 1319
    aget v4, v5, v4

    .line 1320
    .line 1321
    packed-switch v4, :pswitch_data_0

    .line 1322
    .line 1323
    .line 1324
    invoke-static {}, Lq;->j()V

    .line 1325
    .line 1326
    .line 1327
    return-object v24

    .line 1328
    :pswitch_0
    move-object/from16 v6, v24

    .line 1329
    .line 1330
    goto :goto_22

    .line 1331
    :pswitch_1
    new-instance v6, Ldx;

    .line 1332
    .line 1333
    invoke-virtual/range {v40 .. v40}, Lhk;->q()Lq63;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v4

    .line 1337
    invoke-direct {v6, v4}, Ldx;-><init>(Lq63;)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_22

    .line 1341
    :pswitch_2
    new-instance v6, Lbx;

    .line 1342
    .line 1343
    invoke-virtual/range {v40 .. v40}, Lhk;->m()Lq63;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v4

    .line 1347
    invoke-direct {v6, v4}, Lbx;-><init>(Lq63;)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_22

    .line 1351
    :pswitch_3
    new-instance v6, Lcx;

    .line 1352
    .line 1353
    invoke-virtual/range {v40 .. v40}, Lhk;->n()Lq63;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v4

    .line 1357
    invoke-direct {v6, v4}, Lcx;-><init>(Lq63;)V

    .line 1358
    .line 1359
    .line 1360
    goto :goto_22

    .line 1361
    :pswitch_4
    new-instance v6, Lax;

    .line 1362
    .line 1363
    invoke-virtual/range {v40 .. v40}, Lhk;->g()Lq63;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v4

    .line 1367
    invoke-direct {v6, v4}, Lax;-><init>(Lq63;)V

    .line 1368
    .line 1369
    .line 1370
    goto :goto_22

    .line 1371
    :pswitch_5
    invoke-virtual/range {v40 .. v40}, Lhk;->C()Lq63;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v4

    .line 1375
    new-instance v6, Lyw;

    .line 1376
    .line 1377
    invoke-direct {v6, v14, v4}, Lyw;-><init>(Lq63;Lq63;)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_22

    .line 1381
    :pswitch_6
    new-instance v6, Lfx;

    .line 1382
    .line 1383
    invoke-virtual/range {v40 .. v40}, Lhk;->z()Lq63;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v4

    .line 1387
    invoke-direct {v6, v4}, Lfx;-><init>(Lq63;)V

    .line 1388
    .line 1389
    .line 1390
    :goto_22
    if-eqz v6, :cond_38

    .line 1391
    .line 1392
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    goto :goto_21

    .line 1396
    :cond_39
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v3

    .line 1400
    const-wide/16 v17, 0x0

    .line 1401
    .line 1402
    move-wide/from16 v4, v17

    .line 1403
    .line 1404
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1405
    .line 1406
    .line 1407
    move-result v6

    .line 1408
    if-eqz v6, :cond_3a

    .line 1409
    .line 1410
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v6

    .line 1414
    check-cast v6, Lgx;

    .line 1415
    .line 1416
    invoke-virtual {v6}, Lgx;->a()J

    .line 1417
    .line 1418
    .line 1419
    move-result-wide v6

    .line 1420
    add-long/2addr v4, v6

    .line 1421
    goto :goto_23

    .line 1422
    :cond_3a
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v14

    .line 1426
    const/4 v6, 0x0

    .line 1427
    :goto_24
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v3

    .line 1431
    if-eqz v3, :cond_3b

    .line 1432
    .line 1433
    add-int/lit8 v19, v6, 0x1

    .line 1434
    .line 1435
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v3

    .line 1439
    check-cast v3, Lgx;

    .line 1440
    .line 1441
    invoke-virtual {v1}, Lxw;->w()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v7

    .line 1445
    if-eqz v7, :cond_3c

    .line 1446
    .line 1447
    :cond_3b
    move-object/from16 v2, p1

    .line 1448
    .line 1449
    move/from16 v20, v0

    .line 1450
    .line 1451
    move-object v6, v1

    .line 1452
    move-object/from16 v32, v11

    .line 1453
    .line 1454
    move/from16 v33, v13

    .line 1455
    .line 1456
    goto/16 :goto_5c

    .line 1457
    .line 1458
    :cond_3c
    new-instance v7, Lkh6;

    .line 1459
    .line 1460
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1461
    .line 1462
    .line 1463
    move/from16 v20, v0

    .line 1464
    .line 1465
    const/4 v0, 0x0

    .line 1466
    :goto_25
    if-ge v0, v6, :cond_3d

    .line 1467
    .line 1468
    move-wide/from16 v21, v4

    .line 1469
    .line 1470
    iget-wide v4, v7, Lkh6;->a:J

    .line 1471
    .line 1472
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v23

    .line 1476
    check-cast v23, Lgx;

    .line 1477
    .line 1478
    invoke-virtual/range {v23 .. v23}, Lgx;->a()J

    .line 1479
    .line 1480
    .line 1481
    move-result-wide v30

    .line 1482
    add-long v4, v30, v4

    .line 1483
    .line 1484
    iput-wide v4, v7, Lkh6;->a:J

    .line 1485
    .line 1486
    add-int/lit8 v0, v0, 0x1

    .line 1487
    .line 1488
    move-wide/from16 v4, v21

    .line 1489
    .line 1490
    goto :goto_25

    .line 1491
    :cond_3d
    move-wide/from16 v21, v4

    .line 1492
    .line 1493
    invoke-virtual {v1}, Lxw;->w()Z

    .line 1494
    .line 1495
    .line 1496
    move-result v0

    .line 1497
    if-nez v0, :cond_3e

    .line 1498
    .line 1499
    instance-of v0, v3, Lfx;

    .line 1500
    .line 1501
    if-eqz v0, :cond_3e

    .line 1502
    .line 1503
    move-object v0, v3

    .line 1504
    check-cast v0, Lfx;

    .line 1505
    .line 1506
    move v3, v2

    .line 1507
    new-instance v2, Lql;

    .line 1508
    .line 1509
    move v4, v3

    .line 1510
    move-object v3, v7

    .line 1511
    const/4 v7, 0x1

    .line 1512
    move-wide/from16 v49, v21

    .line 1513
    .line 1514
    move/from16 v21, v4

    .line 1515
    .line 1516
    move-wide/from16 v4, v49

    .line 1517
    .line 1518
    move-object/from16 v6, p1

    .line 1519
    .line 1520
    invoke-direct/range {v2 .. v7}, Lql;-><init>(Lkh6;JLmt3;I)V

    .line 1521
    .line 1522
    .line 1523
    move-object v3, v2

    .line 1524
    move-object v2, v6

    .line 1525
    invoke-virtual {v1, v0, v3}, Lxw;->u(Lfx;Lql;)V

    .line 1526
    .line 1527
    .line 1528
    move-object v6, v1

    .line 1529
    move-object/from16 v30, v8

    .line 1530
    .line 1531
    move-object v8, v9

    .line 1532
    move-object/from16 v46, v10

    .line 1533
    .line 1534
    move-object/from16 v32, v11

    .line 1535
    .line 1536
    move-object v9, v12

    .line 1537
    move/from16 v33, v13

    .line 1538
    .line 1539
    move-object/from16 v16, v14

    .line 1540
    .line 1541
    const/4 v11, 0x1

    .line 1542
    const/4 v13, 0x0

    .line 1543
    goto/16 :goto_5a

    .line 1544
    .line 1545
    :cond_3e
    move-object v0, v7

    .line 1546
    move-wide/from16 v4, v21

    .line 1547
    .line 1548
    move/from16 v21, v2

    .line 1549
    .line 1550
    move-object/from16 v2, p1

    .line 1551
    .line 1552
    invoke-virtual {v1}, Lxw;->w()Z

    .line 1553
    .line 1554
    .line 1555
    move-result v6

    .line 1556
    iget-object v7, v1, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 1557
    .line 1558
    if-nez v6, :cond_5e

    .line 1559
    .line 1560
    instance-of v6, v3, Lyw;

    .line 1561
    .line 1562
    if-eqz v6, :cond_5e

    .line 1563
    .line 1564
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 1565
    .line 1566
    .line 1567
    move-result v23

    .line 1568
    move-object v6, v3

    .line 1569
    check-cast v6, Lyw;

    .line 1570
    .line 1571
    move-object/from16 v30, v8

    .line 1572
    .line 1573
    new-instance v8, Lkw;

    .line 1574
    .line 1575
    invoke-direct {v8, v0, v4, v5, v2}, Lkw;-><init>(Lkh6;JLqv;)V

    .line 1576
    .line 1577
    .line 1578
    sget-object v31, Lp93;->a:Lp93;

    .line 1579
    .line 1580
    move-object/from16 v31, v3

    .line 1581
    .line 1582
    iget-wide v2, v6, Lyw;->j:J

    .line 1583
    .line 1584
    move-object/from16 v32, v11

    .line 1585
    .line 1586
    iget-object v11, v6, Lyw;->a:Lq63;

    .line 1587
    .line 1588
    move/from16 v33, v13

    .line 1589
    .line 1590
    iget-object v13, v6, Lyw;->b:Lq63;

    .line 1591
    .line 1592
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v2

    .line 1600
    sget-object v40, Lvr6;->INSTANCE:Lvr6;

    .line 1601
    .line 1602
    const-string v3, "Restoring app (~"

    .line 1603
    .line 1604
    move-object/from16 v34, v0

    .line 1605
    .line 1606
    const-string v0, ")"

    .line 1607
    .line 1608
    invoke-static {v3, v2, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v42

    .line 1612
    const/16 v44, 0x4

    .line 1613
    .line 1614
    const/16 v45, 0x0

    .line 1615
    .line 1616
    const-string v41, "AppRestoreTask"

    .line 1617
    .line 1618
    const/16 v43, 0x0

    .line 1619
    .line 1620
    invoke-static/range {v40 .. v45}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1621
    .line 1622
    .line 1623
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1624
    .line 1625
    const v3, 0x7f130492

    .line 1626
    .line 1627
    .line 1628
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v3

    .line 1632
    move-wide/from16 v35, v4

    .line 1633
    .line 1634
    iget-object v4, v10, Lpw6;->i:Lex6;

    .line 1635
    .line 1636
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    const-string v3, " ("

    .line 1645
    .line 1646
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v0

    .line 1659
    invoke-virtual {v4, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1660
    .line 1661
    .line 1662
    iget-wide v2, v6, Lyw;->d:J

    .line 1663
    .line 1664
    cmp-long v0, v2, v17

    .line 1665
    .line 1666
    if-nez v0, :cond_3f

    .line 1667
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    const-string v2, "Invalid base APK file at "

    .line 1671
    .line 1672
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    .line 1678
    const-string v2, " (0B)"

    .line 1679
    .line 1680
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v42

    .line 1687
    const/16 v44, 0x4

    .line 1688
    .line 1689
    const/16 v45, 0x0

    .line 1690
    .line 1691
    const-string v41, "AppRestoreTask"

    .line 1692
    .line 1693
    const/16 v43, 0x0

    .line 1694
    .line 1695
    invoke-static/range {v40 .. v45}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1696
    .line 1697
    .line 1698
    const-string v0, "Invalid/Empty base APK file"

    .line 1699
    .line 1700
    invoke-virtual {v15, v0}, Luw;->c(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    :goto_26
    move-object v6, v1

    .line 1704
    move-object/from16 v46, v10

    .line 1705
    .line 1706
    move-object/from16 v22, v12

    .line 1707
    .line 1708
    move-object/from16 v16, v14

    .line 1709
    .line 1710
    move-object/from16 v14, v31

    .line 1711
    .line 1712
    move-object/from16 v12, v34

    .line 1713
    .line 1714
    move-wide/from16 v47, v35

    .line 1715
    .line 1716
    const/4 v10, 0x2

    .line 1717
    move-object/from16 v34, v7

    .line 1718
    .line 1719
    move-object/from16 v31, v9

    .line 1720
    .line 1721
    :goto_27
    const/4 v7, 0x0

    .line 1722
    goto/16 :goto_35

    .line 1723
    .line 1724
    :cond_3f
    invoke-virtual {v13}, Lq63;->j()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v0

    .line 1728
    if-eqz v0, :cond_42

    .line 1729
    .line 1730
    invoke-virtual {v13}, Lq63;->A()J

    .line 1731
    .line 1732
    .line 1733
    move-result-wide v2

    .line 1734
    const-wide/16 v4, 0x2

    .line 1735
    .line 1736
    mul-long/2addr v2, v4

    .line 1737
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 1738
    .line 1739
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v4

    .line 1743
    invoke-virtual {v0, v4, v2, v3}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    invoke-static {v0, v2, v3}, Lpj7;->b(Lq63;J)Loj7;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v2

    .line 1751
    if-eqz v2, :cond_41

    .line 1752
    .line 1753
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 1754
    .line 1755
    iget-boolean v2, v2, Loj7;->b:Z

    .line 1756
    .line 1757
    if-eqz v2, :cond_40

    .line 1758
    .line 1759
    invoke-virtual {v15, v0}, Luw;->a(Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    goto :goto_26

    .line 1763
    :cond_40
    sget-object v2, Liu;->APP:Liu;

    .line 1764
    .line 1765
    invoke-virtual {v15, v2, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    goto :goto_26

    .line 1769
    :cond_41
    move-object v3, v0

    .line 1770
    goto :goto_28

    .line 1771
    :cond_42
    move-object/from16 v3, v24

    .line 1772
    .line 1773
    :goto_28
    new-instance v0, Lmv;

    .line 1774
    .line 1775
    invoke-virtual/range {v27 .. v27}, Lyu;->getGrantsAllSupportedPermissions()Z

    .line 1776
    .line 1777
    .line 1778
    move-result v4

    .line 1779
    if-eqz v21, :cond_44

    .line 1780
    .line 1781
    if-eqz v7, :cond_43

    .line 1782
    .line 1783
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v2

    .line 1787
    :goto_29
    move-object v5, v2

    .line 1788
    move-object v2, v7

    .line 1789
    goto :goto_2a

    .line 1790
    :cond_43
    move-object v2, v7

    .line 1791
    move-object/from16 v5, v24

    .line 1792
    .line 1793
    goto :goto_2a

    .line 1794
    :cond_44
    invoke-virtual {v1}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v2

    .line 1798
    if-eqz v2, :cond_43

    .line 1799
    .line 1800
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v2

    .line 1804
    goto :goto_29

    .line 1805
    :goto_2a
    new-instance v7, Lah;

    .line 1806
    .line 1807
    move-object/from16 v37, v0

    .line 1808
    .line 1809
    const/4 v0, 0x6

    .line 1810
    invoke-direct {v7, v1, v0}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 1811
    .line 1812
    .line 1813
    move-object/from16 v22, v2

    .line 1814
    .line 1815
    iget-object v2, v1, Lxw;->h:Lji;

    .line 1816
    .line 1817
    move-object/from16 v38, v6

    .line 1818
    .line 1819
    iget-object v6, v1, Lxw;->d:Ljava/lang/String;

    .line 1820
    .line 1821
    move-object/from16 v0, v22

    .line 1822
    .line 1823
    move-object/from16 v22, v12

    .line 1824
    .line 1825
    move-object/from16 v12, v34

    .line 1826
    .line 1827
    move-object/from16 v34, v0

    .line 1828
    .line 1829
    move-object/from16 v46, v10

    .line 1830
    .line 1831
    move-object/from16 v16, v14

    .line 1832
    .line 1833
    move-object/from16 v14, v31

    .line 1834
    .line 1835
    move-wide/from16 v47, v35

    .line 1836
    .line 1837
    move-object/from16 v0, v37

    .line 1838
    .line 1839
    const/4 v10, 0x2

    .line 1840
    move-object/from16 v31, v9

    .line 1841
    .line 1842
    move-object/from16 v9, v38

    .line 1843
    .line 1844
    invoke-direct/range {v0 .. v8}, Lmv;-><init>(Lxw;Lji;Lq63;ZLjava/lang/String;Ljava/lang/String;Lah;Lkw;)V

    .line 1845
    .line 1846
    .line 1847
    move-object v6, v1

    .line 1848
    new-instance v1, Ljv;

    .line 1849
    .line 1850
    invoke-direct {v1, v13}, Ljv;-><init>(Lq63;)V

    .line 1851
    .line 1852
    .line 1853
    iget-boolean v2, v6, Lxw;->s:Z

    .line 1854
    .line 1855
    invoke-virtual {v0, v9, v1, v2}, Lmv;->e(Lyw;Lpe4;Z)Ljava/util/List;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v0

    .line 1859
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1860
    .line 1861
    .line 1862
    move-result v1

    .line 1863
    if-nez v1, :cond_58

    .line 1864
    .line 1865
    invoke-static {v0}, Ljd4;->v(Ljava/util/List;)Z

    .line 1866
    .line 1867
    .line 1868
    move-result v1

    .line 1869
    if-eqz v1, :cond_58

    .line 1870
    .line 1871
    invoke-static {v0}, Ljd4;->t(Ljava/util/List;)Z

    .line 1872
    .line 1873
    .line 1874
    move-result v1

    .line 1875
    if-eqz v1, :cond_45

    .line 1876
    .line 1877
    invoke-virtual/range {v32 .. v32}, Lji;->checkInstalled()Z

    .line 1878
    .line 1879
    .line 1880
    move-result v1

    .line 1881
    if-eqz v1, :cond_45

    .line 1882
    .line 1883
    const/16 v44, 0x4

    .line 1884
    .line 1885
    const/16 v45, 0x0

    .line 1886
    .line 1887
    const-string v41, "AppRestoreTask"

    .line 1888
    .line 1889
    const-string v42, "APK downgrade failed, but app is installed; continuing data restore"

    .line 1890
    .line 1891
    const/16 v43, 0x0

    .line 1892
    .line 1893
    invoke-static/range {v40 .. v45}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1894
    .line 1895
    .line 1896
    const-string v0, "APK restore skipped because installed version is newer than backup"

    .line 1897
    .line 1898
    invoke-virtual {v15, v0}, Luw;->e(Ljava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    const/4 v7, 0x1

    .line 1902
    goto/16 :goto_35

    .line 1903
    .line 1904
    :cond_45
    new-instance v1, Ljava/util/ArrayList;

    .line 1905
    .line 1906
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    .line 1908
    .line 1909
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v2

    .line 1913
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1914
    .line 1915
    .line 1916
    move-result v3

    .line 1917
    if-eqz v3, :cond_47

    .line 1918
    .line 1919
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v3

    .line 1923
    move-object v4, v3

    .line 1924
    check-cast v4, Ljava/lang/String;

    .line 1925
    .line 1926
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v4

    .line 1930
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v4

    .line 1934
    const-string v5, "Success: streamed "

    .line 1935
    .line 1936
    const/4 v8, 0x1

    .line 1937
    invoke-static {v4, v5, v8}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1938
    .line 1939
    .line 1940
    move-result v5

    .line 1941
    if-eqz v5, :cond_46

    .line 1942
    .line 1943
    const-string v5, " bytes"

    .line 1944
    .line 1945
    invoke-static {v4, v5, v8}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1946
    .line 1947
    .line 1948
    move-result v4

    .line 1949
    if-eqz v4, :cond_46

    .line 1950
    .line 1951
    goto :goto_2b

    .line 1952
    :cond_46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1953
    .line 1954
    .line 1955
    goto :goto_2b

    .line 1956
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1957
    .line 1958
    .line 1959
    move-result v2

    .line 1960
    if-eqz v2, :cond_48

    .line 1961
    .line 1962
    move-object/from16 v40, v0

    .line 1963
    .line 1964
    goto :goto_2c

    .line 1965
    :cond_48
    move-object/from16 v40, v1

    .line 1966
    .line 1967
    :goto_2c
    const/16 v44, 0x0

    .line 1968
    .line 1969
    const/16 v45, 0x3f

    .line 1970
    .line 1971
    const/16 v41, 0x0

    .line 1972
    .line 1973
    const/16 v42, 0x0

    .line 1974
    .line 1975
    const/16 v43, 0x0

    .line 1976
    .line 1977
    invoke-static/range {v40 .. v45}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v2

    .line 1981
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 1982
    .line 1983
    const/4 v4, 0x4

    .line 1984
    const/4 v5, 0x0

    .line 1985
    const-string v1, "AppRestoreTask"

    .line 1986
    .line 1987
    const/4 v3, 0x0

    .line 1988
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1989
    .line 1990
    .line 1991
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1992
    .line 1993
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v0

    .line 1997
    invoke-virtual/range {v32 .. v32}, Lji;->getName()Ljava/lang/String;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v1

    .line 2001
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    const v3, 0x7f1305b8

    .line 2006
    .line 2007
    .line 2008
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    .line 2017
    .line 2018
    const-string v1, "NO_MATCHING_ABIS"

    .line 2019
    .line 2020
    const/4 v3, 0x0

    .line 2021
    invoke-static {v2, v1, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 2022
    .line 2023
    .line 2024
    move-result v1

    .line 2025
    if-eqz v1, :cond_4e

    .line 2026
    .line 2027
    sget-object v1, Lg00;->a:Lg00;

    .line 2028
    .line 2029
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v1

    .line 2033
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v2

    .line 2037
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2038
    .line 2039
    .line 2040
    move-result v1

    .line 2041
    if-nez v1, :cond_4d

    .line 2042
    .line 2043
    invoke-static {v11}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v1

    .line 2047
    sget-object v2, Lsv2;->a:Lsv2;

    .line 2048
    .line 2049
    if-eqz v1, :cond_49

    .line 2050
    .line 2051
    iget-object v1, v1, Li40;->b:Ljava/util/ArrayList;

    .line 2052
    .line 2053
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2054
    .line 2055
    .line 2056
    new-instance v3, Lll1;

    .line 2057
    .line 2058
    invoke-direct {v3, v1}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 2059
    .line 2060
    .line 2061
    new-instance v1, Lou;

    .line 2062
    .line 2063
    invoke-direct {v1, v10}, Lou;-><init>(I)V

    .line 2064
    .line 2065
    .line 2066
    new-instance v4, Lme3;

    .line 2067
    .line 2068
    const/4 v8, 0x1

    .line 2069
    invoke-direct {v4, v3, v8, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 2070
    .line 2071
    .line 2072
    invoke-interface {v4}, Lf77;->iterator()Ljava/util/Iterator;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v1

    .line 2076
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2077
    .line 2078
    .line 2079
    move-result v3

    .line 2080
    if-nez v3, :cond_4a

    .line 2081
    .line 2082
    :cond_49
    :goto_2d
    move-object/from16 v40, v2

    .line 2083
    .line 2084
    goto :goto_2f

    .line 2085
    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v2

    .line 2089
    check-cast v2, Ljava/lang/String;

    .line 2090
    .line 2091
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2092
    .line 2093
    .line 2094
    const-string v3, "lib/"

    .line 2095
    .line 2096
    const-string v4, "/"

    .line 2097
    .line 2098
    invoke-static {v2, v3, v4}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v2

    .line 2102
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2103
    .line 2104
    .line 2105
    move-result v5

    .line 2106
    if-nez v5, :cond_4b

    .line 2107
    .line 2108
    invoke-static {v2}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v2

    .line 2112
    goto :goto_2d

    .line 2113
    :cond_4b
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 2114
    .line 2115
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2119
    .line 2120
    .line 2121
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2122
    .line 2123
    .line 2124
    move-result v2

    .line 2125
    if-eqz v2, :cond_4c

    .line 2126
    .line 2127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v2

    .line 2131
    check-cast v2, Ljava/lang/String;

    .line 2132
    .line 2133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2134
    .line 2135
    .line 2136
    invoke-static {v2, v3, v4}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v2

    .line 2140
    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2141
    .line 2142
    .line 2143
    goto :goto_2e

    .line 2144
    :cond_4c
    move-object/from16 v40, v5

    .line 2145
    .line 2146
    :goto_2f
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2147
    .line 2148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2149
    .line 2150
    .line 2151
    const/16 v44, 0x0

    .line 2152
    .line 2153
    const/16 v45, 0x3f

    .line 2154
    .line 2155
    const/16 v41, 0x0

    .line 2156
    .line 2157
    const/16 v42, 0x0

    .line 2158
    .line 2159
    const/16 v43, 0x0

    .line 2160
    .line 2161
    invoke-static/range {v40 .. v45}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v2

    .line 2165
    const/16 v3, 0x3f

    .line 2166
    .line 2167
    move-object/from16 v4, v24

    .line 2168
    .line 2169
    invoke-static {v3, v4, v1}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v1

    .line 2173
    const-string v3, "Incompatible APK with ABIs: "

    .line 2174
    .line 2175
    const-string v5, "\nDevice supported ABIs: "

    .line 2176
    .line 2177
    invoke-static {v3, v2, v5, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v2

    .line 2181
    goto :goto_30

    .line 2182
    :cond_4d
    move-object/from16 v4, v24

    .line 2183
    .line 2184
    invoke-static {}, Ld6;->o()V

    .line 2185
    .line 2186
    .line 2187
    return-object v4

    .line 2188
    :cond_4e
    const-string v1, "VERIFICATION_FAILURE"

    .line 2189
    .line 2190
    const/4 v3, 0x0

    .line 2191
    invoke-static {v2, v1, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 2192
    .line 2193
    .line 2194
    move-result v1

    .line 2195
    if-eqz v1, :cond_4f

    .line 2196
    .line 2197
    const-string v1, "System package manager rejected the backed up APK ["

    .line 2198
    .line 2199
    const-string v3, "]"

    .line 2200
    .line 2201
    invoke-static {v1, v2, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v2

    .line 2205
    :cond_4f
    :goto_30
    sget-object v40, Lvr6;->INSTANCE:Lvr6;

    .line 2206
    .line 2207
    const-string v1, "Simplified error: "

    .line 2208
    .line 2209
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v42

    .line 2213
    const/16 v44, 0x4

    .line 2214
    .line 2215
    const/16 v45, 0x0

    .line 2216
    .line 2217
    const-string v41, "AppRestoreTask"

    .line 2218
    .line 2219
    const/16 v43, 0x0

    .line 2220
    .line 2221
    invoke-static/range {v40 .. v45}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2222
    .line 2223
    .line 2224
    const-string v1, ":\n"

    .line 2225
    .line 2226
    invoke-static {v0, v1, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v0

    .line 2230
    if-eqz v21, :cond_51

    .line 2231
    .line 2232
    if-eqz v34, :cond_50

    .line 2233
    .line 2234
    invoke-virtual/range {v34 .. v34}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v1

    .line 2238
    goto :goto_31

    .line 2239
    :cond_50
    const/4 v1, 0x0

    .line 2240
    goto :goto_31

    .line 2241
    :cond_51
    invoke-virtual {v6}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v1

    .line 2245
    if-eqz v1, :cond_50

    .line 2246
    .line 2247
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkBackupSize()Ljava/lang/Long;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v1

    .line 2251
    :goto_31
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 2252
    .line 2253
    .line 2254
    move-result-wide v1

    .line 2255
    sget-object v3, Lg00;->a:Lg00;

    .line 2256
    .line 2257
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v1

    .line 2261
    invoke-static {v11, v1}, Lg00;->b(Lq63;Ljava/lang/Long;)Ljava/lang/String;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v1

    .line 2265
    const-string v2, "\n"

    .line 2266
    .line 2267
    const-string v3, "\n\n"

    .line 2268
    .line 2269
    if-eqz v1, :cond_53

    .line 2270
    .line 2271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2272
    .line 2273
    .line 2274
    move-result v4

    .line 2275
    if-nez v4, :cond_52

    .line 2276
    .line 2277
    goto :goto_32

    .line 2278
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2279
    .line 2280
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2281
    .line 2282
    .line 2283
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    .line 2289
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    .line 2294
    .line 2295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v0

    .line 2299
    :cond_53
    :goto_32
    if-eqz v21, :cond_55

    .line 2300
    .line 2301
    if-eqz v34, :cond_54

    .line 2302
    .line 2303
    invoke-virtual/range {v34 .. v34}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsSize()Ljava/lang/Long;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v1

    .line 2307
    goto :goto_33

    .line 2308
    :cond_54
    const/4 v1, 0x0

    .line 2309
    goto :goto_33

    .line 2310
    :cond_55
    invoke-virtual {v6}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v1

    .line 2314
    if-eqz v1, :cond_54

    .line 2315
    .line 2316
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSplitsBackupSize()Ljava/lang/Long;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v1

    .line 2320
    :goto_33
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 2321
    .line 2322
    .line 2323
    move-result-wide v4

    .line 2324
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v1

    .line 2328
    invoke-static {v13, v1}, Lg00;->b(Lq63;Ljava/lang/Long;)Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v1

    .line 2332
    if-eqz v1, :cond_57

    .line 2333
    .line 2334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2335
    .line 2336
    .line 2337
    move-result v4

    .line 2338
    if-nez v4, :cond_56

    .line 2339
    .line 2340
    goto :goto_34

    .line 2341
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2342
    .line 2343
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2344
    .line 2345
    .line 2346
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    .line 2351
    .line 2352
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    .line 2354
    .line 2355
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v0

    .line 2362
    :cond_57
    :goto_34
    iput-object v0, v15, Luw;->b:Ljava/lang/String;

    .line 2363
    .line 2364
    goto/16 :goto_27

    .line 2365
    .line 2366
    :cond_58
    invoke-virtual/range {v32 .. v32}, Lji;->checkInstalled()Z

    .line 2367
    .line 2368
    .line 2369
    move-result v7

    .line 2370
    :goto_35
    if-eqz v7, :cond_5c

    .line 2371
    .line 2372
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2373
    .line 2374
    const/4 v4, 0x4

    .line 2375
    const/4 v5, 0x0

    .line 2376
    const-string v1, "AppRestoreTask"

    .line 2377
    .line 2378
    const-string v2, "App installed"

    .line 2379
    .line 2380
    const/4 v3, 0x0

    .line 2381
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2382
    .line 2383
    .line 2384
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2385
    .line 2386
    .line 2387
    move-result v0

    .line 2388
    if-eqz v0, :cond_5a

    .line 2389
    .line 2390
    :cond_59
    const/4 v7, 0x0

    .line 2391
    goto :goto_36

    .line 2392
    :cond_5a
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v0

    .line 2396
    :cond_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2397
    .line 2398
    .line 2399
    move-result v1

    .line 2400
    if-eqz v1, :cond_59

    .line 2401
    .line 2402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v1

    .line 2406
    check-cast v1, Lgx;

    .line 2407
    .line 2408
    instance-of v1, v1, Lax;

    .line 2409
    .line 2410
    if-eqz v1, :cond_5b

    .line 2411
    .line 2412
    const/4 v7, 0x1

    .line 2413
    :goto_36
    if-nez v23, :cond_5f

    .line 2414
    .line 2415
    if-eqz v7, :cond_5f

    .line 2416
    .line 2417
    const/4 v8, 0x1

    .line 2418
    iput-boolean v8, v6, Lxw;->t:Z

    .line 2419
    .line 2420
    sget-object v0, Lg00;->a:Lg00;

    .line 2421
    .line 2422
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v0

    .line 2426
    invoke-virtual/range {v32 .. v32}, Lji;->getName()Ljava/lang/String;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v1

    .line 2430
    invoke-static {v0, v1, v8}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2431
    .line 2432
    .line 2433
    goto :goto_38

    .line 2434
    :cond_5c
    invoke-static/range {v28 .. v28}, Lwx3;->n(Ljava/util/Collection;)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v0

    .line 2438
    if-eqz v0, :cond_5d

    .line 2439
    .line 2440
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2441
    .line 2442
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v0

    .line 2446
    invoke-virtual/range {v32 .. v32}, Lji;->asString()Ljava/lang/String;

    .line 2447
    .line 2448
    .line 2449
    move-result-object v1

    .line 2450
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v1

    .line 2454
    const v2, 0x7f130510

    .line 2455
    .line 2456
    .line 2457
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v0

    .line 2461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2462
    .line 2463
    .line 2464
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 2465
    .line 2466
    const/4 v5, 0x4

    .line 2467
    const/4 v6, 0x0

    .line 2468
    const-string v2, "AppRestoreTask"

    .line 2469
    .line 2470
    const-string v3, "Skipping data restore as app isn\'t installed"

    .line 2471
    .line 2472
    const/4 v4, 0x0

    .line 2473
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2474
    .line 2475
    .line 2476
    iput-object v0, v15, Luw;->c:Ljava/lang/String;

    .line 2477
    .line 2478
    :cond_5d
    :goto_37
    return-object v15

    .line 2479
    :cond_5e
    move-object v6, v1

    .line 2480
    move-wide/from16 v47, v4

    .line 2481
    .line 2482
    move-object/from16 v34, v7

    .line 2483
    .line 2484
    move-object/from16 v30, v8

    .line 2485
    .line 2486
    move-object/from16 v31, v9

    .line 2487
    .line 2488
    move-object/from16 v46, v10

    .line 2489
    .line 2490
    move-object/from16 v32, v11

    .line 2491
    .line 2492
    move-object/from16 v22, v12

    .line 2493
    .line 2494
    move/from16 v33, v13

    .line 2495
    .line 2496
    move-object/from16 v16, v14

    .line 2497
    .line 2498
    const/4 v10, 0x2

    .line 2499
    move-object v12, v0

    .line 2500
    move-object v14, v3

    .line 2501
    :cond_5f
    :goto_38
    sget-object v0, Lg00;->a:Lg00;

    .line 2502
    .line 2503
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v0

    .line 2507
    invoke-static {v0}, Lg00;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v7

    .line 2511
    if-eqz v7, :cond_96

    .line 2512
    .line 2513
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 2514
    .line 2515
    .line 2516
    move-result v0

    .line 2517
    if-gtz v0, :cond_60

    .line 2518
    .line 2519
    goto/16 :goto_5b

    .line 2520
    .line 2521
    :cond_60
    invoke-virtual {v6}, Lxw;->w()Z

    .line 2522
    .line 2523
    .line 2524
    move-result v0

    .line 2525
    if-nez v0, :cond_92

    .line 2526
    .line 2527
    instance-of v0, v14, Lax;

    .line 2528
    .line 2529
    if-eqz v0, :cond_92

    .line 2530
    .line 2531
    :try_start_0
    move-object v3, v14

    .line 2532
    check-cast v3, Lax;

    .line 2533
    .line 2534
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 2535
    .line 2536
    .line 2537
    move-result v0

    .line 2538
    new-instance v1, Llw;

    .line 2539
    .line 2540
    move-object/from16 v2, p1

    .line 2541
    .line 2542
    move-wide/from16 v4, v47

    .line 2543
    .line 2544
    invoke-direct {v1, v12, v4, v5, v2}, Llw;-><init>(Lkh6;JLqv;)V

    .line 2545
    .line 2546
    .line 2547
    invoke-virtual {v6, v3, v0, v1}, Lxw;->h(Lax;ILlw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2548
    .line 2549
    .line 2550
    iget-boolean v0, v6, Lxw;->t:Z

    .line 2551
    .line 2552
    if-eqz v0, :cond_61

    .line 2553
    .line 2554
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 2555
    .line 2556
    .line 2557
    move-result-object v0

    .line 2558
    move-object/from16 v8, v31

    .line 2559
    .line 2560
    const/4 v3, 0x0

    .line 2561
    invoke-static {v0, v8, v3}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2562
    .line 2563
    .line 2564
    goto :goto_39

    .line 2565
    :cond_61
    move-object/from16 v8, v31

    .line 2566
    .line 2567
    const/4 v3, 0x0

    .line 2568
    :goto_39
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v0

    .line 2572
    sget-object v1, Lg00;->a:Lg00;

    .line 2573
    .line 2574
    invoke-static {v3, v0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v1

    .line 2578
    if-eqz v1, :cond_88

    .line 2579
    .line 2580
    invoke-static {v1}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 2581
    .line 2582
    .line 2583
    move-result-wide v35

    .line 2584
    sget-boolean v1, Lj36;->a:Z

    .line 2585
    .line 2586
    if-nez v0, :cond_62

    .line 2587
    .line 2588
    const/4 v0, 0x0

    .line 2589
    const/16 v24, 0x0

    .line 2590
    .line 2591
    goto/16 :goto_4a

    .line 2592
    .line 2593
    :cond_62
    const-string v1, "."

    .line 2594
    .line 2595
    invoke-static {v0, v1, v8}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v0

    .line 2599
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 2600
    .line 2601
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 2602
    .line 2603
    .line 2604
    move-result v1

    .line 2605
    if-eqz v1, :cond_66

    .line 2606
    .line 2607
    const-string v1, "use_test_pdras"

    .line 2608
    .line 2609
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2610
    .line 2611
    if-eqz v3, :cond_63

    .line 2612
    .line 2613
    const/4 v13, 0x0

    .line 2614
    invoke-interface {v3, v1, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 2615
    .line 2616
    .line 2617
    move-result v1

    .line 2618
    const/16 v24, 0x0

    .line 2619
    .line 2620
    goto :goto_3b

    .line 2621
    :catch_0
    const/16 v24, 0x0

    .line 2622
    .line 2623
    goto :goto_3a

    .line 2624
    :cond_63
    const-string v1, "prefs"

    .line 2625
    .line 2626
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2627
    .line 2628
    .line 2629
    const/16 v24, 0x0

    .line 2630
    .line 2631
    :try_start_2
    throw v24
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2632
    :catch_1
    :goto_3a
    const/4 v1, 0x0

    .line 2633
    :goto_3b
    if-eqz v1, :cond_67

    .line 2634
    .line 2635
    sget-object v1, Lj36;->d:Leb2;

    .line 2636
    .line 2637
    if-eqz v1, :cond_67

    .line 2638
    .line 2639
    iget-object v3, v1, Leb2;->b:Lzc2;

    .line 2640
    .line 2641
    iget-object v9, v3, Lzc2;->b:Lgy5;

    .line 2642
    .line 2643
    invoke-virtual {v9}, Lgy5;->l()Lgy5;

    .line 2644
    .line 2645
    .line 2646
    move-result-object v9

    .line 2647
    if-eqz v9, :cond_64

    .line 2648
    .line 2649
    new-instance v11, Lzc2;

    .line 2650
    .line 2651
    iget-object v3, v3, Lzc2;->a:Lwj6;

    .line 2652
    .line 2653
    invoke-direct {v11, v3, v9}, Lzc2;-><init>(Lwj6;Lgy5;)V

    .line 2654
    .line 2655
    .line 2656
    goto :goto_3c

    .line 2657
    :cond_64
    move-object/from16 v11, v24

    .line 2658
    .line 2659
    :goto_3c
    if-nez v11, :cond_65

    .line 2660
    .line 2661
    invoke-static {v0}, Lui8;->b(Ljava/lang/String;)V

    .line 2662
    .line 2663
    .line 2664
    goto :goto_3d

    .line 2665
    :cond_65
    invoke-static {v0}, Lui8;->a(Ljava/lang/String;)V

    .line 2666
    .line 2667
    .line 2668
    :goto_3d
    iget-object v1, v1, Leb2;->a:Lsb4;

    .line 2669
    .line 2670
    iget-object v1, v1, Lsb4;->a:Lqn5;

    .line 2671
    .line 2672
    new-instance v3, Lgy5;

    .line 2673
    .line 2674
    invoke-direct {v3, v0}, Lgy5;-><init>(Ljava/lang/String;)V

    .line 2675
    .line 2676
    .line 2677
    invoke-interface {v1, v3}, Lqn5;->U(Lgy5;)Lqn5;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v1

    .line 2681
    invoke-interface {v1}, Lqn5;->isEmpty()Z

    .line 2682
    .line 2683
    .line 2684
    move-result v1

    .line 2685
    const/4 v13, 0x1

    .line 2686
    xor-int/2addr v1, v13

    .line 2687
    if-ne v1, v13, :cond_67

    .line 2688
    .line 2689
    sget-object v1, Lj36;->d:Leb2;

    .line 2690
    .line 2691
    goto :goto_3e

    .line 2692
    :cond_66
    const/16 v24, 0x0

    .line 2693
    .line 2694
    :cond_67
    sget-object v1, Lj36;->c:Leb2;

    .line 2695
    .line 2696
    :goto_3e
    if-eqz v1, :cond_78

    .line 2697
    .line 2698
    invoke-virtual {v1, v0}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v0

    .line 2702
    const-class v1, Ljava/lang/String;

    .line 2703
    .line 2704
    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v0

    .line 2708
    check-cast v0, Ljava/lang/String;

    .line 2709
    .line 2710
    if-nez v0, :cond_68

    .line 2711
    .line 2712
    goto/16 :goto_48

    .line 2713
    .line 2714
    :cond_68
    const-string v1, ","

    .line 2715
    .line 2716
    filled-new-array {v1}, [Ljava/lang/String;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v1

    .line 2720
    const/4 v3, 0x6

    .line 2721
    invoke-static {v0, v1, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v0

    .line 2725
    new-instance v1, Ljava/util/ArrayList;

    .line 2726
    .line 2727
    const/16 v3, 0xa

    .line 2728
    .line 2729
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 2730
    .line 2731
    .line 2732
    move-result v9

    .line 2733
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2734
    .line 2735
    .line 2736
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v0

    .line 2740
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2741
    .line 2742
    .line 2743
    move-result v9

    .line 2744
    if-eqz v9, :cond_69

    .line 2745
    .line 2746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2747
    .line 2748
    .line 2749
    move-result-object v9

    .line 2750
    check-cast v9, Ljava/lang/String;

    .line 2751
    .line 2752
    invoke-static {v9}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v9

    .line 2756
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v9

    .line 2760
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    .line 2762
    .line 2763
    goto :goto_3f

    .line 2764
    :cond_69
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2765
    .line 2766
    .line 2767
    move-result v0

    .line 2768
    if-eqz v0, :cond_6a

    .line 2769
    .line 2770
    goto :goto_40

    .line 2771
    :cond_6a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v0

    .line 2775
    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2776
    .line 2777
    .line 2778
    move-result v9

    .line 2779
    if-eqz v9, :cond_6c

    .line 2780
    .line 2781
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2782
    .line 2783
    .line 2784
    move-result-object v9

    .line 2785
    check-cast v9, Ljava/lang/String;

    .line 2786
    .line 2787
    const-string v11, "::disabled"

    .line 2788
    .line 2789
    invoke-static {v9, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2790
    .line 2791
    .line 2792
    move-result v9

    .line 2793
    if-eqz v9, :cond_6b

    .line 2794
    .line 2795
    goto/16 :goto_48

    .line 2796
    .line 2797
    :cond_6c
    :goto_40
    new-instance v0, Lpu;

    .line 2798
    .line 2799
    const/16 v9, 0xd

    .line 2800
    .line 2801
    invoke-direct {v0, v9}, Lpu;-><init>(I)V

    .line 2802
    .line 2803
    .line 2804
    new-instance v9, Lgv7;

    .line 2805
    .line 2806
    invoke-direct {v9, v0}, Lgv7;-><init>(Lbt3;)V

    .line 2807
    .line 2808
    .line 2809
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2810
    .line 2811
    .line 2812
    move-result-object v0

    .line 2813
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2814
    .line 2815
    .line 2816
    move-result v9

    .line 2817
    if-eqz v9, :cond_6e

    .line 2818
    .line 2819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2820
    .line 2821
    .line 2822
    move-result-object v9

    .line 2823
    move-object v11, v9

    .line 2824
    check-cast v11, Ljava/lang/String;

    .line 2825
    .line 2826
    const-string v13, "::maxAppVersion"

    .line 2827
    .line 2828
    const/4 v10, 0x0

    .line 2829
    invoke-static {v11, v13, v10}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2830
    .line 2831
    .line 2832
    move-result v11

    .line 2833
    if-eqz v11, :cond_6d

    .line 2834
    .line 2835
    goto :goto_42

    .line 2836
    :cond_6d
    const/4 v10, 0x2

    .line 2837
    goto :goto_41

    .line 2838
    :cond_6e
    move-object/from16 v9, v24

    .line 2839
    .line 2840
    :goto_42
    check-cast v9, Ljava/lang/String;

    .line 2841
    .line 2842
    const-string v0, "="

    .line 2843
    .line 2844
    if-eqz v9, :cond_6f

    .line 2845
    .line 2846
    invoke-static {v9, v0, v9}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2847
    .line 2848
    .line 2849
    move-result-object v9

    .line 2850
    invoke-static {v3, v9}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 2851
    .line 2852
    .line 2853
    move-result-object v9

    .line 2854
    if-eqz v9, :cond_6f

    .line 2855
    .line 2856
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 2857
    .line 2858
    .line 2859
    move-result v9

    .line 2860
    int-to-long v9, v9

    .line 2861
    cmp-long v9, v35, v9

    .line 2862
    .line 2863
    if-lez v9, :cond_6f

    .line 2864
    .line 2865
    goto/16 :goto_48

    .line 2866
    .line 2867
    :cond_6f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2868
    .line 2869
    .line 2870
    move-result-object v9

    .line 2871
    :goto_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 2872
    .line 2873
    .line 2874
    move-result v10

    .line 2875
    if-eqz v10, :cond_71

    .line 2876
    .line 2877
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2878
    .line 2879
    .line 2880
    move-result-object v10

    .line 2881
    move-object v11, v10

    .line 2882
    check-cast v11, Ljava/lang/String;

    .line 2883
    .line 2884
    const-string v13, "::minAppVersion"

    .line 2885
    .line 2886
    const/4 v3, 0x0

    .line 2887
    invoke-static {v11, v13, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2888
    .line 2889
    .line 2890
    move-result v11

    .line 2891
    if-eqz v11, :cond_70

    .line 2892
    .line 2893
    goto :goto_44

    .line 2894
    :cond_70
    const/16 v3, 0xa

    .line 2895
    .line 2896
    goto :goto_43

    .line 2897
    :cond_71
    move-object/from16 v10, v24

    .line 2898
    .line 2899
    :goto_44
    check-cast v10, Ljava/lang/String;

    .line 2900
    .line 2901
    if-eqz v10, :cond_72

    .line 2902
    .line 2903
    invoke-static {v10, v0, v10}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2904
    .line 2905
    .line 2906
    move-result-object v3

    .line 2907
    const/16 v9, 0xa

    .line 2908
    .line 2909
    invoke-static {v9, v3}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 2910
    .line 2911
    .line 2912
    move-result-object v3

    .line 2913
    if-eqz v3, :cond_72

    .line 2914
    .line 2915
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2916
    .line 2917
    .line 2918
    move-result v3

    .line 2919
    int-to-long v9, v3

    .line 2920
    cmp-long v3, v35, v9

    .line 2921
    .line 2922
    if-gez v3, :cond_72

    .line 2923
    .line 2924
    goto/16 :goto_48

    .line 2925
    .line 2926
    :cond_72
    new-instance v3, Lsm;

    .line 2927
    .line 2928
    const/16 v9, 0xc

    .line 2929
    .line 2930
    invoke-direct {v3, v9}, Lsm;-><init>(I)V

    .line 2931
    .line 2932
    .line 2933
    new-instance v9, Lgv7;

    .line 2934
    .line 2935
    invoke-direct {v9, v3}, Lgv7;-><init>(Lbt3;)V

    .line 2936
    .line 2937
    .line 2938
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2939
    .line 2940
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2941
    .line 2942
    .line 2943
    move-result-object v9

    .line 2944
    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 2945
    .line 2946
    .line 2947
    move-result v10

    .line 2948
    if-eqz v10, :cond_74

    .line 2949
    .line 2950
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2951
    .line 2952
    .line 2953
    move-result-object v10

    .line 2954
    move-object v11, v10

    .line 2955
    check-cast v11, Ljava/lang/String;

    .line 2956
    .line 2957
    const-string v13, "::maxSdk"

    .line 2958
    .line 2959
    move-object/from16 v35, v1

    .line 2960
    .line 2961
    const/4 v1, 0x0

    .line 2962
    invoke-static {v11, v13, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2963
    .line 2964
    .line 2965
    move-result v11

    .line 2966
    if-eqz v11, :cond_73

    .line 2967
    .line 2968
    goto :goto_46

    .line 2969
    :cond_73
    move-object/from16 v1, v35

    .line 2970
    .line 2971
    goto :goto_45

    .line 2972
    :cond_74
    move-object/from16 v35, v1

    .line 2973
    .line 2974
    move-object/from16 v10, v24

    .line 2975
    .line 2976
    :goto_46
    check-cast v10, Ljava/lang/String;

    .line 2977
    .line 2978
    if-eqz v10, :cond_75

    .line 2979
    .line 2980
    invoke-static {v10, v0, v10}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2981
    .line 2982
    .line 2983
    move-result-object v1

    .line 2984
    const/16 v9, 0xa

    .line 2985
    .line 2986
    invoke-static {v9, v1}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 2987
    .line 2988
    .line 2989
    move-result-object v1

    .line 2990
    if-eqz v1, :cond_75

    .line 2991
    .line 2992
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2993
    .line 2994
    .line 2995
    move-result v1

    .line 2996
    if-le v3, v1, :cond_75

    .line 2997
    .line 2998
    goto :goto_48

    .line 2999
    :cond_75
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v1

    .line 3003
    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3004
    .line 3005
    .line 3006
    move-result v9

    .line 3007
    if-eqz v9, :cond_77

    .line 3008
    .line 3009
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3010
    .line 3011
    .line 3012
    move-result-object v9

    .line 3013
    move-object v10, v9

    .line 3014
    check-cast v10, Ljava/lang/String;

    .line 3015
    .line 3016
    const-string v11, "::minSdk"

    .line 3017
    .line 3018
    const/4 v13, 0x0

    .line 3019
    invoke-static {v10, v11, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3020
    .line 3021
    .line 3022
    move-result v10

    .line 3023
    if-eqz v10, :cond_76

    .line 3024
    .line 3025
    goto :goto_47

    .line 3026
    :cond_77
    move-object/from16 v9, v24

    .line 3027
    .line 3028
    :goto_47
    check-cast v9, Ljava/lang/String;

    .line 3029
    .line 3030
    if-eqz v9, :cond_79

    .line 3031
    .line 3032
    invoke-static {v9, v0, v9}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3033
    .line 3034
    .line 3035
    move-result-object v0

    .line 3036
    const/16 v9, 0xa

    .line 3037
    .line 3038
    invoke-static {v9, v0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v0

    .line 3042
    if-eqz v0, :cond_79

    .line 3043
    .line 3044
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 3045
    .line 3046
    .line 3047
    move-result v0

    .line 3048
    if-ge v3, v0, :cond_79

    .line 3049
    .line 3050
    :cond_78
    :goto_48
    move-object/from16 v0, v24

    .line 3051
    .line 3052
    goto :goto_4a

    .line 3053
    :cond_79
    new-instance v0, Ljava/util/ArrayList;

    .line 3054
    .line 3055
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3056
    .line 3057
    .line 3058
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3059
    .line 3060
    .line 3061
    move-result-object v1

    .line 3062
    :cond_7a
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3063
    .line 3064
    .line 3065
    move-result v3

    .line 3066
    if-eqz v3, :cond_7b

    .line 3067
    .line 3068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3069
    .line 3070
    .line 3071
    move-result-object v3

    .line 3072
    move-object v9, v3

    .line 3073
    check-cast v9, Ljava/lang/String;

    .line 3074
    .line 3075
    const-string v10, "::"

    .line 3076
    .line 3077
    const/4 v13, 0x0

    .line 3078
    invoke-static {v9, v10, v13}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3079
    .line 3080
    .line 3081
    move-result v9

    .line 3082
    if-nez v9, :cond_7a

    .line 3083
    .line 3084
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3085
    .line 3086
    .line 3087
    goto :goto_49

    .line 3088
    :cond_7b
    :goto_4a
    if-eqz v0, :cond_87

    .line 3089
    .line 3090
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 3091
    .line 3092
    .line 3093
    move-result v1

    .line 3094
    if-nez v1, :cond_7c

    .line 3095
    .line 3096
    goto :goto_4b

    .line 3097
    :cond_7c
    move-object/from16 v0, v24

    .line 3098
    .line 3099
    :goto_4b
    if-eqz v0, :cond_87

    .line 3100
    .line 3101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 3102
    .line 3103
    .line 3104
    move-result v1

    .line 3105
    sget-object v40, Lvr6;->INSTANCE:Lvr6;

    .line 3106
    .line 3107
    const/4 v13, 0x1

    .line 3108
    if-le v1, v13, :cond_7d

    .line 3109
    .line 3110
    const-string v3, "patches"

    .line 3111
    .line 3112
    goto :goto_4c

    .line 3113
    :cond_7d
    const-string v3, "patch"

    .line 3114
    .line 3115
    :goto_4c
    const-string v9, "Applying "

    .line 3116
    .line 3117
    const-string v10, " post data restore "

    .line 3118
    .line 3119
    invoke-static {v1, v9, v10, v3}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3120
    .line 3121
    .line 3122
    move-result-object v42

    .line 3123
    const/16 v44, 0x4

    .line 3124
    .line 3125
    const/16 v45, 0x0

    .line 3126
    .line 3127
    const-string v41, "AppRestoreTask"

    .line 3128
    .line 3129
    const/16 v43, 0x0

    .line 3130
    .line 3131
    invoke-static/range {v40 .. v45}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 3132
    .line 3133
    .line 3134
    new-instance v1, Ljava/util/ArrayList;

    .line 3135
    .line 3136
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3137
    .line 3138
    .line 3139
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 3140
    .line 3141
    .line 3142
    move-result-object v0

    .line 3143
    :cond_7e
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 3144
    .line 3145
    .line 3146
    move-result v3

    .line 3147
    if-eqz v3, :cond_85

    .line 3148
    .line 3149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3150
    .line 3151
    .line 3152
    move-result-object v3

    .line 3153
    check-cast v3, Ljava/lang/String;

    .line 3154
    .line 3155
    const-string v9, "%dataDir"

    .line 3156
    .line 3157
    const/4 v13, 0x0

    .line 3158
    invoke-static {v3, v9, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 3159
    .line 3160
    .line 3161
    move-result v10

    .line 3162
    if-eqz v10, :cond_82

    .line 3163
    .line 3164
    invoke-virtual/range {v32 .. v32}, Lji;->getDataDir()Ljava/lang/String;

    .line 3165
    .line 3166
    .line 3167
    move-result-object v10

    .line 3168
    move/from16 v39, v13

    .line 3169
    .line 3170
    if-eqz v10, :cond_80

    .line 3171
    .line 3172
    const/4 v11, 0x1

    .line 3173
    const/16 v31, 0x2f

    .line 3174
    .line 3175
    new-array v13, v11, [C

    .line 3176
    .line 3177
    aput-char v31, v13, v39

    .line 3178
    .line 3179
    invoke-static {v10, v13}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 3180
    .line 3181
    .line 3182
    move-result-object v10

    .line 3183
    if-nez v10, :cond_7f

    .line 3184
    .line 3185
    goto :goto_4e

    .line 3186
    :cond_7f
    invoke-static {v3, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3187
    .line 3188
    .line 3189
    move-result-object v3

    .line 3190
    goto :goto_4f

    .line 3191
    :cond_80
    :goto_4e
    move-object/from16 v3, v24

    .line 3192
    .line 3193
    :cond_81
    :goto_4f
    const/4 v11, 0x1

    .line 3194
    goto :goto_51

    .line 3195
    :cond_82
    move/from16 v39, v13

    .line 3196
    .line 3197
    const/16 v31, 0x2f

    .line 3198
    .line 3199
    const-string v9, "%deDataDir"

    .line 3200
    .line 3201
    invoke-static {v3, v9, v13}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 3202
    .line 3203
    .line 3204
    move-result v10

    .line 3205
    if-eqz v10, :cond_81

    .line 3206
    .line 3207
    invoke-virtual/range {v32 .. v32}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 3208
    .line 3209
    .line 3210
    move-result-object v10

    .line 3211
    if-eqz v10, :cond_84

    .line 3212
    .line 3213
    move/from16 v39, v13

    .line 3214
    .line 3215
    const/4 v11, 0x1

    .line 3216
    new-array v13, v11, [C

    .line 3217
    .line 3218
    aput-char v31, v13, v39

    .line 3219
    .line 3220
    invoke-static {v10, v13}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 3221
    .line 3222
    .line 3223
    move-result-object v10

    .line 3224
    if-nez v10, :cond_83

    .line 3225
    .line 3226
    goto :goto_50

    .line 3227
    :cond_83
    invoke-static {v3, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3228
    .line 3229
    .line 3230
    move-result-object v3

    .line 3231
    goto :goto_51

    .line 3232
    :cond_84
    const/4 v11, 0x1

    .line 3233
    :goto_50
    move-object/from16 v3, v24

    .line 3234
    .line 3235
    :goto_51
    if-eqz v3, :cond_7e

    .line 3236
    .line 3237
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    .line 3239
    .line 3240
    goto :goto_4d

    .line 3241
    :cond_85
    const/4 v11, 0x1

    .line 3242
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3243
    .line 3244
    .line 3245
    move-result v0

    .line 3246
    if-nez v0, :cond_86

    .line 3247
    .line 3248
    sget-object v0, Lmp6;->a:Lmp6;

    .line 3249
    .line 3250
    const/4 v13, 0x0

    .line 3251
    new-array v0, v13, [Ljava/lang/String;

    .line 3252
    .line 3253
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3254
    .line 3255
    .line 3256
    move-result-object v0

    .line 3257
    check-cast v0, [Ljava/lang/String;

    .line 3258
    .line 3259
    array-length v1, v0

    .line 3260
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3261
    .line 3262
    .line 3263
    move-result-object v0

    .line 3264
    check-cast v0, [Ljava/lang/String;

    .line 3265
    .line 3266
    invoke-static {v0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 3267
    .line 3268
    .line 3269
    :cond_86
    :goto_52
    move-object/from16 v9, v22

    .line 3270
    .line 3271
    goto :goto_53

    .line 3272
    :cond_87
    const/4 v11, 0x1

    .line 3273
    goto :goto_52

    .line 3274
    :cond_88
    const/4 v11, 0x1

    .line 3275
    const/16 v24, 0x0

    .line 3276
    .line 3277
    goto :goto_52

    .line 3278
    :goto_53
    iget-boolean v0, v9, Ljz;->f:Z

    .line 3279
    .line 3280
    if-eqz v0, :cond_90

    .line 3281
    .line 3282
    invoke-virtual {v6}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 3283
    .line 3284
    .line 3285
    move-result-object v0

    .line 3286
    sget-object v1, Lmk7;->a:Lgv7;

    .line 3287
    .line 3288
    sget-boolean v1, Lmp6;->g:Z

    .line 3289
    .line 3290
    if-nez v1, :cond_89

    .line 3291
    .line 3292
    goto :goto_57

    .line 3293
    :cond_89
    iget-object v1, v6, Lxw;->m:Lgv7;

    .line 3294
    .line 3295
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 3296
    .line 3297
    .line 3298
    move-result-object v1

    .line 3299
    check-cast v1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 3300
    .line 3301
    if-eqz v1, :cond_8b

    .line 3302
    .line 3303
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getSsaid()Ljava/lang/String;

    .line 3304
    .line 3305
    .line 3306
    move-result-object v1

    .line 3307
    if-nez v1, :cond_8a

    .line 3308
    .line 3309
    goto :goto_54

    .line 3310
    :cond_8a
    move-object v0, v1

    .line 3311
    goto :goto_55

    .line 3312
    :cond_8b
    :goto_54
    if-eqz v21, :cond_8d

    .line 3313
    .line 3314
    if-eqz v34, :cond_8c

    .line 3315
    .line 3316
    invoke-virtual/range {v34 .. v34}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSsaid()Ljava/lang/String;

    .line 3317
    .line 3318
    .line 3319
    move-result-object v0

    .line 3320
    goto :goto_55

    .line 3321
    :cond_8c
    move-object/from16 v0, v24

    .line 3322
    .line 3323
    goto :goto_55

    .line 3324
    :cond_8d
    if-eqz v0, :cond_8c

    .line 3325
    .line 3326
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSsaid()Ljava/lang/String;

    .line 3327
    .line 3328
    .line 3329
    move-result-object v0

    .line 3330
    :goto_55
    if-eqz v0, :cond_8f

    .line 3331
    .line 3332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 3333
    .line 3334
    .line 3335
    move-result v1

    .line 3336
    if-nez v1, :cond_8e

    .line 3337
    .line 3338
    goto :goto_56

    .line 3339
    :cond_8e
    iget-object v1, v6, Lxw;->p:Lgv7;

    .line 3340
    .line 3341
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 3342
    .line 3343
    .line 3344
    move-result-object v1

    .line 3345
    check-cast v1, Lmk7;

    .line 3346
    .line 3347
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 3348
    .line 3349
    .line 3350
    move-result-object v3

    .line 3351
    invoke-virtual {v1, v3, v0}, Lmk7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    .line 3353
    .line 3354
    goto :goto_57

    .line 3355
    :cond_8f
    :goto_56
    sget-object v40, Lvr6;->INSTANCE:Lvr6;

    .line 3356
    .line 3357
    const/16 v44, 0x4

    .line 3358
    .line 3359
    const/16 v45, 0x0

    .line 3360
    .line 3361
    const-string v41, "AppRestoreTask"

    .line 3362
    .line 3363
    const-string v42, "restoreSsaid: No saved ssaid"

    .line 3364
    .line 3365
    const/16 v43, 0x0

    .line 3366
    .line 3367
    invoke-static/range {v40 .. v45}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 3368
    .line 3369
    .line 3370
    :cond_90
    :goto_57
    const/4 v13, 0x0

    .line 3371
    goto :goto_58

    .line 3372
    :catchall_0
    move-exception v0

    .line 3373
    move-object/from16 v8, v31

    .line 3374
    .line 3375
    iget-boolean v1, v6, Lxw;->t:Z

    .line 3376
    .line 3377
    if-eqz v1, :cond_91

    .line 3378
    .line 3379
    sget-object v1, Lg00;->a:Lg00;

    .line 3380
    .line 3381
    invoke-virtual/range {v32 .. v32}, Lji;->getPackageName()Ljava/lang/String;

    .line 3382
    .line 3383
    .line 3384
    move-result-object v1

    .line 3385
    const/4 v13, 0x0

    .line 3386
    invoke-static {v1, v8, v13}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3387
    .line 3388
    .line 3389
    :cond_91
    throw v0

    .line 3390
    :cond_92
    move-object/from16 v2, p1

    .line 3391
    .line 3392
    move-object/from16 v9, v22

    .line 3393
    .line 3394
    move-object/from16 v8, v31

    .line 3395
    .line 3396
    move-wide/from16 v4, v47

    .line 3397
    .line 3398
    const/4 v11, 0x1

    .line 3399
    const/4 v13, 0x0

    .line 3400
    const/16 v24, 0x0

    .line 3401
    .line 3402
    :goto_58
    invoke-virtual {v6}, Lxw;->w()Z

    .line 3403
    .line 3404
    .line 3405
    move-result v0

    .line 3406
    if-nez v0, :cond_93

    .line 3407
    .line 3408
    instance-of v0, v14, Lcx;

    .line 3409
    .line 3410
    if-eqz v0, :cond_93

    .line 3411
    .line 3412
    move-object v3, v14

    .line 3413
    check-cast v3, Lcx;

    .line 3414
    .line 3415
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 3416
    .line 3417
    .line 3418
    move-result v0

    .line 3419
    new-instance v1, Lmw;

    .line 3420
    .line 3421
    invoke-direct {v1, v12, v4, v5, v2}, Lmw;-><init>(Lkh6;JLqv;)V

    .line 3422
    .line 3423
    .line 3424
    invoke-virtual {v6, v3, v0, v1}, Lxw;->m(Lcx;ILmw;)V

    .line 3425
    .line 3426
    .line 3427
    :cond_93
    invoke-virtual {v6}, Lxw;->w()Z

    .line 3428
    .line 3429
    .line 3430
    move-result v0

    .line 3431
    if-nez v0, :cond_94

    .line 3432
    .line 3433
    instance-of v0, v14, Ldx;

    .line 3434
    .line 3435
    if-eqz v0, :cond_94

    .line 3436
    .line 3437
    move-object v10, v14

    .line 3438
    check-cast v10, Ldx;

    .line 3439
    .line 3440
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 3441
    .line 3442
    .line 3443
    move-result v0

    .line 3444
    move v1, v0

    .line 3445
    new-instance v0, Liw;

    .line 3446
    .line 3447
    move-wide/from16 v47, v4

    .line 3448
    .line 3449
    const/4 v5, 0x1

    .line 3450
    move-object v3, v12

    .line 3451
    move v12, v1

    .line 3452
    move-object v1, v3

    .line 3453
    move-object v4, v2

    .line 3454
    move-wide/from16 v2, v47

    .line 3455
    .line 3456
    invoke-direct/range {v0 .. v5}, Liw;-><init>(Lkh6;JLjava/lang/Object;I)V

    .line 3457
    .line 3458
    .line 3459
    move-wide/from16 v49, v2

    .line 3460
    .line 3461
    move-object v2, v4

    .line 3462
    move-wide/from16 v4, v49

    .line 3463
    .line 3464
    move-object v3, v1

    .line 3465
    invoke-virtual {v6, v10, v12, v0}, Lxw;->n(Ldx;ILiw;)V

    .line 3466
    .line 3467
    .line 3468
    goto :goto_59

    .line 3469
    :cond_94
    move-object v3, v12

    .line 3470
    :goto_59
    invoke-virtual {v6}, Lxw;->w()Z

    .line 3471
    .line 3472
    .line 3473
    move-result v0

    .line 3474
    if-nez v0, :cond_95

    .line 3475
    .line 3476
    instance-of v0, v14, Lbx;

    .line 3477
    .line 3478
    if-eqz v0, :cond_95

    .line 3479
    .line 3480
    move-object v0, v14

    .line 3481
    check-cast v0, Lbx;

    .line 3482
    .line 3483
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 3484
    .line 3485
    .line 3486
    move-result v1

    .line 3487
    new-instance v7, Lnw;

    .line 3488
    .line 3489
    invoke-direct {v7, v3, v4, v5, v2}, Lnw;-><init>(Lkh6;JLqv;)V

    .line 3490
    .line 3491
    .line 3492
    invoke-virtual {v6, v0, v1, v7}, Lxw;->l(Lbx;ILnw;)V

    .line 3493
    .line 3494
    .line 3495
    :cond_95
    :goto_5a
    move-object v1, v6

    .line 3496
    move-object v12, v9

    .line 3497
    move-object/from16 v14, v16

    .line 3498
    .line 3499
    move/from16 v6, v19

    .line 3500
    .line 3501
    move/from16 v0, v20

    .line 3502
    .line 3503
    move/from16 v2, v21

    .line 3504
    .line 3505
    move-object/from16 v11, v32

    .line 3506
    .line 3507
    move/from16 v13, v33

    .line 3508
    .line 3509
    move-object/from16 v10, v46

    .line 3510
    .line 3511
    move-object v9, v8

    .line 3512
    move-object/from16 v8, v30

    .line 3513
    .line 3514
    goto/16 :goto_24

    .line 3515
    .line 3516
    :cond_96
    :goto_5b
    sget-object v34, Lvr6;->INSTANCE:Lvr6;

    .line 3517
    .line 3518
    const/16 v38, 0x4

    .line 3519
    .line 3520
    const/16 v39, 0x0

    .line 3521
    .line 3522
    const-string v35, "AppRestoreTask"

    .line 3523
    .line 3524
    const-string v36, "Installed app\'s uid not available. Skipping data restore."

    .line 3525
    .line 3526
    const/16 v37, 0x0

    .line 3527
    .line 3528
    invoke-static/range {v34 .. v39}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 3529
    .line 3530
    .line 3531
    move-object/from16 v0, v36

    .line 3532
    .line 3533
    invoke-virtual {v15, v0}, Luw;->c(Ljava/lang/String;)V

    .line 3534
    .line 3535
    .line 3536
    return-object v15

    .line 3537
    :goto_5c
    invoke-virtual {v6}, Lxw;->w()Z

    .line 3538
    .line 3539
    .line 3540
    move-result v0

    .line 3541
    if-nez v0, :cond_98

    .line 3542
    .line 3543
    invoke-virtual/range {v32 .. v32}, Lji;->isInstalled()Z

    .line 3544
    .line 3545
    .line 3546
    move-result v0

    .line 3547
    if-eqz v0, :cond_98

    .line 3548
    .line 3549
    if-nez v33, :cond_97

    .line 3550
    .line 3551
    if-eqz v20, :cond_98

    .line 3552
    .line 3553
    :cond_97
    invoke-virtual {v6}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 3554
    .line 3555
    .line 3556
    move-result-object v0

    .line 3557
    invoke-virtual {v6, v0}, Lxw;->q(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V

    .line 3558
    .line 3559
    .line 3560
    if-eqz v20, :cond_98

    .line 3561
    .line 3562
    invoke-virtual {v6}, Lxw;->p()V

    .line 3563
    .line 3564
    .line 3565
    :cond_98
    const/16 v0, 0x64

    .line 3566
    .line 3567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3568
    .line 3569
    .line 3570
    move-result-object v0

    .line 3571
    invoke-virtual {v2, v0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    .line 3573
    .line 3574
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 3575
    .line 3576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3577
    .line 3578
    .line 3579
    move-result-wide v2

    .line 3580
    move-wide/from16 v4, v25

    .line 3581
    .line 3582
    invoke-static {v4, v5, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 3583
    .line 3584
    .line 3585
    move-result-object v3

    .line 3586
    const/4 v5, 0x4

    .line 3587
    const/4 v6, 0x0

    .line 3588
    const-string v2, "AppRestoreTask"

    .line 3589
    .line 3590
    const/4 v4, 0x0

    .line 3591
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 3592
    .line 3593
    .line 3594
    return-object v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lxw;->n:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public final f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lxw;->l:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 8
    .line 9
    return-object p0
.end method

.method public final g(Ljz6;Liu;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p1, Ljz6;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p2, v1}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object p0, p0, Lxw;->h:Lji;

    .line 24
    .line 25
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, " restore diagnostics for "

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "/"

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ":\n"

    .line 54
    .line 55
    invoke-static {v1, p0, p1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v4, 0x4

    .line 60
    const/4 v5, 0x0

    .line 61
    const-string v1, "AppRestoreTask"

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public final h(Lax;ILlw;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lax;->a:Lq63;

    .line 2
    .line 3
    const-string v1, "Backup format not handled: "

    .line 4
    .line 5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    const/4 v6, 0x4

    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v3, "AppRestoreTask"

    .line 10
    .line 11
    const-string v4, "Starting Data restore"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v8, p1, Lax;->b:Li40;

    .line 18
    .line 19
    if-nez v8, :cond_0

    .line 20
    .line 21
    const-string p1, "Couldn\'t get archive type for "

    .line 22
    .line 23
    invoke-static {v0, p1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const-string v3, "AppRestoreTask"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Liu;->DATA:Liu;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, p2}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget v0, v8, Li40;->a:I

    .line 43
    .line 44
    sget-object v3, Lp93;->a:Lp93;

    .line 45
    .line 46
    iget-wide v3, p1, Lax;->h:J

    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v3, "Restoring Data ("

    .line 57
    .line 58
    const-string v4, ", v"

    .line 59
    .line 60
    const-string v10, ")"

    .line 61
    .line 62
    invoke-static {v3, v9, v4, v0, v10}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v3, "AppRestoreTask"

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 75
    .line 76
    const v2, 0x7f130493

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lxw;->b:Lc40;

    .line 84
    .line 85
    iget-object v3, v3, Lpw6;->i:Lex6;

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, " ("

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v3, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lxw;->h:Lji;

    .line 114
    .line 115
    invoke-virtual {v2}, Lji;->refresh()V

    .line 116
    .line 117
    .line 118
    sget-object v3, Lg00;->a:Lg00;

    .line 119
    .line 120
    invoke-virtual {v2}, Lji;->getDataDir()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3}, Lg00;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const/4 v4, 0x1

    .line 129
    if-eq v0, v4, :cond_3

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    if-eq v0, v5, :cond_2

    .line 133
    .line 134
    const/4 v5, 0x4

    .line 135
    if-eq v0, v5, :cond_2

    .line 136
    .line 137
    const/4 v5, 0x5

    .line 138
    if-eq v0, v5, :cond_2

    .line 139
    .line 140
    const/4 v5, 0x6

    .line 141
    if-ne v0, v5, :cond_1

    .line 142
    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lxw;->j(Lax;Llw;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    move-object p1, v0

    .line 149
    goto :goto_2

    .line 150
    :cond_1
    new-instance p1, Lio5;

    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_2
    invoke-virtual {p0, p1, p3}, Lxw;->k(Lax;Llw;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0, p1, p3}, Lxw;->i(Lax;Llw;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-ne v0, v4, :cond_4

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    const/4 v4, 0x0

    .line 183
    :goto_1
    invoke-static {v2, p1, v3, v4}, Lg00;->e(Lji;Ljava/lang/Integer;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 188
    .line 189
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    const-string p3, "Backup format check failed = "

    .line 194
    .line 195
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const/4 v4, 0x4

    .line 200
    const/4 v5, 0x0

    .line 201
    const-string v1, "AppRestoreTask"

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p3, "Data restore failed ("

    .line 214
    .line 215
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p0, p0, Lxw;->u:Luw;

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Luw;->a(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final i(Lax;Llw;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    const/4 v7, 0x4

    .line 10
    const/4 v8, 0x0

    .line 11
    const-string v4, "AppRestoreTask"

    .line 12
    .line 13
    const-string v5, "Unpacking Data"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v4, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 20
    .line 21
    iget-object v9, v0, Lxw;->h:Lji;

    .line 22
    .line 23
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    invoke-virtual {v4, v5, v6, v7}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    iget-object v10, v1, Lax;->a:Lq63;

    .line 34
    .line 35
    invoke-virtual {v0}, Lxw;->e()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    new-instance v15, Lxv;

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-direct {v15, v2, v1, v0, v4}, Lxv;-><init>(Lmt3;Lgx;Lxw;I)V

    .line 43
    .line 44
    .line 45
    const/16 v16, 0x18

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x0

    .line 49
    invoke-static/range {v10 .. v16}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lex;->UNPACK:Lex;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lax;->d(Lex;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lax;->b()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v11, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v10, "/"

    .line 81
    .line 82
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v5, Lmp6;->a:Lmp6;

    .line 87
    .line 88
    sget-boolean v5, Lg42;->a:Z

    .line 89
    .line 90
    invoke-virtual {v9}, Lji;->getDataDir()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v5}, Lg42;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    const/4 v7, 0x4

    .line 109
    move v0, v4

    .line 110
    const-string v4, "AppRestoreTask"

    .line 111
    .line 112
    const-string v5, "Restored Data"

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_2

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_0

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, "_user_de"

    .line 144
    .line 145
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v11, v4}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_1

    .line 169
    .line 170
    new-instance v5, Lq63;

    .line 171
    .line 172
    invoke-direct {v5, v4, v0}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Lq63;->j()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    invoke-virtual {v9}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v0}, Lg42;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    filled-new-array {v0}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    const/4 v7, 0x4

    .line 200
    const/4 v8, 0x0

    .line 201
    const-string v4, "AppRestoreTask"

    .line 202
    .line 203
    const-string v5, "Restored DE Data"

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_1
    const-string v0, "Invalid filePath = "

    .line 211
    .line 212
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_2
    :goto_0
    sget-object v0, Lex;->UNTAR:Lex;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Lax;->d(Lex;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lax;->b()J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v2, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-static {v11}, Lcy0;->e(Lq63;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final j(Lax;Llw;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v8, v1, Lax;->b:Li40;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    if-nez v8, :cond_0

    .line 9
    .line 10
    sget-object v2, Liu;->DATA:Liu;

    .line 11
    .line 12
    iget-object v1, v1, Lax;->a:Lq63;

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1, v9}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v2, "data"

    .line 19
    .line 20
    invoke-virtual {v8, v2}, Li40;->a(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v10, v0, Lxw;->u:Luw;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v0, "App Data backup archive is missing the data entry"

    .line 29
    .line 30
    invoke-virtual {v10, v0}, Luw;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v11, v0, Lxw;->h:Lji;

    .line 35
    .line 36
    invoke-virtual {v11}, Lji;->getDataDir()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, v9

    .line 50
    :goto_0
    if-eqz v2, :cond_4

    .line 51
    .line 52
    new-instance v3, Ljava/io/File;

    .line 53
    .line 54
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v2, v9

    .line 69
    :goto_1
    move-object v3, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move-object v3, v9

    .line 72
    :goto_2
    if-eqz v3, :cond_10

    .line 73
    .line 74
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_5
    const/4 v12, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    :try_start_0
    const-string v2, "data"

    .line 85
    .line 86
    sget-object v4, Lex;->UNTAR_DATA:Lex;

    .line 87
    .line 88
    const-string v5, "Extracting Data"

    .line 89
    .line 90
    move-object/from16 v7, p2

    .line 91
    .line 92
    invoke-virtual/range {v0 .. v7}, Lxw;->r(Lax;Ljava/lang/String;Ljava/lang/String;Lex;Ljava/lang/String;[CLlw;)Lvw;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-boolean v0, v2, Lvw;->a:Z

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_6
    iget-object v6, v2, Lvw;->b:[C

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Lax;->d(Lex;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lax;->b()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v7, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    const-string v14, "AppRestoreTask"

    .line 121
    .line 122
    const-string v15, "Restored Data"

    .line 123
    .line 124
    const/16 v17, 0x4

    .line 125
    .line 126
    const/16 v18, 0x0

    .line 127
    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "data_de"

    .line 134
    .line 135
    invoke-virtual {v8, v0}, Li40;->a(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    if-eqz v6, :cond_e

    .line 142
    .line 143
    array-length v0, v6

    .line 144
    invoke-static {v6, v12, v0, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_7
    :try_start_1
    invoke-virtual {v11}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_8

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    move-object v0, v9

    .line 162
    :goto_3
    if-eqz v0, :cond_9

    .line 163
    .line 164
    new-instance v2, Ljava/io/File;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    goto :goto_4

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    goto :goto_7

    .line 182
    :cond_9
    :goto_4
    move-object v3, v9

    .line 183
    if-eqz v3, :cond_d

    .line 184
    .line 185
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_a
    const-string v2, "data_de"

    .line 193
    .line 194
    sget-object v4, Lex;->UNTAR_DEDATA:Lex;

    .line 195
    .line 196
    const-string v5, "Extracting DE Data"

    .line 197
    .line 198
    move-object/from16 v0, p0

    .line 199
    .line 200
    invoke-virtual/range {v0 .. v7}, Lxw;->r(Lax;Ljava/lang/String;Ljava/lang/String;Lex;Ljava/lang/String;[CLlw;)Lvw;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v6, :cond_b

    .line 205
    .line 206
    array-length v2, v6

    .line 207
    invoke-static {v6, v12, v2, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 208
    .line 209
    .line 210
    :cond_b
    iget-object v6, v0, Lvw;->b:[C

    .line 211
    .line 212
    iget-boolean v0, v0, Lvw;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    if-nez v0, :cond_c

    .line 215
    .line 216
    if-eqz v6, :cond_e

    .line 217
    .line 218
    array-length v0, v6

    .line 219
    invoke-static {v6, v12, v0, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_c
    :try_start_2
    invoke-virtual {v1, v4}, Lax;->d(Lex;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lax;->b()J

    .line 227
    .line 228
    .line 229
    move-result-wide v0

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v7, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    const-string v14, "AppRestoreTask"

    .line 238
    .line 239
    const-string v15, "Restored DE Data"

    .line 240
    .line 241
    const/16 v17, 0x4

    .line 242
    .line 243
    const/16 v18, 0x0

    .line 244
    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    .line 250
    if-eqz v6, :cond_e

    .line 251
    .line 252
    array-length v0, v6

    .line 253
    invoke-static {v6, v12, v0, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_d
    :goto_5
    :try_start_3
    const-string v0, "DE Data restore skipped because app DE data directory is unavailable"

    .line 258
    .line 259
    invoke-virtual {v10, v0}, Luw;->e(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Lex;->UNTAR_DEDATA:Lex;

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Lax;->d(Lex;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lax;->b()J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v7, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .line 277
    .line 278
    if-eqz v6, :cond_e

    .line 279
    .line 280
    array-length v0, v6

    .line 281
    invoke-static {v6, v12, v0, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 282
    .line 283
    .line 284
    :cond_e
    :goto_6
    return-void

    .line 285
    :goto_7
    if-eqz v6, :cond_f

    .line 286
    .line 287
    array-length v1, v6

    .line 288
    invoke-static {v6, v12, v1, v12}, Ljava/util/Arrays;->fill([CIIC)V

    .line 289
    .line 290
    .line 291
    :cond_f
    throw v0

    .line 292
    :cond_10
    :goto_8
    const-string v0, "App Data restore target is unavailable"

    .line 293
    .line 294
    invoke-virtual {v10, v0}, Luw;->a(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method public final k(Lax;Llw;)V
    .locals 18

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    new-instance v6, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 13
    .line 14
    iget-object v7, v5, Lxw;->h:Lji;

    .line 15
    .line 16
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-wide v8, v4, Lax;->h:J

    .line 21
    .line 22
    invoke-virtual {v0, v1, v8, v9}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    const/16 v16, 0x4

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    .line 35
    const-string v13, "AppRestoreTask"

    .line 36
    .line 37
    const-string v14, "Unpacking Data"

    .line 38
    .line 39
    const/4 v15, 0x0

    .line 40
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v12

    .line 44
    invoke-static {v11, v8, v9}, Lpj7;->b(Lq63;J)Loj7;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v8, v5, Lxw;->u:Luw;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 53
    .line 54
    iget-boolean v1, v2, Loj7;->b:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v8, v0}, Luw;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Liu;->DATA:Liu;

    .line 63
    .line 64
    invoke-virtual {v8, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1c

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lq63;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object v10, v4, Lax;->a:Lq63;

    .line 91
    .line 92
    invoke-virtual {v5}, Lxw;->e()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    iget-boolean v2, v5, Lxw;->i:Z

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    iget-object v2, v5, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataPasswordHash()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :goto_2
    move-object v13, v2

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    move-object v13, v9

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {v5}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataPasswordHash()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_2

    .line 124
    :goto_3
    new-instance v15, Lyv;

    .line 125
    .line 126
    invoke-direct {v15, v3, v5, v4}, Lyv;-><init>(Llw;Lxw;Lax;)V

    .line 127
    .line 128
    .line 129
    const/16 v16, 0x10

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    invoke-static/range {v10 .. v16}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    sget-object v10, Lex;->UNPACK:Lex;

    .line 137
    .line 138
    invoke-virtual {v4, v10}, Lax;->d(Lex;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Lax;->b()J

    .line 142
    .line 143
    .line 144
    move-result-wide v12

    .line 145
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-virtual {v3, v10}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-boolean v10, v2, Lfw5;->a:Z

    .line 153
    .line 154
    const/4 v12, 0x1

    .line 155
    if-nez v10, :cond_8

    .line 156
    .line 157
    iget-object v0, v2, Lfw5;->d:Lew5;

    .line 158
    .line 159
    const/4 v1, -0x1

    .line 160
    if-nez v0, :cond_4

    .line 161
    .line 162
    move v0, v1

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    sget-object v2, Lww;->b:[I

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    aget v0, v2, v0

    .line 171
    .line 172
    :goto_4
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    if-eq v0, v12, :cond_6

    .line 175
    .line 176
    const/4 v1, 0x2

    .line 177
    if-eq v0, v1, :cond_6

    .line 178
    .line 179
    const/4 v1, 0x3

    .line 180
    if-ne v0, v1, :cond_5

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_6
    sget-object v0, Liu;->DATA:Liu;

    .line 188
    .line 189
    invoke-virtual {v8, v0}, Luw;->d(Liu;)V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    :goto_5
    sget-object v0, Liu;->DATA:Liu;

    .line 194
    .line 195
    iget-object v1, v4, Lax;->a:Lq63;

    .line 196
    .line 197
    invoke-virtual {v5, v0, v1, v9}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_6
    invoke-static {v6}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_8
    invoke-virtual {v11}, Lq63;->B()Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    if-eqz v10, :cond_9

    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_a

    .line 215
    .line 216
    :cond_9
    move-object v12, v1

    .line 217
    goto/16 :goto_12

    .line 218
    .line 219
    :cond_a
    iget-boolean v2, v4, Lax;->c:Z

    .line 220
    .line 221
    if-eqz v2, :cond_d

    .line 222
    .line 223
    const/16 v16, 0x4

    .line 224
    .line 225
    const/16 v17, 0x0

    .line 226
    .line 227
    const-string v13, "AppRestoreTask"

    .line 228
    .line 229
    const-string v14, "Decompressing Data"

    .line 230
    .line 231
    const/4 v15, 0x0

    .line 232
    move v11, v12

    .line 233
    move-object v12, v1

    .line 234
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v10}, Lth5;->c(Ljava/util/ArrayList;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v1

    .line 241
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    invoke-virtual {v0, v13, v1, v2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    invoke-static {v13, v1, v2}, Lpj7;->b(Lq63;J)Loj7;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_c

    .line 257
    .line 258
    iget-object v1, v0, Loj7;->a:Ljava/lang/String;

    .line 259
    .line 260
    iget-boolean v0, v0, Loj7;->b:Z

    .line 261
    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    invoke-virtual {v8, v1}, Luw;->a(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_b
    sget-object v0, Liu;->DATA:Liu;

    .line 269
    .line 270
    invoke-virtual {v8, v0, v1}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_1c

    .line 282
    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Lq63;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_c
    sget-object v0, Lex;->DECOMPRESS:Lex;

    .line 297
    .line 298
    invoke-virtual {v4, v0}, Lax;->c(Lex;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v1

    .line 302
    new-instance v0, Lzv;

    .line 303
    .line 304
    invoke-direct/range {v0 .. v5}, Lzv;-><init>(JLlw;Lax;Lxw;)V

    .line 305
    .line 306
    .line 307
    invoke-static {v10, v13, v0}, Lth5;->b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    goto :goto_9

    .line 312
    :cond_d
    move v11, v12

    .line 313
    move-object v12, v1

    .line 314
    :goto_9
    sget-object v0, Lex;->DECOMPRESS:Lex;

    .line 315
    .line 316
    invoke-virtual {v4, v0}, Lax;->d(Lex;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Lax;->b()J

    .line 320
    .line 321
    .line 322
    move-result-wide v0

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v3, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    const/16 v16, 0x4

    .line 337
    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    const-string v13, "AppRestoreTask"

    .line 341
    .line 342
    const-string v14, "No tar files found!"

    .line 343
    .line 344
    const/4 v15, 0x0

    .line 345
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v6}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_e
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_10

    .line 361
    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    move-object v2, v1

    .line 367
    check-cast v2, Lq63;

    .line 368
    .line 369
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    new-instance v13, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v12, ".tar"

    .line 386
    .line 387
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_f

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_10
    move-object v1, v9

    .line 402
    :goto_a
    check-cast v1, Lq63;

    .line 403
    .line 404
    if-nez v1, :cond_11

    .line 405
    .line 406
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 407
    .line 408
    const/16 v16, 0x4

    .line 409
    .line 410
    const/16 v17, 0x0

    .line 411
    .line 412
    const-string v13, "AppRestoreTask"

    .line 413
    .line 414
    const-string v14, "No tar file found!"

    .line 415
    .line 416
    const/4 v15, 0x0

    .line 417
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v6}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_11
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_13

    .line 433
    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    move-object v10, v2

    .line 439
    check-cast v10, Lq63;

    .line 440
    .line 441
    invoke-virtual {v10}, Lq63;->p()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    new-instance v13, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v12, "_user_de.tar"

    .line 458
    .line 459
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    if-eqz v10, :cond_12

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_13
    move-object v2, v9

    .line 474
    :goto_b
    check-cast v2, Lq63;

    .line 475
    .line 476
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 477
    .line 478
    const/16 v16, 0x4

    .line 479
    .line 480
    const/16 v17, 0x0

    .line 481
    .line 482
    const-string v13, "AppRestoreTask"

    .line 483
    .line 484
    const-string v14, "Preparing for extraction"

    .line 485
    .line 486
    const/4 v15, 0x0

    .line 487
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    new-instance v0, Lq63;

    .line 491
    .line 492
    invoke-virtual {v7}, Lji;->getDataDir()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-direct {v0, v10, v11}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Lq63;->A()J

    .line 510
    .line 511
    .line 512
    move-result-wide v13

    .line 513
    if-eqz v2, :cond_14

    .line 514
    .line 515
    invoke-virtual {v2}, Lq63;->A()J

    .line 516
    .line 517
    .line 518
    move-result-wide v15

    .line 519
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    goto :goto_c

    .line 524
    :cond_14
    move-object v10, v9

    .line 525
    :goto_c
    invoke-static {v10}, Lio4;->h(Ljava/lang/Long;)J

    .line 526
    .line 527
    .line 528
    move-result-wide v15

    .line 529
    add-long/2addr v13, v15

    .line 530
    invoke-static {v0, v13, v14}, Lpj7;->b(Lq63;J)Loj7;

    .line 531
    .line 532
    .line 533
    move-result-object v10

    .line 534
    if-eqz v10, :cond_16

    .line 535
    .line 536
    iget-object v0, v10, Loj7;->a:Ljava/lang/String;

    .line 537
    .line 538
    iget-boolean v1, v10, Loj7;->b:Z

    .line 539
    .line 540
    if-eqz v1, :cond_15

    .line 541
    .line 542
    invoke-virtual {v8, v0}, Luw;->a(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_d

    .line 546
    :cond_15
    sget-object v1, Liu;->DATA:Liu;

    .line 547
    .line 548
    invoke-virtual {v8, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_1c

    .line 560
    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    check-cast v1, Lq63;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 571
    .line 572
    .line 573
    goto :goto_e

    .line 574
    :cond_16
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    sget-object v8, Lip6;->SU:Lip6;

    .line 579
    .line 580
    new-instance v10, Law;

    .line 581
    .line 582
    invoke-direct {v10, v3, v5, v4}, Law;-><init>(Llw;Lxw;Lax;)V

    .line 583
    .line 584
    .line 585
    invoke-static {v1, v0, v8, v10}, Lox7;->a(Lq63;Ljava/lang/String;Lip6;Lrt3;)V

    .line 586
    .line 587
    .line 588
    sget-object v0, Lex;->UNTAR_DATA:Lex;

    .line 589
    .line 590
    invoke-virtual {v4, v0}, Lax;->d(Lex;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4}, Lax;->b()J

    .line 594
    .line 595
    .line 596
    move-result-wide v0

    .line 597
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v3, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    const/16 v16, 0x4

    .line 605
    .line 606
    const/16 v17, 0x0

    .line 607
    .line 608
    const-string v13, "AppRestoreTask"

    .line 609
    .line 610
    const-string v14, "Restored Data"

    .line 611
    .line 612
    const/4 v15, 0x0

    .line 613
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v7}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-eqz v0, :cond_1b

    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-nez v0, :cond_17

    .line 627
    .line 628
    goto :goto_10

    .line 629
    :cond_17
    if-eqz v2, :cond_1b

    .line 630
    .line 631
    invoke-virtual {v2}, Lq63;->j()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-ne v0, v11, :cond_1b

    .line 636
    .line 637
    new-instance v0, Ljava/io/File;

    .line 638
    .line 639
    invoke-virtual {v7}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-eqz v0, :cond_18

    .line 654
    .line 655
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v9

    .line 659
    :cond_18
    if-eqz v9, :cond_1a

    .line 660
    .line 661
    invoke-static {v9}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_19

    .line 666
    .line 667
    goto :goto_f

    .line 668
    :cond_19
    new-instance v0, Lbw;

    .line 669
    .line 670
    invoke-direct {v0, v3, v5, v4}, Lbw;-><init>(Llw;Lxw;Lax;)V

    .line 671
    .line 672
    .line 673
    invoke-static {v2, v9, v8, v0}, Lox7;->a(Lq63;Ljava/lang/String;Lip6;Lrt3;)V

    .line 674
    .line 675
    .line 676
    const/16 v16, 0x4

    .line 677
    .line 678
    const/16 v17, 0x0

    .line 679
    .line 680
    const-string v13, "AppRestoreTask"

    .line 681
    .line 682
    const-string v14, "Restored DE Data"

    .line 683
    .line 684
    const/4 v15, 0x0

    .line 685
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    sget-object v0, Lex;->UNTAR_DEDATA:Lex;

    .line 689
    .line 690
    invoke-virtual {v4, v0}, Lax;->d(Lex;)V

    .line 691
    .line 692
    .line 693
    goto :goto_10

    .line 694
    :cond_1a
    :goto_f
    invoke-static {v6}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :cond_1b
    :goto_10
    invoke-virtual {v4}, Lax;->b()J

    .line 699
    .line 700
    .line 701
    move-result-wide v0

    .line 702
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v3, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    if-eqz v1, :cond_1c

    .line 718
    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    check-cast v1, Lq63;

    .line 724
    .line 725
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    .line 727
    .line 728
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 729
    .line 730
    .line 731
    goto :goto_11

    .line 732
    :goto_12
    const/16 v16, 0x4

    .line 733
    .line 734
    const/16 v17, 0x0

    .line 735
    .line 736
    const-string v13, "AppRestoreTask"

    .line 737
    .line 738
    const-string v14, "No files unpacked!"

    .line 739
    .line 740
    const/4 v15, 0x0

    .line 741
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-eqz v1, :cond_1c

    .line 753
    .line 754
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    check-cast v1, Lq63;

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 764
    .line 765
    .line 766
    goto :goto_13

    .line 767
    :cond_1c
    return-void
.end method

.method public final l(Lbx;ILnw;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    const/4 v6, 0x4

    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v3, "AppRestoreTask"

    .line 10
    .line 11
    const-string v4, "Starting Expansion restore"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v8, v1, Lbx;->b:Li40;

    .line 18
    .line 19
    iget-object v9, v1, Lbx;->a:Lq63;

    .line 20
    .line 21
    iget-wide v10, v1, Lbx;->d:J

    .line 22
    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    const-string v1, "Couldn\'t get archive type for "

    .line 26
    .line 27
    invoke-static {v9, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v1, v2

    .line 34
    const-string v2, "AppRestoreTask"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Liu;->EXPANSION:Liu;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v9, v2}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    sget-object v3, Lp93;->a:Lp93;

    .line 48
    .line 49
    iget-wide v3, v1, Lbx;->c:J

    .line 50
    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    iget v13, v8, Li40;->a:I

    .line 60
    .line 61
    const-string v3, "Restoring Expansion ("

    .line 62
    .line 63
    const-string v4, ", v"

    .line 64
    .line 65
    const-string v14, ")"

    .line 66
    .line 67
    invoke-static {v3, v12, v4, v13, v14}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/4 v6, 0x4

    .line 72
    const/4 v7, 0x0

    .line 73
    const-string v3, "AppRestoreTask"

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v15, v2

    .line 80
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 81
    .line 82
    const v2, 0x7f130494

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, v0, Lxw;->b:Lc40;

    .line 90
    .line 91
    iget-object v3, v3, Lpw6;->i:Lex6;

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " ("

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v3, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v12, v0, Lxw;->u:Luw;

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    const/4 v3, 0x2

    .line 123
    iget-object v4, v0, Lxw;->h:Lji;

    .line 124
    .line 125
    if-eq v13, v2, :cond_d

    .line 126
    .line 127
    const/4 v5, 0x3

    .line 128
    if-eq v13, v5, :cond_3

    .line 129
    .line 130
    const/4 v5, 0x6

    .line 131
    if-ne v13, v5, :cond_2

    .line 132
    .line 133
    iget-object v5, v1, Lbx;->a:Lq63;

    .line 134
    .line 135
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 136
    .line 137
    new-instance v7, Lq63;

    .line 138
    .line 139
    invoke-virtual {v4}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-direct {v7, v9, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Lq63;->t()Lq63;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move v13, v3

    .line 154
    move-object v9, v5

    .line 155
    move-object v3, v6

    .line 156
    iget-wide v5, v1, Lbx;->d:J

    .line 157
    .line 158
    move-object v1, v8

    .line 159
    move v8, v2

    .line 160
    move-object v2, v1

    .line 161
    move-object/from16 v16, v4

    .line 162
    .line 163
    move-object v4, v7

    .line 164
    move-object v1, v9

    .line 165
    move v9, v13

    .line 166
    move-object/from16 v7, p3

    .line 167
    .line 168
    invoke-virtual/range {v0 .. v7}, Lxw;->s(Lq63;Li40;Liu;Lq63;JLmt3;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    move-object v13, v7

    .line 173
    if-nez v0, :cond_1

    .line 174
    .line 175
    return-void

    .line 176
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v13, v0}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move v13, v9

    .line 184
    move-object v10, v12

    .line 185
    move-object v9, v14

    .line 186
    move-object v7, v15

    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :cond_2
    new-instance v0, Lio5;

    .line 190
    .line 191
    const-string v1, "Backup format not handled: "

    .line 192
    .line 193
    invoke-static {v13, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_3
    move-object/from16 v13, p3

    .line 202
    .line 203
    move v8, v2

    .line 204
    move v2, v3

    .line 205
    move-object/from16 v16, v4

    .line 206
    .line 207
    const/4 v6, 0x4

    .line 208
    const/4 v7, 0x0

    .line 209
    const-string v3, "AppRestoreTask"

    .line 210
    .line 211
    const-string v4, "Preparing for extraction"

    .line 212
    .line 213
    move/from16 v17, v5

    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    move-object/from16 v24, v15

    .line 217
    .line 218
    move v15, v2

    .line 219
    move-object/from16 v2, v24

    .line 220
    .line 221
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    move-object v7, v2

    .line 225
    new-instance v2, Lq63;

    .line 226
    .line 227
    invoke-virtual/range {v16 .. v16}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-direct {v2, v3, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Lq63;->t()Lq63;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v9}, Lq63;->A()J

    .line 242
    .line 243
    .line 244
    move-result-wide v3

    .line 245
    invoke-static {v2, v3, v4}, Lpj7;->b(Lq63;J)Loj7;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    iget-object v0, v3, Loj7;->a:Ljava/lang/String;

    .line 252
    .line 253
    iget-boolean v1, v3, Loj7;->b:Z

    .line 254
    .line 255
    if-eqz v1, :cond_4

    .line 256
    .line 257
    invoke-virtual {v12, v0}, Luw;->a(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :goto_0
    move-object v6, v12

    .line 261
    move-object v1, v14

    .line 262
    move v0, v15

    .line 263
    goto/16 :goto_3

    .line 264
    .line 265
    :cond_4
    sget-object v1, Liu;->EXPANSION:Liu;

    .line 266
    .line 267
    invoke-virtual {v12, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_5
    new-instance v3, Lkh6;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 281
    .line 282
    new-instance v5, Lcw;

    .line 283
    .line 284
    invoke-direct {v5, v13, v0, v1, v3}, Lcw;-><init>(Lnw;Lxw;Lbx;Lkh6;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance v18, Ljava/util/Timer;

    .line 291
    .line 292
    invoke-direct/range {v18 .. v18}, Ljava/util/Timer;-><init>()V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lnx7;

    .line 296
    .line 297
    invoke-direct {v0, v2, v9, v5}, Lnx7;-><init>(Ljava/lang/String;Lq63;Lcw;)V

    .line 298
    .line 299
    .line 300
    const-wide/16 v20, 0x0

    .line 301
    .line 302
    const-wide/16 v22, 0x7d0

    .line 303
    .line 304
    move-object/from16 v19, v0

    .line 305
    .line 306
    invoke-virtual/range {v18 .. v23}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 307
    .line 308
    .line 309
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 310
    .line 311
    move-wide v0, v10

    .line 312
    new-instance v10, Lq63;

    .line 313
    .line 314
    invoke-direct {v10, v2, v15}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    sget-object v11, Lf27;->Basic:Lf27;

    .line 318
    .line 319
    move-object v2, v12

    .line 320
    invoke-virtual {v9}, Lq63;->A()J

    .line 321
    .line 322
    .line 323
    move-result-wide v12

    .line 324
    sget-object v5, Lmx7;->a:[I

    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    aget v4, v5, v4

    .line 331
    .line 332
    if-eq v4, v8, :cond_c

    .line 333
    .line 334
    if-eq v4, v15, :cond_b

    .line 335
    .line 336
    const/4 v5, 0x3

    .line 337
    if-eq v4, v5, :cond_7

    .line 338
    .line 339
    const/4 v5, 0x4

    .line 340
    if-ne v4, v5, :cond_6

    .line 341
    .line 342
    sget-object v4, Liz6;->Auto:Liz6;

    .line 343
    .line 344
    :goto_1
    move v5, v15

    .line 345
    goto :goto_2

    .line 346
    :cond_6
    new-instance v0, Lmn5;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_7
    sget-object v4, Lmp6;->a:Lmp6;

    .line 353
    .line 354
    sget-boolean v4, Lmp6;->g:Z

    .line 355
    .line 356
    if-eqz v4, :cond_8

    .line 357
    .line 358
    sget-object v4, Liz6;->Root:Liz6;

    .line 359
    .line 360
    goto :goto_1

    .line 361
    :cond_8
    invoke-static {}, Laq6;->c()Lz84;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    if-eqz v4, :cond_9

    .line 366
    .line 367
    sget-object v4, Liz6;->Root:Liz6;

    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_9
    invoke-static {}, Lmp6;->g()Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_a

    .line 375
    .line 376
    sget-object v4, Liz6;->Shizuku:Liz6;

    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_a
    sget-object v4, Liz6;->Local:Liz6;

    .line 380
    .line 381
    goto :goto_1

    .line 382
    :cond_b
    sget-object v4, Liz6;->Root:Liz6;

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_c
    sget-object v4, Liz6;->Local:Liz6;

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :goto_2
    const/4 v15, 0x0

    .line 389
    move-object v6, v2

    .line 390
    move-object/from16 v2, p3

    .line 391
    .line 392
    move-object/from16 v24, v14

    .line 393
    .line 394
    move-object v14, v4

    .line 395
    move-wide/from16 v25, v0

    .line 396
    .line 397
    move v0, v5

    .line 398
    move-wide/from16 v4, v25

    .line 399
    .line 400
    move-object/from16 v1, v24

    .line 401
    .line 402
    invoke-static/range {v9 .. v15}, Lmz6;->k(Lq63;Lq63;Lf27;JLiz6;Llx7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {v18 .. v18}, Ljava/util/Timer;->cancel()V

    .line 406
    .line 407
    .line 408
    iget-wide v9, v3, Lkh6;->a:J

    .line 409
    .line 410
    add-long/2addr v9, v4

    .line 411
    iput-wide v9, v3, Lkh6;->a:J

    .line 412
    .line 413
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    :goto_3
    move v13, v0

    .line 421
    move-object v9, v1

    .line 422
    move-object v10, v6

    .line 423
    goto/16 :goto_4

    .line 424
    .line 425
    :catchall_0
    move-exception v0

    .line 426
    invoke-virtual/range {v18 .. v18}, Ljava/util/Timer;->cancel()V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_d
    move v8, v2

    .line 431
    move v13, v3

    .line 432
    move-object/from16 v16, v4

    .line 433
    .line 434
    move-wide v4, v10

    .line 435
    move-object v6, v12

    .line 436
    move-object v9, v14

    .line 437
    move-object v7, v15

    .line 438
    move-object/from16 v2, p3

    .line 439
    .line 440
    sget-object v3, Liu;->EXPANSION:Liu;

    .line 441
    .line 442
    invoke-virtual {v3}, Liu;->getBackupReq()Lsk0;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    sget-object v10, Lsk0;->NONE:Lsk0;

    .line 447
    .line 448
    if-eq v3, v10, :cond_e

    .line 449
    .line 450
    long-to-float v3, v4

    .line 451
    const/high16 v4, 0x40000000    # 2.0f

    .line 452
    .line 453
    div-float/2addr v3, v4

    .line 454
    float-to-double v3, v3

    .line 455
    invoke-static {v3, v4}, Ltu0;->w(D)J

    .line 456
    .line 457
    .line 458
    move-result-wide v3

    .line 459
    sget-object v5, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 460
    .line 461
    invoke-virtual/range {v16 .. v16}, Lji;->getPackageName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    const-wide/16 v11, 0x0

    .line 466
    .line 467
    invoke-virtual {v5, v10, v11, v12}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 468
    .line 469
    .line 470
    move-result-object v18

    .line 471
    move-wide v10, v3

    .line 472
    new-instance v4, Lkh6;

    .line 473
    .line 474
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 475
    .line 476
    .line 477
    iget-object v12, v1, Lbx;->a:Lq63;

    .line 478
    .line 479
    invoke-virtual {v0}, Lxw;->e()Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v19

    .line 483
    new-instance v22, Lew;

    .line 484
    .line 485
    move-object v1, v6

    .line 486
    const/4 v6, 0x0

    .line 487
    move-object v5, v0

    .line 488
    move-object v3, v2

    .line 489
    move-object/from16 v0, v22

    .line 490
    .line 491
    move-wide/from16 v24, v10

    .line 492
    .line 493
    move-object v10, v1

    .line 494
    move-wide/from16 v1, v24

    .line 495
    .line 496
    invoke-direct/range {v0 .. v6}, Lew;-><init>(JLmt3;Ljava/lang/Object;Lxw;I)V

    .line 497
    .line 498
    .line 499
    move-wide v0, v1

    .line 500
    move-object v2, v3

    .line 501
    const/16 v23, 0x18

    .line 502
    .line 503
    const/16 v20, 0x0

    .line 504
    .line 505
    const/16 v21, 0x0

    .line 506
    .line 507
    move-object/from16 v17, v12

    .line 508
    .line 509
    invoke-static/range {v17 .. v23}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 510
    .line 511
    .line 512
    move-object/from16 v3, v18

    .line 513
    .line 514
    iget-wide v5, v4, Lkh6;->a:J

    .line 515
    .line 516
    add-long/2addr v5, v0

    .line 517
    iput-wide v5, v4, Lkh6;->a:J

    .line 518
    .line 519
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-virtual {v2, v5}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    invoke-virtual/range {v16 .. v16}, Lji;->getPackageName()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-virtual {v3, v5}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v5}, Lq63;->v()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    const-string v6, "/"

    .line 539
    .line 540
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    sget-object v6, Lmp6;->a:Lmp6;

    .line 545
    .line 546
    sget-boolean v11, Lg42;->a:Z

    .line 547
    .line 548
    invoke-virtual/range {v16 .. v16}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v11

    .line 552
    invoke-static {v5, v11}, Lg42;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    filled-new-array {v5}, [Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    sget-object v11, Lip6;->SHIZUKU:Lip6;

    .line 561
    .line 562
    invoke-virtual {v6, v5, v11}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 563
    .line 564
    .line 565
    iget-wide v5, v4, Lkh6;->a:J

    .line 566
    .line 567
    add-long/2addr v5, v0

    .line 568
    iput-wide v5, v4, Lkh6;->a:J

    .line 569
    .line 570
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {v2, v0}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    invoke-static {v3}, Lcy0;->e(Lq63;)V

    .line 578
    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_e
    move-object v10, v6

    .line 582
    new-instance v3, Ljava/io/File;

    .line 583
    .line 584
    invoke-virtual/range {v16 .. v16}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    if-nez v3, :cond_f

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_f
    new-instance v6, Lkh6;

    .line 599
    .line 600
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 601
    .line 602
    .line 603
    iget-object v11, v1, Lbx;->a:Lq63;

    .line 604
    .line 605
    new-instance v12, Lq63;

    .line 606
    .line 607
    invoke-direct {v12, v3, v13}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0}, Lxw;->e()Ljava/util/List;

    .line 611
    .line 612
    .line 613
    move-result-object v19

    .line 614
    new-instance v3, Lfw;

    .line 615
    .line 616
    invoke-direct {v3, v2, v0, v1, v6}, Lfw;-><init>(Lnw;Lxw;Lbx;Lkh6;)V

    .line 617
    .line 618
    .line 619
    const/16 v23, 0x18

    .line 620
    .line 621
    const/16 v20, 0x0

    .line 622
    .line 623
    const/16 v21, 0x0

    .line 624
    .line 625
    move-object/from16 v22, v3

    .line 626
    .line 627
    move-object/from16 v17, v11

    .line 628
    .line 629
    move-object/from16 v18, v12

    .line 630
    .line 631
    invoke-static/range {v17 .. v23}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 632
    .line 633
    .line 634
    iget-wide v0, v6, Lkh6;->a:J

    .line 635
    .line 636
    add-long/2addr v0, v4

    .line 637
    iput-wide v0, v6, Lkh6;->a:J

    .line 638
    .line 639
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v2, v0}, Lnw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    :goto_4
    sget-object v0, Liu;->EXPANSION:Liu;

    .line 647
    .line 648
    invoke-virtual {v0}, Liu;->getBackupReq()Lsk0;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    sget-object v1, Lsk0;->NONE:Lsk0;

    .line 653
    .line 654
    if-eq v0, v1, :cond_10

    .line 655
    .line 656
    new-instance v0, Ljr7;

    .line 657
    .line 658
    invoke-virtual/range {v16 .. v16}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-direct {v0, v1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const-string v1, "[ -e @@ ]"

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-eqz v1, :cond_10

    .line 672
    .line 673
    new-instance v1, Lb7;

    .line 674
    .line 675
    invoke-direct {v1, v13}, Lb7;-><init>(I)V

    .line 676
    .line 677
    .line 678
    const/16 v2, 0x8

    .line 679
    .line 680
    const-string v3, "AppRestoreTask"

    .line 681
    .line 682
    const-string v4, "Obb dir fetch"

    .line 683
    .line 684
    invoke-static {v3, v4, v8, v1, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    check-cast v1, Lq63;

    .line 689
    .line 690
    invoke-static {}, Lb67;->c()Z

    .line 691
    .line 692
    .line 693
    move-result v2

    .line 694
    if-eqz v2, :cond_10

    .line 695
    .line 696
    :try_start_1
    sget-object v2, Lg00;->a:Lg00;

    .line 697
    .line 698
    invoke-static {v1}, Lg00;->k(Lq63;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 702
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 707
    .line 708
    .line 709
    move/from16 v2, p2

    .line 710
    .line 711
    invoke-static {v2, v1, v0}, Lg00;->E(ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    goto :goto_5

    .line 715
    :catch_0
    move-exception v0

    .line 716
    const-string v1, "restoreExtData"

    .line 717
    .line 718
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .line 720
    .line 721
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 722
    .line 723
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v13

    .line 727
    const/4 v15, 0x4

    .line 728
    const/16 v16, 0x0

    .line 729
    .line 730
    const-string v12, "AppRestoreTask"

    .line 731
    .line 732
    const/4 v14, 0x0

    .line 733
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    const-string v2, "Expansion cannot be restored ("

    .line 743
    .line 744
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v10, v0}, Luw;->c(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    return-void

    .line 761
    :cond_10
    :goto_5
    const/4 v4, 0x4

    .line 762
    const/4 v5, 0x0

    .line 763
    const-string v1, "AppRestoreTask"

    .line 764
    .line 765
    const-string v2, "Restored Expansion"

    .line 766
    .line 767
    const/4 v3, 0x0

    .line 768
    move-object v0, v7

    .line 769
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    return-void
.end method

.method public final m(Lcx;ILmw;)V
    .locals 27

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v8, Lcx;->a:Lq63;

    .line 6
    .line 7
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    const/4 v13, 0x4

    .line 10
    const/4 v14, 0x0

    .line 11
    const-string v10, "AppRestoreTask"

    .line 12
    .line 13
    const-string v11, "Starting Ext Data restore"

    .line 14
    .line 15
    const/4 v12, 0x0

    .line 16
    move-object v9, v1

    .line 17
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v8, Lcx;->b:Li40;

    .line 21
    .line 22
    iget-wide v3, v8, Lcx;->h:J

    .line 23
    .line 24
    const/4 v15, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "Couldn\'t get archive type for "

    .line 28
    .line 29
    invoke-static {v0, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    const/4 v10, 0x4

    .line 34
    const/4 v11, 0x0

    .line 35
    const-string v7, "AppRestoreTask"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    move-object v6, v1

    .line 39
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 43
    .line 44
    invoke-virtual {v5, v1, v0, v15}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget v6, v2, Li40;->a:I

    .line 49
    .line 50
    sget-object v7, Lp93;->a:Lp93;

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v9, "Restoring Ext Data ("

    .line 61
    .line 62
    const-string v10, ", v"

    .line 63
    .line 64
    const-string v11, ")"

    .line 65
    .line 66
    invoke-static {v9, v7, v10, v6, v11}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    const/4 v13, 0x4

    .line 71
    const/4 v14, 0x0

    .line 72
    const-string v10, "AppRestoreTask"

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    move-object/from16 v25, v9

    .line 76
    .line 77
    move-object v9, v1

    .line 78
    move-object v1, v11

    .line 79
    move-object/from16 v11, v25

    .line 80
    .line 81
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 85
    .line 86
    const v10, 0x7f130495

    .line 87
    .line 88
    .line 89
    invoke-static {v10}, Ldj7;->g(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    iget-object v11, v5, Lxw;->b:Lc40;

    .line 94
    .line 95
    iget-object v11, v11, Lpw6;->i:Lex6;

    .line 96
    .line 97
    new-instance v12, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v10, " ("

    .line 106
    .line 107
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v11, v7}, Lex6;->k(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v10, v5, Lxw;->u:Luw;

    .line 124
    .line 125
    const/4 v11, 0x1

    .line 126
    iget-object v12, v5, Lxw;->h:Lji;

    .line 127
    .line 128
    if-eq v6, v11, :cond_18

    .line 129
    .line 130
    const/4 v7, 0x2

    .line 131
    if-eq v6, v7, :cond_3

    .line 132
    .line 133
    const/4 v13, 0x4

    .line 134
    if-eq v6, v13, :cond_3

    .line 135
    .line 136
    const/4 v13, 0x5

    .line 137
    if-eq v6, v13, :cond_3

    .line 138
    .line 139
    const/4 v0, 0x6

    .line 140
    if-ne v6, v0, :cond_2

    .line 141
    .line 142
    move-object v3, v1

    .line 143
    iget-object v1, v8, Lcx;->a:Lq63;

    .line 144
    .line 145
    move-object v4, v3

    .line 146
    sget-object v3, Liu;->EXTDATA:Liu;

    .line 147
    .line 148
    new-instance v0, Lq63;

    .line 149
    .line 150
    invoke-virtual {v12}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-direct {v0, v6, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-wide v5, v8, Lcx;->i:J

    .line 165
    .line 166
    move-object/from16 v7, p3

    .line 167
    .line 168
    move-object v13, v4

    .line 169
    move-object v4, v0

    .line 170
    move-object/from16 v0, p0

    .line 171
    .line 172
    invoke-virtual/range {v0 .. v7}, Lxw;->s(Lq63;Li40;Liu;Lq63;JLmt3;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    move-object v14, v7

    .line 177
    if-nez v0, :cond_1

    .line 178
    .line 179
    goto/16 :goto_13

    .line 180
    .line 181
    :cond_1
    sget-object v0, Lex;->UNTAR:Lex;

    .line 182
    .line 183
    invoke-virtual {v8, v0}, Lcx;->d(Lex;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Lcx;->b()J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v14, v0}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-object/from16 v17, v12

    .line 198
    .line 199
    goto/16 :goto_f

    .line 200
    .line 201
    :cond_2
    new-instance v0, Lio5;

    .line 202
    .line 203
    const-string v1, "Backup format not handled: "

    .line 204
    .line 205
    invoke-static {v6, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_3
    move-object/from16 v14, p3

    .line 214
    .line 215
    move-object v13, v1

    .line 216
    const/4 v5, 0x4

    .line 217
    const/4 v6, 0x0

    .line 218
    const-string v2, "AppRestoreTask"

    .line 219
    .line 220
    move-wide/from16 v16, v3

    .line 221
    .line 222
    const-string v3, "Unpacking Ext Data"

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    move-wide/from16 v25, v16

    .line 226
    .line 227
    move-object/from16 v17, v12

    .line 228
    .line 229
    move-wide/from16 v11, v25

    .line 230
    .line 231
    move-object v1, v9

    .line 232
    move-object/from16 v9, p0

    .line 233
    .line 234
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    new-instance v2, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    sget-object v3, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 243
    .line 244
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v3, v4, v11, v12}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    invoke-static {v4, v11, v12}, Lpj7;->b(Lq63;J)Loj7;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    if-eqz v5, :cond_5

    .line 260
    .line 261
    iget-object v0, v5, Loj7;->a:Ljava/lang/String;

    .line 262
    .line 263
    iget-boolean v1, v5, Loj7;->b:Z

    .line 264
    .line 265
    if-eqz v1, :cond_4

    .line 266
    .line 267
    invoke-virtual {v10, v0}, Luw;->a(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_4
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 272
    .line 273
    invoke-virtual {v10, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_19

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lq63;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_5
    iget-object v5, v8, Lcx;->a:Lq63;

    .line 300
    .line 301
    invoke-virtual {v9}, Lxw;->e()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v20

    .line 305
    iget-boolean v6, v9, Lxw;->i:Z

    .line 306
    .line 307
    if-eqz v6, :cond_7

    .line 308
    .line 309
    iget-object v6, v9, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 310
    .line 311
    if-eqz v6, :cond_6

    .line 312
    .line 313
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    :goto_2
    move-object/from16 v21, v6

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_6
    move-object/from16 v21, v15

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_7
    invoke-virtual {v9}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    if-eqz v6, :cond_6

    .line 328
    .line 329
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    goto :goto_2

    .line 334
    :goto_3
    new-instance v6, Lrw;

    .line 335
    .line 336
    invoke-direct {v6, v14, v8, v9}, Lrw;-><init>(Lmw;Lcx;Lxw;)V

    .line 337
    .line 338
    .line 339
    const/16 v24, 0x10

    .line 340
    .line 341
    const/16 v22, 0x0

    .line 342
    .line 343
    move-object/from16 v19, v4

    .line 344
    .line 345
    move-object/from16 v18, v5

    .line 346
    .line 347
    move-object/from16 v23, v6

    .line 348
    .line 349
    invoke-static/range {v18 .. v24}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    sget-object v5, Lex;->UNPACK:Lex;

    .line 354
    .line 355
    invoke-virtual {v8, v5}, Lcx;->d(Lex;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8}, Lcx;->b()J

    .line 359
    .line 360
    .line 361
    move-result-wide v5

    .line 362
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v14, v5}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    iget-boolean v5, v4, Lfw5;->a:Z

    .line 370
    .line 371
    if-nez v5, :cond_c

    .line 372
    .line 373
    iget-object v1, v4, Lfw5;->d:Lew5;

    .line 374
    .line 375
    const/4 v3, -0x1

    .line 376
    if-nez v1, :cond_8

    .line 377
    .line 378
    move v1, v3

    .line 379
    goto :goto_4

    .line 380
    :cond_8
    sget-object v4, Lww;->b:[I

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    aget v1, v4, v1

    .line 387
    .line 388
    :goto_4
    if-eq v1, v3, :cond_b

    .line 389
    .line 390
    const/4 v3, 0x1

    .line 391
    if-eq v1, v3, :cond_a

    .line 392
    .line 393
    if-eq v1, v7, :cond_a

    .line 394
    .line 395
    const/4 v3, 0x3

    .line 396
    if-ne v1, v3, :cond_9

    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_9
    invoke-static {}, Lq;->j()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_a
    sget-object v0, Liu;->EXTDATA:Liu;

    .line 404
    .line 405
    invoke-virtual {v10, v0}, Luw;->d(Liu;)V

    .line 406
    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_b
    :goto_5
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 410
    .line 411
    invoke-virtual {v9, v1, v0, v15}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :goto_6
    invoke-static {v2}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_f

    .line 418
    .line 419
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lq63;->B()Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    if-eqz v7, :cond_d

    .line 424
    .line 425
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_e

    .line 430
    .line 431
    :cond_d
    move-object v11, v2

    .line 432
    goto/16 :goto_e

    .line 433
    .line 434
    :cond_e
    iget-boolean v0, v8, Lcx;->c:Z

    .line 435
    .line 436
    if-eqz v0, :cond_11

    .line 437
    .line 438
    const/4 v5, 0x4

    .line 439
    const/4 v6, 0x0

    .line 440
    move-object v0, v2

    .line 441
    const-string v2, "AppRestoreTask"

    .line 442
    .line 443
    move-object v4, v3

    .line 444
    const-string v3, "Decompressing Ext Data"

    .line 445
    .line 446
    move-object v11, v4

    .line 447
    const/4 v4, 0x0

    .line 448
    move-object/from16 v25, v11

    .line 449
    .line 450
    move-object v11, v0

    .line 451
    move-object/from16 v0, v25

    .line 452
    .line 453
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    move-object v6, v1

    .line 457
    invoke-static {v7}, Lth5;->c(Ljava/util/ArrayList;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v1

    .line 461
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v0, v3, v1, v2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    invoke-static {v12, v1, v2}, Lpj7;->b(Lq63;J)Loj7;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-eqz v0, :cond_10

    .line 477
    .line 478
    iget-object v1, v0, Loj7;->a:Ljava/lang/String;

    .line 479
    .line 480
    iget-boolean v0, v0, Loj7;->b:Z

    .line 481
    .line 482
    if-eqz v0, :cond_f

    .line 483
    .line 484
    invoke-virtual {v10, v1}, Luw;->a(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    goto :goto_7

    .line 488
    :cond_f
    sget-object v0, Liu;->EXTDATA:Liu;

    .line 489
    .line 490
    invoke-virtual {v10, v0, v1}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_19

    .line 502
    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Lq63;

    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 513
    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_10
    sget-object v0, Lex;->DECOMPRESS:Lex;

    .line 517
    .line 518
    invoke-virtual {v8, v0}, Lcx;->c(Lex;)J

    .line 519
    .line 520
    .line 521
    move-result-wide v1

    .line 522
    new-instance v0, Lsw;

    .line 523
    .line 524
    move-object v4, v8

    .line 525
    move-object v5, v9

    .line 526
    move-object v3, v14

    .line 527
    invoke-direct/range {v0 .. v5}, Lsw;-><init>(JLmw;Lcx;Lxw;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v7, v12, v0}, Lth5;->b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    goto :goto_9

    .line 535
    :cond_11
    move-object v6, v1

    .line 536
    move-object v11, v2

    .line 537
    move-object v4, v8

    .line 538
    move-object v3, v14

    .line 539
    :goto_9
    sget-object v0, Lex;->DECOMPRESS:Lex;

    .line 540
    .line 541
    invoke-virtual {v4, v0}, Lcx;->d(Lex;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v4}, Lcx;->b()J

    .line 545
    .line 546
    .line 547
    move-result-wide v0

    .line 548
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v3, v0}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_12

    .line 560
    .line 561
    const/4 v5, 0x4

    .line 562
    move-object v1, v6

    .line 563
    const/4 v6, 0x0

    .line 564
    const-string v2, "AppRestoreTask"

    .line 565
    .line 566
    const-string v3, "No tar files found!"

    .line 567
    .line 568
    const/4 v4, 0x0

    .line 569
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v11}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_f

    .line 576
    .line 577
    :cond_12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_14

    .line 586
    .line 587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    move-object v2, v1

    .line 592
    check-cast v2, Lq63;

    .line 593
    .line 594
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v5, ".tar"

    .line 611
    .line 612
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-eqz v2, :cond_13

    .line 624
    .line 625
    goto :goto_a

    .line 626
    :cond_14
    move-object v1, v15

    .line 627
    :goto_a
    move-object v7, v1

    .line 628
    check-cast v7, Lq63;

    .line 629
    .line 630
    if-nez v7, :cond_15

    .line 631
    .line 632
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 633
    .line 634
    const/4 v4, 0x4

    .line 635
    const/4 v5, 0x0

    .line 636
    const-string v1, "AppRestoreTask"

    .line 637
    .line 638
    const-string v2, "No tar file found!"

    .line 639
    .line 640
    const/4 v3, 0x0

    .line 641
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    invoke-static {v11}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_f

    .line 648
    .line 649
    :cond_15
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 650
    .line 651
    const/16 v22, 0x4

    .line 652
    .line 653
    const/16 v23, 0x0

    .line 654
    .line 655
    const-string v19, "AppRestoreTask"

    .line 656
    .line 657
    const-string v20, "Preparing for extraction"

    .line 658
    .line 659
    const/16 v21, 0x0

    .line 660
    .line 661
    invoke-static/range {v18 .. v23}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    new-instance v0, Lq63;

    .line 665
    .line 666
    invoke-virtual/range {v17 .. v17}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    const/4 v2, 0x1

    .line 671
    invoke-direct {v0, v1, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v7}, Lq63;->A()J

    .line 682
    .line 683
    .line 684
    move-result-wide v1

    .line 685
    invoke-static {v0, v1, v2}, Lpj7;->b(Lq63;J)Loj7;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    if-eqz v1, :cond_17

    .line 690
    .line 691
    iget-object v0, v1, Loj7;->a:Ljava/lang/String;

    .line 692
    .line 693
    iget-boolean v1, v1, Loj7;->b:Z

    .line 694
    .line 695
    if-eqz v1, :cond_16

    .line 696
    .line 697
    invoke-virtual {v10, v0}, Luw;->a(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    goto :goto_b

    .line 701
    :cond_16
    sget-object v1, Liu;->EXTDATA:Liu;

    .line 702
    .line 703
    invoke-virtual {v10, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    if-eqz v1, :cond_19

    .line 715
    .line 716
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    check-cast v1, Lq63;

    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 726
    .line 727
    .line 728
    goto :goto_c

    .line 729
    :cond_17
    sget-object v8, Lex;->UNTAR:Lex;

    .line 730
    .line 731
    invoke-virtual {v4, v8}, Lcx;->c(Lex;)J

    .line 732
    .line 733
    .line 734
    move-result-wide v1

    .line 735
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    sget-object v12, Lip6;->SHIZUKU:Lip6;

    .line 740
    .line 741
    new-instance v0, Lew;

    .line 742
    .line 743
    const/4 v6, 0x1

    .line 744
    move-object/from16 v5, p0

    .line 745
    .line 746
    invoke-direct/range {v0 .. v6}, Lew;-><init>(JLmt3;Ljava/lang/Object;Lxw;I)V

    .line 747
    .line 748
    .line 749
    move-object v1, v0

    .line 750
    move-object v14, v3

    .line 751
    move-object v0, v4

    .line 752
    invoke-static {v7, v9, v12, v1}, Lox7;->a(Lq63;Ljava/lang/String;Lip6;Lrt3;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v8}, Lcx;->d(Lex;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0}, Lcx;->b()J

    .line 759
    .line 760
    .line 761
    move-result-wide v0

    .line 762
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {v14, v0}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-eqz v1, :cond_19

    .line 778
    .line 779
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    check-cast v1, Lq63;

    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 789
    .line 790
    .line 791
    goto :goto_d

    .line 792
    :goto_e
    const/4 v5, 0x4

    .line 793
    const/4 v6, 0x0

    .line 794
    const-string v2, "AppRestoreTask"

    .line 795
    .line 796
    const-string v3, "No files unpacked!"

    .line 797
    .line 798
    const/4 v4, 0x0

    .line 799
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    invoke-static {v11}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_f

    .line 806
    .line 807
    :cond_18
    move-object/from16 v14, p3

    .line 808
    .line 809
    move-object v13, v1

    .line 810
    move-object v0, v8

    .line 811
    move-object v1, v9

    .line 812
    move-object/from16 v17, v12

    .line 813
    .line 814
    move-object v9, v5

    .line 815
    sget-object v2, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 816
    .line 817
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    const-wide/16 v4, 0x0

    .line 822
    .line 823
    invoke-virtual {v2, v3, v4, v5}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 824
    .line 825
    .line 826
    move-result-object v19

    .line 827
    const/4 v5, 0x4

    .line 828
    const/4 v6, 0x0

    .line 829
    const-string v2, "AppRestoreTask"

    .line 830
    .line 831
    const-string v3, "Unpacking Ext Data"

    .line 832
    .line 833
    const/4 v4, 0x0

    .line 834
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    iget-object v1, v0, Lcx;->a:Lq63;

    .line 838
    .line 839
    invoke-virtual {v9}, Lxw;->e()Ljava/util/List;

    .line 840
    .line 841
    .line 842
    move-result-object v20

    .line 843
    new-instance v2, Lxv;

    .line 844
    .line 845
    const/4 v3, 0x0

    .line 846
    invoke-direct {v2, v14, v0, v9, v3}, Lxv;-><init>(Lmt3;Lgx;Lxw;I)V

    .line 847
    .line 848
    .line 849
    const/16 v24, 0x18

    .line 850
    .line 851
    const/16 v21, 0x0

    .line 852
    .line 853
    const/16 v22, 0x0

    .line 854
    .line 855
    move-object/from16 v18, v1

    .line 856
    .line 857
    move-object/from16 v23, v2

    .line 858
    .line 859
    invoke-static/range {v18 .. v24}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 860
    .line 861
    .line 862
    move-object/from16 v1, v19

    .line 863
    .line 864
    sget-object v2, Lex;->UNPACK:Lex;

    .line 865
    .line 866
    invoke-virtual {v0, v2}, Lcx;->d(Lex;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0}, Lcx;->b()J

    .line 870
    .line 871
    .line 872
    move-result-wide v2

    .line 873
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-virtual {v14, v2}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-virtual {v1, v2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 885
    .line 886
    .line 887
    move-result-object v2

    .line 888
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    const-string v3, "/"

    .line 893
    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    sget-object v3, Lmp6;->a:Lmp6;

    .line 899
    .line 900
    sget-boolean v4, Lg42;->a:Z

    .line 901
    .line 902
    invoke-virtual/range {v17 .. v17}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    invoke-static {v2, v4}, Lg42;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    filled-new-array {v2}, [Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 915
    .line 916
    invoke-virtual {v3, v2, v4}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 917
    .line 918
    .line 919
    sget-object v2, Lex;->UNTAR:Lex;

    .line 920
    .line 921
    invoke-virtual {v0, v2}, Lcx;->d(Lex;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0}, Lcx;->b()J

    .line 925
    .line 926
    .line 927
    move-result-wide v2

    .line 928
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {v14, v0}, Lmw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 936
    .line 937
    .line 938
    :cond_19
    :goto_f
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 939
    .line 940
    const/4 v6, 0x4

    .line 941
    const/4 v7, 0x0

    .line 942
    const-string v3, "AppRestoreTask"

    .line 943
    .line 944
    const-string v4, "Restored Ext Data"

    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    invoke-static {}, Lb67;->c()Z

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    if-eqz v0, :cond_1b

    .line 955
    .line 956
    new-instance v0, Ljr7;

    .line 957
    .line 958
    invoke-virtual/range {v17 .. v17}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    invoke-direct {v0, v1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    const-string v1, "[ -e @@ ]"

    .line 966
    .line 967
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 968
    .line 969
    .line 970
    move-result v1

    .line 971
    if-eqz v1, :cond_1b

    .line 972
    .line 973
    :try_start_0
    sget-object v1, Lg00;->a:Lg00;

    .line 974
    .line 975
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 976
    .line 977
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    if-eqz v1, :cond_1a

    .line 986
    .line 987
    new-instance v15, Lq63;

    .line 988
    .line 989
    const/4 v2, 0x1

    .line 990
    invoke-direct {v15, v1, v2}, Lq63;-><init>(Ljava/io/File;I)V

    .line 991
    .line 992
    .line 993
    goto :goto_10

    .line 994
    :catch_0
    move-exception v0

    .line 995
    goto :goto_11

    .line 996
    :cond_1a
    :goto_10
    invoke-static {v15}, Lg00;->k(Lq63;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    move/from16 v2, p2

    .line 1008
    .line 1009
    invoke-static {v2, v1, v0}, Lg00;->E(ILjava/lang/String;Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_12

    .line 1013
    :goto_11
    const-string v1, "AppRestoreTask"

    .line 1014
    .line 1015
    const-string v2, "restoreExtData"

    .line 1016
    .line 1017
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    .line 1019
    .line 1020
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 1021
    .line 1022
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v5

    .line 1026
    const/4 v7, 0x4

    .line 1027
    const/4 v8, 0x0

    .line 1028
    const-string v4, "AppRestoreTask"

    .line 1029
    .line 1030
    const/4 v6, 0x0

    .line 1031
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    const-string v2, "External Data cannot be restored ("

    .line 1041
    .line 1042
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    invoke-virtual {v10, v0}, Luw;->c(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    return-void

    .line 1059
    :cond_1b
    :goto_12
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1060
    .line 1061
    invoke-static {}, Lmp6;->g()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_1c

    .line 1066
    .line 1067
    sget-object v0, Lqe7;->a:Lgv7;

    .line 1068
    .line 1069
    sget-boolean v0, Lg42;->a:Z

    .line 1070
    .line 1071
    invoke-virtual/range {v17 .. v17}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    const-string v1, "AQKeEX8+D3/pxf9mmtP5RdurSv9/HVRinPaBqCKRPUWAalObWcMykQBZVhiS"

    .line 1079
    .line 1080
    invoke-static {v1}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    const/4 v2, 0x1

    .line 1089
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    filled-new-array {v0}, [Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-static {v0}, Lqe7;->c([Ljava/lang/String;)Lne7;

    .line 1102
    .line 1103
    .line 1104
    :cond_1c
    :goto_13
    return-void
.end method

.method public final n(Ldx;ILiw;)V
    .locals 24

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v8, Ldx;->a:Lq63;

    .line 8
    .line 9
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 10
    .line 11
    const/4 v14, 0x4

    .line 12
    const/4 v15, 0x0

    .line 13
    const-string v11, "AppRestoreTask"

    .line 14
    .line 15
    const-string v12, "Starting Media restore"

    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    move-object v10, v1

    .line 19
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v8, Ldx;->b:Li40;

    .line 23
    .line 24
    iget-wide v3, v8, Ldx;->h:J

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const-string v2, "Couldn\'t get archive type for "

    .line 30
    .line 31
    invoke-static {v0, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const/4 v10, 0x4

    .line 36
    const/4 v11, 0x0

    .line 37
    const-string v7, "AppRestoreTask"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v6, v1

    .line 41
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Liu;->MEDIA:Liu;

    .line 45
    .line 46
    invoke-virtual {v5, v1, v0, v12}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget v6, v2, Li40;->a:I

    .line 51
    .line 52
    sget-object v7, Lp93;->a:Lp93;

    .line 53
    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v7}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v10, "Restoring Media ("

    .line 63
    .line 64
    const-string v11, ", v"

    .line 65
    .line 66
    const-string v13, ")"

    .line 67
    .line 68
    invoke-static {v10, v7, v11, v6, v13}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const/4 v14, 0x4

    .line 73
    const/4 v15, 0x0

    .line 74
    const-string v11, "AppRestoreTask"

    .line 75
    .line 76
    move-object/from16 v16, v13

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    move-object v12, v10

    .line 80
    move-object v10, v1

    .line 81
    move-object/from16 v1, v16

    .line 82
    .line 83
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 87
    .line 88
    const v11, 0x7f130496

    .line 89
    .line 90
    .line 91
    invoke-static {v11}, Ldj7;->g(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget-object v12, v5, Lxw;->b:Lc40;

    .line 96
    .line 97
    iget-object v12, v12, Lpw6;->i:Lex6;

    .line 98
    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v11, " ("

    .line 108
    .line 109
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v12, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 v1, 0x6

    .line 126
    const/4 v7, 0x2

    .line 127
    iget-object v11, v5, Lxw;->h:Lji;

    .line 128
    .line 129
    if-ne v6, v1, :cond_2

    .line 130
    .line 131
    iget-object v1, v8, Ldx;->a:Lq63;

    .line 132
    .line 133
    sget-object v3, Liu;->MEDIA:Liu;

    .line 134
    .line 135
    new-instance v0, Lq63;

    .line 136
    .line 137
    invoke-virtual {v11}, Lji;->getMediaDir()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-direct {v0, v4, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-wide v5, v8, Ldx;->i:J

    .line 152
    .line 153
    move-object/from16 v0, p0

    .line 154
    .line 155
    move-object/from16 v7, p3

    .line 156
    .line 157
    invoke-virtual/range {v0 .. v7}, Lxw;->s(Lq63;Li40;Liu;Lq63;JLmt3;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    move-object v12, v0

    .line 162
    move-object v13, v7

    .line 163
    if-nez v1, :cond_1

    .line 164
    .line 165
    goto/16 :goto_e

    .line 166
    .line 167
    :cond_1
    sget-object v0, Lex;->UNTAR:Lex;

    .line 168
    .line 169
    invoke-virtual {v8, v0}, Ldx;->d(Lex;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ldx;->b()J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v13, v0}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const/4 v5, 0x4

    .line 184
    const/4 v6, 0x0

    .line 185
    const-string v2, "AppRestoreTask"

    .line 186
    .line 187
    const-string v3, "Restored Media"

    .line 188
    .line 189
    const/4 v4, 0x0

    .line 190
    move-object v1, v10

    .line 191
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v9}, Lxw;->o(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_2
    move-object/from16 v13, p3

    .line 199
    .line 200
    move-object v12, v5

    .line 201
    move-object v1, v10

    .line 202
    new-instance v10, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    sget-object v14, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 208
    .line 209
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v14, v2, v3, v4}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    const/4 v5, 0x4

    .line 221
    const/4 v6, 0x0

    .line 222
    const-string v2, "AppRestoreTask"

    .line 223
    .line 224
    move-wide/from16 v17, v3

    .line 225
    .line 226
    const-string v3, "Unpacking Media"

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    move-object/from16 v16, v11

    .line 230
    .line 231
    move-wide/from16 v7, v17

    .line 232
    .line 233
    const/4 v11, 0x0

    .line 234
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v15, v7, v8}, Lpj7;->b(Lq63;J)Loj7;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v7, v12, Lxw;->u:Luw;

    .line 242
    .line 243
    if-eqz v2, :cond_4

    .line 244
    .line 245
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 246
    .line 247
    iget-boolean v1, v2, Loj7;->b:Z

    .line 248
    .line 249
    if-eqz v1, :cond_3

    .line 250
    .line 251
    invoke-virtual {v7, v0}, Luw;->a(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_3
    sget-object v1, Liu;->MEDIA:Liu;

    .line 256
    .line 257
    invoke-virtual {v7, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_16

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lq63;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_4
    move-object/from16 v8, p1

    .line 284
    .line 285
    iget-object v2, v8, Ldx;->a:Lq63;

    .line 286
    .line 287
    invoke-virtual {v12}, Lxw;->e()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v19

    .line 291
    iget-boolean v3, v12, Lxw;->i:Z

    .line 292
    .line 293
    if-eqz v3, :cond_6

    .line 294
    .line 295
    iget-object v3, v12, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 296
    .line 297
    if-eqz v3, :cond_5

    .line 298
    .line 299
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaPasswordHash()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :goto_2
    move-object/from16 v20, v3

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_5
    move-object/from16 v20, v11

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_6
    invoke-virtual {v12}, Lxw;->f()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    if-eqz v3, :cond_5

    .line 314
    .line 315
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaPasswordHash()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    goto :goto_2

    .line 320
    :goto_3
    new-instance v3, Low;

    .line 321
    .line 322
    invoke-direct {v3, v13, v8, v12}, Low;-><init>(Liw;Ldx;Lxw;)V

    .line 323
    .line 324
    .line 325
    const/16 v23, 0x10

    .line 326
    .line 327
    const/16 v21, 0x0

    .line 328
    .line 329
    move-object/from16 v17, v2

    .line 330
    .line 331
    move-object/from16 v22, v3

    .line 332
    .line 333
    move-object/from16 v18, v15

    .line 334
    .line 335
    invoke-static/range {v17 .. v23}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    sget-object v3, Lex;->UNPACK:Lex;

    .line 340
    .line 341
    invoke-virtual {v8, v3}, Ldx;->d(Lex;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Ldx;->b()J

    .line 345
    .line 346
    .line 347
    move-result-wide v3

    .line 348
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v13, v3}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    iget-boolean v3, v2, Lfw5;->a:Z

    .line 356
    .line 357
    const/4 v15, 0x1

    .line 358
    if-nez v3, :cond_b

    .line 359
    .line 360
    iget-object v1, v2, Lfw5;->d:Lew5;

    .line 361
    .line 362
    const/4 v2, -0x1

    .line 363
    if-nez v1, :cond_7

    .line 364
    .line 365
    move v1, v2

    .line 366
    goto :goto_4

    .line 367
    :cond_7
    sget-object v3, Lww;->b:[I

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    aget v1, v3, v1

    .line 374
    .line 375
    :goto_4
    if-eq v1, v2, :cond_a

    .line 376
    .line 377
    if-eq v1, v15, :cond_9

    .line 378
    .line 379
    const/4 v2, 0x2

    .line 380
    if-eq v1, v2, :cond_9

    .line 381
    .line 382
    const/4 v2, 0x3

    .line 383
    if-ne v1, v2, :cond_8

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :cond_9
    sget-object v0, Liu;->MEDIA:Liu;

    .line 391
    .line 392
    invoke-virtual {v7, v0}, Luw;->d(Liu;)V

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_a
    :goto_5
    sget-object v1, Liu;->MEDIA:Liu;

    .line 397
    .line 398
    invoke-virtual {v12, v1, v0, v11}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :goto_6
    invoke-static {v10}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lq63;->B()Ljava/util/ArrayList;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_17

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_c

    .line 416
    .line 417
    goto/16 :goto_f

    .line 418
    .line 419
    :cond_c
    iget-boolean v2, v8, Ldx;->c:Z

    .line 420
    .line 421
    if-eqz v2, :cond_f

    .line 422
    .line 423
    const/4 v5, 0x4

    .line 424
    const/4 v6, 0x0

    .line 425
    const-string v2, "AppRestoreTask"

    .line 426
    .line 427
    const-string v3, "Decompressing Media"

    .line 428
    .line 429
    const/4 v4, 0x0

    .line 430
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    move-object v6, v1

    .line 434
    invoke-static {v0}, Lth5;->c(Ljava/util/ArrayList;)J

    .line 435
    .line 436
    .line 437
    move-result-wide v1

    .line 438
    invoke-virtual/range {v16 .. v16}, Lji;->getPackageName()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {v14, v3, v1, v2}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    invoke-static {v14, v1, v2}, Lpj7;->b(Lq63;J)Loj7;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    if-eqz v1, :cond_e

    .line 454
    .line 455
    iget-object v0, v1, Loj7;->a:Ljava/lang/String;

    .line 456
    .line 457
    iget-boolean v1, v1, Loj7;->b:Z

    .line 458
    .line 459
    if-eqz v1, :cond_d

    .line 460
    .line 461
    invoke-virtual {v7, v0}, Luw;->a(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_d
    sget-object v1, Liu;->MEDIA:Liu;

    .line 466
    .line 467
    invoke-virtual {v7, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_16

    .line 479
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Lq63;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_e
    sget-object v1, Lex;->DECOMPRESS:Lex;

    .line 494
    .line 495
    invoke-virtual {v8, v1}, Ldx;->c(Lex;)J

    .line 496
    .line 497
    .line 498
    move-result-wide v1

    .line 499
    move-object v3, v0

    .line 500
    new-instance v0, Lpw;

    .line 501
    .line 502
    move-object v4, v8

    .line 503
    move-object v5, v12

    .line 504
    move-object v8, v3

    .line 505
    move-object v3, v13

    .line 506
    invoke-direct/range {v0 .. v5}, Lpw;-><init>(JLiw;Ldx;Lxw;)V

    .line 507
    .line 508
    .line 509
    invoke-static {v8, v14, v0}, Lth5;->b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    goto :goto_9

    .line 514
    :cond_f
    move-object v6, v1

    .line 515
    move-object v4, v8

    .line 516
    move-object v3, v13

    .line 517
    move-object v8, v0

    .line 518
    :goto_9
    sget-object v1, Lex;->DECOMPRESS:Lex;

    .line 519
    .line 520
    invoke-virtual {v4, v1}, Ldx;->d(Lex;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4}, Ldx;->b()J

    .line 524
    .line 525
    .line 526
    move-result-wide v1

    .line 527
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v3, v1}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-eqz v1, :cond_10

    .line 539
    .line 540
    const/4 v5, 0x4

    .line 541
    move-object v1, v6

    .line 542
    const/4 v6, 0x0

    .line 543
    const-string v2, "AppRestoreTask"

    .line 544
    .line 545
    const-string v3, "No tar files found!"

    .line 546
    .line 547
    const/4 v4, 0x0

    .line 548
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-static {v10}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 552
    .line 553
    .line 554
    return-void

    .line 555
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-eqz v1, :cond_12

    .line 564
    .line 565
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v12

    .line 569
    move-object v1, v12

    .line 570
    check-cast v1, Lq63;

    .line 571
    .line 572
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual/range {v16 .. v16}, Lji;->getPackageName()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v2, ".tar"

    .line 589
    .line 590
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    if-eqz v1, :cond_11

    .line 602
    .line 603
    goto :goto_a

    .line 604
    :cond_12
    move-object v12, v11

    .line 605
    :goto_a
    check-cast v12, Lq63;

    .line 606
    .line 607
    if-nez v12, :cond_13

    .line 608
    .line 609
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 610
    .line 611
    const/4 v4, 0x4

    .line 612
    const/4 v5, 0x0

    .line 613
    const-string v1, "AppRestoreTask"

    .line 614
    .line 615
    const-string v2, "No tar file found!"

    .line 616
    .line 617
    const/4 v3, 0x0

    .line 618
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v10}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :cond_13
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 626
    .line 627
    const/16 v21, 0x4

    .line 628
    .line 629
    const/16 v22, 0x0

    .line 630
    .line 631
    const-string v18, "AppRestoreTask"

    .line 632
    .line 633
    const-string v19, "Preparing for extraction"

    .line 634
    .line 635
    const/16 v20, 0x0

    .line 636
    .line 637
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    new-instance v0, Lq63;

    .line 641
    .line 642
    invoke-virtual/range {v16 .. v16}, Lji;->getMediaDir()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-direct {v0, v1, v15}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v12}, Lq63;->A()J

    .line 657
    .line 658
    .line 659
    move-result-wide v1

    .line 660
    invoke-static {v0, v1, v2}, Lpj7;->b(Lq63;J)Loj7;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    if-eqz v1, :cond_15

    .line 665
    .line 666
    iget-object v0, v1, Loj7;->a:Ljava/lang/String;

    .line 667
    .line 668
    iget-boolean v1, v1, Loj7;->b:Z

    .line 669
    .line 670
    if-eqz v1, :cond_14

    .line 671
    .line 672
    invoke-virtual {v7, v0}, Luw;->a(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    goto :goto_b

    .line 676
    :cond_14
    sget-object v1, Liu;->MEDIA:Liu;

    .line 677
    .line 678
    invoke-virtual {v7, v1, v0}, Luw;->b(Liu;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-eqz v1, :cond_16

    .line 690
    .line 691
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    check-cast v1, Lq63;

    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 701
    .line 702
    .line 703
    goto :goto_c

    .line 704
    :cond_15
    sget-object v6, Lex;->UNTAR:Lex;

    .line 705
    .line 706
    invoke-virtual {v4, v6}, Ldx;->c(Lex;)J

    .line 707
    .line 708
    .line 709
    move-result-wide v1

    .line 710
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v7

    .line 714
    sget-object v8, Lip6;->ANY:Lip6;

    .line 715
    .line 716
    new-instance v0, Lqw;

    .line 717
    .line 718
    move-object/from16 v5, p0

    .line 719
    .line 720
    invoke-direct/range {v0 .. v5}, Lqw;-><init>(JLiw;Ldx;Lxw;)V

    .line 721
    .line 722
    .line 723
    iget-object v1, v5, Lxw;->g:Lst3;

    .line 724
    .line 725
    invoke-interface {v1, v12, v7, v8, v0}, Lst3;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4, v6}, Ldx;->d(Lex;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v4}, Ldx;->b()J

    .line 732
    .line 733
    .line 734
    move-result-wide v0

    .line 735
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v3, v0}, Liw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    const/4 v15, 0x4

    .line 743
    const/16 v16, 0x0

    .line 744
    .line 745
    const-string v12, "AppRestoreTask"

    .line 746
    .line 747
    const-string v13, "Restored Media"

    .line 748
    .line 749
    const/4 v14, 0x0

    .line 750
    move-object/from16 v11, v17

    .line 751
    .line 752
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v5, v9}, Lxw;->o(I)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_16

    .line 767
    .line 768
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    check-cast v1, Lq63;

    .line 773
    .line 774
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 778
    .line 779
    .line 780
    goto :goto_d

    .line 781
    :cond_16
    :goto_e
    return-void

    .line 782
    :cond_17
    :goto_f
    const/4 v5, 0x4

    .line 783
    const/4 v6, 0x0

    .line 784
    const-string v2, "AppRestoreTask"

    .line 785
    .line 786
    const-string v3, "No files unpacked!"

    .line 787
    .line 788
    const/4 v4, 0x0

    .line 789
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    invoke-static {v10}, Lxw;->c(Ljava/util/ArrayList;)V

    .line 793
    .line 794
    .line 795
    return-void
.end method

.method public final o(I)V
    .locals 7

    .line 1
    invoke-static {}, Lb67;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljr7;

    .line 9
    .line 10
    iget-object v1, p0, Lxw;->h:Lji;

    .line 11
    .line 12
    invoke-virtual {v1}, Lji;->getMediaDir()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "[ -e @@ ]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    sget-object v1, Lg00;->a:Lg00;

    .line 29
    .line 30
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 31
    .line 32
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    array-length v2, v1

    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    move-object v1, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    aget-object v1, v1, v2

    .line 51
    .line 52
    :goto_1
    if-eqz v1, :cond_3

    .line 53
    .line 54
    new-instance v3, Lq63;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v3, v1, v2}, Lq63;-><init>(Ljava/io/File;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object p1, v0

    .line 63
    move-object v3, p1

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    invoke-static {v3}, Lg00;->k(Lq63;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p0, v0}, Lg00;->E(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    const/16 v5, 0x8

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const-string v1, "AppRestoreTask"

    .line 86
    .line 87
    const-string v2, "restoreMedia"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "Media cannot be restored ("

    .line 98
    .line 99
    const-string v1, ")"

    .line 100
    .line 101
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p0, p0, Lxw;->u:Luw;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Luw;->c(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final p()V
    .locals 14

    .line 1
    iget-object v0, p0, Lxw;->m:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getNotificationPolicyXml()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_8

    .line 19
    .line 20
    iget-object v2, p0, Lxw;->h:Lji;

    .line 21
    .line 22
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getNotificationPolicyXml()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lxw;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object p0, Lg00;->a:Lg00;

    .line 44
    .line 45
    invoke-static {}, Lg00;->i()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    :goto_1
    const-string v3, "Notification settings restore failed: "

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-boolean v4, Lmp6;->g:Z

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_2
    if-eqz v0, :cond_8

    .line 61
    .line 62
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_3
    invoke-static {v2}, Lap5;->a(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_4

    .line 75
    .line 76
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 77
    .line 78
    const-string p0, "Skipping notification settings restore for unsafe package name: "

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const/4 v9, 0x4

    .line 85
    const/4 v10, 0x0

    .line 86
    const-string v6, "NotificationPolicyBackupHelper"

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    const-string v4, "restore"

    .line 94
    .line 95
    invoke-static {v4}, Lap5;->b(Ljava/lang/String;)Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    :try_start_0
    sget-object v6, Lf51;->a:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v7, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-static {v7, v0, v6}, Lnc3;->X(Ljava/io/FileOutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 113
    .line 114
    .line 115
    const-class v0, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

    .line 116
    .line 117
    const-string v6, "swiftbackup_notification_policy_proxy"

    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    filled-new-array {v4, p0, v2, v7}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0, v6, p0, v1}, Lbv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_5

    .line 144
    .line 145
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    move-object p0, v0

    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :catch_0
    move-exception v0

    .line 157
    move-object p0, v0

    .line 158
    goto :goto_4

    .line 159
    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    const-string v1, "SB_NOTIFICATION_POLICY:OK"

    .line 176
    .line 177
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 184
    .line 185
    const-string v9, "NotificationPolicyBackupHelper"

    .line 186
    .line 187
    const-string v10, "Restored notification settings"

    .line 188
    .line 189
    const/4 v12, 0x4

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v11, 0x0

    .line 192
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    :goto_2
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 197
    .line 198
    const-string p0, "NotificationPolicyBackupHelper"

    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    const/16 v12, 0x3f

    .line 202
    .line 203
    const/4 v8, 0x0

    .line 204
    const/4 v9, 0x0

    .line 205
    const/4 v10, 0x0

    .line 206
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    const/4 v10, 0x4

    .line 226
    const/4 v11, 0x0

    .line 227
    const/4 v9, 0x0

    .line 228
    move-object v7, p0

    .line 229
    invoke-static/range {v6 .. v11}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    .line 232
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    move-object p0, v0

    .line 238
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    :try_start_4
    invoke-static {v7, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    :goto_4
    :try_start_5
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 245
    .line 246
    const-string v7, "NotificationPolicyBackupHelper"

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    const/4 v10, 0x4

    .line 268
    const/4 v11, 0x0

    .line 269
    const/4 v9, 0x0

    .line 270
    invoke-static/range {v6 .. v11}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :goto_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 278
    .line 279
    .line 280
    throw p0

    .line 281
    :cond_8
    :goto_6
    return-void
.end method

.method public final q(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lmp6;->a:Lmp6;

    .line 4
    .line 5
    invoke-static {}, Lmp6;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_28

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lxw;->a:Ljz;

    .line 14
    .line 15
    iget-object v2, v1, Ljz;->d:Lyu;

    .line 16
    .line 17
    iget-boolean v3, v1, Ljz;->e:Z

    .line 18
    .line 19
    invoke-virtual {v2}, Lyu;->getRestoresAnyPermissions()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v4, v0, Lxw;->m:Lgv7;

    .line 24
    .line 25
    const-string v5, ":"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    iget-object v7, v0, Lxw;->j:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 29
    .line 30
    iget-boolean v8, v0, Lxw;->i:Z

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    if-eqz v2, :cond_1d

    .line 34
    .line 35
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getPermissionStatesCsv()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    :cond_1
    if-eqz v8, :cond_3

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getPermissionStatesCsv()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v2, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPermissionStatesCsv()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_4
    :goto_0
    sget-object v11, Lav;->a:Lgv7;

    .line 67
    .line 68
    const/4 v11, 0x6

    .line 69
    const-string v12, ","

    .line 70
    .line 71
    const/4 v13, 0x2

    .line 72
    if-eqz v2, :cond_f

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    if-nez v14, :cond_5

    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_5
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_6

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_6
    :try_start_0
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    filled-new-array {v12}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-static {v2, v15, v11}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-eqz v15, :cond_e

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    check-cast v15, Ljava/lang/String;

    .line 118
    .line 119
    filled-new-array {v5}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-static {v15, v10, v13}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-ne v15, v13, :cond_7

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    const/4 v10, 0x0

    .line 135
    :goto_2
    if-nez v10, :cond_8

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    check-cast v15, Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v15}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    if-eqz v15, :cond_d

    .line 155
    .line 156
    sget-object v16, Lav;->b:Lgv7;

    .line 157
    .line 158
    invoke-virtual/range {v16 .. v16}, Lgv7;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    move-object/from16 v6, v16

    .line 163
    .line 164
    check-cast v6, Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Ljava/lang/String;

    .line 171
    .line 172
    if-nez v6, :cond_9

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_9
    sget-object v15, Luu;->Companion:Ltu;

    .line 176
    .line 177
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Luu;->getEntries()Ljx2;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    check-cast v15, Lz3;

    .line 188
    .line 189
    invoke-virtual {v15}, Lz3;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    :goto_3
    move-object/from16 v16, v15

    .line 194
    .line 195
    check-cast v16, Lw3;

    .line 196
    .line 197
    invoke-virtual/range {v16 .. v16}, Lw3;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v17

    .line 201
    if-eqz v17, :cond_b

    .line 202
    .line 203
    invoke-virtual/range {v16 .. v16}, Lw3;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v16

    .line 207
    move-object/from16 v17, v16

    .line 208
    .line 209
    check-cast v17, Luu;

    .line 210
    .line 211
    invoke-virtual/range {v17 .. v17}, Luu;->getToken()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    invoke-static {v11, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-eqz v11, :cond_a

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_a
    const/4 v11, 0x6

    .line 223
    goto :goto_3

    .line 224
    :cond_b
    const/16 v16, 0x0

    .line 225
    .line 226
    :goto_4
    move-object/from16 v10, v16

    .line 227
    .line 228
    check-cast v10, Luu;

    .line 229
    .line 230
    if-nez v10, :cond_c

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_c
    new-instance v11, Lsu;

    .line 234
    .line 235
    invoke-direct {v11, v6, v10}, Lsu;-><init>(Ljava/lang/String;Luu;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_d
    :goto_5
    const/4 v6, 0x0

    .line 242
    const/4 v11, 0x6

    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_e
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v2}, Lav;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    if-nez v6, :cond_f

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :catch_0
    :cond_f
    :goto_6
    const/4 v2, 0x0

    .line 264
    :goto_7
    const/16 v10, 0xa

    .line 265
    .line 266
    iget-object v11, v0, Lxw;->f:Lck;

    .line 267
    .line 268
    iget-object v0, v0, Lxw;->h:Lji;

    .line 269
    .line 270
    if-eqz v2, :cond_1e

    .line 271
    .line 272
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    if-eqz v14, :cond_10

    .line 277
    .line 278
    goto/16 :goto_11

    .line 279
    .line 280
    :cond_10
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    .line 281
    .line 282
    const/16 v23, 0x4

    .line 283
    .line 284
    const/16 v24, 0x0

    .line 285
    .line 286
    const-string v20, "AppRestoreTask"

    .line 287
    .line 288
    const-string v21, "Restoring permission choices"

    .line 289
    .line 290
    const/16 v22, 0x0

    .line 291
    .line 292
    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    sget-object v12, Lav;->a:Lgv7;

    .line 296
    .line 297
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v1, v1, Ljz;->d:Lyu;

    .line 302
    .line 303
    invoke-virtual {v1}, Lyu;->getRestoresDeniedRuntimePermissionStates()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v11}, Lck;->invoke()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    check-cast v11, Lg55;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static {v2}, Lav;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    new-instance v12, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-eqz v15, :cond_12

    .line 334
    .line 335
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    move-object v6, v15

    .line 340
    check-cast v6, Lsu;

    .line 341
    .line 342
    iget-object v6, v6, Lsu;->b:Luu;

    .line 343
    .line 344
    sget-object v13, Luu;->Granted:Luu;

    .line 345
    .line 346
    if-ne v6, v13, :cond_11

    .line 347
    .line 348
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    :cond_11
    const/4 v13, 0x2

    .line 352
    goto :goto_8

    .line 353
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-static {v12, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    if-eqz v12, :cond_13

    .line 371
    .line 372
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    check-cast v12, Lsu;

    .line 377
    .line 378
    iget-object v12, v12, Lsu;->a:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_13
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 385
    .line 386
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-static {v6, v10}, Lel1;->t1(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v0, v10, v3, v11}, Lav;->e(Ljava/lang/String;Ljava/util/Set;ZLg55;)V

    .line 393
    .line 394
    .line 395
    if-nez v1, :cond_14

    .line 396
    .line 397
    goto/16 :goto_10

    .line 398
    .line 399
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    :cond_15
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-eqz v6, :cond_16

    .line 413
    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    move-object v10, v6

    .line 419
    check-cast v10, Lsu;

    .line 420
    .line 421
    iget-object v11, v10, Lsu;->b:Luu;

    .line 422
    .line 423
    sget-object v12, Luu;->Granted:Luu;

    .line 424
    .line 425
    if-eq v11, v12, :cond_15

    .line 426
    .line 427
    iget-object v10, v10, Lsu;->a:Ljava/lang/String;

    .line 428
    .line 429
    sget-object v11, Lav;->b:Lgv7;

    .line 430
    .line 431
    invoke-virtual {v11}, Lgv7;->getValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    check-cast v11, Ljava/util/Map;

    .line 436
    .line 437
    invoke-interface {v11, v10}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-eqz v10, :cond_15

    .line 442
    .line 443
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    if-eqz v6, :cond_1c

    .line 461
    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    check-cast v6, Lsu;

    .line 467
    .line 468
    sget-object v10, Lg00;->a:Lg00;

    .line 469
    .line 470
    invoke-static {}, Lg00;->i()I

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    iget-object v11, v6, Lsu;->a:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v6, v6, Lsu;->b:Luu;

    .line 477
    .line 478
    sget-object v12, Lzu;->b:[I

    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    aget v12, v12, v13

    .line 485
    .line 486
    if-eq v12, v9, :cond_19

    .line 487
    .line 488
    const/4 v13, 0x2

    .line 489
    if-eq v12, v13, :cond_18

    .line 490
    .line 491
    const/4 v13, 0x3

    .line 492
    if-ne v12, v13, :cond_17

    .line 493
    .line 494
    sget-object v6, Lov2;->a:Lov2;

    .line 495
    .line 496
    goto/16 :goto_f

    .line 497
    .line 498
    :cond_17
    invoke-static {}, Lq;->j()V

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :cond_18
    sget-boolean v12, Lg42;->a:Z

    .line 503
    .line 504
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    sget-object v12, Lg42;->l:Lgv7;

    .line 508
    .line 509
    invoke-virtual {v12}, Lgv7;->getValue()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    check-cast v12, Ljava/lang/String;

    .line 514
    .line 515
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v13

    .line 519
    filled-new-array {v13, v0, v11}, [Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v13

    .line 523
    const/4 v14, 0x3

    .line 524
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v13

    .line 528
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v12

    .line 532
    goto :goto_c

    .line 533
    :cond_19
    sget-boolean v12, Lg42;->a:Z

    .line 534
    .line 535
    invoke-static {v10, v0, v11}, Lg42;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    :goto_c
    invoke-static {}, Lb67;->e()Z

    .line 540
    .line 541
    .line 542
    move-result v13

    .line 543
    if-eqz v13, :cond_1a

    .line 544
    .line 545
    sget-boolean v13, Lg42;->a:Z

    .line 546
    .line 547
    invoke-static {v10, v0, v11}, Lg42;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v13

    .line 551
    invoke-static {v10, v0, v11}, Lg42;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    filled-new-array {v13, v10, v12}, [Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v10

    .line 559
    invoke-static {v10}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 560
    .line 561
    .line 562
    move-result-object v10

    .line 563
    goto :goto_d

    .line 564
    :cond_1a
    sget-boolean v12, Lg42;->a:Z

    .line 565
    .line 566
    invoke-static {v10, v0, v11}, Lg42;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v10

    .line 570
    invoke-static {v10}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    :goto_d
    invoke-static {}, Lb67;->e()Z

    .line 575
    .line 576
    .line 577
    move-result v12

    .line 578
    if-eqz v12, :cond_1b

    .line 579
    .line 580
    invoke-static {v6}, Lav;->j(Luu;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    goto :goto_e

    .line 585
    :cond_1b
    sget-object v6, Luu;->DeniedUserSet:Luu;

    .line 586
    .line 587
    invoke-static {v6}, Lav;->j(Luu;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v6

    .line 591
    :goto_e
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 592
    .line 593
    const-string v12, "."

    .line 594
    .line 595
    invoke-static {v11, v12, v11}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v11

    .line 599
    const-string v12, "Permission restored: "

    .line 600
    .line 601
    const-string v13, " = "

    .line 602
    .line 603
    invoke-static {v12, v11, v13, v6}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v20

    .line 607
    const/16 v22, 0x4

    .line 608
    .line 609
    const/16 v23, 0x0

    .line 610
    .line 611
    const-string v19, "AppPermissionsHelper"

    .line 612
    .line 613
    const/16 v21, 0x0

    .line 614
    .line 615
    invoke-static/range {v18 .. v23}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    move-object v6, v10

    .line 619
    :goto_f
    invoke-static {v6, v2}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_b

    .line 623
    .line 624
    :cond_1c
    invoke-static {v2}, Lav;->h(Ljava/util/ArrayList;)V

    .line 625
    .line 626
    .line 627
    :cond_1d
    :goto_10
    move-object/from16 v27, v4

    .line 628
    .line 629
    goto/16 :goto_1e

    .line 630
    .line 631
    :cond_1e
    :goto_11
    if-eqz v8, :cond_20

    .line 632
    .line 633
    if-eqz v7, :cond_1f

    .line 634
    .line 635
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getPermissionIdsCsv()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    goto :goto_12

    .line 640
    :cond_1f
    const/4 v1, 0x0

    .line 641
    goto :goto_12

    .line 642
    :cond_20
    if-eqz p1, :cond_1f

    .line 643
    .line 644
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPermissionIdsCsv()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    :goto_12
    sget-object v2, Lav;->a:Lgv7;

    .line 649
    .line 650
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    sget-object v6, Lru;->Granted:Lru;

    .line 655
    .line 656
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    new-instance v13, Ljava/util/LinkedHashSet;

    .line 663
    .line 664
    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 665
    .line 666
    .line 667
    sget-object v14, Lg00;->a:Lg00;

    .line 668
    .line 669
    const/16 v14, 0x1000

    .line 670
    .line 671
    invoke-static {v14, v2}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 672
    .line 673
    .line 674
    move-result-object v14

    .line 675
    if-eqz v14, :cond_21

    .line 676
    .line 677
    iget-object v15, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 678
    .line 679
    if-eqz v15, :cond_21

    .line 680
    .line 681
    array-length v10, v15

    .line 682
    if-nez v10, :cond_22

    .line 683
    .line 684
    :cond_21
    const/4 v15, 0x0

    .line 685
    :cond_22
    if-eqz v14, :cond_23

    .line 686
    .line 687
    iget-object v10, v14, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 688
    .line 689
    if-eqz v10, :cond_23

    .line 690
    .line 691
    array-length v14, v10

    .line 692
    if-nez v14, :cond_24

    .line 693
    .line 694
    :cond_23
    const/4 v10, 0x0

    .line 695
    :cond_24
    if-eqz v15, :cond_2c

    .line 696
    .line 697
    if-eqz v10, :cond_2c

    .line 698
    .line 699
    array-length v14, v15

    .line 700
    const/4 v9, 0x0

    .line 701
    :goto_13
    if-ge v9, v14, :cond_2c

    .line 702
    .line 703
    move-object/from16 p0, v0

    .line 704
    .line 705
    aget-object v0, v15, v9

    .line 706
    .line 707
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 708
    .line 709
    .line 710
    sget-object v19, Lav;->b:Lgv7;

    .line 711
    .line 712
    invoke-virtual/range {v19 .. v19}, Lgv7;->getValue()Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v19

    .line 716
    move-object/from16 v20, v2

    .line 717
    .line 718
    move-object/from16 v2, v19

    .line 719
    .line 720
    check-cast v2, Ljava/util/Map;

    .line 721
    .line 722
    invoke-interface {v2, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-eqz v2, :cond_2a

    .line 727
    .line 728
    aget v2, v10, v9

    .line 729
    .line 730
    move/from16 v19, v2

    .line 731
    .line 732
    const/4 v2, 0x2

    .line 733
    and-int/lit8 v17, v19, 0x2

    .line 734
    .line 735
    if-eqz v17, :cond_25

    .line 736
    .line 737
    const/16 v17, 0x1

    .line 738
    .line 739
    goto :goto_14

    .line 740
    :cond_25
    const/16 v17, 0x0

    .line 741
    .line 742
    :goto_14
    sget-object v19, Lzu;->a:[I

    .line 743
    .line 744
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 745
    .line 746
    .line 747
    move-result v21

    .line 748
    move-object/from16 v27, v4

    .line 749
    .line 750
    aget v4, v19, v21

    .line 751
    .line 752
    move-object/from16 v19, v6

    .line 753
    .line 754
    const/4 v6, 0x1

    .line 755
    if-eq v4, v6, :cond_29

    .line 756
    .line 757
    if-eq v4, v2, :cond_27

    .line 758
    .line 759
    const/4 v6, 0x3

    .line 760
    if-ne v4, v6, :cond_26

    .line 761
    .line 762
    :goto_15
    const/16 v17, 0x1

    .line 763
    .line 764
    goto :goto_16

    .line 765
    :cond_26
    invoke-static {}, Lq;->j()V

    .line 766
    .line 767
    .line 768
    return-void

    .line 769
    :cond_27
    const/4 v6, 0x3

    .line 770
    if-nez v17, :cond_28

    .line 771
    .line 772
    goto :goto_15

    .line 773
    :cond_28
    const/16 v17, 0x0

    .line 774
    .line 775
    goto :goto_16

    .line 776
    :cond_29
    const/4 v6, 0x3

    .line 777
    :goto_16
    if-eqz v17, :cond_2b

    .line 778
    .line 779
    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    goto :goto_17

    .line 783
    :cond_2a
    move-object/from16 v27, v4

    .line 784
    .line 785
    move-object/from16 v19, v6

    .line 786
    .line 787
    const/4 v2, 0x2

    .line 788
    const/4 v6, 0x3

    .line 789
    :cond_2b
    :goto_17
    add-int/lit8 v9, v9, 0x1

    .line 790
    .line 791
    move-object/from16 v0, p0

    .line 792
    .line 793
    move-object/from16 v6, v19

    .line 794
    .line 795
    move-object/from16 v2, v20

    .line 796
    .line 797
    move-object/from16 v4, v27

    .line 798
    .line 799
    goto :goto_13

    .line 800
    :cond_2c
    move-object/from16 p0, v0

    .line 801
    .line 802
    move-object/from16 v20, v2

    .line 803
    .line 804
    move-object/from16 v27, v4

    .line 805
    .line 806
    sget-object v0, Lmp6;->a:Lmp6;

    .line 807
    .line 808
    invoke-static {}, Lmp6;->f()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-eqz v0, :cond_2d

    .line 813
    .line 814
    invoke-static/range {v20 .. v20}, Ll73;->o(Ljava/lang/String;)Lfu;

    .line 815
    .line 816
    .line 817
    move-result-object v25

    .line 818
    move-object/from16 v19, v20

    .line 819
    .line 820
    const/16 v20, 0x0

    .line 821
    .line 822
    const/16 v21, 0x0

    .line 823
    .line 824
    const/16 v22, 0x0

    .line 825
    .line 826
    const/16 v23, 0x0

    .line 827
    .line 828
    const/16 v24, 0x0

    .line 829
    .line 830
    const/16 v26, 0x0

    .line 831
    .line 832
    invoke-static/range {v19 .. v26}, Lav;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lg55;Ljava/util/Set;Lfu;Z)Ljava/util/ArrayList;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-interface {v13, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 837
    .line 838
    .line 839
    :cond_2d
    sget-object v0, Lav;->a:Lgv7;

    .line 840
    .line 841
    if-eqz v1, :cond_33

    .line 842
    .line 843
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_2e

    .line 848
    .line 849
    goto/16 :goto_1a

    .line 850
    .line 851
    :cond_2e
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    if-eqz v0, :cond_2f

    .line 856
    .line 857
    goto/16 :goto_1a

    .line 858
    .line 859
    :cond_2f
    :try_start_1
    filled-new-array {v12}, [Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    const/4 v2, 0x6

    .line 864
    invoke-static {v1, v0, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    new-instance v1, Ljava/util/ArrayList;

    .line 869
    .line 870
    const/16 v2, 0xa

    .line 871
    .line 872
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 877
    .line 878
    .line 879
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    if-eqz v2, :cond_30

    .line 888
    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    check-cast v2, Ljava/lang/String;

    .line 894
    .line 895
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    goto :goto_18

    .line 907
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    .line 908
    .line 909
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    :cond_31
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    if-eqz v2, :cond_32

    .line 921
    .line 922
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    check-cast v2, Ljava/lang/Number;

    .line 927
    .line 928
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    sget-object v4, Lav;->b:Lgv7;

    .line 933
    .line 934
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    check-cast v4, Ljava/util/Map;

    .line 939
    .line 940
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    check-cast v2, Ljava/lang/String;

    .line 949
    .line 950
    if-eqz v2, :cond_31

    .line 951
    .line 952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    goto :goto_19

    .line 956
    :cond_32
    const-string v1, "AppPermissionsHelper"

    .line 957
    .line 958
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 959
    .line 960
    .line 961
    move-result v2

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    .line 963
    .line 964
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    .line 966
    .line 967
    const-string v6, "permissionsFromIdCsv: "

    .line 968
    .line 969
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    const-string v2, " permissions converted from csv"

    .line 976
    .line 977
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 988
    .line 989
    .line 990
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 991
    goto :goto_1b

    .line 992
    :catch_1
    :cond_33
    :goto_1a
    const/4 v0, 0x0

    .line 993
    :goto_1b
    if-eqz v0, :cond_36

    .line 994
    .line 995
    new-instance v1, Ljava/util/ArrayList;

    .line 996
    .line 997
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .line 999
    .line 1000
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    :cond_34
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v2

    .line 1008
    if-eqz v2, :cond_35

    .line 1009
    .line 1010
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    move-object v4, v2

    .line 1015
    check-cast v4, Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v4

    .line 1021
    if-nez v4, :cond_34

    .line 1022
    .line 1023
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    goto :goto_1c

    .line 1027
    :cond_35
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    goto :goto_1d

    .line 1032
    :cond_36
    const/4 v0, 0x0

    .line 1033
    :goto_1d
    if-eqz v0, :cond_38

    .line 1034
    .line 1035
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v1

    .line 1039
    if-eqz v1, :cond_37

    .line 1040
    .line 1041
    goto :goto_1e

    .line 1042
    :cond_37
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1043
    .line 1044
    const/16 v21, 0x4

    .line 1045
    .line 1046
    const/16 v22, 0x0

    .line 1047
    .line 1048
    const-string v18, "AppRestoreTask"

    .line 1049
    .line 1050
    const-string v19, "Restoring permissions"

    .line 1051
    .line 1052
    const/16 v20, 0x0

    .line 1053
    .line 1054
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    sget-object v1, Lav;->a:Lgv7;

    .line 1058
    .line 1059
    invoke-virtual/range {p0 .. p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    invoke-virtual {v11}, Lck;->invoke()Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    check-cast v2, Lg55;

    .line 1068
    .line 1069
    invoke-static {v1, v0, v3, v2}, Lav;->e(Ljava/lang/String;Ljava/util/Set;ZLg55;)V

    .line 1070
    .line 1071
    .line 1072
    :cond_38
    :goto_1e
    if-eqz v3, :cond_4b

    .line 1073
    .line 1074
    invoke-virtual/range {v27 .. v27}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 1079
    .line 1080
    if-eqz v0, :cond_39

    .line 1081
    .line 1082
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getNtfAccessComponent()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    if-nez v0, :cond_3c

    .line 1087
    .line 1088
    :cond_39
    if-eqz v8, :cond_3b

    .line 1089
    .line 1090
    if-eqz v7, :cond_3a

    .line 1091
    .line 1092
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getNtfAccessComponent()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    goto :goto_1f

    .line 1097
    :cond_3a
    const/4 v0, 0x0

    .line 1098
    goto :goto_1f

    .line 1099
    :cond_3b
    if-eqz p1, :cond_3a

    .line 1100
    .line 1101
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNtfAccessComponent()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    :cond_3c
    :goto_1f
    const-string v1, "get"

    .line 1106
    .line 1107
    const-string v2, " "

    .line 1108
    .line 1109
    const-string v3, "put"

    .line 1110
    .line 1111
    if-eqz v0, :cond_42

    .line 1112
    .line 1113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1114
    .line 1115
    .line 1116
    move-result v4

    .line 1117
    if-lez v4, :cond_3d

    .line 1118
    .line 1119
    goto :goto_20

    .line 1120
    :cond_3d
    const/4 v0, 0x0

    .line 1121
    :goto_20
    if-eqz v0, :cond_42

    .line 1122
    .line 1123
    sget-boolean v4, Lg42;->a:Z

    .line 1124
    .line 1125
    invoke-static {}, Lb67;->a()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v4

    .line 1129
    if-eqz v4, :cond_3e

    .line 1130
    .line 1131
    sget-object v4, Lg42;->D:Lgv7;

    .line 1132
    .line 1133
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v4

    .line 1137
    check-cast v4, Ljava/lang/String;

    .line 1138
    .line 1139
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    const/4 v6, 0x1

    .line 1144
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    goto :goto_22

    .line 1153
    :cond_3e
    const/4 v6, 0x1

    .line 1154
    sget-object v4, Lmp6;->a:Lmp6;

    .line 1155
    .line 1156
    sget-object v9, Lg42;->B:Lgv7;

    .line 1157
    .line 1158
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v10

    .line 1162
    check-cast v10, Ljava/lang/String;

    .line 1163
    .line 1164
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v11

    .line 1168
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v11

    .line 1172
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v10

    .line 1176
    filled-new-array {v10}, [Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v10

    .line 1180
    sget-object v11, Lip6;->SHIZUKU:Lip6;

    .line 1181
    .line 1182
    invoke-virtual {v4, v10, v11}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    invoke-static {v4}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v4

    .line 1190
    check-cast v4, Ljava/lang/String;

    .line 1191
    .line 1192
    if-eqz v4, :cond_3f

    .line 1193
    .line 1194
    const/4 v10, 0x0

    .line 1195
    invoke-static {v4, v0, v10}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v11

    .line 1199
    if-ne v11, v6, :cond_3f

    .line 1200
    .line 1201
    goto :goto_23

    .line 1202
    :cond_3f
    if-eqz v4, :cond_41

    .line 1203
    .line 1204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1205
    .line 1206
    .line 1207
    move-result v6

    .line 1208
    if-nez v6, :cond_40

    .line 1209
    .line 1210
    goto :goto_21

    .line 1211
    :cond_40
    invoke-static {v4, v5, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    :cond_41
    :goto_21
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    check-cast v4, Ljava/lang/String;

    .line 1220
    .line 1221
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v6

    .line 1225
    const/4 v9, 0x1

    .line 1226
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v6

    .line 1230
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v4

    .line 1234
    invoke-static {v4, v2, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    :goto_22
    sget-object v4, Lmp6;->a:Lmp6;

    .line 1239
    .line 1240
    filled-new-array {v0}, [Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    sget-object v6, Lip6;->SHIZUKU:Lip6;

    .line 1245
    .line 1246
    invoke-virtual {v4, v0, v6}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1247
    .line 1248
    .line 1249
    :goto_23
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 1250
    .line 1251
    const/4 v13, 0x4

    .line 1252
    const/4 v14, 0x0

    .line 1253
    const-string v10, "AppRestoreTask"

    .line 1254
    .line 1255
    const-string v11, "Special permission restored: Notification access = Granted"

    .line 1256
    .line 1257
    const/4 v12, 0x0

    .line 1258
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1259
    .line 1260
    .line 1261
    :cond_42
    invoke-virtual/range {v27 .. v27}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 1266
    .line 1267
    if-eqz v0, :cond_43

    .line 1268
    .line 1269
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->getAccessibilityComponent()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    if-nez v0, :cond_46

    .line 1274
    .line 1275
    :cond_43
    if-eqz v8, :cond_45

    .line 1276
    .line 1277
    if-eqz v7, :cond_44

    .line 1278
    .line 1279
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getAccessibilityComponent()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    goto :goto_24

    .line 1284
    :cond_44
    const/4 v0, 0x0

    .line 1285
    goto :goto_24

    .line 1286
    :cond_45
    if-eqz p1, :cond_44

    .line 1287
    .line 1288
    invoke-virtual/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getAccessibilityComponent()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    :cond_46
    :goto_24
    if-eqz v0, :cond_4b

    .line 1293
    .line 1294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1295
    .line 1296
    .line 1297
    move-result v4

    .line 1298
    if-lez v4, :cond_47

    .line 1299
    .line 1300
    move-object v10, v0

    .line 1301
    goto :goto_25

    .line 1302
    :cond_47
    const/4 v10, 0x0

    .line 1303
    :goto_25
    if-eqz v10, :cond_4b

    .line 1304
    .line 1305
    sget-boolean v0, Lg42;->a:Z

    .line 1306
    .line 1307
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1308
    .line 1309
    sget-object v4, Lg42;->C:Lgv7;

    .line 1310
    .line 1311
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v6

    .line 1315
    check-cast v6, Ljava/lang/String;

    .line 1316
    .line 1317
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v1

    .line 1321
    const/4 v9, 0x1

    .line 1322
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    filled-new-array {v1}, [Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    sget-object v6, Lip6;->SHIZUKU:Lip6;

    .line 1335
    .line 1336
    invoke-virtual {v0, v1, v6}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    invoke-static {v1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    check-cast v1, Ljava/lang/String;

    .line 1345
    .line 1346
    if-eqz v1, :cond_48

    .line 1347
    .line 1348
    const/4 v7, 0x0

    .line 1349
    invoke-static {v1, v10, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v7

    .line 1353
    if-ne v7, v9, :cond_48

    .line 1354
    .line 1355
    goto :goto_27

    .line 1356
    :cond_48
    if-eqz v1, :cond_4a

    .line 1357
    .line 1358
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1359
    .line 1360
    .line 1361
    move-result v7

    .line 1362
    if-nez v7, :cond_49

    .line 1363
    .line 1364
    goto :goto_26

    .line 1365
    :cond_49
    invoke-static {v1, v5, v10}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v10

    .line 1369
    :cond_4a
    :goto_26
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    check-cast v1, Ljava/lang/String;

    .line 1374
    .line 1375
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    const/4 v9, 0x1

    .line 1380
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v3

    .line 1384
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v1

    .line 1388
    invoke-static {v1, v2, v10}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    filled-new-array {v1}, [Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v1

    .line 1396
    invoke-virtual {v0, v1, v6}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1397
    .line 1398
    .line 1399
    :goto_27
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 1400
    .line 1401
    const/4 v11, 0x4

    .line 1402
    const/4 v12, 0x0

    .line 1403
    const-string v8, "AppRestoreTask"

    .line 1404
    .line 1405
    const-string v9, "Special permission restored: Accessibility service = Granted"

    .line 1406
    .line 1407
    const/4 v10, 0x0

    .line 1408
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1409
    .line 1410
    .line 1411
    :cond_4b
    :goto_28
    return-void
.end method

.method public final r(Lax;Ljava/lang/String;Ljava/lang/String;Lex;Ljava/lang/String;[CLlw;)Lvw;
    .locals 13

    .line 1
    move-object/from16 v2, p3

    .line 2
    .line 3
    iget-object v3, p1, Lax;->b:Li40;

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    iget-boolean v3, v3, Li40;->c:Z

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    move v6, v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v6, v5

    .line 16
    :goto_0
    iget-object v3, p1, Lax;->a:Lq63;

    .line 17
    .line 18
    new-instance v5, Lq63;

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    invoke-direct {v5, v2, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sget-object v8, Liu;->DATA:Liu;

    .line 25
    .line 26
    invoke-virtual {p0, v3, p2, v5, v8}, Lxw;->b(Lq63;Ljava/lang/String;Lq63;Liu;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    new-instance v0, Lvw;

    .line 33
    .line 34
    invoke-direct {v0}, Lvw;-><init>()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    move-object/from16 v3, p6

    .line 39
    .line 40
    invoke-virtual {p0, v6, v8, v3, v4}, Lxw;->v(ZLiu;[CZ)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    if-nez v10, :cond_2

    .line 45
    .line 46
    new-instance v0, Lvw;

    .line 47
    .line 48
    invoke-direct {v0}, Lvw;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    iget-object v11, p1, Lax;->a:Lq63;

    .line 53
    .line 54
    new-instance v12, Lq63;

    .line 55
    .line 56
    invoke-direct {v12, v2, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sget-object v7, Lf27;->RootFidelity:Lf27;

    .line 60
    .line 61
    new-instance v0, Ldw;

    .line 62
    .line 63
    move-object v4, p0

    .line 64
    move-object v1, p1

    .line 65
    move-object/from16 v2, p4

    .line 66
    .line 67
    move-object/from16 v5, p5

    .line 68
    .line 69
    move-object/from16 v3, p7

    .line 70
    .line 71
    invoke-direct/range {v0 .. v5}, Ldw;-><init>(Lax;Lex;Llw;Lxw;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v4, v8

    .line 75
    const-string v8, "App Data restore password validation failed"

    .line 76
    .line 77
    const-string v9, "App Data restore failed"

    .line 78
    .line 79
    move-object v5, v7

    .line 80
    move-object v7, v10

    .line 81
    const/4 v10, 0x1

    .line 82
    move-object v3, p2

    .line 83
    move-object v1, v11

    .line 84
    move-object v2, v12

    .line 85
    move-object v11, v0

    .line 86
    move-object v0, p0

    .line 87
    invoke-virtual/range {v0 .. v11}, Lxw;->t(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZLmt3;)Lvw;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method public final s(Lq63;Li40;Liu;Lq63;JLmt3;)Z
    .locals 14

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    iget-object v2, v1, Li40;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {v2}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v7, v2

    .line 12
    check-cast v7, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lxw;->u:Luw;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v7, :cond_5

    .line 19
    .line 20
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object v5, p0, Lxw;->h:Lji;

    .line 29
    .line 30
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    invoke-virtual {v6, v3}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " archive entry mismatch: expected "

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", found "

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Luw;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v4

    .line 80
    :cond_1
    move-object/from16 v8, p4

    .line 81
    .line 82
    invoke-virtual {p0, p1, v7, v8, v6}, Lxw;->b(Lq63;Ljava/lang/String;Lq63;Liu;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-boolean v5, v1, Li40;->c:Z

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    invoke-virtual {p0, v5, v6, v9, v4}, Lxw;->v(ZLiu;[CZ)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    if-nez v9, :cond_3

    .line 97
    .line 98
    :goto_0
    return v4

    .line 99
    :cond_3
    sget-object v10, Lf27;->Basic:Lf27;

    .line 100
    .line 101
    iget-boolean v11, v1, Li40;->c:Z

    .line 102
    .line 103
    invoke-virtual {v6, v3}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v4, " password validation failed"

    .line 108
    .line 109
    invoke-static {v1, v4}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v6, v3}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v3, " restore failed"

    .line 118
    .line 119
    invoke-static {v1, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    new-instance v0, Liw;

    .line 124
    .line 125
    move-object v5, p0

    .line 126
    move-object v1, p1

    .line 127
    move-wide/from16 v2, p5

    .line 128
    .line 129
    move-object/from16 v4, p7

    .line 130
    .line 131
    invoke-direct/range {v0 .. v5}, Liw;-><init>(Lq63;JLmt3;Lxw;)V

    .line 132
    .line 133
    .line 134
    move-object v5, v10

    .line 135
    const/4 v10, 0x0

    .line 136
    move-object v4, v6

    .line 137
    move-object v3, v7

    .line 138
    move-object v2, v8

    .line 139
    move-object v7, v9

    .line 140
    move v6, v11

    .line 141
    move-object v8, v12

    .line 142
    move-object v9, v13

    .line 143
    move-object v11, v0

    .line 144
    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v11}, Lxw;->t(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZLmt3;)Lvw;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-boolean v0, v0, Lvw;->a:Z

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object/from16 v4, p7

    .line 158
    .line 159
    invoke-interface {v4, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_4
    return v0

    .line 163
    :cond_5
    :goto_1
    invoke-virtual {v6, v3}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, v1, Li40;->b:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, " archive expected exactly one entry, found "

    .line 182
    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v2, v0}, Luw;->a(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v4
.end method

.method public final t(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZLmt3;)Lvw;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, v1, Lxw;->u:Luw;

    .line 13
    .line 14
    if-eqz v2, :cond_e

    .line 15
    .line 16
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v8, v0

    .line 21
    check-cast v8, [C

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;
    :try_end_0
    .catch Lsz6; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lpz6; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lzz6; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    move v4, v2

    .line 27
    :try_start_1
    new-instance v2, Ljd0;

    .line 28
    .line 29
    sget-object v10, Liz6;->Auto:Liz6;

    .line 30
    .line 31
    new-instance v11, Lkf;

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-direct {v11, v1, v0}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-static/range {p11 .. p11}, Lmz6;->g(Lmt3;)Lqo6;

    .line 38
    .line 39
    .line 40
    move-result-object v12
    :try_end_1
    .catch Lsz6; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lpz6; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lzz6; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    const/16 v13, 0x40

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    move-object/from16 v5, p3

    .line 45
    .line 46
    move-object/from16 v6, p4

    .line 47
    .line 48
    move-object/from16 v7, p5

    .line 49
    .line 50
    move-object/from16 v16, v3

    .line 51
    .line 52
    move v15, v4

    .line 53
    move-object/from16 v3, p1

    .line 54
    .line 55
    move-object/from16 v4, p2

    .line 56
    .line 57
    :try_start_2
    invoke-direct/range {v2 .. v13}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V
    :try_end_2
    .catch Lsz6; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lpz6; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lzz6; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-static {v2}, Lmz6;->f(Ljd0;)Ljz6;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_3
    .catch Lsz6; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lpz6; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lzz6; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    move-object/from16 v5, p3

    .line 65
    .line 66
    :try_start_4
    invoke-virtual {v1, v0, v6, v5}, Lxw;->g(Ljz6;Liu;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz v8, :cond_1

    .line 71
    .line 72
    if-eqz p10, :cond_0

    .line 73
    .line 74
    move-object v2, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    move-object v2, v0

    .line 77
    :goto_1
    if-eqz v2, :cond_1

    .line 78
    .line 79
    array-length v0, v2

    .line 80
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_3

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_4

    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto :goto_6

    .line 89
    :catch_1
    move-exception v0

    .line 90
    :goto_2
    move-object/from16 v3, p1

    .line 91
    .line 92
    move-object/from16 v2, v16

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_1
    :goto_3
    new-instance v2, Lvw;

    .line 97
    .line 98
    invoke-direct {v2, v15, v0}, Lvw;-><init>(Z[C)V
    :try_end_4
    .catch Lsz6; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lpz6; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lzz6; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .line 100
    .line 101
    if-eqz v8, :cond_2

    .line 102
    .line 103
    array-length v0, v8

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v8, v1, v0, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-object v2

    .line 109
    :catch_2
    move-exception v0

    .line 110
    move-object/from16 v5, p3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    move-object/from16 v16, v3

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catch_3
    move-exception v0

    .line 118
    move-object/from16 v6, p4

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :catch_4
    move-exception v0

    .line 122
    move-object/from16 v5, p3

    .line 123
    .line 124
    move-object/from16 v6, p4

    .line 125
    .line 126
    move-object/from16 v16, v3

    .line 127
    .line 128
    move v15, v4

    .line 129
    goto :goto_2

    .line 130
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lxw;->w()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-nez v0, :cond_3

    .line 141
    .line 142
    move-object/from16 v0, p9

    .line 143
    .line 144
    :cond_3
    move-object/from16 v2, v16

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Luw;->a(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    goto :goto_8

    .line 152
    :cond_4
    :goto_5
    new-instance v0, Lvw;

    .line 153
    .line 154
    invoke-direct {v0}, Lvw;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 155
    .line 156
    .line 157
    if-eqz v8, :cond_5

    .line 158
    .line 159
    array-length v1, v8

    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-static {v8, v2, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 162
    .line 163
    .line 164
    :cond_5
    return-object v0

    .line 165
    :catch_5
    :try_start_6
    new-instance v0, Lvw;

    .line 166
    .line 167
    invoke-direct {v0}, Lvw;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 168
    .line 169
    .line 170
    if-eqz v8, :cond_6

    .line 171
    .line 172
    array-length v1, v8

    .line 173
    const/4 v2, 0x0

    .line 174
    invoke-static {v8, v2, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 175
    .line 176
    .line 177
    :cond_6
    return-object v0

    .line 178
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Lxw;->w()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_7

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move-object/from16 v3, p1

    .line 189
    .line 190
    invoke-virtual {v1, v6, v3, v0}, Lxw;->a(Liu;Lq63;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_7
    new-instance v0, Lvw;

    .line 194
    .line 195
    invoke-direct {v0}, Lvw;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 196
    .line 197
    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    array-length v1, v8

    .line 201
    const/4 v2, 0x0

    .line 202
    invoke-static {v8, v2, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 203
    .line 204
    .line 205
    :cond_8
    return-object v0

    .line 206
    :catch_6
    move-exception v0

    .line 207
    move-object/from16 v5, p3

    .line 208
    .line 209
    move-object/from16 v6, p4

    .line 210
    .line 211
    move v15, v2

    .line 212
    move-object v2, v3

    .line 213
    move-object/from16 v3, p1

    .line 214
    .line 215
    :goto_7
    if-eqz p6, :cond_a

    .line 216
    .line 217
    if-eqz v8, :cond_9

    .line 218
    .line 219
    array-length v0, v8

    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-static {v8, v2, v0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 222
    .line 223
    .line 224
    :cond_9
    move v0, v15

    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_a
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    move-object/from16 v0, p8

    .line 234
    .line 235
    :cond_b
    invoke-virtual {v2, v0}, Luw;->a(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lvw;

    .line 239
    .line 240
    invoke-direct {v0}, Lvw;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 241
    .line 242
    .line 243
    if-eqz v8, :cond_c

    .line 244
    .line 245
    array-length v1, v8

    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-static {v8, v2, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 248
    .line 249
    .line 250
    :cond_c
    return-object v0

    .line 251
    :goto_8
    if-eqz v8, :cond_d

    .line 252
    .line 253
    array-length v1, v8

    .line 254
    const/4 v2, 0x0

    .line 255
    invoke-static {v8, v2, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 256
    .line 257
    .line 258
    :cond_d
    throw v0

    .line 259
    :cond_e
    move-object/from16 v6, p4

    .line 260
    .line 261
    move-object v2, v3

    .line 262
    if-eqz v0, :cond_f

    .line 263
    .line 264
    invoke-virtual {v2, v6}, Luw;->d(Liu;)V

    .line 265
    .line 266
    .line 267
    :cond_f
    new-instance v0, Lvw;

    .line 268
    .line 269
    invoke-direct {v0}, Lvw;-><init>()V

    .line 270
    .line 271
    .line 272
    return-object v0
.end method

.method public final u(Lfx;Lql;)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    const/4 v8, 0x4

    .line 10
    const/4 v9, 0x0

    .line 11
    const-string v5, "AppRestoreTask"

    .line 12
    .line 13
    const-string v6, "Starting Shared Libs restore"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v4, v0

    .line 17
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v4, v2, Lfx;->b:Li40;

    .line 21
    .line 22
    iget-wide v10, v2, Lfx;->d:J

    .line 23
    .line 24
    iget-wide v12, v2, Lfx;->e:J

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget-object v1, v2, Lfx;->a:Lq63;

    .line 29
    .line 30
    const-string v2, "Couldn\'t get archive type for "

    .line 31
    .line 32
    invoke-static {v1, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v4, 0x4

    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v1, "AppRestoreTask"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget v14, v4, Li40;->a:I

    .line 46
    .line 47
    sget-object v4, Lp93;->a:Lp93;

    .line 48
    .line 49
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    const-string v4, "Restoring Shared Libs ("

    .line 58
    .line 59
    const-string v5, ", v"

    .line 60
    .line 61
    const-string v6, ")"

    .line 62
    .line 63
    invoke-static {v4, v15, v5, v14, v6}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 v8, 0x4

    .line 68
    const/4 v9, 0x0

    .line 69
    const-string v5, "AppRestoreTask"

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    move-object/from16 v37, v4

    .line 73
    .line 74
    move-object v4, v0

    .line 75
    move-object v0, v6

    .line 76
    move-object/from16 v6, v37

    .line 77
    .line 78
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 82
    .line 83
    const v5, 0x7f130499

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Ldj7;->g(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget-object v6, v1, Lxw;->b:Lc40;

    .line 91
    .line 92
    iget-object v6, v6, Lpw6;->i:Lex6;

    .line 93
    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, " ("

    .line 103
    .line 104
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v6, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v15, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 126
    .line 127
    iget-object v5, v1, Lxw;->h:Lji;

    .line 128
    .line 129
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v0, v6, v10, v11}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-object v7, v5

    .line 141
    const-string v5, "AppRestoreTask"

    .line 142
    .line 143
    move-object/from16 v17, v6

    .line 144
    .line 145
    const-string v6, "Unpacking Shared Libs"

    .line 146
    .line 147
    move-object/from16 v16, v7

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    move-object/from16 v23, v15

    .line 151
    .line 152
    move-object/from16 v24, v16

    .line 153
    .line 154
    move-object/from16 v15, v17

    .line 155
    .line 156
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v15, v10, v11}, Lpj7;->b(Lq63;J)Loj7;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const-string v10, ", ignoring..."

    .line 164
    .line 165
    const-string v11, "Low space issue: "

    .line 166
    .line 167
    if-eqz v5, :cond_1

    .line 168
    .line 169
    iget-object v0, v5, Loj7;->a:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v11, v0, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    move-object v0, v4

    .line 176
    const/4 v4, 0x4

    .line 177
    const/4 v5, 0x0

    .line 178
    const-string v1, "AppRestoreTask"

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_1a

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lq63;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_1
    new-instance v5, Lkh6;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    const/4 v6, 0x6

    .line 213
    if-ne v14, v6, :cond_c

    .line 214
    .line 215
    iget-wide v8, v5, Lkh6;->a:J

    .line 216
    .line 217
    iget-object v4, v2, Lfx;->a:Lq63;

    .line 218
    .line 219
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 220
    .line 221
    invoke-static {v4}, Lmz6;->n(Lq63;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    goto :goto_1

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    new-instance v6, Lbn6;

    .line 228
    .line 229
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    move-object v0, v6

    .line 233
    :goto_1
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 234
    .line 235
    .line 236
    move-result-object v19

    .line 237
    if-nez v19, :cond_b

    .line 238
    .line 239
    check-cast v0, Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_2

    .line 246
    .line 247
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 248
    .line 249
    const/16 v20, 0x4

    .line 250
    .line 251
    const/16 v21, 0x0

    .line 252
    .line 253
    const-string v17, "AppRestoreTask"

    .line 254
    .line 255
    const-string v18, "Shared Libs backup archive has no entries"

    .line 256
    .line 257
    const/16 v19, 0x0

    .line 258
    .line 259
    invoke-static/range {v16 .. v21}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_7

    .line 263
    .line 264
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    const-wide/16 v16, 0x0

    .line 269
    .line 270
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    const-wide/16 v18, 0x1

    .line 275
    .line 276
    if-eqz v14, :cond_4

    .line 277
    .line 278
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v14

    .line 282
    check-cast v14, Lxy6;

    .line 283
    .line 284
    iget-wide v10, v14, Lxy6;->e:J

    .line 285
    .line 286
    cmp-long v14, v10, v18

    .line 287
    .line 288
    if-gez v14, :cond_3

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_3
    move-wide/from16 v18, v10

    .line 292
    .line 293
    :goto_3
    add-long v16, v16, v18

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_4
    cmp-long v6, v16, v18

    .line 297
    .line 298
    if-gez v6, :cond_5

    .line 299
    .line 300
    move-wide/from16 v10, v18

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_5
    move-wide/from16 v10, v16

    .line 304
    .line 305
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    const-wide/16 v20, 0x0

    .line 310
    .line 311
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_a

    .line 316
    .line 317
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    move-object v14, v0

    .line 322
    check-cast v14, Lxy6;

    .line 323
    .line 324
    invoke-virtual {v1}, Lxw;->w()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_6

    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :cond_6
    new-instance v0, Lq63;

    .line 333
    .line 334
    iget-object v7, v14, Lxy6;->a:Ljava/lang/String;

    .line 335
    .line 336
    move-object/from16 v25, v4

    .line 337
    .line 338
    const/16 v4, 0x2f

    .line 339
    .line 340
    move-object/from16 v16, v6

    .line 341
    .line 342
    const/16 v6, 0x5f

    .line 343
    .line 344
    invoke-static {v7, v4, v6}, Luq7;->S(Ljava/lang/String;CC)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    const/4 v6, 0x2

    .line 349
    invoke-direct {v0, v6, v15, v4}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Lq63;->j()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_7

    .line 357
    .line 358
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-nez v4, :cond_7

    .line 363
    .line 364
    sget-object v26, Lvr6;->INSTANCE:Lvr6;

    .line 365
    .line 366
    const-string v1, "Failed to create Shared Libs entry dir: "

    .line 367
    .line 368
    invoke-static {v0, v1}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v28

    .line 372
    const/16 v30, 0x4

    .line 373
    .line 374
    const/16 v31, 0x0

    .line 375
    .line 376
    const-string v27, "AppRestoreTask"

    .line 377
    .line 378
    const/16 v29, 0x0

    .line 379
    .line 380
    invoke-static/range {v26 .. v31}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_7

    .line 384
    .line 385
    :cond_7
    :try_start_1
    sget-object v4, Lmz6;->a:Ljava/util/HashSet;

    .line 386
    .line 387
    new-instance v24, Ljd0;

    .line 388
    .line 389
    iget-object v4, v14, Lxy6;->a:Ljava/lang/String;

    .line 390
    .line 391
    sget-object v28, Liu;->APP:Liu;

    .line 392
    .line 393
    sget-object v29, Lf27;->Basic:Lf27;

    .line 394
    .line 395
    sget-object v32, Liz6;->Auto:Liz6;

    .line 396
    .line 397
    new-instance v6, Lbh;

    .line 398
    .line 399
    const/4 v7, 0x5

    .line 400
    invoke-direct {v6, v1, v7}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 401
    .line 402
    .line 403
    const/16 v34, 0x0

    .line 404
    .line 405
    const/16 v35, 0x240

    .line 406
    .line 407
    const/16 v30, 0x0

    .line 408
    .line 409
    const/16 v31, 0x0

    .line 410
    .line 411
    move-object/from16 v26, v0

    .line 412
    .line 413
    move-object/from16 v27, v4

    .line 414
    .line 415
    move-object/from16 v33, v6

    .line 416
    .line 417
    invoke-direct/range {v24 .. v35}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V

    .line 418
    .line 419
    .line 420
    invoke-static/range {v24 .. v24}, Lmz6;->f(Ljd0;)Ljz6;

    .line 421
    .line 422
    .line 423
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    goto :goto_6

    .line 425
    :catchall_1
    move-exception v0

    .line 426
    new-instance v4, Lbn6;

    .line 427
    .line 428
    invoke-direct {v4, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 429
    .line 430
    .line 431
    move-object v0, v4

    .line 432
    :goto_6
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 433
    .line 434
    .line 435
    move-result-object v29

    .line 436
    if-nez v29, :cond_9

    .line 437
    .line 438
    iget-wide v6, v14, Lxy6;->e:J

    .line 439
    .line 440
    cmp-long v0, v6, v18

    .line 441
    .line 442
    if-gez v0, :cond_8

    .line 443
    .line 444
    move-wide/from16 v6, v18

    .line 445
    .line 446
    :cond_8
    add-long v6, v20, v6

    .line 447
    .line 448
    long-to-float v0, v6

    .line 449
    long-to-float v4, v10

    .line 450
    div-float/2addr v0, v4

    .line 451
    long-to-float v4, v12

    .line 452
    mul-float/2addr v0, v4

    .line 453
    move-wide/from16 v20, v6

    .line 454
    .line 455
    float-to-double v6, v0

    .line 456
    invoke-static {v6, v7}, Ltu0;->w(D)J

    .line 457
    .line 458
    .line 459
    move-result-wide v6

    .line 460
    add-long/2addr v6, v8

    .line 461
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v3, v0}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-object/from16 v6, v16

    .line 469
    .line 470
    move-object/from16 v4, v25

    .line 471
    .line 472
    goto/16 :goto_5

    .line 473
    .line 474
    :cond_9
    sget-object v26, Lvr6;->INSTANCE:Lvr6;

    .line 475
    .line 476
    iget-object v0, v14, Lxy6;->a:Ljava/lang/String;

    .line 477
    .line 478
    const-string v1, "Failed to extract Shared Libs entry \'"

    .line 479
    .line 480
    const-string v2, "\'"

    .line 481
    .line 482
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v28

    .line 486
    const/16 v31, 0x8

    .line 487
    .line 488
    const/16 v32, 0x0

    .line 489
    .line 490
    const-string v27, "AppRestoreTask"

    .line 491
    .line 492
    const/16 v30, 0x0

    .line 493
    .line 494
    invoke-static/range {v26 .. v32}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_a
    iget-wide v0, v5, Lkh6;->a:J

    .line 499
    .line 500
    add-long/2addr v0, v12

    .line 501
    iput-wide v0, v5, Lkh6;->a:J

    .line 502
    .line 503
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v3, v0}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    new-instance v0, Ljava/io/File;

    .line 511
    .line 512
    invoke-virtual {v15}, Lq63;->v()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Lpa3;

    .line 520
    .line 521
    invoke-direct {v1, v0}, Lpa3;-><init>(Ljava/io/File;)V

    .line 522
    .line 523
    .line 524
    new-instance v0, Lhw;

    .line 525
    .line 526
    const/4 v6, 0x0

    .line 527
    invoke-direct {v0, v6}, Lhw;-><init>(I)V

    .line 528
    .line 529
    .line 530
    new-instance v4, Lme3;

    .line 531
    .line 532
    const/4 v7, 0x1

    .line 533
    invoke-direct {v4, v1, v7, v0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 534
    .line 535
    .line 536
    new-instance v0, Lai;

    .line 537
    .line 538
    invoke-direct {v0, v7}, Lai;-><init>(I)V

    .line 539
    .line 540
    .line 541
    new-instance v1, Lq98;

    .line 542
    .line 543
    invoke-direct {v1, v4, v0}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 544
    .line 545
    .line 546
    invoke-static {v1}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    move-object v14, v5

    .line 551
    move v15, v6

    .line 552
    move-object/from16 v7, v23

    .line 553
    .line 554
    goto/16 :goto_b

    .line 555
    .line 556
    :cond_b
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 557
    .line 558
    const/16 v21, 0x8

    .line 559
    .line 560
    const/16 v22, 0x0

    .line 561
    .line 562
    const-string v17, "AppRestoreTask"

    .line 563
    .line 564
    const-string v18, "Failed to list shared libs entries from backup archive"

    .line 565
    .line 566
    const/16 v20, 0x0

    .line 567
    .line 568
    invoke-static/range {v16 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    :goto_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_1a

    .line 580
    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Lq63;

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 591
    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_c
    const/4 v6, 0x0

    .line 595
    iget-object v7, v2, Lfx;->a:Lq63;

    .line 596
    .line 597
    new-instance v8, Lgw;

    .line 598
    .line 599
    invoke-direct {v8, v2, v3, v5, v1}, Lgw;-><init>(Lfx;Lql;Lkh6;Lxw;)V

    .line 600
    .line 601
    .line 602
    const/16 v22, 0x1c

    .line 603
    .line 604
    const/16 v18, 0x0

    .line 605
    .line 606
    const/16 v19, 0x0

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    move-object/from16 v16, v7

    .line 611
    .line 612
    move-object/from16 v21, v8

    .line 613
    .line 614
    move-object/from16 v17, v15

    .line 615
    .line 616
    invoke-static/range {v16 .. v22}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    iget-wide v8, v5, Lkh6;->a:J

    .line 621
    .line 622
    add-long/2addr v8, v12

    .line 623
    iput-wide v8, v5, Lkh6;->a:J

    .line 624
    .line 625
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    invoke-virtual {v3, v8}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    iget-boolean v7, v7, Lfw5;->a:Z

    .line 633
    .line 634
    if-nez v7, :cond_d

    .line 635
    .line 636
    move-object v0, v4

    .line 637
    const/4 v4, 0x4

    .line 638
    const/4 v5, 0x0

    .line 639
    const-string v1, "AppRestoreTask"

    .line 640
    .line 641
    const-string v2, "Extracting Shared Libs failed!"

    .line 642
    .line 643
    const/4 v3, 0x0

    .line 644
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    if-eqz v1, :cond_1a

    .line 656
    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    check-cast v1, Lq63;

    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 667
    .line 668
    .line 669
    goto :goto_9

    .line 670
    :cond_d
    move-object v12, v0

    .line 671
    move-object v0, v4

    .line 672
    invoke-virtual/range {v17 .. v17}, Lq63;->B()Ljava/util/ArrayList;

    .line 673
    .line 674
    .line 675
    move-result-object v13

    .line 676
    if-eqz v13, :cond_e

    .line 677
    .line 678
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-eqz v4, :cond_f

    .line 683
    .line 684
    :cond_e
    move-object/from16 v7, v23

    .line 685
    .line 686
    goto/16 :goto_12

    .line 687
    .line 688
    :cond_f
    iget-boolean v4, v2, Lfx;->c:Z

    .line 689
    .line 690
    if-eqz v4, :cond_11

    .line 691
    .line 692
    const/4 v8, 0x4

    .line 693
    const/4 v9, 0x0

    .line 694
    move-object v4, v5

    .line 695
    const-string v5, "AppRestoreTask"

    .line 696
    .line 697
    move/from16 v36, v6

    .line 698
    .line 699
    const-string v6, "Decompressing Shared Libs"

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    move-object v14, v4

    .line 703
    move/from16 v15, v36

    .line 704
    .line 705
    move-object v4, v0

    .line 706
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    invoke-static {v13}, Lth5;->c(Ljava/util/ArrayList;)J

    .line 710
    .line 711
    .line 712
    move-result-wide v4

    .line 713
    invoke-virtual/range {v24 .. v24}, Lji;->getPackageName()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    invoke-virtual {v12, v6, v4, v5}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 718
    .line 719
    .line 720
    move-result-object v6

    .line 721
    move-object/from16 v7, v23

    .line 722
    .line 723
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    invoke-static {v6, v4, v5}, Lpj7;->b(Lq63;J)Loj7;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    if-eqz v4, :cond_10

    .line 731
    .line 732
    iget-object v1, v4, Loj7;->a:Ljava/lang/String;

    .line 733
    .line 734
    invoke-static {v11, v1, v10}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    const/4 v4, 0x4

    .line 739
    const/4 v5, 0x0

    .line 740
    const-string v1, "AppRestoreTask"

    .line 741
    .line 742
    const/4 v3, 0x0

    .line 743
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-eqz v1, :cond_1a

    .line 755
    .line 756
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Lq63;

    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 766
    .line 767
    .line 768
    goto :goto_a

    .line 769
    :cond_10
    new-instance v0, Ljw;

    .line 770
    .line 771
    invoke-direct {v0, v2, v3, v14, v1}, Ljw;-><init>(Lfx;Lql;Lkh6;Lxw;)V

    .line 772
    .line 773
    .line 774
    invoke-static {v13, v6, v0}, Lth5;->b(Ljava/util/ArrayList;Lq63;Lrt3;)Ljava/util/ArrayList;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    goto :goto_b

    .line 779
    :cond_11
    move-object v14, v5

    .line 780
    move v15, v6

    .line 781
    move-object/from16 v7, v23

    .line 782
    .line 783
    move-object v0, v13

    .line 784
    :goto_b
    iget-wide v4, v14, Lkh6;->a:J

    .line 785
    .line 786
    iget-wide v8, v2, Lfx;->f:J

    .line 787
    .line 788
    add-long/2addr v4, v8

    .line 789
    iput-wide v4, v14, Lkh6;->a:J

    .line 790
    .line 791
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-virtual {v3, v1}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_12

    .line 803
    .line 804
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 805
    .line 806
    const/4 v12, 0x4

    .line 807
    const/4 v13, 0x0

    .line 808
    const-string v9, "AppRestoreTask"

    .line 809
    .line 810
    const-string v10, "No decompressed Shared Libs APKs!"

    .line 811
    .line 812
    const/4 v11, 0x0

    .line 813
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_1a

    .line 825
    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    check-cast v1, Lq63;

    .line 831
    .line 832
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    .line 834
    .line 835
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 836
    .line 837
    .line 838
    goto :goto_c

    .line 839
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .line 843
    .line 844
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    :cond_13
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 849
    .line 850
    .line 851
    move-result v5

    .line 852
    if-eqz v5, :cond_14

    .line 853
    .line 854
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    move-object v6, v5

    .line 859
    check-cast v6, Lq63;

    .line 860
    .line 861
    invoke-virtual {v6}, Lq63;->m()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v6

    .line 865
    const-string v8, "apk"

    .line 866
    .line 867
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v6

    .line 871
    if-eqz v6, :cond_13

    .line 872
    .line 873
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    goto :goto_d

    .line 877
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    .line 878
    .line 879
    const/16 v5, 0xa

    .line 880
    .line 881
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 882
    .line 883
    .line 884
    move-result v5

    .line 885
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 893
    .line 894
    .line 895
    move-result v5

    .line 896
    if-eqz v5, :cond_16

    .line 897
    .line 898
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    check-cast v5, Lq63;

    .line 903
    .line 904
    sget-object v6, Lmp6;->a:Lmp6;

    .line 905
    .line 906
    invoke-static {}, Lmp6;->g()Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-eqz v6, :cond_15

    .line 911
    .line 912
    new-instance v6, Lq63;

    .line 913
    .line 914
    sget-object v8, Lry5;->u:Ljava/lang/String;

    .line 915
    .line 916
    const/4 v8, 0x0

    .line 917
    invoke-static {v15, v8}, Lqy5;->f(ZLzn7;)Lry5;

    .line 918
    .line 919
    .line 920
    move-result-object v9

    .line 921
    iget-object v9, v9, Lry5;->e:Ljava/lang/String;

    .line 922
    .line 923
    invoke-virtual {v5}, Lq63;->p()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v10

    .line 927
    const/4 v11, 0x3

    .line 928
    invoke-direct {v6, v9, v10, v11}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v5, v6, v8}, Lq63;->d(Lq63;Lkl;)V

    .line 932
    .line 933
    .line 934
    move-object v5, v6

    .line 935
    :cond_15
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    goto :goto_e

    .line 939
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    if-eqz v1, :cond_17

    .line 944
    .line 945
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 946
    .line 947
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    const-string v1, "No Shared Libs APKs found from "

    .line 952
    .line 953
    const-string v2, " decompressed files!"

    .line 954
    .line 955
    invoke-static {v0, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v10

    .line 959
    const/4 v12, 0x4

    .line 960
    const/4 v13, 0x0

    .line 961
    const-string v9, "AppRestoreTask"

    .line 962
    .line 963
    const/4 v11, 0x0

    .line 964
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    if-eqz v1, :cond_1a

    .line 976
    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    check-cast v1, Lq63;

    .line 982
    .line 983
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 984
    .line 985
    .line 986
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 987
    .line 988
    .line 989
    goto :goto_f

    .line 990
    :cond_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    if-eqz v1, :cond_19

    .line 999
    .line 1000
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    check-cast v1, Lq63;

    .line 1005
    .line 1006
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 1007
    .line 1008
    invoke-virtual {v1}, Lq63;->q()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v4

    .line 1012
    const-string v5, "Installing Shared Lib: "

    .line 1013
    .line 1014
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v10

    .line 1018
    const/4 v12, 0x4

    .line 1019
    const/4 v13, 0x0

    .line 1020
    const-string v9, "AppRestoreTask"

    .line 1021
    .line 1022
    const/4 v11, 0x0

    .line 1023
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    sget-object v4, Lmp6;->a:Lmp6;

    .line 1027
    .line 1028
    const-string v5, "pm install -t "

    .line 1029
    .line 1030
    invoke-static {v1, v5}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    filled-new-array {v1}, [Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 1039
    .line 1040
    invoke-virtual {v4, v1, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v15

    .line 1044
    invoke-static {v15}, Ljd4;->v(Ljava/util/List;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v1

    .line 1048
    if-eqz v1, :cond_18

    .line 1049
    .line 1050
    const/16 v19, 0x0

    .line 1051
    .line 1052
    const/16 v20, 0x3f

    .line 1053
    .line 1054
    const/16 v16, 0x0

    .line 1055
    .line 1056
    const/16 v17, 0x0

    .line 1057
    .line 1058
    const/16 v18, 0x0

    .line 1059
    .line 1060
    invoke-static/range {v15 .. v20}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    const-string v4, "Error installing shared lib: "

    .line 1065
    .line 1066
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v10

    .line 1070
    const/4 v12, 0x4

    .line 1071
    const/4 v13, 0x0

    .line 1072
    const-string v9, "AppRestoreTask"

    .line 1073
    .line 1074
    const/4 v11, 0x0

    .line 1075
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_10

    .line 1079
    :cond_18
    const/16 v19, 0x0

    .line 1080
    .line 1081
    const/16 v20, 0x3f

    .line 1082
    .line 1083
    const/16 v16, 0x0

    .line 1084
    .line 1085
    const/16 v17, 0x0

    .line 1086
    .line 1087
    const/16 v18, 0x0

    .line 1088
    .line 1089
    invoke-static/range {v15 .. v20}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    const-string v4, "Successfully installed Shared Lib: "

    .line 1094
    .line 1095
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v10

    .line 1099
    const/4 v12, 0x4

    .line 1100
    const/4 v13, 0x0

    .line 1101
    const-string v9, "AppRestoreTask"

    .line 1102
    .line 1103
    const/4 v11, 0x0

    .line 1104
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_10

    .line 1108
    :cond_19
    iget-wide v0, v14, Lkh6;->a:J

    .line 1109
    .line 1110
    iget-wide v4, v2, Lfx;->g:J

    .line 1111
    .line 1112
    add-long/2addr v0, v4

    .line 1113
    iput-wide v0, v14, Lkh6;->a:J

    .line 1114
    .line 1115
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-virtual {v3, v0}, Lql;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v1

    .line 1130
    if-eqz v1, :cond_1a

    .line 1131
    .line 1132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    check-cast v1, Lq63;

    .line 1137
    .line 1138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1139
    .line 1140
    .line 1141
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_11

    .line 1145
    :goto_12
    const/4 v4, 0x4

    .line 1146
    const/4 v5, 0x0

    .line 1147
    const-string v1, "AppRestoreTask"

    .line 1148
    .line 1149
    const-string v2, "No files unpacked!"

    .line 1150
    .line 1151
    const/4 v3, 0x0

    .line 1152
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    if-eqz v1, :cond_1a

    .line 1164
    .line 1165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    check-cast v1, Lq63;

    .line 1170
    .line 1171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    .line 1173
    .line 1174
    invoke-static {v1}, Lcy0;->e(Lq63;)V

    .line 1175
    .line 1176
    .line 1177
    goto :goto_13

    .line 1178
    :cond_1a
    return-void
.end method

.method public final v(ZLiu;[CZ)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    array-length p1, p3

    .line 12
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_1
    const/16 p1, 0xa

    .line 23
    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lxw;->e()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    new-instance p4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {p3, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, [C

    .line 54
    .line 55
    array-length v1, p3

    .line 56
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object p1, p4

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p0}, Lxw;->e()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    new-instance p4, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-static {p3, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-direct {p4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_4

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, [C

    .line 94
    .line 95
    array-length v1, p3

    .line 96
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    if-eqz p4, :cond_6

    .line 118
    .line 119
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    move-object v1, p4

    .line 124
    check-cast v1, [C

    .line 125
    .line 126
    array-length v1, v1

    .line 127
    if-nez v1, :cond_5

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-eqz p3, :cond_7

    .line 139
    .line 140
    iget-object p0, p0, Lxw;->u:Luw;

    .line 141
    .line 142
    invoke-virtual {p0, p2}, Luw;->d(Liu;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_7
    return-object p1
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lxw;->u:Luw;

    .line 2
    .line 3
    invoke-virtual {p0}, Luw;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Luw;->a:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method
