.class public Lxs8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldt8;


# instance fields
.field public a:Landroid/widget/Toast;


# virtual methods
.method public final a(Let8;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lxs8;->f(Let8;Z)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Ljava/util/List;Lcz;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v4, "restoreAll: "

    .line 30
    .line 31
    const-string v5, " items"

    .line 32
    .line 33
    invoke-static {v0, v4, v5}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lat8;->a:Lat8;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    const/16 v2, 0xa

    .line 51
    .line 52
    invoke-static {p1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move v3, v1

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x1

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    add-int/lit8 v6, v3, 0x1

    .line 76
    .line 77
    if-ltz v3, :cond_1

    .line 78
    .line 79
    check-cast v4, Let8;

    .line 80
    .line 81
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v4}, Let8;->getSSID()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const-string v10, "/"

    .line 96
    .line 97
    const-string v11, ": "

    .line 98
    .line 99
    const-string v12, "Restoring "

    .line 100
    .line 101
    invoke-static {v12, v6, v10, v11, v3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const/4 v11, 0x4

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lbt8;

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-direct {v3, v4, v6, v7}, Lbt8;-><init>(Let8;II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v3}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-ne v3, v5, :cond_0

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    move v5, v1

    .line 138
    :goto_1
    invoke-virtual {p0, v4, v5}, Lxs8;->f(Let8;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move v3, v6

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Lfl1;->F0()V

    .line 152
    .line 153
    .line 154
    const/4 p0, 0x0

    .line 155
    throw p0

    .line 156
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_4

    .line 161
    .line 162
    :cond_3
    move v1, v5

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_5

    .line 185
    .line 186
    :goto_2
    sget-object p0, Lzs8;->a:Lzs8;

    .line 187
    .line 188
    invoke-virtual {p2, p0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    return v1

    .line 192
    :cond_6
    invoke-static {}, Ld6;->o()V

    .line 193
    .line 194
    .line 195
    return v1
.end method

.method public final c()Z
    .locals 0

    .line 1
    sget-object p0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    invoke-static {}, Lmp6;->f()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RHelper"

    .line 2
    .line 3
    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final f(Let8;Z)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_8

    .line 15
    .line 16
    sget-object v0, Lmp6;->a:Lmp6;

    .line 17
    .line 18
    invoke-static {}, Lmp6;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p0, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    new-instance p0, Llt8;

    .line 39
    .line 40
    invoke-direct {p0, p1}, Llt8;-><init>(Let8;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lny2;->b()Lny2;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Lny2;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    if-eqz p2, :cond_2

    .line 56
    .line 57
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 58
    .line 59
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v4, "Connecting with "

    .line 68
    .line 69
    invoke-static {v4, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v6, 0x4

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-boolean p2, Lg42;->a:Z

    .line 80
    .line 81
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1}, Let8;->getProperPreSharedKey()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1}, Let8;->isOpenNetwork()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {p1}, Let8;->isHiddenSsid()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v5, "connect"

    .line 104
    .line 105
    invoke-static {v5, p2, v2, v3, v4}, Lg42;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 111
    .line 112
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-string v4, "Adding "

    .line 121
    .line 122
    invoke-static {v4, p2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const/4 v6, 0x4

    .line 127
    const/4 v7, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-boolean p2, Lg42;->a:Z

    .line 133
    .line 134
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1}, Let8;->getProperPreSharedKey()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1}, Let8;->isOpenNetwork()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {p1}, Let8;->isHiddenSsid()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const-string v5, "add"

    .line 157
    .line 158
    invoke-static {v5, p2, v2, v3, v4}, Lg42;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    :goto_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 167
    .line 168
    invoke-virtual {v0, p2, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 173
    .line 174
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const-string v0, "Output="

    .line 179
    .line 180
    invoke-static {v0, p2}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    const/4 v6, 0x4

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v5, 0x0

    .line 187
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Let8;->isHiddenSsid()Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    const/4 v0, 0x1

    .line 195
    if-eqz p2, :cond_7

    .line 196
    .line 197
    invoke-virtual {p0}, Lxs8;->e()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_7

    .line 202
    .line 203
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const/4 v6, 0x4

    .line 208
    const/4 v7, 0x0

    .line 209
    const-string v4, "Workaround for hidden WiFi"

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lb67;->c()Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_3

    .line 220
    .line 221
    const-string p2, "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_3
    const-string p2, "/data/misc/wifi/WifiConfigStore.xml"

    .line 225
    .line 226
    :goto_1
    new-instance v2, Lq63;

    .line 227
    .line 228
    const/4 v3, 0x4

    .line 229
    invoke-direct {v2, p2, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    new-instance p2, Lq63;

    .line 233
    .line 234
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 235
    .line 236
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    const-string v4, "wifi/system_config_file.xml"

    .line 245
    .line 246
    const/4 v5, 0x2

    .line 247
    invoke-direct {p2, v3, v4, v5}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Lq63;->j()Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_7

    .line 255
    .line 256
    invoke-virtual {v2}, Lq63;->a()Ljava/io/BufferedReader;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-static {p2}, Lrs9;->q(Ljava/io/BufferedReader;)Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    .line 265
    .line 266
    const/16 v4, 0xa

    .line 267
    .line 268
    invoke-static {p2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    move v5, v1

    .line 280
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_6

    .line 285
    .line 286
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    check-cast v6, Ljava/lang/String;

    .line 291
    .line 292
    const-string v7, "name=\"SSID\""

    .line 293
    .line 294
    invoke-static {v6, v7, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_4

    .line 299
    .line 300
    invoke-virtual {p1}, Let8;->getSSID()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    const-string v7, "\""

    .line 305
    .line 306
    const-string v8, ""

    .line 307
    .line 308
    invoke-static {v5, v7, v8}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v8, ">&quot;"

    .line 315
    .line 316
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v5, "&quot;<"

    .line 323
    .line 324
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-static {v6, v5, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    :cond_4
    if-eqz v5, :cond_5

    .line 336
    .line 337
    const-string v7, "name=\"HiddenSSID\""

    .line 338
    .line 339
    invoke-static {v6, v7, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_5

    .line 344
    .line 345
    const-string v7, "value=\"true\""

    .line 346
    .line 347
    invoke-static {v6, v7, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_5

    .line 352
    .line 353
    const-string v6, "<boolean name=\"HiddenSSID\" value=\"true\" />"

    .line 354
    .line 355
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-nez p1, :cond_7

    .line 364
    .line 365
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 366
    .line 367
    invoke-virtual {p0}, Lxs8;->d()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    const/4 v8, 0x4

    .line 372
    const/4 v9, 0x0

    .line 373
    const-string v6, "Committing attributes"

    .line 374
    .line 375
    const/4 v7, 0x0

    .line 376
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-static {v3, p1, p2}, Ln84;->f(Ljava/util/ArrayList;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .line 389
    .line 390
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 391
    .line 392
    .line 393
    sget-object p1, Lzn4;->a:Lzn4;

    .line 394
    .line 395
    new-instance p1, Lqb5;

    .line 396
    .line 397
    const/16 p2, 0xe

    .line 398
    .line 399
    invoke-direct {p1, p0, p2}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 400
    .line 401
    .line 402
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 403
    .line 404
    .line 405
    return v0

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    move-object p0, v0

    .line 408
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    :catchall_1
    move-exception v0

    .line 410
    move-object p2, v0

    .line 411
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    throw p2

    .line 415
    :cond_7
    return v0

    .line 416
    :cond_8
    invoke-static {}, Ld6;->o()V

    .line 417
    .line 418
    .line 419
    return v1
.end method
