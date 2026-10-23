.class public final Lby3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lov;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lby3;->a:Lgv7;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Lyn8;)Ljava/io/InputStream;
    .locals 6

    .line 1
    iget-object v0, p0, Lyn8;->a:Lq63;

    .line 2
    .line 3
    iget-object v1, p0, Lyn8;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq63;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-wide v2, p0, Lyn8;->c:J

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v4, v2, v4

    .line 16
    .line 17
    if-lez v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lq63;->A()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "Downloading wall from cloud at "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "GlideCloudWallDecoder"

    .line 42
    .line 43
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    new-instance v4, Lfo8;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-direct {v4, v5}, Lfo8;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v4, p0}, Lfo8;->b(Lfo8;Ljava/util/List;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    :cond_1
    const/4 p0, 0x1

    .line 66
    invoke-virtual {v0, p0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    const-string p0, "Error while downloading "

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v2

    .line 84
    :cond_3
    const-string p0, "GlideCloudWallDecoder: Can\'t fetch wallpaper for null drive id!"

    .line 85
    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 0

    .line 1
    check-cast p1, Lzx3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 9

    .line 1
    check-cast p1, Lzx3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p2, "decode: data="

    .line 9
    .line 10
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p2, "GlideCloudWallDecoder"

    .line 21
    .line 22
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string p0, "Thumbnail fetching not implemented for "

    .line 26
    .line 27
    iget-object p2, p1, Lzx3;->a:Lyn8;

    .line 28
    .line 29
    iget-boolean p3, p2, Lyn8;->n:Z

    .line 30
    .line 31
    sget-object p4, Lby3;->a:Lgv7;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_0
    const/4 p3, 0x0

    .line 44
    :try_start_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 45
    .line 46
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v1, v0, Lkh0;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance p0, Llx;

    .line 55
    .line 56
    check-cast v0, Lkh0;

    .line 57
    .line 58
    const/4 p2, 0x7

    .line 59
    invoke-direct {p0, p2, p1, v0}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lhx0;->m(Lbt3;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/io/InputStream;

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :catch_0
    move-exception v0

    .line 75
    move-object p0, v0

    .line 76
    move-object v3, p0

    .line 77
    move-object p0, p3

    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_1
    instance-of v1, v0, Lnq5;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    new-instance p0, Lrm;

    .line 85
    .line 86
    check-cast v0, Lnq5;

    .line 87
    .line 88
    const/16 p2, 0xa

    .line 89
    .line 90
    invoke-direct {p0, p2, v0, p1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Lhx0;->m(Lbt3;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/io/InputStream;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    instance-of v1, v0, Lb82;

    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    new-instance p0, Lg52;

    .line 105
    .line 106
    check-cast v0, Lb82;

    .line 107
    .line 108
    const/4 p2, 0x6

    .line 109
    invoke-direct {p0, p2, v0, p1}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Lhx0;->m(Lbt3;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Ljava/io/InputStream;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    instance-of p1, v0, Lx95;

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-static {p2}, Lby3;->c(Lyn8;)Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    instance-of p1, v0, Lv52;

    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    check-cast v0, Lv52;

    .line 133
    .line 134
    invoke-virtual {v0}, Lv52;->o()Ljh1;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    instance-of p1, p0, Ljy8;

    .line 139
    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    check-cast p0, Ljy8;

    .line 143
    .line 144
    new-instance v1, Ly63;

    .line 145
    .line 146
    sget-object v3, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 147
    .line 148
    const-class v4, Lorg/swiftapps/swiftbackup/common/Const;

    .line 149
    .line 150
    const-string v5, "sleepTemporarily"

    .line 151
    .line 152
    const-string v6, "sleepTemporarily(J)V"

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x2

    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-direct/range {v1 .. v8}, Ly63;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    :goto_0
    :try_start_1
    iget-object v0, p2, Lyn8;->e:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljy8;->w(Ljava/lang/String;)Lqk1;

    .line 167
    .line 168
    .line 169
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    const/16 v2, 0x32

    .line 173
    .line 174
    if-ge p1, v2, :cond_5

    .line 175
    .line 176
    const-wide/16 v2, 0x1388

    .line 177
    .line 178
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ly63;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    add-int/lit8 p1, p1, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    throw v0

    .line 189
    :cond_6
    invoke-static {p2}, Lby3;->c(Lyn8;)Ljava/io/InputStream;

    .line 190
    .line 191
    .line 192
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_1
    if-eqz p0, :cond_7

    .line 194
    .line 195
    :try_start_3
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    .line 197
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 198
    .line 199
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    .line 209
    .line 210
    move-object p3, p1

    .line 211
    goto :goto_2

    .line 212
    :catchall_1
    move-exception v0

    .line 213
    move-object p1, v0

    .line 214
    move-object p3, p0

    .line 215
    move-object p0, p1

    .line 216
    goto :goto_7

    .line 217
    :catch_2
    move-exception v0

    .line 218
    move-object p1, v0

    .line 219
    move-object v3, p1

    .line 220
    goto :goto_4

    .line 221
    :cond_7
    :goto_2
    if-eqz p0, :cond_9

    .line 222
    .line 223
    :goto_3
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    new-instance p1, Ljava/lang/RuntimeException;

    .line 240
    .line 241
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    :goto_4
    :try_start_5
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 246
    .line 247
    const-string v1, "GlideCloudWallDecoder"

    .line 248
    .line 249
    const-string v2, "decode"

    .line 250
    .line 251
    const/16 v5, 0x8

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v4, 0x0

    .line 255
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .line 257
    .line 258
    if-eqz p0, :cond_9

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_9
    :goto_5
    if-nez p3, :cond_a

    .line 262
    .line 263
    invoke-virtual {p4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_a
    move-object p0, p3

    .line 271
    :goto_6
    new-instance p1, Lay3;

    .line 272
    .line 273
    invoke-direct {p1, p0}, Lay3;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 274
    .line 275
    .line 276
    return-object p1

    .line 277
    :goto_7
    if-eqz p3, :cond_b

    .line 278
    .line 279
    invoke-static {p3}, Lf13;->a(Ljava/io/Closeable;)V

    .line 280
    .line 281
    .line 282
    :cond_b
    throw p0
.end method
