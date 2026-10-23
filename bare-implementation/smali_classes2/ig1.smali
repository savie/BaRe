.class public final Lig1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lig1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lig1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lig1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljv1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lig1;->a:I

    .line 12
    iput-object p1, p0, Lig1;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lig1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lig1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lig1;

    .line 9
    .line 10
    iget-object p0, p0, Lig1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ltp8;

    .line 13
    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-direct {p1, p0, v1, p2, v0}, Lig1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_0
    new-instance p0, Lig1;

    .line 22
    .line 23
    check-cast v1, Ljava/util/Set;

    .line 24
    .line 25
    invoke-direct {p0, v1, p2}, Lig1;-><init>(Ljava/util/Set;Ljv1;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lig1;->b:Ljava/lang/Object;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1
    new-instance p1, Lig1;

    .line 32
    .line 33
    iget-object p0, p0, Lig1;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 36
    .line 37
    check-cast v1, Ltn2;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p1, p0, v1, p2, v0}, Lig1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lig1;

    .line 45
    .line 46
    iget-object p0, p0, Lig1;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lng1;

    .line 49
    .line 50
    check-cast v1, Leb2;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p1, p0, v1, p2, v0}, Lig1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lig1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lxx1;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lig1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lig1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lig1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lij5;

    .line 23
    .line 24
    check-cast p2, Ljv1;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lig1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lig1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lig1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p1, Lxx1;

    .line 38
    .line 39
    check-cast p2, Ljv1;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lig1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lig1;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lig1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_2
    check-cast p1, Lxx1;

    .line 52
    .line 53
    check-cast p2, Ljv1;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lig1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lig1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lig1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lig1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, Lig1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lig1;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ltp8;

    .line 21
    .line 22
    const v1, 0x7f13055f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lqo0;->h(I)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lxj1;->g:Lxj1;

    .line 29
    .line 30
    iget-object v1, v1, Ldv;->c:Lfk6;

    .line 31
    .line 32
    invoke-virtual {v1}, Lfk6;->a()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v6, Ljava/util/List;

    .line 37
    .line 38
    new-instance v2, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    move-object v8, v7

    .line 63
    check-cast v8, Lyn8;

    .line 64
    .line 65
    iget-wide v8, v8, Lyn8;->c:J

    .line 66
    .line 67
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v2, Ljo8;

    .line 82
    .line 83
    invoke-direct {v2, v5}, Ljo8;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3, v1}, Ljo8;->a(Ljo8;Ljava/util/ArrayList;Ljava/util/List;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    sget-object v5, Lxj1;->g:Lxj1;

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    const/16 v10, 0xe

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-static/range {v5 .. v10}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {v0}, Lqo0;->f()V

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Ltp8;->l:Lix6;

    .line 107
    .line 108
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :pswitch_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lig1;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lij5;

    .line 120
    .line 121
    invoke-virtual {v0}, Lij5;->a()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ll46;

    .line 155
    .line 156
    iget-object v2, v2, Ll46;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    check-cast v6, Ljava/util/Set;

    .line 163
    .line 164
    sget-object v0, Led7;->a:Ljava/util/LinkedHashSet;

    .line 165
    .line 166
    if-ne v6, v0, :cond_4

    .line 167
    .line 168
    :goto_2
    move v3, v5

    .line 169
    goto :goto_3

    .line 170
    :cond_4
    if-eqz v6, :cond_5

    .line 171
    .line 172
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_7

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_6

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_7
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :pswitch_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v0, Lig1;->b:Ljava/lang/Object;

    .line 211
    .line 212
    move-object v1, v0

    .line 213
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 214
    .line 215
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 220
    .line 221
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v6, Ltn2;

    .line 226
    .line 227
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 238
    .line 239
    if-eqz v6, :cond_8

    .line 240
    .line 241
    invoke-virtual {v6}, Ltn2;->e()Landroid/net/Uri;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    goto :goto_4

    .line 246
    :cond_8
    move-object v0, v2

    .line 247
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v12, "importSettings called for file:"

    .line 250
    .line 251
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    const/4 v14, 0x4

    .line 262
    const/4 v15, 0x0

    .line 263
    const-string v11, "CloudCredentials"

    .line 264
    .line 265
    const/4 v13, 0x0

    .line 266
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    if-nez v6, :cond_9

    .line 270
    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :cond_9
    invoke-virtual {v6}, Ltn2;->f()J

    .line 274
    .line 275
    .line 276
    move-result-wide v11

    .line 277
    const-wide/32 v13, 0x19000

    .line 278
    .line 279
    .line 280
    cmp-long v0, v11, v13

    .line 281
    .line 282
    const-string v13, ")"

    .line 283
    .line 284
    if-lez v0, :cond_a

    .line 285
    .line 286
    sget-object v0, Lp93;->a:Lp93;

    .line 287
    .line 288
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v3, "importSettings: Abnormally large file selected ("

    .line 297
    .line 298
    invoke-static {v3, v0, v13}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    const/4 v14, 0x4

    .line 303
    const/4 v15, 0x0

    .line 304
    const-string v11, "CloudCredentials"

    .line 305
    .line 306
    const/4 v13, 0x0

    .line 307
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_8

    .line 311
    .line 312
    :cond_a
    const v0, 0x7f13042d

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v0}, Lqo0;->h(I)V

    .line 316
    .line 317
    .line 318
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v6}, Ltn2;->e()Landroid/net/Uri;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    sget v10, Ln84;->a:I

    .line 339
    .line 340
    new-instance v10, Laq7;

    .line 341
    .line 342
    invoke-direct {v10}, Laq7;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v11, Ljava/io/InputStreamReader;

    .line 346
    .line 347
    sget v12, Lg51;->a:I

    .line 348
    .line 349
    if-nez v0, :cond_b

    .line 350
    .line 351
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :cond_b
    invoke-direct {v11, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 356
    .line 357
    .line 358
    sget-object v0, Lm84;->b:Ljava/lang/ThreadLocal;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v12

    .line 364
    check-cast v12, [Ljava/lang/Object;

    .line 365
    .line 366
    aget-object v14, v12, v3

    .line 367
    .line 368
    check-cast v14, Ljava/lang/Boolean;

    .line 369
    .line 370
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-eqz v14, :cond_c

    .line 375
    .line 376
    new-instance v12, Lm84;

    .line 377
    .line 378
    const/16 v14, 0x2000

    .line 379
    .line 380
    new-array v14, v14, [C

    .line 381
    .line 382
    invoke-direct {v12, v14}, Lm84;-><init>([C)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_c
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 387
    .line 388
    aput-object v14, v12, v3

    .line 389
    .line 390
    sget-object v12, Lm84;->c:Lm84;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 391
    .line 392
    :goto_5
    :try_start_1
    iget-object v14, v12, Lm84;->a:[C

    .line 393
    .line 394
    if-eqz v14, :cond_d

    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_d
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, [Ljava/lang/Object;

    .line 402
    .line 403
    aget-object v0, v0, v5

    .line 404
    .line 405
    move-object v14, v0

    .line 406
    check-cast v14, [C

    .line 407
    .line 408
    :goto_6
    invoke-virtual {v11, v14}, Ljava/io/Reader;->read([C)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    const/4 v5, -0x1

    .line 413
    if-eq v5, v0, :cond_e

    .line 414
    .line 415
    invoke-virtual {v10, v14, v3, v0}, Laq7;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :catchall_0
    move-exception v0

    .line 420
    goto/16 :goto_9

    .line 421
    .line 422
    :cond_e
    :try_start_2
    invoke-virtual {v12}, Lm84;->close()V

    .line 423
    .line 424
    .line 425
    iget-object v0, v10, Laq7;->a:Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    invoke-static {v6, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v9}, Lqo0;->f()V

    .line 435
    .line 436
    .line 437
    :try_start_3
    sget-object v3, Lw14;->a:Lgv7;

    .line 438
    .line 439
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    const-class v5, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 444
    .line 445
    invoke-virtual {v3, v0, v5}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 450
    .line 451
    move-object/from16 v21, v0

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :catch_0
    move-exception v0

    .line 455
    move-object/from16 v17, v0

    .line 456
    .line 457
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 458
    .line 459
    const/16 v19, 0x8

    .line 460
    .line 461
    const/16 v20, 0x0

    .line 462
    .line 463
    const-string v15, "CloudCredentials"

    .line 464
    .line 465
    const-string v16, "importSettings"

    .line 466
    .line 467
    const/16 v18, 0x0

    .line 468
    .line 469
    invoke-static/range {v14 .. v20}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    move-object/from16 v21, v2

    .line 473
    .line 474
    :goto_7
    if-nez v21, :cond_f

    .line 475
    .line 476
    goto/16 :goto_8

    .line 477
    .line 478
    :cond_f
    const/16 v36, 0x3fff

    .line 479
    .line 480
    const/16 v37, 0x0

    .line 481
    .line 482
    const/16 v22, 0x0

    .line 483
    .line 484
    const/16 v23, 0x0

    .line 485
    .line 486
    const/16 v24, 0x0

    .line 487
    .line 488
    const/16 v25, 0x0

    .line 489
    .line 490
    const/16 v26, 0x0

    .line 491
    .line 492
    const/16 v27, 0x0

    .line 493
    .line 494
    const/16 v28, 0x0

    .line 495
    .line 496
    const/16 v29, 0x0

    .line 497
    .line 498
    const/16 v30, 0x0

    .line 499
    .line 500
    const/16 v31, 0x0

    .line 501
    .line 502
    const/16 v32, 0x0

    .line 503
    .line 504
    const/16 v33, 0x0

    .line 505
    .line 506
    const/16 v34, 0x0

    .line 507
    .line 508
    const/16 v35, 0x0

    .line 509
    .line 510
    invoke-static/range {v21 .. v37}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Ljava/lang/String;Lfd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lnc1;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;Ljava/lang/Boolean;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    const-string v5, ", actual="

    .line 519
    .line 520
    if-eq v3, v8, :cond_10

    .line 521
    .line 522
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v9, "importSettings: Fixing cloud type mismatch (expected="

    .line 529
    .line 530
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v16

    .line 549
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 550
    .line 551
    const/16 v18, 0x4

    .line 552
    .line 553
    const/16 v19, 0x0

    .line 554
    .line 555
    const-string v15, "CloudCredentials"

    .line 556
    .line 557
    const/16 v17, 0x0

    .line 558
    .line 559
    invoke-static/range {v14 .. v19}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v8}, Ldd1;->getConstant()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->setCloudTypeConstant(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    sget-object v3, Ldd1;->SFTP:Ldd1;

    .line 570
    .line 571
    if-eq v8, v3, :cond_10

    .line 572
    .line 573
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getCloudType()Ldd1;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    if-ne v6, v3, :cond_10

    .line 578
    .line 579
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getAuthType()Lnc1;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    sget-object v6, Lnc1;->KEY_BASED:Lnc1;

    .line 584
    .line 585
    if-ne v3, v6, :cond_10

    .line 586
    .line 587
    const/16 v21, 0x4

    .line 588
    .line 589
    const/16 v22, 0x0

    .line 590
    .line 591
    const-string v18, "CloudCredentials"

    .line 592
    .line 593
    const-string v19, "importSettings: Removing key based authentication details as it isn\'t supported."

    .line 594
    .line 595
    const/16 v20, 0x0

    .line 596
    .line 597
    move-object/from16 v17, v14

    .line 598
    .line 599
    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->setAuthType(Lnc1;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->setKey(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudPrivateKey;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->setPassword(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    :cond_10
    invoke-virtual {v8}, Ldd1;->getProtocols()Ljava/util/List;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-nez v2, :cond_11

    .line 624
    .line 625
    invoke-virtual {v8}, Ldd1;->getProtocols()Ljava/util/List;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getProtocol()Lfd1;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    const-string v9, "importSettings: Fixing protocol mismatch (expected="

    .line 636
    .line 637
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v16

    .line 656
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 657
    .line 658
    const/16 v18, 0x4

    .line 659
    .line 660
    const/16 v19, 0x0

    .line 661
    .line 662
    const-string v15, "CloudCredentials"

    .line 663
    .line 664
    const/16 v17, 0x0

    .line 665
    .line 666
    invoke-static/range {v14 .. v19}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v8}, Ldd1;->getProtocols()Ljava/util/List;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-static {v2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    check-cast v2, Lfd1;

    .line 678
    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    const-string v5, "importSettings: Replacing with default protocol \'"

    .line 682
    .line 683
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    const-string v5, "\'"

    .line 690
    .line 691
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    const/4 v13, 0x4

    .line 699
    move-object v9, v14

    .line 700
    const/4 v14, 0x0

    .line 701
    const-string v10, "CloudCredentials"

    .line 702
    .line 703
    const/4 v12, 0x0

    .line 704
    invoke-static/range {v9 .. v14}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->setProtocol(Lfd1;)V

    .line 708
    .line 709
    .line 710
    :cond_11
    move-object v2, v0

    .line 711
    :goto_8
    iput-object v2, v7, Lm62;->g:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 712
    .line 713
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lqo0;->e()Lix6;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    sget-object v1, Lno0;->a:Lno0;

    .line 722
    .line 723
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    return-object v4

    .line 727
    :goto_9
    move-object v1, v0

    .line 728
    if-eqz v12, :cond_12

    .line 729
    .line 730
    :try_start_4
    invoke-virtual {v12}, Lm84;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 731
    .line 732
    .line 733
    goto :goto_a

    .line 734
    :catchall_1
    move-exception v0

    .line 735
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 736
    .line 737
    .line 738
    :cond_12
    :goto_a
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 739
    :goto_b
    move-object v1, v0

    .line 740
    goto :goto_c

    .line 741
    :catchall_2
    move-exception v0

    .line 742
    goto :goto_b

    .line 743
    :goto_c
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 744
    :catchall_3
    move-exception v0

    .line 745
    invoke-static {v6, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 746
    .line 747
    .line 748
    throw v0

    .line 749
    :pswitch_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    iget-object v0, v0, Lig1;->b:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v0, Lng1;

    .line 755
    .line 756
    iget-object v0, v0, Lng1;->f:Lex6;

    .line 757
    .line 758
    check-cast v6, Leb2;

    .line 759
    .line 760
    const-string v1, "apps"

    .line 761
    .line 762
    invoke-virtual {v6, v1}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    invoke-virtual {v1}, Leb2;->b()Ldb2;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    iget-object v5, v1, Ldb2;->b:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v5, Ljava/util/Iterator;

    .line 773
    .line 774
    const-wide/16 v7, 0x0

    .line 775
    .line 776
    move v10, v3

    .line 777
    move-wide v11, v7

    .line 778
    :cond_13
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    if-eqz v7, :cond_16

    .line 783
    .line 784
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    check-cast v7, Lhk5;

    .line 789
    .line 790
    new-instance v8, Leb2;

    .line 791
    .line 792
    iget-object v9, v1, Ldb2;->c:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v9, Leb2;

    .line 795
    .line 796
    iget-object v9, v9, Leb2;->b:Lzc2;

    .line 797
    .line 798
    iget-object v13, v7, Lhk5;->a:Lm61;

    .line 799
    .line 800
    iget-object v13, v13, Lm61;->a:Ljava/lang/String;

    .line 801
    .line 802
    invoke-virtual {v9, v13}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 803
    .line 804
    .line 805
    move-result-object v9

    .line 806
    iget-object v7, v7, Lhk5;->b:Lqn5;

    .line 807
    .line 808
    invoke-static {v7}, Lsb4;->d(Lqn5;)Lsb4;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    invoke-direct {v8, v9, v7}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 813
    .line 814
    .line 815
    sget-object v7, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 816
    .line 817
    invoke-virtual {v7, v8}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    if-eqz v7, :cond_14

    .line 822
    .line 823
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    if-eqz v7, :cond_14

    .line 828
    .line 829
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 830
    .line 831
    .line 832
    move-result-object v7

    .line 833
    goto :goto_e

    .line 834
    :cond_14
    move-object v7, v2

    .line 835
    :goto_e
    if-eqz v7, :cond_15

    .line 836
    .line 837
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 838
    .line 839
    .line 840
    move-result v8

    .line 841
    if-nez v8, :cond_15

    .line 842
    .line 843
    goto :goto_d

    .line 844
    :cond_15
    if-eqz v7, :cond_13

    .line 845
    .line 846
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isValidCloudDetails()Z

    .line 847
    .line 848
    .line 849
    move-result v8

    .line 850
    if-eqz v8, :cond_13

    .line 851
    .line 852
    add-int/lit8 v10, v10, 0x1

    .line 853
    .line 854
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getTotalSize()J

    .line 855
    .line 856
    .line 857
    move-result-wide v7

    .line 858
    add-long/2addr v11, v7

    .line 859
    goto :goto_d

    .line 860
    :cond_16
    const-string v1, "folders"

    .line 861
    .line 862
    invoke-virtual {v6, v1}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    invoke-virtual {v1}, Leb2;->b()Ldb2;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    iget-object v5, v1, Ldb2;->b:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v5, Ljava/util/Iterator;

    .line 873
    .line 874
    move v15, v3

    .line 875
    :cond_17
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 876
    .line 877
    .line 878
    move-result v7

    .line 879
    if-eqz v7, :cond_1a

    .line 880
    .line 881
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v7

    .line 885
    check-cast v7, Lhk5;

    .line 886
    .line 887
    iget-object v8, v1, Ldb2;->c:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v8, Leb2;

    .line 890
    .line 891
    iget-object v8, v8, Leb2;->b:Lzc2;

    .line 892
    .line 893
    iget-object v9, v7, Lhk5;->a:Lm61;

    .line 894
    .line 895
    iget-object v9, v9, Lm61;->a:Ljava/lang/String;

    .line 896
    .line 897
    invoke-virtual {v8, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 898
    .line 899
    .line 900
    iget-object v7, v7, Lhk5;->b:Lqn5;

    .line 901
    .line 902
    invoke-static {v7}, Lsb4;->d(Lqn5;)Lsb4;

    .line 903
    .line 904
    .line 905
    move-result-object v7

    .line 906
    sget-object v8, Lsf1;->g:Lsf1;

    .line 907
    .line 908
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    .line 910
    .line 911
    iget-object v7, v7, Lsb4;->a:Lqn5;

    .line 912
    .line 913
    invoke-interface {v7}, Lqn5;->getValue()Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v7

    .line 917
    const-class v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 918
    .line 919
    invoke-static {v8, v7}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v7

    .line 923
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 924
    .line 925
    if-eqz v7, :cond_17

    .line 926
    .line 927
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->isValid()Z

    .line 928
    .line 929
    .line 930
    move-result v8

    .line 931
    if-eqz v8, :cond_18

    .line 932
    .line 933
    goto :goto_10

    .line 934
    :cond_18
    move-object v7, v2

    .line 935
    :goto_10
    if-nez v7, :cond_19

    .line 936
    .line 937
    goto :goto_f

    .line 938
    :cond_19
    add-int/lit8 v15, v15, 0x1

    .line 939
    .line 940
    goto :goto_f

    .line 941
    :cond_1a
    const-string v1, "smsBackupsCount"

    .line 942
    .line 943
    invoke-virtual {v6, v1}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 948
    .line 949
    invoke-virtual {v1, v2}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Ljava/lang/Integer;

    .line 954
    .line 955
    if-eqz v1, :cond_1b

    .line 956
    .line 957
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    move v13, v1

    .line 962
    goto :goto_11

    .line 963
    :cond_1b
    move v13, v3

    .line 964
    :goto_11
    const-string v1, "callLogBackupsCount"

    .line 965
    .line 966
    invoke-virtual {v6, v1}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    invoke-virtual {v1, v2}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    check-cast v1, Ljava/lang/Integer;

    .line 975
    .line 976
    if-eqz v1, :cond_1c

    .line 977
    .line 978
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 979
    .line 980
    .line 981
    move-result v3

    .line 982
    :cond_1c
    move v14, v3

    .line 983
    new-instance v9, Lz8;

    .line 984
    .line 985
    invoke-direct/range {v9 .. v15}, Lz8;-><init>(IJIII)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v9}, Lex6;->k(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    return-object v4

    .line 992
    nop

    .line 993
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
