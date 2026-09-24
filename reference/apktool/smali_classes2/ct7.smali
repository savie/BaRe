.class public final Lct7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ltn2;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Ltn2;Lorg/swiftapps/swiftbackup/settings/SettingsActivity;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lct7;->a:Ltn2;

    .line 2
    .line 3
    iput-object p2, p0, Lct7;->b:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lct7;

    .line 2
    .line 3
    iget-object v0, p0, Lct7;->a:Ltn2;

    .line 4
    .line 5
    iget-object p0, p0, Lct7;->b:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lct7;-><init>(Ltn2;Lorg/swiftapps/swiftbackup/settings/SettingsActivity;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lct7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lct7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lct7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lct7;->a:Ltn2;

    .line 2
    .line 3
    iget-object p0, p0, Lct7;->b:Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 4
    .line 5
    const-string v1, "Importing settings from "

    .line 6
    .line 7
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 11
    .line 12
    const-string v3, "SwiftBackupSettingsHelper"

    .line 13
    .line 14
    invoke-virtual {v0}, Ltn2;->e()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v1, 0x7f130497

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lqo0;->h(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0}, Ltn2;->e()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    sget v1, Ln84;->a:I

    .line 65
    .line 66
    new-instance v1, Laq7;

    .line 67
    .line 68
    invoke-direct {v1}, Laq7;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/io/InputStreamReader;

    .line 72
    .line 73
    sget v3, Lg51;->a:I

    .line 74
    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_0
    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lm84;->b:Ljava/lang/ThreadLocal;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, [Ljava/lang/Object;

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    aget-object v5, v3, v4

    .line 94
    .line 95
    check-cast v5, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    new-instance v3, Lm84;

    .line 104
    .line 105
    const/16 v5, 0x2000

    .line 106
    .line 107
    new-array v5, v5, [C

    .line 108
    .line 109
    invoke-direct {v3, v5}, Lm84;-><init>([C)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 114
    .line 115
    aput-object v5, v3, v4

    .line 116
    .line 117
    sget-object v3, Lm84;->c:Lm84;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 118
    .line 119
    :goto_0
    :try_start_2
    iget-object v5, v3, Lm84;->a:[C

    .line 120
    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, [Ljava/lang/Object;

    .line 129
    .line 130
    const/4 v5, 0x1

    .line 131
    aget-object v0, v0, v5

    .line 132
    .line 133
    move-object v5, v0

    .line 134
    check-cast v5, [C

    .line 135
    .line 136
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/Reader;->read([C)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v6, -0x1

    .line 141
    if-eq v6, v0, :cond_3

    .line 142
    .line 143
    invoke-virtual {v1, v5, v4, v0}, Laq7;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_3

    .line 149
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lm84;->close()V

    .line 150
    .line 151
    .line 152
    iget-object v0, v1, Laq7;->a:Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    const/4 v1, 0x0

    .line 159
    :try_start_4
    invoke-static {p1, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    sget-object p1, Lw14;->a:Lgv7;

    .line 163
    .line 164
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-class v1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;

    .line 175
    .line 176
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/SwiftBackupSettingsHelper$SettingsData;->restore()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    .line 178
    .line 179
    :goto_2
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lqo0;->f()V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    move-object p1, v0

    .line 189
    goto :goto_9

    .line 190
    :catch_0
    move-exception v0

    .line 191
    move-object p1, v0

    .line 192
    move-object v3, p1

    .line 193
    goto :goto_7

    .line 194
    :goto_3
    move-object v1, v0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    .line 197
    :try_start_5
    invoke-virtual {v3}, Lm84;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    :cond_4
    :goto_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 206
    :goto_5
    move-object v1, v0

    .line 207
    goto :goto_6

    .line 208
    :catchall_3
    move-exception v0

    .line 209
    goto :goto_5

    .line 210
    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 211
    :catchall_4
    move-exception v0

    .line 212
    :try_start_8
    invoke-static {p1, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 216
    :goto_7
    :try_start_9
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 217
    .line 218
    const-string v1, "SwiftBackupSettingsHelper"

    .line 219
    .line 220
    const-string v2, "importSettings"

    .line 221
    .line 222
    const/16 v5, 0x8

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const v0, 0x7f130222

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    sget-object v1, Lzn4;->a:Lzn4;

    .line 247
    .line 248
    new-instance v1, Lcv;

    .line 249
    .line 250
    const/16 v2, 0xe

    .line 251
    .line 252
    invoke-direct {v1, v2, p1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Lzn4;->e(Lbt3;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :goto_8
    sget-object p0, Lbe8;->a:Lbe8;

    .line 260
    .line 261
    return-object p0

    .line 262
    :goto_9
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Lqo0;->f()V

    .line 267
    .line 268
    .line 269
    throw p1
.end method
