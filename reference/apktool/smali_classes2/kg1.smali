.class public final Lkg1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lng1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lng1;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkg1;->a:Lng1;

    .line 2
    .line 3
    iput-object p2, p0, Lkg1;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lkg1;

    .line 2
    .line 3
    iget-object v0, p0, Lkg1;->a:Lng1;

    .line 4
    .line 5
    iget-object p0, p0, Lkg1;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lkg1;-><init>(Lng1;Ljava/lang/String;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkg1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkg1;->a:Lng1;

    .line 5
    .line 6
    iget-object v0, p1, Lng1;->d:Lqo0;

    .line 7
    .line 8
    const-string v1, "activityVM"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    const v3, 0x7f13042d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lqo0;->h(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lre3;->f()Lzc2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v0, v3}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v3, v0, Lxe3;

    .line 29
    .line 30
    sget-object v4, Lbe8;->a:Lbe8;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    instance-of p0, v0, Lwe3;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    check-cast v0, Lwe3;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v0, v2

    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 45
    .line 46
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p0, v0, Lwe3;->n:Lwc2;

    .line 49
    .line 50
    iget-object p0, p0, Lwc2;->b:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "Error while reading devices dir: "

    .line 53
    .line 54
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const/4 v9, 0x4

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p0, p1, Lng1;->d:Lqo0;

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lqo0;->f()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->P()V

    .line 72
    .line 73
    .line 74
    return-object v4

    .line 75
    :cond_2
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_3
    check-cast v0, Lxe3;

    .line 80
    .line 81
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 82
    .line 83
    invoke-virtual {v0}, Leb2;->b()Ldb2;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    instance-of v3, v0, Ljava/util/Collection;

    .line 88
    .line 89
    iget-object p0, p0, Lkg1;->b:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    move-object v3, v0

    .line 94
    check-cast v3, Ljava/util/Collection;

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    iget-object v3, v0, Ldb2;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v3, Ljava/util/Iterator;

    .line 106
    .line 107
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_7

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lhk5;

    .line 118
    .line 119
    iget-object v6, v0, Ldb2;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v6, Leb2;

    .line 122
    .line 123
    iget-object v6, v6, Leb2;->b:Lzc2;

    .line 124
    .line 125
    iget-object v7, v5, Lhk5;->a:Lm61;

    .line 126
    .line 127
    iget-object v7, v7, Lm61;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iget-object v5, v5, Lhk5;->b:Lqn5;

    .line 134
    .line 135
    invoke-static {v5}, Lsb4;->d(Lqn5;)Lsb4;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Lzc2;->e()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    if-eqz v5, :cond_6

    .line 143
    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    move-object v5, v2

    .line 160
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 181
    .line 182
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    const v0, 0x7f130261

    .line 187
    .line 188
    .line 189
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sget-object v3, Lzn4;->a:Lzn4;

    .line 194
    .line 195
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_4

    .line 199
    .line 200
    :cond_7
    :goto_2
    iget-object v0, p1, Lng1;->d:Lqo0;

    .line 201
    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    const v3, 0x7f1301d0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v3}, Lqo0;->h(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lre3;->f()Lzc2;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v5, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;

    .line 219
    .line 220
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 221
    .line 222
    const/16 v11, 0x17

    .line 223
    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v8, 0x0

    .line 228
    const/4 v10, 0x0

    .line 229
    invoke-direct/range {v5 .. v12}, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v5}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    instance-of v3, v0, Lze3;

    .line 237
    .line 238
    if-eqz v3, :cond_8

    .line 239
    .line 240
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 241
    .line 242
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const v3, 0x7f13054b

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    sget-object v5, Lzn4;->a:Lzn4;

    .line 257
    .line 258
    invoke-static {v0, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    sget-object v0, Ltb1;->a:Ltb1;

    .line 262
    .line 263
    invoke-static {p0}, Lqb1;->t(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_8
    instance-of p0, v0, Lye3;

    .line 268
    .line 269
    if-eqz p0, :cond_9

    .line 270
    .line 271
    check-cast v0, Lye3;

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    move-object v0, v2

    .line 275
    :goto_3
    if-eqz v0, :cond_a

    .line 276
    .line 277
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 278
    .line 279
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 280
    .line 281
    iget-object p0, v0, Lye3;->b:Lwc2;

    .line 282
    .line 283
    iget-object p0, p0, Lwc2;->b:Ljava/lang/String;

    .line 284
    .line 285
    const-string v0, "Error while creating new active folder: "

    .line 286
    .line 287
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    const/4 v9, 0x4

    .line 292
    const/4 v10, 0x0

    .line 293
    const/4 v8, 0x0

    .line 294
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_a
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 298
    .line 299
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    const v0, 0x7f130581

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    sget-object v3, Lzn4;->a:Lzn4;

    .line 314
    .line 315
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :goto_4
    iget-object p0, p1, Lng1;->d:Lqo0;

    .line 319
    .line 320
    if-eqz p0, :cond_b

    .line 321
    .line 322
    invoke-virtual {p0}, Lqo0;->f()V

    .line 323
    .line 324
    .line 325
    return-object v4

    .line 326
    :cond_b
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v2

    .line 330
    :cond_c
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw v2

    .line 334
    :cond_d
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v2
.end method
