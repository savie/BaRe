.class public final Ll43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final G:Lf43;

.field public static final H:Lf43;

.field public static final I:Lz33;

.field public static final J:Lf43;

.field public static final K:Lf43;

.field public static final L:La43;

.field public static final M:Lb43;

.field public static final N:Lf43;

.field public static final O:Lf43;

.field public static final P:Lf43;

.field public static final Q:Lf43;

.field public static final k:Ljava/util/Locale;

.field public static final n:Ljava/util/Comparator;

.field public static final p:[Ljava/util/concurrent/ConcurrentMap;

.field public static final q:Lx33;

.field public static final r:Ly33;

.field public static final t:Lf43;

.field public static final x:Lf43;

.field public static final y:Lf43;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/TimeZone;

.field public final c:Ljava/util/Locale;

.field public final d:I

.field public final e:I

.field public final transient f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "ja"

    .line 4
    .line 5
    const-string v2, "JP"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ll43;->k:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Ll43;->n:Ljava/util/Comparator;

    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 21
    .line 22
    sput-object v0, Ll43;->p:[Ljava/util/concurrent/ConcurrentMap;

    .line 23
    .line 24
    new-instance v0, Lx33;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Ll43;->q:Lx33;

    .line 31
    .line 32
    new-instance v0, Ly33;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v0, v2}, Lf43;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Ll43;->r:Ly33;

    .line 39
    .line 40
    new-instance v0, Lf43;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Ll43;->t:Lf43;

    .line 46
    .line 47
    new-instance v0, Lf43;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Ll43;->x:Lf43;

    .line 54
    .line 55
    new-instance v0, Lf43;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Ll43;->y:Lf43;

    .line 62
    .line 63
    new-instance v0, Lf43;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Ll43;->G:Lf43;

    .line 70
    .line 71
    new-instance v0, Lf43;

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Ll43;->H:Lf43;

    .line 78
    .line 79
    new-instance v0, Lz33;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Ll43;->I:Lz33;

    .line 86
    .line 87
    new-instance v0, Lf43;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Ll43;->J:Lf43;

    .line 95
    .line 96
    new-instance v0, Lf43;

    .line 97
    .line 98
    const/16 v1, 0xb

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Ll43;->K:Lf43;

    .line 104
    .line 105
    new-instance v0, La43;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Ll43;->L:La43;

    .line 111
    .line 112
    new-instance v0, Lb43;

    .line 113
    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Ll43;->M:Lb43;

    .line 120
    .line 121
    new-instance v0, Lf43;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Ll43;->N:Lf43;

    .line 127
    .line 128
    new-instance v0, Lf43;

    .line 129
    .line 130
    const/16 v1, 0xc

    .line 131
    .line 132
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Ll43;->O:Lf43;

    .line 136
    .line 137
    new-instance v0, Lf43;

    .line 138
    .line 139
    const/16 v1, 0xd

    .line 140
    .line 141
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Ll43;->P:Lf43;

    .line 145
    .line 146
    new-instance v0, Lf43;

    .line 147
    .line 148
    const/16 v1, 0xe

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lf43;-><init>(I)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Ll43;->Q:Lf43;

    .line 154
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll43;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "timeZone"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ll43;->b:Ljava/util/TimeZone;

    .line 12
    .line 13
    sget v0, Lk05;->a:I

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    :goto_0
    iput-object p3, p0, Ll43;->c:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Ll43;->k:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    move p3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p3, Ljava/util/Date;

    .line 41
    .line 42
    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    add-int/lit8 p3, p3, -0x50

    .line 53
    .line 54
    :goto_1
    div-int/lit8 v2, p3, 0x64

    .line 55
    .line 56
    const/16 v3, 0x64

    .line 57
    .line 58
    mul-int/2addr v2, v3

    .line 59
    iput v2, p0, Ll43;->d:I

    .line 60
    .line 61
    sub-int/2addr p3, v2

    .line 62
    iput p3, p0, Ll43;->e:I

    .line 63
    .line 64
    new-instance p3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p3, p0, Ll43;->f:Ljava/util/ArrayList;

    .line 70
    .line 71
    const-string p3, "definingCalendar"

    .line 72
    .line 73
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move p3, v0

    .line 77
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v4, 0x0

    .line 82
    if-lt p3, v2, :cond_2

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v2}, Lc51;->a(C)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_15

    .line 95
    .line 96
    move v5, p3

    .line 97
    :cond_3
    add-int/2addr v5, v1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ge v5, v6, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eq v6, v2, :cond_3

    .line 109
    .line 110
    :cond_4
    sub-int p3, v5, p3

    .line 111
    .line 112
    new-instance v6, Li43;

    .line 113
    .line 114
    const/16 v7, 0x53

    .line 115
    .line 116
    if-eq v2, v7, :cond_14

    .line 117
    .line 118
    const/16 v7, 0x61

    .line 119
    .line 120
    if-eq v2, v7, :cond_13

    .line 121
    .line 122
    if-eq v2, v3, :cond_12

    .line 123
    .line 124
    const/16 v7, 0x68

    .line 125
    .line 126
    if-eq v2, v7, :cond_11

    .line 127
    .line 128
    const/16 v7, 0x6b

    .line 129
    .line 130
    if-eq v2, v7, :cond_10

    .line 131
    .line 132
    const/16 v7, 0x6d

    .line 133
    .line 134
    if-eq v2, v7, :cond_f

    .line 135
    .line 136
    const/16 v7, 0x73

    .line 137
    .line 138
    if-eq v2, v7, :cond_e

    .line 139
    .line 140
    const/16 v7, 0x75

    .line 141
    .line 142
    if-eq v2, v7, :cond_d

    .line 143
    .line 144
    const/16 v7, 0x77

    .line 145
    .line 146
    if-eq v2, v7, :cond_c

    .line 147
    .line 148
    const/16 v7, 0x79

    .line 149
    .line 150
    const/4 v8, 0x2

    .line 151
    if-eq v2, v7, :cond_a

    .line 152
    .line 153
    const/16 v7, 0x7a

    .line 154
    .line 155
    if-eq v2, v7, :cond_9

    .line 156
    .line 157
    packed-switch v2, :pswitch_data_0

    .line 158
    .line 159
    .line 160
    const/4 v7, 0x3

    .line 161
    packed-switch v2, :pswitch_data_1

    .line 162
    .line 163
    .line 164
    packed-switch v2, :pswitch_data_2

    .line 165
    .line 166
    .line 167
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string p2, "Format \'"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, "\' not supported"

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :pswitch_0
    if-ne p3, v8, :cond_9

    .line 193
    .line 194
    sget-object v2, Le43;->d:Le43;

    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :pswitch_1
    if-eq p3, v1, :cond_7

    .line 199
    .line 200
    if-eq p3, v8, :cond_6

    .line 201
    .line 202
    if-ne p3, v7, :cond_5

    .line 203
    .line 204
    sget-object v2, Le43;->d:Le43;

    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_5
    sget-object p0, Le43;->b:Le43;

    .line 209
    .line 210
    const-string p0, "invalid number of X"

    .line 211
    .line 212
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v4

    .line 216
    :cond_6
    sget-object v2, Le43;->c:Le43;

    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_7
    sget-object v2, Le43;->b:Le43;

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :pswitch_2
    sget-object v2, Ll43;->y:Lf43;

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :pswitch_3
    if-lt p3, v7, :cond_8

    .line 227
    .line 228
    invoke-virtual {p0, v8, p2}, Ll43;->a(ILjava/util/Calendar;)Lh43;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_3

    .line 233
    :cond_8
    sget-object v2, Ll43;->r:Ly33;

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :pswitch_4
    sget-object v2, Ll43;->N:Lf43;

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :pswitch_5
    sget-object v2, Ll43;->K:Lf43;

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :pswitch_6
    invoke-virtual {p0, v0, p2}, Ll43;->a(ILjava/util/Calendar;)Lh43;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    goto :goto_3

    .line 247
    :pswitch_7
    sget-object v2, Ll43;->J:Lf43;

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :pswitch_8
    const/4 v2, 0x7

    .line 251
    invoke-virtual {p0, v2, p2}, Ll43;->a(ILjava/util/Calendar;)Lh43;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    goto :goto_3

    .line 256
    :pswitch_9
    sget-object v2, Ll43;->G:Lf43;

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_9
    const/16 v2, 0xf

    .line 260
    .line 261
    invoke-virtual {p0, v2, p2}, Ll43;->a(ILjava/util/Calendar;)Lh43;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    goto :goto_3

    .line 266
    :cond_a
    :pswitch_a
    if-le p3, v8, :cond_b

    .line 267
    .line 268
    sget-object v2, Ll43;->t:Lf43;

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_b
    sget-object v2, Ll43;->q:Lx33;

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_c
    sget-object v2, Ll43;->x:Lf43;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_d
    sget-object v2, Ll43;->I:Lz33;

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_e
    sget-object v2, Ll43;->P:Lf43;

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_f
    sget-object v2, Ll43;->O:Lf43;

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_10
    sget-object v2, Ll43;->L:La43;

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_11
    sget-object v2, Ll43;->M:Lb43;

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_12
    sget-object v2, Ll43;->H:Lf43;

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_13
    const/16 v2, 0x9

    .line 296
    .line 297
    invoke-virtual {p0, v2, p2}, Ll43;->a(ILjava/util/Calendar;)Lh43;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    goto :goto_3

    .line 302
    :cond_14
    sget-object v2, Ll43;->Q:Lf43;

    .line 303
    .line 304
    :goto_3
    invoke-direct {v6, v2, p3}, Li43;-><init>(Lh43;I)V

    .line 305
    .line 306
    .line 307
    move p3, v5

    .line 308
    move-object v4, v6

    .line 309
    goto :goto_6

    .line 310
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    move v5, v0

    .line 316
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-ge p3, v6, :cond_19

    .line 321
    .line 322
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-nez v5, :cond_16

    .line 327
    .line 328
    invoke-static {v6}, Lc51;->a(C)Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_16

    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_16
    const/16 v7, 0x27

    .line 336
    .line 337
    if-ne v6, v7, :cond_18

    .line 338
    .line 339
    add-int/lit8 p3, p3, 0x1

    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eq p3, v8, :cond_17

    .line 346
    .line 347
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-eq v8, v7, :cond_18

    .line 352
    .line 353
    :cond_17
    xor-int/lit8 v5, v5, 0x1

    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_18
    add-int/2addr p3, v1

    .line 357
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_19
    :goto_5
    if-nez v5, :cond_1b

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    new-instance v4, Li43;

    .line 368
    .line 369
    new-instance v5, Ld43;

    .line 370
    .line 371
    invoke-direct {v5, v2}, Ld43;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    invoke-direct {v4, v5, v2}, Li43;-><init>(Lh43;I)V

    .line 379
    .line 380
    .line 381
    :goto_6
    if-nez v4, :cond_1a

    .line 382
    .line 383
    return-void

    .line 384
    :cond_1a
    iget-object v2, p0, Ll43;->f:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :cond_1b
    const-string p0, "Unterminated quote"

    .line 392
    .line 393
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v4

    .line 397
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x3f

    .line 7
    .line 8
    const/16 v3, 0x2e

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    const/16 v5, 0x5c

    .line 19
    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x5e

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x5b

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    if-eq v1, v5, :cond_0

    .line 35
    .line 36
    const/16 v2, 0x7b

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const/16 v2, 0x7c

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :pswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/lit8 p0, p0, -0x1

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-ne p0, v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/util/Calendar;)Lh43;
    .locals 3

    .line 1
    sget-object v0, Ll43;->p:[Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    aget-object v1, v0, p1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    aput-object v1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    aget-object v1, v0, p1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Ll43;->c:Ljava/util/Locale;

    .line 23
    .line 24
    new-instance v2, Lv33;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1, p2}, Lv33;-><init>(Ll43;ILjava/util/Calendar;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lh43;

    .line 34
    .line 35
    return-object p0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ll43;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Ll43;

    .line 8
    .line 9
    iget-object v0, p0, Ll43;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Ll43;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Ll43;->b:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, Ll43;->b:Ljava/util/TimeZone;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Ll43;->c:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, Ll43;->c:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ll43;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ll43;->b:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Ll43;->c:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    mul-int/lit8 p0, p0, 0xd

    .line 20
    .line 21
    add-int/2addr p0, v1

    .line 22
    mul-int/lit8 p0, p0, 0xd

    .line 23
    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDateParser["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll43;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Ll43;->c:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Ll43;->b:Ljava/util/TimeZone;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "]"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
