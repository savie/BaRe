.class public final Lw54;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkd7;Ljv1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw54;->a:I

    .line 13
    iput-object p1, p0, Lw54;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    return-void
.end method

.method public constructor <init>(Lx54;Ljava/lang/String;Ljv1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw54;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lw54;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lw54;->c:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    iget v0, p0, Lw54;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw54;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lw54;

    .line 9
    .line 10
    check-cast v1, Lkd7;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Lw54;-><init>(Lkd7;Ljv1;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lw54;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p1, Lw54;

    .line 19
    .line 20
    iget-object p0, p0, Lw54;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lx54;

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p1, p0, v1, p2}, Lw54;-><init>(Lx54;Ljava/lang/String;Ljv1;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lw54;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lq87;

    .line 9
    .line 10
    check-cast p2, Ljv1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lw54;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lw54;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lw54;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lw54;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lw54;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lw54;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lw54;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw54;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lw54;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lq87;

    .line 14
    .line 15
    check-cast v1, Lkd7;

    .line 16
    .line 17
    iget-object p1, v1, Lkd7;->f:Lj76;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lkd7;->e(Lq87;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lq87;->c:Ljava/util/Map;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v4, "FirebaseSessions"

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-eqz v2, :cond_9

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-boolean v6, p1, Lj76;->f:Z

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    iget-object v6, p1, Lj76;->a:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v6}, Li6;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_3

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Lk76;

    .line 67
    .line 68
    iget-object v10, v9, Lk76;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    check-cast v10, Li76;

    .line 75
    .line 76
    if-eqz v10, :cond_2

    .line 77
    .line 78
    new-instance v11, Lpw5;

    .line 79
    .line 80
    invoke-direct {v11, v9, v10}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v11, v3

    .line 85
    :goto_1
    if-eqz v11, :cond_1

    .line 86
    .line 87
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_5

    .line 96
    .line 97
    :cond_4
    move v7, v5

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Lpw5;

    .line 114
    .line 115
    iget-object v9, v8, Lpw5;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v9, Lk76;

    .line 118
    .line 119
    iget-object v8, v8, Lpw5;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v8, Li76;

    .line 122
    .line 123
    invoke-virtual {p1}, Lj76;->a()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    iget-object v11, v9, Lk76;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    iget v9, v9, Lk76;->b:I

    .line 134
    .line 135
    if-eqz v10, :cond_7

    .line 136
    .line 137
    iget v10, v8, Li76;->a:I

    .line 138
    .line 139
    if-ne v9, v10, :cond_6

    .line 140
    .line 141
    iget-object v9, p1, Lj76;->d:Lgv7;

    .line 142
    .line 143
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    check-cast v9, Ljava/lang/String;

    .line 148
    .line 149
    iget-object v8, v8, Li76;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v9, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_8

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    iget v8, v8, Li76;->a:I

    .line 159
    .line 160
    if-eq v9, v8, :cond_8

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    :goto_3
    if-eqz v7, :cond_a

    .line 164
    .line 165
    const-string v6, "Cold app start detected"

    .line 166
    .line 167
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    const-string v6, "No process data map"

    .line 172
    .line 173
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move v7, v5

    .line 177
    :cond_a
    :goto_4
    invoke-virtual {v1, p0}, Lkd7;->d(Lq87;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v7, :cond_b

    .line 182
    .line 183
    sget-object v2, Lpv2;->a:Lpv2;

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lj76;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    goto :goto_5

    .line 190
    :cond_b
    if-eqz v4, :cond_c

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Lj76;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    .line 197
    .line 198
    move-object v6, v3

    .line 199
    goto :goto_6

    .line 200
    :cond_d
    iget-object v6, p0, Lq87;->a:Lu87;

    .line 201
    .line 202
    :goto_6
    const/4 v8, 0x3

    .line 203
    if-nez v0, :cond_f

    .line 204
    .line 205
    if-eqz v7, :cond_e

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_e
    if-eqz v4, :cond_10

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Lj76;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p0, v3, v3, p1, v8}, Lq87;->a(Lq87;Lu87;Li38;Ljava/util/Map;I)Lq87;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    goto :goto_8

    .line 219
    :cond_f
    :goto_7
    iget-object p0, v1, Lkd7;->b:Lb97;

    .line 220
    .line 221
    invoke-virtual {p0, v6}, Lb97;->a(Lu87;)Lu87;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object v0, v1, Lkd7;->c:La97;

    .line 226
    .line 227
    iget-object v1, v0, La97;->e:Lox1;

    .line 228
    .line 229
    invoke-static {v1}, Ll73;->c(Lox1;)Ldv1;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v4, Ly87;

    .line 234
    .line 235
    invoke-direct {v4, v0, p0, v3}, Ly87;-><init>(La97;Lu87;Ljv1;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v1, v3, v4, v8}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 239
    .line 240
    .line 241
    iput-boolean v5, p1, Lj76;->f:Z

    .line 242
    .line 243
    new-instance p1, Lq87;

    .line 244
    .line 245
    invoke-direct {p1, p0, v3, v2}, Lq87;-><init>(Lu87;Li38;Ljava/util/Map;)V

    .line 246
    .line 247
    .line 248
    move-object p0, p1

    .line 249
    :cond_10
    :goto_8
    return-object p0

    .line 250
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object p1, Lkz4;->g:Lkz4;

    .line 254
    .line 255
    invoke-virtual {p1}, Ldv;->e()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    sget-object v0, Lpz4;->g:Lpz4;

    .line 260
    .line 261
    invoke-virtual {v0}, Ldv;->e()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object p0, p0, Lw54;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p0, Lx54;

    .line 268
    .line 269
    iget-object v2, p0, Lx54;->h:Ljava/lang/String;

    .line 270
    .line 271
    check-cast v1, Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_11

    .line 278
    .line 279
    iget-object v2, p0, Lx54;->e:Lex6;

    .line 280
    .line 281
    invoke-virtual {p0, v1, p1, v0}, Lx54;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lv54;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v2, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 289
    .line 290
    return-object p0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
