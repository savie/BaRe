.class public final Lk41;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lk41;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk41;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lk41;->d:Ljava/lang/Object;

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
    iput p3, p0, Lk41;->a:I

    iput-object p1, p0, Lk41;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lk41;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk41;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lk41;

    .line 9
    .line 10
    check-cast v1, Liu8;

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    invoke-direct {p0, v1, p2, p1}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    new-instance p1, Lk41;

    .line 18
    .line 19
    iget-object p0, p0, Lk41;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lkd7;

    .line 22
    .line 23
    check-cast v1, Lq87;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-direct {p1, p0, v1, p2, v0}, Lk41;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_1
    new-instance p0, Lk41;

    .line 31
    .line 32
    check-cast v1, Lqt3;

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    invoke-direct {p0, v1, p2, v0}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lk41;->c:Ljava/lang/Object;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_2
    new-instance p1, Lk41;

    .line 42
    .line 43
    iget-object p0, p0, Lk41;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lx54;

    .line 46
    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {p1, p0, v1, p2, v0}, Lk41;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_3
    new-instance p0, Lk41;

    .line 55
    .line 56
    check-cast v1, Ll41;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v1, p2, v0}, Lk41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lk41;->c:Ljava/lang/Object;

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lk41;->a:I

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
    invoke-virtual {p0, p1, p2}, Lk41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lk41;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lk41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lxx1;

    .line 24
    .line 25
    check-cast p2, Ljv1;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lk41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lk41;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lk41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lij5;

    .line 39
    .line 40
    check-cast p2, Ljv1;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lk41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lk41;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lk41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lk41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lk41;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lk41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lr76;

    .line 69
    .line 70
    check-cast p2, Ljv1;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lk41;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lk41;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lk41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lk41;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    iget-object v4, p0, Lk41;->d:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, Liu8;

    .line 17
    .line 18
    iget-object v0, v4, Liu8;->g:Lex6;

    .line 19
    .line 20
    iget v7, p0, Lk41;->b:I

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    if-ne v7, v5, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lk41;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lis8;

    .line 29
    .line 30
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    move-object v1, v6

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ldu8;->a:Ldu8;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    invoke-virtual {v4}, Liu8;->j()Lus8;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lus8;->a:Lke;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v2, Lkt8;->DISPLAY:Lkt8;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lke;->m(Lkt8;)Lis8;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    sub-long/2addr v9, v7

    .line 72
    const-wide/16 v7, 0x3e8

    .line 73
    .line 74
    cmp-long v2, v9, v7

    .line 75
    .line 76
    if-gez v2, :cond_3

    .line 77
    .line 78
    sub-long/2addr v7, v9

    .line 79
    iput-object p1, p0, Lk41;->c:Ljava/lang/Object;

    .line 80
    .line 81
    iput v5, p0, Lk41;->b:I

    .line 82
    .line 83
    invoke-static {v7, v8, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v3, :cond_2

    .line 88
    .line 89
    move-object v1, v3

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    move-object p0, p1

    .line 92
    :goto_1
    move-object p1, p0

    .line 93
    :cond_3
    invoke-virtual {v4}, Liu8;->k()Landroid/net/wifi/WifiManager;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    instance-of v2, p1, Lhs8;

    .line 105
    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    check-cast p1, Lhs8;

    .line 109
    .line 110
    iget-object p1, p1, Lhs8;->a:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    new-instance p1, Lcu8;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lcu8;-><init>(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance p0, Lfu8;

    .line 125
    .line 126
    invoke-direct {p0, p1}, Lfu8;-><init>(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    move-object p1, p0

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    instance-of p0, p1, Lgs8;

    .line 132
    .line 133
    if-eqz p0, :cond_7

    .line 134
    .line 135
    check-cast p1, Lgs8;

    .line 136
    .line 137
    iget-object p0, p1, Lgs8;->a:Lds8;

    .line 138
    .line 139
    sget-object p1, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    .line 140
    .line 141
    if-ne p0, p1, :cond_6

    .line 142
    .line 143
    sget-object p1, Lbu8;->a:Lbu8;

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    new-instance p1, Leu8;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Leu8;-><init>(Lds8;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :goto_3
    return-object v1

    .line 160
    :pswitch_0
    check-cast v4, Lq87;

    .line 161
    .line 162
    iget-object v0, p0, Lk41;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lkd7;

    .line 165
    .line 166
    iget v7, p0, Lk41;->b:I

    .line 167
    .line 168
    const/4 v8, 0x2

    .line 169
    if-eqz v7, :cond_a

    .line 170
    .line 171
    if-eq v7, v5, :cond_9

    .line 172
    .line 173
    if-ne v7, v8, :cond_8

    .line 174
    .line 175
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_8
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move-object v1, v6

    .line 183
    goto :goto_6

    .line 184
    :cond_9
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catch_0
    move-exception p1

    .line 189
    goto :goto_4

    .line 190
    :cond_a
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :try_start_1
    iget-object p1, v0, Lkd7;->e:Lfb2;

    .line 194
    .line 195
    new-instance v2, Lw54;

    .line 196
    .line 197
    invoke-direct {v2, v0, v6}, Lw54;-><init>(Lkd7;Ljv1;)V

    .line 198
    .line 199
    .line 200
    iput v5, p0, Lk41;->b:I

    .line 201
    .line 202
    invoke-interface {p1, v2, p0}, Lfb2;->a(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    if-ne p0, v3, :cond_b

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v5, "App foregrounded, failed to update data. Message: "

    .line 212
    .line 213
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const-string v2, "FirebaseSessions"

    .line 228
    .line 229
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v4}, Lkd7;->e(Lq87;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_b

    .line 237
    .line 238
    iget-object p1, v0, Lkd7;->b:Lb97;

    .line 239
    .line 240
    iget-object v2, v4, Lq87;->a:Lu87;

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Lb97;->a(Lu87;)Lu87;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const/4 v2, 0x4

    .line 247
    invoke-static {v4, p1, v6, v6, v2}, Lq87;->a(Lq87;Lu87;Li38;Ljava/util/Map;I)Lq87;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, v0, Lkd7;->h:Lq87;

    .line 252
    .line 253
    iget-object v2, v0, Lkd7;->c:La97;

    .line 254
    .line 255
    iget-object v4, v2, La97;->e:Lox1;

    .line 256
    .line 257
    invoke-static {v4}, Ll73;->c(Lox1;)Ldv1;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    new-instance v5, Ly87;

    .line 262
    .line 263
    invoke-direct {v5, v2, p1, v6}, Ly87;-><init>(La97;Lu87;Ljv1;)V

    .line 264
    .line 265
    .line 266
    const/4 v2, 0x3

    .line 267
    invoke-static {v4, v6, v5, v2}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 268
    .line 269
    .line 270
    iget-object p1, p1, Lu87;->a:Ljava/lang/String;

    .line 271
    .line 272
    iput v8, p0, Lk41;->b:I

    .line 273
    .line 274
    sget-object v2, Lid7;->b:Lid7;

    .line 275
    .line 276
    invoke-static {v0, p1, v2, p0}, Lkd7;->a(Lkd7;Ljava/lang/String;Lid7;Ljv1;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    if-ne p0, v3, :cond_b

    .line 281
    .line 282
    :goto_5
    move-object v1, v3

    .line 283
    :cond_b
    :goto_6
    return-object v1

    .line 284
    :pswitch_1
    iget v0, p0, Lk41;->b:I

    .line 285
    .line 286
    if-eqz v0, :cond_d

    .line 287
    .line 288
    if-ne v0, v5, :cond_c

    .line 289
    .line 290
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_c
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move-object v3, v6

    .line 298
    goto :goto_8

    .line 299
    :cond_d
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lk41;->c:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p1, Lij5;

    .line 305
    .line 306
    check-cast v4, Lqt3;

    .line 307
    .line 308
    iput v5, p0, Lk41;->b:I

    .line 309
    .line 310
    invoke-interface {v4, p1, p0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-ne p1, v3, :cond_e

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_e
    :goto_7
    move-object v3, p1

    .line 318
    check-cast v3, Lij5;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    iget-object p0, v3, Lij5;->b:Lrb;

    .line 324
    .line 325
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    .line 329
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    .line 331
    .line 332
    :goto_8
    return-object v3

    .line 333
    :pswitch_2
    check-cast v4, Ljava/lang/String;

    .line 334
    .line 335
    iget-object v0, p0, Lk41;->c:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v0, Lx54;

    .line 338
    .line 339
    iget v7, p0, Lk41;->b:I

    .line 340
    .line 341
    if-eqz v7, :cond_10

    .line 342
    .line 343
    if-ne v7, v5, :cond_f

    .line 344
    .line 345
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_f
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    move-object v1, v6

    .line 353
    goto :goto_a

    .line 354
    :cond_10
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    iput v5, p0, Lk41;->b:I

    .line 358
    .line 359
    const-wide/16 v5, 0x78

    .line 360
    .line 361
    invoke-static {v5, v6, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    if-ne p0, v3, :cond_11

    .line 366
    .line 367
    move-object v1, v3

    .line 368
    goto :goto_a

    .line 369
    :cond_11
    :goto_9
    sget-object p0, Lkz4;->g:Lkz4;

    .line 370
    .line 371
    invoke-virtual {p0}, Ldv;->e()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    sget-object p1, Lpz4;->g:Lpz4;

    .line 376
    .line 377
    invoke-virtual {p1}, Ldv;->e()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    iget-object v2, v0, Lx54;->h:Ljava/lang/String;

    .line 382
    .line 383
    invoke-static {v2, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_12

    .line 388
    .line 389
    iget-object v2, v0, Lx54;->e:Lex6;

    .line 390
    .line 391
    invoke-virtual {v0, v4, p0, p1}, Lx54;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lv54;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    invoke-virtual {v2, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :cond_12
    :goto_a
    return-object v1

    .line 399
    :pswitch_3
    iget-object v0, p0, Lk41;->c:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Lr76;

    .line 402
    .line 403
    iget v7, p0, Lk41;->b:I

    .line 404
    .line 405
    if-eqz v7, :cond_14

    .line 406
    .line 407
    if-ne v7, v5, :cond_13

    .line 408
    .line 409
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_13
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    move-object v1, v6

    .line 417
    goto :goto_b

    .line 418
    :cond_14
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    check-cast v4, Ll41;

    .line 422
    .line 423
    iput-object v6, p0, Lk41;->c:Ljava/lang/Object;

    .line 424
    .line 425
    iput v5, p0, Lk41;->b:I

    .line 426
    .line 427
    invoke-virtual {v4, v0, p0}, Ll41;->a(Lr76;Lk41;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    if-ne p0, v3, :cond_15

    .line 432
    .line 433
    move-object v1, v3

    .line 434
    :cond_15
    :goto_b
    return-object v1

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
