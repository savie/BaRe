.class public final Lwo7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lyo7;


# direct methods
.method public constructor <init>(Lyo7;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwo7;->a:Lyo7;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lwo7;

    .line 2
    .line 3
    iget-object p0, p0, Lwo7;->a:Lyo7;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lwo7;-><init>(Lyo7;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lwo7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lwo7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwo7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lyn7;->c(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lyn7;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, Lzn7;

    .line 40
    .line 41
    new-instance v5, Lq63;

    .line 42
    .line 43
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v4}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v6, 0x2

    .line 50
    invoke-direct {v5, v0, v6}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v5}, Lq63;->j()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-static {v5}, Lq63;->E(Lq63;)Z

    .line 61
    .line 62
    .line 63
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    :goto_1
    const/4 v6, 0x1

    .line 70
    goto :goto_3

    .line 71
    :goto_2
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const/4 v11, 0x4

    .line 78
    const/4 v12, 0x0

    .line 79
    const-string v8, "StorageSwitchItem"

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const-string v7, "StorageSwitchItem"

    .line 86
    .line 87
    const-string v8, "createItems"

    .line 88
    .line 89
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_3
    sget-object v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;->Companion:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;

    .line 93
    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_2
    invoke-virtual {v4}, Lzn7;->n()Lq63;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :goto_4
    invoke-virtual {v0, v5, v6}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->create(Lq63;Z)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    instance-of v5, v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 106
    .line 107
    if-eqz v5, :cond_3

    .line 108
    .line 109
    check-cast v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_3
    move-object v0, p1

    .line 113
    :goto_5
    new-instance v5, Lso7;

    .line 114
    .line 115
    invoke-virtual {v4}, Lzn7;->m()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {v4, v1}, Lzn7;->e(Ljava/util/List;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-direct {v5, v4, v0, v6, v7}, Lso7;-><init>(Lzn7;Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lzn7;->u()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_4

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_4
    const-string v4, ", Format="

    .line 148
    .line 149
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 161
    .line 162
    const/4 v10, 0x4

    .line 163
    const/4 v11, 0x0

    .line 164
    const-string v7, "StorageSwitchItem"

    .line 165
    .line 166
    const/4 v9, 0x0

    .line 167
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_6
    sget-object v0, Lzn7;->q:Lyn7;

    .line 176
    .line 177
    invoke-virtual {v0}, Lyn7;->d()Lzn7;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    move-object v4, v2

    .line 196
    check-cast v4, Lso7;

    .line 197
    .line 198
    iget-object v4, v4, Lso7;->a:Lzn7;

    .line 199
    .line 200
    invoke-virtual {v4}, Lzn7;->n()Lq63;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v0}, Lzn7;->n()Lq63;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_7

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_8
    move-object v2, p1

    .line 216
    :goto_7
    check-cast v2, Lso7;

    .line 217
    .line 218
    if-eqz v2, :cond_9

    .line 219
    .line 220
    invoke-virtual {v2}, Lso7;->getItemId()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iget-object p0, p0, Lwo7;->a:Lyo7;

    .line 233
    .line 234
    if-nez v0, :cond_b

    .line 235
    .line 236
    iget-object p0, p0, Lyo7;->e:Lex6;

    .line 237
    .line 238
    new-instance v2, Lfm7;

    .line 239
    .line 240
    if-nez p1, :cond_a

    .line 241
    .line 242
    invoke-static {v3}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lso7;

    .line 247
    .line 248
    invoke-virtual {p1}, Lso7;->getItemId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    :cond_a
    move-object v4, p1

    .line 257
    const/4 v6, 0x0

    .line 258
    const/16 v7, 0x1c

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_b
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 269
    .line 270
    iget-object v4, p0, La55;->b:Ljava/lang/String;

    .line 271
    .line 272
    const/4 v7, 0x4

    .line 273
    const/4 v8, 0x0

    .line 274
    const-string v5, "No storage items!"

    .line 275
    .line 276
    const/4 v6, 0x0

    .line 277
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->P()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lqo0;->d()V

    .line 284
    .line 285
    .line 286
    :goto_8
    sget-object p0, Lbe8;->a:Lbe8;

    .line 287
    .line 288
    return-object p0
.end method
