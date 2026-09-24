.class public final Ln92;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lbr2;

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:Z

.field public final n:I

.field public o:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lbr2;Lrf8;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lag8;-><init>(Lrf8;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ln92;->i:Lbr2;

    .line 11
    .line 12
    const-wide/16 v0, 0x7d0

    .line 13
    .line 14
    iput-wide v0, p0, Ln92;->j:J

    .line 15
    .line 16
    const-string p1, "DUploadSession"

    .line 17
    .line 18
    iput-object p1, p0, Ln92;->k:Ljava/lang/String;

    .line 19
    .line 20
    const-string p1, "dropbox_chunk_size"

    .line 21
    .line 22
    const/16 v0, 0x19

    .line 23
    .line 24
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "prefs"

    .line 34
    .line 35
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    :goto_0
    const/16 p1, 0x96

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1, p1}, Ll73;->h(III)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-long v2, p1

    .line 48
    const-wide/32 v4, 0x100000

    .line 49
    .line 50
    .line 51
    mul-long v6, v2, v4

    .line 52
    .line 53
    const-wide/32 v8, 0x100000

    .line 54
    .line 55
    .line 56
    const-wide/32 v10, 0x9600000

    .line 57
    .line 58
    .line 59
    invoke-static/range {v6 .. v11}, Ll73;->i(JJJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iput-wide v2, p0, Ln92;->l:J

    .line 64
    .line 65
    invoke-virtual {p2}, Lrf8;->a()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    cmp-long p1, p1, v2

    .line 70
    .line 71
    if-lez p1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_1
    iput-boolean v1, p0, Ln92;->m:Z

    .line 76
    .line 77
    const/4 p1, 0x5

    .line 78
    iput p1, p0, Ln92;->n:I

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const-string v2, "Closing connection with "

    .line 14
    .line 15
    const-string v3, ", may result in unknown errors"

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object v2, p0, Ln92;->k:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Ln92;->o:Ljava/io/InputStream;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ln92;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Ltb1;->a:Ltb1;

    .line 9
    .line 10
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ltb1;->i()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lag8;->a:Lrf8;

    .line 22
    .line 23
    iget-boolean v3, v2, Lrf8;->c:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lrf8;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lkh6;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lmm;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-direct {v2, v3, p0, v1}, Lmm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v2}, Ln92;->j(Ljava/lang/String;Lmm;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln92;->o:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln92;->o:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final j(Ljava/lang/String;Lmm;)V
    .locals 12

    .line 1
    const-string v1, "executeUpload: Retrying upload ("

    .line 2
    .line 3
    const-string v4, "executeUpload:"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ln92;->l(Ljava/lang/String;Lmm;)Lvq2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lag8;->d:Lzf8;

    .line 10
    .line 11
    iget-object v0, v0, Lvq2;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, v2, Lzf8;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ln92;->i()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    move-object p1, v0

    .line 21
    goto/16 :goto_a

    .line 22
    .line 23
    :catch_0
    move-exception v0

    .line 24
    move-object v5, v0

    .line 25
    :try_start_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    iget-object v3, p0, Ln92;->k:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v7, 0x8

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lag8;->e()Z

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Ln92;->i()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    :try_start_2
    iget v0, p0, Lag8;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    iget v3, p0, Lag8;->e:I

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    if-ge v0, v3, :cond_1

    .line 53
    .line 54
    move v0, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v0, v4

    .line 57
    :goto_0
    :try_start_3
    instance-of v7, v5, Lgr2;

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    if-nez v7, :cond_a

    .line 61
    .line 62
    instance-of v7, v5, Ljava/io/EOFException;

    .line 63
    .line 64
    if-nez v7, :cond_a

    .line 65
    .line 66
    sget-object v7, Lnf1;->a:Lai6;

    .line 67
    .line 68
    invoke-static {v5}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_a

    .line 73
    .line 74
    invoke-static {v5}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_a

    .line 79
    .line 80
    invoke-static {v5}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_a

    .line 85
    .line 86
    invoke-static {v5}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_2
    instance-of v7, v5, Lkq2;

    .line 94
    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    move-object v7, v5

    .line 98
    check-cast v7, Lkq2;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-object v7, v8

    .line 102
    :goto_1
    if-nez v7, :cond_4

    .line 103
    .line 104
    move v7, v4

    .line 105
    goto :goto_5

    .line 106
    :cond_4
    invoke-virtual {v7}, Lkq2;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_8

    .line 111
    .line 112
    iget-object v7, p0, Ln92;->i:Lbr2;

    .line 113
    .line 114
    iget-object v7, v7, Lbr2;->b:Lmt3;

    .line 115
    .line 116
    if-eqz v7, :cond_5

    .line 117
    .line 118
    invoke-interface {v7, v8}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move-object v7, v8

    .line 126
    :goto_2
    if-eqz v7, :cond_7

    .line 127
    .line 128
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move v7, v4

    .line 136
    goto :goto_4

    .line 137
    :cond_7
    :goto_3
    move v7, v6

    .line 138
    :goto_4
    xor-int/2addr v7, v6

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    invoke-virtual {v7}, Lkq2;->d()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    :goto_5
    if-eqz v7, :cond_9

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_9
    move v7, v4

    .line 148
    goto :goto_7

    .line 149
    :cond_a
    :goto_6
    move v7, v6

    .line 150
    :goto_7
    if-eqz v0, :cond_10

    .line 151
    .line 152
    if-eqz v7, :cond_10

    .line 153
    .line 154
    instance-of v0, v5, Lkq2;

    .line 155
    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    move-object v0, v5

    .line 159
    check-cast v0, Lkq2;

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_b
    move-object v0, v8

    .line 163
    :goto_8
    if-nez v0, :cond_d

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    instance-of v4, v0, Lkq2;

    .line 170
    .line 171
    if-eqz v4, :cond_c

    .line 172
    .line 173
    check-cast v0, Lkq2;

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_c
    move-object v0, v8

    .line 177
    :cond_d
    :goto_9
    if-eqz v0, :cond_e

    .line 178
    .line 179
    iget-object v8, v0, Lkq2;->c:Ljava/lang/Long;

    .line 180
    .line 181
    :cond_e
    invoke-virtual {p0, v8}, Lag8;->h(Ljava/lang/Long;)Z

    .line 182
    .line 183
    .line 184
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    if-nez v0, :cond_f

    .line 186
    .line 187
    invoke-virtual {p0}, Ln92;->i()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_f
    :try_start_4
    iget v0, p0, Lag8;->f:I

    .line 192
    .line 193
    add-int/2addr v0, v6

    .line 194
    iput v0, p0, Lag8;->f:I

    .line 195
    .line 196
    iget-object v7, p0, Ln92;->k:Ljava/lang/String;

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, "/"

    .line 207
    .line 208
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, ")"

    .line 215
    .line 216
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    const/4 v10, 0x4

    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v9, 0x0

    .line 226
    move-object v6, v2

    .line 227
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1, p2}, Ln92;->j(Ljava/lang/String;Lmm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ln92;->i()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_10
    :try_start_5
    invoke-virtual {p0, v5, v4}, Lag8;->a(Ljava/lang/Exception;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Ln92;->i()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :goto_a
    invoke-virtual {p0}, Ln92;->i()V

    .line 245
    .line 246
    .line 247
    throw p1
.end method

.method public final k(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 5

    .line 1
    instance-of v0, p1, Lkq2;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lkq2;

    .line 9
    .line 10
    iget-object v2, v0, Lkq2;->d:Lgv7;

    .line 11
    .line 12
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lfl4;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v4, "error"

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {v2}, Ly13;->j(Lqj4;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    new-instance p0, Lfr2;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, p1}, Lfr2;-><init>(JLjava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lkq2;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_6

    .line 52
    .line 53
    iget-object p0, p0, Ln92;->i:Lbr2;

    .line 54
    .line 55
    iget-object p0, p0, Lbr2;->b:Lmt3;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-interface {p0, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    move-object v3, p0

    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    :cond_2
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    new-instance p0, Lgr2;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move-object v1, v0

    .line 85
    :goto_1
    invoke-direct {p0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_5
    :goto_2
    return-object p1

    .line 90
    :cond_6
    invoke-virtual {v0}, Lkq2;->d()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    new-instance p0, Lgr2;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_7

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    move-object v1, v0

    .line 106
    :goto_3
    invoke-direct {p0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_8
    sget-object p0, Lnf1;->a:Lai6;

    .line 111
    .line 112
    invoke-static {p1}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_a

    .line 117
    .line 118
    invoke-static {p1}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-nez p0, :cond_a

    .line 123
    .line 124
    invoke-static {p1}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_a

    .line 129
    .line 130
    invoke-static {p1}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_a

    .line 135
    .line 136
    instance-of p0, p1, Ljava/io/EOFException;

    .line 137
    .line 138
    if-eqz p0, :cond_9

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    return-object p1

    .line 142
    :cond_a
    :goto_4
    new-instance p0, Lgr2;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-nez v0, :cond_b

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_b
    move-object v1, v0

    .line 152
    :goto_5
    invoke-direct {p0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    return-object p0
.end method

.method public final l(Ljava/lang/String;Lmm;)Lvq2;
    .locals 24

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    iget-boolean v0, v2, Ln92;->m:Z

    .line 4
    .line 5
    const-wide/16 v9, 0x0

    .line 6
    .line 7
    iget-object v1, v2, Lag8;->a:Lrf8;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    new-instance v11, Lmq2;

    .line 12
    .line 13
    iget-object v0, v1, Lrf8;->a:Lq63;

    .line 14
    .line 15
    invoke-virtual {v0}, Lq63;->A()J

    .line 16
    .line 17
    .line 18
    move-result-wide v12

    .line 19
    new-instance v0, Lxf;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v1, 0x1

    .line 24
    const-class v3, Ln92;

    .line 25
    .line 26
    const-string v4, "openInputStreamAt"

    .line 27
    .line 28
    const-string v5, "openInputStreamAt(J)Ljava/io/InputStream;"

    .line 29
    .line 30
    invoke-direct/range {v0 .. v7}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v14, Ll39;

    .line 34
    .line 35
    move-object/from16 v3, p1

    .line 36
    .line 37
    invoke-direct {v14, v2, v3}, Ll39;-><init>(Ln92;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lm92;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    const-class v4, Ln92;

    .line 46
    .line 47
    const-string v5, "shouldStopUpload"

    .line 48
    .line 49
    const-string v6, "shouldStopUpload()Z"

    .line 50
    .line 51
    move-object/from16 v3, p0

    .line 52
    .line 53
    invoke-direct/range {v1 .. v8}, Lm92;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    move-object v7, v3

    .line 57
    new-instance v2, Lc7;

    .line 58
    .line 59
    const/16 v3, 0xf

    .line 60
    .line 61
    invoke-direct {v2, v7, v3}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    move-object/from16 v18, v14

    .line 65
    .line 66
    iget-wide v14, v7, Ln92;->l:J

    .line 67
    .line 68
    iget v3, v7, Ln92;->n:I

    .line 69
    .line 70
    move-object/from16 v21, p2

    .line 71
    .line 72
    move-object/from16 v17, v0

    .line 73
    .line 74
    move-object/from16 v19, v1

    .line 75
    .line 76
    move-object/from16 v20, v2

    .line 77
    .line 78
    move/from16 v16, v3

    .line 79
    .line 80
    invoke-direct/range {v11 .. v21}, Lmq2;-><init>(JJILxf;Ll39;Lm92;Lc7;Lmm;)V

    .line 81
    .line 82
    .line 83
    move/from16 v2, v16

    .line 84
    .line 85
    cmp-long v0, v12, v9

    .line 86
    .line 87
    if-ltz v0, :cond_c

    .line 88
    .line 89
    cmp-long v0, v14, v9

    .line 90
    .line 91
    if-lez v0, :cond_b

    .line 92
    .line 93
    if-lez v2, :cond_a

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    move v4, v0

    .line 97
    const/4 v0, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    :goto_0
    if-ge v4, v2, :cond_8

    .line 100
    .line 101
    invoke-virtual {v1}, Lm92;->invoke()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    const-string v7, "Dropbox upload stopped"

    .line 112
    .line 113
    if-eqz v6, :cond_1

    .line 114
    .line 115
    if-eqz v0, :cond_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 119
    .line 120
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    throw v0

    .line 124
    :cond_1
    if-lez v4, :cond_3

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    iget-object v6, v11, Lmq2;->e:Lc7;

    .line 129
    .line 130
    invoke-virtual {v6, v0}, Lc7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_2

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    throw v0

    .line 144
    :cond_3
    :goto_2
    :try_start_0
    iget-object v6, v11, Lmq2;->c:Lxf;

    .line 145
    .line 146
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v6, v8}, Lxf;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Ljava/io/InputStream;
    :try_end_0
    .catch Lfr2; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lgr2; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 155
    .line 156
    iget-object v8, v11, Lmq2;->d:Ll39;

    .line 157
    .line 158
    if-nez v5, :cond_4

    .line 159
    .line 160
    move/from16 p1, v4

    .line 161
    .line 162
    const/16 p0, 0x0

    .line 163
    .line 164
    sub-long v3, v12, v9

    .line 165
    .line 166
    :try_start_1
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    move-object/from16 p2, v0

    .line 171
    .line 172
    new-instance v0, Llq2;

    .line 173
    .line 174
    invoke-direct {v0, v11, v9, v10}, Llq2;-><init>(Lmq2;J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v6, v3, v4, v0}, Ll39;->j(Ljava/io/InputStream;JLlq2;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    add-long/2addr v9, v3

    .line 182
    invoke-virtual {v11, v9, v10}, Lmq2;->a(J)V
    :try_end_1
    .catch Lfr2; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lgr2; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    :goto_3
    move-object/from16 v17, v5

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    move-object v3, v6

    .line 190
    goto/16 :goto_10

    .line 191
    .line 192
    :catch_0
    move-exception v0

    .line 193
    goto/16 :goto_d

    .line 194
    .line 195
    :catch_1
    move-exception v0

    .line 196
    goto/16 :goto_e

    .line 197
    .line 198
    :cond_4
    move-object/from16 p2, v0

    .line 199
    .line 200
    move/from16 p1, v4

    .line 201
    .line 202
    const/16 p0, 0x0

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :goto_4
    sub-long v21, v12, v9

    .line 206
    .line 207
    cmp-long v0, v21, v14

    .line 208
    .line 209
    if-lez v0, :cond_7

    .line 210
    .line 211
    :try_start_2
    invoke-virtual {v1}, Lm92;->invoke()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v0
    :try_end_2
    .catch Lfr2; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lgr2; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    if-eqz p2, :cond_5

    .line 224
    .line 225
    move-object/from16 v0, p2

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 229
    .line 230
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_5
    throw v0
    :try_end_3
    .catch Lfr2; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lgr2; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    :catch_2
    move-exception v0

    .line 235
    :goto_6
    move-object/from16 v5, v17

    .line 236
    .line 237
    goto/16 :goto_d

    .line 238
    .line 239
    :catch_3
    move-exception v0

    .line 240
    :goto_7
    move-object/from16 v5, v17

    .line 241
    .line 242
    goto/16 :goto_e

    .line 243
    .line 244
    :cond_6
    :try_start_4
    iget-wide v3, v11, Lmq2;->b:J
    :try_end_4
    .catch Lfr2; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lgr2; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    .line 246
    :try_start_5
    new-instance v0, Llq2;

    .line 247
    .line 248
    invoke-direct {v0, v11, v9, v10}, Llq2;-><init>(Lmq2;J)V
    :try_end_5
    .catch Lfr2; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lgr2; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 249
    .line 250
    .line 251
    move-object/from16 v23, v0

    .line 252
    .line 253
    move-wide/from16 v21, v3

    .line 254
    .line 255
    move-object/from16 v20, v6

    .line 256
    .line 257
    move-object/from16 v16, v8

    .line 258
    .line 259
    move-wide/from16 v18, v9

    .line 260
    .line 261
    :try_start_6
    invoke-virtual/range {v16 .. v23}, Ll39;->a(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)V
    :try_end_6
    .catch Lfr2; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lgr2; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    .line 263
    .line 264
    move-wide/from16 v9, v18

    .line 265
    .line 266
    add-long/2addr v9, v14

    .line 267
    :try_start_7
    invoke-virtual {v11, v9, v10}, Lmq2;->a(J)V
    :try_end_7
    .catch Lfr2; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lgr2; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    .line 269
    .line 270
    move-object/from16 v8, v16

    .line 271
    .line 272
    move-object/from16 v6, v20

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    :goto_8
    move-object/from16 v3, v20

    .line 277
    .line 278
    goto/16 :goto_10

    .line 279
    .line 280
    :catch_4
    move-exception v0

    .line 281
    :goto_9
    move-object/from16 v5, v17

    .line 282
    .line 283
    :goto_a
    move-object/from16 v6, v20

    .line 284
    .line 285
    goto/16 :goto_d

    .line 286
    .line 287
    :catch_5
    move-exception v0

    .line 288
    :goto_b
    move-object/from16 v5, v17

    .line 289
    .line 290
    move-object/from16 v6, v20

    .line 291
    .line 292
    goto/16 :goto_e

    .line 293
    .line 294
    :catch_6
    move-exception v0

    .line 295
    move-wide/from16 v9, v18

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :catch_7
    move-exception v0

    .line 299
    move-object/from16 v20, v6

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :catch_8
    move-exception v0

    .line 303
    move-object/from16 v20, v6

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :catchall_2
    move-exception v0

    .line 307
    move-object/from16 v20, v6

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :catch_9
    move-exception v0

    .line 311
    move-object/from16 v20, v6

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :catch_a
    move-exception v0

    .line 315
    move-object/from16 v20, v6

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_7
    move-object/from16 v20, v6

    .line 319
    .line 320
    move-object/from16 v16, v8

    .line 321
    .line 322
    :try_start_8
    new-instance v0, Llq2;

    .line 323
    .line 324
    invoke-direct {v0, v11, v9, v10}, Llq2;-><init>(Lmq2;J)V
    :try_end_8
    .catch Lfr2; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lgr2; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 325
    .line 326
    .line 327
    move-object/from16 v23, v0

    .line 328
    .line 329
    move-wide/from16 v18, v9

    .line 330
    .line 331
    :try_start_9
    invoke-virtual/range {v16 .. v23}, Ll39;->e(Ljava/lang/String;JLjava/io/InputStream;JLlq2;)Lvq2;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v11, v12, v13}, Lmq2;->a(J)V
    :try_end_9
    .catch Lfr2; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lgr2; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 336
    .line 337
    .line 338
    invoke-static/range {v20 .. v20}, Lf13;->a(Ljava/io/Closeable;)V

    .line 339
    .line 340
    .line 341
    return-object v0

    .line 342
    :catch_b
    move-exception v0

    .line 343
    :goto_c
    move-object/from16 v5, v17

    .line 344
    .line 345
    move-wide/from16 v9, v18

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :catch_c
    move-exception v0

    .line 349
    move-wide/from16 v18, v9

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :catchall_3
    move-exception v0

    .line 353
    const/16 p0, 0x0

    .line 354
    .line 355
    move-object/from16 v3, p0

    .line 356
    .line 357
    goto :goto_10

    .line 358
    :catch_d
    move-exception v0

    .line 359
    move/from16 p1, v4

    .line 360
    .line 361
    const/16 p0, 0x0

    .line 362
    .line 363
    move-object/from16 v6, p0

    .line 364
    .line 365
    goto :goto_d

    .line 366
    :catch_e
    move-exception v0

    .line 367
    move/from16 p1, v4

    .line 368
    .line 369
    const/16 p0, 0x0

    .line 370
    .line 371
    move-object/from16 v6, p0

    .line 372
    .line 373
    goto :goto_e

    .line 374
    :goto_d
    invoke-static {v6}, Lf13;->a(Ljava/io/Closeable;)V

    .line 375
    .line 376
    .line 377
    goto :goto_f

    .line 378
    :goto_e
    :try_start_a
    iget-wide v3, v0, Lfr2;->a:J

    .line 379
    .line 380
    iget-wide v7, v11, Lmq2;->a:J

    .line 381
    .line 382
    const-wide/16 v18, 0x0

    .line 383
    .line 384
    move-wide/from16 v16, v3

    .line 385
    .line 386
    move-wide/from16 v20, v7

    .line 387
    .line 388
    invoke-static/range {v16 .. v21}, Ll73;->i(JJJ)J

    .line 389
    .line 390
    .line 391
    move-result-wide v3

    .line 392
    invoke-virtual {v11, v3, v4}, Lmq2;->a(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 393
    .line 394
    .line 395
    invoke-static {v6}, Lf13;->a(Ljava/io/Closeable;)V

    .line 396
    .line 397
    .line 398
    move-wide v9, v3

    .line 399
    :goto_f
    add-int/lit8 v4, p1, 0x1

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :goto_10
    invoke-static {v3}, Lf13;->a(Ljava/io/Closeable;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :cond_8
    move-object/from16 p2, v0

    .line 408
    .line 409
    if-eqz p2, :cond_9

    .line 410
    .line 411
    move-object/from16 v0, p2

    .line 412
    .line 413
    goto :goto_11

    .line 414
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 415
    .line 416
    const-string v1, "Dropbox upload failed after "

    .line 417
    .line 418
    const-string v3, " attempts"

    .line 419
    .line 420
    invoke-static {v2, v1, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_11
    throw v0

    .line 428
    :cond_a
    const/16 p0, 0x0

    .line 429
    .line 430
    const-string v0, "maxAttempts must be > 0"

    .line 431
    .line 432
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    return-object p0

    .line 436
    :cond_b
    const/16 p0, 0x0

    .line 437
    .line 438
    const-string v0, "chunkSizeBytes must be > 0"

    .line 439
    .line 440
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    return-object p0

    .line 444
    :cond_c
    const/16 p0, 0x0

    .line 445
    .line 446
    const-string v0, "totalBytes must be >= 0"

    .line 447
    .line 448
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    return-object p0

    .line 452
    :cond_d
    move-object/from16 v3, p1

    .line 453
    .line 454
    move-object v7, v2

    .line 455
    :try_start_b
    invoke-virtual {v7}, Ln92;->i()V

    .line 456
    .line 457
    .line 458
    iget-object v0, v1, Lrf8;->a:Lq63;

    .line 459
    .line 460
    sget-boolean v2, Lq63;->d:Z

    .line 461
    .line 462
    const/4 v2, 0x1

    .line 463
    invoke-virtual {v0, v2}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 464
    .line 465
    .line 466
    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    .line 467
    :try_start_c
    invoke-static {v2, v9, v10}, Ll73;->C(Ljava/io/InputStream;J)V

    .line 468
    .line 469
    .line 470
    iput-object v2, v7, Ln92;->o:Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    .line 471
    .line 472
    move-object v0, v1

    .line 473
    :try_start_d
    iget-object v1, v7, Ln92;->i:Lbr2;

    .line 474
    .line 475
    invoke-virtual {v0}, Lrf8;->a()J

    .line 476
    .line 477
    .line 478
    move-result-wide v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 479
    move-object v6, v3

    .line 480
    move-object v3, v2

    .line 481
    move-object v2, v6

    .line 482
    move-object/from16 v6, p2

    .line 483
    .line 484
    :try_start_e
    invoke-virtual/range {v1 .. v6}, Lbr2;->n(Ljava/lang/String;Ljava/io/InputStream;JLmm;)Lvq2;

    .line 485
    .line 486
    .line 487
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 488
    :try_start_f
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 489
    .line 490
    .line 491
    return-object v0

    .line 492
    :catch_f
    move-exception v0

    .line 493
    goto :goto_14

    .line 494
    :catchall_4
    move-exception v0

    .line 495
    :goto_12
    move-object v1, v0

    .line 496
    goto :goto_13

    .line 497
    :catchall_5
    move-exception v0

    .line 498
    move-object v3, v2

    .line 499
    goto :goto_12

    .line 500
    :goto_13
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 501
    :catchall_6
    move-exception v0

    .line 502
    :try_start_11
    invoke-static {v3, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :catch_10
    move-exception v0

    .line 507
    move-object v3, v2

    .line 508
    invoke-static {v3}, Lf13;->a(Ljava/io/Closeable;)V

    .line 509
    .line 510
    .line 511
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 512
    :goto_14
    invoke-virtual {v7, v0}, Ln92;->k(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    throw v0
.end method
