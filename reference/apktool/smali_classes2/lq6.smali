.class public final Llq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljs8;


# instance fields
.field public final a:Lgt8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lgt8;

    .line 2
    .line 3
    invoke-direct {v0}, Lgt8;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llq6;->a:Lgt8;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final read()Lis8;
    .locals 9

    .line 1
    iget-object v2, p0, Llq6;->a:Lgt8;

    .line 2
    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    sget-boolean p0, Lmp6;->g:Z

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 9
    .line 10
    const-string v4, "WifiPasswordParser"

    .line 11
    .line 12
    const-string v5, "parse: Root not available"

    .line 13
    .line 14
    const/4 v7, 0x4

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lht8;->a:Lht8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v2

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    move-object p0, v0

    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    :try_start_1
    new-instance v0, Lrk;

    .line 29
    .line 30
    const-class v3, Lgt8;

    .line 31
    .line 32
    const-string v4, "copyFreshSystemConfig"

    .line 33
    .line 34
    const-string v5, "copyFreshSystemConfig()Z"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x5

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct/range {v0 .. v7}, Lrk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lkn3;

    .line 43
    .line 44
    const/16 v1, 0x13

    .line 45
    .line 46
    invoke-direct {p0, v2, v1}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v2, Lgt8;->b:Lq63;

    .line 50
    .line 51
    invoke-virtual {v1}, Lq63;->h()Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lrk;->invoke()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    sget-object p0, Lht8;->a:Lht8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :try_start_2
    new-instance v0, Ljt8;

    .line 70
    .line 71
    invoke-virtual {p0}, Lkn3;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/util/List;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Ljt8;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_0
    move-object p0, v0

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    move-object p0, v0

    .line 84
    :try_start_3
    new-instance v0, Lit8;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lit8;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    monitor-exit v2

    .line 91
    :goto_2
    instance-of v0, p0, Ljt8;

    .line 92
    .line 93
    if-eqz v0, :cond_c

    .line 94
    .line 95
    check-cast p0, Ljt8;

    .line 96
    .line 97
    iget-object p0, p0, Ljt8;->a:Ljava/util/List;

    .line 98
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    const/16 v1, 0xa

    .line 102
    .line 103
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    sget-object v2, Let8;->Companion:Let8$a;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Let8$a;->createForAndroidQ(Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)Let8;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v3, Ljava/util/BitSet;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntEapMethod()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_7

    .line 151
    .line 152
    :cond_2
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntPhase2Method()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_3

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_7

    .line 163
    .line 164
    :cond_3
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntIdentity()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_7

    .line 175
    .line 176
    :cond_4
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntAnonIdentity()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_5

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_7

    .line 187
    .line 188
    :cond_5
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntPassword()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-eqz v4, :cond_6

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-nez v4, :cond_7

    .line 199
    .line 200
    :cond_6
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntCaCert()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-eqz v4, :cond_8

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_7

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    const/4 v1, 0x2

    .line 214
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getPsk()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_9

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_9
    const/4 v1, 0x1

    .line 232
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_a
    :goto_5
    const/4 v1, 0x0

    .line 237
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 238
    .line 239
    .line 240
    :goto_6
    invoke-virtual {v2, v3}, Let8;->setAllowedKeyManagement(Ljava/util/BitSet;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_b
    sget-object p0, Lks8;->ROOT_XML:Lks8;

    .line 249
    .line 250
    new-instance v1, Lhs8;

    .line 251
    .line 252
    invoke-direct {v1, v0, p0}, Lhs8;-><init>(Ljava/util/List;Lks8;)V

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_c
    sget-object v0, Lht8;->a:Lht8;

    .line 257
    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    const/4 v1, 0x0

    .line 263
    if-eqz v0, :cond_d

    .line 264
    .line 265
    new-instance p0, Lgs8;

    .line 266
    .line 267
    sget-object v0, Lds8;->ROOT_COPY_FAILED:Lds8;

    .line 268
    .line 269
    sget-object v2, Lks8;->ROOT_XML:Lks8;

    .line 270
    .line 271
    invoke-direct {p0, v0, v2, v1}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    move-object v1, p0

    .line 275
    goto :goto_7

    .line 276
    :cond_d
    instance-of v0, p0, Lit8;

    .line 277
    .line 278
    if-eqz v0, :cond_e

    .line 279
    .line 280
    new-instance v1, Lgs8;

    .line 281
    .line 282
    sget-object v0, Lds8;->ROOT_PARSE_FAILED:Lds8;

    .line 283
    .line 284
    sget-object v2, Lks8;->ROOT_XML:Lks8;

    .line 285
    .line 286
    check-cast p0, Lit8;

    .line 287
    .line 288
    iget-object p0, p0, Lit8;->a:Ljava/lang/Exception;

    .line 289
    .line 290
    invoke-direct {v1, v0, v2, p0}, Lgs8;-><init>(Lds8;Lks8;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_7
    return-object v1

    .line 294
    :cond_e
    invoke-static {}, Lq;->j()V

    .line 295
    .line 296
    .line 297
    return-object v1

    .line 298
    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    throw p0
.end method
