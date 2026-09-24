.class public final Lhe8;
.super Lpr1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^total \\d+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lhe8;->f:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Le23;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Le23;Z)V
    .locals 1

    .line 1
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5)|(?:\\d{1,2}\u6708\\s+\\d{1,2}))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lpr1;->a(Le23;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lhe8;->e:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg23;
    .locals 14

    .line 1
    const-string v0, "\u6708"

    .line 2
    .line 3
    new-instance v1, Lg23;

    .line 4
    .line 5
    invoke-direct {v1}, Lg23;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, v1, Lg23;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lpr1;->h(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_a

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lpr1;->g(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v3, 0xf

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lpr1;->g(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/16 v4, 0x10

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x11

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x12

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lpr1;->g(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v6, 0x13

    .line 49
    .line 50
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v7, " "

    .line 58
    .line 59
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v7, 0x14

    .line 63
    .line 64
    invoke-virtual {p0, v7}, Lpr1;->g(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/16 v7, 0x15

    .line 76
    .line 77
    invoke-virtual {p0, v7}, Lpr1;->g(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-boolean v8, p0, Lhe8;->e:Z

    .line 82
    .line 83
    if-eqz v8, :cond_0

    .line 84
    .line 85
    const-string v8, "^\\s+"

    .line 86
    .line 87
    const-string v9, ""

    .line 88
    .line 89
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const-string v9, "UNIX"

    .line 102
    .line 103
    const-string v10, "\u65e5"

    .line 104
    .line 105
    if-eqz v8, :cond_1

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_1

    .line 116
    .line 117
    new-instance v0, Lp23;

    .line 118
    .line 119
    invoke-direct {v0}, Lp23;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v6, Le23;

    .line 123
    .line 124
    const-string v8, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    .line 125
    .line 126
    const-string v10, "M\'\u6708\' d\'\u65e5\' HH:mm"

    .line 127
    .line 128
    invoke-direct {v6, v9, v8, v10}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v6}, Lp23;->a(Le23;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, v1, Lg23;->e:Ljava/util/Calendar;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    invoke-virtual {p0, v6}, Lpr1;->g(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_2

    .line 160
    .line 161
    new-instance v0, Lp23;

    .line 162
    .line 163
    invoke-direct {v0}, Lp23;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v6, Le23;

    .line 167
    .line 168
    const-string v8, "M\'\u6708\' d yyyy"

    .line 169
    .line 170
    const-string v10, "M\'\u6708\' d HH:mm"

    .line 171
    .line 172
    invoke-direct {v6, v9, v8, v10}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v6}, Lp23;->a(Le23;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, v1, Lg23;->e:Ljava/util/Calendar;

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lpr1;->d:Lp23;

    .line 186
    .line 187
    invoke-virtual {v0, v5}, Lp23;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, v1, Lg23;->e:Ljava/util/Calendar;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .line 193
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    const/16 v5, 0x2d

    .line 199
    .line 200
    const/4 v6, 0x3

    .line 201
    const/4 v8, 0x2

    .line 202
    if-eq v2, v5, :cond_4

    .line 203
    .line 204
    const/16 v5, 0x6c

    .line 205
    .line 206
    if-eq v2, v5, :cond_3

    .line 207
    .line 208
    packed-switch v2, :pswitch_data_0

    .line 209
    .line 210
    .line 211
    move v5, v0

    .line 212
    move v2, v6

    .line 213
    goto :goto_1

    .line 214
    :cond_3
    :pswitch_0
    move v5, v0

    .line 215
    move v2, v8

    .line 216
    goto :goto_1

    .line 217
    :pswitch_1
    move v2, p1

    .line 218
    move v5, v0

    .line 219
    goto :goto_1

    .line 220
    :pswitch_2
    move v5, p1

    .line 221
    move v2, v0

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    :pswitch_3
    move v2, v0

    .line 224
    move v5, v2

    .line 225
    :goto_1
    iput v2, v1, Lg23;->a:I

    .line 226
    .line 227
    const/4 v9, 0x4

    .line 228
    move v10, v0

    .line 229
    move v11, v9

    .line 230
    :goto_2
    if-ge v10, v6, :cond_6

    .line 231
    .line 232
    invoke-virtual {p0, v11}, Lpr1;->g(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    const-string v13, "-"

    .line 237
    .line 238
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    xor-int/2addr v12, p1

    .line 243
    invoke-virtual {v1, v10, v0, v12}, Lg23;->a(IIZ)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v12, v11, 0x1

    .line 247
    .line 248
    invoke-virtual {p0, v12}, Lpr1;->g(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    xor-int/2addr v12, p1

    .line 257
    invoke-virtual {v1, v10, p1, v12}, Lg23;->a(IIZ)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v12, v11, 0x2

    .line 261
    .line 262
    invoke-virtual {p0, v12}, Lpr1;->g(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-nez v13, :cond_5

    .line 271
    .line 272
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    if-nez v12, :cond_5

    .line 281
    .line 282
    move v12, p1

    .line 283
    goto :goto_3

    .line 284
    :cond_5
    move v12, v0

    .line 285
    :goto_3
    invoke-virtual {v1, v10, v8, v12}, Lg23;->a(IIZ)V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v10, v10, 0x1

    .line 289
    .line 290
    add-int/lit8 v11, v11, 0x4

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_6
    if-nez v5, :cond_7

    .line 294
    .line 295
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    .line 297
    .line 298
    :catch_1
    :cond_7
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide p0

    .line 302
    iput-wide p0, v1, Lg23;->b:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 303
    .line 304
    :catch_2
    if-ne v2, v8, :cond_9

    .line 305
    .line 306
    const-string p0, " -> "

    .line 307
    .line 308
    invoke-virtual {v7, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result p0

    .line 312
    const/4 p1, -0x1

    .line 313
    if-ne p0, p1, :cond_8

    .line 314
    .line 315
    iput-object v7, v1, Lg23;->d:Ljava/lang/String;

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_8
    invoke-virtual {v7, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iput-object p1, v1, Lg23;->d:Ljava/lang/String;

    .line 323
    .line 324
    add-int/2addr p0, v9

    .line 325
    invoke-virtual {v7, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_9
    iput-object v7, v1, Lg23;->d:Ljava/lang/String;

    .line 330
    .line 331
    :goto_4
    return-object v1

    .line 332
    :cond_a
    const/4 p0, 0x0

    .line 333
    return-object p0

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final c(Ljava/util/LinkedList;)V
    .locals 1

    .line 1
    new-instance p0, Lr64;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lr64;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f()Le23;
    .locals 3

    .line 1
    new-instance p0, Le23;

    .line 2
    .line 3
    const-string v0, "MMM d yyyy"

    .line 4
    .line 5
    const-string v1, "MMM d HH:mm"

    .line 6
    .line 7
    const-string v2, "UNIX"

    .line 8
    .line 9
    invoke-direct {p0, v2, v0, v1}, Le23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
