.class public final Lkm8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvc5;
.implements Ljk8;
.implements Lju2;
.implements La13;
.implements Lzv5;
.implements Ldh5;
.implements Lgg8;
.implements Ln59;


# static fields
.field public static final b:Llk;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkm8;->b:Llk;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 21
    iput-object v0, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array p1, p1, [I

    .line 34
    new-instance v0, Lkm7;

    invoke-direct {v0, p1}, Lkm7;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object v0, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lca3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    iget-object p1, p1, Lca3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ljava/io/File;

    .line 9
    .line 10
    const-string v1, "com.crashlytics.settings.json"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lkm8;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    sget v0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkm8;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lke;Lyf1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkm8;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(I)Lkm8;
    .locals 1

    .line 1
    new-instance v0, Lkm8;

    .line 2
    .line 3
    invoke-static {p0}, Lrt9;->a(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public c(Lnc8;)V
    .locals 8

    .line 1
    new-instance v7, Lzp1;

    .line 2
    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 4
    .line 5
    invoke-direct {v7, v0}, Lzp1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const-wide/16 v3, 0xf

    .line 18
    .line 19
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lnu2;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v2, p0, p1, v0}, Lnu2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public d(Lfc5;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Llr7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Llr7;

    .line 7
    .line 8
    iget-object v0, v0, Llr7;->S:Lfc5;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfc5;->k()Lfc5;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lfc5;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lo8;

    .line 21
    .line 22
    iget-object p0, p0, Lo8;->e:Lvc5;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lvc5;->d(Lfc5;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public e(Lib;Lgy5;Lnp1;Lyf1;Lqn5;ZLvk9;)Lib;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lib;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lgz0;

    .line 8
    .line 9
    iget-object v3, v2, Lgz0;->a:Lsb4;

    .line 10
    .line 11
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 12
    .line 13
    invoke-interface {v3}, Lqn5;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-boolean v3, v2, Lgz0;->b:Z

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v3, v1, Lnp1;->a:Lua4;

    .line 25
    .line 26
    iget-object v3, v3, Lua4;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lqn5;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v3, v4

    .line 37
    :goto_0
    const-string v6, "Can\'t have a merge that is an overwrite"

    .line 38
    .line 39
    invoke-static {v6, v3}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Lgy5;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-object v3, Lnp1;->b:Lnp1;

    .line 50
    .line 51
    move-object/from16 v6, p2

    .line 52
    .line 53
    invoke-virtual {v3, v6, v1}, Lnp1;->d(Lgy5;Lnp1;)Lnp1;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    iget-object v3, v2, Lgz0;->a:Lsb4;

    .line 58
    .line 59
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v6, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lnp1;->a:Lua4;

    .line 70
    .line 71
    iget-object v1, v1, Lua4;->b:Loa4;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Lm61;

    .line 94
    .line 95
    new-instance v9, Lnp1;

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lua4;

    .line 102
    .line 103
    invoke-direct {v9, v7}, Lnp1;-><init>(Lua4;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_3
    move-object v8, v0

    .line 119
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Lm61;

    .line 136
    .line 137
    invoke-interface {v3, v7}, Lqn5;->c0(Lm61;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_4

    .line 142
    .line 143
    invoke-interface {v3, v7}, Lqn5;->m(Lm61;)Lqn5;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lnp1;

    .line 152
    .line 153
    invoke-virtual {v0, v9}, Lnp1;->e(Lqn5;)Lqn5;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    new-instance v9, Lgy5;

    .line 158
    .line 159
    filled-new-array {v7}, [Lm61;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {v9, v0}, Lgy5;-><init>([Lm61;)V

    .line 164
    .line 165
    .line 166
    move-object v7, p0

    .line 167
    move-object/from16 v11, p4

    .line 168
    .line 169
    move-object/from16 v12, p5

    .line 170
    .line 171
    move/from16 v13, p6

    .line 172
    .line 173
    move-object/from16 v14, p7

    .line 174
    .line 175
    invoke-virtual/range {v7 .. v14}, Lkm8;->f(Lib;Lgy5;Lqn5;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    goto :goto_3

    .line 180
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, Lm61;

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Lnp1;

    .line 211
    .line 212
    invoke-virtual {v2, v6}, Lgz0;->a(Lm61;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-nez v9, :cond_7

    .line 217
    .line 218
    iget-object v7, v7, Lnp1;->a:Lua4;

    .line 219
    .line 220
    iget-object v7, v7, Lua4;->a:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v7, Lqn5;

    .line 223
    .line 224
    if-nez v7, :cond_7

    .line 225
    .line 226
    move v7, v5

    .line 227
    goto :goto_5

    .line 228
    :cond_7
    move v7, v4

    .line 229
    :goto_5
    invoke-interface {v3, v6}, Lqn5;->c0(Lm61;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-nez v9, :cond_6

    .line 234
    .line 235
    if-nez v7, :cond_6

    .line 236
    .line 237
    invoke-interface {v3, v6}, Lqn5;->m(Lm61;)Lqn5;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Lnp1;

    .line 246
    .line 247
    invoke-virtual {v1, v7}, Lnp1;->e(Lqn5;)Lqn5;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    new-instance v9, Lgy5;

    .line 252
    .line 253
    filled-new-array {v6}, [Lm61;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {v9, v1}, Lgy5;-><init>([Lm61;)V

    .line 258
    .line 259
    .line 260
    move-object v7, p0

    .line 261
    move-object/from16 v11, p4

    .line 262
    .line 263
    move-object/from16 v12, p5

    .line 264
    .line 265
    move/from16 v13, p6

    .line 266
    .line 267
    move-object/from16 v14, p7

    .line 268
    .line 269
    invoke-virtual/range {v7 .. v14}, Lkm8;->f(Lib;Lgy5;Lqn5;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    move-object v8, v1

    .line 274
    goto :goto_4

    .line 275
    :cond_8
    return-object v8
.end method

.method public f(Lib;Lgy5;Lqn5;Lyf1;Lqn5;ZLvk9;)Lib;
    .locals 14

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    iget-object v2, p1, Lib;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lgz0;

    .line 6
    .line 7
    iget-object v3, v2, Lgz0;->a:Lsb4;

    .line 8
    .line 9
    iget-object v5, p0, Lkm8;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v5, Lvn5;

    .line 12
    .line 13
    if-eqz p6, :cond_0

    .line 14
    .line 15
    :goto_0
    move-object v6, v5

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v5}, Lvn5;->f()Lzq8;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lgy5;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v13, 0x1

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v6}, Lvn5;->getIndex()Lnb4;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-instance v8, Lsb4;

    .line 35
    .line 36
    invoke-direct {v8, v1, v5}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v6, v3, v8, v7}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_2
    move-object/from16 v5, p2

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    invoke-interface {v6}, Lvn5;->g()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-boolean v5, v2, Lgz0;->c:Z

    .line 53
    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    invoke-virtual/range {p2 .. p2}, Lgy5;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    xor-int/2addr v5, v13

    .line 61
    const-string v8, "An empty path should have been caught in the other branch"

    .line 62
    .line 63
    invoke-static {v8, v5}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Lgy5;->k()Lm61;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual/range {p2 .. p2}, Lgy5;->p()Lgy5;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    iget-object v9, v3, Lsb4;->a:Lqn5;

    .line 75
    .line 76
    invoke-interface {v9, v5}, Lqn5;->m(Lm61;)Lqn5;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-interface {v9, v8, v1}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v3, v5, v1}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v6, v3, v1, v7}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lgy5;->k()Lm61;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    move-object/from16 v5, p2

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Lgz0;->b(Lgy5;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_3

    .line 104
    .line 105
    invoke-virtual {v5}, Lgy5;->size()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-le v7, v13, :cond_3

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_3
    invoke-virtual {v5}, Lgy5;->p()Lgy5;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 117
    .line 118
    invoke-interface {v3, v8}, Lqn5;->m(Lm61;)Lqn5;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v3, v10, v1}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    sget-object v1, Lm61;->d:Lm61;

    .line 127
    .line 128
    invoke-virtual {v8, v1}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v7, v2, Lgz0;->a:Lsb4;

    .line 133
    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-interface {v6, v7, v9}, Lvn5;->c(Lsb4;Lqn5;)Lsb4;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    sget-object v11, Lkm8;->b:Llk;

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    invoke-interface/range {v6 .. v12}, Lvn5;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_3
    iget-boolean v2, v2, Lgz0;->b:Z

    .line 149
    .line 150
    if-nez v2, :cond_6

    .line 151
    .line 152
    invoke-virtual {v5}, Lgy5;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    const/4 v13, 0x0

    .line 160
    :cond_6
    :goto_4
    invoke-interface {v6}, Lvn5;->g()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    new-instance v5, Lib;

    .line 165
    .line 166
    iget-object v0, p1, Lib;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lgz0;

    .line 169
    .line 170
    new-instance v3, Lgz0;

    .line 171
    .line 172
    invoke-direct {v3, v1, v13, v2}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 173
    .line 174
    .line 175
    const/16 v1, 0xe

    .line 176
    .line 177
    invoke-direct {v5, v1, v0, v3}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    new-instance v8, Lbp0;

    .line 181
    .line 182
    move-object/from16 v7, p4

    .line 183
    .line 184
    move-object/from16 v0, p5

    .line 185
    .line 186
    invoke-direct {v8, v7, v5, v0}, Lbp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v4, p0

    .line 190
    move-object/from16 v6, p2

    .line 191
    .line 192
    move-object/from16 v9, p7

    .line 193
    .line 194
    invoke-virtual/range {v4 .. v9}, Lkm8;->l(Lib;Lgy5;Lyf1;Lun5;Lvk9;)Lib;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0
.end method

.method public g(Lib;Lgy5;Lqn5;Lyf1;Lqn5;Lvk9;)Lib;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    iget-object v4, v4, Lkm8;->a:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v5, v4

    .line 14
    check-cast v5, Lvn5;

    .line 15
    .line 16
    iget-object v4, v0, Lib;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Lgz0;

    .line 19
    .line 20
    iget-boolean v12, v4, Lgz0;->b:Z

    .line 21
    .line 22
    iget-object v6, v4, Lgz0;->a:Lsb4;

    .line 23
    .line 24
    new-instance v10, Lbp0;

    .line 25
    .line 26
    invoke-direct {v10, v2, v0, v3}, Lbp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Lgy5;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v8, 0x1

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    invoke-interface {v5}, Lvn5;->getIndex()Lnb4;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lsb4;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v11, p6

    .line 46
    .line 47
    invoke-interface {v5, v6, v3, v11}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v5}, Lvn5;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v1, v8, v2}, Lib;->o(Lsb4;ZZ)Lib;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_0
    move-object/from16 v11, p6

    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lgy5;->k()Lm61;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v9, Lm61;->d:Lm61;

    .line 67
    .line 68
    invoke-virtual {v7, v9}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    iget-object v14, v4, Lgz0;->a:Lsb4;

    .line 73
    .line 74
    if-eqz v13, :cond_1

    .line 75
    .line 76
    invoke-interface {v5, v14, v1}, Lvn5;->c(Lsb4;Lqn5;)Lsb4;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-boolean v2, v4, Lgz0;->c:Z

    .line 81
    .line 82
    invoke-virtual {v0, v1, v12, v2}, Lib;->o(Lsb4;ZZ)Lib;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lgy5;->p()Lgy5;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    iget-object v14, v14, Lsb4;->a:Lqn5;

    .line 92
    .line 93
    invoke-interface {v14, v7}, Lqn5;->m(Lm61;)Lqn5;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v13}, Lgy5;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    if-eqz v15, :cond_2

    .line 102
    .line 103
    :goto_0
    move-object v8, v1

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {v4, v7}, Lgz0;->a(Lm61;)Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-eqz v15, :cond_3

    .line 110
    .line 111
    iget-object v2, v6, Lsb4;->a:Lqn5;

    .line 112
    .line 113
    invoke-interface {v2, v7}, Lqn5;->m(Lm61;)Lqn5;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    if-eqz v3, :cond_4

    .line 119
    .line 120
    new-instance v6, Lgz0;

    .line 121
    .line 122
    new-instance v15, Lsb4;

    .line 123
    .line 124
    sget-object v8, Lno4;->a:Lno4;

    .line 125
    .line 126
    invoke-direct {v15, v3, v8}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v8, 0x1

    .line 131
    invoke-direct {v6, v15, v8, v3}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v3, v0, Lib;->c:Ljava/lang/Object;

    .line 136
    .line 137
    move-object v6, v3

    .line 138
    check-cast v6, Lgz0;

    .line 139
    .line 140
    :goto_1
    invoke-virtual {v2, v7, v6}, Lyf1;->l(Lm61;Lgz0;)Lqn5;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :goto_2
    if-eqz v2, :cond_6

    .line 145
    .line 146
    invoke-virtual {v13}, Lgy5;->i()Lm61;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3, v9}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    invoke-virtual {v13}, Lgy5;->l()Lgy5;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v2, v3}, Lqn5;->U(Lgy5;)Lqn5;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3}, Lqn5;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    move-object v8, v2

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    invoke-interface {v2, v13, v1}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    goto :goto_0

    .line 177
    :cond_6
    sget-object v1, Lqv2;->e:Lqv2;

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :goto_3
    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_7

    .line 185
    .line 186
    iget-object v6, v4, Lgz0;->a:Lsb4;

    .line 187
    .line 188
    move-object v9, v13

    .line 189
    invoke-interface/range {v5 .. v11}, Lvn5;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v5}, Lvn5;->g()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v1, v12, v2}, Lib;->o(Lsb4;ZZ)Lib;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :cond_7
    return-object v0
.end method

.method public getPaddingEnd()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    return-object p0
.end method

.method public synthetic h(Lf59;)V
    .locals 0

    .line 1
    check-cast p1, Lc69;

    .line 2
    .line 3
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lyf1;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lyf1;->c(Lc69;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public j(Landroid/net/Uri;)Lra2;
    .locals 2

    .line 1
    new-instance v0, Ljp7;

    .line 2
    .line 3
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/content/ContentResolver;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p1, p0}, Lh60;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public k(Lod;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Law5;

    .line 4
    .line 5
    iget-object p0, p0, Law5;->d:Las5;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Las5;->Q(Ljb9;)[Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public l(Lib;Lgy5;Lyf1;Lun5;Lvk9;)Lib;
    .locals 9

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lvn5;

    .line 5
    .line 6
    iget-object p0, p1, Lib;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lgz0;

    .line 9
    .line 10
    iget-object v1, p0, Lgz0;->a:Lsb4;

    .line 11
    .line 12
    iget-object v2, p1, Lib;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lgz0;

    .line 15
    .line 16
    iget-object v3, v2, Lgz0;->a:Lsb4;

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lyf1;->r(Lgy5;)Lqn5;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p2}, Lgy5;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-boolean p4, v2, Lgz0;->b:Z

    .line 34
    .line 35
    const-string v1, "If change path is empty, we must have complete server data"

    .line 36
    .line 37
    invoke-static {v1, p4}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    iget-boolean p4, v2, Lgz0;->c:Z

    .line 41
    .line 42
    if-eqz p4, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lib;->g()Lqn5;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    instance-of v1, p4, Lq61;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object p4, Lqv2;->e:Lqv2;

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p3, p4}, Lyf1;->m(Lqn5;)Lqn5;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p1}, Lib;->g()Lqn5;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 65
    .line 66
    iget-object v2, p3, Lyf1;->c:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lvq;

    .line 69
    .line 70
    iget-object p3, p3, Lyf1;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p3, Lgy5;

    .line 73
    .line 74
    invoke-virtual {v2, p3, p4, v1, v7}, Lvq;->j(Lgy5;Lqn5;Ljava/util/List;Z)Lqn5;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    :goto_1
    invoke-interface {v0}, Lvn5;->getIndex()Lnb4;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    new-instance v1, Lsb4;

    .line 83
    .line 84
    invoke-direct {v1, p3, p4}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lgz0;->a:Lsb4;

    .line 88
    .line 89
    invoke-interface {v0, p3, v1, p5}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_3
    move-object v4, v2

    .line 96
    invoke-virtual {p2}, Lgy5;->k()Lm61;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v5, Lm61;->d:Lm61;

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    invoke-virtual {p2}, Lgy5;->size()I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    if-ne p4, v8, :cond_4

    .line 113
    .line 114
    move p4, v8

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move p4, v7

    .line 117
    :goto_2
    const-string p5, "Can\'t have a priority with additional path components"

    .line 118
    .line 119
    invoke-static {p5, p4}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    iget-object p4, v1, Lsb4;->a:Lqn5;

    .line 123
    .line 124
    iget-object p5, v3, Lsb4;->a:Lqn5;

    .line 125
    .line 126
    invoke-virtual {p3, p2, p4, p5}, Lyf1;->o(Lgy5;Lqn5;Lqn5;)Lqn5;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    if-eqz p3, :cond_8

    .line 131
    .line 132
    invoke-interface {v0, v1, p3}, Lvn5;->c(Lsb4;Lqn5;)Lsb4;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    move-object v5, v4

    .line 138
    invoke-virtual {p2}, Lgy5;->p()Lgy5;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {p0, v2}, Lgz0;->a(Lm61;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    iget-object v3, v3, Lsb4;->a:Lqn5;

    .line 149
    .line 150
    iget-object v5, v1, Lsb4;->a:Lqn5;

    .line 151
    .line 152
    invoke-virtual {p3, p2, v5, v3}, Lyf1;->o(Lgy5;Lqn5;Lqn5;)Lqn5;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    iget-object v3, v1, Lsb4;->a:Lqn5;

    .line 157
    .line 158
    if-eqz p3, :cond_6

    .line 159
    .line 160
    invoke-interface {v3, v2}, Lqn5;->m(Lm61;)Lqn5;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3, v4, p3}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    invoke-interface {v3, v2}, Lqn5;->m(Lm61;)Lqn5;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    :goto_3
    move-object v3, p3

    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-virtual {p3, v2, v5}, Lyf1;->l(Lm61;Lgz0;)Lqn5;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    goto :goto_3

    .line 180
    :goto_4
    if-eqz v3, :cond_8

    .line 181
    .line 182
    iget-object v1, p0, Lgz0;->a:Lsb4;

    .line 183
    .line 184
    move-object v5, p4

    .line 185
    move-object v6, p5

    .line 186
    invoke-interface/range {v0 .. v6}, Lvn5;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :cond_8
    :goto_5
    iget-boolean p0, p0, Lgz0;->b:Z

    .line 191
    .line 192
    if-nez p0, :cond_9

    .line 193
    .line 194
    invoke-virtual {p2}, Lgy5;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-eqz p0, :cond_a

    .line 199
    .line 200
    :cond_9
    move v7, v8

    .line 201
    :cond_a
    invoke-interface {v0}, Lvn5;->g()Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    invoke-virtual {p1, v1, v7, p0}, Lib;->o(Lsb4;ZZ)Lib;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 5

    .line 1
    const-string v0, "Error while closing settings cache file."

    .line 2
    .line 3
    const-string v1, "FirebaseCrashlytics"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "Checking for cached settings..."

    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-static {v2}, Ljm1;->X(Ljava/io/FileInputStream;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    move-object v3, v2

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    move-object v3, v2

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception p0

    .line 52
    move-object v2, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :try_start_2
    const-string p0, "Settings file does not exist."

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-static {v1, p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    :cond_2
    move-object v4, v3

    .line 67
    :goto_0
    invoke-static {v3, v0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v4

    .line 71
    :goto_1
    :try_start_3
    const-string v4, "Failed to fetch cached settings"

    .line 72
    .line 73
    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :goto_2
    invoke-static {v3, v0}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public r(Lfc5;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lo8;

    .line 4
    .line 5
    iget-object v0, p0, Lo8;->c:Lfc5;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Llr7;

    .line 12
    .line 13
    iget-object v0, v0, Llr7;->T:Lic5;

    .line 14
    .line 15
    iget v0, v0, Lic5;->a:I

    .line 16
    .line 17
    iput v0, p0, Lo8;->Q:I

    .line 18
    .line 19
    iget-object p0, p0, Lo8;->e:Lvc5;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lvc5;->r(Lfc5;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public y(Lai5;)Lch5;
    .locals 0

    .line 1
    new-instance p1, Lhg8;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lhg8;-><init>(Lgg8;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
