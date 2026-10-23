.class public final Lca3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ll76;->a:Ll76;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ll76;->b(Landroid/content/Context;)Lrz1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lwc0;

    .line 11
    .line 12
    iget-object v0, v0, Lwc0;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lca3;->a:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lca3;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, ".crashlytics.v3"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x28

    .line 45
    .line 46
    if-le v2, v3, :cond_0

    .line 47
    .line 48
    invoke-static {v0}, Ljm1;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v2, "[^a-zA-Z0-9.]"

    .line 54
    .line 55
    const-string v3, "_"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string v0, ".com.google.firebase.crashlytics.files.v1"

    .line 70
    .line 71
    :goto_1
    new-instance v1, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lca3;->j(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lca3;->c:Ljava/lang/Object;

    .line 80
    .line 81
    new-instance p1, Ljava/io/File;

    .line 82
    .line 83
    const-string v0, "open-sessions"

    .line 84
    .line 85
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lca3;->j(Ljava/io/File;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lca3;->d:Ljava/lang/Object;

    .line 92
    .line 93
    new-instance p1, Ljava/io/File;

    .line 94
    .line 95
    const-string v0, "reports"

    .line 96
    .line 97
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lca3;->j(Ljava/io/File;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lca3;->e:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance p1, Ljava/io/File;

    .line 106
    .line 107
    const-string v0, "priority-reports"

    .line 108
    .line 109
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lca3;->j(Ljava/io/File;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lca3;->f:Ljava/lang/Object;

    .line 116
    .line 117
    new-instance p1, Ljava/io/File;

    .line 118
    .line 119
    const-string v0, "native-reports"

    .line 120
    .line 121
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lca3;->j(Ljava/io/File;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lca3;->k:Ljava/lang/Object;

    .line 128
    .line 129
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lca3;->a:Ljava/lang/Object;

    iput-object p2, p0, Lca3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lca3;->c:Ljava/lang/Object;

    iput-object p4, p0, Lca3;->d:Ljava/lang/Object;

    iput-object p5, p0, Lca3;->e:Ljava/lang/Object;

    iput-object p6, p0, Lca3;->f:Ljava/lang/Object;

    iput-object p7, p0, Lca3;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmc0;Lot9;Li75;Ljava/util/Map;)Lmc0;
    .locals 10

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    invoke-virtual {p0}, Lmc0;->a()Llc0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p1, p1, Lot9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lw83;

    .line 10
    .line 11
    invoke-interface {p1}, Lw83;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v3, Lzc0;

    .line 19
    .line 20
    invoke-direct {v3, p1}, Lzc0;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, v1, Llc0;->e:Luz1;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "No log data to include with this event."

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v3, p2, Li75;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lfh8;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, v3, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lbp4;

    .line 55
    .line 56
    monitor-enter p1

    .line 57
    :try_start_0
    new-instance p3, Ljava/util/HashMap;

    .line 58
    .line 59
    iget-object v0, p1, Lbp4;->a:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p1

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_2
    iget-object p1, v3, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lbp4;

    .line 82
    .line 83
    monitor-enter p1

    .line 84
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    .line 85
    .line 86
    iget-object v4, p1, Lbp4;->a:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    monitor-exit p1

    .line 96
    new-instance p1, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const/4 v3, 0x0

    .line 110
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    const/16 v6, 0x400

    .line 129
    .line 130
    invoke-static {v6, v5}, Lbp4;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    const/16 v8, 0x40

    .line 139
    .line 140
    if-lt v7, v8, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v6, v4}, Lbp4;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    if-lez v3, :cond_6

    .line 167
    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v4, "Ignored "

    .line 171
    .line 172
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v3, " keys when adding event specific keys. Maximum allowable: 1024"

    .line 179
    .line 180
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-static {v0, p3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .line 189
    .line 190
    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    :goto_3
    invoke-static {p3}, Lca3;->h(Ljava/util/Map;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    iget-object p1, p2, Li75;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Lfh8;

    .line 201
    .line 202
    iget-object p1, p1, Lfh8;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    move-object p2, p1

    .line 209
    check-cast p2, Lbp4;

    .line 210
    .line 211
    monitor-enter p2

    .line 212
    :try_start_3
    new-instance p1, Ljava/util/HashMap;

    .line 213
    .line 214
    iget-object p3, p2, Lbp4;->a:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 220
    .line 221
    .line 222
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    monitor-exit p2

    .line 224
    invoke-static {p1}, Lca3;->h(Ljava/util/Map;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_7

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_8

    .line 239
    .line 240
    :cond_7
    iget-object p0, p0, Lmc0;->c:Lsz1;

    .line 241
    .line 242
    check-cast p0, Lnc0;

    .line 243
    .line 244
    iget-object v3, p0, Lnc0;->a:Loc0;

    .line 245
    .line 246
    iget-object v6, p0, Lnc0;->d:Ljava/lang/Boolean;

    .line 247
    .line 248
    iget-object v7, p0, Lnc0;->e:Lrz1;

    .line 249
    .line 250
    iget-object v8, p0, Lnc0;->f:Ljava/util/List;

    .line 251
    .line 252
    iget v9, p0, Lnc0;->g:I

    .line 253
    .line 254
    new-instance v2, Lnc0;

    .line 255
    .line 256
    invoke-direct/range {v2 .. v9}, Lnc0;-><init>(Loc0;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lrz1;Ljava/util/List;I)V

    .line 257
    .line 258
    .line 259
    iput-object v2, v1, Llc0;->c:Lsz1;

    .line 260
    .line 261
    :cond_8
    invoke-virtual {v1}, Llc0;->a()Lmc0;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object p0, v0

    .line 268
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    throw p0

    .line 270
    :catchall_2
    move-exception v0

    .line 271
    move-object p0, v0

    .line 272
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 273
    throw p0
.end method

.method public static b(Lmc0;Li75;)Lyz1;
    .locals 8

    .line 1
    iget-object p1, p1, Li75;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Li66;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p1, Li66;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p1

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lyn6;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v3, Lad0;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    check-cast v2, Lfe0;

    .line 47
    .line 48
    iget-object v4, v2, Lfe0;->e:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    iget-object v6, v2, Lfe0;->b:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    new-instance v7, Lcd0;

    .line 58
    .line 59
    invoke-direct {v7, v6, v4}, Lcd0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v7, v3, Lad0;->a:Lcd0;

    .line 63
    .line 64
    iget-object v4, v2, Lfe0;->c:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    iput-object v4, v3, Lad0;->b:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v4, v2, Lfe0;->d:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v4, v3, Lad0;->c:Ljava/lang/String;

    .line 73
    .line 74
    iget-wide v4, v2, Lfe0;->f:J

    .line 75
    .line 76
    iput-wide v4, v3, Lad0;->d:J

    .line 77
    .line 78
    iget-byte v2, v3, Lad0;->e:B

    .line 79
    .line 80
    or-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    int-to-byte v2, v2

    .line 83
    iput-byte v2, v3, Lad0;->e:B

    .line 84
    .line 85
    invoke-virtual {v3}, Lad0;->a()Lbd0;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string p0, "Null parameterKey"

    .line 96
    .line 97
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v5

    .line 101
    :cond_1
    const-string p0, "Null rolloutId"

    .line 102
    .line 103
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v5

    .line 107
    :cond_2
    const-string p0, "Null variantId"

    .line 108
    .line 109
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v5

    .line 113
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_4
    invoke-virtual {p0}, Lmc0;->a()Llc0;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance v0, Ldd0;

    .line 125
    .line 126
    invoke-direct {v0, p1}, Ldd0;-><init>(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Llc0;->f:Lxz1;

    .line 130
    .line 131
    invoke-virtual {p0}, Llc0;->a()Lmc0;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw p0
.end method

.method public static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2000

    .line 12
    .line 13
    :try_start_1
    new-array v1, v1, [B

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_2
    move-exception p0

    .line 53
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :catchall_3
    move-exception v0

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_4
    throw p0
.end method

.method public static e(Landroid/content/Context;Lk94;Lca3;Lcq;Lot9;Li75;Loe;Lf80;Lc00;Loy1;Ls02;)Lca3;
    .locals 8

    .line 1
    new-instance v0, Ld02;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p6

    .line 7
    move-object v5, p7

    .line 8
    invoke-direct/range {v0 .. v5}, Ld02;-><init>(Landroid/content/Context;Lk94;Lcq;Loe;Lf80;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lk02;

    .line 12
    .line 13
    move-object/from16 p3, p9

    .line 14
    .line 15
    invoke-direct {v2, p2, p7, p3}, Lk02;-><init>(Lca3;Lf80;Loy1;)V

    .line 16
    .line 17
    .line 18
    sget-object p2, Lrc2;->b:Lf02;

    .line 19
    .line 20
    invoke-static {p0}, Lya8;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lya8;->a()Lya8;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p2, Loy0;

    .line 28
    .line 29
    sget-object p3, Lrc2;->c:Ljava/lang/String;

    .line 30
    .line 31
    sget-object p6, Lrc2;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p2, p3, p6}, Loy0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lya8;->c(Loy0;)Lxa8;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p2, Ldw2;

    .line 41
    .line 42
    const-string p3, "json"

    .line 43
    .line 44
    invoke-direct {p2, p3}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p3, Lrc2;->e:Lf6;

    .line 48
    .line 49
    const-string p6, "FIREBASE_CRASHLYTICS_REPORT"

    .line 50
    .line 51
    invoke-virtual {p0, p6, p2, p3}, Lxa8;->a(Ljava/lang/String;Ldw2;Lo98;)Lrh3;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance p2, Ldk6;

    .line 56
    .line 57
    invoke-virtual {p7}, Lf80;->c()Lfa7;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    move-object/from16 p6, p8

    .line 62
    .line 63
    invoke-direct {p2, p0, p3, p6}, Ldk6;-><init>(Lrh3;Lfa7;Lc00;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lrc2;

    .line 67
    .line 68
    invoke-direct {v3, p2}, Lrc2;-><init>(Ldk6;)V

    .line 69
    .line 70
    .line 71
    move-object v1, v0

    .line 72
    new-instance v0, Lca3;

    .line 73
    .line 74
    move-object v6, p1

    .line 75
    move-object v4, p4

    .line 76
    move-object v5, p5

    .line 77
    move-object/from16 v7, p10

    .line 78
    .line 79
    invoke-direct/range {v0 .. v7}, Lca3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static h(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    new-instance v3, Lcc0;

    .line 51
    .line 52
    invoke-direct {v3, v2, v1}, Lcc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string p0, "Null value"

    .line 60
    .line 61
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_1
    const-string p0, "Null key"

    .line 66
    .line 67
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_2
    new-instance p0, Lg97;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static declared-synchronized j(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "Could not create Crashlytics-specific directory: "

    .line 2
    .line 3
    const-string v1, "Unexpected non-directory file: "

    .line 4
    .line 5
    const-class v2, Lca3;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    monitor-exit v2

    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "; deleting file and creating new directory."

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "FirebaseCrashlytics"

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const-string v3, "FirebaseCrashlytics"

    .line 50
    .line 51
    invoke-static {v3, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "FirebaseCrashlytics"

    .line 79
    .line 80
    invoke-static {v0, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_3
    monitor-exit v2

    .line 84
    return-void

    .line 85
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method

.method public static k(Ljava/io/File;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-static {v3}, Lca3;->k(Ljava/io/File;)Z

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static l([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lca3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lca3;->k(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, "Deleted previous Crashlytics file system: "

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p1, 0x3

    .line 41
    const-string v0, "FirebaseCrashlytics"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lca3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    const-string p0, "native"

    .line 16
    .line 17
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lca3;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lca3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public i(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Laz2;Z)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "crash"

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, v0, Lca3;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ld02;

    .line 16
    .line 17
    iget-wide v5, v2, Laz2;->b:J

    .line 18
    .line 19
    iget-object v7, v4, Ld02;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 30
    .line 31
    iget-object v9, v4, Ld02;->d:Loe;

    .line 32
    .line 33
    new-instance v10, Ljava/util/Stack;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object/from16 v11, p1

    .line 39
    .line 40
    :goto_0
    if-eqz v11, :cond_0

    .line 41
    .line 42
    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v12, 0x0

    .line 51
    :goto_1
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    if-nez v13, :cond_1

    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    check-cast v13, Ljava/lang/Throwable;

    .line 62
    .line 63
    new-instance v14, Ly8;

    .line 64
    .line 65
    invoke-virtual {v13}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v15

    .line 69
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v16

    .line 73
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-virtual {v9, v13}, Loe;->l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-direct {v14, v15, v11, v13, v12}, Ly8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v12, v14

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v10, Llc0;

    .line 91
    .line 92
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v1, v10, Llc0;->b:Ljava/lang/String;

    .line 96
    .line 97
    iput-wide v5, v10, Llc0;->a:J

    .line 98
    .line 99
    iget-byte v1, v10, Llc0;->g:B

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    or-int/2addr v1, v5

    .line 103
    int-to-byte v1, v1

    .line 104
    iput-byte v1, v10, Llc0;->g:B

    .line 105
    .line 106
    sget-object v1, Ll76;->a:Ll76;

    .line 107
    .line 108
    invoke-virtual {v1, v7}, Ll76;->b(Landroid/content/Context;)Lrz1;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    move-object v1, v14

    .line 113
    check-cast v1, Lwc0;

    .line 114
    .line 115
    iget v1, v1, Lwc0;->c:I

    .line 116
    .line 117
    if-lez v1, :cond_3

    .line 118
    .line 119
    const/16 v11, 0x64

    .line 120
    .line 121
    if-eq v1, v11, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const/4 v5, 0x0

    .line 125
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    move-object v13, v11

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    const/4 v13, 0x0

    .line 132
    :goto_3
    invoke-static {v7}, Ll76;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v5, v12, Ly8;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 144
    .line 145
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const-string v11, "Null name"

    .line 150
    .line 151
    if-eqz v7, :cond_b

    .line 152
    .line 153
    const/4 v6, 0x4

    .line 154
    invoke-static {v5, v6}, Ld02;->d([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-string v16, "Null frames"

    .line 159
    .line 160
    if-eqz v5, :cond_a

    .line 161
    .line 162
    move/from16 v17, v8

    .line 163
    .line 164
    new-instance v8, Lsc0;

    .line 165
    .line 166
    invoke-direct {v8, v6, v7, v5}, Lsc0;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    if-eqz p5, :cond_7

    .line 173
    .line 174
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_7

    .line 191
    .line 192
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Ljava/util/Map$Entry;

    .line 197
    .line 198
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Ljava/lang/Thread;

    .line 203
    .line 204
    move-object/from16 v8, p2

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v18

    .line 210
    if-nez v18, :cond_6

    .line 211
    .line 212
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 217
    .line 218
    invoke-virtual {v9, v6}, Loe;->l([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    if-eqz v7, :cond_5

    .line 227
    .line 228
    move-object/from16 p3, v5

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    invoke-static {v6, v5}, Ld02;->d([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    if-eqz v6, :cond_4

    .line 236
    .line 237
    new-instance v8, Lsc0;

    .line 238
    .line 239
    invoke-direct {v8, v5, v7, v6}, Lsc0;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_4
    invoke-static/range {v16 .. v16}, Lf6;->n(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_5
    invoke-static {v11}, Lf6;->n(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_6
    move-object/from16 p3, v5

    .line 255
    .line 256
    :goto_5
    move-object/from16 v5, p3

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v19

    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-static {v12, v5}, Ld02;->c(Ly8;I)Lqc0;

    .line 265
    .line 266
    .line 267
    move-result-object v20

    .line 268
    invoke-static {}, Ld02;->e()Lrc0;

    .line 269
    .line 270
    .line 271
    move-result-object v22

    .line 272
    invoke-virtual {v4}, Ld02;->a()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v23

    .line 276
    if-eqz v23, :cond_9

    .line 277
    .line 278
    new-instance v18, Loc0;

    .line 279
    .line 280
    const/16 v21, 0x0

    .line 281
    .line 282
    invoke-direct/range {v18 .. v23}, Loc0;-><init>(Ljava/util/List;Lqc0;Lez1;Lrc0;Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    new-instance v9, Lnc0;

    .line 286
    .line 287
    const/4 v11, 0x0

    .line 288
    const/4 v12, 0x0

    .line 289
    move-object v1, v10

    .line 290
    move/from16 v16, v17

    .line 291
    .line 292
    move-object/from16 v10, v18

    .line 293
    .line 294
    invoke-direct/range {v9 .. v16}, Lnc0;-><init>(Loc0;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lrz1;Ljava/util/List;I)V

    .line 295
    .line 296
    .line 297
    move/from16 v5, v16

    .line 298
    .line 299
    iput-object v9, v1, Llc0;->c:Lsz1;

    .line 300
    .line 301
    invoke-virtual {v4, v5}, Ld02;->b(I)Lyc0;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iput-object v4, v1, Llc0;->d:Ltz1;

    .line 306
    .line 307
    invoke-virtual {v1}, Llc0;->a()Lmc0;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v4, v2, Laz2;->c:Ljava/util/Map;

    .line 312
    .line 313
    iget-object v5, v0, Lca3;->d:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v5, Lot9;

    .line 316
    .line 317
    iget-object v6, v0, Lca3;->e:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v6, Li75;

    .line 320
    .line 321
    invoke-static {v1, v5, v6, v4}, Lca3;->a(Lmc0;Lot9;Li75;Ljava/util/Map;)Lmc0;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v1, v6}, Lca3;->b(Lmc0;Li75;)Lyz1;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-nez p5, :cond_8

    .line 330
    .line 331
    iget-object v4, v0, Lca3;->k:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v4, Ls02;

    .line 334
    .line 335
    iget-object v4, v4, Ls02;->b:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v4, Lo02;

    .line 338
    .line 339
    new-instance v5, Lf97;

    .line 340
    .line 341
    invoke-direct {v5, v0, v1, v2, v3}, Lf97;-><init>(Lca3;Lyz1;Laz2;Z)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v5}, Lo02;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_8
    iget-object v0, v0, Lca3;->b:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Lk02;

    .line 351
    .line 352
    iget-object v2, v2, Laz2;->a:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v0, v1, v2, v3}, Lk02;->d(Lyz1;Ljava/lang/String;Z)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_9
    const-string v0, "Null binaries"

    .line 359
    .line 360
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :cond_a
    invoke-static/range {v16 .. v16}, Lf6;->n(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_b
    invoke-static {v11}, Lf6;->n(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 13

    .line 1
    iget-object v0, p0, Lca3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk02;

    .line 4
    .line 5
    invoke-virtual {v0}, Lk02;->b()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/io/File;

    .line 29
    .line 30
    :try_start_0
    sget-object v3, Lk02;->g:Lf02;

    .line 31
    .line 32
    invoke-static {v2}, Lk02;->e(Ljava/io/File;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lf02;->i(Ljava/lang/String;)Lxb0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Lyb0;

    .line 48
    .line 49
    invoke-direct {v5, v3, v4, v2}, Lyb0;-><init>(Lxb0;Ljava/lang/String;Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v5, "Could not load report file "

    .line 60
    .line 61
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v5, "; deleting"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "FirebaseCrashlytics"

    .line 77
    .line 78
    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lyb0;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object v3, v2, Lyb0;->b:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    :cond_2
    iget-object v3, p0, Lca3;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Lrc2;

    .line 119
    .line 120
    iget-object v4, v2, Lyb0;->a:Lxb0;

    .line 121
    .line 122
    iget-object v5, v4, Lxb0;->f:Ljava/lang/String;

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    iget-object v4, v4, Lxb0;->g:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    :cond_3
    iget-object v4, p0, Lca3;->f:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v4, Lk94;

    .line 134
    .line 135
    invoke-virtual {v4, v6}, Lk94;->b(Z)Lmg3;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v5, v2, Lyb0;->a:Lxb0;

    .line 140
    .line 141
    iget-object v7, v4, Lmg3;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v5}, Lxb0;->a()Lwb0;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    iput-object v7, v5, Lwb0;->e:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v5}, Lwb0;->a()Lxb0;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    iget-object v4, v4, Lmg3;->b:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v5}, Lxb0;->a()Lwb0;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iput-object v4, v5, Lwb0;->f:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v5}, Lwb0;->a()Lxb0;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v5, v2, Lyb0;->b:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v2, v2, Lyb0;->c:Ljava/io/File;

    .line 168
    .line 169
    new-instance v7, Lyb0;

    .line 170
    .line 171
    invoke-direct {v7, v4, v5, v2}, Lyb0;-><init>(Lxb0;Ljava/lang/String;Ljava/io/File;)V

    .line 172
    .line 173
    .line 174
    move-object v2, v7

    .line 175
    :cond_4
    if-eqz p1, :cond_5

    .line 176
    .line 177
    move v4, v6

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    const/4 v4, 0x0

    .line 180
    :goto_2
    iget-object v3, v3, Lrc2;->a:Ldk6;

    .line 181
    .line 182
    const-string v5, "Dropping report due to queue being full: "

    .line 183
    .line 184
    const-string v7, "Closing task for report: "

    .line 185
    .line 186
    const-string v8, "Queue size: "

    .line 187
    .line 188
    const-string v9, "Enqueueing report: "

    .line 189
    .line 190
    iget-object v10, v3, Ldk6;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 191
    .line 192
    monitor-enter v10

    .line 193
    :try_start_1
    new-instance v11, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 194
    .line 195
    invoke-direct {v11}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 196
    .line 197
    .line 198
    if-eqz v4, :cond_8

    .line 199
    .line 200
    iget-object v4, v3, Ldk6;->i:Lc00;

    .line 201
    .line 202
    iget-object v4, v4, Lc00;->b:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 207
    .line 208
    .line 209
    iget-object v4, v3, Ldk6;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    iget v12, v3, Ldk6;->e:I

    .line 216
    .line 217
    if-ge v4, v12, :cond_6

    .line 218
    .line 219
    sget-object v4, Lnh4;->c:Lnh4;

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v9, v2, Lyb0;->b:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v4, v5}, Lnh4;->h(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v8, v3, Ldk6;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v4, v5}, Lnh4;->h(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v5, v3, Ldk6;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 260
    .line 261
    new-instance v8, Lrj6;

    .line 262
    .line 263
    invoke-direct {v8, v6, v3, v2, v11}, Lrj6;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, v2, Lyb0;->b:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v4, v3}, Lnh4;->h(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    monitor-exit v10

    .line 290
    goto :goto_3

    .line 291
    :catchall_0
    move-exception p0

    .line 292
    goto :goto_4

    .line 293
    :cond_6
    invoke-virtual {v3}, Ldk6;->a()I

    .line 294
    .line 295
    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v5, v2, Lyb0;->b:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    const-string v5, "FirebaseCrashlytics"

    .line 311
    .line 312
    const/4 v6, 0x3

    .line 313
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_7

    .line 318
    .line 319
    const-string v5, "FirebaseCrashlytics"

    .line 320
    .line 321
    const/4 v6, 0x0

    .line 322
    invoke-static {v5, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    :cond_7
    iget-object v3, v3, Ldk6;->i:Lc00;

    .line 326
    .line 327
    iget-object v3, v3, Lc00;->c:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    monitor-exit v10

    .line 338
    goto :goto_3

    .line 339
    :cond_8
    invoke-virtual {v3, v2, v11}, Ldk6;->b(Lyb0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 340
    .line 341
    .line 342
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :goto_3
    invoke-virtual {v11}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    new-instance v3, Lf6;

    .line 348
    .line 349
    invoke-direct {v3, p0}, Lf6;-><init>(Lca3;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :goto_4
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    throw p0

    .line 363
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0
.end method
