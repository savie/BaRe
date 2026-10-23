.class public final Lmg1;
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
    iput p3, p0, Lmg1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmg1;->c:Ljava/lang/Object;

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
    iget p1, p0, Lmg1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lmg1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmg1;

    .line 9
    .line 10
    check-cast p0, Lop8;

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lmg1;

    .line 18
    .line 19
    check-cast p0, Lkd7;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Lmg1;

    .line 27
    .line 28
    check-cast p0, Ljo6;

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Lmg1;

    .line 36
    .line 37
    check-cast p0, Lc64;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_3
    new-instance p1, Lmg1;

    .line 45
    .line 46
    check-cast p0, Lic2;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_4
    new-instance p1, Lmg1;

    .line 54
    .line 55
    check-cast p0, Lng1;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-direct {p1, p0, p2, v0}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lmg1;->a:I

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
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lmg1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lmg1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lmg1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lmg1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lmg1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lmg1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lmg1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lmg1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lmg1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Lmg1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lyx1;->a:Lyx1;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lmg1;->b:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v7, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v3, v8

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ltv7;->a()Lsv7;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Lzn4;->a:Lzn4;

    .line 41
    .line 42
    check-cast v4, Lop8;

    .line 43
    .line 44
    new-instance v0, Lkg;

    .line 45
    .line 46
    const/16 v1, 0x10

    .line 47
    .line 48
    invoke-direct {v0, v1, v4, p1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput v7, p0, Lmg1;->b:I

    .line 52
    .line 53
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-ne p0, v6, :cond_2

    .line 58
    .line 59
    move-object v3, v6

    .line 60
    :cond_2
    :goto_0
    return-object v3

    .line 61
    :pswitch_0
    check-cast v4, Lkd7;

    .line 62
    .line 63
    iget v0, p0, Lmg1;->b:I

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    if-ne v0, v7, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v3, v8

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v4, Lkd7;->e:Lfb2;

    .line 82
    .line 83
    invoke-interface {p1}, Lfb2;->getData()Lji3;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Lhd7;

    .line 88
    .line 89
    invoke-direct {v0, v4, v8}, Lhd7;-><init>(Lkd7;Ljv1;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lro;

    .line 93
    .line 94
    const/4 v2, 0x7

    .line 95
    invoke-direct {v1, v2, p1, v0}, Lro;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lub2;

    .line 99
    .line 100
    invoke-direct {p1, v4, v7}, Lub2;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    iput v7, p0, Lmg1;->b:I

    .line 104
    .line 105
    invoke-virtual {v1, p1, p0}, Lro;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-ne p0, v6, :cond_5

    .line 110
    .line 111
    move-object v3, v6

    .line 112
    :cond_5
    :goto_1
    return-object v3

    .line 113
    :pswitch_1
    iget v0, p0, Lmg1;->b:I

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    if-ne v0, v7, :cond_6

    .line 118
    .line 119
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v3, v8

    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    check-cast v4, Ljo6;

    .line 132
    .line 133
    iput v7, p0, Lmg1;->b:I

    .line 134
    .line 135
    invoke-static {v4, p0}, Ljo6;->l(Ljo6;Lkv1;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-ne p0, v6, :cond_8

    .line 140
    .line 141
    move-object v3, v6

    .line 142
    :cond_8
    :goto_2
    return-object v3

    .line 143
    :pswitch_2
    check-cast v4, Lc64;

    .line 144
    .line 145
    iget v0, p0, Lmg1;->b:I

    .line 146
    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    if-ne v0, v7, :cond_9

    .line 150
    .line 151
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_9
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v3, v8

    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_a
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Ltb1;->a:Ltb1;

    .line 166
    .line 167
    invoke-static {}, Lqb1;->m()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1}, Ltb1;->n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 178
    .line 179
    .line 180
    :cond_b
    sget-object p1, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 181
    .line 182
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/Const;->e()V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lc64;->l:Lix6;

    .line 186
    .line 187
    iget-object v0, v4, Lc64;->h:Lgv7;

    .line 188
    .line 189
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lzc2;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    sget-boolean v5, Lg42;->a:Z

    .line 199
    .line 200
    const-string v5, "AQKWTKIXFyf2dDVVP0gjLt6JxW675+o51FsDiETa0sRWeokVcIuPtf+k4Nrw1ngtETihDLu6irASSZG0SJFEddFPN7MFugdcjaq5jh6ERJBUy8rFrf/O2L8tYfvt0pOu1pGRz4k0gJQCIqNQNOvny78GcIuXRxeYRyK272pyGQ=="

    .line 201
    .line 202
    invoke-static {v5}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    sget-object v9, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 207
    .line 208
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/common/V;->getC()Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_c

    .line 219
    .line 220
    invoke-virtual {p1, v5}, Lorg/swiftapps/swiftbackup/common/Const;->Q(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_c
    new-instance p1, Lts1;

    .line 224
    .line 225
    invoke-direct {p1, v5}, Lts1;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Lzc2;->c(Laj8;)V

    .line 229
    .line 230
    .line 231
    iput-object p1, v4, Lc64;->i:Lts1;

    .line 232
    .line 233
    sget-object p1, Lzn4;->a:Lzn4;

    .line 234
    .line 235
    new-instance p1, Lb64;

    .line 236
    .line 237
    invoke-direct {p1, v4, v8}, Lb64;-><init>(Lc64;Ljv1;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v8, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 241
    .line 242
    .line 243
    :try_start_0
    sget-object p1, Ld45;->b:Ld45;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_d

    .line 253
    .line 254
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_3

    .line 263
    :catch_0
    :cond_d
    move-object p1, v8

    .line 264
    :goto_3
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 265
    .line 266
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_e

    .line 271
    .line 272
    invoke-static {}, Lre3;->b()Lzc2;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const-string v0, "multithreaded_downloads"

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    new-instance v0, Lsl4;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Lzc2;->c(Laj8;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    .line 289
    .line 290
    :catch_1
    :cond_e
    sget-object p1, Lzn7;->q:Lyn7;

    .line 291
    .line 292
    invoke-virtual {p1}, Lyn7;->d()Lzn7;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const/4 v4, 0x6

    .line 297
    invoke-static {v0, v4}, Lorg/swiftapps/swiftbackup/common/Const;->b(Lzn7;I)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-nez v4, :cond_11

    .line 302
    .line 303
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 304
    .line 305
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    sget-object v1, Lzn4;->a:Lzn4;

    .line 310
    .line 311
    new-instance v1, Ll30;

    .line 312
    .line 313
    const/16 v2, 0xf

    .line 314
    .line 315
    const-string v3, "File read/write check failed! Please restart the app."

    .line 316
    .line 317
    invoke-direct {v1, v2, v0, v3}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v8}, Lyn7;->h(Lzn7;)V

    .line 324
    .line 325
    .line 326
    iput v7, p0, Lmg1;->b:I

    .line 327
    .line 328
    const-wide/16 v0, 0xbb8

    .line 329
    .line 330
    invoke-static {v0, v1, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    if-ne p0, v6, :cond_f

    .line 335
    .line 336
    move-object v3, v6

    .line 337
    goto :goto_5

    .line 338
    :cond_f
    :goto_4
    sget-object p0, Lmp6;->a:Lmp6;

    .line 339
    .line 340
    invoke-static {}, Lmp6;->f()Z

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    if-eqz p0, :cond_10

    .line 345
    .line 346
    sget-object p0, Ldz5;->a:Ldz5;

    .line 347
    .line 348
    invoke-static {}, Ldz5;->p()V

    .line 349
    .line 350
    .line 351
    const-string p0, "File read/write checks failed after revoking storage permission"

    .line 352
    .line 353
    invoke-static {p0, v7}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 354
    .line 355
    .line 356
    throw v8

    .line 357
    :cond_10
    const-string p0, "File read/write checks failed"

    .line 358
    .line 359
    invoke-static {p0, v7}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    throw v8

    .line 363
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    sget-boolean p0, Lq63;->d:Z

    .line 367
    .line 368
    sget-object p0, Lry5;->u:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v0}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    new-instance p1, Lq63;

    .line 375
    .line 376
    const-string v0, ".trash/atomic-delete"

    .line 377
    .line 378
    invoke-direct {p1, p0, v0, v2}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    .line 380
    .line 381
    new-instance p0, Ljx;

    .line 382
    .line 383
    invoke-direct {p0, v2}, Ljx;-><init>(I)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Llx;

    .line 387
    .line 388
    invoke-direct {v0, v7, p0, p1}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    sget-object p0, Lm70;->a:Lgv7;

    .line 392
    .line 393
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 401
    .line 402
    new-instance p1, Lj70;

    .line 403
    .line 404
    invoke-direct {p1, v0, v1}, Lj70;-><init>(Ljava/lang/Object;I)V

    .line 405
    .line 406
    .line 407
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 408
    .line 409
    .line 410
    :goto_5
    return-object v3

    .line 411
    :pswitch_3
    check-cast v4, Lic2;

    .line 412
    .line 413
    iget v0, p0, Lmg1;->b:I

    .line 414
    .line 415
    if-eqz v0, :cond_14

    .line 416
    .line 417
    if-eq v0, v7, :cond_13

    .line 418
    .line 419
    if-ne v0, v2, :cond_12

    .line 420
    .line 421
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_12
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    move-object v3, v8

    .line 429
    goto :goto_a

    .line 430
    :cond_13
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_14
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object p1, v4, Lic2;->i:Lkb2;

    .line 438
    .line 439
    iput v7, p0, Lmg1;->b:I

    .line 440
    .line 441
    iget-object p1, p1, Lkb2;->b:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast p1, Lbn1;

    .line 444
    .line 445
    invoke-virtual {p1, p0}, Lci4;->k(Ljv1;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    if-ne p1, v6, :cond_15

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_15
    move-object p1, v3

    .line 453
    :goto_6
    if-ne p1, v6, :cond_16

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :cond_16
    :goto_7
    invoke-virtual {v4}, Lic2;->g()Lsd4;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-interface {p1}, Lsd4;->e()Lji3;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    instance-of v0, p1, Ldu3;

    .line 465
    .line 466
    sget-object v5, Llv2;->a:Llv2;

    .line 467
    .line 468
    sget-object v7, Lpw0;->b:Lpw0;

    .line 469
    .line 470
    if-eqz v0, :cond_17

    .line 471
    .line 472
    check-cast p1, Ldu3;

    .line 473
    .line 474
    invoke-interface {p1, v5, v1, v7}, Ldu3;->j(Lox1;ILpw0;)Lji3;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    goto :goto_8

    .line 479
    :cond_17
    new-instance v0, Lp41;

    .line 480
    .line 481
    invoke-direct {v0, p1, v5, v1, v7}, Lp41;-><init>(Lji3;Lox1;ILpw0;)V

    .line 482
    .line 483
    .line 484
    move-object p1, v0

    .line 485
    :goto_8
    new-instance v0, Lub2;

    .line 486
    .line 487
    invoke-direct {v0, v4, v1}, Lub2;-><init>(Ljava/lang/Object;I)V

    .line 488
    .line 489
    .line 490
    iput v2, p0, Lmg1;->b:I

    .line 491
    .line 492
    invoke-interface {p1, v0, p0}, Lji3;->t(Lli3;Lkv1;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    if-ne p0, v6, :cond_18

    .line 497
    .line 498
    :goto_9
    move-object v3, v6

    .line 499
    :cond_18
    :goto_a
    return-object v3

    .line 500
    :pswitch_4
    check-cast v4, Lng1;

    .line 501
    .line 502
    iget v0, p0, Lmg1;->b:I

    .line 503
    .line 504
    const-string v1, "activityVM"

    .line 505
    .line 506
    if-eqz v0, :cond_1a

    .line 507
    .line 508
    if-ne v0, v7, :cond_19

    .line 509
    .line 510
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_19
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    move-object v3, v8

    .line 518
    goto :goto_c

    .line 519
    :cond_1a
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 523
    .line 524
    .line 525
    move-result-wide v9

    .line 526
    iget-object p1, v4, Lng1;->d:Lqo0;

    .line 527
    .line 528
    if-eqz p1, :cond_1d

    .line 529
    .line 530
    const v0, 0x7f13042d

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1, v0}, Lqo0;->h(I)V

    .line 534
    .line 535
    .line 536
    sget-object p1, Ltb1;->a:Ltb1;

    .line 537
    .line 538
    invoke-static {}, Lqb1;->a()V

    .line 539
    .line 540
    .line 541
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    sget-object v0, Lzn4;->a:Lzn4;

    .line 549
    .line 550
    new-instance v0, Lsb1;

    .line 551
    .line 552
    invoke-direct {v0, p1, v7, v8}, Lsb1;-><init>(Ltb1;ZLjv1;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v8, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 556
    .line 557
    .line 558
    const-wide/16 v11, 0x3e8

    .line 559
    .line 560
    invoke-static {v9, v10, v11, v12}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 561
    .line 562
    .line 563
    move-result-wide v9

    .line 564
    iput v7, p0, Lmg1;->b:I

    .line 565
    .line 566
    invoke-static {v9, v10, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    if-ne p0, v6, :cond_1b

    .line 571
    .line 572
    move-object v3, v6

    .line 573
    goto :goto_c

    .line 574
    :cond_1b
    :goto_b
    sget p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 575
    .line 576
    sget-object p0, Lbt;->LOCAL:Lbt;

    .line 577
    .line 578
    invoke-static {p0}, Ly13;->E(Lbt;)V

    .line 579
    .line 580
    .line 581
    iget-object p0, v4, Lng1;->d:Lqo0;

    .line 582
    .line 583
    if-eqz p0, :cond_1c

    .line 584
    .line 585
    invoke-virtual {p0}, Lqo0;->f()V

    .line 586
    .line 587
    .line 588
    :goto_c
    return-object v3

    .line 589
    :cond_1c
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v8

    .line 593
    :cond_1d
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw v8

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
