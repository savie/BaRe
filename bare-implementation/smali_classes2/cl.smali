.class public final synthetic Lcl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcl;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lcl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Lcl;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    invoke-static {}, Lre3;->b()Lzc2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "postDataRestoreActions"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    const-string p0, "opservice"

    .line 34
    .line 35
    invoke-static {p0}, Lde7;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_2
    return-object v2

    .line 45
    :pswitch_3
    sget-boolean p0, Lg42;->a:Z

    .line 46
    .line 47
    const-string p0, "AQJEeFprzfp86uixed1rvjwWgQAL+fnpzO1OPs+YLJU6HMd10rM+F9ES78PJ"

    .line 48
    .line 49
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_4
    sget-boolean p0, Lg42;->a:Z

    .line 55
    .line 56
    const-string p0, "AQK/pDOsS2Uv+p2YVLwGuRJ1iYbGVu6lHWypal3EcMDaMcWKVHKqYDuqG+tZSSvu5A=="

    .line 57
    .line 58
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_5
    sget-boolean p0, Lg42;->a:Z

    .line 64
    .line 65
    const-string p0, "AQLcutN2uJ5eM3jlGksWZ2D2MtTnZREZVP+RR9B+KctoM5TPK+dcjLbwKQ/+GORskSfWcr4w4DK/Q6Z9CSu/aw=="

    .line 66
    .line 67
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :pswitch_6
    new-instance p0, Lex6;

    .line 73
    .line 74
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_7
    new-instance p0, Lhj1;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "TLS"

    .line 87
    .line 88
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 93
    .line 94
    aput-object p0, v1, v0

    .line 95
    .line 96
    new-instance p0, Ljava/security/SecureRandom;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_8
    invoke-static {}, Ldd1;->f()Ltb1;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_9
    invoke-static {}, Ldd1;->d()Ltb1;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_a
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    .line 120
    .line 121
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :pswitch_b
    sget-object p0, Lh05;->b:Lh05;

    .line 131
    .line 132
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lh05;->c(Landroid/os/LocaleList;)Lh05;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p0, v0}, Lh05;->b(I)Ljava/util/Locale;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_0

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    move-object p0, v3

    .line 152
    :goto_0
    if-eqz p0, :cond_2

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    move-object v3, p0

    .line 162
    :cond_2
    :goto_1
    return-object v3

    .line 163
    :pswitch_c
    sget-object p0, Lmp6;->a:Lmp6;

    .line 164
    .line 165
    sget-boolean v0, Lg42;->a:Z

    .line 166
    .line 167
    sget-object v0, Lg42;->B:Lgv7;

    .line 168
    .line 169
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    const-string v2, "get"

    .line 176
    .line 177
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    filled-new-array {v0}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 194
    .line 195
    invoke-virtual {p0, v0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    check-cast p0, Ljava/lang/String;

    .line 204
    .line 205
    if-eqz p0, :cond_4

    .line 206
    .line 207
    const-string v0, ":"

    .line 208
    .line 209
    filled-new-array {v0}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const/4 v1, 0x6

    .line 214
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    const/16 v0, 0xa

    .line 219
    .line 220
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-static {v0}, Lx65;->q0(I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    const/16 v1, 0x10

    .line 229
    .line 230
    if-ge v0, v1, :cond_3

    .line 231
    .line 232
    move v0, v1

    .line 233
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_4

    .line 247
    .line 248
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Ljava/lang/String;

    .line 253
    .line 254
    const-string v1, "/"

    .line 255
    .line 256
    invoke-static {v0, v1, v0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_4
    if-eqz v3, :cond_6

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-eqz p0, :cond_5

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_5
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 274
    .line 275
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    const-string v0, "Map built with "

    .line 280
    .line 281
    const-string v1, " entries"

    .line 282
    .line 283
    invoke-static {p0, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    const/4 v8, 0x4

    .line 288
    const/4 v9, 0x0

    .line 289
    const-string v5, "NotificationAccessMap"

    .line 290
    .line 291
    const/4 v7, 0x0

    .line 292
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_6
    :goto_3
    new-instance p0, Lyo5;

    .line 296
    .line 297
    invoke-direct {p0, v3}, Lyo5;-><init>(Ljava/util/LinkedHashMap;)V

    .line 298
    .line 299
    .line 300
    return-object p0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
