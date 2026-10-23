.class public final enum Lqi2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrq1;


# static fields
.field public static final enum c:Lqi2;

.field public static final synthetic d:[Lqi2;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v1, Lqi2;

    .line 2
    .line 3
    const-string v0, "USE_BIG_DECIMAL_FOR_FLOATS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lqi2;

    .line 10
    .line 11
    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v0, v3, v4, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lqi2;

    .line 18
    .line 19
    const-string v5, "USE_LONG_FOR_INTS"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lqi2;

    .line 26
    .line 27
    const-string v6, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    .line 28
    .line 29
    const/4 v7, 0x3

    .line 30
    invoke-direct {v5, v6, v7, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 31
    .line 32
    .line 33
    move-object v6, v5

    .line 34
    new-instance v5, Lqi2;

    .line 35
    .line 36
    const-string v7, "FAIL_ON_UNKNOWN_PROPERTIES"

    .line 37
    .line 38
    const/4 v8, 0x4

    .line 39
    invoke-direct {v5, v7, v8, v4}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    sput-object v5, Lqi2;->c:Lqi2;

    .line 43
    .line 44
    move-object v7, v6

    .line 45
    new-instance v6, Lqi2;

    .line 46
    .line 47
    const-string v8, "FAIL_ON_NULL_FOR_PRIMITIVES"

    .line 48
    .line 49
    const/4 v9, 0x5

    .line 50
    invoke-direct {v6, v8, v9, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 51
    .line 52
    .line 53
    move-object v8, v7

    .line 54
    new-instance v7, Lqi2;

    .line 55
    .line 56
    const-string v9, "FAIL_ON_NUMBERS_FOR_ENUMS"

    .line 57
    .line 58
    const/4 v10, 0x6

    .line 59
    invoke-direct {v7, v9, v10, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 60
    .line 61
    .line 62
    move-object v9, v8

    .line 63
    new-instance v8, Lqi2;

    .line 64
    .line 65
    const-string v10, "FAIL_ON_INVALID_SUBTYPE"

    .line 66
    .line 67
    const/4 v11, 0x7

    .line 68
    invoke-direct {v8, v10, v11, v4}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    .line 71
    move-object v10, v9

    .line 72
    new-instance v9, Lqi2;

    .line 73
    .line 74
    const-string v11, "FAIL_ON_READING_DUP_TREE_KEY"

    .line 75
    .line 76
    const/16 v12, 0x8

    .line 77
    .line 78
    invoke-direct {v9, v11, v12, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 79
    .line 80
    .line 81
    move-object v11, v10

    .line 82
    new-instance v10, Lqi2;

    .line 83
    .line 84
    const-string v12, "FAIL_ON_IGNORED_PROPERTIES"

    .line 85
    .line 86
    const/16 v13, 0x9

    .line 87
    .line 88
    invoke-direct {v10, v12, v13, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 89
    .line 90
    .line 91
    move-object v12, v11

    .line 92
    new-instance v11, Lqi2;

    .line 93
    .line 94
    const-string v13, "FAIL_ON_UNRESOLVED_OBJECT_IDS"

    .line 95
    .line 96
    const/16 v14, 0xa

    .line 97
    .line 98
    invoke-direct {v11, v13, v14, v4}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 99
    .line 100
    .line 101
    move-object v13, v12

    .line 102
    new-instance v12, Lqi2;

    .line 103
    .line 104
    const-string v14, "FAIL_ON_MISSING_CREATOR_PROPERTIES"

    .line 105
    .line 106
    const/16 v15, 0xb

    .line 107
    .line 108
    invoke-direct {v12, v14, v15, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 109
    .line 110
    .line 111
    move-object v14, v13

    .line 112
    new-instance v13, Lqi2;

    .line 113
    .line 114
    const-string v15, "FAIL_ON_NULL_CREATOR_PROPERTIES"

    .line 115
    .line 116
    const/16 v4, 0xc

    .line 117
    .line 118
    invoke-direct {v13, v15, v4, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 119
    .line 120
    .line 121
    move-object v4, v14

    .line 122
    new-instance v14, Lqi2;

    .line 123
    .line 124
    const-string v15, "FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY"

    .line 125
    .line 126
    const/16 v2, 0xd

    .line 127
    .line 128
    move-object/from16 v18, v0

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    invoke-direct {v14, v15, v2, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 132
    .line 133
    .line 134
    new-instance v15, Lqi2;

    .line 135
    .line 136
    const-string v0, "FAIL_ON_TRAILING_TOKENS"

    .line 137
    .line 138
    const/16 v2, 0xe

    .line 139
    .line 140
    move-object/from16 v19, v1

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-direct {v15, v0, v2, v1}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lqi2;

    .line 147
    .line 148
    const-string v2, "FAIL_ON_SUBTYPE_CLASS_NOT_REGISTERED"

    .line 149
    .line 150
    move-object/from16 v17, v3

    .line 151
    .line 152
    const/16 v3, 0xf

    .line 153
    .line 154
    invoke-direct {v0, v2, v3, v1}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lqi2;

    .line 158
    .line 159
    const-string v3, "WRAP_EXCEPTIONS"

    .line 160
    .line 161
    const/16 v1, 0x10

    .line 162
    .line 163
    move-object/from16 v21, v0

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    invoke-direct {v2, v3, v1, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Lqi2;

    .line 170
    .line 171
    const-string v3, "FAIL_ON_UNEXPECTED_VIEW_PROPERTIES"

    .line 172
    .line 173
    const/16 v0, 0x11

    .line 174
    .line 175
    move-object/from16 v22, v2

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-direct {v1, v3, v0, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lqi2;

    .line 182
    .line 183
    const-string v3, "FAIL_ON_UNKNOWN_INJECT_VALUE"

    .line 184
    .line 185
    const/16 v2, 0x12

    .line 186
    .line 187
    move-object/from16 v23, v1

    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    invoke-direct {v0, v3, v2, v1}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lqi2;

    .line 194
    .line 195
    const-string v2, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    .line 196
    .line 197
    const/16 v3, 0x13

    .line 198
    .line 199
    move-object/from16 v24, v0

    .line 200
    .line 201
    const/4 v0, 0x0

    .line 202
    invoke-direct {v1, v2, v3, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Lqi2;

    .line 206
    .line 207
    const-string v3, "UNWRAP_SINGLE_VALUE_ARRAYS"

    .line 208
    .line 209
    move-object/from16 v20, v1

    .line 210
    .line 211
    const/16 v1, 0x14

    .line 212
    .line 213
    invoke-direct {v2, v3, v1, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Lqi2;

    .line 217
    .line 218
    const-string v3, "UNWRAP_ROOT_VALUE"

    .line 219
    .line 220
    move-object/from16 v25, v2

    .line 221
    .line 222
    const/16 v2, 0x15

    .line 223
    .line 224
    invoke-direct {v1, v3, v2, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lqi2;

    .line 228
    .line 229
    const-string v3, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    .line 230
    .line 231
    move-object/from16 v26, v1

    .line 232
    .line 233
    const/16 v1, 0x16

    .line 234
    .line 235
    invoke-direct {v2, v3, v1, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lqi2;

    .line 239
    .line 240
    const-string v3, "ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT"

    .line 241
    .line 242
    move-object/from16 v27, v2

    .line 243
    .line 244
    const/16 v2, 0x17

    .line 245
    .line 246
    invoke-direct {v1, v3, v2, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 247
    .line 248
    .line 249
    new-instance v2, Lqi2;

    .line 250
    .line 251
    const-string v3, "ACCEPT_FLOAT_AS_INT"

    .line 252
    .line 253
    const/16 v0, 0x18

    .line 254
    .line 255
    move-object/from16 v29, v1

    .line 256
    .line 257
    const/4 v1, 0x1

    .line 258
    invoke-direct {v2, v3, v0, v1}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Lqi2;

    .line 262
    .line 263
    const-string v1, "READ_ENUMS_USING_TO_STRING"

    .line 264
    .line 265
    const/16 v3, 0x19

    .line 266
    .line 267
    move-object/from16 v30, v2

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    invoke-direct {v0, v1, v3, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Lqi2;

    .line 274
    .line 275
    const-string v3, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    .line 276
    .line 277
    move-object/from16 v28, v0

    .line 278
    .line 279
    const/16 v0, 0x1a

    .line 280
    .line 281
    invoke-direct {v1, v3, v0, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lqi2;

    .line 285
    .line 286
    const-string v3, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    .line 287
    .line 288
    move-object/from16 v31, v1

    .line 289
    .line 290
    const/16 v1, 0x1b

    .line 291
    .line 292
    invoke-direct {v0, v3, v1, v2}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Lqi2;

    .line 296
    .line 297
    const-string v2, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 298
    .line 299
    const/16 v3, 0x1c

    .line 300
    .line 301
    move-object/from16 v32, v0

    .line 302
    .line 303
    const/4 v0, 0x1

    .line 304
    invoke-direct {v1, v2, v3, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Lqi2;

    .line 308
    .line 309
    const-string v3, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    .line 310
    .line 311
    move-object/from16 v16, v1

    .line 312
    .line 313
    const/16 v1, 0x1d

    .line 314
    .line 315
    invoke-direct {v2, v3, v1, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Lqi2;

    .line 319
    .line 320
    const-string v3, "EAGER_DESERIALIZER_FETCH"

    .line 321
    .line 322
    move-object/from16 v33, v2

    .line 323
    .line 324
    const/16 v2, 0x1e

    .line 325
    .line 326
    invoke-direct {v1, v3, v2, v0}, Lqi2;-><init>(Ljava/lang/String;IZ)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v3, v17

    .line 330
    .line 331
    move-object/from16 v2, v18

    .line 332
    .line 333
    move-object/from16 v17, v22

    .line 334
    .line 335
    move-object/from16 v18, v23

    .line 336
    .line 337
    move-object/from16 v22, v26

    .line 338
    .line 339
    move-object/from16 v23, v27

    .line 340
    .line 341
    move-object/from16 v26, v28

    .line 342
    .line 343
    move-object/from16 v27, v31

    .line 344
    .line 345
    move-object/from16 v28, v32

    .line 346
    .line 347
    move-object/from16 v31, v1

    .line 348
    .line 349
    move-object/from16 v1, v19

    .line 350
    .line 351
    move-object/from16 v19, v24

    .line 352
    .line 353
    move-object/from16 v24, v29

    .line 354
    .line 355
    move-object/from16 v29, v16

    .line 356
    .line 357
    move-object/from16 v16, v21

    .line 358
    .line 359
    move-object/from16 v21, v25

    .line 360
    .line 361
    move-object/from16 v25, v30

    .line 362
    .line 363
    move-object/from16 v30, v33

    .line 364
    .line 365
    filled-new-array/range {v1 .. v31}, [Lqi2;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    sput-object v0, Lqi2;->d:[Lqi2;

    .line 370
    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lqi2;->a:Z

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
    iput p1, p0, Lqi2;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqi2;
    .locals 1

    .line 1
    const-class v0, Lqi2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqi2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lqi2;
    .locals 1

    .line 1
    sget-object v0, Lqi2;->d:[Lqi2;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lqi2;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lqi2;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lqi2;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lqi2;->b:I

    .line 2
    .line 3
    return p0
.end method
