.class public final enum Lps6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lps6;

.field public static final enum c:Lps6;

.field public static final synthetic d:[Lps6;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v1, Lps6;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const-string v4, "FILE_DIRECTORY_FILE"

    .line 7
    .line 8
    invoke-direct {v1, v4, v2, v3, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lps6;->b:Lps6;

    .line 12
    .line 13
    new-instance v2, Lps6;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const-wide/16 v3, 0x2

    .line 17
    .line 18
    const-string v5, "FILE_WRITE_THROUGH"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lps6;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const-wide/16 v4, 0x4

    .line 27
    .line 28
    const-string v6, "FILE_SEQUENTIAL_ONLY"

    .line 29
    .line 30
    invoke-direct {v3, v6, v4, v5, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lps6;

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    const-wide/16 v5, 0x8

    .line 37
    .line 38
    const-string v7, "FILE_NO_INTERMEDIATE_BUFFERING"

    .line 39
    .line 40
    invoke-direct {v4, v7, v5, v6, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lps6;

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    const-wide/16 v6, 0x10

    .line 47
    .line 48
    const-string v8, "FILE_SYNCHRONOUS_IO_ALERT"

    .line 49
    .line 50
    invoke-direct {v5, v8, v6, v7, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Lps6;

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    const-wide/16 v7, 0x20

    .line 57
    .line 58
    const-string v9, "FILE_SYNCHRONOUS_IO_NONALERT"

    .line 59
    .line 60
    invoke-direct {v6, v9, v7, v8, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lps6;

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    const-wide/16 v8, 0x40

    .line 67
    .line 68
    const-string v10, "FILE_NON_DIRECTORY_FILE"

    .line 69
    .line 70
    invoke-direct {v7, v10, v8, v9, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lps6;->c:Lps6;

    .line 74
    .line 75
    new-instance v8, Lps6;

    .line 76
    .line 77
    const/4 v0, 0x7

    .line 78
    const-wide/16 v9, 0x100

    .line 79
    .line 80
    const-string v11, "FILE_COMPLETE_IF_OPLOCKED"

    .line 81
    .line 82
    invoke-direct {v8, v11, v9, v10, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Lps6;

    .line 86
    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    const-wide/16 v10, 0x200

    .line 90
    .line 91
    const-string v12, "FILE_NO_EA_KNOWLEDGE"

    .line 92
    .line 93
    invoke-direct {v9, v12, v10, v11, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 94
    .line 95
    .line 96
    new-instance v10, Lps6;

    .line 97
    .line 98
    const/16 v0, 0x9

    .line 99
    .line 100
    const-wide/16 v11, 0x800

    .line 101
    .line 102
    const-string v13, "FILE_RANDOM_ACCESS"

    .line 103
    .line 104
    invoke-direct {v10, v13, v11, v12, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 105
    .line 106
    .line 107
    new-instance v11, Lps6;

    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    const-wide/16 v12, 0x1000

    .line 112
    .line 113
    const-string v14, "FILE_DELETE_ON_CLOSE"

    .line 114
    .line 115
    invoke-direct {v11, v14, v12, v13, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lps6;

    .line 119
    .line 120
    const/16 v0, 0xb

    .line 121
    .line 122
    const-wide/16 v13, 0x2000

    .line 123
    .line 124
    const-string v15, "FILE_OPEN_BY_FILE_ID"

    .line 125
    .line 126
    invoke-direct {v12, v15, v13, v14, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Lps6;

    .line 130
    .line 131
    const/16 v0, 0xc

    .line 132
    .line 133
    const-wide/16 v14, 0x4000

    .line 134
    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    const-string v1, "FILE_OPEN_FOR_BACKUP_INTENT"

    .line 138
    .line 139
    invoke-direct {v13, v1, v14, v15, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 140
    .line 141
    .line 142
    new-instance v14, Lps6;

    .line 143
    .line 144
    const/16 v0, 0xd

    .line 145
    .line 146
    move-object v15, v2

    .line 147
    const-wide/32 v1, 0x8000

    .line 148
    .line 149
    .line 150
    move-object/from16 v17, v3

    .line 151
    .line 152
    const-string v3, "FILE_NO_COMPRESSION"

    .line 153
    .line 154
    invoke-direct {v14, v3, v1, v2, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 155
    .line 156
    .line 157
    move-object v2, v15

    .line 158
    new-instance v15, Lps6;

    .line 159
    .line 160
    const/16 v0, 0xe

    .line 161
    .line 162
    move-object v3, v2

    .line 163
    const-wide/16 v1, 0x400

    .line 164
    .line 165
    move-object/from16 v18, v3

    .line 166
    .line 167
    const-string v3, "FILE_OPEN_REMOTE_INSTANCE"

    .line 168
    .line 169
    invoke-direct {v15, v3, v1, v2, v0}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lps6;

    .line 173
    .line 174
    const/16 v1, 0xf

    .line 175
    .line 176
    const-wide/32 v2, 0x10000

    .line 177
    .line 178
    .line 179
    move-object/from16 v19, v4

    .line 180
    .line 181
    const-string v4, "FILE_OPEN_REQUIRING_OPLOCK"

    .line 182
    .line 183
    invoke-direct {v0, v4, v2, v3, v1}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Lps6;

    .line 187
    .line 188
    const/16 v2, 0x10

    .line 189
    .line 190
    const-wide/32 v3, 0x20000

    .line 191
    .line 192
    .line 193
    move-object/from16 v20, v0

    .line 194
    .line 195
    const-string v0, "FILE_DISALLOW_EXCLUSIVE"

    .line 196
    .line 197
    invoke-direct {v1, v0, v3, v4, v2}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lps6;

    .line 201
    .line 202
    const/16 v2, 0x11

    .line 203
    .line 204
    const-wide/32 v3, 0x100000

    .line 205
    .line 206
    .line 207
    move-object/from16 v21, v1

    .line 208
    .line 209
    const-string v1, "FILE_RESERVE_OPFILTER"

    .line 210
    .line 211
    invoke-direct {v0, v1, v3, v4, v2}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 212
    .line 213
    .line 214
    new-instance v1, Lps6;

    .line 215
    .line 216
    const/16 v2, 0x12

    .line 217
    .line 218
    const-wide/32 v3, 0x200000

    .line 219
    .line 220
    .line 221
    move-object/from16 v22, v0

    .line 222
    .line 223
    const-string v0, "FILE_OPEN_REPARSE_POINT"

    .line 224
    .line 225
    invoke-direct {v1, v0, v3, v4, v2}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lps6;

    .line 229
    .line 230
    const/16 v2, 0x13

    .line 231
    .line 232
    const-wide/32 v3, 0x400000

    .line 233
    .line 234
    .line 235
    move-object/from16 v23, v1

    .line 236
    .line 237
    const-string v1, "FILE_OPEN_NO_RECALL"

    .line 238
    .line 239
    invoke-direct {v0, v1, v3, v4, v2}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 240
    .line 241
    .line 242
    new-instance v1, Lps6;

    .line 243
    .line 244
    const/16 v2, 0x14

    .line 245
    .line 246
    const-wide/32 v3, 0x800000

    .line 247
    .line 248
    .line 249
    move-object/from16 v24, v0

    .line 250
    .line 251
    const-string v0, "FILE_OPEN_FOR_FREE_SPACE_QUERY"

    .line 252
    .line 253
    invoke-direct {v1, v0, v3, v4, v2}, Lps6;-><init>(Ljava/lang/String;JI)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v3, v17

    .line 257
    .line 258
    move-object/from16 v2, v18

    .line 259
    .line 260
    move-object/from16 v4, v19

    .line 261
    .line 262
    move-object/from16 v17, v21

    .line 263
    .line 264
    move-object/from16 v18, v22

    .line 265
    .line 266
    move-object/from16 v19, v23

    .line 267
    .line 268
    move-object/from16 v21, v1

    .line 269
    .line 270
    move-object/from16 v1, v16

    .line 271
    .line 272
    move-object/from16 v16, v20

    .line 273
    .line 274
    move-object/from16 v20, v24

    .line 275
    .line 276
    filled-new-array/range {v1 .. v21}, [Lps6;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lps6;->d:[Lps6;

    .line 281
    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lps6;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lps6;
    .locals 1

    .line 1
    const-class v0, Lps6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lps6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lps6;
    .locals 1

    .line 1
    sget-object v0, Lps6;->d:[Lps6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lps6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lps6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lps6;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
