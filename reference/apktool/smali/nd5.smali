.class public final Lnd5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:[Ly74;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/Class;

.field public final f:Llg4;

.field public final g:Z

.field public final h:[Ljava/lang/Class;

.field public final i:Z

.field public final j:Lpd5;

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-class v2, Ljava/lang/reflect/Method;

    .line 9
    .line 10
    const-string v3, "handler"

    .line 11
    .line 12
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-class v2, Ljava/lang/Integer;

    .line 17
    .line 18
    const-string v14, "priority"

    .line 19
    .line 20
    filled-new-array {v14, v2}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-class v2, Ljava/lang/Class;

    .line 25
    .line 26
    const-string v15, "invocation"

    .line 27
    .line 28
    filled-new-array {v15, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-class v2, [Ly74;

    .line 33
    .line 34
    const-string v7, "filter"

    .line 35
    .line 36
    filled-new-array {v7, v2}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-class v8, Ljava/lang/String;

    .line 41
    .line 42
    const-string v9, "condition"

    .line 43
    .line 44
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-string v10, "envelope"

    .line 49
    .line 50
    const-class v11, Ljava/lang/Boolean;

    .line 51
    .line 52
    move-object v12, v9

    .line 53
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-class v13, [Ljava/lang/Class;

    .line 58
    .line 59
    move-object/from16 v16, v2

    .line 60
    .line 61
    const-string v2, "messages"

    .line 62
    .line 63
    filled-new-array {v2, v13}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    move-object/from16 v17, v2

    .line 68
    .line 69
    const-string v2, "synchronized"

    .line 70
    .line 71
    filled-new-array {v2, v11}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v18

    .line 75
    move-object/from16 v19, v4

    .line 76
    .line 77
    const-class v4, Lpd5;

    .line 78
    .line 79
    move-object/from16 v20, v2

    .line 80
    .line 81
    const-string v2, "listener"

    .line 82
    .line 83
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object/from16 v21, v2

    .line 88
    .line 89
    const-string v2, "subtypes"

    .line 90
    .line 91
    filled-new-array {v2, v11}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    move-object/from16 v22, v2

    .line 96
    .line 97
    move-object v2, v7

    .line 98
    move-object/from16 v23, v10

    .line 99
    .line 100
    move-object v10, v13

    .line 101
    move-object/from16 v7, v16

    .line 102
    .line 103
    move-object v13, v11

    .line 104
    move-object/from16 v16, v15

    .line 105
    .line 106
    move-object/from16 v11, v18

    .line 107
    .line 108
    move-object v15, v12

    .line 109
    move-object v12, v4

    .line 110
    move-object/from16 v4, v19

    .line 111
    .line 112
    filled-new-array/range {v4 .. v13}, [[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v5, 0x0

    .line 117
    move v6, v5

    .line 118
    :goto_0
    const/16 v7, 0xa

    .line 119
    .line 120
    if-ge v6, v7, :cond_1

    .line 121
    .line 122
    aget-object v7, v4, v6

    .line 123
    .line 124
    aget-object v8, v7, v5

    .line 125
    .line 126
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    const/4 v9, 0x1

    .line 131
    if-eqz v8, :cond_0

    .line 132
    .line 133
    aget-object v8, v7, v9

    .line 134
    .line 135
    check-cast v8, Ljava/lang/Class;

    .line 136
    .line 137
    aget-object v10, v7, v5

    .line 138
    .line 139
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_0

    .line 152
    .line 153
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v2, "Property "

    .line 159
    .line 160
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    aget-object v2, v7, v5

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v2, " was expected to be not null and of type "

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    aget-object v2, v7, v9

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    aget-object v2, v7, v5

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, " but was: "

    .line 185
    .line 186
    invoke-static {v0, v2, v1}, Ld6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    throw v0

    .line 191
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Ljava/lang/reflect/Method;

    .line 196
    .line 197
    iput-object v3, v0, Lnd5;->a:Ljava/lang/reflect/Method;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, [Ly74;

    .line 204
    .line 205
    check-cast v2, [Ly74;

    .line 206
    .line 207
    iput-object v2, v0, Lnd5;->b:[Ly74;

    .line 208
    .line 209
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/String;

    .line 214
    .line 215
    iput-object v2, v0, Lnd5;->c:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iput v2, v0, Lnd5;->d:I

    .line 228
    .line 229
    move-object/from16 v2, v16

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Ljava/lang/Class;

    .line 236
    .line 237
    iput-object v2, v0, Lnd5;->e:Ljava/lang/Class;

    .line 238
    .line 239
    const-string v2, "invocationMode"

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Llg4;

    .line 246
    .line 247
    iput-object v2, v0, Lnd5;->f:Llg4;

    .line 248
    .line 249
    move-object/from16 v2, v23

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iput-boolean v2, v0, Lnd5;->g:Z

    .line 262
    .line 263
    move-object/from16 v2, v22

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    iput-boolean v2, v0, Lnd5;->i:Z

    .line 276
    .line 277
    move-object/from16 v2, v21

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lpd5;

    .line 284
    .line 285
    iput-object v2, v0, Lnd5;->j:Lpd5;

    .line 286
    .line 287
    move-object/from16 v2, v20

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iput-boolean v2, v0, Lnd5;->k:Z

    .line 300
    .line 301
    move-object/from16 v2, v17

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, [Ljava/lang/Class;

    .line 308
    .line 309
    iput-object v1, v0, Lnd5;->h:[Ljava/lang/Class;

    .line 310
    .line 311
    return-void
.end method
