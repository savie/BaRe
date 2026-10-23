.class public final synthetic Ldl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Ldl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkg4;)V
    .locals 0

    .line 1
    const/16 p1, 0xf

    .line 2
    .line 3
    iput p1, p0, Ldl;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Ldl;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "SettingsFragment: Restart app"

    .line 9
    .line 10
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    invoke-static {}, Ljv6;->a()Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_1
    const-string p0, "ro.miui.ui.version.name"

    .line 22
    .line 23
    const-string v0, "ro.miui.ui.version.code"

    .line 24
    .line 25
    const-string v1, "ro.mi.os.version.name"

    .line 26
    .line 27
    const-string v2, "ro.mi.os.version.code"

    .line 28
    .line 29
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lhs5;->a([Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_3
    sget-object p0, Lw14;->a:Lgv7;

    .line 46
    .line 47
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v0, Lt14;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lt14;-><init>(Lcom/google/gson/a;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lxq3;->e:Lxq3;

    .line 57
    .line 58
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iput-object p0, v0, Lt14;->i:Lxq3;

    .line 62
    .line 63
    new-instance p0, Lcom/google/gson/a;

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_4
    new-instance p0, Lq63;

    .line 70
    .line 71
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 72
    .line 73
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v2, "folders_latest_cloud_manifests"

    .line 82
    .line 83
    invoke-direct {p0, v0, v2, v1}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_6
    sget-boolean p0, Lg42;->a:Z

    .line 100
    .line 101
    const-string p0, "AQJ0ipfBfkYeGxWGWQt8l3wG6TrMxWpPxFMDSv/1PXriUvQYQJck/s3I4u0phIU7HKr+x4MUNTbmiRqluD27/Q=="

    .line 102
    .line 103
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :pswitch_7
    sget-boolean p0, Lg42;->a:Z

    .line 109
    .line 110
    const-string p0, "AQLIbciwpLNux+9SKMpx02HpWljE1YBwDhoLAwJnFXtcTSQF2gn0iWp8tyVwH10x09q7fk1H"

    .line 111
    .line 112
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_8
    sget-boolean p0, Lg42;->a:Z

    .line 118
    .line 119
    const-string p0, "AQKFps7RO/KVBpYibgg4nzfVntxVUWJj1lsCBQz0dGIAEu1yiHk/wgHjAxi8ckXuZZg/XU/oPQRsJVk9jsfX2Lx3WGFbvwXiJXTrNnDapc85vWLr2TkGiO3716M="

    .line 120
    .line 121
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_9
    const-string p0, "SwiftBackup_Root_Entity"

    .line 127
    .line 128
    new-instance v0, Lgx2;

    .line 129
    .line 130
    sget-object v1, Lgx2;->b:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p0, v0, Lgx2;->a:[B

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_a
    new-instance p0, Lq63;

    .line 143
    .line 144
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 145
    .line 146
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v2, "configs/cached_data"

    .line 155
    .line 156
    invoke-direct {p0, v0, v2, v1}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :pswitch_b
    new-instance p0, Lsl1;

    .line 161
    .line 162
    sget-object v0, Lsl1;->e:Lgv7;

    .line 163
    .line 164
    const v0, 0x7f030002

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lrl1;->a(I)Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lsl1;-><init>(Ljava/util/LinkedHashMap;)V

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_c
    const-string p0, "https://graph.microsoft.com/User.Read"

    .line 176
    .line 177
    const-string v0, "https://graph.microsoft.com/Files.ReadWrite"

    .line 178
    .line 179
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :pswitch_d
    invoke-static {}, Ldd1;->k()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :pswitch_e
    invoke-static {}, Lud5;->g()Lq63;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_f
    sget-object p0, Lzu0;->a:Lzu0;

    .line 195
    .line 196
    invoke-static {}, Lzu0;->f()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_1

    .line 201
    .line 202
    sget-object v1, Lzu0;->c:Ljava/lang/Object;

    .line 203
    .line 204
    monitor-enter v1

    .line 205
    :try_start_0
    invoke-static {}, Lzu0;->f()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_0

    .line 210
    .line 211
    invoke-virtual {p0}, Lzu0;->g()Lvj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    goto :goto_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit v1

    .line 218
    goto :goto_2

    .line 219
    :goto_1
    monitor-exit v1

    .line 220
    throw p0

    .line 221
    :cond_1
    :goto_2
    invoke-static {}, Lzu0;->d()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    if-eqz p0, :cond_2

    .line 226
    .line 227
    move-object v0, p0

    .line 228
    goto :goto_3

    .line 229
    :cond_2
    const-string p0, "Box is not connected"

    .line 230
    .line 231
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_3
    return-object v0

    .line 235
    :pswitch_10
    invoke-static {}, Llk;->w()Lg55;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :pswitch_11
    sget-object p0, Lmp6;->a:Lmp6;

    .line 241
    .line 242
    sget-boolean v1, Lg42;->a:Z

    .line 243
    .line 244
    sget-object v1, Lg42;->E:Lgv7;

    .line 245
    .line 246
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/String;

    .line 251
    .line 252
    const-string v2, "get"

    .line 253
    .line 254
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    const/4 v3, 0x1

    .line 259
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    filled-new-array {v1}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 272
    .line 273
    invoke-virtual {p0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    check-cast p0, Ljava/lang/String;

    .line 282
    .line 283
    if-eqz p0, :cond_3

    .line 284
    .line 285
    const-string v0, ":"

    .line 286
    .line 287
    filled-new-array {v0}, [Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/4 v1, 0x6

    .line 292
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :cond_3
    return-object v0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
