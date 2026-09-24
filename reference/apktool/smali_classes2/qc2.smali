.class public final Lqc2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lqc2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqc2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqc2;->a:Lqc2;

    .line 7
    .line 8
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "data_sync_fgs_timeout_override_active"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    const-string v1, "data_sync_fgs_timeout_override_original_exists"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    const-string v1, "data_sync_fgs_timeout_override_original_value"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    const-string v1, "data_sync_fgs_timeout_override_applied_at"

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v0, "prefs"

    .line 38
    .line 39
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    throw v0
.end method

.method public static b()Z
    .locals 3

    .line 1
    const-string v0, "data_sync_fgs_timeout_override_active"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    return v1
.end method

.method public static d(Ljava/lang/String;)Lly8;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const-string v0, "null"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :goto_1
    sget-object p0, Lpc2;->f:Lpc2;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    const/4 v0, 0x0

    .line 36
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    new-instance v0, Lnc2;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lnc2;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    new-instance v0, Loc2;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Loc2;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public static e(Z)Lms8;
    .locals 3

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    const-string v1, "device_config get activity_manager data_sync_fgs_timeout_duration"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lip6;->SU:Lip6;

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    new-instance v0, Llc2;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Llc2;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    sget-object p0, Lmc2;->d:Lmc2;

    .line 43
    .line 44
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lqc2;->a:Lqc2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Lqc2;->f(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Clearing stale override marker; current="

    .line 4
    .line 5
    const-string v2, "Cannot apply override: could not read current device_config value. reason="

    .line 6
    .line 7
    const-string v3, "Failed to verify dataSync FGS timeout override. result="

    .line 8
    .line 9
    const-string v4, "Applied dataSync FGS timeout override to 86400000ms. reason="

    .line 10
    .line 11
    const-string v5, "Cannot apply override: current value is invalid. reason="

    .line 12
    .line 13
    const-string v6, "Override already active. reason="

    .line 14
    .line 15
    const-string v7, "Cannot apply override: root unavailable. reason="

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-static {}, Lb67;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_10

    .line 23
    .line 24
    invoke-static {}, Lb67;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_10

    .line 29
    .line 30
    const-string v8, "extend_data_sync_fgs_timeout_for_schedules"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    :try_start_1
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    if-eqz v11, :cond_0

    .line 37
    .line 38
    invoke-interface {v11, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v8, "prefs"

    .line 44
    .line 45
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v9
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catch_0
    move v8, v10

    .line 50
    :goto_0
    if-eqz v8, :cond_10

    .line 51
    .line 52
    :try_start_2
    sget-object v8, Lmp6;->a:Lmp6;

    .line 53
    .line 54
    sget-boolean v11, Lmp6;->g:Z

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    if-nez v11, :cond_2

    .line 58
    .line 59
    invoke-static {v8, v10, v10, v12}, Lmp6;->d(Lmp6;ZZI)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v8, v10

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    move v8, v12

    .line 69
    :goto_2
    if-nez v8, :cond_3

    .line 70
    .line 71
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    const-string v14, "DataSyncFgsTimeoutOverride"

    .line 74
    .line 75
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    const/16 v17, 0x4

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    invoke-static/range {v13 .. v18}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_3
    :try_start_3
    invoke-static {v10}, Lqc2;->e(Z)Lms8;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    instance-of v8, v7, Llc2;

    .line 98
    .line 99
    if-eqz v8, :cond_e

    .line 100
    .line 101
    check-cast v7, Llc2;

    .line 102
    .line 103
    iget-object v2, v7, Llc2;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {}, Lqc2;->b()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    invoke-static {v2}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v8, Loc2;

    .line 116
    .line 117
    const-string v11, "86400000"

    .line 118
    .line 119
    invoke-direct {v8, v11}, Loc2;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 129
    .line 130
    const-string v14, "DataSyncFgsTimeoutOverride"

    .line 131
    .line 132
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    const/16 v17, 0x4

    .line 137
    .line 138
    const/16 v18, 0x0

    .line 139
    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :cond_4
    :try_start_4
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 148
    .line 149
    const-string v14, "DataSyncFgsTimeoutOverride"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    const/16 v17, 0x4

    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    invoke-static/range {v13 .. v18}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lqc2;->a()V

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-static {v2}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    instance-of v2, v1, Lnc2;

    .line 172
    .line 173
    if-eqz v2, :cond_6

    .line 174
    .line 175
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 176
    .line 177
    const-string v14, "DataSyncFgsTimeoutOverride"

    .line 178
    .line 179
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    const/16 v17, 0x4

    .line 184
    .line 185
    const/16 v18, 0x0

    .line 186
    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    invoke-static/range {v13 .. v18}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    .line 191
    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 194
    :cond_6
    :try_start_5
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    if-eqz v2, :cond_d

    .line 197
    .line 198
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v5, "data_sync_fgs_timeout_override_original_exists"

    .line 206
    .line 207
    instance-of v6, v1, Loc2;

    .line 208
    .line 209
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    const-string v5, "data_sync_fgs_timeout_override_original_value"

    .line 213
    .line 214
    if-eqz v6, :cond_7

    .line 215
    .line 216
    check-cast v1, Loc2;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    move-object v1, v9

    .line 220
    :goto_3
    if-eqz v1, :cond_8

    .line 221
    .line 222
    iget-object v9, v1, Loc2;->f:Ljava/lang/String;

    .line 223
    .line 224
    :cond_8
    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    const-string v1, "data_sync_fgs_timeout_override_applied_at"

    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v5

    .line 233
    invoke-interface {v2, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    const-string v1, "data_sync_fgs_timeout_override_active"

    .line 237
    .line 238
    invoke-interface {v2, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    .line 241
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    .line 243
    .line 244
    const-string v1, "device_config put activity_manager data_sync_fgs_timeout_duration 86400000"

    .line 245
    .line 246
    filled-new-array {v1}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    invoke-static {v10}, Lqc2;->e(Z)Lms8;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    instance-of v2, v1, Llc2;

    .line 258
    .line 259
    if-eqz v2, :cond_9

    .line 260
    .line 261
    move-object v2, v1

    .line 262
    check-cast v2, Llc2;

    .line 263
    .line 264
    iget-object v2, v2, Llc2;->d:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v2}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    new-instance v5, Loc2;

    .line 271
    .line 272
    const-string v6, "86400000"

    .line 273
    .line 274
    invoke-direct {v5, v6}, Loc2;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    goto :goto_4

    .line 282
    :cond_9
    sget-object v2, Lmc2;->d:Lmc2;

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_c

    .line 289
    .line 290
    :goto_4
    if-eqz v10, :cond_a

    .line 291
    .line 292
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 293
    .line 294
    const-string v12, "DataSyncFgsTimeoutOverride"

    .line 295
    .line 296
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    const/4 v15, 0x4

    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    const/4 v14, 0x0

    .line 304
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_a
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 309
    .line 310
    const-string v4, "DataSyncFgsTimeoutOverride"

    .line 311
    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v3, ", reason="

    .line 321
    .line 322
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const/4 v6, 0x4

    .line 333
    const/4 v7, 0x0

    .line 334
    const/4 v5, 0x0

    .line 335
    move-object v3, v4

    .line 336
    move-object v4, v0

    .line 337
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    sget-object v0, Lmc2;->d:Lmc2;

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_b

    .line 347
    .line 348
    invoke-static {}, Lqc2;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    .line 350
    .line 351
    :cond_b
    :goto_5
    monitor-exit p0

    .line 352
    return-void

    .line 353
    :cond_c
    :try_start_6
    new-instance v0, Lmn5;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_d
    const-string v0, "prefs"

    .line 360
    .line 361
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v9

    .line 365
    :cond_e
    sget-object v1, Lmc2;->d:Lmc2;

    .line 366
    .line 367
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_f

    .line 372
    .line 373
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 374
    .line 375
    const-string v4, "DataSyncFgsTimeoutOverride"

    .line 376
    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    const/4 v7, 0x4

    .line 382
    const/4 v8, 0x0

    .line 383
    const/4 v6, 0x0

    .line 384
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    .line 386
    .line 387
    monitor-exit p0

    .line 388
    return-void

    .line 389
    :cond_f
    :try_start_7
    new-instance v0, Lmn5;

    .line 390
    .line 391
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 392
    .line 393
    .line 394
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 395
    :cond_10
    monitor-exit p0

    .line 396
    return-void

    .line 397
    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 398
    throw v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "Cannot restore override: could not read current device_config value. reason="

    .line 6
    .line 7
    const-string v3, "Restored dataSync FGS timeout override. reason="

    .line 8
    .line 9
    const-string v4, "Failed to restore dataSync FGS timeout override. current="

    .line 10
    .line 11
    const-string v5, "Not restoring override; value changed externally to "

    .line 12
    .line 13
    const-string v6, "Cannot restore override yet: root unavailable. reason="

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    invoke-static {}, Lqc2;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_1
    sget-object v7, Lmp6;->a:Lmp6;

    .line 25
    .line 26
    sget-boolean v8, Lmp6;->g:Z

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    if-nez v8, :cond_2

    .line 31
    .line 32
    invoke-static {v7, v9, v1, v10}, Lmp6;->d(Lmp6;ZZI)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v10, v9

    .line 40
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    .line 41
    .line 42
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 43
    .line 44
    const-string v12, "DataSyncFgsTimeoutOverride"

    .line 45
    .line 46
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const/4 v15, 0x4

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/4 v14, 0x0

    .line 54
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    :try_start_2
    invoke-static {v1}, Lqc2;->e(Z)Lms8;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    instance-of v7, v6, Llc2;

    .line 67
    .line 68
    if-eqz v7, :cond_e

    .line 69
    .line 70
    check-cast v6, Llc2;

    .line 71
    .line 72
    iget-object v2, v6, Llc2;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v2}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v7, Loc2;

    .line 79
    .line 80
    const-string v8, "86400000"

    .line 81
    .line 82
    invoke-direct {v7, v8}, Loc2;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_4

    .line 90
    .line 91
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 92
    .line 93
    const-string v11, "DataSyncFgsTimeoutOverride"

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ". reason="

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    const/4 v14, 0x4

    .line 116
    const/4 v15, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    invoke-static/range {v10 .. v15}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lqc2;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :cond_4
    :try_start_3
    const-string v2, "prefs"

    .line 127
    .line 128
    const-string v5, "data_sync_fgs_timeout_override_original_exists"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    :try_start_4
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    if-eqz v7, :cond_5

    .line 134
    .line 135
    invoke-interface {v7, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v6
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    :catch_0
    move v5, v9

    .line 145
    :goto_1
    if-eqz v5, :cond_7

    .line 146
    .line 147
    :try_start_5
    const-string v5, "data_sync_fgs_timeout_override_original_value"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    .line 149
    :try_start_6
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 150
    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v6
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    :catch_1
    :goto_2
    :try_start_7
    invoke-static {v6}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    sget-object v2, Lpc2;->f:Lpc2;

    .line 168
    .line 169
    :goto_3
    sget-object v5, Lmp6;->a:Lmp6;

    .line 170
    .line 171
    const-string v6, "device_config delete activity_manager data_sync_fgs_timeout_duration"

    .line 172
    .line 173
    sget-object v7, Lpc2;->f:Lpc2;

    .line 174
    .line 175
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    instance-of v8, v2, Loc2;

    .line 183
    .line 184
    if-eqz v8, :cond_9

    .line 185
    .line 186
    move-object v6, v2

    .line 187
    check-cast v6, Loc2;

    .line 188
    .line 189
    iget-object v6, v6, Loc2;->f:Ljava/lang/String;

    .line 190
    .line 191
    const-string v8, "device_config put activity_manager data_sync_fgs_timeout_duration "

    .line 192
    .line 193
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    goto :goto_4

    .line 198
    :cond_9
    instance-of v8, v2, Lnc2;

    .line 199
    .line 200
    if-eqz v8, :cond_d

    .line 201
    .line 202
    :goto_4
    filled-new-array {v6}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v5, v1, v6}, Lmp6;->k(Lmp6;Z[Ljava/lang/String;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Lqc2;->e(Z)Lms8;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    instance-of v5, v1, Llc2;

    .line 214
    .line 215
    if-nez v5, :cond_a

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_a
    instance-of v5, v2, Lnc2;

    .line 219
    .line 220
    if-eqz v5, :cond_b

    .line 221
    .line 222
    move-object v2, v7

    .line 223
    :cond_b
    move-object v5, v1

    .line 224
    check-cast v5, Llc2;

    .line 225
    .line 226
    iget-object v5, v5, Llc2;->d:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v5}, Lqc2;->d(Ljava/lang/String;)Lly8;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    :goto_5
    if-nez v9, :cond_c

    .line 237
    .line 238
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 239
    .line 240
    const-string v11, "DataSyncFgsTimeoutOverride"

    .line 241
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", reason="

    .line 251
    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    const/4 v14, 0x4

    .line 263
    const/4 v15, 0x0

    .line 264
    const/4 v13, 0x0

    .line 265
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 266
    .line 267
    .line 268
    monitor-exit p0

    .line 269
    return-void

    .line 270
    :cond_c
    :try_start_8
    invoke-static {}, Lqc2;->a()V

    .line 271
    .line 272
    .line 273
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 274
    .line 275
    const-string v2, "DataSyncFgsTimeoutOverride"

    .line 276
    .line 277
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    const/4 v5, 0x4

    .line 282
    const/4 v6, 0x0

    .line 283
    const/4 v4, 0x0

    .line 284
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 285
    .line 286
    .line 287
    monitor-exit p0

    .line 288
    return-void

    .line 289
    :cond_d
    :try_start_9
    new-instance v0, Lmn5;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_e
    sget-object v1, Lmc2;->d:Lmc2;

    .line 296
    .line 297
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_f

    .line 302
    .line 303
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 304
    .line 305
    const-string v4, "DataSyncFgsTimeoutOverride"

    .line 306
    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    const/4 v7, 0x4

    .line 312
    const/4 v8, 0x0

    .line 313
    const/4 v6, 0x0

    .line 314
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 315
    .line 316
    .line 317
    monitor-exit p0

    .line 318
    return-void

    .line 319
    :cond_f
    :try_start_a
    new-instance v0, Lmn5;

    .line 320
    .line 321
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 326
    throw v0
.end method

.method public final declared-synchronized h(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, "Cannot restore override yet: root not initialized. reason="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lqc2;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    sget-boolean v1, Lmp6;->g:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const-string v3, "DataSyncFgsTimeoutOverride"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lqc2;->f(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    throw p1
.end method
