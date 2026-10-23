.class public abstract Ly79;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    sput-object v0, Ly79;->a:[C

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static a(ILjava/lang/StringBuilder;)V
    .locals 3

    .line 1
    :goto_0
    if-lez p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x50

    .line 4
    .line 5
    if-le p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    move v0, p0

    .line 9
    :goto_1
    const/4 v1, 0x0

    .line 10
    sget-object v2, Ly79;->a:[C

    .line 11
    .line 12
    invoke-virtual {p1, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sub-int/2addr p0, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p3, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p3, Ljava/util/Map;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p3, Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-static {p0, p1, p2, v0}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    return-void

    .line 56
    :cond_2
    const/16 v0, 0xa

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p0}, Ly79;->a(ILjava/lang/StringBuilder;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x1

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move v3, v2

    .line 90
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v3, v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    const-string v5, "_"

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    instance-of p2, p3, Ljava/lang/String;

    .line 129
    .line 130
    const-string v0, ": \""

    .line 131
    .line 132
    const/16 v3, 0x22

    .line 133
    .line 134
    if-eqz p2, :cond_f

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    check-cast p3, Ljava/lang/String;

    .line 140
    .line 141
    move p1, v1

    .line 142
    move p2, p1

    .line 143
    move v0, p2

    .line 144
    :goto_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-ge v1, v4, :cond_b

    .line 149
    .line 150
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    const/16 v5, 0x20

    .line 155
    .line 156
    if-lt v4, v5, :cond_a

    .line 157
    .line 158
    const/16 v5, 0x7e

    .line 159
    .line 160
    if-le v4, v5, :cond_6

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_6
    if-eq v4, v3, :cond_9

    .line 164
    .line 165
    const/16 v5, 0x27

    .line 166
    .line 167
    if-eq v4, v5, :cond_8

    .line 168
    .line 169
    const/16 v5, 0x5c

    .line 170
    .line 171
    if-eq v4, v5, :cond_7

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_7
    move p1, v2

    .line 175
    goto :goto_5

    .line 176
    :cond_8
    move p2, v2

    .line 177
    goto :goto_5

    .line 178
    :cond_9
    move v0, v2

    .line 179
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_a
    :goto_6
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 183
    .line 184
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lxh8;->H([B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    goto :goto_7

    .line 193
    :cond_b
    if-eqz p1, :cond_c

    .line 194
    .line 195
    const-string p1, "\\"

    .line 196
    .line 197
    const-string v1, "\\\\"

    .line 198
    .line 199
    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    :cond_c
    if-eqz p2, :cond_d

    .line 204
    .line 205
    const-string p1, "\'"

    .line 206
    .line 207
    const-string p2, "\\\'"

    .line 208
    .line 209
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    :cond_d
    if-eqz v0, :cond_e

    .line 214
    .line 215
    const-string p1, "\""

    .line 216
    .line 217
    const-string p2, "\\\""

    .line 218
    .line 219
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    goto :goto_7

    .line 224
    :cond_e
    move-object p1, p3

    .line 225
    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_f
    instance-of p2, p3, Lt69;

    .line 233
    .line 234
    if-eqz p2, :cond_10

    .line 235
    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    check-cast p3, Lt69;

    .line 240
    .line 241
    invoke-virtual {p3}, Lt69;->w()[B

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lxh8;->H([B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_10
    instance-of p2, p3, Lk79;

    .line 257
    .line 258
    const-string v0, "}"

    .line 259
    .line 260
    const-string v1, "\n"

    .line 261
    .line 262
    const-string v2, " {"

    .line 263
    .line 264
    if-eqz p2, :cond_11

    .line 265
    .line 266
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    check-cast p3, Lk79;

    .line 270
    .line 271
    add-int/lit8 p2, p1, 0x2

    .line 272
    .line 273
    invoke-static {p3, p0, p2}, Ly79;->c(Lk79;Ljava/lang/StringBuilder;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-static {p1, p0}, Ly79;->a(ILjava/lang/StringBuilder;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_11
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 287
    .line 288
    if-eqz p2, :cond_12

    .line 289
    .line 290
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    check-cast p3, Ljava/util/Map$Entry;

    .line 294
    .line 295
    add-int/lit8 p2, p1, 0x2

    .line 296
    .line 297
    const-string v2, "key"

    .line 298
    .line 299
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {p0, p2, v2, v3}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    const-string v2, "value"

    .line 307
    .line 308
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p3

    .line 312
    invoke-static {p0, p2, v2, p3}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-static {p1, p0}, Ly79;->a(ILjava/lang/StringBuilder;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_12
    const-string p1, ": "

    .line 326
    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method public static c(Lk79;Ljava/lang/StringBuilder;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/TreeMap;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    :goto_0
    const-string v10, "get"

    .line 34
    .line 35
    const-string v11, "has"

    .line 36
    .line 37
    const-string v12, "set"

    .line 38
    .line 39
    const/4 v13, 0x3

    .line 40
    if-ge v9, v7, :cond_3

    .line 41
    .line 42
    aget-object v14, v6, v9

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-nez v15, :cond_2

    .line 53
    .line 54
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    if-lt v15, v13, :cond_2

    .line 63
    .line 64
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_0

    .line 73
    .line 74
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_2

    .line 91
    .line 92
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    array-length v12, v12

    .line 97
    if-nez v12, :cond_2

    .line 98
    .line 99
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_1

    .line 108
    .line 109
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-eqz v10, :cond_2

    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v5, v10, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_12

    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Ljava/util/Map$Entry;

    .line 156
    .line 157
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    check-cast v9, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    const-string v14, "List"

    .line 168
    .line 169
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-eqz v15, :cond_5

    .line 174
    .line 175
    const-string v15, "OrBuilderList"

    .line 176
    .line 177
    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-nez v15, :cond_5

    .line 182
    .line 183
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-nez v14, :cond_5

    .line 188
    .line 189
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    check-cast v14, Ljava/lang/reflect/Method;

    .line 194
    .line 195
    if-eqz v14, :cond_5

    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    const-class v13, Ljava/util/List;

    .line 202
    .line 203
    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-eqz v13, :cond_5

    .line 208
    .line 209
    const/4 v7, 0x4

    .line 210
    invoke-static {v7, v8, v9}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    new-array v9, v8, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {v14, v0, v9}, Lk79;->e(Ljava/lang/reflect/Method;Lk79;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-static {v1, v2, v7, v9}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_3
    const/4 v13, 0x3

    .line 224
    goto :goto_2

    .line 225
    :cond_5
    const-string v13, "Map"

    .line 226
    .line 227
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-eqz v14, :cond_6

    .line 232
    .line 233
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-nez v13, :cond_6

    .line 238
    .line 239
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    check-cast v13, Ljava/lang/reflect/Method;

    .line 244
    .line 245
    if-eqz v13, :cond_6

    .line 246
    .line 247
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    const-class v15, Ljava/util/Map;

    .line 252
    .line 253
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    if-eqz v14, :cond_6

    .line 258
    .line 259
    const-class v14, Ljava/lang/Deprecated;

    .line 260
    .line 261
    invoke-virtual {v13, v14}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    if-nez v14, :cond_6

    .line 266
    .line 267
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    if-eqz v14, :cond_6

    .line 276
    .line 277
    const/4 v14, 0x3

    .line 278
    invoke-static {v14, v8, v9}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    new-array v9, v8, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-static {v13, v0, v9}, Lk79;->e(Ljava/lang/reflect/Method;Lk79;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-static {v1, v2, v7, v9}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_6
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    if-eqz v13, :cond_4

    .line 301
    .line 302
    const-string v13, "Bytes"

    .line 303
    .line 304
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    if-eqz v13, :cond_7

    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    add-int/lit8 v13, v13, -0x5

    .line 315
    .line 316
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    invoke-virtual {v5, v13}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v13

    .line 328
    if-nez v13, :cond_4

    .line 329
    .line 330
    :cond_7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    check-cast v7, Ljava/lang/reflect/Method;

    .line 335
    .line 336
    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    check-cast v13, Ljava/lang/reflect/Method;

    .line 345
    .line 346
    if-eqz v7, :cond_4

    .line 347
    .line 348
    new-array v14, v8, [Ljava/lang/Object;

    .line 349
    .line 350
    invoke-static {v7, v0, v14}, Lk79;->e(Ljava/lang/reflect/Method;Lk79;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    if-nez v13, :cond_11

    .line 355
    .line 356
    instance-of v13, v7, Ljava/lang/Boolean;

    .line 357
    .line 358
    const/4 v14, 0x1

    .line 359
    if-eqz v13, :cond_9

    .line 360
    .line 361
    move-object v13, v7

    .line 362
    check-cast v13, Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    if-nez v13, :cond_8

    .line 369
    .line 370
    :goto_4
    move v13, v14

    .line 371
    goto/16 :goto_5

    .line 372
    .line 373
    :cond_8
    move v13, v8

    .line 374
    goto/16 :goto_5

    .line 375
    .line 376
    :cond_9
    instance-of v13, v7, Ljava/lang/Integer;

    .line 377
    .line 378
    if-eqz v13, :cond_a

    .line 379
    .line 380
    move-object v13, v7

    .line 381
    check-cast v13, Ljava/lang/Integer;

    .line 382
    .line 383
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    if-nez v13, :cond_8

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_a
    instance-of v13, v7, Ljava/lang/Float;

    .line 391
    .line 392
    if-eqz v13, :cond_b

    .line 393
    .line 394
    move-object v13, v7

    .line 395
    check-cast v13, Ljava/lang/Float;

    .line 396
    .line 397
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-nez v13, :cond_8

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_b
    instance-of v13, v7, Ljava/lang/Double;

    .line 409
    .line 410
    if-eqz v13, :cond_c

    .line 411
    .line 412
    move-object v13, v7

    .line 413
    check-cast v13, Ljava/lang/Double;

    .line 414
    .line 415
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 416
    .line 417
    .line 418
    move-result-wide v17

    .line 419
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 420
    .line 421
    .line 422
    move-result-wide v17

    .line 423
    const-wide/16 v19, 0x0

    .line 424
    .line 425
    cmp-long v13, v17, v19

    .line 426
    .line 427
    if-nez v13, :cond_8

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_c
    instance-of v13, v7, Ljava/lang/String;

    .line 431
    .line 432
    if-eqz v13, :cond_d

    .line 433
    .line 434
    const-string v13, ""

    .line 435
    .line 436
    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    goto :goto_5

    .line 441
    :cond_d
    instance-of v13, v7, Lt69;

    .line 442
    .line 443
    if-eqz v13, :cond_e

    .line 444
    .line 445
    sget-object v13, Lt69;->b:Lx69;

    .line 446
    .line 447
    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v13

    .line 451
    goto :goto_5

    .line 452
    :cond_e
    instance-of v13, v7, Lo69;

    .line 453
    .line 454
    if-eqz v13, :cond_f

    .line 455
    .line 456
    move-object v13, v7

    .line 457
    check-cast v13, Lo69;

    .line 458
    .line 459
    check-cast v13, Lk79;

    .line 460
    .line 461
    const/4 v15, 0x6

    .line 462
    invoke-virtual {v13, v15}, Lk79;->d(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v13

    .line 466
    check-cast v13, Lk79;

    .line 467
    .line 468
    if-ne v7, v13, :cond_8

    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_f
    instance-of v13, v7, Ljava/lang/Enum;

    .line 472
    .line 473
    if-eqz v13, :cond_8

    .line 474
    .line 475
    move-object v13, v7

    .line 476
    check-cast v13, Ljava/lang/Enum;

    .line 477
    .line 478
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 479
    .line 480
    .line 481
    move-result v13

    .line 482
    if-nez v13, :cond_8

    .line 483
    .line 484
    goto :goto_4

    .line 485
    :goto_5
    if-nez v13, :cond_10

    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_10
    move v14, v8

    .line 489
    goto :goto_6

    .line 490
    :cond_11
    new-array v14, v8, [Ljava/lang/Object;

    .line 491
    .line 492
    invoke-static {v13, v0, v14}, Lk79;->e(Ljava/lang/reflect/Method;Lk79;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v13

    .line 496
    check-cast v13, Ljava/lang/Boolean;

    .line 497
    .line 498
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 499
    .line 500
    .line 501
    move-result v14

    .line 502
    :goto_6
    if-eqz v14, :cond_4

    .line 503
    .line 504
    invoke-static {v1, v2, v9, v7}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :cond_12
    iget-object v0, v0, Lk79;->zzb:Ll89;

    .line 510
    .line 511
    if-eqz v0, :cond_13

    .line 512
    .line 513
    :goto_7
    iget v3, v0, Ll89;->a:I

    .line 514
    .line 515
    if-ge v8, v3, :cond_13

    .line 516
    .line 517
    iget-object v3, v0, Ll89;->b:[I

    .line 518
    .line 519
    aget v3, v3, v8

    .line 520
    .line 521
    const/16 v16, 0x3

    .line 522
    .line 523
    ushr-int/lit8 v3, v3, 0x3

    .line 524
    .line 525
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    iget-object v4, v0, Ll89;->c:[Ljava/lang/Object;

    .line 530
    .line 531
    aget-object v4, v4, v8

    .line 532
    .line 533
    invoke-static {v1, v2, v3, v4}, Ly79;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    add-int/lit8 v8, v8, 0x1

    .line 537
    .line 538
    goto :goto_7

    .line 539
    :cond_13
    return-void
.end method
