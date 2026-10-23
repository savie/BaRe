.class public abstract Lc;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lhy0;

.field public static final b:Lhy0;

.field public static final c:Lhy0;

.field public static final d:Lhy0;

.field public static final e:Lhy0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lhy0;->d:Lhy0;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lc;->a:Lhy0;

    .line 10
    .line 11
    const-string v0, "\\"

    .line 12
    .line 13
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lc;->b:Lhy0;

    .line 18
    .line 19
    const-string v0, "/\\"

    .line 20
    .line 21
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lc;->c:Lhy0;

    .line 26
    .line 27
    const-string v0, "."

    .line 28
    .line 29
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lc;->d:Lhy0;

    .line 34
    .line 35
    const-string v0, ".."

    .line 36
    .line 37
    invoke-static {v0}, Lge;->v(Ljava/lang/String;)Lhy0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lc;->e:Lhy0;

    .line 42
    .line 43
    return-void
.end method

.method public static final a(Ley5;)I
    .locals 6

    .line 1
    iget-object p0, p0, Ley5;->a:Lhy0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lhy0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lhy0;->i(I)B

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x2f

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v0}, Lhy0;->i(I)B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x5c

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    if-ne v2, v3, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lhy0;->d()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-le v0, v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Lhy0;->i(I)B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v3, :cond_3

    .line 42
    .line 43
    sget-object v0, Lc;->b:Lhy0;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lhy0;->h()[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0, v5}, Lhy0;->f([BI)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lhy0;->d()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_2
    return v0

    .line 64
    :cond_3
    :goto_0
    return v4

    .line 65
    :cond_4
    invoke-virtual {p0}, Lhy0;->d()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-le v2, v5, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0, v4}, Lhy0;->i(I)B

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/16 v4, 0x3a

    .line 76
    .line 77
    if-ne v2, v4, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0, v5}, Lhy0;->i(I)B

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ne v2, v3, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lhy0;->i(I)B

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    int-to-char p0, p0

    .line 90
    const/16 v0, 0x61

    .line 91
    .line 92
    if-gt v0, p0, :cond_5

    .line 93
    .line 94
    const/16 v0, 0x7b

    .line 95
    .line 96
    if-ge p0, v0, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const/16 v0, 0x41

    .line 100
    .line 101
    if-gt v0, p0, :cond_6

    .line 102
    .line 103
    const/16 v0, 0x5b

    .line 104
    .line 105
    if-ge p0, v0, :cond_6

    .line 106
    .line 107
    :goto_1
    const/4 p0, 0x3

    .line 108
    return p0

    .line 109
    :cond_6
    :goto_2
    return v1
.end method

.method public static final b(Ley5;Ley5;Z)Ley5;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lc;->a(Ley5;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ley5;->c()Ljava/lang/Character;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-object p1

    .line 19
    :cond_1
    invoke-static {p0}, Lc;->c(Ley5;)Lhy0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {p1}, Lc;->c(Ley5;)Lhy0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    sget-object v0, Ley5;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Lc;->f(Ljava/lang/String;)Lhy0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    new-instance v1, Lnw0;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Ley5;->a:Lhy0;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Lnw0;->D(Lhy0;)V

    .line 45
    .line 46
    .line 47
    iget-wide v2, v1, Lnw0;->b:J

    .line 48
    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    cmp-long p0, v2, v4

    .line 52
    .line 53
    if-lez p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lnw0;->D(Lhy0;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p0, p1, Ley5;->a:Lhy0;

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lnw0;->D(Lhy0;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, p2}, Lc;->d(Lnw0;Z)Ley5;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static final c(Ley5;)Lhy0;
    .locals 3

    .line 1
    iget-object v0, p0, Ley5;->a:Lhy0;

    .line 2
    .line 3
    sget-object v1, Lc;->a:Lhy0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhy0;->g(Lhy0;Lhy0;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object p0, p0, Ley5;->a:Lhy0;

    .line 14
    .line 15
    sget-object v0, Lc;->b:Lhy0;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lhy0;->g(Lhy0;Lhy0;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eq p0, v2, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final d(Lnw0;Z)Ley5;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lnw0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    sget-object v5, Lc;->a:Lhy0;

    .line 11
    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Lhy0;->d()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const-wide/16 v7, 0x0

    .line 20
    .line 21
    invoke-virtual {v0, v7, v8, v5, v6}, Lnw0;->n(JLhy0;I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_19

    .line 26
    .line 27
    sget-object v5, Lc;->b:Lhy0;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Lhy0;->d()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v0, v7, v8, v5, v6}, Lnw0;->n(JLhy0;I)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :cond_0
    const/4 v6, 0x2

    .line 45
    const/4 v9, 0x1

    .line 46
    if-lt v4, v6, :cond_1

    .line 47
    .line 48
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    move v6, v9

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    :goto_1
    const-wide/16 v10, -0x1

    .line 58
    .line 59
    sget-object v12, Lc;->c:Lhy0;

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lnw0;->D(Lhy0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lnw0;->D(Lhy0;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    if-lez v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lnw0;->D(Lhy0;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    move-wide v15, v10

    .line 82
    goto :goto_5

    .line 83
    :cond_3
    invoke-virtual {v0, v12}, Lnw0;->T(Lhy0;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    cmp-long v2, v13, v10

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    sget-object v2, Ley5;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2}, Lc;->f(Ljava/lang/String;)Lhy0;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {v0, v13, v14}, Lnw0;->h(J)B

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Lc;->e(B)Lhy0;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_5
    :goto_3
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_6

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    iget-wide v4, v0, Lnw0;->b:J

    .line 116
    .line 117
    move-wide v15, v4

    .line 118
    const-wide/16 v3, 0x2

    .line 119
    .line 120
    cmp-long v5, v15, v3

    .line 121
    .line 122
    if-gez v5, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    move-wide v15, v10

    .line 126
    const-wide/16 v10, 0x1

    .line 127
    .line 128
    invoke-virtual {v0, v10, v11}, Lnw0;->h(J)B

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    const/16 v10, 0x3a

    .line 133
    .line 134
    if-eq v5, v10, :cond_8

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    invoke-virtual {v0, v7, v8}, Lnw0;->h(J)B

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    int-to-char v5, v5

    .line 142
    const/16 v10, 0x61

    .line 143
    .line 144
    if-gt v10, v5, :cond_9

    .line 145
    .line 146
    const/16 v10, 0x7b

    .line 147
    .line 148
    if-ge v5, v10, :cond_9

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    const/16 v10, 0x41

    .line 152
    .line 153
    if-gt v10, v5, :cond_b

    .line 154
    .line 155
    const/16 v10, 0x5b

    .line 156
    .line 157
    if-ge v5, v10, :cond_b

    .line 158
    .line 159
    :goto_4
    cmp-long v5, v13, v3

    .line 160
    .line 161
    if-nez v5, :cond_a

    .line 162
    .line 163
    const-wide/16 v3, 0x3

    .line 164
    .line 165
    invoke-virtual {v1, v0, v3, v4}, Lnw0;->f0(Lnw0;J)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_a
    invoke-virtual {v1, v0, v3, v4}, Lnw0;->f0(Lnw0;J)V

    .line 170
    .line 171
    .line 172
    :cond_b
    :goto_5
    iget-wide v3, v1, Lnw0;->b:J

    .line 173
    .line 174
    cmp-long v3, v3, v7

    .line 175
    .line 176
    if-lez v3, :cond_c

    .line 177
    .line 178
    move v3, v9

    .line 179
    goto :goto_6

    .line 180
    :cond_c
    const/4 v3, 0x0

    .line 181
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    :cond_d
    :goto_7
    invoke-virtual {v0}, Lnw0;->x()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    sget-object v10, Lc;->d:Lhy0;

    .line 191
    .line 192
    if-nez v5, :cond_15

    .line 193
    .line 194
    invoke-virtual {v0, v12}, Lnw0;->T(Lhy0;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v13

    .line 198
    cmp-long v5, v13, v15

    .line 199
    .line 200
    if-nez v5, :cond_e

    .line 201
    .line 202
    iget-wide v13, v0, Lnw0;->b:J

    .line 203
    .line 204
    invoke-virtual {v0, v13, v14}, Lnw0;->o(J)Lhy0;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    goto :goto_8

    .line 209
    :cond_e
    invoke-virtual {v0, v13, v14}, Lnw0;->o(J)Lhy0;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v0}, Lnw0;->readByte()B

    .line 214
    .line 215
    .line 216
    :goto_8
    sget-object v11, Lc;->e:Lhy0;

    .line 217
    .line 218
    invoke-static {v5, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-eqz v13, :cond_14

    .line 223
    .line 224
    if-eqz v3, :cond_f

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-nez v10, :cond_d

    .line 231
    .line 232
    :cond_f
    if-eqz p1, :cond_13

    .line 233
    .line 234
    if-nez v3, :cond_10

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-nez v10, :cond_13

    .line 241
    .line 242
    invoke-static {v4}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_10

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_10
    if-eqz v6, :cond_11

    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eq v5, v9, :cond_d

    .line 260
    .line 261
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_12

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    sub-int/2addr v5, v9

    .line 273
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_13
    :goto_9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_14
    invoke-static {v5, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    if-nez v10, :cond_d

    .line 286
    .line 287
    sget-object v10, Lhy0;->d:Lhy0;

    .line 288
    .line 289
    invoke-static {v5, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    if-nez v10, :cond_d

    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const/4 v3, 0x0

    .line 304
    :goto_a
    if-ge v3, v0, :cond_17

    .line 305
    .line 306
    if-lez v3, :cond_16

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lnw0;->D(Lhy0;)V

    .line 309
    .line 310
    .line 311
    :cond_16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    check-cast v5, Lhy0;

    .line 316
    .line 317
    invoke-virtual {v1, v5}, Lnw0;->D(Lhy0;)V

    .line 318
    .line 319
    .line 320
    add-int/lit8 v3, v3, 0x1

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_17
    iget-wide v2, v1, Lnw0;->b:J

    .line 324
    .line 325
    cmp-long v0, v2, v7

    .line 326
    .line 327
    if-nez v0, :cond_18

    .line 328
    .line 329
    invoke-virtual {v1, v10}, Lnw0;->D(Lhy0;)V

    .line 330
    .line 331
    .line 332
    :cond_18
    new-instance v0, Ley5;

    .line 333
    .line 334
    iget-wide v2, v1, Lnw0;->b:J

    .line 335
    .line 336
    invoke-virtual {v1, v2, v3}, Lnw0;->o(J)Lhy0;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Ley5;-><init>(Lhy0;)V

    .line 341
    .line 342
    .line 343
    return-object v0

    .line 344
    :cond_19
    :goto_b
    invoke-virtual {v0}, Lnw0;->readByte()B

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-nez v2, :cond_1a

    .line 349
    .line 350
    invoke-static {v3}, Lc;->e(B)Lhy0;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    .line 355
    .line 356
    goto/16 :goto_0
.end method

.method public static final e(B)Lhy0;
    .locals 1

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x5c

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lc;->b:Lhy0;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "not a directory separator: "

    .line 13
    .line 14
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lc;->a:Lhy0;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final f(Ljava/lang/String;)Lhy0;
    .locals 1

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lc;->a:Lhy0;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "\\"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lc;->b:Lhy0;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "not a directory separator: "

    .line 24
    .line 25
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
