.class public final enum Lk99;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum b:Lk99;

.field public static final c:Lbc9;

.field public static final synthetic d:[Lk99;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lk99;

    .line 2
    .line 3
    const/16 v1, -0x3e7

    .line 4
    .line 5
    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    .line 6
    .line 7
    const/4 v15, 0x0

    .line 8
    invoke-direct {v0, v2, v15, v1}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lk99;->b:Lk99;

    .line 12
    .line 13
    new-instance v1, Lk99;

    .line 14
    .line 15
    const/4 v2, -0x3

    .line 16
    const-string v3, "SERVICE_TIMEOUT"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v1, v3, v4, v2}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lk99;

    .line 23
    .line 24
    const/4 v3, -0x2

    .line 25
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-direct {v2, v5, v6, v3}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lk99;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    const-string v7, "SERVICE_DISCONNECTED"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v3, v7, v8, v5}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lk99;

    .line 41
    .line 42
    const-string v7, "OK"

    .line 43
    .line 44
    const/4 v9, 0x4

    .line 45
    invoke-direct {v5, v7, v9, v15}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    move-object v7, v5

    .line 49
    new-instance v5, Lk99;

    .line 50
    .line 51
    const-string v10, "USER_CANCELED"

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    invoke-direct {v5, v10, v11, v4}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v10, Lk99;

    .line 58
    .line 59
    const-string v12, "SERVICE_UNAVAILABLE"

    .line 60
    .line 61
    const/4 v13, 0x6

    .line 62
    invoke-direct {v10, v12, v13, v6}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    move v6, v4

    .line 66
    move-object v4, v7

    .line 67
    new-instance v7, Lk99;

    .line 68
    .line 69
    const-string v12, "BILLING_UNAVAILABLE"

    .line 70
    .line 71
    const/4 v14, 0x7

    .line 72
    invoke-direct {v7, v12, v14, v8}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Lk99;

    .line 76
    .line 77
    const-string v12, "ITEM_UNAVAILABLE"

    .line 78
    .line 79
    const/16 v15, 0x8

    .line 80
    .line 81
    invoke-direct {v8, v12, v15, v9}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lk99;

    .line 85
    .line 86
    const-string v12, "DEVELOPER_ERROR"

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v9, v12, v6, v11}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    move-object v6, v10

    .line 94
    new-instance v10, Lk99;

    .line 95
    .line 96
    const-string v11, "ERROR"

    .line 97
    .line 98
    const/16 v12, 0xa

    .line 99
    .line 100
    invoke-direct {v10, v11, v12, v13}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    new-instance v11, Lk99;

    .line 104
    .line 105
    const-string v12, "ITEM_ALREADY_OWNED"

    .line 106
    .line 107
    const/16 v13, 0xb

    .line 108
    .line 109
    invoke-direct {v11, v12, v13, v14}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    new-instance v12, Lk99;

    .line 113
    .line 114
    const-string v14, "ITEM_NOT_OWNED"

    .line 115
    .line 116
    const/16 v13, 0xc

    .line 117
    .line 118
    invoke-direct {v12, v14, v13, v15}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Lk99;

    .line 122
    .line 123
    const-string v15, "EXPIRED_OFFER_TOKEN"

    .line 124
    .line 125
    const/16 v13, 0xd

    .line 126
    .line 127
    move-object/from16 v17, v0

    .line 128
    .line 129
    const/16 v0, 0xb

    .line 130
    .line 131
    invoke-direct {v14, v15, v13, v0}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    move-object v13, v14

    .line 135
    new-instance v14, Lk99;

    .line 136
    .line 137
    const-string v0, "NETWORK_ERROR"

    .line 138
    .line 139
    const/16 v15, 0xe

    .line 140
    .line 141
    move-object/from16 v16, v1

    .line 142
    .line 143
    const/16 v1, 0xc

    .line 144
    .line 145
    invoke-direct {v14, v0, v15, v1}, Lk99;-><init>(Ljava/lang/String;II)V

    .line 146
    .line 147
    .line 148
    move-object/from16 v1, v16

    .line 149
    .line 150
    move-object/from16 v0, v17

    .line 151
    .line 152
    const/4 v15, 0x1

    .line 153
    filled-new-array/range {v0 .. v14}, [Lk99;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lk99;->d:[Lk99;

    .line 158
    .line 159
    new-instance v0, Ljl4;

    .line 160
    .line 161
    invoke-direct {v0, v15}, Ljl4;-><init>(I)V

    .line 162
    .line 163
    .line 164
    const/16 v1, 0x8

    .line 165
    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v1, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    iput v1, v0, Ljl4;->c:I

    .line 172
    .line 173
    invoke-static {}, Lk99;->values()[Lk99;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    array-length v3, v2

    .line 178
    :goto_0
    if-ge v1, v3, :cond_3

    .line 179
    .line 180
    aget-object v4, v2, v1

    .line 181
    .line 182
    iget v5, v4, Lk99;->a:I

    .line 183
    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    iget v6, v0, Ljl4;->c:I

    .line 189
    .line 190
    add-int/2addr v6, v15

    .line 191
    iget-object v7, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 192
    .line 193
    array-length v8, v7

    .line 194
    add-int/2addr v6, v6

    .line 195
    if-le v6, v8, :cond_2

    .line 196
    .line 197
    if-le v6, v8, :cond_1

    .line 198
    .line 199
    shr-int/lit8 v9, v8, 0x1

    .line 200
    .line 201
    add-int/2addr v8, v9

    .line 202
    add-int/2addr v8, v15

    .line 203
    if-ge v8, v6, :cond_0

    .line 204
    .line 205
    add-int/lit8 v6, v6, -0x1

    .line 206
    .line 207
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    add-int/2addr v6, v6

    .line 212
    move v8, v6

    .line 213
    :cond_0
    if-gez v8, :cond_1

    .line 214
    .line 215
    const v8, 0x7fffffff

    .line 216
    .line 217
    .line 218
    :cond_1
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    iput-object v6, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 223
    .line 224
    :cond_2
    iget-object v6, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 225
    .line 226
    iget v7, v0, Ljl4;->c:I

    .line 227
    .line 228
    add-int v8, v7, v7

    .line 229
    .line 230
    aput-object v5, v6, v8

    .line 231
    .line 232
    add-int/2addr v8, v15

    .line 233
    aput-object v4, v6, v8

    .line 234
    .line 235
    add-int/2addr v7, v15

    .line 236
    iput v7, v0, Ljl4;->c:I

    .line 237
    .line 238
    add-int/lit8 v1, v1, 0x1

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_3
    iget-object v1, v0, Ljl4;->d:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v1, Lpa9;

    .line 244
    .line 245
    if-nez v1, :cond_5

    .line 246
    .line 247
    iget v1, v0, Ljl4;->c:I

    .line 248
    .line 249
    iget-object v2, v0, Ljl4;->b:[Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {v1, v2, v0}, Lbc9;->a(I[Ljava/lang/Object;Ljl4;)Lbc9;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v0, v0, Ljl4;->d:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lpa9;

    .line 258
    .line 259
    if-nez v0, :cond_4

    .line 260
    .line 261
    sput-object v1, Lk99;->c:Lbc9;

    .line 262
    .line 263
    return-void

    .line 264
    :cond_4
    invoke-virtual {v0}, Lpa9;->a()Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    throw v0

    .line 269
    :cond_5
    invoke-virtual {v1}, Lpa9;->a()Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lk99;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lk99;
    .locals 1

    .line 1
    sget-object v0, Lk99;->d:[Lk99;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lk99;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lk99;

    .line 8
    .line 9
    return-object v0
.end method
