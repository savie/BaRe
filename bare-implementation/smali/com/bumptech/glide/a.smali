.class public final Lcom/bumptech/glide/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile n:Lcom/bumptech/glide/a;

.field public static volatile p:Z


# instance fields
.field public final a:Lnr0;

.field public final b:Lq35;

.field public final c:Ldy3;

.field public final d:Lm35;

.field public final e:Lzk6;

.field public final f:Lus2;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzw2;Lq35;Lnr0;Lm35;Lzk6;Lus2;ILus2;Lk50;Ljava/util/List;Ljava/util/List;Lx13;Lky3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/a;->a:Lnr0;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/bumptech/glide/a;->d:Lm35;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/a;->b:Lq35;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/bumptech/glide/a;->f:Lus2;

    .line 20
    .line 21
    new-instance p4, Lni6;

    .line 22
    .line 23
    invoke-direct {p4, p0, p12, p13}, Lni6;-><init>(Lcom/bumptech/glide/a;Ljava/util/List;Lx13;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p5

    .line 27
    new-instance p5, Lns0;

    .line 28
    .line 29
    const/16 p6, 0xa

    .line 30
    .line 31
    invoke-direct {p5, p6}, Lns0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    move-object p6, p9

    .line 35
    move-object p9, p2

    .line 36
    move-object p2, p1

    .line 37
    new-instance p1, Ldy3;

    .line 38
    .line 39
    move-object p7, p11

    .line 40
    move p11, p8

    .line 41
    move-object p8, p7

    .line 42
    move-object p7, p10

    .line 43
    move-object p10, p14

    .line 44
    invoke-direct/range {p1 .. p11}, Ldy3;-><init>(Landroid/content/Context;Lm35;Lni6;Lns0;Lus2;Lk50;Ljava/util/List;Lzw2;Lky3;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/a;->c:Ldy3;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/bumptech/glide/a;->n:Lcom/bumptech/glide/a;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Glide"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    const-class v3, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 13
    .line 14
    const-class v4, Landroid/content/Context;

    .line 15
    .line 16
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    goto :goto_4

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_2
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :catch_3
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :goto_0
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 49
    .line 50
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :goto_1
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :goto_2
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 61
    .line 62
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    :goto_3
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 67
    .line 68
    invoke-static {v0, p0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :catch_4
    const/4 v0, 0x5

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_4
    const-class v0, Lcom/bumptech/glide/a;

    .line 85
    .line 86
    monitor-enter v0

    .line 87
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/a;->n:Lcom/bumptech/glide/a;

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    sget-boolean v1, Lcom/bumptech/glide/a;->p:Z

    .line 92
    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    sput-boolean v1, Lcom/bumptech/glide/a;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    :try_start_2
    invoke-static {p0, v2}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    :try_start_3
    sput-boolean v1, Lcom/bumptech/glide/a;->p:Z

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    sput-boolean v1, Lcom/bumptech/glide/a;->p:Z

    .line 107
    .line 108
    throw p0

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v1, "Glide has been called recursively, this is probably an internal library error!"

    .line 112
    .line 113
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_2
    :goto_5
    monitor-exit v0

    .line 118
    goto :goto_6

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    throw p0

    .line 122
    :cond_3
    :goto_6
    sget-object p0, Lcom/bumptech/glide/a;->n:Lcom/bumptech/glide/a;

    .line 123
    .line 124
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 25

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    new-instance v1, Lyx3;

    .line 4
    .line 5
    invoke-direct {v1}, Lyx3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x3

    .line 16
    if-eqz v13, :cond_1

    .line 17
    .line 18
    instance-of v5, v13, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v12, v0

    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_1
    :goto_0
    const-string v0, "Got app info metadata: "

    .line 27
    .line 28
    const-string v5, "ManifestParser"

    .line 29
    .line 30
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    const-string v6, "Loading Glide modules"

    .line 37
    .line 38
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/16 v9, 0x80

    .line 55
    .line 56
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 63
    .line 64
    if-nez v8, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    :goto_1
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/lang/String;

    .line 114
    .line 115
    const-string v9, "GlideModule"

    .line 116
    .line 117
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_5

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-static {v8}, Lbb9;->F(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    throw v0

    .line 135
    :cond_6
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    const-string v0, "Finished loading Glide modules"

    .line 142
    .line 143
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_7
    :goto_3
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    const-string v0, "Got null app info metadata"

    .line 154
    .line 155
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :goto_4
    const/4 v7, 0x6

    .line 160
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_8

    .line 165
    .line 166
    const-string v7, "Failed to parse glide modules"

    .line 167
    .line 168
    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_5
    move-object v12, v6

    .line 172
    :goto_6
    if-eqz v13, :cond_a

    .line 173
    .line 174
    new-instance v0, Ljava/util/HashSet;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_a

    .line 184
    .line 185
    new-instance v0, Ljava/util/HashSet;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-nez v5, :cond_9

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_9
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    throw v0

    .line 206
    :cond_a
    :goto_7
    const-string v0, "Glide"

    .line 207
    .line 208
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_b

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_b
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    throw v0

    .line 230
    :cond_c
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_20

    .line 239
    .line 240
    if-eqz v13, :cond_d

    .line 241
    .line 242
    invoke-virtual {v13, v2, v1}, Lx13;->b(Landroid/content/Context;Lyx3;)V

    .line 243
    .line 244
    .line 245
    :cond_d
    iget-object v0, v1, Lyx3;->g:Ljy3;

    .line 246
    .line 247
    const/4 v4, 0x4

    .line 248
    const/4 v5, 0x0

    .line 249
    if-nez v0, :cond_10

    .line 250
    .line 251
    new-instance v0, Lhy3;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 254
    .line 255
    .line 256
    sget v6, Ljy3;->b:I

    .line 257
    .line 258
    if-nez v6, :cond_e

    .line 259
    .line 260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    sput v6, Ljy3;->b:I

    .line 273
    .line 274
    :cond_e
    sget v15, Ljy3;->b:I

    .line 275
    .line 276
    const-string v6, "source"

    .line 277
    .line 278
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-nez v7, :cond_f

    .line 283
    .line 284
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 285
    .line 286
    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 287
    .line 288
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v7, Liy3;

    .line 292
    .line 293
    invoke-direct {v7, v0, v6, v5}, Liy3;-><init>(Lhy3;Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    const-wide/16 v17, 0x0

    .line 297
    .line 298
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 299
    .line 300
    move/from16 v16, v15

    .line 301
    .line 302
    move-object/from16 v21, v7

    .line 303
    .line 304
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Ljy3;

    .line 308
    .line 309
    invoke-direct {v0, v14}, Ljy3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 310
    .line 311
    .line 312
    iput-object v0, v1, Lyx3;->g:Ljy3;

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_f
    const-string v0, "Name must be non-null and non-empty, but given: source"

    .line 316
    .line 317
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_10
    :goto_9
    iget-object v0, v1, Lyx3;->h:Ljy3;

    .line 322
    .line 323
    if-nez v0, :cond_12

    .line 324
    .line 325
    new-instance v0, Lhy3;

    .line 326
    .line 327
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v6, "disk-cache"

    .line 331
    .line 332
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-nez v7, :cond_11

    .line 337
    .line 338
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 339
    .line 340
    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 341
    .line 342
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v7, Liy3;

    .line 346
    .line 347
    const/4 v15, 0x1

    .line 348
    invoke-direct {v7, v0, v6, v15}, Liy3;-><init>(Lhy3;Ljava/lang/String;Z)V

    .line 349
    .line 350
    .line 351
    const-wide/16 v17, 0x0

    .line 352
    .line 353
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 354
    .line 355
    move/from16 v16, v15

    .line 356
    .line 357
    move-object/from16 v21, v7

    .line 358
    .line 359
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Ljy3;

    .line 363
    .line 364
    invoke-direct {v0, v14}, Ljy3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 365
    .line 366
    .line 367
    iput-object v0, v1, Lyx3;->h:Ljy3;

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_11
    const-string v0, "Name must be non-null and non-empty, but given: disk-cache"

    .line 371
    .line 372
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_12
    :goto_a
    iget-object v0, v1, Lyx3;->n:Ljy3;

    .line 377
    .line 378
    if-nez v0, :cond_16

    .line 379
    .line 380
    sget v0, Ljy3;->b:I

    .line 381
    .line 382
    if-nez v0, :cond_13

    .line 383
    .line 384
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    sput v0, Ljy3;->b:I

    .line 397
    .line 398
    :cond_13
    sget v0, Ljy3;->b:I

    .line 399
    .line 400
    const/4 v6, 0x1

    .line 401
    if-lt v0, v4, :cond_14

    .line 402
    .line 403
    move v15, v3

    .line 404
    goto :goto_b

    .line 405
    :cond_14
    move v15, v6

    .line 406
    :goto_b
    new-instance v0, Lhy3;

    .line 407
    .line 408
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    const-string v3, "animation"

    .line 412
    .line 413
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-nez v4, :cond_15

    .line 418
    .line 419
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 420
    .line 421
    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 422
    .line 423
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 424
    .line 425
    .line 426
    new-instance v4, Liy3;

    .line 427
    .line 428
    invoke-direct {v4, v0, v3, v6}, Liy3;-><init>(Lhy3;Ljava/lang/String;Z)V

    .line 429
    .line 430
    .line 431
    const-wide/16 v17, 0x0

    .line 432
    .line 433
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 434
    .line 435
    move/from16 v16, v15

    .line 436
    .line 437
    move-object/from16 v21, v4

    .line 438
    .line 439
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 440
    .line 441
    .line 442
    new-instance v0, Ljy3;

    .line 443
    .line 444
    invoke-direct {v0, v14}, Ljy3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 445
    .line 446
    .line 447
    iput-object v0, v1, Lyx3;->n:Ljy3;

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_15
    const-string v0, "Name must be non-null and non-empty, but given: animation"

    .line 451
    .line 452
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :cond_16
    :goto_c
    iget-object v0, v1, Lyx3;->j:Lbc5;

    .line 457
    .line 458
    if-nez v0, :cond_17

    .line 459
    .line 460
    new-instance v0, Lac5;

    .line 461
    .line 462
    invoke-direct {v0, v2}, Lac5;-><init>(Landroid/content/Context;)V

    .line 463
    .line 464
    .line 465
    new-instance v3, Lbc5;

    .line 466
    .line 467
    invoke-direct {v3, v0}, Lbc5;-><init>(Lac5;)V

    .line 468
    .line 469
    .line 470
    iput-object v3, v1, Lyx3;->j:Lbc5;

    .line 471
    .line 472
    :cond_17
    iget-object v0, v1, Lyx3;->k:Lus2;

    .line 473
    .line 474
    if-nez v0, :cond_18

    .line 475
    .line 476
    new-instance v0, Lus2;

    .line 477
    .line 478
    const/16 v3, 0xa

    .line 479
    .line 480
    invoke-direct {v0, v3}, Lus2;-><init>(I)V

    .line 481
    .line 482
    .line 483
    iput-object v0, v1, Lyx3;->k:Lus2;

    .line 484
    .line 485
    :cond_18
    iget-object v0, v1, Lyx3;->d:Lnr0;

    .line 486
    .line 487
    if-nez v0, :cond_1a

    .line 488
    .line 489
    iget-object v0, v1, Lyx3;->j:Lbc5;

    .line 490
    .line 491
    iget v0, v0, Lbc5;->a:I

    .line 492
    .line 493
    if-lez v0, :cond_19

    .line 494
    .line 495
    new-instance v3, Ln35;

    .line 496
    .line 497
    int-to-long v6, v0

    .line 498
    invoke-direct {v3, v6, v7}, Ln35;-><init>(J)V

    .line 499
    .line 500
    .line 501
    iput-object v3, v1, Lyx3;->d:Lnr0;

    .line 502
    .line 503
    goto :goto_d

    .line 504
    :cond_19
    new-instance v0, Lge;

    .line 505
    .line 506
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 507
    .line 508
    .line 509
    iput-object v0, v1, Lyx3;->d:Lnr0;

    .line 510
    .line 511
    :cond_1a
    :goto_d
    iget-object v0, v1, Lyx3;->e:Lm35;

    .line 512
    .line 513
    if-nez v0, :cond_1b

    .line 514
    .line 515
    new-instance v0, Lm35;

    .line 516
    .line 517
    iget-object v3, v1, Lyx3;->j:Lbc5;

    .line 518
    .line 519
    iget v3, v3, Lbc5;->c:I

    .line 520
    .line 521
    invoke-direct {v0, v3}, Lm35;-><init>(I)V

    .line 522
    .line 523
    .line 524
    iput-object v0, v1, Lyx3;->e:Lm35;

    .line 525
    .line 526
    :cond_1b
    iget-object v0, v1, Lyx3;->f:Lq35;

    .line 527
    .line 528
    if-nez v0, :cond_1c

    .line 529
    .line 530
    new-instance v0, Lq35;

    .line 531
    .line 532
    iget-object v3, v1, Lyx3;->j:Lbc5;

    .line 533
    .line 534
    iget v3, v3, Lbc5;->b:I

    .line 535
    .line 536
    int-to-long v3, v3

    .line 537
    invoke-direct {v0, v3, v4}, Lf62;-><init>(J)V

    .line 538
    .line 539
    .line 540
    iput-object v0, v1, Lyx3;->f:Lq35;

    .line 541
    .line 542
    :cond_1c
    iget-object v0, v1, Lyx3;->i:Lfu;

    .line 543
    .line 544
    if-nez v0, :cond_1d

    .line 545
    .line 546
    new-instance v0, Lfu;

    .line 547
    .line 548
    invoke-direct {v0, v2}, Lfu;-><init>(Landroid/content/Context;)V

    .line 549
    .line 550
    .line 551
    iput-object v0, v1, Lyx3;->i:Lfu;

    .line 552
    .line 553
    :cond_1d
    iget-object v0, v1, Lyx3;->c:Lzw2;

    .line 554
    .line 555
    if-nez v0, :cond_1e

    .line 556
    .line 557
    new-instance v14, Lzw2;

    .line 558
    .line 559
    iget-object v15, v1, Lyx3;->f:Lq35;

    .line 560
    .line 561
    iget-object v0, v1, Lyx3;->i:Lfu;

    .line 562
    .line 563
    iget-object v3, v1, Lyx3;->h:Ljy3;

    .line 564
    .line 565
    iget-object v4, v1, Lyx3;->g:Ljy3;

    .line 566
    .line 567
    new-instance v6, Ljy3;

    .line 568
    .line 569
    new-instance v16, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 570
    .line 571
    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    .line 572
    .line 573
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 574
    .line 575
    .line 576
    new-instance v7, Liy3;

    .line 577
    .line 578
    new-instance v8, Lhy3;

    .line 579
    .line 580
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 581
    .line 582
    .line 583
    const-string v9, "source-unlimited"

    .line 584
    .line 585
    invoke-direct {v7, v8, v9, v5}, Liy3;-><init>(Lhy3;Ljava/lang/String;Z)V

    .line 586
    .line 587
    .line 588
    const/16 v17, 0x0

    .line 589
    .line 590
    const v18, 0x7fffffff

    .line 591
    .line 592
    .line 593
    const-wide/16 v19, 0x2710

    .line 594
    .line 595
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 596
    .line 597
    move-object/from16 v23, v7

    .line 598
    .line 599
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 600
    .line 601
    .line 602
    move-object/from16 v5, v16

    .line 603
    .line 604
    invoke-direct {v6, v5}, Ljy3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 605
    .line 606
    .line 607
    iget-object v5, v1, Lyx3;->n:Ljy3;

    .line 608
    .line 609
    move-object/from16 v16, v0

    .line 610
    .line 611
    move-object/from16 v17, v3

    .line 612
    .line 613
    move-object/from16 v18, v4

    .line 614
    .line 615
    move-object/from16 v20, v5

    .line 616
    .line 617
    move-object/from16 v19, v6

    .line 618
    .line 619
    invoke-direct/range {v14 .. v20}, Lzw2;-><init>(Lq35;Lfu;Ljy3;Ljy3;Ljy3;Ljy3;)V

    .line 620
    .line 621
    .line 622
    iput-object v14, v1, Lyx3;->c:Lzw2;

    .line 623
    .line 624
    :cond_1e
    iget-object v0, v1, Lyx3;->o:Ljava/util/List;

    .line 625
    .line 626
    if-nez v0, :cond_1f

    .line 627
    .line 628
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 629
    .line 630
    iput-object v0, v1, Lyx3;->o:Ljava/util/List;

    .line 631
    .line 632
    goto :goto_e

    .line 633
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    iput-object v0, v1, Lyx3;->o:Ljava/util/List;

    .line 638
    .line 639
    :goto_e
    iget-object v0, v1, Lyx3;->b:Lbb2;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    new-instance v14, Lky3;

    .line 645
    .line 646
    invoke-direct {v14, v0}, Lky3;-><init>(Lbb2;)V

    .line 647
    .line 648
    .line 649
    new-instance v6, Lzk6;

    .line 650
    .line 651
    invoke-direct {v6}, Lzk6;-><init>()V

    .line 652
    .line 653
    .line 654
    new-instance v0, Lcom/bumptech/glide/a;

    .line 655
    .line 656
    move-object v3, v2

    .line 657
    iget-object v2, v1, Lyx3;->c:Lzw2;

    .line 658
    .line 659
    move-object v4, v3

    .line 660
    iget-object v3, v1, Lyx3;->f:Lq35;

    .line 661
    .line 662
    move-object v5, v4

    .line 663
    iget-object v4, v1, Lyx3;->d:Lnr0;

    .line 664
    .line 665
    move-object v7, v5

    .line 666
    iget-object v5, v1, Lyx3;->e:Lm35;

    .line 667
    .line 668
    move-object v8, v7

    .line 669
    iget-object v7, v1, Lyx3;->k:Lus2;

    .line 670
    .line 671
    move-object v9, v8

    .line 672
    iget v8, v1, Lyx3;->l:I

    .line 673
    .line 674
    move-object v10, v9

    .line 675
    iget-object v9, v1, Lyx3;->m:Lus2;

    .line 676
    .line 677
    move-object v11, v10

    .line 678
    iget-object v10, v1, Lyx3;->a:Lk50;

    .line 679
    .line 680
    iget-object v1, v1, Lyx3;->o:Ljava/util/List;

    .line 681
    .line 682
    move-object/from16 v24, v11

    .line 683
    .line 684
    move-object v11, v1

    .line 685
    move-object/from16 v1, v24

    .line 686
    .line 687
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/a;-><init>(Landroid/content/Context;Lzw2;Lq35;Lnr0;Lm35;Lzk6;Lus2;ILus2;Lk50;Ljava/util/List;Ljava/util/List;Lx13;Lky3;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 691
    .line 692
    .line 693
    sput-object v0, Lcom/bumptech/glide/a;->n:Lcom/bumptech/glide/a;

    .line 694
    .line 695
    return-void

    .line 696
    :cond_20
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    throw v0
.end method

.method public static c(Landroid/content/Context;)Lyk6;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lzk6;->c(Landroid/content/Context;)Lyk6;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lxh8;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/a;->b:Lq35;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lf62;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/a;->a:Lnr0;

    .line 12
    .line 13
    invoke-interface {v0}, Lnr0;->o()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/bumptech/glide/a;->d:Lm35;

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Lm35;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 8

    .line 1
    invoke-static {}, Lxh8;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lyk6;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, p0, Lcom/bumptech/glide/a;->b:Lq35;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/16 v0, 0xf

    .line 38
    .line 39
    const/16 v2, 0x14

    .line 40
    .line 41
    const/16 v3, 0x28

    .line 42
    .line 43
    if-lt p1, v3, :cond_1

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    invoke-virtual {v1, v4, v5}, Lf62;->e(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-ge p1, v2, :cond_2

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    :cond_2
    monitor-enter v1

    .line 56
    :try_start_1
    iget-wide v4, v1, Lf62;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 57
    .line 58
    monitor-exit v1

    .line 59
    const-wide/16 v6, 0x2

    .line 60
    .line 61
    div-long/2addr v4, v6

    .line 62
    invoke-virtual {v1, v4, v5}, Lf62;->e(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/a;->a:Lnr0;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lnr0;->l(I)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/bumptech/glide/a;->d:Lm35;

    .line 71
    .line 72
    monitor-enter p0

    .line 73
    if-lt p1, v3, :cond_4

    .line 74
    .line 75
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    const/4 p1, 0x0

    .line 77
    :try_start_3
    invoke-virtual {p0, p1}, Lm35;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :try_start_6
    throw p1

    .line 85
    :cond_4
    if-ge p1, v2, :cond_5

    .line 86
    .line 87
    if-ne p1, v0, :cond_6

    .line 88
    .line 89
    :cond_5
    iget p1, p0, Lm35;->e:I

    .line 90
    .line 91
    div-int/lit8 p1, p1, 0x2

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lm35;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_2
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_2
    move-exception p1

    .line 99
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 100
    throw p1

    .line 101
    :catchall_3
    move-exception p0

    .line 102
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 103
    throw p0

    .line 104
    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 105
    throw p0
.end method
