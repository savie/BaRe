.class public abstract Leq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z
    .locals 9

    .line 1
    iget-object v3, p3, Lpg;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v4, p3, Lpg;->b:J

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v7

    .line 13
    cmp-long v7, p0, v7

    .line 14
    .line 15
    if-eqz v7, :cond_1

    .line 16
    .line 17
    :goto_0
    const-string v2, "APK size changed"

    .line 18
    .line 19
    invoke-static {p2}, Lio4;->h(Ljava/lang/Long;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4, p0, p1, v2}, Leq;->d(JJLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v6

    .line 27
    :cond_1
    invoke-virtual {p4}, Lrg;->c()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    cmp-long v0, v4, v0

    .line 32
    .line 33
    const-string v1, ", Current: "

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    invoke-virtual {p4}, Lrg;->c()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-string v7, "APK version code changed: Backup: "

    .line 44
    .line 45
    invoke-static {v7, v1, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x4

    .line 57
    const/4 v3, 0x0

    .line 58
    const-string v4, "AppDataChangeChecker"

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    move-object p0, v0

    .line 62
    move-object p2, v1

    .line 63
    move p4, v2

    .line 64
    move-object p5, v3

    .line 65
    move-object p1, v4

    .line 66
    move-object p3, v5

    .line 67
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return v6

    .line 71
    :cond_2
    invoke-virtual {p4}, Lrg;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    invoke-virtual {p4}, Lrg;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v4, "APK version name changed: Backup: "

    .line 88
    .line 89
    invoke-static {v4, v2, v1, v3}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x4

    .line 94
    const/4 v3, 0x0

    .line 95
    const-string v4, "AppDataChangeChecker"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    move-object p0, v0

    .line 99
    move-object p2, v1

    .line 100
    move p4, v2

    .line 101
    move-object p5, v3

    .line 102
    move-object p1, v4

    .line 103
    move-object p3, v5

    .line 104
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return v6

    .line 108
    :cond_3
    invoke-virtual {p4}, Lrg;->b()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v1, 0x0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    if-eqz p5, :cond_4

    .line 116
    .line 117
    move v0, v6

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move v0, v1

    .line 120
    :goto_1
    iget-boolean v3, p3, Lpg;->c:Z

    .line 121
    .line 122
    if-eq v3, v0, :cond_5

    .line 123
    .line 124
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 125
    .line 126
    const/4 v1, 0x4

    .line 127
    const/4 v2, 0x0

    .line 128
    const-string v3, "AppDataChangeChecker"

    .line 129
    .line 130
    const-string v4, "Split APKs changed"

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    move-object p0, v0

    .line 134
    move p4, v1

    .line 135
    move-object p5, v2

    .line 136
    move-object p1, v3

    .line 137
    move-object p2, v4

    .line 138
    move-object p3, v5

    .line 139
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return v6

    .line 143
    :cond_5
    invoke-virtual {p4}, Lrg;->a()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    if-eqz p6, :cond_6

    .line 150
    .line 151
    move v0, v6

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    move v0, v1

    .line 154
    :goto_2
    iget-boolean v2, p3, Lpg;->d:Z

    .line 155
    .line 156
    if-eq v2, v0, :cond_7

    .line 157
    .line 158
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 159
    .line 160
    const/4 v1, 0x4

    .line 161
    const/4 v2, 0x0

    .line 162
    const-string v3, "AppDataChangeChecker"

    .line 163
    .line 164
    const-string v4, "Shared Libs changed"

    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    move-object p0, v0

    .line 168
    move p4, v1

    .line 169
    move-object p5, v2

    .line 170
    move-object p1, v3

    .line 171
    move-object p2, v4

    .line 172
    move-object p3, v5

    .line 173
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return v6

    .line 177
    :cond_7
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    const/4 v3, 0x0

    .line 181
    const-string v4, "AppDataChangeChecker"

    .line 182
    .line 183
    const-string v5, "No change in APKs size, version name or version code"

    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    move-object p0, v0

    .line 187
    move p4, v2

    .line 188
    move-object p5, v3

    .line 189
    move-object p1, v4

    .line 190
    move-object p2, v5

    .line 191
    move-object p3, v6

    .line 192
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return v1
.end method

.method public static b(JLiu;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p0, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljr7;

    .line 25
    .line 26
    invoke-direct {v0, p3}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "[ -e @@ ]"

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljr7;->b(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :goto_0
    move-object p0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long/2addr v4, p0

    .line 44
    const-wide/16 p0, 0x3e8

    .line 45
    .line 46
    div-long/2addr v4, p0

    .line 47
    sget-object p0, Lg42;->u:Lgv7;

    .line 48
    .line 49
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p3, p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    sget-object p1, Lmp6;->a:Lmp6;

    .line 72
    .line 73
    filled-new-array {p0}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v0, Lip6;->SHIZUKU:Lip6;

    .line 78
    .line 79
    invoke-virtual {p1, p0, v0}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_1
    const/4 p1, 0x0

    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    new-instance v0, Lll1;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Ld7;

    .line 92
    .line 93
    invoke-direct {p0, p3, v2}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lme3;

    .line 97
    .line 98
    invoke-direct {v2, v0, p1, p0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Ldq;

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ldq;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lme3;

    .line 107
    .line 108
    invoke-direct {v0, v2, p1, p0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object p0, v3

    .line 117
    :goto_2
    const-string v0, "prefs"

    .line 118
    .line 119
    const-string v2, "backup_app_cache"

    .line 120
    .line 121
    const-string v4, "KEY_BACKUP_APP_CACHE"

    .line 122
    .line 123
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 124
    .line 125
    if-eqz v5, :cond_4

    .line 126
    .line 127
    invoke-interface {v5, v4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move v4, p1

    .line 137
    :goto_3
    :try_start_1
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 138
    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :catch_1
    :goto_4
    if-nez v4, :cond_7

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    :cond_6
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    move-object v2, v0

    .line 174
    check-cast v2, Ljava/lang/String;

    .line 175
    .line 176
    const-string v4, "/cache"

    .line 177
    .line 178
    invoke-virtual {p3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-static {v2, v4, p1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_6

    .line 187
    .line 188
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_7
    move-object v3, p0

    .line 193
    :cond_8
    if-eqz v3, :cond_a

    .line 194
    .line 195
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-eqz p0, :cond_9

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_9
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 203
    .line 204
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p2, " modified files: "

    .line 217
    .line 218
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    const/4 v8, 0x4

    .line 229
    const/4 v9, 0x0

    .line 230
    const-string v5, "AppDataChangeChecker"

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_c

    .line 243
    .line 244
    :cond_b
    move p1, v1

    .line 245
    :cond_c
    xor-int/lit8 p0, p1, 0x1

    .line 246
    .line 247
    return p0
.end method

.method public static c(JJLjava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    cmp-long v0, p2, p0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    const-string p0, "No change in "

    .line 16
    .line 17
    const-string p1, " size"

    .line 18
    .line 19
    invoke-static {p0, p4, p1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v2, "AppDataChangeChecker"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    invoke-static {p2, p3, p0, p1, p4}, Leq;->d(JJLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public static d(JJLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lp93;->a:Lp93;

    .line 6
    .line 7
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sub-long/2addr p0, p2

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, ": Backup: "

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ", Current: "

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, ", Diff: "

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 69
    .line 70
    const/4 v4, 0x4

    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v1, "AppDataChangeChecker"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
