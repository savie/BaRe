.class public abstract Lsd7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/String;Lb05;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p1, "pm install-abandon "

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lip6;->SHIZUKU:Lip6;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lsd7;->e(Ljava/util/List;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lvr6;->INSTANCE:Lvr6;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/16 v6, 0x3f

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Failed to abandon install session "

    .line 35
    .line 36
    const-string v2, ": "

    .line 37
    .line 38
    invoke-static {v1, p0, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v3, "ShellApkInstaller"

    .line 45
    .line 46
    move-object v2, p1

    .line 47
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/ArrayList;Llk;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance p2, Lq63;

    .line 2
    .line 3
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lry5;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-string v4, "apk_shell_install_"

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-direct {p2, v0, v2, v3}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lq63;->E(Lq63;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lsg;

    .line 62
    .line 63
    iget-object v2, v0, Lsg;->a:Lq63;

    .line 64
    .line 65
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p2, v2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, v0, Lsg;->a:Lq63;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2, v1}, Lq63;->d(Lq63;Lkl;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v0, Lsg;->b:Ljava/lang/String;

    .line 82
    .line 83
    iget-wide v4, v0, Lsg;->c:J

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lsg;

    .line 89
    .line 90
    invoke-direct {v0, v4, v5, v2, v3}, Lsg;-><init>(JLq63;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    return-object p1

    .line 98
    :cond_1
    const-string p0, "Unable to create APK shell install directory: "

    .line 99
    .line 100
    invoke-static {p2, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v1
.end method

.method public static c(ZLjava/lang/String;Ljava/lang/String;Lb05;)Lrd7;
    .locals 11

    .line 1
    const/4 p3, 0x0

    .line 2
    move v0, p3

    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x5

    .line 5
    if-ge v0, v2, :cond_f

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object v2, p2

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :goto_1
    move-object v2, v1

    .line 19
    :goto_2
    if-nez v2, :cond_2

    .line 20
    .line 21
    const-string v2, "unknown_installer"

    .line 22
    .line 23
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-boolean v3, Lg42;->a:Z

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    const-string v4, "-g"

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v4, v3

    .line 36
    :goto_3
    sget-object v5, Lg42;->w:Lgv7;

    .line 37
    .line 38
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    filled-new-array {v4, p1, v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget v4, Lb67;->a:I

    .line 58
    .line 59
    sget v4, Lbx0;->a:I

    .line 60
    .line 61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 v5, 0x22

    .line 64
    .line 65
    if-ge v4, v5, :cond_4

    .line 66
    .line 67
    const/16 v5, 0x21

    .line 68
    .line 69
    if-lt v4, v5, :cond_5

    .line 70
    .line 71
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const-string v4, "UpsideDownCake"

    .line 77
    .line 78
    invoke-static {v4}, Lbx0;->a(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    :cond_4
    const-string v4, " --bypass-low-target-sdk-block"

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :cond_5
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 91
    .line 92
    invoke-static {v2, v4}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const-string v6, "]"

    .line 105
    .line 106
    const-string v7, "["

    .line 107
    .line 108
    if-eqz v4, :cond_7

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    move-object v8, v4

    .line 115
    check-cast v8, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v8, v7, p3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_6

    .line 122
    .line 123
    invoke-static {v8, v6, p3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_6

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_7
    move-object v4, v1

    .line 131
    :goto_4
    check-cast v4, Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v4, :cond_8

    .line 134
    .line 135
    invoke-static {v4, v7, v6}, Ljq7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    goto :goto_5

    .line 150
    :cond_8
    move-object v2, v1

    .line 151
    :goto_5
    if-nez v2, :cond_9

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_9
    move-object v3, v2

    .line 155
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-lez v2, :cond_c

    .line 160
    .line 161
    move v2, p3

    .line 162
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ge v2, v4, :cond_b

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_a

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    new-instance p0, Lrd7;

    .line 183
    .line 184
    invoke-direct {p0, v3, v5}, Lrd7;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_c
    :goto_8
    const/4 v2, 0x4

    .line 189
    if-ge v0, v2, :cond_e

    .line 190
    .line 191
    sget-object v1, Lmp6;->a:Lmp6;

    .line 192
    .line 193
    sget-object v2, Lmp6;->b:Ljava/lang/String;

    .line 194
    .line 195
    const-string v3, "Creating new shell"

    .line 196
    .line 197
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    sget v2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 201
    .line 202
    invoke-static {}, Lk55;->k()Lzd7;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_d

    .line 207
    .line 208
    invoke-static {v2}, Lf13;->a(Ljava/io/Closeable;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    const/4 v2, 0x2

    .line 212
    const/4 v3, 0x1

    .line 213
    invoke-static {v1, v3, p3, v2}, Lmp6;->d(Lmp6;ZZI)Z

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lk55;->j()Lzd7;

    .line 217
    .line 218
    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_e
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    const/16 v10, 0x3f

    .line 227
    .line 228
    const/4 v6, 0x0

    .line 229
    const/4 v7, 0x0

    .line 230
    const/4 v8, 0x0

    .line 231
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    move-object p1, v5

    .line 236
    const-string p2, "Failed to create install session: "

    .line 237
    .line 238
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    const/4 v6, 0x4

    .line 243
    const-string v3, "ShellApkInstaller"

    .line 244
    .line 245
    const/4 v5, 0x0

    .line 246
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    new-instance p0, Lrd7;

    .line 250
    .line 251
    invoke-direct {p0, v1, p1}, Lrd7;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    return-object p0

    .line 255
    :cond_f
    new-instance p0, Lrd7;

    .line 256
    .line 257
    sget-object p1, Lov2;->a:Lov2;

    .line 258
    .line 259
    invoke-direct {p0, v1, p1}, Lrd7;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 260
    .line 261
    .line 262
    return-object p0
.end method

.method public static d(Lqd7;)Ljava/util/List;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v4, Lg84;

    .line 4
    .line 5
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v5, Lb05;->a:Lb05;

    .line 9
    .line 10
    sget-object v6, Llk;->d:Llk;

    .line 11
    .line 12
    sget-object v7, Lsl4;->c:Lsl4;

    .line 13
    .line 14
    iget-object v1, v0, Lqd7;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v0, "Failure [No APK files provided]"

    .line 23
    .line 24
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    move-wide v10, v8

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lsg;

    .line 47
    .line 48
    iget-wide v12, v3, Lsg;->c:J

    .line 49
    .line 50
    add-long/2addr v10, v12

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v12, v0, Lqd7;->f:J

    .line 53
    .line 54
    iget-object v14, v0, Lqd7;->g:Lmt3;

    .line 55
    .line 56
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    add-long/2addr v10, v12

    .line 60
    cmp-long v2, v10, v8

    .line 61
    .line 62
    if-gez v2, :cond_2

    .line 63
    .line 64
    move-wide/from16 v17, v8

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-wide/from16 v17, v10

    .line 68
    .line 69
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    :try_start_0
    iget-boolean v11, v0, Lqd7;->e:Z

    .line 77
    .line 78
    if-eqz v11, :cond_3

    .line 79
    .line 80
    invoke-static {v1, v3, v6}, Lsd7;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Llk;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_3
    :goto_2
    iget-boolean v11, v0, Lqd7;->b:Z

    .line 89
    .line 90
    iget-object v15, v0, Lqd7;->c:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v0, v0, Lqd7;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v11, v15, v0, v5}, Lsd7;->c(ZLjava/lang/String;Ljava/lang/String;Lb05;)Lrd7;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object v11, v1

    .line 99
    iget-object v1, v0, Lrd7;->a:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    iget-object v0, v0, Lrd7;->b:Ljava/util/List;

    .line 104
    .line 105
    const/16 v23, 0x0

    .line 106
    .line 107
    const/16 v24, 0x3f

    .line 108
    .line 109
    const/16 v20, 0x0

    .line 110
    .line 111
    const/16 v21, 0x0

    .line 112
    .line 113
    const/16 v22, 0x0

    .line 114
    .line 115
    move-object/from16 v19, v0

    .line 116
    .line 117
    invoke-static/range {v19 .. v24}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v4, "Failed to create install session: ["

    .line 124
    .line 125
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, "]"

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lq63;

    .line 159
    .line 160
    invoke-virtual {v2}, Lq63;->h()Z

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    return-object v0

    .line 165
    :cond_5
    const/4 v15, 0x1

    .line 166
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    move-wide/from16 v19, v8

    .line 176
    .line 177
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_a

    .line 182
    .line 183
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lsg;

    .line 188
    .line 189
    move-wide/from16 v21, v8

    .line 190
    .line 191
    invoke-static/range {v1 .. v7}, Lsd7;->g(Ljava/lang/String;Lsg;Ljava/util/ArrayList;Lg84;Lb05;Llk;Lsl4;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    invoke-static {v8}, Lsd7;->e(Ljava/util/List;)Z

    .line 199
    .line 200
    .line 201
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 202
    if-eqz v8, :cond_6

    .line 203
    .line 204
    invoke-static {v1, v5}, Lsd7;->a(Ljava/lang/String;Lb05;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_c

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Lq63;

    .line 222
    .line 223
    invoke-virtual {v2}, Lq63;->h()Z

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_6
    :try_start_2
    iget-wide v8, v2, Lsg;->c:J

    .line 228
    .line 229
    sget-object v16, Lug;->Writing:Lug;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 230
    .line 231
    cmp-long v2, v8, v21

    .line 232
    .line 233
    if-gez v2, :cond_7

    .line 234
    .line 235
    move-wide/from16 v8, v21

    .line 236
    .line 237
    :cond_7
    add-long v19, v19, v8

    .line 238
    .line 239
    sub-long v8, v17, v12

    .line 240
    .line 241
    cmp-long v2, v8, v21

    .line 242
    .line 243
    if-gez v2, :cond_8

    .line 244
    .line 245
    move-wide/from16 v8, v21

    .line 246
    .line 247
    :cond_8
    cmp-long v2, v19, v8

    .line 248
    .line 249
    if-lez v2, :cond_9

    .line 250
    .line 251
    move-wide/from16 v19, v8

    .line 252
    .line 253
    :cond_9
    move v2, v15

    .line 254
    :try_start_3
    new-instance v15, Lvg;

    .line 255
    .line 256
    move-wide/from16 v25, v19

    .line 257
    .line 258
    move-wide/from16 v19, v17

    .line 259
    .line 260
    move-wide/from16 v17, v25

    .line 261
    .line 262
    invoke-direct/range {v15 .. v20}, Lvg;-><init>(Lug;JJ)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v14, v15}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-wide/from16 v8, v19

    .line 269
    .line 270
    move-wide/from16 v19, v17

    .line 271
    .line 272
    move-wide/from16 v17, v8

    .line 273
    .line 274
    move v15, v2

    .line 275
    move-wide/from16 v8, v21

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    :goto_6
    move v10, v2

    .line 280
    :goto_7
    move-object v2, v1

    .line 281
    goto :goto_9

    .line 282
    :catchall_2
    move-exception v0

    .line 283
    move v2, v15

    .line 284
    goto :goto_6

    .line 285
    :cond_a
    move v2, v15

    .line 286
    move-wide/from16 v19, v17

    .line 287
    .line 288
    sget-object v4, Lg42;->z:Lgv7;

    .line 289
    .line 290
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Ljava/lang/String;

    .line 295
    .line 296
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    :try_start_4
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 309
    .line 310
    invoke-static {v2, v4}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Lsd7;->e(Ljava/util/List;)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-nez v2, :cond_b

    .line 322
    .line 323
    new-instance v15, Lvg;

    .line 324
    .line 325
    sget-object v16, Lug;->Committing:Lug;

    .line 326
    .line 327
    move-wide/from16 v17, v19

    .line 328
    .line 329
    move-wide/from16 v19, v17

    .line 330
    .line 331
    invoke-direct/range {v15 .. v20}, Lvg;-><init>(Lug;JJ)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v14, v15}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 335
    .line 336
    .line 337
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_c

    .line 346
    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Lq63;

    .line 352
    .line 353
    invoke-virtual {v2}, Lq63;->h()Z

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_c
    return-object v0

    .line 358
    :catchall_3
    move-exception v0

    .line 359
    goto :goto_7

    .line 360
    :goto_9
    if-eqz v10, :cond_d

    .line 361
    .line 362
    if-eqz v2, :cond_d

    .line 363
    .line 364
    invoke-static {v2, v5}, Lsd7;->a(Ljava/lang/String;Lb05;)V

    .line 365
    .line 366
    .line 367
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_e

    .line 376
    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Lq63;

    .line 382
    .line 383
    invoke-virtual {v2}, Lq63;->h()Z

    .line 384
    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_e
    throw v0
.end method

.method public static e(Ljava/util/List;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "Failure"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_7

    .line 35
    .line 36
    const-string v2, "Segmentation fault"

    .line 37
    .line 38
    invoke-static {v1, v2, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_7

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "Failed to parse APK file"

    .line 68
    .line 69
    invoke-static {v2, v4, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_1
    invoke-static {p0}, Lsd7;->f(Ljava/util/List;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/String;

    .line 104
    .line 105
    const-string v4, "Failed to create install session"

    .line 106
    .line 107
    invoke-static {v2, v4, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    :cond_7
    :goto_2
    return v3

    .line 114
    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 115
    return p0
.end method

.method public static f(Ljava/util/List;)Z
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Unable to open file"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const-string v1, "data/local"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :cond_2
    return v2

    .line 44
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static g(Ljava/lang/String;Lsg;Ljava/util/ArrayList;Lg84;Lb05;Llk;Lsl4;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object p3, p1, Lsg;->a:Lq63;

    .line 2
    .line 3
    invoke-static {p4, p0, p1, p3}, Lsd7;->h(Lb05;Ljava/lang/String;Lsg;Lq63;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    sget-object p6, Lip6;->SHIZUKU:Lip6;

    .line 8
    .line 9
    invoke-static {p5, p6}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p5

    .line 13
    invoke-static {p5}, Lsd7;->f(Ljava/util/List;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sput-boolean v1, Lg42;->a:Z

    .line 21
    .line 22
    invoke-static {p4, p0, p1, p3}, Lsd7;->h(Lb05;Ljava/lang/String;Lsg;Lq63;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-static {p5, p6}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    :cond_0
    const/4 p6, 0x0

    .line 31
    if-eqz p5, :cond_2

    .line 32
    .line 33
    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :cond_1
    move v1, p6

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "cat: "

    .line 58
    .line 59
    invoke-static {v2, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string v3, "Permission denied"

    .line 66
    .line 67
    invoke-static {v2, v3, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    :goto_0
    if-eqz v1, :cond_5

    .line 74
    .line 75
    new-instance p5, Lq63;

    .line 76
    .line 77
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-static {p6, v0}, Lqy5;->f(ZLzn7;)Lry5;

    .line 81
    .line 82
    .line 83
    move-result-object p6

    .line 84
    iget-object p6, p6, Lry5;->e:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    const-string v3, "apk_shell_install_retry_"

    .line 91
    .line 92
    invoke-static {v1, v2, v3}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {p5, p6, v1, v2}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p5}, Lq63;->E(Lq63;)Z

    .line 101
    .line 102
    .line 103
    move-result p6

    .line 104
    if-eqz p6, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Lq63;->p()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p5, p2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p3, p2, v0}, Lq63;->d(Lq63;Lkl;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p4, p0, p1, p2}, Lsd7;->h(Lb05;Ljava/lang/String;Lsg;Lq63;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    sget-object p1, Lip6;->SHIZUKU:Lip6;

    .line 125
    .line 126
    invoke-static {p0, p1}, Lg84;->l(Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_4
    const-string p0, "Unable to create APK shell install retry directory: "

    .line 132
    .line 133
    invoke-static {p5, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_5
    return-object p5
.end method

.method public static final h(Lb05;Ljava/lang/String;Lsg;Lq63;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p0, p2, Lsg;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p3}, Lq63;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p3}, Lq63;->A()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-boolean p3, Lg42;->a:Z

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    sget-object p3, Lg42;->y:Lgv7;

    .line 23
    .line 24
    invoke-virtual {p3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {p2, v0, p1, p0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    sget-object p3, Lmp6;->a:Lmp6;

    .line 48
    .line 49
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {p2, p3, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    sget-object v5, Lmp6;->f:Lgv7;

    .line 66
    .line 67
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v6, 0x2

    .line 80
    invoke-static {p2, p3, v3, v3, v6}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-gez v6, :cond_1

    .line 85
    .line 86
    move-object p3, p2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    add-int/2addr p3, v6

    .line 93
    if-lt p3, v6, :cond_3

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, p2, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v7, p2, p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    :goto_0
    invoke-static {p3}, Ljr7;->g(Ljava/lang/String;)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object p3, v4

    .line 129
    :goto_1
    if-eqz p3, :cond_4

    .line 130
    .line 131
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    const-string p0, ") is less than start index ("

    .line 137
    .line 138
    const-string p1, ")."

    .line 139
    .line 140
    const-string p2, "End index ("

    .line 141
    .line 142
    invoke-static {p2, p3, p0, p1, v6}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v4

    .line 150
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 151
    .line 152
    move-object v4, p2

    .line 153
    :cond_5
    const-string p3, "/data"

    .line 154
    .line 155
    invoke-static {v4, p3, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    if-eqz p3, :cond_6

    .line 160
    .line 161
    sget-object p2, Lg42;->x:Lgv7;

    .line 162
    .line 163
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    filled-new-array {p3, p1, p0, v4}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :cond_6
    sget-object p3, Lg42;->y:Lgv7;

    .line 187
    .line 188
    invoke-virtual {p3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    check-cast p3, Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    filled-new-array {p2, v0, p1, p0}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0
.end method
