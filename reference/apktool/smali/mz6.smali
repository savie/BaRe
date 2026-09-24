.class public final Lmz6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public static A(Lq63;)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static B(Lop3;Lzv1;Liz6;)Li17;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lop3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lq63;

    .line 10
    .line 11
    iget-object v4, v0, Lop3;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lcy0;

    .line 14
    .line 15
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v3, v0, Lop3;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    .line 23
    new-instance v7, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v8, 0x0

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lhz6;

    .line 44
    .line 45
    iget-object v9, v5, Lhz6;->b:Lq63;

    .line 46
    .line 47
    invoke-virtual {v9}, Lq63;->v()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget-object v10, v0, Lop3;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, Liu;

    .line 54
    .line 55
    invoke-static {v9, v10, v2}, Lmz6;->y(Ljava/lang/String;Liu;Liz6;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    iget-object v12, v5, Lhz6;->a:Ljava/lang/String;

    .line 60
    .line 61
    iget-boolean v14, v5, Lhz6;->c:Z

    .line 62
    .line 63
    iget-object v10, v5, Lhz6;->d:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    new-instance v11, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    move-object v15, v11

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    move-object v15, v8

    .line 75
    :goto_1
    iget-object v5, v5, Lhz6;->e:Ljava/util/List;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v16, v10

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    move-object/from16 v16, v8

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    move-object/from16 v17, v9

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    move-object/from16 v17, v8

    .line 99
    .line 100
    :goto_3
    new-instance v11, Lj17;

    .line 101
    .line 102
    invoke-direct/range {v11 .. v17}, Lj17;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, v0, Lop3;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Lf27;

    .line 112
    .line 113
    sget-object v5, Lkz6;->b:[I

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    aget v3, v5, v3

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v9, 0x1

    .line 123
    if-eq v3, v9, :cond_6

    .line 124
    .line 125
    const/4 v10, 0x2

    .line 126
    if-eq v3, v10, :cond_5

    .line 127
    .line 128
    const/4 v10, 0x3

    .line 129
    if-ne v3, v10, :cond_4

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 133
    .line 134
    .line 135
    return-object v8

    .line 136
    :cond_5
    :goto_4
    move-object v3, v8

    .line 137
    move v8, v9

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    move-object v3, v8

    .line 140
    move v8, v5

    .line 141
    :goto_5
    sget-object v10, Loy6;->j:Loy6;

    .line 142
    .line 143
    invoke-static {v4, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_7

    .line 148
    .line 149
    move v11, v9

    .line 150
    move v9, v5

    .line 151
    goto :goto_6

    .line 152
    :cond_7
    instance-of v11, v4, Lpy6;

    .line 153
    .line 154
    if-eqz v11, :cond_f

    .line 155
    .line 156
    move v11, v9

    .line 157
    :goto_6
    invoke-static {v4, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_8

    .line 162
    .line 163
    move v10, v5

    .line 164
    goto :goto_7

    .line 165
    :cond_8
    instance-of v10, v4, Lpy6;

    .line 166
    .line 167
    if-eqz v10, :cond_e

    .line 168
    .line 169
    check-cast v4, Lpy6;

    .line 170
    .line 171
    iget v4, v4, Lpy6;->j:I

    .line 172
    .line 173
    move v10, v4

    .line 174
    :goto_7
    sget-object v4, Lvy6;->m:Lvy6;

    .line 175
    .line 176
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-eqz v12, :cond_9

    .line 181
    .line 182
    move v12, v11

    .line 183
    move v11, v5

    .line 184
    goto :goto_8

    .line 185
    :cond_9
    instance-of v12, v1, Luy6;

    .line 186
    .line 187
    if-eqz v12, :cond_d

    .line 188
    .line 189
    move v12, v11

    .line 190
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_a

    .line 195
    .line 196
    move-object v1, v3

    .line 197
    goto :goto_9

    .line 198
    :cond_a
    instance-of v4, v1, Luy6;

    .line 199
    .line 200
    if-eqz v4, :cond_c

    .line 201
    .line 202
    check-cast v1, Luy6;

    .line 203
    .line 204
    iget-object v1, v1, Luy6;->m:[C

    .line 205
    .line 206
    :goto_9
    iget-object v0, v0, Lop3;->k:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v13, v0

    .line 209
    check-cast v13, Ljava/lang/String;

    .line 210
    .line 211
    sget-object v0, Liz6;->Shizuku:Liz6;

    .line 212
    .line 213
    if-ne v2, v0, :cond_b

    .line 214
    .line 215
    move/from16 v16, v12

    .line 216
    .line 217
    goto :goto_a

    .line 218
    :cond_b
    move/from16 v16, v5

    .line 219
    .line 220
    :goto_a
    new-instance v5, Li17;

    .line 221
    .line 222
    const-wide/16 v14, 0x7d0

    .line 223
    .line 224
    move-object v12, v1

    .line 225
    invoke-direct/range {v5 .. v16}, Li17;-><init>(Ljava/lang/String;Ljava/util/ArrayList;IIII[CLjava/lang/String;JZ)V

    .line 226
    .line 227
    .line 228
    return-object v5

    .line 229
    :cond_c
    invoke-static {}, Lq;->j()V

    .line 230
    .line 231
    .line 232
    return-object v3

    .line 233
    :cond_d
    invoke-static {}, Lq;->j()V

    .line 234
    .line 235
    .line 236
    return-object v3

    .line 237
    :cond_e
    invoke-static {}, Lq;->j()V

    .line 238
    .line 239
    .line 240
    return-object v3

    .line 241
    :cond_f
    invoke-static {}, Lq;->j()V

    .line 242
    .line 243
    .line 244
    return-object v3
.end method

.method public static C(Ljd0;[CLiz6;)Lm17;
    .locals 11

    .line 1
    iget-object v0, p0, Ljd0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq63;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, p0, Ljd0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lq63;

    .line 12
    .line 13
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Ljd0;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Liu;

    .line 20
    .line 21
    invoke-static {v0, v1, p2}, Lmz6;->y(Ljava/lang/String;Liu;Liz6;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object p2, p0, Ljd0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    iget-object p2, p0, Ljd0;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p2, Lf27;

    .line 33
    .line 34
    sget-object v0, Lkz6;->b:[I

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    aget p2, v0, p2

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x1

    .line 44
    if-eq p2, v1, :cond_2

    .line 45
    .line 46
    const/4 v5, 0x2

    .line 47
    if-eq p2, v5, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-ne p2, v1, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    :goto_0
    move v5, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    iget-object p0, p0, Ljd0;->k:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Ljava/util/List;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    move-object v7, v0

    .line 73
    new-instance v1, Lm17;

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    const-wide/16 v8, 0x7d0

    .line 77
    .line 78
    move-object v6, p1

    .line 79
    invoke-direct/range {v1 .. v10}, Lm17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[CLjava/util/ArrayList;JZ)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public static D(Lxp1;)Lcy0;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lxp1;->Companion:Lwp1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    sget-object v0, Lxp1;->NO_COMPRESSION:Lxp1;

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Loy6;->j:Loy6;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance v0, Lpy6;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxp1;->getLevel()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-direct {v0, p0}, Lpy6;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static E(Lz84;JLjava/lang/String;Liz6;Lbt3;)Lo17;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x14

    .line 3
    .line 4
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p5}, Lbt3;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    check-cast v4, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-interface {p0, p1, p2}, Lz84;->cancelSba(J)V

    .line 20
    .line 21
    .line 22
    move v0, v3

    .line 23
    :cond_1
    invoke-interface {p0, p1, p2}, Lz84;->getSbaResult(J)Lo17;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v5, v4, Lo17;->b:I

    .line 28
    .line 29
    const-string v6, " "

    .line 30
    .line 31
    const-string v7, "SBA "

    .line 32
    .line 33
    if-eqz v5, :cond_d

    .line 34
    .line 35
    if-ne v5, v3, :cond_2

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_2
    const/4 p0, 0x2

    .line 40
    if-ne v5, p0, :cond_3

    .line 41
    .line 42
    return-object v4

    .line 43
    :cond_3
    const/4 p1, 0x4

    .line 44
    if-eq v5, p1, :cond_c

    .line 45
    .line 46
    iget-object p2, v4, Lo17;->e:Ljava/lang/String;

    .line 47
    .line 48
    iget p5, v4, Lo17;->c:I

    .line 49
    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p3, " failed with state="

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p3, " errorCode="

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :cond_4
    if-ne p5, p1, :cond_b

    .line 87
    .line 88
    iget p3, v4, Lo17;->d:I

    .line 89
    .line 90
    const/4 p4, 0x0

    .line 91
    if-eq p3, v3, :cond_a

    .line 92
    .line 93
    if-eq p3, p0, :cond_9

    .line 94
    .line 95
    if-eq p3, p1, :cond_8

    .line 96
    .line 97
    const/4 p0, 0x5

    .line 98
    if-eq p3, p0, :cond_7

    .line 99
    .line 100
    const-string p0, "integrity"

    .line 101
    .line 102
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_6

    .line 107
    .line 108
    const-string p0, "CRC"

    .line 109
    .line 110
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    const-string p0, "checksum"

    .line 117
    .line 118
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-nez p0, :cond_6

    .line 123
    .line 124
    const-string p0, "authentication failed"

    .line 125
    .line 126
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_6

    .line 131
    .line 132
    const-string p0, "decompression failed"

    .line 133
    .line 134
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_6

    .line 139
    .line 140
    const-string p0, "truncated"

    .line 141
    .line 142
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_6

    .line 147
    .line 148
    const-string p0, "byte count mismatch"

    .line 149
    .line 150
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-nez p0, :cond_6

    .line 155
    .line 156
    const-string p0, "password"

    .line 157
    .line 158
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-nez p0, :cond_5

    .line 163
    .line 164
    const-string p0, "archive key"

    .line 165
    .line 166
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-nez p0, :cond_5

    .line 171
    .line 172
    const-string p0, "key check"

    .line 173
    .line 174
    invoke-static {p2, p0, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_b

    .line 179
    .line 180
    :cond_5
    new-instance p0, Lsz6;

    .line 181
    .line 182
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    new-instance p0, Lpz6;

    .line 187
    .line 188
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    new-instance p0, Lnz6;

    .line 193
    .line 194
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    new-instance p0, Lrz6;

    .line 199
    .line 200
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    new-instance p0, Lsz6;

    .line 205
    .line 206
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_a
    new-instance p0, Lpz6;

    .line 211
    .line 212
    invoke-direct {p0, p2, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 217
    .line 218
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_1
    throw p0

    .line 222
    :cond_c
    new-instance p1, Lzz6;

    .line 223
    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p3, " cancelled"

    .line 239
    .line 240
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-direct {p1, p2, p0}, Lzz6;-><init>(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    throw p1

    .line 251
    :cond_d
    :goto_2
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    .line 254
    const-wide/16 v3, 0x2

    .line 255
    .line 256
    mul-long/2addr v1, v3

    .line 257
    const-wide/16 v3, 0xfa

    .line 258
    .line 259
    cmp-long v5, v1, v3

    .line 260
    .line 261
    if-lez v5, :cond_0

    .line 262
    .line 263
    move-wide v1, v3

    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :catch_0
    move-exception p5

    .line 267
    if-nez v0, :cond_e

    .line 268
    .line 269
    :try_start_1
    invoke-interface {p0, p1, p2}, Lz84;->cancelSba(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :catchall_0
    move-exception p0

    .line 274
    invoke-static {p5, p0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    :cond_e
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 282
    .line 283
    .line 284
    new-instance p0, Lzz6;

    .line 285
    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string p2, " interrupted"

    .line 301
    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-direct {p0, p1, p5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    throw p0
.end method

.method public static final a(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ":"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 32
    .line 33
    const-string v3, "SbaHelper"

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Ignoring unknown SBA root progress "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "="

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    monitor-exit v1

    .line 67
    throw p0
.end method

.method public static b(Lop3;)Lez6;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lop3;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lq63;

    .line 6
    .line 7
    iget-object v2, v0, Lop3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Liu;

    .line 10
    .line 11
    iget-object v3, v0, Lop3;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Liz6;

    .line 14
    .line 15
    iget-object v4, v0, Lop3;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_c

    .line 24
    .line 25
    sget-object v5, Lkz6;->a:[I

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    aget v5, v5, v6

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x1

    .line 35
    if-ne v5, v6, :cond_5

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lhz6;

    .line 60
    .line 61
    iget-object v4, v4, Lhz6;->b:Lq63;

    .line 62
    .line 63
    invoke-virtual {v4}, Lq63;->b()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lq63;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    :goto_1
    move v3, v7

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v3, v5

    .line 79
    :goto_2
    if-eqz v2, :cond_4

    .line 80
    .line 81
    sget-object v4, Liu;->APP:Liu;

    .line 82
    .line 83
    if-eq v2, v4, :cond_4

    .line 84
    .line 85
    move v5, v7

    .line 86
    :cond_4
    invoke-static {v2, v3, v5}, Lmz6;->w(Liu;ZZ)Liz6;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :cond_5
    move-object v10, v3

    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_7

    .line 98
    .line 99
    :cond_6
    const-string v2, "none"

    .line 100
    .line 101
    :cond_7
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v3, v0, Lop3;->b:Ljava/lang/Object;

    .line 106
    .line 107
    move-object v11, v3

    .line 108
    check-cast v11, Ljava/util/List;

    .line 109
    .line 110
    new-instance v15, Lnk;

    .line 111
    .line 112
    const/16 v3, 0xa

    .line 113
    .line 114
    invoke-direct {v15, v3}, Lnk;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const/16 v16, 0x19

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    const-string v13, "["

    .line 121
    .line 122
    const-string v14, "]"

    .line 123
    .line 124
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v4, " output="

    .line 129
    .line 130
    const-string v5, " entries="

    .line 131
    .line 132
    const-string v8, "appPart="

    .line 133
    .line 134
    invoke-static {v8, v2, v4, v1, v5}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    iget-object v1, v0, Lop3;->c:Ljava/lang/Object;

    .line 146
    .line 147
    move-object v11, v1

    .line 148
    check-cast v11, Liu;

    .line 149
    .line 150
    :try_start_0
    sget-object v1, Lkz6;->a:[I

    .line 151
    .line 152
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    const-string v2, "create"

    .line 159
    .line 160
    if-eq v1, v7, :cond_b

    .line 161
    .line 162
    const/4 v3, 0x2

    .line 163
    if-eq v1, v3, :cond_a

    .line 164
    .line 165
    const/4 v3, 0x3

    .line 166
    if-eq v1, v3, :cond_9

    .line 167
    .line 168
    if-eq v1, v6, :cond_8

    .line 169
    .line 170
    :try_start_1
    new-instance v0, Lmn5;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    move-object v13, v0

    .line 178
    goto :goto_4

    .line 179
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string v1, "Auto execution mode must be resolved before SBA create"

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_9
    invoke-static {v2}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v0, v10, v1}, Lmz6;->d(Lop3;Liz6;Lz84;)Lez6;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto :goto_3

    .line 196
    :cond_a
    iget-object v1, v0, Lop3;->p:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v1, Lbt3;

    .line 199
    .line 200
    new-instance v3, Ljx;

    .line 201
    .line 202
    const/16 v4, 0x14

    .line 203
    .line 204
    invoke-direct {v3, v4}, Ljx;-><init>(I)V

    .line 205
    .line 206
    .line 207
    new-instance v4, Ljf;

    .line 208
    .line 209
    const/4 v5, 0x7

    .line 210
    invoke-direct {v4, v5, v0, v10}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v1, v3, v4}, Lmz6;->z(Ljava/lang/String;Lbt3;Lbt3;Lmt3;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lez6;

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_b
    invoke-static {v0, v10}, Lmz6;->c(Lop3;Liz6;)Lez6;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :goto_3
    iget-object v1, v0, Lez6;->b:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v2, v10, v12, v1}, Lmz6;->q(Ljava/lang/String;Liz6;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .line 228
    .line 229
    return-object v0

    .line 230
    :goto_4
    const-string v8, "create"

    .line 231
    .line 232
    const-string v9, "sba"

    .line 233
    .line 234
    invoke-static/range {v8 .. v13}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw v13

    .line 238
    :cond_c
    const-string v0, "SBA create requires at least one entry"

    .line 239
    .line 240
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const/4 v0, 0x0

    .line 244
    return-object v0
.end method

.method public static c(Lop3;Liz6;)Lez6;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lop3;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lod2;

    .line 6
    .line 7
    sget-object v2, Lgz6;->i:Lgz6;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v1, Lvy6;->m:Lvy6;

    .line 17
    .line 18
    :goto_0
    move-object v8, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    instance-of v2, v1, Lfz6;

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    check-cast v1, Lfz6;

    .line 25
    .line 26
    iget-object v1, v1, Lfz6;->i:[C

    .line 27
    .line 28
    array-length v2, v1

    .line 29
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v1, Luy6;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Luy6;-><init>([C)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    const/4 v1, 0x0

    .line 40
    :try_start_0
    new-instance v2, Llh6;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, v0, Lop3;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lq63;

    .line 48
    .line 49
    invoke-static {v4}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, v0, Lop3;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Ljava/util/List;

    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    const/16 v7, 0xa

    .line 60
    .line 61
    invoke-static {v5, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lhz6;

    .line 83
    .line 84
    new-instance v9, Ley6;

    .line 85
    .line 86
    iget-object v10, v7, Lhz6;->a:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v11, v7, Lhz6;->b:Lq63;

    .line 89
    .line 90
    invoke-static {v11}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    iget-boolean v12, v7, Lhz6;->c:Z

    .line 95
    .line 96
    iget-object v13, v7, Lhz6;->d:Ljava/util/List;

    .line 97
    .line 98
    iget-object v14, v7, Lhz6;->e:Ljava/util/List;

    .line 99
    .line 100
    invoke-direct/range {v9 .. v14}, Ley6;-><init>(Ljava/lang/String;Ljava/io/File;ZLjava/util/List;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_3

    .line 109
    :cond_1
    iget-object v5, v0, Lop3;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Lf27;

    .line 112
    .line 113
    iget-object v7, v0, Lop3;->e:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v7, Lcy0;

    .line 116
    .line 117
    iget-object v9, v0, Lop3;->k:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v9, Ljava/lang/String;

    .line 120
    .line 121
    new-instance v12, Ler1;

    .line 122
    .line 123
    invoke-direct {v12, v0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Lop3;->q:Ljava/lang/Object;

    .line 127
    .line 128
    move-object v13, v0

    .line 129
    check-cast v13, Lh07;

    .line 130
    .line 131
    new-instance v14, Lc7;

    .line 132
    .line 133
    const/16 v0, 0x1a

    .line 134
    .line 135
    invoke-direct {v14, v2, v0}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    const-wide/16 v10, 0x7d0

    .line 139
    .line 140
    const/4 v15, 0x0

    .line 141
    move-object/from16 v16, v6

    .line 142
    .line 143
    move-object v6, v5

    .line 144
    move-object/from16 v5, v16

    .line 145
    .line 146
    invoke-static/range {v4 .. v15}, Ltu0;->d(Ljava/io/File;Ljava/util/ArrayList;Lf27;Lcy0;Lzv1;Ljava/lang/String;JLny6;Lh07;Lmt3;Z)Lky6;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v4, Lez6;

    .line 151
    .line 152
    iget-object v2, v2, Llh6;->a:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    move-object/from16 v5, p1

    .line 157
    .line 158
    invoke-direct {v4, v0, v2, v5}, Lez6;-><init>(Lky6;Ljava/lang/String;Liz6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    if-eqz v3, :cond_2

    .line 162
    .line 163
    array-length v0, v3

    .line 164
    invoke-static {v3, v1, v0, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 165
    .line 166
    .line 167
    :cond_2
    return-object v4

    .line 168
    :goto_3
    if-eqz v3, :cond_3

    .line 169
    .line 170
    array-length v2, v3

    .line 171
    invoke-static {v3, v1, v2, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 172
    .line 173
    .line 174
    :cond_3
    throw v0

    .line 175
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 176
    .line 177
    .line 178
    return-object v3
.end method

.method public static d(Lop3;Liz6;Lz84;)Lez6;
    .locals 11

    .line 1
    iget-object v0, p0, Lop3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lod2;

    .line 4
    .line 5
    sget-object v1, Lgz6;->i:Lgz6;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lvy6;->m:Lvy6;

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v1, v0, Lfz6;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    check-cast v0, Lfz6;

    .line 23
    .line 24
    iget-object v0, v0, Lfz6;->i:[C

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Luy6;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Luy6;-><init>([C)V

    .line 34
    .line 35
    .line 36
    move-object v10, v1

    .line 37
    move-object v1, v0

    .line 38
    move-object v0, v10

    .line 39
    :goto_0
    const/4 v3, 0x0

    .line 40
    :try_start_0
    invoke-static {p0, v0, p1}, Lmz6;->B(Lop3;Lzv1;Liz6;)Li17;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v4, p0, Lop3;->q:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lh07;

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v2, Llz6;

    .line 52
    .line 53
    invoke-direct {v2, v4}, Llz6;-><init>(Lh07;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {p2, v0, v2}, Lz84;->createSba(Li17;Le94;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    const-string v7, "create"

    .line 61
    .line 62
    iget-object v0, p0, Lop3;->p:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v9, v0

    .line 65
    check-cast v9, Lbt3;

    .line 66
    .line 67
    move-object v8, p1

    .line 68
    move-object v4, p2

    .line 69
    invoke-static/range {v4 .. v9}, Lmz6;->E(Lz84;JLjava/lang/String;Liz6;Lbt3;)Lo17;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Lez6;

    .line 74
    .line 75
    iget-object p0, p0, Lop3;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lq63;

    .line 78
    .line 79
    invoke-static {v4, p0}, Lmz6;->s(Lz84;Lq63;)Lky6;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-object p1, p1, Lo17;->p:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {p2, p0, p1, v8}, Lez6;-><init>(Lky6;Ljava/lang/String;Liz6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    array-length p0, v1

    .line 91
    invoke-static {v1, v3, p0, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-object p2

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object p0, v0

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    array-length p1, v1

    .line 100
    invoke-static {v1, v3, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 101
    .line 102
    .line 103
    :cond_3
    throw p0

    .line 104
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 105
    .line 106
    .line 107
    return-object v2
.end method

.method public static e(Lq63;Lq63;[CLxp1;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lq63;->j()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lq63;->h()Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_4

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_3

    .line 32
    :cond_2
    :goto_0
    new-instance v3, Lhz6;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lq63;->p()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v8, 0x0

    .line 39
    const/16 v9, 0x18

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x0

    .line 43
    move-object/from16 v5, p0

    .line 44
    .line 45
    invoke-direct/range {v3 .. v9}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v8, Lf27;->Basic:Lf27;

    .line 53
    .line 54
    invoke-static/range {p3 .. p3}, Lmz6;->D(Lxp1;)Lcy0;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    new-instance v0, Lfz6;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lfz6;-><init>([C)V

    .line 63
    .line 64
    .line 65
    :goto_1
    move-object v10, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    sget-object v0, Lgz6;->i:Lgz6;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_2
    sget-object v12, Liz6;->Auto:Liz6;

    .line 71
    .line 72
    new-instance v4, Lop3;

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    const/16 v15, 0x300

    .line 78
    .line 79
    move-object/from16 v5, p1

    .line 80
    .line 81
    move-object/from16 v11, p4

    .line 82
    .line 83
    invoke-direct/range {v4 .. v15}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Lmz6;->b(Lop3;)Lez6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    array-length v0, v1

    .line 92
    invoke-static {v1, v2, v0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void

    .line 96
    :goto_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lq63;->h()Z

    .line 97
    .line 98
    .line 99
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_4
    if-eqz v1, :cond_5

    .line 101
    .line 102
    array-length v3, v1

    .line 103
    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 104
    .line 105
    .line 106
    :cond_5
    throw v0
.end method

.method public static f(Ljd0;)Ljz6;
    .locals 14

    .line 1
    iget-object v0, p0, Ljd0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq63;

    .line 4
    .line 5
    iget-object v1, p0, Ljd0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lq63;

    .line 8
    .line 9
    iget-object v2, p0, Ljd0;->n:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Liz6;

    .line 12
    .line 13
    iget-object v3, p0, Ljd0;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Liu;

    .line 16
    .line 17
    sget-object v4, Lkz6;->a:[I

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    aget v5, v4, v5

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x4

    .line 27
    if-ne v5, v7, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1}, Lq63;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v5, 0x0

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lq63;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v2, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move v2, v6

    .line 46
    :goto_1
    if-eqz v3, :cond_2

    .line 47
    .line 48
    sget-object v8, Liu;->APP:Liu;

    .line 49
    .line 50
    if-eq v3, v8, :cond_2

    .line 51
    .line 52
    sget-object v8, Liu;->MEDIA:Liu;

    .line 53
    .line 54
    if-eq v3, v8, :cond_2

    .line 55
    .line 56
    move v5, v6

    .line 57
    :cond_2
    invoke-static {v3, v2, v5}, Lmz6;->w(Liu;ZZ)Liz6;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_3
    move-object v10, v2

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    :cond_4
    const-string v2, "none"

    .line 71
    .line 72
    :cond_5
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lq63;->v()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v3, p0, Ljd0;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    const-string v3, "auto"

    .line 87
    .line 88
    :cond_6
    const-string v5, " archive="

    .line 89
    .line 90
    const-string v8, " target="

    .line 91
    .line 92
    const-string v9, "appPart="

    .line 93
    .line 94
    invoke-static {v9, v2, v5, v1, v8}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, " entry="

    .line 99
    .line 100
    invoke-static {v1, v0, v2, v3}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    iget-object v0, p0, Ljd0;->d:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v11, v0

    .line 107
    check-cast v11, Liu;

    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    aget v0, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    const-string v1, "extract"

    .line 116
    .line 117
    if-eq v0, v6, :cond_a

    .line 118
    .line 119
    const/4 v2, 0x2

    .line 120
    if-eq v0, v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x3

    .line 123
    if-eq v0, v2, :cond_8

    .line 124
    .line 125
    if-eq v0, v7, :cond_7

    .line 126
    .line 127
    :try_start_1
    new-instance p0, Lmn5;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object p0, v0

    .line 135
    move-object v13, p0

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string v0, "Auto execution mode must be resolved before SBA extract"

    .line 140
    .line 141
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_8
    invoke-static {v1}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {p0, v10, v0}, Lmz6;->i(Ljd0;Liz6;Lz84;)Ljz6;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    goto :goto_2

    .line 154
    :cond_9
    iget-object v0, p0, Ljd0;->p:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lbt3;

    .line 157
    .line 158
    new-instance v2, Lqm;

    .line 159
    .line 160
    const/16 v3, 0x11

    .line 161
    .line 162
    invoke-direct {v2, v3}, Lqm;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Lnj2;

    .line 166
    .line 167
    const/4 v4, 0x5

    .line 168
    invoke-direct {v3, v4, p0, v10}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v0, v2, v3}, Lmz6;->z(Ljava/lang/String;Lbt3;Lbt3;Lmt3;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Ljz6;

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_a
    invoke-static {p0, v10}, Lmz6;->h(Ljd0;Liz6;)Ljz6;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    :goto_2
    iget-object v0, p0, Ljz6;->a:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v1, v10, v12, v0}, Lmz6;->q(Ljava/lang/String;Liz6;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :goto_3
    const-string v8, "extract"

    .line 189
    .line 190
    const-string v9, "sba"

    .line 191
    .line 192
    invoke-static/range {v8 .. v13}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    throw v13
.end method

.method public static g(Lmt3;)Lqo6;
    .locals 3

    .line 1
    new-instance v0, Lhj;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Le07;->a:Le07;

    .line 9
    .line 10
    new-instance v1, Lmy6;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lmy6;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lqo6;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, v2, v0, v1}, Lqo6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static h(Ljd0;Liz6;)Ljz6;
    .locals 14

    .line 1
    iget-object v0, p0, Ljd0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [C

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    move-object v5, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const/4 v13, 0x0

    .line 17
    :try_start_0
    new-instance v0, Llh6;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Ljd0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lq63;

    .line 25
    .line 26
    invoke-static {v1}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Ljd0;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lq63;

    .line 33
    .line 34
    invoke-static {v2}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Ljd0;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, p0, Ljd0;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Lf27;

    .line 45
    .line 46
    iget-object v6, p0, Ljd0;->k:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Ljava/util/List;

    .line 49
    .line 50
    new-instance v9, Lbb;

    .line 51
    .line 52
    const/4 v7, 0x6

    .line 53
    invoke-direct {v9, p0, v7}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Ljd0;->q:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v10, p0

    .line 59
    check-cast v10, Lh07;

    .line 60
    .line 61
    new-instance v11, Lro6;

    .line 62
    .line 63
    invoke-direct {v11, v0}, Lro6;-><init>(Llh6;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v7, 0x7d0

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    invoke-static/range {v1 .. v12}, Ltu0;->k(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lf27;[CLjava/util/List;JLny6;Lh07;Lmt3;Z)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Ljz6;

    .line 73
    .line 74
    iget-object v0, v0, Llh6;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0, v0, p1}, Ljz6;-><init>(Ljava/lang/String;Liz6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    array-length p1, v5

    .line 84
    invoke-static {v5, v13, p1, v13}, Ljava/util/Arrays;->fill([CIIC)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-object p0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p0, v0

    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    array-length p1, v5

    .line 93
    invoke-static {v5, v13, p1, v13}, Ljava/util/Arrays;->fill([CIIC)V

    .line 94
    .line 95
    .line 96
    :cond_2
    throw p0
.end method

.method public static i(Ljd0;Liz6;Lz84;)Ljz6;
    .locals 10

    .line 1
    iget-object v0, p0, Ljd0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    :try_start_0
    invoke-static {p0, v2, p1}, Lmz6;->C(Ljd0;[CLiz6;)Lm17;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v4, p0, Ljd0;->q:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Lh07;

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Llz6;

    .line 29
    .line 30
    invoke-direct {v1, v4}, Llz6;-><init>(Lh07;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-interface {p2, v0, v1}, Lz84;->extractSba(Lm17;Le94;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const-string v7, "extract"

    .line 38
    .line 39
    iget-object p0, p0, Ljd0;->p:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v9, p0

    .line 42
    check-cast v9, Lbt3;

    .line 43
    .line 44
    move-object v8, p1

    .line 45
    move-object v4, p2

    .line 46
    invoke-static/range {v4 .. v9}, Lmz6;->E(Lz84;JLjava/lang/String;Liz6;Lbt3;)Lo17;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ljz6;

    .line 51
    .line 52
    iget-object p0, p0, Lo17;->p:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p1, p0, v8}, Ljz6;-><init>(Ljava/lang/String;Liz6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    array-length p0, v2

    .line 60
    invoke-static {v2, v3, p0, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-object p1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    array-length p1, v2

    .line 69
    invoke-static {v2, v3, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 70
    .line 71
    .line 72
    :cond_3
    throw p0
.end method

.method public static j(Lq63;Lq63;Ljava/util/ArrayList;Ljava/util/List;)Ljz6;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static/range {p0 .. p0}, Lmz6;->m(Lq63;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v4, v3

    .line 31
    check-cast v4, [C

    .line 32
    .line 33
    array-length v4, v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    move-object v0, v1

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v0, v1

    .line 60
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_8

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, [C

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    array-length v3, v0

    .line 75
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    move-object v9, v1

    .line 82
    :goto_3
    const/4 v15, 0x0

    .line 83
    :try_start_0
    new-instance v3, Ljd0;

    .line 84
    .line 85
    sget-object v8, Lf27;->Basic:Lf27;

    .line 86
    .line 87
    sget-object v11, Liz6;->Auto:Liz6;

    .line 88
    .line 89
    const/4 v13, 0x0

    .line 90
    const/16 v14, 0x300

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    move-object/from16 v4, p0

    .line 96
    .line 97
    move-object/from16 v5, p1

    .line 98
    .line 99
    move-object/from16 v10, p3

    .line 100
    .line 101
    invoke-direct/range {v3 .. v14}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Lmz6;->f(Ljd0;)Ljz6;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catch Lsz6; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v9, :cond_6

    .line 109
    .line 110
    array-length v1, v9

    .line 111
    invoke-static {v9, v15, v1, v15}, Ljava/util/Arrays;->fill([CIIC)V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_4

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_5

    .line 119
    :goto_4
    if-eqz v9, :cond_7

    .line 120
    .line 121
    array-length v1, v9

    .line 122
    invoke-static {v9, v15, v1, v15}, Ljava/util/Arrays;->fill([CIIC)V

    .line 123
    .line 124
    .line 125
    :cond_7
    throw v0

    .line 126
    :goto_5
    if-eqz v9, :cond_4

    .line 127
    .line 128
    array-length v3, v9

    .line 129
    invoke-static {v9, v15, v3, v15}, Ljava/util/Arrays;->fill([CIIC)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    if-eqz v0, :cond_9

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    new-instance v0, Lsz6;

    .line 137
    .line 138
    const-string v2, "Invalid SBA password"

    .line 139
    .line 140
    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :goto_6
    throw v0

    .line 144
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lq63;->v()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v2, "Archive is not SBA: "

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object v1
.end method

.method public static k(Lq63;Lq63;Lf27;JLiz6;Llx7;)V
    .locals 23

    .line 1
    new-instance v7, Lov;

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    invoke-direct {v7, v0}, Lov;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v8, Lkz6;->a:[I

    .line 18
    .line 19
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    aget v0, v8, v0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v9, 0x1

    .line 27
    const/4 v10, 0x4

    .line 28
    if-ne v0, v10, :cond_2

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lq63;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lq63;->c()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move v0, v9

    .line 47
    :goto_1
    invoke-static {v1, v0, v2}, Lmz6;->w(Liu;ZZ)Liz6;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v11, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-object/from16 v11, p5

    .line 54
    .line 55
    :goto_2
    new-instance v3, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v6, Lkh6;

    .line 61
    .line 62
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lkh6;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    const-wide/16 v12, 0x1

    .line 71
    .line 72
    cmp-long v0, p3, v12

    .line 73
    .line 74
    if-gez v0, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-wide/from16 v12, p3

    .line 78
    .line 79
    :goto_3
    if-eqz p6, :cond_4

    .line 80
    .line 81
    new-instance v0, Lcz6;

    .line 82
    .line 83
    move-object/from16 v4, p6

    .line 84
    .line 85
    move-wide v1, v12

    .line 86
    invoke-direct/range {v0 .. v6}, Lcz6;-><init>(JLjava/lang/Object;Lrt3;Lkh6;Lkh6;)V

    .line 87
    .line 88
    .line 89
    move-object v6, v4

    .line 90
    move-object v5, v0

    .line 91
    goto :goto_4

    .line 92
    :cond_4
    move-object/from16 v6, p6

    .line 93
    .line 94
    move-object v5, v1

    .line 95
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lq63;->v()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "archive="

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v22

    .line 105
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aget v0, v8, v0

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    if-eq v0, v9, :cond_7

    .line 113
    .line 114
    if-eq v0, v1, :cond_6

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    if-eq v0, v1, :cond_6

    .line 118
    .line 119
    if-eq v0, v10, :cond_5

    .line 120
    .line 121
    new-instance v0, Lmn5;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object v3, v11

    .line 129
    goto :goto_6

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v1, "Auto execution mode must be resolved before tar extract"

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_6
    move-object/from16 v0, p0

    .line 139
    .line 140
    move-object/from16 v1, p1

    .line 141
    .line 142
    move-object/from16 v2, p2

    .line 143
    .line 144
    move-object v4, v7

    .line 145
    move-object v3, v11

    .line 146
    :try_start_1
    invoke-static/range {v0 .. v5}, Lmz6;->l(Lq63;Lq63;Lf27;Liz6;Lbt3;Lcz6;)Ld27;

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    goto :goto_6

    .line 152
    :cond_7
    move-object v4, v7

    .line 153
    move-object v3, v11

    .line 154
    invoke-static/range {p0 .. p0}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    invoke-static/range {p1 .. p1}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    new-instance v0, Lnb;

    .line 163
    .line 164
    invoke-direct {v0, v4, v1}, Lnb;-><init>(Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    const-wide/16 v18, 0x7d0

    .line 170
    .line 171
    move-object/from16 v16, p2

    .line 172
    .line 173
    move-object/from16 v20, v0

    .line 174
    .line 175
    move-object/from16 v21, v5

    .line 176
    .line 177
    invoke-static/range {v14 .. v21}, Lz85;->h(Ljava/io/File;Ljava/io/File;Lf27;Ljava/util/List;JLny6;Lh07;)Ld27;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    .line 179
    .line 180
    :goto_5
    if-eqz v6, :cond_8

    .line 181
    .line 182
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-wide/16 v2, 0x0

    .line 191
    .line 192
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v6, v0, v1, v2}, Llx7;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_8
    return-void

    .line 200
    :goto_6
    const-string v1, "extract"

    .line 201
    .line 202
    const-string v2, "raw_tar"

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    move-object/from16 p5, v0

    .line 206
    .line 207
    move-object/from16 p0, v1

    .line 208
    .line 209
    move-object/from16 p1, v2

    .line 210
    .line 211
    move-object/from16 p2, v3

    .line 212
    .line 213
    move-object/from16 p3, v4

    .line 214
    .line 215
    move-object/from16 p4, v22

    .line 216
    .line 217
    invoke-static/range {p0 .. p5}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method

.method public static l(Lq63;Lq63;Lf27;Liz6;Lbt3;Lcz6;)Ld27;
    .locals 20

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    sget-object v1, Lkz6;->a:[I

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    aget v1, v1, v2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "tar extract"

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    if-ne v1, v4, :cond_0

    .line 19
    .line 20
    invoke-static {v3}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    :goto_0
    move-object v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string v0, "Unsupported privileged tar extract mode: "

    .line 29
    .line 30
    move-object/from16 v7, p3

    .line 31
    .line 32
    invoke-static {v7, v0}, Ll0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    move-object/from16 v7, p3

    .line 37
    .line 38
    invoke-static {v3}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lq63;->v()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    sget-object v1, Lkz6;->b:[I

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    aget v1, v1, v6

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    if-eq v1, v6, :cond_4

    .line 61
    .line 62
    if-eq v1, v5, :cond_3

    .line 63
    .line 64
    if-ne v1, v4, :cond_2

    .line 65
    .line 66
    :goto_2
    move v11, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_3
    move v11, v6

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/4 v5, 0x0

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    new-instance v8, Ls17;

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    const-wide/16 v13, 0x7d0

    .line 80
    .line 81
    invoke-direct/range {v8 .. v14}, Ls17;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;J)V

    .line 82
    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    new-instance v2, Llz6;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Llz6;-><init>(Lh07;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    invoke-interface {v3, v8, v2}, Lz84;->extractTar(Ls17;Le94;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    const-string v6, "tar extract"

    .line 97
    .line 98
    move-object/from16 v8, p4

    .line 99
    .line 100
    invoke-static/range {v3 .. v8}, Lmz6;->E(Lz84;JLjava/lang/String;Liz6;Lbt3;)Lo17;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ld27;

    .line 105
    .line 106
    iget-wide v2, v0, Lo17;->k:J

    .line 107
    .line 108
    iget-wide v4, v0, Lo17;->q:J

    .line 109
    .line 110
    iget-wide v6, v0, Lo17;->r:J

    .line 111
    .line 112
    iget-wide v8, v0, Lo17;->t:J

    .line 113
    .line 114
    iget-wide v10, v0, Lo17;->x:J

    .line 115
    .line 116
    iget-wide v12, v0, Lo17;->y:J

    .line 117
    .line 118
    iget-wide v14, v0, Lo17;->G:J

    .line 119
    .line 120
    move-object/from16 p0, v1

    .line 121
    .line 122
    move-wide/from16 v16, v2

    .line 123
    .line 124
    iget-wide v1, v0, Lo17;->H:J

    .line 125
    .line 126
    move-wide/from16 v18, v1

    .line 127
    .line 128
    iget-wide v0, v0, Lo17;->I:J

    .line 129
    .line 130
    move-wide/from16 v2, v16

    .line 131
    .line 132
    move-wide/from16 v16, v18

    .line 133
    .line 134
    move-wide/from16 v18, v0

    .line 135
    .line 136
    move-object/from16 v1, p0

    .line 137
    .line 138
    invoke-direct/range {v1 .. v19}, Ld27;-><init>(JJJJJJJJJ)V

    .line 139
    .line 140
    .line 141
    return-object v1
.end method

.method public static m(Lq63;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lmz6;->x(Lq63;)Liz6;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lkz6;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v0, v3, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    const-string v4, "metadata"

    .line 23
    .line 24
    if-eq v0, v3, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v0, v3, :cond_1

    .line 28
    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lq;->j()V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    const-string p0, "Auto execution mode must be resolved before SBA metadata read"

    .line 36
    .line 37
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    invoke-static {v4}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {v0, p0}, Lz84;->isSbaFile(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_2
    invoke-static {v4}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {v0, p0}, Lz84;->isSbaFile(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_3
    invoke-static {p0}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    sget-object v0, Lzv1;->c:[B

    .line 76
    .line 77
    const-wide/16 v6, 0x4

    .line 78
    .line 79
    cmp-long v4, v4, v6

    .line 80
    .line 81
    if-gez v4, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 85
    .line 86
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :try_start_1
    new-array p0, v2, [B

    .line 90
    .line 91
    invoke-virtual {v4, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-ne v5, v2, :cond_5

    .line 96
    .line 97
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 98
    .line 99
    .line 100
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    move v3, v1

    .line 107
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    :try_start_4
    invoke-static {v4, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :catch_0
    :goto_2
    return v1
.end method

.method public static n(Lq63;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lmz6;->x(Lq63;)Liz6;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "archive="

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :try_start_0
    sget-object v0, Lkz6;->a:[I

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const-string v1, "entry listing"

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-eq v0, v3, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    if-eq v0, p0, :cond_0

    .line 39
    .line 40
    :try_start_1
    new-instance p0, Lmn5;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    move-object v5, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "Auto execution mode must be resolved before SBA entry listing"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    invoke-static {v1}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Lmz6;->s(Lz84;Lq63;)Lky6;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p0, p0, Lky6;->i:Ljava/util/List;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    invoke-static {v1}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, p0}, Lmz6;->s(Lz84;Lq63;)Lky6;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p0, p0, Lky6;->i:Ljava/util/List;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    invoke-static {p0}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance v1, Lz07;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lz07;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v1}, Lz07;->j()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :try_start_3
    invoke-virtual {v1}, Lz07;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    move-object p0, v0

    .line 99
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    :catchall_2
    move-exception v0

    .line 101
    :try_start_5
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    :goto_0
    const-string v0, "list_entries"

    .line 106
    .line 107
    const-string v1, "sba"

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-static/range {v0 .. v5}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v5
.end method

.method public static o(Lq63;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lmz6;->x(Lq63;)Liz6;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "archive="

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :try_start_0
    sget-object v0, Lkz6;->a:[I

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const-string v3, "tar listing"

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    if-eq v0, p0, :cond_0

    .line 39
    .line 40
    :try_start_1
    new-instance p0, Lmn5;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    move-object v5, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "Auto execution mode must be resolved before tar listing"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    invoke-static {v3}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Lmz6;->p(Lz84;Lq63;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    invoke-static {v3}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p0}, Lmz6;->p(Lz84;Lq63;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_3
    invoke-static {p0}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lz85;->z(Ljava/io/File;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    return-object p0

    .line 85
    :goto_0
    const-string v0, "list_tar_entries"

    .line 86
    .line 87
    const-string v1, "raw_tar"

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-static/range {v0 .. v5}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v5
.end method

.method public static p(Lz84;Lq63;)Ljava/util/ArrayList;
    .locals 22

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ltz v2, :cond_6

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    move-object/from16 v5, p0

    .line 16
    .line 17
    invoke-interface {v5, v3, v2, v4}, Lz84;->listTarEntries(Ljava/lang/String;II)Lq17;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v4, v3, Lq17;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v6, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v7, 0xa

    .line 29
    .line 30
    invoke-static {v4, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v8, 0x0

    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lp17;

    .line 53
    .line 54
    new-instance v9, Lz17;

    .line 55
    .line 56
    iget-object v10, v7, Lp17;->a:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v11, v7, Lp17;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {}, Lc27;->values()[Lc27;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    array-length v13, v12

    .line 65
    const/4 v14, 0x0

    .line 66
    :goto_2
    if-ge v14, v13, :cond_1

    .line 67
    .line 68
    aget-object v15, v12, v14

    .line 69
    .line 70
    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    move-object v8, v15

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_3
    if-nez v8, :cond_2

    .line 86
    .line 87
    sget-object v8, Lc27;->Other:Lc27;

    .line 88
    .line 89
    :cond_2
    move-object v11, v8

    .line 90
    iget-object v12, v7, Lp17;->c:Ljava/lang/String;

    .line 91
    .line 92
    iget v13, v7, Lp17;->d:I

    .line 93
    .line 94
    iget-wide v14, v7, Lp17;->e:J

    .line 95
    .line 96
    move-object v1, v4

    .line 97
    iget-wide v4, v7, Lp17;->f:J

    .line 98
    .line 99
    move-wide/from16 v16, v4

    .line 100
    .line 101
    iget-wide v4, v7, Lp17;->k:J

    .line 102
    .line 103
    iget-boolean v8, v7, Lp17;->n:Z

    .line 104
    .line 105
    iget-object v7, v7, Lp17;->p:Ljava/util/ArrayList;

    .line 106
    .line 107
    move-wide/from16 v18, v4

    .line 108
    .line 109
    move-object/from16 v21, v7

    .line 110
    .line 111
    move/from16 v20, v8

    .line 112
    .line 113
    invoke-direct/range {v9 .. v21}, Lz17;-><init>(Ljava/lang/String;Lc27;Ljava/lang/String;IJJJZLjava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-object/from16 v5, p0

    .line 120
    .line 121
    move-object v4, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-static {v6, v0}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 124
    .line 125
    .line 126
    iget v1, v3, Lq17;->b:I

    .line 127
    .line 128
    if-ltz v1, :cond_5

    .line 129
    .line 130
    if-le v1, v2, :cond_4

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    const-string v0, "SBA root tar list did not advance: "

    .line 134
    .line 135
    invoke-static {v1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v8

    .line 143
    :cond_5
    :goto_4
    move v2, v1

    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_6
    return-object v0
.end method

.method public static q(Ljava/lang/String;Liz6;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    invoke-static {p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

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
    const-string v0, "warning"

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {p3, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "SBA "

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " warning mode="

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " "

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, "\n"

    .line 46
    .line 47
    invoke-static {v0, p2, p0, p3}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v5, 0x4

    .line 52
    const/4 v6, 0x0

    .line 53
    const-string v2, "SbaHelper"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p5

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "SBA "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " failed mode="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-object/from16 v9, p2

    .line 23
    .line 24
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, " "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-object/from16 v3, p4

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v10, v5, Lzz6;

    .line 42
    .line 43
    if-eqz v10, :cond_0

    .line 44
    .line 45
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, ": "

    .line 52
    .line 53
    invoke-static {v4, v3, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    const/4 v15, 0x4

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const-string v12, "SbaHelper"

    .line 61
    .line 62
    const/4 v14, 0x0

    .line 63
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 68
    .line 69
    const/16 v7, 0x8

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    const-string v3, "SbaHelper"

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    new-instance v11, Lbz6;

    .line 79
    .line 80
    const-string v16, "recordExceptionSafe(Ljava/lang/Throwable;Ljava/util/Map;)V"

    .line 81
    .line 82
    const/16 v17, 0x0

    .line 83
    .line 84
    const/4 v12, 0x2

    .line 85
    sget-object v13, Ln02;->a:Ln02;

    .line 86
    .line 87
    const-class v14, Ln02;

    .line 88
    .line 89
    const-string v15, "recordExceptionSafe"

    .line 90
    .line 91
    invoke-direct/range {v11 .. v17}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string v2, "Unexpected SBA "

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-nez v10, :cond_c

    .line 100
    .line 101
    instance-of v3, v5, Lsz6;

    .line 102
    .line 103
    if-eqz v3, :cond_1

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_1
    const-string v3, "raw_tar"

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    const-string v3, "list_tar_entries"

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_2
    const-string v3, "extract"

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    instance-of v3, v5, Lrz6;

    .line 134
    .line 135
    if-nez v3, :cond_c

    .line 136
    .line 137
    instance-of v3, v5, Lnz6;

    .line 138
    .line 139
    if-nez v3, :cond_c

    .line 140
    .line 141
    instance-of v3, v5, Lpz6;

    .line 142
    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_3
    new-instance v12, Lpw5;

    .line 148
    .line 149
    const-string v3, "sba_container"

    .line 150
    .line 151
    invoke-direct {v12, v3, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    new-instance v13, Lpw5;

    .line 155
    .line 156
    const-string v1, "sba_operation"

    .line 157
    .line 158
    invoke-direct {v13, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v14, Lpw5;

    .line 166
    .line 167
    const-string v3, "sba_execution_mode"

    .line 168
    .line 169
    invoke-direct {v14, v3, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    if-eqz p3, :cond_4

    .line 173
    .line 174
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-nez v1, :cond_5

    .line 179
    .line 180
    :cond_4
    const-string v1, "none"

    .line 181
    .line 182
    :cond_5
    new-instance v15, Lpw5;

    .line 183
    .line 184
    const-string v3, "sba_app_part"

    .line 185
    .line 186
    invoke-direct {v15, v3, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    instance-of v1, v5, Lrz6;

    .line 190
    .line 191
    if-nez v1, :cond_b

    .line 192
    .line 193
    instance-of v1, v5, Lnz6;

    .line 194
    .line 195
    if-nez v1, :cond_b

    .line 196
    .line 197
    instance-of v1, v5, Lqz6;

    .line 198
    .line 199
    if-nez v1, :cond_b

    .line 200
    .line 201
    instance-of v1, v5, Lpz6;

    .line 202
    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_6
    instance-of v1, v5, Lj27;

    .line 207
    .line 208
    if-nez v1, :cond_a

    .line 209
    .line 210
    instance-of v1, v5, Li27;

    .line 211
    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    instance-of v1, v5, Lh27;

    .line 216
    .line 217
    if-eqz v1, :cond_8

    .line 218
    .line 219
    const-string v1, "archive_safety"

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_8
    instance-of v1, v5, Ljava/io/IOException;

    .line 223
    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    const-string v1, "runtime_io"

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_9
    const-string v1, "internal"

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    :goto_1
    const-string v1, "compatibility"

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_b
    :goto_2
    const-string v1, "archive_validity"

    .line 236
    .line 237
    :goto_3
    new-instance v3, Lpw5;

    .line 238
    .line 239
    const-string v4, "sba_failure_category"

    .line 240
    .line 241
    invoke-direct {v3, v4, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v4, Lpw5;

    .line 253
    .line 254
    const-string v6, "sba_exception_class"

    .line 255
    .line 256
    invoke-direct {v4, v6, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lpw5;

    .line 260
    .line 261
    const-string v6, "sba_backend"

    .line 262
    .line 263
    const-string v7, "swifttar"

    .line 264
    .line 265
    invoke-direct {v1, v6, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v18, v1

    .line 269
    .line 270
    move-object/from16 v16, v3

    .line 271
    .line 272
    move-object/from16 v17, v4

    .line 273
    .line 274
    filled-new-array/range {v12 .. v18}, [Lpw5;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :try_start_0
    new-instance v3, Lyz6;

    .line 283
    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v0, " failure"

    .line 293
    .line 294
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-direct {v3, v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v11, v3, v1}, Lbz6;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .line 306
    .line 307
    :catchall_0
    :cond_c
    :goto_4
    return-void
.end method

.method public static s(Lz84;Lq63;)Lky6;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x80

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, v3}, Lz84;->readSbaInfoPage(Ljava/lang/String;II)Lf17;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget v4, v1, Lf17;->q:I

    .line 18
    .line 19
    iget-object v6, v1, Lf17;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v7, v1, Lf17;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget v8, v1, Lf17;->c:I

    .line 24
    .line 25
    iget-wide v9, v1, Lf17;->d:J

    .line 26
    .line 27
    iget-object v11, v1, Lf17;->e:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, v1, Lf17;->f:Ld17;

    .line 30
    .line 31
    new-instance v12, Lgy6;

    .line 32
    .line 33
    iget v13, v5, Ld17;->a:I

    .line 34
    .line 35
    iget v14, v5, Ld17;->b:I

    .line 36
    .line 37
    iget-wide v2, v5, Ld17;->c:J

    .line 38
    .line 39
    iget-object v15, v5, Ld17;->d:Lg17;

    .line 40
    .line 41
    invoke-virtual {v15}, Lg17;->c()Lcy0;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    iget v15, v5, Ld17;->e:I

    .line 46
    .line 47
    move-wide/from16 v18, v2

    .line 48
    .line 49
    iget v2, v5, Ld17;->f:I

    .line 50
    .line 51
    iget-object v3, v5, Ld17;->k:Ljava/lang/String;

    .line 52
    .line 53
    move/from16 v20, v2

    .line 54
    .line 55
    iget v2, v5, Ld17;->n:I

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, v3}, Lwx3;->D(Ljava/lang/Integer;Ljava/lang/String;)Lwy6;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget v3, v5, Ld17;->n:I

    .line 66
    .line 67
    move-object/from16 v21, v2

    .line 68
    .line 69
    iget v2, v5, Ld17;->p:I

    .line 70
    .line 71
    move/from16 v22, v2

    .line 72
    .line 73
    iget v2, v5, Ld17;->q:I

    .line 74
    .line 75
    move/from16 v23, v2

    .line 76
    .line 77
    iget v2, v5, Ld17;->r:I

    .line 78
    .line 79
    iget-object v5, v5, Ld17;->t:Ln17;

    .line 80
    .line 81
    new-instance v25, Ltz6;

    .line 82
    .line 83
    move/from16 v24, v2

    .line 84
    .line 85
    iget-object v2, v5, Ln17;->a:Ljava/lang/String;

    .line 86
    .line 87
    move/from16 v32, v3

    .line 88
    .line 89
    iget v3, v5, Ln17;->b:I

    .line 90
    .line 91
    move-object/from16 v33, v6

    .line 92
    .line 93
    invoke-static {}, Luz6;->values()[Luz6;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    move-object/from16 v34, v7

    .line 98
    .line 99
    array-length v7, v6

    .line 100
    move-object/from16 v26, v6

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    :goto_0
    const/16 v35, 0x0

    .line 104
    .line 105
    if-ge v6, v7, :cond_1

    .line 106
    .line 107
    aget-object v16, v26, v6

    .line 108
    .line 109
    move/from16 v27, v6

    .line 110
    .line 111
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v6, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_0

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v6, v27, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move-object/from16 v16, v35

    .line 126
    .line 127
    :goto_1
    if-nez v16, :cond_2

    .line 128
    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    if-eq v3, v2, :cond_3

    .line 133
    .line 134
    sget-object v16, Luz6;->None:Luz6;

    .line 135
    .line 136
    :cond_2
    :goto_2
    move-object/from16 v27, v16

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    sget-object v16, Luz6;->Argon2id:Luz6;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    sget-object v16, Luz6;->None:Luz6;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_3
    iget v2, v5, Ln17;->b:I

    .line 146
    .line 147
    iget v3, v5, Ln17;->c:I

    .line 148
    .line 149
    iget-object v6, v5, Ln17;->d:Ljava/lang/Integer;

    .line 150
    .line 151
    iget-object v5, v5, Ln17;->e:Ljava/lang/Integer;

    .line 152
    .line 153
    move/from16 v28, v2

    .line 154
    .line 155
    move/from16 v29, v3

    .line 156
    .line 157
    move-object/from16 v31, v5

    .line 158
    .line 159
    move-object/from16 v30, v6

    .line 160
    .line 161
    move-object/from16 v26, v25

    .line 162
    .line 163
    invoke-direct/range {v26 .. v31}, Ltz6;-><init>(Luz6;IILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 164
    .line 165
    .line 166
    move-wide/from16 v36, v18

    .line 167
    .line 168
    move/from16 v18, v15

    .line 169
    .line 170
    move-wide/from16 v15, v36

    .line 171
    .line 172
    move/from16 v19, v20

    .line 173
    .line 174
    move-object/from16 v20, v21

    .line 175
    .line 176
    move/from16 v21, v32

    .line 177
    .line 178
    invoke-direct/range {v12 .. v25}, Lgy6;-><init>(IIJLcy0;IILwy6;IIIILtz6;)V

    .line 179
    .line 180
    .line 181
    iget-object v2, v1, Lf17;->k:Le17;

    .line 182
    .line 183
    new-instance v13, Lhy6;

    .line 184
    .line 185
    iget-wide v14, v2, Le17;->a:J

    .line 186
    .line 187
    iget-wide v5, v2, Le17;->b:J

    .line 188
    .line 189
    iget v3, v2, Le17;->c:I

    .line 190
    .line 191
    iget v7, v2, Le17;->d:I

    .line 192
    .line 193
    move/from16 v18, v3

    .line 194
    .line 195
    iget-object v3, v2, Le17;->e:Ljava/lang/String;

    .line 196
    .line 197
    iget v2, v2, Le17;->f:I

    .line 198
    .line 199
    move/from16 v21, v2

    .line 200
    .line 201
    move-object/from16 v20, v3

    .line 202
    .line 203
    move-wide/from16 v16, v5

    .line 204
    .line 205
    move/from16 v19, v7

    .line 206
    .line 207
    invoke-direct/range {v13 .. v21}, Lhy6;-><init>(JJIILjava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v1, Lf17;->n:Lc17;

    .line 211
    .line 212
    new-instance v14, Lfy6;

    .line 213
    .line 214
    iget-wide v5, v2, Lc17;->a:J

    .line 215
    .line 216
    iget v15, v2, Lc17;->b:I

    .line 217
    .line 218
    iget v3, v2, Lc17;->c:I

    .line 219
    .line 220
    iget-object v2, v2, Lc17;->d:Ljava/lang/String;

    .line 221
    .line 222
    move-object/from16 v19, v2

    .line 223
    .line 224
    move/from16 v16, v3

    .line 225
    .line 226
    move-wide/from16 v17, v5

    .line 227
    .line 228
    invoke-direct/range {v14 .. v19}, Lfy6;-><init>(IIJLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v1, Lf17;->p:Ljava/util/ArrayList;

    .line 232
    .line 233
    new-instance v15, Ljava/util/ArrayList;

    .line 234
    .line 235
    const/16 v2, 0xa

    .line 236
    .line 237
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_5

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Lk17;

    .line 259
    .line 260
    invoke-virtual {v3}, Lk17;->c()Lxy6;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_5
    new-instance v5, Lky6;

    .line 269
    .line 270
    move-object/from16 v6, v33

    .line 271
    .line 272
    move-object/from16 v7, v34

    .line 273
    .line 274
    invoke-direct/range {v5 .. v15}, Lky6;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lgy6;Lhy6;Lfy6;Ljava/util/List;)V

    .line 275
    .line 276
    .line 277
    const/4 v1, -0x1

    .line 278
    const-string v3, " actual="

    .line 279
    .line 280
    const-string v6, "SBA root archive info entry count mismatch: expected="

    .line 281
    .line 282
    if-ne v4, v1, :cond_7

    .line 283
    .line 284
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    iget v1, v13, Lhy6;->f:I

    .line 289
    .line 290
    if-ne v0, v1, :cond_6

    .line 291
    .line 292
    return-object v5

    .line 293
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-static {v6, v1, v0, v3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-object v35

    .line 305
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    .line 309
    .line 310
    :goto_5
    if-ltz v4, :cond_b

    .line 311
    .line 312
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const/16 v7, 0x80

    .line 317
    .line 318
    invoke-interface {v0, v1, v4, v7}, Lz84;->readSbaInfoPage(Ljava/lang/String;II)Lf17;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v8, v1, Lf17;->p:Ljava/util/ArrayList;

    .line 326
    .line 327
    new-instance v9, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-static {v8, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    if-eqz v10, :cond_8

    .line 345
    .line 346
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    check-cast v10, Lk17;

    .line 351
    .line 352
    invoke-virtual {v10}, Lk17;->c()Lxy6;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_8
    invoke-static {v9, v11}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 361
    .line 362
    .line 363
    iget v1, v1, Lf17;->q:I

    .line 364
    .line 365
    if-ltz v1, :cond_a

    .line 366
    .line 367
    if-le v1, v4, :cond_9

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_9
    const-string v0, "SBA root archive info page did not advance: "

    .line 371
    .line 372
    invoke-static {v1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    return-object v35

    .line 380
    :cond_a
    :goto_7
    move v4, v1

    .line 381
    goto :goto_5

    .line 382
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    iget-object v9, v5, Lky6;->g:Lhy6;

    .line 387
    .line 388
    iget v1, v9, Lhy6;->f:I

    .line 389
    .line 390
    if-ne v0, v1, :cond_c

    .line 391
    .line 392
    iget-object v2, v5, Lky6;->a:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    iget-object v3, v5, Lky6;->b:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    iget-object v7, v5, Lky6;->e:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    new-instance v1, Lky6;

    .line 408
    .line 409
    iget v4, v5, Lky6;->c:I

    .line 410
    .line 411
    iget-wide v12, v5, Lky6;->d:J

    .line 412
    .line 413
    iget-object v8, v5, Lky6;->f:Lgy6;

    .line 414
    .line 415
    iget-object v10, v5, Lky6;->h:Lfy6;

    .line 416
    .line 417
    move-wide v5, v12

    .line 418
    invoke-direct/range {v1 .. v11}, Lky6;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lgy6;Lhy6;Lfy6;Ljava/util/List;)V

    .line 419
    .line 420
    .line 421
    return-object v1

    .line 422
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-static {v6, v1, v0, v3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    return-object v35
.end method

.method public static t(Lq63;)Lky6;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lmz6;->x(Lq63;)Liz6;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "archive="

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :try_start_0
    sget-object v0, Lkz6;->a:[I

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const-string v1, "metadata"

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-eq v0, v3, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    if-eq v0, p0, :cond_0

    .line 39
    .line 40
    :try_start_1
    new-instance p0, Lmn5;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    move-object v5, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "Auto execution mode must be resolved before SBA metadata read"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    invoke-static {v1}, Lmz6;->v(Ljava/lang/String;)Lz84;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Lmz6;->s(Lz84;Lq63;)Lky6;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    invoke-static {v1}, Lmz6;->u(Ljava/lang/String;)Lz84;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p0}, Lmz6;->s(Lz84;Lq63;)Lky6;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_3
    invoke-static {p0}, Lmz6;->A(Lq63;)Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance v1, Lz07;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lz07;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_2
    invoke-virtual {v1}, Lz07;->A()Lky6;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :try_start_3
    invoke-virtual {v1}, Lz07;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    :catchall_2
    move-exception v0

    .line 97
    :try_start_5
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :goto_0
    const-string v0, "read_info"

    .line 102
    .line 103
    const-string v1, "sba"

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-static/range {v0 .. v5}, Lmz6;->r(Ljava/lang/String;Ljava/lang/String;Liz6;Liu;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v5
.end method

.method public static u(Ljava/lang/String;)Lz84;
    .locals 1

    .line 1
    invoke-static {}, Laq6;->c()Lz84;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "RootService is unavailable for SBA "

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static v(Ljava/lang/String;)Lz84;
    .locals 10

    .line 1
    sget-object v1, Lu17;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lu17;->a:Lz84;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :goto_0
    move-object v0, v2

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sput-object v2, Lu17;->a:Lz84;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :goto_1
    monitor-exit v1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_2
    sget-object v0, Lqe7;->a:Lgv7;

    .line 31
    .line 32
    invoke-static {}, Lle7;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_9

    .line 37
    .line 38
    invoke-static {}, Lqe7;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_3
    invoke-static {}, Lqe7;->a()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/16 v3, 0xd

    .line 51
    .line 52
    if-ge v0, v3, :cond_4

    .line 53
    .line 54
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    const-string v5, "SbaShizukuServiceManager"

    .line 57
    .line 58
    const-string v1, "SBA via Shizuku requires Shizuku v13+; current="

    .line 59
    .line 60
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v8, 0x4

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_4
    monitor-enter v1

    .line 72
    :try_start_1
    sget-object v0, Lu17;->a:Lz84;

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    :goto_2
    move-object v0, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    sput-object v2, Lu17;->a:Lz84;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_3
    if-eqz v0, :cond_7

    .line 93
    .line 94
    :goto_4
    monitor-exit v1

    .line 95
    goto/16 :goto_a

    .line 96
    .line 97
    :cond_7
    :try_start_2
    sget-boolean v0, Lu17;->b:Z

    .line 98
    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    invoke-static {}, Lu17;->a()V

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    move-object p0, v0

    .line 107
    goto :goto_9

    .line 108
    :cond_8
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    const-wide/16 v5, 0x2710

    .line 113
    .line 114
    add-long/2addr v3, v5

    .line 115
    :goto_6
    sget-object v0, Lu17;->a:Lz84;

    .line 116
    .line 117
    if-nez v0, :cond_a

    .line 118
    .line 119
    sget-boolean v0, Lu17;->b:Z

    .line 120
    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    sub-long v5, v3, v5

    .line 128
    .line 129
    const-wide/16 v7, 0x0

    .line 130
    .line 131
    cmp-long v0, v5, v7

    .line 132
    .line 133
    if-lez v0, :cond_a

    .line 134
    .line 135
    :try_start_3
    sget-object v0, Lu17;->c:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    .line 147
    .line 148
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 149
    .line 150
    const-string v4, "SbaShizukuServiceManager"

    .line 151
    .line 152
    const-string v5, "Interrupted while binding Shizuku SBA service"

    .line 153
    .line 154
    const/4 v7, 0x4

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .line 159
    .line 160
    monitor-exit v1

    .line 161
    :cond_9
    :goto_7
    move-object v0, v2

    .line 162
    goto :goto_a

    .line 163
    :cond_a
    :try_start_5
    sget-object v0, Lu17;->a:Lz84;

    .line 164
    .line 165
    if-nez v0, :cond_b

    .line 166
    .line 167
    sget-boolean v0, Lu17;->b:Z

    .line 168
    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    sput-boolean v0, Lu17;->b:Z

    .line 173
    .line 174
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 175
    .line 176
    const-string v4, "SbaShizukuServiceManager"

    .line 177
    .line 178
    const-string v5, "Timed out binding Shizuku SBA service"

    .line 179
    .line 180
    const/4 v7, 0x4

    .line 181
    const/4 v8, 0x0

    .line 182
    const/4 v6, 0x0

    .line 183
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_b
    sget-object v0, Lu17;->a:Lz84;

    .line 187
    .line 188
    if-nez v0, :cond_c

    .line 189
    .line 190
    :goto_8
    move-object v0, v2

    .line 191
    goto :goto_4

    .line 192
    :cond_c
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_d

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_d
    sput-object v2, Lu17;->a:Lz84;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :goto_9
    monitor-exit v1

    .line 207
    throw p0

    .line 208
    :goto_a
    if-eqz v0, :cond_e

    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_e
    const-string v0, "Shizuku SBA service is unavailable for SBA "

    .line 212
    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object v2

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    move-object p0, v0

    .line 223
    monitor-exit v1

    .line 224
    throw p0
.end method

.method public static w(Liu;ZZ)Liz6;
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Liu;->getBackupReq()Lsk0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lsk0;->NONE:Lsk0;

    .line 10
    .line 11
    :cond_1
    if-eqz p0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v1}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_3

    .line 19
    .line 20
    :cond_2
    const-string p0, "operation"

    .line 21
    .line 22
    :cond_3
    sget-object v1, Lmp6;->a:Lmp6;

    .line 23
    .line 24
    sget-boolean v1, Lmp6;->g:Z

    .line 25
    .line 26
    invoke-static {}, Lmp6;->g()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    sget-object p0, Liz6;->Root:Liz6;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_4
    sget-object p2, Lsk0;->ROOT_OR_SHIZUKU:Lsk0;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    const-string v4, "Privileged access is required for SBA "

    .line 44
    .line 45
    if-ne v0, p2, :cond_8

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    sget-object p0, Liz6;->Root:Liz6;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    if-eqz v2, :cond_6

    .line 53
    .line 54
    sget-object p0, Liz6;->Shizuku:Liz6;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_6
    if-nez p1, :cond_7

    .line 58
    .line 59
    sget-object p0, Liz6;->Local:Liz6;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_7
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_8
    sget-object p2, Lsk0;->ROOT:Lsk0;

    .line 71
    .line 72
    if-eq v0, p2, :cond_a

    .line 73
    .line 74
    if-eqz p1, :cond_9

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_9
    sget-object p0, Liz6;->Local:Liz6;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    .line 81
    .line 82
    sget-object p0, Liz6;->Root:Liz6;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_b
    if-eq v0, p2, :cond_d

    .line 86
    .line 87
    if-eqz v2, :cond_c

    .line 88
    .line 89
    sget-object p0, Liz6;->Shizuku:Liz6;

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_c
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v3

    .line 100
    :cond_d
    const-string p1, "Root access is required for SBA "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v3
.end method

.method public static x(Lq63;)Liz6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq63;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Liz6;->Local:Liz6;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 11
    .line 12
    sget-boolean v0, Lmp6;->g:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Liz6;->Root:Liz6;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {}, Lmp6;->g()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object p0, Liz6;->Shizuku:Liz6;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "Privileged access is required for SBA file read: "

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static y(Ljava/lang/String;Liu;Liz6;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Liz6;->Root:Liz6;

    .line 2
    .line 3
    if-ne p2, v0, :cond_5

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    sget-object p2, Liu;->APP:Liu;

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string p1, "/storage/emulated/"

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-static {p0, p1, p2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-static {p0, p1}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v0, 0x2f

    .line 27
    .line 28
    invoke-static {p1, v0}, Lnq7;->D0(Ljava/lang/String;C)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge p2, v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string p0, "/data/media/"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_5
    :goto_1
    return-object p0
.end method

.method public static z(Ljava/lang/String;Lbt3;Lbt3;Lmt3;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :try_start_0
    invoke-interface {p3, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move-object v1, v0

    .line 15
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "SBA Root "

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    const-string v0, "RootService disconnected during SBA "

    .line 32
    .line 33
    const-string v4, "; retrying once"

    .line 34
    .line 35
    invoke-static {v0, p0, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, "SbaHelper"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    :try_start_1
    invoke-interface {p3, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    return-object p0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    invoke-static {p0, v1}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_0
    new-instance p1, Lzz6;

    .line 75
    .line 76
    const-string p2, " cancelled while reconnecting RootService"

    .line 77
    .line 78
    invoke-static {v2, p0, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p1, p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    new-instance p1, Lzz6;

    .line 87
    .line 88
    const-string p2, " cancelled after RootService disconnected"

    .line 89
    .line 90
    invoke-static {v2, p0, p2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {p1, p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
