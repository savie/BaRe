.class public abstract Lnj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lai6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai6;

    .line 2
    .line 3
    const-string v1, "uid:(\\d+)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lai6;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnj7;->a:Lai6;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Llj7;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "rm -rf "

    .line 4
    .line 5
    iget-object v2, v0, Llj7;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget-object v3, Lmp6;->a:Lmp6;

    .line 8
    .line 9
    sget-boolean v4, Lmp6;->g:Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_8

    .line 15
    .line 16
    :cond_0
    iget-object v4, v0, Llj7;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-static {v4}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v4, v5

    .line 30
    :goto_0
    if-nez v4, :cond_2

    .line 31
    .line 32
    const-string v4, ""

    .line 33
    .line 34
    :cond_2
    const-string v6, "com.android.vending"

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    const-string v0, "Failure [No APK files provided]"

    .line 51
    .line 52
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_4
    iget-object v6, v0, Llj7;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v6}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v4}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v8, "pm list packages -U --user "

    .line 68
    .line 69
    const-string v9, " "

    .line 70
    .line 71
    invoke-static {v8, v6, v9, v7}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    filled-new-array {v6}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    sget-object v7, Lip6;->SU:Lip6;

    .line 80
    .line 81
    invoke-virtual {v3, v6, v7}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v7, 0x0

    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    move-object v8, v6

    .line 101
    check-cast v8, Ljava/lang/String;

    .line 102
    .line 103
    const-string v9, "package:"

    .line 104
    .line 105
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v8, v9, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    move-object v6, v5

    .line 117
    :goto_1
    check-cast v6, Ljava/lang/String;

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    if-eqz v6, :cond_8

    .line 121
    .line 122
    sget-object v8, Lnj7;->a:Lai6;

    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object v8, v8, Lai6;->a:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->find(I)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_7

    .line 141
    .line 142
    move-object v7, v5

    .line 143
    goto :goto_2

    .line 144
    :cond_7
    new-instance v7, Lu75;

    .line 145
    .line 146
    invoke-direct {v7, v8, v6}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    if-eqz v7, :cond_8

    .line 150
    .line 151
    invoke-virtual {v7}, Lu75;->a()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v3, v6}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    const/16 v7, 0xa

    .line 164
    .line 165
    invoke-static {v7, v6}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    move-object v6, v5

    .line 171
    :goto_3
    if-eqz v6, :cond_f

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    const-string v8, "/data/local/tmp/swiftbackup-install-"

    .line 182
    .line 183
    invoke-static {v6, v7, v8}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const-wide/16 v8, 0x0

    .line 192
    .line 193
    move-wide v11, v8

    .line 194
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_9

    .line 199
    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Lsg;

    .line 205
    .line 206
    iget-wide v8, v8, Lsg;->c:J

    .line 207
    .line 208
    add-long/2addr v11, v8

    .line 209
    goto :goto_4

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    goto :goto_7

    .line 212
    :cond_9
    iget-wide v13, v0, Llj7;->f:J

    .line 213
    .line 214
    iget-object v15, v0, Llj7;->g:Lmt3;

    .line 215
    .line 216
    new-instance v10, Lwg;

    .line 217
    .line 218
    invoke-direct/range {v10 .. v15}, Lwg;-><init>(JJLmt3;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v2, v6, v10}, Lnj7;->e(Ljava/util/ArrayList;Ljava/lang/String;Lwg;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-object v0, v0, Llj7;->a:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v5, v4, v0, v2}, Lnj7;->c(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lnj7;->b(Ljava/util/List;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_d

    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_a

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_c

    .line 256
    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Ljava/lang/String;

    .line 262
    .line 263
    const-string v5, "Failure"

    .line 264
    .line 265
    invoke-static {v4, v5, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_b

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_c
    :goto_5
    const-string v2, "Failure [Source-preserving install did not report success]"

    .line 273
    .line 274
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v2, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    :cond_d
    :goto_6
    invoke-static {v0}, Lnj7;->b(Ljava/util/List;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_e

    .line 287
    .line 288
    iget-object v2, v10, Lwg;->b:Lmt3;

    .line 289
    .line 290
    new-instance v11, Lvg;

    .line 291
    .line 292
    sget-object v12, Lug;->Committing:Lug;

    .line 293
    .line 294
    iget-wide v13, v10, Lwg;->c:J

    .line 295
    .line 296
    move-wide v15, v13

    .line 297
    invoke-direct/range {v11 .. v16}, Lvg;-><init>(Lug;JJ)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v2, v11}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .line 302
    .line 303
    :cond_e
    sget-object v2, Lmp6;->a:Lmp6;

    .line 304
    .line 305
    invoke-static {v6}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    filled-new-array {v1}, [Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    sget-object v3, Lip6;->SU:Lip6;

    .line 318
    .line 319
    invoke-virtual {v2, v1, v3}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 320
    .line 321
    .line 322
    return-object v0

    .line 323
    :goto_7
    sget-object v2, Lmp6;->a:Lmp6;

    .line 324
    .line 325
    invoke-static {v6}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    filled-new-array {v1}, [Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    sget-object v3, Lip6;->SU:Lip6;

    .line 338
    .line 339
    invoke-virtual {v2, v1, v3}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_f
    :goto_8
    return-object v5
.end method

.method public static b(Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "SB_INSTALL:Success"

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_2
    :goto_0
    return v1
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Lnc8;->p()Lww4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lww4;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lww4;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 p2, 0xa

    .line 14
    .line 15
    invoke-static {p3, p2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lmj7;

    .line 37
    .line 38
    iget-object v1, p3, Lmj7;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p3, p3, Lmj7;->b:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "|"

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const-class p2, Lorg/swiftapps/swiftbackup/apptasks/install/InstallerSourceProxy;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p3, "swiftbackup_install_proxy"

    .line 87
    .line 88
    invoke-static {p2, p3, p1, p0}, Lbv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\'\"\'\"\'"

    .line 2
    .line 3
    const-string v1, "\'"

    .line 4
    .line 5
    invoke-static {p0, v1, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v1, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static e(Ljava/util/ArrayList;Ljava/lang/String;Lwg;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "mkdir -p "

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static/range {p1 .. p1}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "chmod 0755 "

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lip6;->SU:Lip6;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    move-object/from16 v2, p0

    .line 37
    .line 38
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    add-int/lit8 v4, v2, 0x1

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    if-ltz v2, :cond_4

    .line 64
    .line 65
    check-cast v3, Lsg;

    .line 66
    .line 67
    iget-object v6, v3, Lsg;->a:Lq63;

    .line 68
    .line 69
    invoke-virtual {v6}, Lq63;->p()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v8, "[^A-Za-z0-9._-]"

    .line 74
    .line 75
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-string v8, "_"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_0

    .line 100
    .line 101
    const-string v7, "split.apk"

    .line 102
    .line 103
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v7, "/"

    .line 122
    .line 123
    move-object/from16 v8, p1

    .line 124
    .line 125
    invoke-static {v8, v7, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v7, Lmp6;->a:Lmp6;

    .line 130
    .line 131
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-static {v9}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-static {v2}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    const-string v11, "cp -f "

    .line 144
    .line 145
    const-string v12, " "

    .line 146
    .line 147
    invoke-static {v11, v9, v12, v10}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v2}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    const-string v11, "chmod 0644 "

    .line 156
    .line 157
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-static {v2}, Lnj7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    const-string v12, "test -r "

    .line 166
    .line 167
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const-string v12, "echo SB_STAGE_OK"

    .line 172
    .line 173
    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-static {v9}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    const/4 v14, 0x0

    .line 182
    const/16 v15, 0x3e

    .line 183
    .line 184
    const-string v11, " && "

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v13, 0x0

    .line 188
    invoke-static/range {v10 .. v15}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    filled-new-array {v9}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    sget-object v10, Lip6;->SU:Lip6;

    .line 197
    .line 198
    invoke-virtual {v7, v9, v10}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    if-eqz v11, :cond_1

    .line 203
    .line 204
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-nez v7, :cond_3

    .line 209
    .line 210
    :cond_1
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_3

    .line 219
    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Ljava/lang/String;

    .line 225
    .line 226
    const-string v10, "SB_STAGE_OK"

    .line 227
    .line 228
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-eqz v9, :cond_2

    .line 233
    .line 234
    iget-wide v5, v3, Lsg;->c:J

    .line 235
    .line 236
    sget-object v7, Lug;->Staging:Lug;

    .line 237
    .line 238
    move-object/from16 v9, p2

    .line 239
    .line 240
    invoke-virtual {v9, v7, v5, v6}, Lwg;->a(Lug;J)V

    .line 241
    .line 242
    .line 243
    new-instance v5, Lmj7;

    .line 244
    .line 245
    iget-object v3, v3, Lsg;->b:Ljava/lang/String;

    .line 246
    .line 247
    invoke-direct {v5, v3, v2}, Lmj7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move v2, v4

    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_2
    move-object/from16 v9, p2

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_3
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/4 v15, 0x0

    .line 264
    const/16 v16, 0x3f

    .line 265
    .line 266
    const/4 v12, 0x0

    .line 267
    const/4 v13, 0x0

    .line 268
    const/4 v14, 0x0

    .line 269
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const-string v2, "Failed to stage APK "

    .line 274
    .line 275
    const-string v3, ": "

    .line 276
    .line 277
    invoke-static {v2, v0, v3, v1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    return-object v5

    .line 285
    :cond_4
    invoke-static {}, Lfl1;->F0()V

    .line 286
    .line 287
    .line 288
    throw v5

    .line 289
    :cond_5
    return-object v0
.end method
