.class public abstract Lq89;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lp89;

.field public static final d:Z

.field public static final e:J

.field public static final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    invoke-static {}, Lq89;->g()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lq89;->a:Lsun/misc/Unsafe;

    .line 6
    .line 7
    sget-object v1, Lr69;->a:Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v1, Lq89;->b:Ljava/lang/Class;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-static {v1}, Lq89;->l(Ljava/lang/Class;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v3}, Lq89;->l(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ln89;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lp89;-><init>(Lsun/misc/Unsafe;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz v4, :cond_1

    .line 34
    .line 35
    new-instance v2, Lo89;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lp89;-><init>(Lsun/misc/Unsafe;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    sput-object v2, Lq89;->c:Lp89;

    .line 43
    .line 44
    const-string v0, "platform method missing - proto runtime falling back to safer methods: "

    .line 45
    .line 46
    const-string v4, "logMissingMethod"

    .line 47
    .line 48
    const-string v5, "com.google.protobuf.UnsafeUtil"

    .line 49
    .line 50
    const-class v6, Lq89;

    .line 51
    .line 52
    const-class v7, Ljava/lang/Object;

    .line 53
    .line 54
    const-string v8, "getLong"

    .line 55
    .line 56
    const-class v9, Ljava/lang/reflect/Field;

    .line 57
    .line 58
    const-string v10, "objectFieldOffset"

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v2, v2, Lp89;->a:Lsun/misc/Unsafe;

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    filled-new-array {v7, v1}, [Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v2, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lq89;->j()Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-static {v11}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v11, v12, v5, v4, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    sget-object v2, Lq89;->c:Lp89;

    .line 113
    .line 114
    const/4 v11, 0x1

    .line 115
    const/4 v12, 0x0

    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    :goto_2
    move v0, v12

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const-class v13, Ljava/lang/Class;

    .line 121
    .line 122
    iget-object v2, v2, Lp89;->a:Lsun/misc/Unsafe;

    .line 123
    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v2, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    const-string v9, "arrayBaseOffset"

    .line 139
    .line 140
    filled-new-array {v13}, [Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 145
    .line 146
    .line 147
    const-string v9, "arrayIndexScale"

    .line 148
    .line 149
    filled-new-array {v13}, [Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    .line 155
    .line 156
    const-string v9, "getInt"

    .line 157
    .line 158
    filled-new-array {v7, v1}, [Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 163
    .line 164
    .line 165
    const-string v9, "putInt"

    .line 166
    .line 167
    filled-new-array {v7, v1, v3}, [Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v2, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    filled-new-array {v7, v1}, [Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v2, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    const-string v3, "putLong"

    .line 182
    .line 183
    filled-new-array {v7, v1, v1}, [Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    const-string v3, "getObject"

    .line 191
    .line 192
    filled-new-array {v7, v1}, [Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 197
    .line 198
    .line 199
    const-string v3, "putObject"

    .line 200
    .line 201
    filled-new-array {v7, v1, v7}, [Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 207
    .line 208
    move v0, v11

    .line 209
    goto :goto_3

    .line 210
    :catchall_1
    move-exception v1

    .line 211
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 220
    .line 221
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v2, v3, v5, v4, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :goto_3
    sput-boolean v0, Lq89;->d:Z

    .line 234
    .line 235
    const-class v0, [B

    .line 236
    .line 237
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    int-to-long v0, v0

    .line 242
    sput-wide v0, Lq89;->e:J

    .line 243
    .line 244
    const-class v0, [Z

    .line 245
    .line 246
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 250
    .line 251
    .line 252
    const-class v0, [I

    .line 253
    .line 254
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 258
    .line 259
    .line 260
    const-class v0, [J

    .line 261
    .line 262
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    const-class v0, [F

    .line 269
    .line 270
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 274
    .line 275
    .line 276
    const-class v0, [D

    .line 277
    .line 278
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 279
    .line 280
    .line 281
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 282
    .line 283
    .line 284
    const-class v0, [Ljava/lang/Object;

    .line 285
    .line 286
    invoke-static {v0}, Lq89;->f(Ljava/lang/Class;)I

    .line 287
    .line 288
    .line 289
    invoke-static {v0}, Lq89;->h(Ljava/lang/Class;)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Lq89;->j()Ljava/lang/reflect/Field;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_7

    .line 297
    .line 298
    sget-object v1, Lq89;->c:Lp89;

    .line 299
    .line 300
    if-nez v1, :cond_6

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_6
    iget-object v1, v1, Lp89;->a:Lsun/misc/Unsafe;

    .line 304
    .line 305
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 306
    .line 307
    .line 308
    :cond_7
    :goto_4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 313
    .line 314
    if-ne v0, v1, :cond_8

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_8
    move v11, v12

    .line 318
    :goto_5
    sput-boolean v11, Lq89;->f:Z

    .line 319
    .line 320
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lq89;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static b(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lq89;->c:Lp89;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lp89;->e(Ljava/lang/Object;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Lq89;->c:Lp89;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lp89;->f(Ljava/lang/Object;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static d(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lq89;->c:Lp89;

    .line 2
    .line 3
    iget-object v0, v0, Lp89;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static e([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Lq89;->e:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lq89;->c:Lp89;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Lp89;->b(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static f(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lq89;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lq89;->c:Lp89;

    .line 6
    .line 7
    iget-object v0, v0, Lp89;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public static g()Lsun/misc/Unsafe;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lm89;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-object v1, v0

    .line 15
    :goto_0
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    :try_start_1
    const-class v2, [B

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :catch_0
    const-class v1, Lq89;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 35
    .line 36
    const-string v3, "getUnsafe"

    .line 37
    .line 38
    const-string v4, "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely."

    .line 39
    .line 40
    const-string v5, "com.google.protobuf.UnsafeUtil"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static h(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lq89;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lq89;->c:Lp89;

    .line 6
    .line 7
    iget-object v0, v0, Lp89;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lq89;->c:Lp89;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lp89;->j(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    not-int p1, p1

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v3, p2, p1

    .line 19
    .line 20
    not-int v3, v3

    .line 21
    and-int/2addr v2, v3

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v2

    .line 26
    invoke-static {p0, v0, v1, p1}, Lq89;->b(Ljava/lang/Object;JI)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static j()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    const-class v0, Ljava/nio/Buffer;

    .line 2
    .line 3
    const-string v1, "effectiveDirectAddress"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-object v1, v2

    .line 12
    :goto_0
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    const-string v1, "address"

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    goto :goto_1

    .line 22
    :catchall_1
    move-object v0, v2

    .line 23
    :goto_1
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    if-ne v1, v3, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    return-object v2
.end method

.method public static k(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lq89;->c:Lp89;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lp89;->j(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    and-int/lit8 p1, p1, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v3, p2, p1

    .line 18
    .line 19
    not-int v3, v3

    .line 20
    and-int/2addr v2, v3

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v2

    .line 25
    invoke-static {p0, v0, v1, p1}, Lq89;->b(Ljava/lang/Object;JI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static l(Ljava/lang/Class;)Z
    .locals 6

    .line 1
    const-class v0, [B

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lq89;->b:Ljava/lang/Class;

    .line 4
    .line 5
    const-string v2, "peekLong"

    .line 6
    .line 7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    filled-new-array {p0, v3}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    const-string v2, "pokeLong"

    .line 17
    .line 18
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    const-string v2, "pokeInt"

    .line 28
    .line 29
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    const-string v2, "peekInt"

    .line 39
    .line 40
    filled-new-array {p0, v3}, [Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    const-string v2, "pokeByte"

    .line 48
    .line 49
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    filled-new-array {p0, v3}, [Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    const-string v2, "peekByte"

    .line 59
    .line 60
    filled-new-array {p0}, [Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    const-string v2, "pokeByteArray"

    .line 68
    .line 69
    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    const-string v2, "peekByteArray"

    .line 77
    .line 78
    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :catchall_0
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public static m(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lq89;->c:Lp89;

    .line 2
    .line 3
    iget-object v0, v0, Lp89;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
