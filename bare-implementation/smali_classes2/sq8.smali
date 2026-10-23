.class public abstract Lsq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lqj4;)Lfl4;
    .locals 2

    .line 1
    instance-of v0, p0, Lfl4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object p0, v1

    .line 8
    :goto_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ltq8;
    .locals 13

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    move-object p0, v0

    .line 9
    move-object v5, p0

    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :catch_1
    move-object p0, v1

    .line 13
    :goto_0
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->c()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lfl1;->y0(Ljava/util/Collection;)Lnd4;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lld4;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1
    move-object v3, v2

    .line 30
    check-cast v3, Lmd4;

    .line 31
    .line 32
    iget-boolean v3, v3, Lmd4;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    const-string v4, "dav"

    .line 35
    .line 36
    const-string v5, "remote.php"

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    :try_start_2
    move-object v3, v2

    .line 41
    check-cast v3, Lmd4;

    .line 42
    .line 43
    invoke-virtual {v3}, Lmd4;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object v6, v3

    .line 48
    check-cast v6, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v6, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v7, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    add-int/lit8 v7, v6, 0x1

    .line 65
    .line 66
    invoke-static {v7, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v7, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x2

    .line 77
    .line 78
    invoke-static {v6, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "files"

    .line 83
    .line 84
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object v3, v1

    .line 92
    :goto_1
    check-cast v3, Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    add-int/lit8 v3, v2, 0x3

    .line 101
    .line 102
    invoke-static {v3, v0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move-object v3, v1

    .line 118
    :goto_2
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-static {v0, v2}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const-string v7, "uploads"

    .line 125
    .line 126
    filled-new-array {v5, v4, v7, v3}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v6, v3}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    const-string v8, "/"

    .line 139
    .line 140
    const-string v9, "/"

    .line 141
    .line 142
    const/4 v11, 0x0

    .line 143
    const/16 v12, 0x3c

    .line 144
    .line 145
    const/4 v10, 0x0

    .line 146
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v0, v2}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v2, "ocs"

    .line 155
    .line 156
    const-string v4, "v1.php"

    .line 157
    .line 158
    const-string v5, "cloud"

    .line 159
    .line 160
    const-string v6, "capabilities"

    .line 161
    .line 162
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v0, v2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "/"

    .line 175
    .line 176
    const-string v6, "/"

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    const/16 v9, 0x3c

    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput-object v1, v2, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 194
    .line 195
    iput-object v1, v2, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iget-object v2, v2, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    new-array v3, v3, [C

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    const/16 v5, 0x2f

    .line 208
    .line 209
    aput-char v5, v3, v4

    .line 210
    .line 211
    invoke-static {v2, v3}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 223
    .line 224
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 225
    .line 226
    const-string v0, "format"

    .line 227
    .line 228
    const-string v3, "json"

    .line 229
    .line 230
    invoke-virtual {p0, v0, v3}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    iget-object p0, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 238
    .line 239
    new-instance v0, Ltq8;

    .line 240
    .line 241
    invoke-direct {v0, v2, p0}, Ltq8;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .line 243
    .line 244
    move-object v1, v0

    .line 245
    goto :goto_5

    .line 246
    :cond_4
    :goto_3
    return-object v1

    .line 247
    :goto_4
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 248
    .line 249
    const/16 v7, 0x8

    .line 250
    .line 251
    const/4 v8, 0x0

    .line 252
    const-string v3, "WebDavService"

    .line 253
    .line 254
    const-string v4, "Chunked upload not supported"

    .line 255
    .line 256
    const/4 v6, 0x0

    .line 257
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :goto_5
    return-object v1
.end method

.method public static c(Lqj4;)Z
    .locals 7

    .line 1
    instance-of v0, p0, Lkl4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lkl4;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iget-object v2, v0, Lkl4;->a:Ljava/io/Serializable;

    .line 15
    .line 16
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lkl4;->e()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    :try_start_0
    check-cast p0, Lkl4;

    .line 31
    .line 32
    invoke-virtual {v0}, Lkl4;->s()D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    cmpl-double p0, v2, v5

    .line 39
    .line 40
    if-lez p0, :cond_3

    .line 41
    .line 42
    move v1, v4

    .line 43
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    new-instance v0, Lbn6;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    move-object p0, v0

    .line 55
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    instance-of v1, p0, Lbn6;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    move-object p0, v0

    .line 62
    :cond_4
    check-cast p0, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_5
    instance-of p0, v2, Ljava/lang/String;

    .line 70
    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    invoke-virtual {v0}, Lkl4;->o()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-lez v0, :cond_6

    .line 93
    .line 94
    const-string v0, "false"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    const-string v0, "0"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_6

    .line 109
    .line 110
    return v4

    .line 111
    :cond_6
    :goto_2
    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lsq8;->a(Lqj4;)Lfl4;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_8

    .line 14
    .line 15
    const-string v1, "ocs"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lsq8;->a(Lqj4;)Lfl4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p0, v1

    .line 30
    :goto_0
    if-eqz p0, :cond_8

    .line 31
    .line 32
    const-string v2, "data"

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lsq8;->a(Lqj4;)Lfl4;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p0, v1

    .line 46
    :goto_1
    if-eqz p0, :cond_8

    .line 47
    .line 48
    const-string v2, "capabilities"

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Lsq8;->a(Lqj4;)Lfl4;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object p0, v1

    .line 62
    :goto_2
    if-eqz p0, :cond_8

    .line 63
    .line 64
    const-string v2, "dav"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-static {v2}, Lsq8;->a(Lqj4;)Lfl4;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-object v2, v1

    .line 78
    :goto_3
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    const-string v4, "chunking"

    .line 82
    .line 83
    invoke-virtual {v2, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-static {v2}, Lsq8;->c(Lqj4;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, v3, :cond_4

    .line 94
    .line 95
    move v2, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move v2, v0

    .line 98
    :goto_4
    const-string v4, "files"

    .line 99
    .line 100
    invoke-virtual {p0, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    invoke-static {p0}, Lsq8;->a(Lqj4;)Lfl4;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_5
    if-eqz v1, :cond_6

    .line 111
    .line 112
    const-string p0, "bigfilechunking"

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    invoke-static {p0}, Lsq8;->c(Lqj4;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-ne p0, v3, :cond_6

    .line 125
    .line 126
    move p0, v3

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    move p0, v0

    .line 129
    :goto_5
    if-nez v2, :cond_7

    .line 130
    .line 131
    if-eqz p0, :cond_8

    .line 132
    .line 133
    :cond_7
    return v3

    .line 134
    :cond_8
    return v0
.end method
