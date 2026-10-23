.class public final Lqq5;
.super Lno2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Llq5;

.field public final p:Lst5;

.field public final q:Lfo2;

.field public final r:Ljava/lang/String;

.field public t:Lokhttp3/Response;

.field public x:Ljava/io/InputStream;

.field public y:Lf86;


# direct methods
.method public constructor <init>(Llq5;Lst5;Lfo2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p3, Lfo2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p3, Lfo2;->d:Lq63;

    .line 10
    .line 11
    iget-wide v2, p3, Lfo2;->c:J

    .line 12
    .line 13
    invoke-direct {p0, v2, v3, v1, v0}, Lno2;-><init>(JLq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lqq5;->n:Llq5;

    .line 17
    .line 18
    iput-object p2, p0, Lqq5;->p:Lst5;

    .line 19
    .line 20
    iput-object p3, p0, Lqq5;->q:Lfo2;

    .line 21
    .line 22
    invoke-virtual {p3}, Lfo2;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "ODownloadSession: "

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lqq5;->r:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    iget-object v1, p0, Lqq5;->r:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "User cancelled the download"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ltb1;->a:Ltb1;

    .line 14
    .line 15
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Closing connection with "

    .line 24
    .line 25
    const-string v3, ", may result in unknown errors"

    .line 26
    .line 27
    invoke-static {v2, v1, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v1, p0, Lqq5;->r:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lqq5;->close()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    sget-object v0, Lf13;->a:Lgv7;

    .line 2
    .line 3
    iget-object v0, p0, Lqq5;->t:Lokhttp3/Response;

    .line 4
    .line 5
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lqq5;->x:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lqq5;->y:Lf86;

    .line 14
    .line 15
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_0
    move-object v1, v0

    .line 23
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "prefs"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :catch_1
    move v1, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v1, "allow_multithreaded_downloads"

    .line 37
    .line 38
    :try_start_1
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_1
    iget-object v4, p0, Lqq5;->q:Lfo2;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const-string v1, "multithreaded_downloads"

    .line 56
    .line 57
    :try_start_2
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    :catch_2
    :goto_2
    if-eqz v3, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    iget-boolean v0, v4, Lfo2;->e:Z

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    iget-boolean v0, v4, Lfo2;->f:Z

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    :cond_5
    :goto_3
    iget-boolean v0, v4, Lfo2;->f:Z

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    new-instance v0, Lpb3;

    .line 86
    .line 87
    const-string v1, "OneDrive parallel ranged downloads are disabled because live benchmarking shows they are significantly slower than single-stream downloads."

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lno2;->e:Lke;

    .line 93
    .line 94
    iput-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    const/4 v5, 0x4

    .line 100
    const/4 v6, 0x0

    .line 101
    iget-object v2, p0, Lqq5;->r:Ljava/lang/String;

    .line 102
    .line 103
    const-string v3, "OneDrive parallel ranged downloads disabled; using single-stream download"

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p0}, Lqq5;->j()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final j()V
    .locals 14

    .line 1
    iget-object v1, p0, Lqq5;->n:Llq5;

    .line 2
    .line 3
    iget-object v2, p0, Lno2;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v3, "Error while downloading from Drive: File id = "

    .line 6
    .line 7
    const-string v4, "Error when downloading "

    .line 8
    .line 9
    iget-object v0, p0, Lqq5;->r:Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, ": executeDownload"

    .line 12
    .line 13
    invoke-static {v0, v5}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    new-instance v5, Ljava/util/Timer;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lkh6;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lkh6;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Ldz;

    .line 33
    .line 34
    const/4 v9, 0x3

    .line 35
    invoke-direct {v8, v9, p0, v0, v6}, Ldz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1}, Llq5;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object v0, Ltb1;->a:Ltb1;

    .line 42
    .line 43
    invoke-static {v2}, Lqb1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v6, p0, Lqq5;->p:Lst5;

    .line 48
    .line 49
    invoke-static {v6, v0}, Lst5;->l(Lst5;Ljava/lang/String;)Lokhttp3/Response;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lqq5;->t:Lokhttp3/Response;

    .line 54
    .line 55
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 56
    .line 57
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v6, p0, Lqq5;->x:Ljava/io/InputStream;

    .line 62
    .line 63
    new-instance v10, Lf86;

    .line 64
    .line 65
    iget-object v0, p0, Lno2;->b:Lq63;

    .line 66
    .line 67
    sget-boolean v11, Lq63;->d:Z

    .line 68
    .line 69
    const/4 v11, 0x1

    .line 70
    invoke-virtual {v0, v11}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v11, p0, Lqq5;->q:Lfo2;

    .line 75
    .line 76
    iget-wide v11, v11, Lfo2;->c:J

    .line 77
    .line 78
    new-instance v13, Lb30;

    .line 79
    .line 80
    invoke-direct {v13, v8, v9}, Lb30;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v10, v0, v11, v12, v13}, Lf86;-><init>(Ljava/io/OutputStream;JLqt3;)V

    .line 84
    .line 85
    .line 86
    iput-object v10, p0, Lqq5;->y:Lf86;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 87
    .line 88
    const/high16 v0, 0x40000

    .line 89
    .line 90
    :try_start_1
    invoke-static {v6, v10, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v10}, Lf86;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_3
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lqq5;->close()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    move-object v8, v0

    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move-object v8, v0

    .line 111
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    :try_start_5
    invoke-static {v10, v8}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :goto_1
    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 118
    :catchall_3
    move-exception v0

    .line 119
    :try_start_7
    invoke-static {v6, v8}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 123
    :catchall_4
    move-exception v0

    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_8
    iget-object v6, p0, Lno2;->d:Lgz7;

    .line 128
    .line 129
    invoke-virtual {v6}, Lgz7;->isCancelled()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_0

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v4, ". Stacktrace:\n"

    .line 149
    .line 150
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    sget-object v4, Lnf1;->a:Lai6;

    .line 164
    .line 165
    invoke-static {v0}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_1

    .line 170
    .line 171
    invoke-static {v0}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_1

    .line 176
    .line 177
    invoke-static {v0}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_1

    .line 182
    .line 183
    invoke-static {v0}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_1

    .line 188
    .line 189
    invoke-static {v0}, Lx13;->B(Ljava/lang/Exception;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_1

    .line 194
    .line 195
    invoke-static {v0}, Lx13;->D(Ljava/lang/Throwable;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_2

    .line 200
    .line 201
    :cond_1
    invoke-static {v0}, Lx13;->B(Ljava/lang/Exception;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_4

    .line 206
    .line 207
    invoke-virtual {v1}, Llq5;->invoke()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_4

    .line 218
    .line 219
    :cond_2
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v2, ", Error = "

    .line 234
    .line 235
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    const/4 v10, 0x4

    .line 246
    const/4 v11, 0x0

    .line 247
    const/4 v9, 0x0

    .line 248
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    instance-of v1, v0, Lmt5;

    .line 252
    .line 253
    if-eqz v1, :cond_3

    .line 254
    .line 255
    iget-object v9, p0, Lqq5;->r:Ljava/lang/String;

    .line 256
    .line 257
    move-object v1, v0

    .line 258
    check-cast v1, Lmt5;

    .line 259
    .line 260
    invoke-static {v1}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    const/4 v12, 0x4

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v11, 0x0

    .line 267
    move-object v8, v6

    .line 268
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_3
    iget-object v1, p0, Lno2;->e:Lke;

    .line 272
    .line 273
    iput-object v0, v1, Lke;->b:Ljava/lang/Object;

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_4
    const-string v0, "Retrying download"

    .line 278
    .line 279
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lqq5;->j()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 286
    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :goto_2
    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lqq5;->close()V

    .line 294
    .line 295
    .line 296
    throw v0
.end method
