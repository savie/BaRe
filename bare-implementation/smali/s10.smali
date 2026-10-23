.class public final Ls10;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Ls10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ls10;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ls10;->d:Ljava/lang/Object;

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

.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 12
    iput p3, p0, Ls10;->a:I

    iput-object p1, p0, Ls10;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Ls10;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls10;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Ls10;

    .line 9
    .line 10
    check-cast v1, Lmb8;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v1, p2, v0}, Ls10;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ls10;->c:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Ls10;

    .line 20
    .line 21
    check-cast v1, Ldj6;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, v1, p2, v0}, Ls10;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Ls10;->c:Ljava/lang/Object;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance p1, Ls10;

    .line 31
    .line 32
    iget-object p0, p0, Ls10;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p1, p0, v1, p2, v0}, Ls10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_2
    new-instance p1, Ls10;

    .line 44
    .line 45
    iget-object p0, p0, Ls10;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lt10;

    .line 48
    .line 49
    check-cast v1, Ljava/util/List;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {p1, p0, v1, p2, v0}, Ls10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    nop

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
    iget v0, p0, Ls10;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lg98;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Ls10;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ls10;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ls10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lorg/json/JSONObject;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Ls10;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ls10;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ls10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lxx1;

    .line 39
    .line 40
    check-cast p2, Ljv1;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Ls10;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ls10;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ls10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lxx1;

    .line 54
    .line 55
    check-cast p2, Ljv1;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Ls10;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ls10;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ls10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ls10;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v4, v1, Ls10;->d:Ljava/lang/Object;

    .line 9
    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lyx1;->a:Lyx1;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v0, v1, Ls10;->b:I

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-eq v0, v7, :cond_1

    .line 24
    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v6, v8

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    iget-object v0, v1, Ls10;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lg98;

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v3, p1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Ls10;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lg98;

    .line 54
    .line 55
    iput-object v0, v1, Ls10;->c:Ljava/lang/Object;

    .line 56
    .line 57
    iput v7, v1, Ls10;->b:I

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lg98;->b(Ljv1;)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-ne v3, v6, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :try_start_1
    sget-object v3, Lf98;->b:Lf98;

    .line 76
    .line 77
    new-instance v5, Lxg3;

    .line 78
    .line 79
    check-cast v4, Lmb8;

    .line 80
    .line 81
    invoke-direct {v5, v4, v8}, Lxg3;-><init>(Lmb8;Ljv1;)V

    .line 82
    .line 83
    .line 84
    iput-object v8, v1, Ls10;->c:Ljava/lang/Object;

    .line 85
    .line 86
    iput v2, v1, Ls10;->b:I

    .line 87
    .line 88
    invoke-interface {v0, v3, v5, v1}, Lg98;->a(Lf98;Lqt3;Lws7;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-ne v0, v6, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    :goto_1
    move-object v6, v0

    .line 96
    check-cast v6, Ljava/util/Set;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_0
    :goto_2
    sget-object v6, Lsv2;->a:Lsv2;

    .line 100
    .line 101
    :goto_3
    return-object v6

    .line 102
    :pswitch_0
    check-cast v4, Ldj6;

    .line 103
    .line 104
    const-string v0, "cache_duration"

    .line 105
    .line 106
    const-string v2, "session_timeout_seconds"

    .line 107
    .line 108
    const-string v9, "sampling_rate"

    .line 109
    .line 110
    const-string v10, "sessions_enabled"

    .line 111
    .line 112
    iget v11, v1, Ls10;->b:I

    .line 113
    .line 114
    if-eqz v11, :cond_7

    .line 115
    .line 116
    if-ne v11, v7, :cond_6

    .line 117
    .line 118
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_b

    .line 122
    .line 123
    :cond_6
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v3, v8

    .line 127
    goto/16 :goto_b

    .line 128
    .line 129
    :cond_7
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v5, v1, Ls10;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v5, Lorg/json/JSONObject;

    .line 135
    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v12, "Fetched settings: "

    .line 139
    .line 140
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    const-string v12, "FirebaseSessions"

    .line 151
    .line 152
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    const-string v11, "app_quality"

    .line 156
    .line 157
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-eqz v13, :cond_c

    .line 162
    .line 163
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    check-cast v5, Lorg/json/JSONObject;

    .line 171
    .line 172
    :try_start_2
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_8

    .line 177
    .line 178
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    check-cast v10, Ljava/lang/Boolean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catch_1
    move-exception v0

    .line 186
    move-object v2, v8

    .line 187
    move-object v9, v2

    .line 188
    move-object v10, v9

    .line 189
    goto :goto_8

    .line 190
    :cond_8
    move-object v10, v8

    .line 191
    :goto_4
    :try_start_3
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_9

    .line 196
    .line 197
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    check-cast v9, Ljava/lang/Double;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catch_2
    move-exception v0

    .line 205
    move-object v2, v8

    .line 206
    move-object v9, v2

    .line 207
    goto :goto_8

    .line 208
    :cond_9
    move-object v9, v8

    .line 209
    :goto_5
    :try_start_4
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_a

    .line 214
    .line 215
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Ljava/lang/Integer;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :catch_3
    move-exception v0

    .line 223
    move-object v2, v8

    .line 224
    goto :goto_8

    .line 225
    :cond_a
    move-object v2, v8

    .line 226
    :goto_6
    :try_start_5
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-eqz v11, :cond_b

    .line 231
    .line 232
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/lang/Integer;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 237
    .line 238
    move-object v8, v0

    .line 239
    goto :goto_7

    .line 240
    :catch_4
    move-exception v0

    .line 241
    goto :goto_8

    .line 242
    :cond_b
    :goto_7
    move-object v14, v2

    .line 243
    move-object v13, v9

    .line 244
    move-object v12, v10

    .line 245
    goto :goto_9

    .line 246
    :goto_8
    const-string v5, "Error parsing the configs remotely fetched: "

    .line 247
    .line 248
    invoke-static {v12, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-static {v0}, Lx13;->d(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_c
    move-object v12, v8

    .line 257
    move-object v13, v12

    .line 258
    move-object v14, v13

    .line 259
    :goto_9
    iget-object v0, v4, Ldj6;->e:Lka7;

    .line 260
    .line 261
    if-eqz v8, :cond_d

    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto :goto_a

    .line 268
    :cond_d
    sget v2, Ldj6;->g:I

    .line 269
    .line 270
    :goto_a
    iget-object v4, v4, Ldj6;->a:La48;

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-static {}, La48;->a()Li38;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    iget-wide v4, v4, Li38;->c:J

    .line 280
    .line 281
    new-instance v11, Lm87;

    .line 282
    .line 283
    new-instance v15, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-direct {v15, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v2, Ljava/lang/Long;

    .line 289
    .line 290
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v16, v2

    .line 294
    .line 295
    invoke-direct/range {v11 .. v16}, Lm87;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 296
    .line 297
    .line 298
    iput v7, v1, Ls10;->b:I

    .line 299
    .line 300
    invoke-virtual {v0, v11, v1}, Lka7;->c(Lm87;Lkv1;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-ne v0, v6, :cond_e

    .line 305
    .line 306
    move-object v3, v6

    .line 307
    :cond_e
    :goto_b
    return-object v3

    .line 308
    :pswitch_1
    check-cast v4, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 309
    .line 310
    iget v0, v1, Ls10;->b:I

    .line 311
    .line 312
    if-eqz v0, :cond_10

    .line 313
    .line 314
    if-ne v0, v7, :cond_f

    .line 315
    .line 316
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_f

    .line 320
    .line 321
    :cond_f
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move-object v3, v8

    .line 325
    goto/16 :goto_f

    .line 326
    .line 327
    :cond_10
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v1, Ls10;->c:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Ljava/lang/String;

    .line 333
    .line 334
    if-nez v0, :cond_15

    .line 335
    .line 336
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v0, v0, Lhf1;->h:Lef1;

    .line 341
    .line 342
    if-nez v0, :cond_11

    .line 343
    .line 344
    const-string v0, ""

    .line 345
    .line 346
    goto :goto_e

    .line 347
    :cond_11
    iget-object v2, v0, Lef1;->g:Ljava/util/List;

    .line 348
    .line 349
    new-instance v5, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    :cond_12
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    if-eqz v8, :cond_13

    .line 363
    .line 364
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    move-object v9, v8

    .line 369
    check-cast v9, Lmd1;

    .line 370
    .line 371
    iget-object v10, v9, Lmd1;->a:Lqd1;

    .line 372
    .line 373
    iget-boolean v10, v10, Lqd1;->d:Z

    .line 374
    .line 375
    if-eqz v10, :cond_12

    .line 376
    .line 377
    iget-boolean v9, v9, Lmd1;->b:Z

    .line 378
    .line 379
    if-eqz v9, :cond_12

    .line 380
    .line 381
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    .line 386
    .line 387
    const/16 v8, 0xa

    .line 388
    .line 389
    invoke-static {v5, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-eqz v8, :cond_14

    .line 405
    .line 406
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    check-cast v8, Lmd1;

    .line 411
    .line 412
    iget-object v8, v8, Lmd1;->a:Lqd1;

    .line 413
    .line 414
    iget-object v8, v8, Lqd1;->a:Lsd1;

    .line 415
    .line 416
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_14
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v0, v2}, Lhf1;->k(Lef1;Ljava/util/Set;)Lye1;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    iget-object v0, v0, Lye1;->a:Ljava/lang/String;

    .line 429
    .line 430
    :cond_15
    :goto_e
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 438
    .line 439
    invoke-virtual {v8}, Lvr6;->getMessages()Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v9

    .line 443
    const/16 v13, 0xe

    .line 444
    .line 445
    const/4 v14, 0x0

    .line 446
    const/4 v10, 0x0

    .line 447
    const/4 v11, 0x0

    .line 448
    const/4 v12, 0x0

    .line 449
    invoke-static/range {v8 .. v14}, Lvr6;->filterLogs$default(Lvr6;Ljava/util/List;ZZZILjava/lang/Object;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-static {v2, v7, v5}, Ldt7;->a(Landroid/content/Context;ZLjava/util/List;)Lq63;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    sget-object v5, Lzn4;->a:Lzn4;

    .line 458
    .line 459
    new-instance v5, Ly10;

    .line 460
    .line 461
    invoke-direct {v5, v7, v4, v2, v0}, Ly10;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iput v7, v1, Ls10;->b:I

    .line 465
    .line 466
    invoke-static {v5, v1}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    if-ne v0, v6, :cond_16

    .line 471
    .line 472
    move-object v3, v6

    .line 473
    :cond_16
    :goto_f
    return-object v3

    .line 474
    :pswitch_2
    iget-object v0, v1, Ls10;->c:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Lt10;

    .line 477
    .line 478
    iget v9, v1, Ls10;->b:I

    .line 479
    .line 480
    if-eqz v9, :cond_18

    .line 481
    .line 482
    if-ne v9, v7, :cond_17

    .line 483
    .line 484
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_15

    .line 488
    .line 489
    :cond_17
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    move-object v3, v8

    .line 493
    goto/16 :goto_15

    .line 494
    .line 495
    :cond_18
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    check-cast v4, Ljava/util/List;

    .line 499
    .line 500
    iget-object v5, v0, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 501
    .line 502
    new-instance v9, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .line 506
    .line 507
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    const/4 v11, 0x0

    .line 512
    move/from16 v18, v11

    .line 513
    .line 514
    move/from16 v25, v18

    .line 515
    .line 516
    move/from16 v32, v25

    .line 517
    .line 518
    move/from16 v39, v32

    .line 519
    .line 520
    :cond_19
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    if-eqz v11, :cond_1b

    .line 525
    .line 526
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v11

    .line 530
    check-cast v11, Lji;

    .line 531
    .line 532
    invoke-virtual {v11}, Lji;->isInstalled()Z

    .line 533
    .line 534
    .line 535
    move-result v12

    .line 536
    if-eqz v12, :cond_1a

    .line 537
    .line 538
    add-int/lit8 v18, v18, 0x1

    .line 539
    .line 540
    invoke-virtual {v11}, Lji;->isBundled()Z

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    if-nez v12, :cond_1a

    .line 545
    .line 546
    add-int/lit8 v39, v39, 0x1

    .line 547
    .line 548
    :cond_1a
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 549
    .line 550
    .line 551
    move-result v12

    .line 552
    invoke-virtual {v11, v12}, Lji;->hasBackup(Z)Z

    .line 553
    .line 554
    .line 555
    move-result v12

    .line 556
    if-eqz v12, :cond_19

    .line 557
    .line 558
    add-int/lit8 v32, v32, 0x1

    .line 559
    .line 560
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 561
    .line 562
    .line 563
    move-result v12

    .line 564
    invoke-virtual {v11, v12}, Lji;->hasRestorableBackup(Z)Z

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    if-eqz v11, :cond_19

    .line 569
    .line 570
    add-int/lit8 v25, v25, 0x1

    .line 571
    .line 572
    goto :goto_10

    .line 573
    :cond_1b
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 574
    .line 575
    .line 576
    move-result v19

    .line 577
    new-instance v12, Ln10;

    .line 578
    .line 579
    const v22, 0x7f080135

    .line 580
    .line 581
    .line 582
    const/16 v16, 0x0

    .line 583
    .line 584
    const-string v13, "Backup"

    .line 585
    .line 586
    const/4 v14, 0x1

    .line 587
    const v15, 0x7f13008f

    .line 588
    .line 589
    .line 590
    const v17, 0x7f080104

    .line 591
    .line 592
    .line 593
    const/16 v20, 0x0

    .line 594
    .line 595
    const v21, 0x7f1300a5

    .line 596
    .line 597
    .line 598
    invoke-direct/range {v12 .. v22}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    if-lez v32, :cond_1c

    .line 605
    .line 606
    if-nez v25, :cond_1c

    .line 607
    .line 608
    const v8, 0x7f1303bc

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    :cond_1c
    move-object/from16 v23, v8

    .line 616
    .line 617
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 618
    .line 619
    .line 620
    move-result v26

    .line 621
    new-instance v19, Ln10;

    .line 622
    .line 623
    if-eqz v26, :cond_1d

    .line 624
    .line 625
    const v8, 0x7f130466

    .line 626
    .line 627
    .line 628
    :goto_11
    move/from16 v22, v8

    .line 629
    .line 630
    goto :goto_12

    .line 631
    :cond_1d
    const v8, 0x7f13045a

    .line 632
    .line 633
    .line 634
    goto :goto_11

    .line 635
    :goto_12
    const v28, 0x7f13046d

    .line 636
    .line 637
    .line 638
    const v29, 0x7f080135

    .line 639
    .line 640
    .line 641
    const-string v20, "Restore"

    .line 642
    .line 643
    const/16 v21, 0x1

    .line 644
    .line 645
    const v24, 0x7f0801ab

    .line 646
    .line 647
    .line 648
    const/16 v27, 0x1

    .line 649
    .line 650
    invoke-direct/range {v19 .. v29}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v8, v19

    .line 654
    .line 655
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ldt;->Y()Lbt;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    invoke-virtual {v8}, Lbt;->isLocalSection()Z

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    if-eqz v8, :cond_1e

    .line 667
    .line 668
    new-instance v26, Ln10;

    .line 669
    .line 670
    const v36, 0x7f080135

    .line 671
    .line 672
    .line 673
    const/16 v30, 0x0

    .line 674
    .line 675
    const-string v27, "Sync backups"

    .line 676
    .line 677
    const/16 v28, 0x1

    .line 678
    .line 679
    const v29, 0x7f130559

    .line 680
    .line 681
    .line 682
    const v31, 0x7f080114

    .line 683
    .line 684
    .line 685
    const/16 v33, 0x0

    .line 686
    .line 687
    const/16 v34, 0x0

    .line 688
    .line 689
    const v35, 0x7f13055d

    .line 690
    .line 691
    .line 692
    invoke-direct/range {v26 .. v36}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 693
    .line 694
    .line 695
    move-object/from16 v8, v26

    .line 696
    .line 697
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    :cond_1e
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 701
    .line 702
    .line 703
    move-result v33

    .line 704
    new-instance v26, Ln10;

    .line 705
    .line 706
    if-eqz v33, :cond_1f

    .line 707
    .line 708
    const v8, 0x7f1301eb

    .line 709
    .line 710
    .line 711
    :goto_13
    move/from16 v29, v8

    .line 712
    .line 713
    goto :goto_14

    .line 714
    :cond_1f
    const v8, 0x7f1301f4

    .line 715
    .line 716
    .line 717
    goto :goto_13

    .line 718
    :goto_14
    const v36, 0x7f080128

    .line 719
    .line 720
    .line 721
    const/16 v30, 0x0

    .line 722
    .line 723
    const-string v27, "Delete backups"

    .line 724
    .line 725
    const/16 v28, 0x1

    .line 726
    .line 727
    const v31, 0x7f080128

    .line 728
    .line 729
    .line 730
    const/16 v34, 0x0

    .line 731
    .line 732
    const v35, 0x7f1301e5

    .line 733
    .line 734
    .line 735
    invoke-direct/range {v26 .. v36}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 736
    .line 737
    .line 738
    move-object/from16 v8, v26

    .line 739
    .line 740
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 744
    .line 745
    .line 746
    move-result v25

    .line 747
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 748
    .line 749
    .line 750
    move-result v26

    .line 751
    new-instance v19, Ln10;

    .line 752
    .line 753
    const v29, 0x7f080101

    .line 754
    .line 755
    .line 756
    const/16 v23, 0x0

    .line 757
    .line 758
    const-string v20, "Export apps list"

    .line 759
    .line 760
    const/16 v21, 0x2

    .line 761
    .line 762
    const v22, 0x7f13022b

    .line 763
    .line 764
    .line 765
    const v24, 0x7f08014f

    .line 766
    .line 767
    .line 768
    const/16 v27, 0x0

    .line 769
    .line 770
    const v28, 0x7f13022b

    .line 771
    .line 772
    .line 773
    invoke-direct/range {v19 .. v29}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 774
    .line 775
    .line 776
    move-object/from16 v8, v19

    .line 777
    .line 778
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 782
    .line 783
    .line 784
    move-result v25

    .line 785
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 786
    .line 787
    .line 788
    move-result v26

    .line 789
    new-instance v19, Ln10;

    .line 790
    .line 791
    const v29, 0x7f080135

    .line 792
    .line 793
    .line 794
    const-string v20, "Apply labels"

    .line 795
    .line 796
    const v22, 0x7f1304ed

    .line 797
    .line 798
    .line 799
    const v24, 0x7f080165

    .line 800
    .line 801
    .line 802
    const v28, 0x7f1300c1

    .line 803
    .line 804
    .line 805
    invoke-direct/range {v19 .. v29}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 806
    .line 807
    .line 808
    move-object/from16 v4, v19

    .line 809
    .line 810
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 814
    .line 815
    .line 816
    move-result v19

    .line 817
    new-instance v12, Ln10;

    .line 818
    .line 819
    const v22, 0x7f080135

    .line 820
    .line 821
    .line 822
    const/16 v16, 0x0

    .line 823
    .line 824
    const-string v13, "Enable/Disable apps"

    .line 825
    .line 826
    const/4 v14, 0x2

    .line 827
    const v15, 0x7f130218

    .line 828
    .line 829
    .line 830
    const v17, 0x7f08012c

    .line 831
    .line 832
    .line 833
    const/16 v20, 0x1

    .line 834
    .line 835
    const v21, 0x7f130218

    .line 836
    .line 837
    .line 838
    invoke-direct/range {v12 .. v22}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    invoke-virtual {v5}, Ldt;->Y()Lbt;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    invoke-virtual {v4}, Lbt;->isLocalSection()Z

    .line 849
    .line 850
    .line 851
    move-result v4

    .line 852
    if-eqz v4, :cond_20

    .line 853
    .line 854
    invoke-virtual {v5}, Ldt;->b0()Z

    .line 855
    .line 856
    .line 857
    move-result v40

    .line 858
    new-instance v33, Ln10;

    .line 859
    .line 860
    const v43, 0x7f080126

    .line 861
    .line 862
    .line 863
    const/16 v37, 0x0

    .line 864
    .line 865
    const-string v34, "Uninstall"

    .line 866
    .line 867
    const/16 v35, 0x2

    .line 868
    .line 869
    const v36, 0x7f13057e

    .line 870
    .line 871
    .line 872
    const v38, 0x7f080126

    .line 873
    .line 874
    .line 875
    const/16 v41, 0x1

    .line 876
    .line 877
    const v42, 0x7f13057d

    .line 878
    .line 879
    .line 880
    invoke-direct/range {v33 .. v43}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 881
    .line 882
    .line 883
    move-object/from16 v4, v33

    .line 884
    .line 885
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    :cond_20
    sget-object v4, Lzn4;->a:Lzn4;

    .line 889
    .line 890
    new-instance v4, Lkg;

    .line 891
    .line 892
    invoke-direct {v4, v2, v0, v9}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    iput v7, v1, Ls10;->b:I

    .line 896
    .line 897
    invoke-static {v4, v1}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    if-ne v0, v6, :cond_21

    .line 902
    .line 903
    move-object v3, v6

    .line 904
    :cond_21
    :goto_15
    return-object v3

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
