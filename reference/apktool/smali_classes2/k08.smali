.class public final Lk08;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ll08;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ll08;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk08;->a:Ll08;

    .line 2
    .line 3
    iput-object p2, p0, Lk08;->b:Ljava/lang/String;

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
    new-instance p1, Lk08;

    .line 2
    .line 3
    iget-object v0, p0, Lk08;->a:Ll08;

    .line 4
    .line 5
    iget-object p0, p0, Lk08;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lk08;-><init>(Ll08;Ljava/lang/String;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lk08;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lk08;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lk08;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const-string v2, "CloudServiceId = "

    .line 6
    .line 7
    const-string v3, "onCodeReceived: loginResult="

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lk08;->a:Ll08;

    .line 13
    .line 14
    iget-object v5, v4, Ll08;->f:Ldd1;

    .line 15
    .line 16
    iget-object v6, v4, Ll08;->h:Li08;

    .line 17
    .line 18
    const v7, 0x7f13042d

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v7}, Lqo0;->h(I)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    sget-object v7, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->Companion:Lm08;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v5}, Lm08;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    new-instance v8, Lh08;

    .line 34
    .line 35
    iget-object v9, v4, Ll08;->g:Lzz7;

    .line 36
    .line 37
    const/16 v10, 0x1e

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    invoke-direct {v8, v9, v11, v11, v10}, Lh08;-><init>(Lzz7;Lxq4;Llm;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lk08;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v8, v0}, Lh08;->e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object v0, v11

    .line 66
    :goto_0
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getUk()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getUk()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v8}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-nez v9, :cond_2

    .line 98
    .line 99
    invoke-static {v8}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_2

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_2

    .line 110
    .line 111
    move-object/from16 v21, v0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    move-object/from16 v21, v11

    .line 115
    .line 116
    :goto_2
    const/16 v22, 0x7f

    .line 117
    .line 118
    const/16 v23, 0x0

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v14, 0x0

    .line 122
    const-wide/16 v15, 0x0

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/16 v18, 0x0

    .line 127
    .line 128
    const/16 v19, 0x0

    .line 129
    .line 130
    const/16 v20, 0x0

    .line 131
    .line 132
    invoke-static/range {v12 .. v23}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move-object/from16 v11, v21

    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iput-object v0, v6, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual {v6, v7}, Li08;->d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iget-object v9, v4, La55;->b:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    instance-of v3, v8, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 169
    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-static {v6}, Leh1;->d(Ljh1;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_3

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_3
    invoke-static {v6, v11}, Leh1;->c(Ljh1;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 186
    .line 187
    .line 188
    move-result-object v33

    .line 189
    const/16 v34, 0x7f

    .line 190
    .line 191
    const/16 v35, 0x0

    .line 192
    .line 193
    const/16 v25, 0x0

    .line 194
    .line 195
    const/16 v26, 0x0

    .line 196
    .line 197
    const-wide/16 v27, 0x0

    .line 198
    .line 199
    const/16 v29, 0x0

    .line 200
    .line 201
    const/16 v30, 0x0

    .line 202
    .line 203
    const/16 v31, 0x0

    .line 204
    .line 205
    const/16 v32, 0x0

    .line 206
    .line 207
    move-object/from16 v24, v0

    .line 208
    .line 209
    invoke-static/range {v24 .. v35}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->copy$default(Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object/from16 v3, v33

    .line 214
    .line 215
    invoke-static {v3}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-eqz v7, :cond_4

    .line 220
    .line 221
    invoke-static {v5, v0}, Lm08;->c(Ldd1;Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    iput-object v0, v6, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :goto_3
    move-object v8, v0

    .line 231
    goto :goto_7

    .line 232
    :catch_0
    move-exception v0

    .line 233
    goto :goto_3

    .line 234
    :cond_4
    :goto_4
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 235
    .line 236
    iget-object v9, v4, La55;->b:Ljava/lang/String;

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    const/4 v12, 0x4

    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v11, 0x0

    .line 253
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_5
    :goto_5
    iget-object v0, v4, Ll08;->l:Lix6;

    .line 258
    .line 259
    if-nez v3, :cond_6

    .line 260
    .line 261
    const-string v3, ""

    .line 262
    .line 263
    :cond_6
    invoke-virtual {v0, v3}, Lix6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    :cond_7
    :goto_6
    iget-object v0, v4, Ll08;->j:Lix6;

    .line 267
    .line 268
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Lqo0;->f()V

    .line 276
    .line 277
    .line 278
    return-object v1

    .line 279
    :goto_7
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 280
    .line 281
    iget-object v6, v4, La55;->b:Ljava/lang/String;

    .line 282
    .line 283
    const/16 v10, 0x8

    .line 284
    .line 285
    const/4 v11, 0x0

    .line 286
    const-string v7, "onCodeReceived"

    .line 287
    .line 288
    const/4 v9, 0x0

    .line 289
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v4, Ll08;->k:Lix6;

    .line 293
    .line 294
    invoke-static {v8}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Lqo0;->f()V

    .line 302
    .line 303
    .line 304
    return-object v1
.end method
