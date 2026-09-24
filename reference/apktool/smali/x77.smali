.class public final enum Lx77;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrq1;


# static fields
.field public static final enum G:Lx77;

.field public static final enum H:Lx77;

.field public static final enum I:Lx77;

.field public static final enum J:Lx77;

.field public static final enum K:Lx77;

.field public static final enum L:Lx77;

.field public static final enum M:Lx77;

.field public static final enum N:Lx77;

.field public static final enum O:Lx77;

.field public static final synthetic P:[Lx77;

.field public static final enum c:Lx77;

.field public static final enum d:Lx77;

.field public static final enum e:Lx77;

.field public static final enum f:Lx77;

.field public static final enum k:Lx77;

.field public static final enum n:Lx77;

.field public static final enum p:Lx77;

.field public static final enum q:Lx77;

.field public static final enum r:Lx77;

.field public static final enum t:Lx77;

.field public static final enum x:Lx77;

.field public static final enum y:Lx77;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v1, Lx77;

    .line 2
    .line 3
    const-string v0, "WRAP_ROOT_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lx77;->c:Lx77;

    .line 10
    .line 11
    new-instance v0, Lx77;

    .line 12
    .line 13
    const-string v3, "INDENT_OUTPUT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v0, v3, v4, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lx77;->d:Lx77;

    .line 20
    .line 21
    new-instance v3, Lx77;

    .line 22
    .line 23
    const-string v5, "FAIL_ON_EMPTY_BEANS"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lx77;->e:Lx77;

    .line 30
    .line 31
    new-instance v5, Lx77;

    .line 32
    .line 33
    const-string v6, "FAIL_ON_SELF_REFERENCES"

    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    invoke-direct {v5, v6, v7, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lx77;->f:Lx77;

    .line 40
    .line 41
    move-object v6, v5

    .line 42
    new-instance v5, Lx77;

    .line 43
    .line 44
    const-string v7, "WRAP_EXCEPTIONS"

    .line 45
    .line 46
    const/4 v8, 0x4

    .line 47
    invoke-direct {v5, v7, v8, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 48
    .line 49
    .line 50
    sput-object v5, Lx77;->k:Lx77;

    .line 51
    .line 52
    move-object v7, v6

    .line 53
    new-instance v6, Lx77;

    .line 54
    .line 55
    const-string v8, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    .line 56
    .line 57
    const/4 v9, 0x5

    .line 58
    invoke-direct {v6, v8, v9, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    .line 61
    sput-object v6, Lx77;->n:Lx77;

    .line 62
    .line 63
    move-object v8, v7

    .line 64
    new-instance v7, Lx77;

    .line 65
    .line 66
    const-string v9, "WRITE_SELF_REFERENCES_AS_NULL"

    .line 67
    .line 68
    const/4 v10, 0x6

    .line 69
    invoke-direct {v7, v9, v10, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 70
    .line 71
    .line 72
    sput-object v7, Lx77;->p:Lx77;

    .line 73
    .line 74
    move-object v9, v8

    .line 75
    new-instance v8, Lx77;

    .line 76
    .line 77
    const-string v10, "CLOSE_CLOSEABLE"

    .line 78
    .line 79
    const/4 v11, 0x7

    .line 80
    invoke-direct {v8, v10, v11, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 81
    .line 82
    .line 83
    sput-object v8, Lx77;->q:Lx77;

    .line 84
    .line 85
    move-object v10, v9

    .line 86
    new-instance v9, Lx77;

    .line 87
    .line 88
    const-string v11, "FLUSH_AFTER_WRITE_VALUE"

    .line 89
    .line 90
    const/16 v12, 0x8

    .line 91
    .line 92
    invoke-direct {v9, v11, v12, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    move-object v11, v10

    .line 96
    new-instance v10, Lx77;

    .line 97
    .line 98
    const-string v12, "WRITE_DATES_AS_TIMESTAMPS"

    .line 99
    .line 100
    const/16 v13, 0x9

    .line 101
    .line 102
    invoke-direct {v10, v12, v13, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 103
    .line 104
    .line 105
    sput-object v10, Lx77;->r:Lx77;

    .line 106
    .line 107
    move-object v12, v11

    .line 108
    new-instance v11, Lx77;

    .line 109
    .line 110
    const-string v13, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    .line 111
    .line 112
    const/16 v14, 0xa

    .line 113
    .line 114
    invoke-direct {v11, v13, v14, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 115
    .line 116
    .line 117
    sput-object v11, Lx77;->t:Lx77;

    .line 118
    .line 119
    move-object v13, v12

    .line 120
    new-instance v12, Lx77;

    .line 121
    .line 122
    const-string v14, "WRITE_DATES_WITH_ZONE_ID"

    .line 123
    .line 124
    const/16 v15, 0xb

    .line 125
    .line 126
    invoke-direct {v12, v14, v15, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 127
    .line 128
    .line 129
    move-object v14, v13

    .line 130
    new-instance v13, Lx77;

    .line 131
    .line 132
    const-string v15, "WRITE_DATES_WITH_CONTEXT_TIME_ZONE"

    .line 133
    .line 134
    const/16 v2, 0xc

    .line 135
    .line 136
    invoke-direct {v13, v15, v2, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 137
    .line 138
    .line 139
    move-object v2, v14

    .line 140
    new-instance v14, Lx77;

    .line 141
    .line 142
    const-string v15, "WRITE_DURATIONS_AS_TIMESTAMPS"

    .line 143
    .line 144
    move-object/from16 v17, v0

    .line 145
    .line 146
    const/16 v0, 0xd

    .line 147
    .line 148
    invoke-direct {v14, v15, v0, v4}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 149
    .line 150
    .line 151
    new-instance v15, Lx77;

    .line 152
    .line 153
    const-string v0, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    .line 154
    .line 155
    const/16 v4, 0xe

    .line 156
    .line 157
    move-object/from16 v19, v1

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-direct {v15, v0, v4, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 161
    .line 162
    .line 163
    sput-object v15, Lx77;->x:Lx77;

    .line 164
    .line 165
    new-instance v0, Lx77;

    .line 166
    .line 167
    const-string v4, "WRITE_ENUMS_USING_TO_STRING"

    .line 168
    .line 169
    move-object/from16 v20, v2

    .line 170
    .line 171
    const/16 v2, 0xf

    .line 172
    .line 173
    invoke-direct {v0, v4, v2, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 174
    .line 175
    .line 176
    sput-object v0, Lx77;->y:Lx77;

    .line 177
    .line 178
    new-instance v2, Lx77;

    .line 179
    .line 180
    const-string v4, "WRITE_ENUMS_USING_INDEX"

    .line 181
    .line 182
    move-object/from16 v21, v0

    .line 183
    .line 184
    const/16 v0, 0x10

    .line 185
    .line 186
    invoke-direct {v2, v4, v0, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 187
    .line 188
    .line 189
    sput-object v2, Lx77;->G:Lx77;

    .line 190
    .line 191
    new-instance v0, Lx77;

    .line 192
    .line 193
    const-string v4, "WRITE_ENUM_KEYS_USING_INDEX"

    .line 194
    .line 195
    move-object/from16 v22, v2

    .line 196
    .line 197
    const/16 v2, 0x11

    .line 198
    .line 199
    invoke-direct {v0, v4, v2, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lx77;->H:Lx77;

    .line 203
    .line 204
    new-instance v1, Lx77;

    .line 205
    .line 206
    const-string v2, "WRITE_NULL_MAP_VALUES"

    .line 207
    .line 208
    const/16 v4, 0x12

    .line 209
    .line 210
    move-object/from16 v23, v0

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    invoke-direct {v1, v2, v4, v0}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 214
    .line 215
    .line 216
    sput-object v1, Lx77;->I:Lx77;

    .line 217
    .line 218
    new-instance v2, Lx77;

    .line 219
    .line 220
    const-string v4, "WRITE_EMPTY_JSON_ARRAYS"

    .line 221
    .line 222
    move-object/from16 v24, v1

    .line 223
    .line 224
    const/16 v1, 0x13

    .line 225
    .line 226
    invoke-direct {v2, v4, v1, v0}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 227
    .line 228
    .line 229
    sput-object v2, Lx77;->J:Lx77;

    .line 230
    .line 231
    new-instance v0, Lx77;

    .line 232
    .line 233
    const-string v1, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    .line 234
    .line 235
    const/16 v4, 0x14

    .line 236
    .line 237
    move-object/from16 v25, v2

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    invoke-direct {v0, v1, v4, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 241
    .line 242
    .line 243
    sput-object v0, Lx77;->K:Lx77;

    .line 244
    .line 245
    new-instance v1, Lx77;

    .line 246
    .line 247
    const-string v4, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 248
    .line 249
    move-object/from16 v26, v0

    .line 250
    .line 251
    const/16 v0, 0x15

    .line 252
    .line 253
    invoke-direct {v1, v4, v0, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 254
    .line 255
    .line 256
    sput-object v1, Lx77;->L:Lx77;

    .line 257
    .line 258
    new-instance v0, Lx77;

    .line 259
    .line 260
    const-string v4, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 261
    .line 262
    const/16 v2, 0x16

    .line 263
    .line 264
    move-object/from16 v27, v1

    .line 265
    .line 266
    const/4 v1, 0x1

    .line 267
    invoke-direct {v0, v4, v2, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 268
    .line 269
    .line 270
    new-instance v2, Lx77;

    .line 271
    .line 272
    const-string v4, "ORDER_MAP_ENTRIES_BY_KEYS"

    .line 273
    .line 274
    const/16 v1, 0x17

    .line 275
    .line 276
    move-object/from16 v28, v0

    .line 277
    .line 278
    const/4 v0, 0x0

    .line 279
    invoke-direct {v2, v4, v1, v0}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 280
    .line 281
    .line 282
    sput-object v2, Lx77;->M:Lx77;

    .line 283
    .line 284
    new-instance v0, Lx77;

    .line 285
    .line 286
    const-string v1, "FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY"

    .line 287
    .line 288
    const/16 v4, 0x18

    .line 289
    .line 290
    move-object/from16 v29, v2

    .line 291
    .line 292
    const/4 v2, 0x1

    .line 293
    invoke-direct {v0, v1, v4, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 294
    .line 295
    .line 296
    sput-object v0, Lx77;->N:Lx77;

    .line 297
    .line 298
    new-instance v1, Lx77;

    .line 299
    .line 300
    const-string v4, "EAGER_SERIALIZER_FETCH"

    .line 301
    .line 302
    move-object/from16 v18, v0

    .line 303
    .line 304
    const/16 v0, 0x19

    .line 305
    .line 306
    invoke-direct {v1, v4, v0, v2}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 307
    .line 308
    .line 309
    new-instance v0, Lx77;

    .line 310
    .line 311
    const-string v2, "USE_EQUALITY_FOR_OBJECT_ID"

    .line 312
    .line 313
    const/16 v4, 0x1a

    .line 314
    .line 315
    move-object/from16 v30, v1

    .line 316
    .line 317
    const/4 v1, 0x0

    .line 318
    invoke-direct {v0, v2, v4, v1}, Lx77;-><init>(Ljava/lang/String;IZ)V

    .line 319
    .line 320
    .line 321
    sput-object v0, Lx77;->O:Lx77;

    .line 322
    .line 323
    move-object/from16 v2, v17

    .line 324
    .line 325
    move-object/from16 v1, v19

    .line 326
    .line 327
    move-object/from16 v4, v20

    .line 328
    .line 329
    move-object/from16 v16, v21

    .line 330
    .line 331
    move-object/from16 v17, v22

    .line 332
    .line 333
    move-object/from16 v19, v24

    .line 334
    .line 335
    move-object/from16 v20, v25

    .line 336
    .line 337
    move-object/from16 v21, v26

    .line 338
    .line 339
    move-object/from16 v22, v27

    .line 340
    .line 341
    move-object/from16 v24, v29

    .line 342
    .line 343
    move-object/from16 v26, v30

    .line 344
    .line 345
    move-object/from16 v27, v0

    .line 346
    .line 347
    move-object/from16 v25, v18

    .line 348
    .line 349
    move-object/from16 v18, v23

    .line 350
    .line 351
    move-object/from16 v23, v28

    .line 352
    .line 353
    filled-new-array/range {v1 .. v27}, [Lx77;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    sput-object v0, Lx77;->P:[Lx77;

    .line 358
    .line 359
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lx77;->a:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    shl-int/2addr p1, p2

    .line 12
    iput p1, p0, Lx77;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx77;
    .locals 1

    .line 1
    const-class v0, Lx77;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx77;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lx77;
    .locals 1

    .line 1
    sget-object v0, Lx77;->P:[Lx77;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lx77;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lx77;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lx77;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lx77;->b:I

    .line 2
    .line 3
    return p0
.end method
