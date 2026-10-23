.class public abstract Lcom/google/gson/internal/bind/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final A:Lxb8;

.field public static final B:Lxb8;

.field public static final C:Lxb8;

.field public static final a:Lxb8;

.field public static final b:Lxb8;

.field public static final c:Lcom/google/gson/b;

.field public static final d:Lxb8;

.field public static final e:Lxb8;

.field public static final f:Lxb8;

.field public static final g:Lxb8;

.field public static final h:Lxb8;

.field public static final i:Lxb8;

.field public static final j:Lxb8;

.field public static final k:Lcom/google/gson/b;

.field public static final l:Lcom/google/gson/b;

.field public static final m:Lcom/google/gson/b;

.field public static final n:Lxb8;

.field public static final o:Lxb8;

.field public static final p:Lxb8;

.field public static final q:Lxb8;

.field public static final r:Lxb8;

.field public static final s:Lxb8;

.field public static final t:Lxb8;

.field public static final u:Lxb8;

.field public static final v:Lxb8;

.field public static final w:Lxb8;

.field public static final x:Lxb8;

.field public static final y:Lxb8;

.field public static final z:Lxb8;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 11
    .line 12
    const-class v2, Ljava/lang/Class;

    .line 13
    .line 14
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/gson/internal/bind/b;->a:Lxb8;

    .line 18
    .line 19
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$2;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$2;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 29
    .line 30
    const-class v2, Ljava/util/BitSet;

    .line 31
    .line 32
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/google/gson/internal/bind/b;->b:Lxb8;

    .line 36
    .line 37
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$3;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$3;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$4;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$4;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v1, Lcom/google/gson/internal/bind/b;->c:Lcom/google/gson/b;

    .line 48
    .line 49
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 50
    .line 51
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    const-class v3, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/google/gson/internal/bind/b;->d:Lxb8;

    .line 59
    .line 60
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$5;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$5;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 66
    .line 67
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    const-class v3, Ljava/lang/Byte;

    .line 70
    .line 71
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lcom/google/gson/internal/bind/b;->e:Lxb8;

    .line 75
    .line 76
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$6;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$6;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 82
    .line 83
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    const-class v3, Ljava/lang/Short;

    .line 86
    .line 87
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 88
    .line 89
    .line 90
    sput-object v1, Lcom/google/gson/internal/bind/b;->f:Lxb8;

    .line 91
    .line 92
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$7;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$7;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 98
    .line 99
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    const-class v3, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 104
    .line 105
    .line 106
    sput-object v1, Lcom/google/gson/internal/bind/b;->g:Lxb8;

    .line 107
    .line 108
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$8;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$8;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 118
    .line 119
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    .line 121
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 122
    .line 123
    .line 124
    sput-object v1, Lcom/google/gson/internal/bind/b;->h:Lxb8;

    .line 125
    .line 126
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$10;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$10;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 136
    .line 137
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 140
    .line 141
    .line 142
    sput-object v1, Lcom/google/gson/internal/bind/b;->i:Lxb8;

    .line 143
    .line 144
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$11;

    .line 145
    .line 146
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$11;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 154
    .line 155
    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 156
    .line 157
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 158
    .line 159
    .line 160
    sput-object v1, Lcom/google/gson/internal/bind/b;->j:Lxb8;

    .line 161
    .line 162
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$13;

    .line 163
    .line 164
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$13;-><init>()V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/google/gson/internal/bind/b;->k:Lcom/google/gson/b;

    .line 168
    .line 169
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$14;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$14;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$FloatAdapter;

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$FloatAdapter;-><init>(Z)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$FloatAdapter;

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$FloatAdapter;-><init>(Z)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/google/gson/internal/bind/b;->l:Lcom/google/gson/b;

    .line 187
    .line 188
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$DoubleAdapter;

    .line 189
    .line 190
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$DoubleAdapter;-><init>(Z)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$DoubleAdapter;

    .line 194
    .line 195
    invoke-direct {v0, v2}, Lcom/google/gson/internal/bind/TypeAdapters$DoubleAdapter;-><init>(Z)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lcom/google/gson/internal/bind/b;->m:Lcom/google/gson/b;

    .line 199
    .line 200
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$15;

    .line 201
    .line 202
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$15;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 206
    .line 207
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 208
    .line 209
    const-class v3, Ljava/lang/Character;

    .line 210
    .line 211
    invoke-direct {v1, v2, v3, v0}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 212
    .line 213
    .line 214
    sput-object v1, Lcom/google/gson/internal/bind/b;->n:Lxb8;

    .line 215
    .line 216
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$16;

    .line 217
    .line 218
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$16;-><init>()V

    .line 219
    .line 220
    .line 221
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$17;

    .line 222
    .line 223
    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$17;-><init>()V

    .line 224
    .line 225
    .line 226
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 227
    .line 228
    const-class v3, Ljava/math/BigDecimal;

    .line 229
    .line 230
    invoke-direct {v2, v3, v1}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 231
    .line 232
    .line 233
    sput-object v2, Lcom/google/gson/internal/bind/b;->o:Lxb8;

    .line 234
    .line 235
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$18;

    .line 236
    .line 237
    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$18;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 241
    .line 242
    const-class v3, Ljava/math/BigInteger;

    .line 243
    .line 244
    invoke-direct {v2, v3, v1}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 245
    .line 246
    .line 247
    sput-object v2, Lcom/google/gson/internal/bind/b;->p:Lxb8;

    .line 248
    .line 249
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$19;

    .line 250
    .line 251
    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$19;-><init>()V

    .line 252
    .line 253
    .line 254
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 255
    .line 256
    const-class v3, Lns4;

    .line 257
    .line 258
    invoke-direct {v2, v3, v1}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 259
    .line 260
    .line 261
    sput-object v2, Lcom/google/gson/internal/bind/b;->q:Lxb8;

    .line 262
    .line 263
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 264
    .line 265
    const-class v2, Ljava/lang/String;

    .line 266
    .line 267
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 268
    .line 269
    .line 270
    sput-object v1, Lcom/google/gson/internal/bind/b;->r:Lxb8;

    .line 271
    .line 272
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$20;

    .line 273
    .line 274
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$20;-><init>()V

    .line 275
    .line 276
    .line 277
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 278
    .line 279
    const-class v2, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 282
    .line 283
    .line 284
    sput-object v1, Lcom/google/gson/internal/bind/b;->s:Lxb8;

    .line 285
    .line 286
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$21;

    .line 287
    .line 288
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$21;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 292
    .line 293
    const-class v2, Ljava/lang/StringBuffer;

    .line 294
    .line 295
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 296
    .line 297
    .line 298
    sput-object v1, Lcom/google/gson/internal/bind/b;->t:Lxb8;

    .line 299
    .line 300
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$22;

    .line 301
    .line 302
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$22;-><init>()V

    .line 303
    .line 304
    .line 305
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 306
    .line 307
    const-class v2, Ljava/net/URL;

    .line 308
    .line 309
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 310
    .line 311
    .line 312
    sput-object v1, Lcom/google/gson/internal/bind/b;->u:Lxb8;

    .line 313
    .line 314
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$23;

    .line 315
    .line 316
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$23;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 320
    .line 321
    const-class v2, Ljava/net/URI;

    .line 322
    .line 323
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 324
    .line 325
    .line 326
    sput-object v1, Lcom/google/gson/internal/bind/b;->v:Lxb8;

    .line 327
    .line 328
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$24;

    .line 329
    .line 330
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$24;-><init>()V

    .line 331
    .line 332
    .line 333
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$33;

    .line 334
    .line 335
    const-class v2, Ljava/net/InetAddress;

    .line 336
    .line 337
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 338
    .line 339
    .line 340
    sput-object v1, Lcom/google/gson/internal/bind/b;->w:Lxb8;

    .line 341
    .line 342
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$25;

    .line 343
    .line 344
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$25;-><init>()V

    .line 345
    .line 346
    .line 347
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 348
    .line 349
    const-class v2, Ljava/util/UUID;

    .line 350
    .line 351
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 352
    .line 353
    .line 354
    sput-object v1, Lcom/google/gson/internal/bind/b;->x:Lxb8;

    .line 355
    .line 356
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$26;

    .line 357
    .line 358
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$26;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 366
    .line 367
    const-class v2, Ljava/util/Currency;

    .line 368
    .line 369
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 370
    .line 371
    .line 372
    sput-object v1, Lcom/google/gson/internal/bind/b;->y:Lxb8;

    .line 373
    .line 374
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$27;

    .line 375
    .line 376
    const-string v5, "minute"

    .line 377
    .line 378
    const-string v6, "second"

    .line 379
    .line 380
    const-string v1, "year"

    .line 381
    .line 382
    const-string v2, "month"

    .line 383
    .line 384
    const-string v3, "dayOfMonth"

    .line 385
    .line 386
    const-string v4, "hourOfDay"

    .line 387
    .line 388
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-direct {v0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$IntegerFieldsTypeAdapter;-><init>([Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 396
    .line 397
    invoke-direct {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Lcom/google/gson/b;)V

    .line 398
    .line 399
    .line 400
    sput-object v1, Lcom/google/gson/internal/bind/b;->z:Lxb8;

    .line 401
    .line 402
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$28;

    .line 403
    .line 404
    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$28;-><init>()V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 408
    .line 409
    const-class v2, Ljava/util/Locale;

    .line 410
    .line 411
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 412
    .line 413
    .line 414
    sput-object v1, Lcom/google/gson/internal/bind/b;->A:Lxb8;

    .line 415
    .line 416
    sget-object v0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->a:Lcom/google/gson/internal/bind/JsonElementTypeAdapter;

    .line 417
    .line 418
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$33;

    .line 419
    .line 420
    const-class v2, Lqj4;

    .line 421
    .line 422
    invoke-direct {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 423
    .line 424
    .line 425
    sput-object v1, Lcom/google/gson/internal/bind/b;->B:Lxb8;

    .line 426
    .line 427
    sget-object v0, Lcom/google/gson/internal/bind/EnumTypeAdapter;->d:Lxb8;

    .line 428
    .line 429
    sput-object v0, Lcom/google/gson/internal/bind/b;->C:Lxb8;

    .line 430
    .line 431
    return-void
.end method

.method public static a(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static b(J)I
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-long v1, v0

    .line 3
    cmp-long v1, v1, p0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const-string v0, "Too big for an int: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static c(Lcom/google/gson/b;)Lcom/google/gson/b;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/TypeAdapters$9;-><init>(Lcom/google/gson/b;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static d(Lcom/google/gson/b;)Lcom/google/gson/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$12;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/TypeAdapters$12;-><init>(Lcom/google/gson/b;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/b;->nullSafe()Lcom/google/gson/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static e(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)Lxb8;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$29;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;-><init>(Lcom/google/gson/b;Lcom/google/gson/reflect/TypeToken;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static f(Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$30;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)Lxb8;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$31;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
