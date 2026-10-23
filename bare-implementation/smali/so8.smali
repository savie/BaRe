.class public final Lso8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lso8;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lso8;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Lso8;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v0, p0, Lso8;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v0, p0, Lso8;->e:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lso8;->f:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v0, p0, Lso8;->k:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public static a([B)Lln5;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p0, Lf79;->a:Lf79;

    .line 7
    .line 8
    invoke-static {v0, p0}, Luz9;->v(Ljava/io/ByteArrayInputStream;Lf79;)Luz9;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lix0;->j(Luz9;)Lix0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lln5;

    .line 20
    .line 21
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-virtual {p0, v1}, Luz9;->d(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lj79;

    .line 31
    .line 32
    iget-object v2, v1, Lj79;->a:Lk79;

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Lk79;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 42
    .line 43
    invoke-virtual {v2}, Lk79;->s()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lj79;->d()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 53
    .line 54
    invoke-static {v2, p0}, Lj79;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    check-cast v1, Ltz9;

    .line 58
    .line 59
    const/16 p0, 0x11

    .line 60
    .line 61
    invoke-direct {v0, v1, p0}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    .line 68
    .line 69
    throw p0
.end method


# virtual methods
.method public declared-synchronized b()Ltr9;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lso8;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    iget-object v0, p0, Lso8;->k:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lmz9;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lso8;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lrb;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lo69;->c()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lnc8;->t0([B)Lbd9;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lrb;

    .line 29
    .line 30
    const/16 v2, 0x1c

    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lso8;->f:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_b

    .line 40
    .line 41
    :cond_0
    :goto_0
    sget-object v0, Ltr9;->c:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lso8;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Landroid/content/Context;

    .line 47
    .line 48
    iget-object v2, p0, Lso8;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p0, Lso8;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :goto_1
    :try_start_2
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    :goto_2
    move-object v1, v5

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    invoke-static {v1}, Lho6;->c0(Ljava/lang/String;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    :try_start_3
    new-instance v1, Ljava/io/CharConversionException;

    .line 89
    .line 90
    const-string v3, "can\'t read keyset; the pref value "

    .line 91
    .line 92
    const-string v4, " is not a valid hex string"

    .line 93
    .line 94
    invoke-static {v3, v2, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_3
    const-string v1, "keysetName cannot be null"

    .line 103
    .line 104
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_3
    iget-object v2, p0, Lso8;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v2, Ljava/lang/String;

    .line 111
    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    :try_start_4
    invoke-virtual {p0}, Lso8;->d()Lxr9;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lso8;->e:Ljava/lang/Object;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catchall_1
    move-exception v1

    .line 124
    goto/16 :goto_a

    .line 125
    .line 126
    :cond_4
    :goto_4
    iget-object v1, p0, Lso8;->f:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Lrb;

    .line 129
    .line 130
    if-eqz v1, :cond_a

    .line 131
    .line 132
    invoke-static {v1}, Lix0;->h(Lrb;)Lix0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v2, Lla;

    .line 137
    .line 138
    iget-object v3, p0, Lso8;->a:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v3, Landroid/content/Context;

    .line 141
    .line 142
    iget-object v6, p0, Lso8;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v6, Ljava/lang/String;

    .line 145
    .line 146
    iget-object v7, p0, Lso8;->c:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v7, Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    if-eqz v6, :cond_9

    .line 154
    .line 155
    iput-object v6, v2, Lla;->b:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-nez v7, :cond_5

    .line 162
    .line 163
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iput-object v3, v2, Lla;->a:Ljava/lang/Object;

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_5
    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iput-object v3, v2, Lla;->a:Ljava/lang/Object;

    .line 183
    .line 184
    :goto_5
    iget-object v3, p0, Lso8;->e:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v3, Lxr9;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    :try_start_5
    new-array v4, v4, [B

    .line 191
    .line 192
    invoke-virtual {v1, v2, v3, v4}, Lix0;->r(Lla;Lxr9;[B)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catch_1
    move-exception v1

    .line 197
    goto :goto_8

    .line 198
    :cond_6
    invoke-virtual {v1}, Lix0;->x()Luz9;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Lla;->m(Luz9;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 203
    .line 204
    .line 205
    :goto_6
    :try_start_6
    new-instance v2, Lln5;

    .line 206
    .line 207
    invoke-virtual {v1}, Lix0;->x()Luz9;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const/4 v3, 0x5

    .line 212
    invoke-virtual {v1, v3}, Luz9;->d(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lj79;

    .line 217
    .line 218
    iget-object v4, v3, Lj79;->a:Lk79;

    .line 219
    .line 220
    invoke-virtual {v4, v1}, Lk79;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_7

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_7
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 228
    .line 229
    invoke-virtual {v4}, Lk79;->s()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_8

    .line 234
    .line 235
    invoke-virtual {v3}, Lj79;->d()V

    .line 236
    .line 237
    .line 238
    :cond_8
    iget-object v4, v3, Lj79;->b:Lk79;

    .line 239
    .line 240
    invoke-static {v4, v1}, Lj79;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :goto_7
    check-cast v3, Ltz9;

    .line 244
    .line 245
    const/16 v1, 0x11

    .line 246
    .line 247
    invoke-direct {v2, v3, v1}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 248
    .line 249
    .line 250
    iput-object v2, p0, Lso8;->n:Ljava/lang/Object;

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :goto_8
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 254
    .line 255
    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw v2

    .line 259
    :cond_9
    const-string v1, "keysetName cannot be null"

    .line 260
    .line 261
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v5

    .line 265
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 266
    .line 267
    const-string v2, "cannot read or generate keyset"

    .line 268
    .line 269
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v1

    .line 273
    :cond_b
    if-eqz v2, :cond_c

    .line 274
    .line 275
    invoke-virtual {p0, v1}, Lso8;->c([B)Lln5;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, p0, Lso8;->n:Ljava/lang/Object;

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_c
    invoke-static {v1}, Lso8;->a([B)Lln5;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, p0, Lso8;->n:Ljava/lang/Object;

    .line 287
    .line 288
    :goto_9
    new-instance v1, Ltr9;

    .line 289
    .line 290
    invoke-direct {v1, p0}, Ltr9;-><init>(Lso8;)V

    .line 291
    .line 292
    .line 293
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 294
    monitor-exit p0

    .line 295
    return-object v1

    .line 296
    :goto_a
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 297
    :try_start_8
    throw v1

    .line 298
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 299
    .line 300
    const-string v1, "keysetName cannot be null"

    .line 301
    .line 302
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :goto_b
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 307
    throw v0
.end method

.method public c([B)Lln5;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lso8;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Ly13;->M(Ljava/lang/String;)Lxr9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lso8;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_1
    new-array v0, v0, [B

    .line 13
    .line 14
    new-instance v1, Ltr9;

    .line 15
    .line 16
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x16

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Ltr9;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lso8;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lxr9;

    .line 29
    .line 30
    invoke-static {v1, p0, v0}, Lix0;->i(Ltr9;Lxr9;[B)Lix0;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Lln5;

    .line 35
    .line 36
    invoke-virtual {p0}, Lix0;->x()Luz9;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v1, 0x5

    .line 41
    invoke-virtual {p0, v1}, Luz9;->d(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lj79;

    .line 46
    .line 47
    iget-object v2, v1, Lj79;->a:Lk79;

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Lk79;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 57
    .line 58
    invoke-virtual {v2}, Lk79;->s()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1}, Lj79;->d()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v2, v1, Lj79;->b:Lk79;

    .line 68
    .line 69
    invoke-static {v2, p0}, Lj79;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    check-cast v1, Ltz9;

    .line 73
    .line 74
    const/16 p0, 0x11

    .line 75
    .line 76
    invoke-direct {v0, v1, p0}, Lln5;-><init>(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception p0

    .line 83
    :goto_1
    :try_start_2
    invoke-static {p1}, Lso8;->a([B)Lln5;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    return-object p0

    .line 88
    :catch_2
    throw p0

    .line 89
    :catch_3
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :catch_4
    move-exception p0

    .line 92
    :goto_2
    :try_start_3
    invoke-static {p1}, Lso8;->a([B)Lln5;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "tr9"

    .line 97
    .line 98
    const-string v1, "cannot use Android Keystore, it\'ll be disabled"

    .line 99
    .line 100
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :catch_5
    throw p0
.end method

.method public d()Lxr9;
    .locals 5

    .line 1
    const-string v0, "cannot use Android Keystore, it\'ll be disabled"

    .line 2
    .line 3
    const-string v1, "tr9"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lso8;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v3}, Ly13;->O(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    :try_start_1
    iget-object v4, p0, Lso8;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v4}, Ly13;->M(Ljava/lang/String;)Lxr9;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception v4

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v4

    .line 26
    :goto_0
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    .line 33
    .line 34
    iget-object p0, p0, Lso8;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "the master key "

    .line 39
    .line 40
    const-string v2, " exists but is unusable"

    .line 41
    .line 42
    invoke-static {v1, p0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :catch_2
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_3
    move-exception p0

    .line 53
    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    return-object v2
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lso8;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method
