.class public final synthetic Lrz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrf8;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Lkh6;

.field public final synthetic e:J

.field public final synthetic f:Lkh6;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrz;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrz;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lrz;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lrz;->b:Lrf8;

    .line 12
    .line 13
    iput-object p4, p0, Lrz;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lrz;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    iput-object p6, p0, Lrz;->d:Lkh6;

    .line 18
    .line 19
    iput-wide p7, p0, Lrz;->e:J

    .line 20
    .line 21
    iput-object p9, p0, Lrz;->f:Lkh6;

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Lio3;Ljava/lang/String;Lrf8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V
    .locals 1

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lrz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrz;->k:Ljava/lang/Object;

    iput-object p2, p0, Lrz;->n:Ljava/lang/Object;

    iput-object p3, p0, Lrz;->b:Lrf8;

    iput-object p4, p0, Lrz;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lrz;->p:Ljava/lang/Object;

    iput-object p6, p0, Lrz;->d:Lkh6;

    iput-wide p7, p0, Lrz;->e:J

    iput-object p9, p0, Lrz;->f:Lkh6;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrz;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lrz;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lrz;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lrz;->k:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v10, v5

    .line 17
    check-cast v10, Lio3;

    .line 18
    .line 19
    move-object v8, v4

    .line 20
    check-cast v8, Ljava/lang/String;

    .line 21
    .line 22
    move-object v7, v3

    .line 23
    check-cast v7, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    iget-object v1, v10, Lio3;->j:Lho3;

    .line 26
    .line 27
    iget-object v3, v1, Lho3;->a:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v1, Lho3;->c:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1}, Lho3;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_8

    .line 40
    .line 41
    :cond_1
    iget-boolean v3, v10, Lio3;->i:Z

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_2
    new-instance v6, Lgo3;

    .line 48
    .line 49
    iget-object v9, v0, Lrz;->d:Lkh6;

    .line 50
    .line 51
    iget-wide v11, v0, Lrz;->e:J

    .line 52
    .line 53
    iget-object v13, v0, Lrz;->f:Lkh6;

    .line 54
    .line 55
    invoke-direct/range {v6 .. v13}, Lgo3;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;Lio3;JLkh6;)V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lp93;->a:Lp93;

    .line 59
    .line 60
    iget-object v3, v0, Lrz;->b:Lrf8;

    .line 61
    .line 62
    invoke-virtual {v3}, Lrf8;->a()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 75
    .line 76
    iget-object v5, v3, Lrf8;->h:Ljava/lang/String;

    .line 77
    .line 78
    const-string v7, " ("

    .line 79
    .line 80
    const-string v9, ")"

    .line 81
    .line 82
    const-string v12, "Uploading "

    .line 83
    .line 84
    invoke-static {v12, v5, v7, v4, v9}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    const/4 v15, 0x4

    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const-string v12, "FolderUploadTask"

    .line 92
    .line 93
    const/4 v14, 0x0

    .line 94
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v4, Ltb1;->a:Ltb1;

    .line 98
    .line 99
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4, v3}, Ltb1;->d(Lrf8;)Lag8;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v7, v10, Lio3;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    .line 109
    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v7, v3, Lrf8;->f:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v7, :cond_4

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_3

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iput-object v7, v4, Lag8;->b:Ljava/lang/String;

    .line 127
    .line 128
    :cond_4
    :goto_0
    new-instance v7, Ld7;

    .line 129
    .line 130
    const/16 v9, 0xc

    .line 131
    .line 132
    invoke-direct {v7, v6, v9}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iput-object v7, v4, Lag8;->g:Lmt3;

    .line 139
    .line 140
    invoke-virtual {v4}, Lag8;->c()Lzf8;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lzf8;->a()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_5

    .line 149
    .line 150
    invoke-virtual {v3}, Lrf8;->a()J

    .line 151
    .line 152
    .line 153
    move-result-wide v12

    .line 154
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v6, v3}, Lgo3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v4}, Lzf8;->c()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    iget-object v3, v10, Lio3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 168
    .line 169
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v4}, Lzf8;->b()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const-string v7, ": "

    .line 182
    .line 183
    invoke-static {v3, v7, v6}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    iput-object v3, v1, Lho3;->a:Ljava/lang/String;

    .line 188
    .line 189
    iget-boolean v3, v4, Lzf8;->c:Z

    .line 190
    .line 191
    iput-boolean v3, v1, Lho3;->b:Z

    .line 192
    .line 193
    :cond_6
    invoke-virtual {v4}, Lzf8;->a()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_7

    .line 198
    .line 199
    const-string v1, "Uploaded "

    .line 200
    .line 201
    invoke-static {v1, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    const/4 v15, 0x4

    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    const-string v12, "FolderUploadTask"

    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    invoke-virtual {v4}, Lzf8;->a()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    iget-object v0, v0, Lrz;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    .line 222
    invoke-virtual {v0, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :cond_8
    :goto_1
    return-object v2

    .line 226
    :pswitch_0
    move-object v9, v5

    .line 227
    check-cast v9, La00;

    .line 228
    .line 229
    move-object v15, v4

    .line 230
    check-cast v15, Lgz;

    .line 231
    .line 232
    check-cast v3, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 233
    .line 234
    invoke-virtual {v9}, La00;->c()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_9

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_9
    iget-object v10, v0, Lrz;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 242
    .line 243
    iget-object v11, v0, Lrz;->d:Lkh6;

    .line 244
    .line 245
    iget-wide v12, v0, Lrz;->e:J

    .line 246
    .line 247
    iget-object v14, v0, Lrz;->f:Lkh6;

    .line 248
    .line 249
    iget-object v0, v0, Lrz;->b:Lrf8;

    .line 250
    .line 251
    move-object/from16 v16, v0

    .line 252
    .line 253
    invoke-static/range {v9 .. v16}, La00;->b(La00;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;Lgz;Lrf8;)Lzf8;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lzf8;->a()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_a

    .line 262
    .line 263
    iget-object v0, v0, Lzf8;->a:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual/range {v16 .. v16}, Lrf8;->a()J

    .line 266
    .line 267
    .line 268
    move-result-wide v4

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget-object v4, v9, La00;->f:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 274
    .line 275
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getSharedLibsSizeMirrored()Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v3, v0, v1, v4}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateSharedLibsDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 288
    .line 289
    .line 290
    :cond_a
    :goto_2
    return-object v2

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
