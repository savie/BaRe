.class public final Lsb5;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ltb5;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltb5;Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;Ljava/lang/String;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsb5;->a:Ltb5;

    .line 2
    .line 3
    iput-object p2, p0, Lsb5;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 4
    .line 5
    iput-object p3, p0, Lsb5;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lsb5;

    .line 2
    .line 3
    iget-object v0, p0, Lsb5;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 4
    .line 5
    iget-object v1, p0, Lsb5;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lsb5;->a:Ltb5;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lsb5;-><init>(Ltb5;Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;Ljava/lang/String;Ljv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lsb5;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsb5;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsb5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lsb5;->a:Ltb5;

    .line 5
    .line 6
    iget-object v0, p1, Ltb5;->e:Lgv7;

    .line 7
    .line 8
    const v1, 0x7f13042e

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lqo0;->h(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lsb5;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;->isValid()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_a

    .line 22
    .line 23
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 24
    .line 25
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lai8;->i(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 37
    .line 38
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    const/4 v10, 0x0

    .line 42
    const-string v7, "Network not available"

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const v2, 0x7f1303c7

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v2}, Lai8;->m(Landroid/content/Context;I)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/Exception;

    .line 61
    .line 62
    invoke-direct {v2, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;-><init>(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lnb5;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v2, Lnb5;->b:Lgt7;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sput-object v1, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 84
    .line 85
    sget-object v5, Lgt7;->h:Lgh;

    .line 86
    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    iget-object v5, v5, Lgh;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, [B

    .line 92
    .line 93
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 94
    .line 95
    .line 96
    :cond_1
    sput-object v3, Lgt7;->h:Lgh;

    .line 97
    .line 98
    sput-object v3, Lgt7;->i:Lvq;

    .line 99
    .line 100
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lnb5;

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lsb5;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, p0}, Lgt7;->e(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 116
    .line 117
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v7, "login.LoginResult: "

    .line 122
    .line 123
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const/4 v9, 0x4

    .line 134
    const/4 v10, 0x0

    .line 135
    const/4 v8, 0x0

    .line 136
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    instance-of v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    move-object v2, p0

    .line 144
    check-cast v2, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;

    .line 145
    .line 146
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Failed;->getE()Ljava/lang/Exception;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const-string v8, "Error: "

    .line 157
    .line 158
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const/4 v9, 0x4

    .line 163
    const/4 v10, 0x0

    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v5, v2}, Lai8;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_2
    :goto_0
    instance-of v2, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$Success;

    .line 184
    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    sget-object v2, Lx95;->g:Lx95;

    .line 188
    .line 189
    invoke-static {v1}, Lx95;->r(Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Lnb5;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object v0, Lnb5;->b:Lgt7;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    sput-object v1, Lgt7;->b:Lorg/swiftapps/swiftbackup/cloud/clients/MegaClient$Credentials;

    .line 207
    .line 208
    sget-object v0, Lgt7;->h:Lgh;

    .line 209
    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    iget-object v0, v0, Lgh;->b:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, [B

    .line 215
    .line 216
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 217
    .line 218
    .line 219
    :cond_3
    sput-object v3, Lgt7;->h:Lgh;

    .line 220
    .line 221
    sput-object v3, Lgt7;->i:Lvq;

    .line 222
    .line 223
    iget-object v0, p1, Ltb5;->f:Lgv7;

    .line 224
    .line 225
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lx95;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lx95;->o()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_5

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_4

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_4
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 248
    .line 249
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 250
    .line 251
    const/4 v9, 0x4

    .line 252
    const/4 v10, 0x0

    .line 253
    const-string v7, "Main folder created!"

    .line 254
    .line 255
    const/4 v8, 0x0

    .line 256
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const/4 v4, 0x1

    .line 260
    goto :goto_2

    .line 261
    :cond_5
    :goto_1
    iget-object v1, p1, Ltb5;->m:Lix6;

    .line 262
    .line 263
    if-nez v0, :cond_6

    .line 264
    .line 265
    const-string v0, ""

    .line 266
    .line 267
    :cond_6
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_7
    move v4, v2

    .line 272
    :goto_2
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/mega/MegaLoginResult$MultiFactorAuthRequired;

    .line 273
    .line 274
    if-eqz p0, :cond_8

    .line 275
    .line 276
    iget-object p0, p1, Ltb5;->k:Lix6;

    .line 277
    .line 278
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_8
    if-eqz v4, :cond_9

    .line 284
    .line 285
    iget-object p0, p1, Ltb5;->j:Lix6;

    .line 286
    .line 287
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    invoke-virtual {p1}, Lqo0;->f()V

    .line 293
    .line 294
    .line 295
    sget-object p0, Lbe8;->a:Lbe8;

    .line 296
    .line 297
    return-object p0

    .line 298
    :cond_a
    iget-object p0, p1, La55;->b:Ljava/lang/String;

    .line 299
    .line 300
    const-string p1, ".login"

    .line 301
    .line 302
    invoke-static {p0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-object v3
.end method
