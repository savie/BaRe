.class public final Lg62;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Ljh1;

.field public final j:Ljava/lang/String;

.field public k:Lc62;


# direct methods
.method public constructor <init>(Ljh1;Lrf8;)V
    .locals 0

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
    iput-object p1, p0, Lg62;->i:Ljh1;

    .line 11
    .line 12
    const-string p1, "CsUploadSession"

    .line 13
    .line 14
    iput-object p1, p0, Lg62;->j:Ljava/lang/String;

    .line 15
    .line 16
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
    iget-object v2, p0, Lg62;->j:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Closing connection with "

    .line 16
    .line 17
    const-string v4, ", may result in unknown errors"

    .line 18
    .line 19
    invoke-static {v3, v0, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lg62;->k:Lc62;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lg62;->i:Ljh1;

    .line 37
    .line 38
    instance-of v0, p0, Lk21;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    check-cast p0, Lk21;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    if-eqz p0, :cond_3

    .line 47
    .line 48
    check-cast p0, Lsb3;

    .line 49
    .line 50
    iget-object p0, p0, Lsb3;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljc3;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, v0, Ljc3;->o:Z

    .line 73
    .line 74
    iget-object v0, v0, Ljc3;->p:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lokhttp3/Call;

    .line 94
    .line 95
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg62;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg62;->i:Ljh1;

    .line 2
    .line 3
    invoke-static {v0}, Luz4;->b(Ljh1;)Lzz4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "/"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Ltb1;->a:Ltb1;

    .line 22
    .line 23
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ltb1;->i()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lag8;->a:Lrf8;

    .line 35
    .line 36
    iget-boolean v3, v2, Lrf8;->c:Z

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lrf8;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lf62;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lf62;-><init>(Lg62;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Lg62;->i(Ljava/lang/String;Lf62;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final i(Ljava/lang/String;Lf62;)V
    .locals 13

    .line 1
    new-instance v1, Lc62;

    .line 2
    .line 3
    new-instance v2, Le62;

    .line 4
    .line 5
    iget-object v0, p0, Lag8;->a:Lrf8;

    .line 6
    .line 7
    iget-object v4, v0, Lrf8;->a:Lq63;

    .line 8
    .line 9
    const-string v7, "inputStream(Z)Ljava/io/InputStream;"

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const-class v5, Lq63;

    .line 14
    .line 15
    const-string v6, "inputStream"

    .line 16
    .line 17
    invoke-direct/range {v2 .. v8}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lc62;-><init>(Lbt3;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lg62;->k:Lc62;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    :try_start_0
    iget-object v0, p0, Lg62;->i:Ljh1;

    .line 27
    .line 28
    invoke-virtual {v2}, Lrf8;->a()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    new-instance v5, Lcz;

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-direct {v5, p2, v2}, Lcz;-><init>(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    move-object v2, p1

    .line 39
    :try_start_1
    invoke-interface/range {v0 .. v5}, Ljh1;->e(Lc62;Ljava/lang/String;JLcz;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lag8;->d:Lzf8;

    .line 43
    .line 44
    iput-object v2, p1, Lzf8;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v1}, Lc62;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    move-object v6, p1

    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :goto_0
    move-object p1, v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    move-object v2, p1

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :catchall_2
    move-exception v0

    .line 62
    :try_start_4
    invoke-static {v1, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :goto_2
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 67
    .line 68
    const/16 v8, 0x8

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    iget-object v4, p0, Lg62;->j:Ljava/lang/String;

    .line 72
    .line 73
    const-string v5, "executeUpload:"

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lag8;->e()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_0
    iget-object p1, p0, Lg62;->i:Ljh1;

    .line 87
    .line 88
    invoke-static {p1, v6}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0, p1, v0}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    iget p1, p0, Lag8;->f:I

    .line 100
    .line 101
    iget v1, p0, Lag8;->e:I

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    if-ge p1, v1, :cond_2

    .line 105
    .line 106
    move p1, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_2
    move p1, v0

    .line 109
    :goto_3
    sget-object v5, Lnf1;->a:Lai6;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_3

    .line 116
    .line 117
    const-string v5, ""

    .line 118
    .line 119
    :cond_3
    const-string v7, "421"

    .line 120
    .line 121
    invoke-static {v5, v7, v0}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    const-string v7, "Server closed"

    .line 128
    .line 129
    invoke-static {v5, v7, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_4
    invoke-static {v6}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    :goto_4
    move v5, v4

    .line 143
    goto :goto_5

    .line 144
    :cond_5
    move v5, v0

    .line 145
    :goto_5
    if-eqz p1, :cond_7

    .line 146
    .line 147
    if-eqz v5, :cond_7

    .line 148
    .line 149
    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lag8;->h(Ljava/lang/Long;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_6

    .line 155
    .line 156
    :goto_6
    return-void

    .line 157
    :cond_6
    iget p1, p0, Lag8;->f:I

    .line 158
    .line 159
    add-int/2addr p1, v4

    .line 160
    iput p1, p0, Lag8;->f:I

    .line 161
    .line 162
    const-string v0, "/"

    .line 163
    .line 164
    const-string v4, ")"

    .line 165
    .line 166
    const-string v5, "executeUpload: Retrying upload ("

    .line 167
    .line 168
    invoke-static {v5, p1, v0, v4, v1}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    const/4 v11, 0x4

    .line 173
    const/4 v12, 0x0

    .line 174
    iget-object v8, p0, Lg62;->j:Ljava/lang/String;

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    move-object v7, v3

    .line 178
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v2, p2}, Lg62;->i(Ljava/lang/String;Lf62;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_7
    invoke-virtual {p0, v6, v0}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
