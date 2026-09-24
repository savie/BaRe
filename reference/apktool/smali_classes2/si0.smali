.class public final Lsi0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lji;

.field public final synthetic b:Lxi0;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Z

.field public final synthetic e:Lri0;


# direct methods
.method public constructor <init>(Lji;Lxi0;Landroid/app/Activity;ZLri0;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsi0;->a:Lji;

    .line 2
    .line 3
    iput-object p2, p0, Lsi0;->b:Lxi0;

    .line 4
    .line 5
    iput-object p3, p0, Lsi0;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iput-boolean p4, p0, Lsi0;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lsi0;->e:Lri0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lsi0;

    .line 2
    .line 3
    iget-boolean v4, p0, Lsi0;->d:Z

    .line 4
    .line 5
    iget-object v5, p0, Lsi0;->e:Lri0;

    .line 6
    .line 7
    iget-object v1, p0, Lsi0;->a:Lji;

    .line 8
    .line 9
    iget-object v2, p0, Lsi0;->b:Lxi0;

    .line 10
    .line 11
    iget-object v3, p0, Lsi0;->c:Landroid/app/Activity;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lsi0;-><init>(Lji;Lxi0;Landroid/app/Activity;ZLri0;Ljv1;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lsi0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsi0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsi0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lsi0;->a:Lji;

    .line 7
    .line 8
    invoke-virtual {v1}, Lji;->isInstalled()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sget-object v3, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v4, v4, v4, v4}, Lji;->calculateSize(ZZZZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Lji;->isBundled()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    xor-int/lit8 v9, v2, 0x1

    .line 32
    .line 33
    invoke-virtual {v1}, Lji;->isBundled()Z

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Lqx;->getTotalApkSize()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    new-instance v2, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 51
    .line 52
    .line 53
    sget-object v6, Lp93;->a:Lp93;

    .line 54
    .line 55
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v13, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v13, v5

    .line 62
    :goto_0
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2}, Lqx;->hasSplits()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ne v2, v4, :cond_3

    .line 74
    .line 75
    move v14, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v14, v6

    .line 78
    :goto_1
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Lqx;->hasSharedLibs()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ne v2, v4, :cond_4

    .line 89
    .line 90
    move v15, v4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v15, v6

    .line 93
    :goto_2
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-wide/16 v7, 0x0

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {v2}, Lqx;->getDataSize()J

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    move-wide v11, v7

    .line 107
    :goto_3
    cmp-long v2, v11, v7

    .line 108
    .line 109
    if-lez v2, :cond_6

    .line 110
    .line 111
    move/from16 v16, v4

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move/from16 v16, v6

    .line 115
    .line 116
    :goto_4
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-boolean v4, v0, Lsi0;->d:Z

    .line 121
    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lqx;->getTotalDataSize(Z)J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    new-instance v2, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-direct {v2, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 131
    .line 132
    .line 133
    sget-object v7, Lp93;->a:Lp93;

    .line 134
    .line 135
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v17, v2

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move-object/from16 v17, v5

    .line 143
    .line 144
    :goto_5
    invoke-virtual {v1, v4}, Lji;->hasExternalData(Z)Z

    .line 145
    .line 146
    .line 147
    move-result v18

    .line 148
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Lqx;->getExtDataSize(Z)J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    new-instance v2, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-direct {v2, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 161
    .line 162
    .line 163
    sget-object v4, Lp93;->a:Lp93;

    .line 164
    .line 165
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    move-object/from16 v19, v2

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    move-object/from16 v19, v5

    .line 173
    .line 174
    :goto_6
    invoke-virtual {v1}, Lji;->hasMedia()Z

    .line 175
    .line 176
    .line 177
    move-result v20

    .line 178
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-eqz v2, :cond_9

    .line 183
    .line 184
    invoke-virtual {v2}, Lqx;->getMediaSize()J

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    new-instance v2, Ljava/lang/Long;

    .line 189
    .line 190
    invoke-direct {v2, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 191
    .line 192
    .line 193
    sget-object v4, Lp93;->a:Lp93;

    .line 194
    .line 195
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    move-object/from16 v21, v2

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_9
    move-object/from16 v21, v5

    .line 203
    .line 204
    :goto_7
    invoke-virtual {v1}, Lji;->hasExpansion()Z

    .line 205
    .line 206
    .line 207
    move-result v22

    .line 208
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_a

    .line 213
    .line 214
    invoke-virtual {v1}, Lqx;->getExternalObbSize()J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    new-instance v4, Ljava/lang/Long;

    .line 219
    .line 220
    invoke-direct {v4, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 221
    .line 222
    .line 223
    sget-object v1, Lp93;->a:Lp93;

    .line 224
    .line 225
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    move-object/from16 v23, v1

    .line 230
    .line 231
    move-object v1, v5

    .line 232
    goto :goto_8

    .line 233
    :cond_a
    move-object v1, v5

    .line 234
    move-object/from16 v23, v1

    .line 235
    .line 236
    :goto_8
    iget-object v5, v0, Lsi0;->b:Lxi0;

    .line 237
    .line 238
    move v2, v6

    .line 239
    iget-object v6, v0, Lsi0;->c:Landroid/app/Activity;

    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    const/4 v8, 0x0

    .line 243
    const/4 v11, 0x1

    .line 244
    const/4 v12, 0x1

    .line 245
    invoke-virtual/range {v5 .. v23}, Lxi0;->c(Landroid/app/Activity;ZZZZZZLjava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    new-instance v6, Lmj0;

    .line 250
    .line 251
    invoke-direct {v6, v4, v2}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v0, Lsi0;->e:Lri0;

    .line 255
    .line 256
    invoke-virtual {v5, v6, v2, v1, v0}, Lxi0;->f(Lpj0;ZLcd;Lri0;)V

    .line 257
    .line 258
    .line 259
    return-object v3
.end method
