.class public final synthetic Lsh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsh;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lsh;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 19
    .line 20
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p1, Lpw5;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p0, p1, Lpw5;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ls54;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_3
    check-cast p1, Ldy1;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string p0, "FirebaseSessions"

    .line 67
    .line 68
    const-string v0, "CorruptionException in session configs DataStore"

    .line 69
    .line 70
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    sget-object p0, Lq34;->f:Lm87;

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_4
    check-cast p1, Ljava/lang/Byte;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 79
    .line 80
    .line 81
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "%02x"

    .line 90
    .line 91
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const-string p0, ".fuse"

    .line 102
    .line 103
    invoke-static {p1, p0, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_6
    check-cast p1, Lbr2;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    const-string v0, "/2/users/get_space_usage"

    .line 119
    .line 120
    invoke-virtual {p1, p0, v0}, Lbr2;->e(Lfl4;Ljava/lang/String;)Lfl4;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "allocation"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    instance-of v1, v0, Lfl4;

    .line 133
    .line 134
    if-nez v1, :cond_1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    :goto_0
    move-object v0, p0

    .line 143
    :goto_1
    new-instance v1, Ler2;

    .line 144
    .line 145
    const-string v2, "used"

    .line 146
    .line 147
    invoke-static {p1, v2}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_3

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    const-wide/16 v2, 0x0

    .line 159
    .line 160
    :goto_2
    if-eqz v0, :cond_4

    .line 161
    .line 162
    const-string p1, ".tag"

    .line 163
    .line 164
    invoke-static {v0, p1}, Ljd4;->H(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_3

    .line 169
    :cond_4
    move-object p1, p0

    .line 170
    :goto_3
    const-string v4, "allocated"

    .line 171
    .line 172
    if-eqz p1, :cond_a

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    const v6, -0x2c25d67

    .line 179
    .line 180
    .line 181
    if-eq v5, v6, :cond_8

    .line 182
    .line 183
    const v6, 0x36425d

    .line 184
    .line 185
    .line 186
    if-eq v5, v6, :cond_7

    .line 187
    .line 188
    const v6, 0x6527f10

    .line 189
    .line 190
    .line 191
    if-eq v5, v6, :cond_5

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_5
    const-string v5, "other"

    .line 195
    .line 196
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_6

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    const-wide/16 p0, -0x1

    .line 204
    .line 205
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    goto :goto_6

    .line 210
    :cond_7
    const-string v5, "team"

    .line 211
    .line 212
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    const-string v5, "individual"

    .line 220
    .line 221
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_9

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    :goto_4
    invoke-static {v0, v4}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    goto :goto_6

    .line 233
    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    .line 234
    .line 235
    invoke-static {v0, v4}, Ljd4;->A(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    :cond_b
    :goto_6
    invoke-direct {v1, v2, v3, p0}, Ler2;-><init>(JLjava/lang/Long;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :pswitch_7
    check-cast p1, Lq05;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lq05;->toDisplayString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :pswitch_8
    check-cast p1, Lji;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget-object p0, Liy;->e:Ljava/util/LinkedHashMap;

    .line 259
    .line 260
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    check-cast p0, Ljava/lang/Long;

    .line 269
    .line 270
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 271
    .line 272
    .line 273
    move-result-wide p0

    .line 274
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    const-string p0, "\'\"\'\"\'"

    .line 285
    .line 286
    const-string v0, "\'"

    .line 287
    .line 288
    invoke-static {p1, v0, p0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-static {v0, p0, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    return-object p0

    .line 297
    :pswitch_a
    check-cast p1, Lq63;

    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lq63;->y()Z

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    if-eqz p0, :cond_c

    .line 307
    .line 308
    invoke-virtual {p1}, Lq63;->m()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    const-string p1, "apk"

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    if-eqz p0, :cond_c

    .line 319
    .line 320
    move v0, v1

    .line 321
    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    return-object p0

    .line 326
    nop

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
