.class public final enum Lfb7;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum G:Lfb7;

.field public static final synthetic H:[Lfb7;

.field public static final enum b:Lfb7;

.field public static final enum c:Lfb7;

.field public static final enum d:Lfb7;

.field public static final enum e:Lfb7;

.field public static final enum f:Lfb7;

.field public static final enum k:Lfb7;

.field public static final enum n:Lfb7;

.field public static final enum p:Lfb7;

.field public static final enum q:Lfb7;

.field public static final enum r:Lfb7;

.field public static final enum t:Lfb7;

.field public static final enum x:Lfb7;

.field public static final enum y:Lfb7;


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lfb7;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-byte v3, v2, v3

    .line 8
    .line 9
    const-string v4, "COPY"

    .line 10
    .line 11
    invoke-direct {v0, v4, v3, v2}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lfb7;->b:Lfb7;

    .line 15
    .line 16
    new-instance v2, Lfb7;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    new-array v5, v4, [B

    .line 20
    .line 21
    fill-array-data v5, :array_0

    .line 22
    .line 23
    .line 24
    const-string v6, "LZMA"

    .line 25
    .line 26
    invoke-direct {v2, v6, v1, v5}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lfb7;->c:Lfb7;

    .line 30
    .line 31
    move-object v5, v2

    .line 32
    new-instance v2, Lfb7;

    .line 33
    .line 34
    new-array v6, v1, [B

    .line 35
    .line 36
    const/16 v7, 0x21

    .line 37
    .line 38
    aput-byte v7, v6, v3

    .line 39
    .line 40
    const-string v7, "LZMA2"

    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    invoke-direct {v2, v7, v8, v6}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 44
    .line 45
    .line 46
    sput-object v2, Lfb7;->d:Lfb7;

    .line 47
    .line 48
    move v6, v3

    .line 49
    new-instance v3, Lfb7;

    .line 50
    .line 51
    new-array v7, v4, [B

    .line 52
    .line 53
    fill-array-data v7, :array_1

    .line 54
    .line 55
    .line 56
    const-string v8, "DEFLATE"

    .line 57
    .line 58
    invoke-direct {v3, v8, v4, v7}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 59
    .line 60
    .line 61
    sput-object v3, Lfb7;->e:Lfb7;

    .line 62
    .line 63
    new-instance v7, Lfb7;

    .line 64
    .line 65
    new-array v8, v4, [B

    .line 66
    .line 67
    fill-array-data v8, :array_2

    .line 68
    .line 69
    .line 70
    const-string v9, "DEFLATE64"

    .line 71
    .line 72
    const/4 v10, 0x4

    .line 73
    invoke-direct {v7, v9, v10, v8}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lfb7;->f:Lfb7;

    .line 77
    .line 78
    move-object v8, v5

    .line 79
    new-instance v5, Lfb7;

    .line 80
    .line 81
    new-array v9, v4, [B

    .line 82
    .line 83
    fill-array-data v9, :array_3

    .line 84
    .line 85
    .line 86
    const-string v11, "BZIP2"

    .line 87
    .line 88
    const/4 v12, 0x5

    .line 89
    invoke-direct {v5, v11, v12, v9}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 90
    .line 91
    .line 92
    sput-object v5, Lfb7;->k:Lfb7;

    .line 93
    .line 94
    move v9, v6

    .line 95
    new-instance v6, Lfb7;

    .line 96
    .line 97
    new-array v11, v10, [B

    .line 98
    .line 99
    fill-array-data v11, :array_4

    .line 100
    .line 101
    .line 102
    const-string v12, "AES256SHA256"

    .line 103
    .line 104
    const/4 v13, 0x6

    .line 105
    invoke-direct {v6, v12, v13, v11}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 106
    .line 107
    .line 108
    sput-object v6, Lfb7;->n:Lfb7;

    .line 109
    .line 110
    move v11, v4

    .line 111
    move-object v4, v7

    .line 112
    new-instance v7, Lfb7;

    .line 113
    .line 114
    new-array v12, v10, [B

    .line 115
    .line 116
    fill-array-data v12, :array_5

    .line 117
    .line 118
    .line 119
    const-string v13, "BCJ_X86_FILTER"

    .line 120
    .line 121
    const/4 v14, 0x7

    .line 122
    invoke-direct {v7, v13, v14, v12}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 123
    .line 124
    .line 125
    sput-object v7, Lfb7;->p:Lfb7;

    .line 126
    .line 127
    move-object v12, v8

    .line 128
    new-instance v8, Lfb7;

    .line 129
    .line 130
    new-array v13, v10, [B

    .line 131
    .line 132
    fill-array-data v13, :array_6

    .line 133
    .line 134
    .line 135
    const-string v14, "BCJ_PPC_FILTER"

    .line 136
    .line 137
    const/16 v15, 0x8

    .line 138
    .line 139
    invoke-direct {v8, v14, v15, v13}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 140
    .line 141
    .line 142
    sput-object v8, Lfb7;->q:Lfb7;

    .line 143
    .line 144
    move v13, v9

    .line 145
    new-instance v9, Lfb7;

    .line 146
    .line 147
    new-array v14, v10, [B

    .line 148
    .line 149
    fill-array-data v14, :array_7

    .line 150
    .line 151
    .line 152
    const-string v15, "BCJ_IA64_FILTER"

    .line 153
    .line 154
    move/from16 v16, v11

    .line 155
    .line 156
    const/16 v11, 0x9

    .line 157
    .line 158
    invoke-direct {v9, v15, v11, v14}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 159
    .line 160
    .line 161
    sput-object v9, Lfb7;->r:Lfb7;

    .line 162
    .line 163
    new-instance v11, Lfb7;

    .line 164
    .line 165
    new-array v14, v10, [B

    .line 166
    .line 167
    fill-array-data v14, :array_8

    .line 168
    .line 169
    .line 170
    const-string v15, "BCJ_ARM_FILTER"

    .line 171
    .line 172
    move/from16 v17, v13

    .line 173
    .line 174
    const/16 v13, 0xa

    .line 175
    .line 176
    invoke-direct {v11, v15, v13, v14}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 177
    .line 178
    .line 179
    sput-object v11, Lfb7;->t:Lfb7;

    .line 180
    .line 181
    move-object v13, v11

    .line 182
    new-instance v11, Lfb7;

    .line 183
    .line 184
    new-array v14, v10, [B

    .line 185
    .line 186
    fill-array-data v14, :array_9

    .line 187
    .line 188
    .line 189
    const-string v15, "BCJ_ARM_THUMB_FILTER"

    .line 190
    .line 191
    const/16 v1, 0xb

    .line 192
    .line 193
    invoke-direct {v11, v15, v1, v14}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 194
    .line 195
    .line 196
    sput-object v11, Lfb7;->x:Lfb7;

    .line 197
    .line 198
    move-object v1, v12

    .line 199
    new-instance v12, Lfb7;

    .line 200
    .line 201
    new-array v10, v10, [B

    .line 202
    .line 203
    fill-array-data v10, :array_a

    .line 204
    .line 205
    .line 206
    const-string v14, "BCJ_SPARC_FILTER"

    .line 207
    .line 208
    const/16 v15, 0xc

    .line 209
    .line 210
    invoke-direct {v12, v14, v15, v10}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 211
    .line 212
    .line 213
    sput-object v12, Lfb7;->y:Lfb7;

    .line 214
    .line 215
    move-object v10, v13

    .line 216
    new-instance v13, Lfb7;

    .line 217
    .line 218
    const/4 v14, 0x1

    .line 219
    new-array v14, v14, [B

    .line 220
    .line 221
    aput-byte v16, v14, v17

    .line 222
    .line 223
    const-string v15, "DELTA_FILTER"

    .line 224
    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    const/16 v0, 0xd

    .line 228
    .line 229
    invoke-direct {v13, v15, v0, v14}, Lfb7;-><init>(Ljava/lang/String;I[B)V

    .line 230
    .line 231
    .line 232
    sput-object v13, Lfb7;->G:Lfb7;

    .line 233
    .line 234
    move-object/from16 v0, v16

    .line 235
    .line 236
    filled-new-array/range {v0 .. v13}, [Lfb7;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    sput-object v0, Lfb7;->H:[Lfb7;

    .line 241
    .line 242
    return-void

    .line 243
    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_1
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 1
        0x4t
        0x1t
        0x9t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_3
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_4
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_5
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_6
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_7
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_8
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_9
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_a
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lfb7;->a:[B

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfb7;
    .locals 1

    .line 1
    const-class v0, Lfb7;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfb7;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfb7;
    .locals 1

    .line 1
    sget-object v0, Lfb7;->H:[Lfb7;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lfb7;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfb7;

    .line 8
    .line 9
    return-object v0
.end method
