.class public final Lpj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lpj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpj;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Lpj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lpj;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lpj;

    .line 9
    .line 10
    check-cast p0, Lkd7;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lpj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lpj;

    .line 18
    .line 19
    check-cast p0, Lkg4;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lpj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lpj;

    .line 27
    .line 28
    check-cast p0, Lrj;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lpj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lpj;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lpj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lpj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lpj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lpj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lpj;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lpj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lpj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lpj;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lpj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lpj;->a:I

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
    iget-object v4, p0, Lpj;->c:Ljava/lang/Object;

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
    check-cast v4, Lkd7;

    .line 17
    .line 18
    iget v0, p0, Lpj;->b:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v5, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, v4, Lkd7;->e:Lfb2;

    .line 39
    .line 40
    new-instance v0, Lds4;

    .line 41
    .line 42
    invoke-direct {v0, v4, v6}, Lds4;-><init>(Lkd7;Ljv1;)V

    .line 43
    .line 44
    .line 45
    iput v5, p0, Lpj;->b:I

    .line 46
    .line 47
    invoke-interface {p1, v0, p0}, Lfb2;->a(Lqt3;Lkv1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    if-ne p0, v3, :cond_2

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    goto :goto_1

    .line 55
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "App backgrounded, failed to update data. Message: "

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "FirebaseSessions"

    .line 74
    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p0, v4, Lkd7;->h:Lq87;

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    iget-object p1, v4, Lkd7;->d:La48;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, La48;->a()Li38;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v0, 0x5

    .line 92
    invoke-static {p0, v6, p1, v6, v0}, Lq87;->a(Lq87;Lu87;Li38;Ljava/util/Map;I)Lq87;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p0, v4, Lkd7;->h:Lq87;

    .line 97
    .line 98
    :cond_2
    :goto_1
    return-object v1

    .line 99
    :cond_3
    const-string p0, "localSessionData"

    .line 100
    .line 101
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v6

    .line 105
    :pswitch_0
    iget v0, p0, Lpj;->b:I

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    if-ne v0, v5, :cond_4

    .line 110
    .line 111
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v1, v6

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    check-cast v4, Lkg4;

    .line 124
    .line 125
    iget-object p1, v4, Lkg4;->b:Lmb8;

    .line 126
    .line 127
    iput v5, p0, Lpj;->b:I

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Lmb8;->e(Lkv1;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-ne p0, v3, :cond_6

    .line 134
    .line 135
    move-object v1, v3

    .line 136
    :cond_6
    :goto_2
    return-object v1

    .line 137
    :pswitch_1
    check-cast v4, Lrj;

    .line 138
    .line 139
    iget-object v0, v4, Lrj;->e:Lk28;

    .line 140
    .line 141
    iget v7, p0, Lpj;->b:I

    .line 142
    .line 143
    if-eqz v7, :cond_8

    .line 144
    .line 145
    if-ne v7, v5, :cond_7

    .line 146
    .line 147
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_7
    invoke-static {v2}, Ll0;->e(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    move-object v1, v6

    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 162
    .line 163
    if-eqz p1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_3

    .line 170
    :cond_9
    move-object p1, v6

    .line 171
    :goto_3
    if-nez p1, :cond_a

    .line 172
    .line 173
    sget-object p1, Lov2;->a:Lov2;

    .line 174
    .line 175
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_c

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    move-object v8, v7

    .line 190
    check-cast v8, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 191
    .line 192
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    iget-object v9, v4, Lrj;->f:Lji;

    .line 197
    .line 198
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_b

    .line 207
    .line 208
    move-object v6, v7

    .line 209
    :cond_c
    check-cast v6, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 210
    .line 211
    if-eqz v6, :cond_d

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/16 v7, 0x64

    .line 219
    .line 220
    if-lt v2, v7, :cond_e

    .line 221
    .line 222
    const-class p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 223
    .line 224
    invoke-static {v0, p0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const p0, 0x7f130341

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    new-instance p1, Ll30;

    .line 241
    .line 242
    const/16 v2, 0xf

    .line 243
    .line 244
    invoke-direct {p1, v2, v0, p0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_e
    :goto_4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 252
    .line 253
    new-instance v0, Loj;

    .line 254
    .line 255
    const/4 v2, 0x0

    .line 256
    invoke-direct {v0, v2, v4, v6, p1}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iput v5, p0, Lpj;->b:I

    .line 260
    .line 261
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    if-ne p0, v3, :cond_f

    .line 266
    .line 267
    move-object v1, v3

    .line 268
    :cond_f
    :goto_5
    return-object v1

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
