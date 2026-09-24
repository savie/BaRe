.class public final Llp6;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lhp6;


# direct methods
.method public constructor <init>(Lhp6;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llp6;->a:Lhp6;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Llp6;

    .line 2
    .line 3
    iget-object p0, p0, Llp6;->a:Lhp6;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Llp6;-><init>(Lhp6;Ljv1;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Llp6;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Llp6;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Llp6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Llp6;->a:Lhp6;

    .line 5
    .line 6
    iget-boolean p0, p0, Lhp6;->a:Z

    .line 7
    .line 8
    if-eqz p0, :cond_5

    .line 9
    .line 10
    sget-object p0, Lmp6;->a:Lmp6;

    .line 11
    .line 12
    const-string p0, "nsenter -t 1 -m sh"

    .line 13
    .line 14
    filled-new-array {p0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    sget-object v1, Lmp6;->b:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v2, "Elevated service: Initializing"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Laq6;->c()Lz84;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "editor"

    .line 38
    .line 39
    const-string v6, "use_saf"

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    const/4 v5, 0x0

    .line 46
    const-string v2, "Elevated service: Started!"

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    if-eqz p0, :cond_0

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-interface {p0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lbs4;->b()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v7

    .line 72
    :cond_1
    const/4 v4, 0x4

    .line 73
    const/4 v5, 0x0

    .line 74
    const-string v2, "Elevated service: Failed!"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    invoke-interface {p0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lbs4;->b()V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lbs4;->c()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    sget-object p0, Lzn7;->q:Lyn7;

    .line 102
    .line 103
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-boolean v2, p1, Lzn7;->b:Z

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Lzn7;->m()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {p1}, Lzn7;->g()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p0, v7}, Lyn7;->h(Lzn7;)V

    .line 126
    .line 127
    .line 128
    const-string p0, "Current storage requires SAF access, restarting..."

    .line 129
    .line 130
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_0
    new-instance p0, Ljr7;

    .line 134
    .line 135
    const-string p1, "/data/adb/modules/"

    .line 136
    .line 137
    invoke-direct {p0, p1}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v7}, Ljr7;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_5

    .line 145
    .line 146
    array-length p1, p0

    .line 147
    if-nez p1, :cond_3

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    array-length p1, p0

    .line 151
    const/16 v2, 0x3f

    .line 152
    .line 153
    invoke-static {v2, v7, p0}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "Magisk modules on device ("

    .line 158
    .line 159
    const-string v4, "): "

    .line 160
    .line 161
    invoke-static {p1, v3, v4, v2}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const/4 v4, 0x4

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-boolean p1, Lg42;->a:Z

    .line 172
    .line 173
    const-string p1, "AQL5MUF310jr7yIxLBJgyFIoXbFgyUBzTizvUSWnBDz690YmCAnJOvYeDEeY+w4="

    .line 174
    .line 175
    invoke-static {p1}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p0, p1}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    sput-boolean p0, Lmp6;->k:Z

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v7

    .line 190
    :cond_5
    :goto_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->o()Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 195
    .line 196
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_6

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_6
    new-instance p1, Lmp1;

    .line 215
    .line 216
    invoke-direct {p1}, Lmp1;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/String;

    .line 250
    .line 251
    iget-object v2, p1, Lmp1;->a:Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_7
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    new-instance v0, Ly62;

    .line 262
    .line 263
    invoke-direct {v0, p1}, Ly62;-><init>(Lmp1;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKeys(Ly62;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 270
    .line 271
    return-object p0
.end method
