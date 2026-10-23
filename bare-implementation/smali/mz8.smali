.class public final enum Lmz8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final synthetic c:[Lmz8;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v1, Lmz8;

    .line 2
    .line 3
    const-string v0, "STORED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v2}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lmz8;

    .line 10
    .line 11
    const-string v0, "UNSHRINKING"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v2, v0, v3, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lmz8;

    .line 18
    .line 19
    const-string v0, "EXPANDING_LEVEL_1"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v3, v0, v4, v4}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lmz8;

    .line 26
    .line 27
    const-string v0, "EXPANDING_LEVEL_2"

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    invoke-direct {v4, v0, v5, v5}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lmz8;

    .line 34
    .line 35
    const-string v0, "EXPANDING_LEVEL_3"

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    invoke-direct {v5, v0, v6, v6}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lmz8;

    .line 42
    .line 43
    const-string v0, "EXPANDING_LEVEL_4"

    .line 44
    .line 45
    const/4 v7, 0x5

    .line 46
    invoke-direct {v6, v0, v7, v7}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lmz8;

    .line 50
    .line 51
    const-string v0, "IMPLODING"

    .line 52
    .line 53
    const/4 v8, 0x6

    .line 54
    invoke-direct {v7, v0, v8, v8}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v8, Lmz8;

    .line 58
    .line 59
    const-string v0, "TOKENIZATION"

    .line 60
    .line 61
    const/4 v9, 0x7

    .line 62
    invoke-direct {v8, v0, v9, v9}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lmz8;

    .line 66
    .line 67
    const-string v0, "DEFLATED"

    .line 68
    .line 69
    const/16 v10, 0x8

    .line 70
    .line 71
    invoke-direct {v9, v0, v10, v10}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    new-instance v10, Lmz8;

    .line 75
    .line 76
    const-string v0, "ENHANCED_DEFLATED"

    .line 77
    .line 78
    const/16 v11, 0x9

    .line 79
    .line 80
    invoke-direct {v10, v0, v11, v11}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Lmz8;

    .line 84
    .line 85
    const-string v0, "PKWARE_IMPLODING"

    .line 86
    .line 87
    const/16 v12, 0xa

    .line 88
    .line 89
    invoke-direct {v11, v0, v12, v12}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    new-instance v12, Lmz8;

    .line 93
    .line 94
    const-string v0, "BZIP2"

    .line 95
    .line 96
    const/16 v13, 0xb

    .line 97
    .line 98
    const/16 v14, 0xc

    .line 99
    .line 100
    invoke-direct {v12, v0, v13, v14}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    new-instance v13, Lmz8;

    .line 104
    .line 105
    const-string v0, "LZMA"

    .line 106
    .line 107
    const/16 v15, 0xe

    .line 108
    .line 109
    invoke-direct {v13, v0, v14, v15}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    new-instance v14, Lmz8;

    .line 113
    .line 114
    const-string v0, "ZSTD_DEPRECATED"

    .line 115
    .line 116
    const/16 v15, 0xd

    .line 117
    .line 118
    move-object/from16 v17, v1

    .line 119
    .line 120
    const/16 v1, 0x14

    .line 121
    .line 122
    invoke-direct {v14, v0, v15, v1}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    new-instance v15, Lmz8;

    .line 126
    .line 127
    const-string v0, "ZSTD"

    .line 128
    .line 129
    const/16 v1, 0x5d

    .line 130
    .line 131
    move-object/from16 v19, v2

    .line 132
    .line 133
    const/16 v2, 0xe

    .line 134
    .line 135
    invoke-direct {v15, v0, v2, v1}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lmz8;

    .line 139
    .line 140
    const/16 v1, 0xf

    .line 141
    .line 142
    const/16 v2, 0x5f

    .line 143
    .line 144
    move-object/from16 v16, v3

    .line 145
    .line 146
    const-string v3, "XZ"

    .line 147
    .line 148
    invoke-direct {v0, v3, v1, v2}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lmz8;

    .line 152
    .line 153
    const/16 v2, 0x10

    .line 154
    .line 155
    const/16 v3, 0x60

    .line 156
    .line 157
    move-object/from16 v20, v0

    .line 158
    .line 159
    const-string v0, "JPEG"

    .line 160
    .line 161
    invoke-direct {v1, v0, v2, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lmz8;

    .line 165
    .line 166
    const/16 v2, 0x11

    .line 167
    .line 168
    const/16 v3, 0x61

    .line 169
    .line 170
    move-object/from16 v21, v1

    .line 171
    .line 172
    const-string v1, "WAVPACK"

    .line 173
    .line 174
    invoke-direct {v0, v1, v2, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lmz8;

    .line 178
    .line 179
    const/16 v2, 0x12

    .line 180
    .line 181
    const/16 v3, 0x62

    .line 182
    .line 183
    move-object/from16 v22, v0

    .line 184
    .line 185
    const-string v0, "PPMD"

    .line 186
    .line 187
    invoke-direct {v1, v0, v2, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lmz8;

    .line 191
    .line 192
    const/16 v2, 0x13

    .line 193
    .line 194
    const/16 v3, 0x63

    .line 195
    .line 196
    move-object/from16 v23, v1

    .line 197
    .line 198
    const-string v1, "AES_ENCRYPTED"

    .line 199
    .line 200
    invoke-direct {v0, v1, v2, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lmz8;

    .line 204
    .line 205
    const-string v2, "UNKNOWN"

    .line 206
    .line 207
    const/4 v3, -0x1

    .line 208
    move-object/from16 v24, v0

    .line 209
    .line 210
    const/16 v0, 0x14

    .line 211
    .line 212
    invoke-direct {v1, v2, v0, v3}, Lmz8;-><init>(Ljava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v2, v21

    .line 216
    .line 217
    move-object/from16 v21, v1

    .line 218
    .line 219
    move-object/from16 v1, v17

    .line 220
    .line 221
    move-object/from16 v17, v2

    .line 222
    .line 223
    move-object/from16 v3, v16

    .line 224
    .line 225
    move-object/from16 v2, v19

    .line 226
    .line 227
    move-object/from16 v16, v20

    .line 228
    .line 229
    move-object/from16 v18, v22

    .line 230
    .line 231
    move-object/from16 v19, v23

    .line 232
    .line 233
    move-object/from16 v20, v24

    .line 234
    .line 235
    filled-new-array/range {v1 .. v21}, [Lmz8;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lmz8;->c:[Lmz8;

    .line 240
    .line 241
    invoke-static {}, Lmz8;->values()[Lmz8;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v1, Lbu5;

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    invoke-direct {v1, v2}, Lbu5;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/util/Map;

    .line 268
    .line 269
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sput-object v0, Lmz8;->b:Ljava/util/Map;

    .line 274
    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lmz8;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmz8;
    .locals 1

    .line 1
    const-class v0, Lmz8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmz8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lmz8;
    .locals 1

    .line 1
    sget-object v0, Lmz8;->c:[Lmz8;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lmz8;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmz8;

    .line 8
    .line 9
    return-object v0
.end method
