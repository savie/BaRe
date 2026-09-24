.class public final Lsq;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lji;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lji;Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;ILjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsq;->b:Lji;

    .line 2
    .line 3
    iput-object p2, p0, Lsq;->c:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 4
    .line 5
    iput p3, p0, Lsq;->d:I

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
    new-instance p1, Lsq;

    .line 2
    .line 3
    iget-object v0, p0, Lsq;->c:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 4
    .line 5
    iget v1, p0, Lsq;->d:I

    .line 6
    .line 7
    iget-object p0, p0, Lsq;->b:Lji;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lsq;-><init>(Lji;Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;ILjv1;)V

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
    invoke-virtual {p0, p1, p2}, Lsq;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsq;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lsq;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Luq;

    .line 24
    .line 25
    const-string v0, "Name: "

    .line 26
    .line 27
    iget-object v3, p0, Lsq;->b:Lji;

    .line 28
    .line 29
    invoke-virtual {v3}, Lji;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {p1, v0, v4}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Luq;

    .line 37
    .line 38
    const-string v4, "Package: "

    .line 39
    .line 40
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v0, v4, v5}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Luq;

    .line 48
    .line 49
    invoke-virtual {v3}, Lji;->getVersionName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, " ("

    .line 66
    .line 67
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ")"

    .line 74
    .line 75
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "Version: "

    .line 83
    .line 84
    invoke-direct {v4, v6, v5}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Luq;

    .line 88
    .line 89
    invoke-virtual {v3}, Lji;->getSourceDir()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v7, ""

    .line 94
    .line 95
    if-nez v6, :cond_2

    .line 96
    .line 97
    move-object v6, v7

    .line 98
    :cond_2
    const-string v8, "App location: "

    .line 99
    .line 100
    invoke-direct {v5, v8, v6}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v6, Luq;

    .line 104
    .line 105
    invoke-virtual {v3}, Lji;->getDataDir()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-nez v8, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    move-object v7, v8

    .line 113
    :goto_0
    const-string v8, "Data location: "

    .line 114
    .line 115
    invoke-direct {v6, v8, v7}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    filled-new-array {p1, v0, v4, v5, v6}, [Luq;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v3}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    .line 144
    .line 145
    const/16 v6, 0xa

    .line 146
    .line 147
    invoke-static {v0, v6}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v6, 0x0

    .line 159
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_6

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    add-int/lit8 v8, v6, 0x1

    .line 170
    .line 171
    if-ltz v6, :cond_5

    .line 172
    .line 173
    check-cast v7, Ljava/lang/String;

    .line 174
    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v9, ". "

    .line 184
    .line 185
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move v6, v8

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    invoke-static {}, Lfl1;->F0()V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_6
    new-instance v0, Luq;

    .line 205
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v4, " Split APKs\n"

    .line 215
    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/4 v9, 0x0

    .line 224
    const/16 v10, 0x3e

    .line 225
    .line 226
    const-string v6, "\n"

    .line 227
    .line 228
    const/4 v7, 0x0

    .line 229
    const/4 v8, 0x0

    .line 230
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-direct {v0, v1, v4}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lji;->isInstalled()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_8

    .line 245
    .line 246
    new-instance v0, Luq;

    .line 247
    .line 248
    sget-object v1, Lg00;->a:Lg00;

    .line 249
    .line 250
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v1}, Lg00;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v3, "UID: "

    .line 263
    .line 264
    invoke-direct {v0, v3, v1}, Luq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    :cond_8
    sget-object v0, Lzn4;->a:Lzn4;

    .line 271
    .line 272
    new-instance v0, Lrq;

    .line 273
    .line 274
    iget-object v1, p0, Lsq;->c:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 275
    .line 276
    iget v3, p0, Lsq;->d:I

    .line 277
    .line 278
    invoke-direct {v0, v1, p1, v3}, Lrq;-><init>(Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;Ljava/util/ArrayList;I)V

    .line 279
    .line 280
    .line 281
    iput v2, p0, Lsq;->a:I

    .line 282
    .line 283
    invoke-static {v0, p0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    sget-object p1, Lyx1;->a:Lyx1;

    .line 288
    .line 289
    if-ne p0, p1, :cond_9

    .line 290
    .line 291
    return-object p1

    .line 292
    :cond_9
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 293
    .line 294
    return-object p0
.end method
