.class public final Lvs8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldt8;


# instance fields
.field public final a:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lvs8;->a:Landroid/net/wifi/WifiManager;

    .line 8
    .line 9
    return-void
.end method

.method public static d(Let8;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Let8;->getSSID()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0}, Let8;->isOpenNetwork()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Let8;->getProperPreSharedKey()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "\""

    .line 23
    .line 24
    invoke-static {v2, v1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Let8;->getHiddenSSID()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Let8;->getAllowedGroupCiphers()Ljava/util/BitSet;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Let8;->getAllowedPairwiseCiphers()Ljava/util/BitSet;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Let8;->getAllowedKeyManagement()Ljava/util/BitSet;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 65
    .line 66
    :cond_4
    invoke-virtual {p0}, Let8;->getAllowedProtocols()Ljava/util/BitSet;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 73
    .line 74
    :cond_5
    invoke-virtual {p0}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->hasValidEnterpriseDetails()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 91
    .line 92
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final a(Let8;)V
    .locals 6

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
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Lvs8;->d(Let8;)Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lvs8;->a:Landroid/net/wifi/WifiManager;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, -0x1

    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "Error: "

    .line 42
    .line 43
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v4, 0x4

    .line 48
    const/4 v5, 0x0

    .line 49
    const-string v1, "LegacyHelper"

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 56
    .line 57
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const p1, 0x7f130581

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v0, Lzn4;->a:Lzn4;

    .line 72
    .line 73
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b(Ljava/util/List;Lcz;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_a

    .line 19
    .line 20
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v4, "restoreAll: "

    .line 27
    .line 28
    const-string v5, " items"

    .line 29
    .line 30
    invoke-static {v1, v4, v5}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v7, 0x4

    .line 35
    const/4 v8, 0x0

    .line 36
    const-string v4, "LegacyHelper"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lat8;->a:Lat8;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    const/16 v3, 0xa

    .line 50
    .line 51
    move-object/from16 v4, p1

    .line 52
    .line 53
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v5, 0x0

    .line 65
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v7, 0x1

    .line 70
    if-eqz v6, :cond_6

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    add-int/lit8 v8, v5, 0x1

    .line 77
    .line 78
    if-ltz v5, :cond_5

    .line 79
    .line 80
    check-cast v6, Let8;

    .line 81
    .line 82
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v6}, Let8;->getSSID()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    const-string v11, "/"

    .line 93
    .line 94
    const-string v12, ": "

    .line 95
    .line 96
    const-string v13, "Restoring "

    .line 97
    .line 98
    invoke-static {v13, v8, v11, v12, v5}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    const/4 v13, 0x4

    .line 110
    const/4 v14, 0x0

    .line 111
    const-string v10, "LegacyHelper"

    .line 112
    .line 113
    const/4 v12, 0x0

    .line 114
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance v5, Lbt8;

    .line 118
    .line 119
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-direct {v5, v6, v8, v10}, Lbt8;-><init>(Let8;II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-ne v5, v7, :cond_0

    .line 134
    .line 135
    move v5, v7

    .line 136
    goto :goto_1

    .line 137
    :cond_0
    const/4 v5, 0x0

    .line 138
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-nez v10, :cond_4

    .line 151
    .line 152
    move-object/from16 v15, p0

    .line 153
    .line 154
    iget-object v10, v15, Lvs8;->a:Landroid/net/wifi/WifiManager;

    .line 155
    .line 156
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-nez v11, :cond_1

    .line 161
    .line 162
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    const-string v12, "Enabled wifi="

    .line 167
    .line 168
    invoke-static {v12, v11}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    const/4 v13, 0x4

    .line 173
    const/4 v14, 0x0

    .line 174
    move-object v12, v10

    .line 175
    const-string v10, "LegacyHelper"

    .line 176
    .line 177
    move-object/from16 v16, v12

    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    move-object/from16 v2, v16

    .line 181
    .line 182
    const/16 v17, 0x0

    .line 183
    .line 184
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_1
    move-object v2, v10

    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    :goto_2
    invoke-static {v6}, Lvs8;->d(Let8;)Landroid/net/wifi/WifiConfiguration;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    const-string v10, "Added network id="

    .line 200
    .line 201
    invoke-static {v6, v10}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    const/4 v13, 0x4

    .line 206
    const/4 v14, 0x0

    .line 207
    const-string v10, "LegacyHelper"

    .line 208
    .line 209
    const/4 v12, 0x0

    .line 210
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    if-eqz v5, :cond_2

    .line 214
    .line 215
    invoke-virtual {v2, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    const-string v5, "Enabled network="

    .line 220
    .line 221
    invoke-static {v5, v2}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const/4 v13, 0x4

    .line 226
    const/4 v14, 0x0

    .line 227
    const-string v10, "LegacyHelper"

    .line 228
    .line 229
    const/4 v12, 0x0

    .line 230
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_2
    const/4 v2, -0x1

    .line 234
    if-eq v6, v2, :cond_3

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    move/from16 v7, v17

    .line 238
    .line 239
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move v5, v8

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_4
    const/16 v17, 0x0

    .line 250
    .line 251
    invoke-static {}, Ld6;->o()V

    .line 252
    .line 253
    .line 254
    return v17

    .line 255
    :cond_5
    invoke-static {}, Lfl1;->F0()V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x0

    .line 259
    throw v0

    .line 260
    :cond_6
    const/16 v17, 0x0

    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_8

    .line 267
    .line 268
    :cond_7
    move v2, v7

    .line 269
    goto :goto_4

    .line 270
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_7

    .line 279
    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_9

    .line 291
    .line 292
    move/from16 v2, v17

    .line 293
    .line 294
    :goto_4
    sget-object v1, Lzs8;->a:Lzs8;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    return v2

    .line 300
    :cond_a
    const/16 v17, 0x0

    .line 301
    .line 302
    invoke-static {}, Ld6;->o()V

    .line 303
    .line 304
    .line 305
    return v17
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
