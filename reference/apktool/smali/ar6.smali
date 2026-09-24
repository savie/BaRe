.class public final Lar6;
.super Lmj1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Ldd1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmj1;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->S3:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lar6;->c:Ldd1;

    .line 7
    .line 8
    return-void
.end method

.method public static final v(Lar6;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lar6;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ldn6;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldn6;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lqg4;

    .line 26
    .line 27
    invoke-virtual {v0}, Lqg4;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lqg4;->h()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lqg4;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1, p2, v0}, Lar6;->v(Lar6;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lqg4;->h()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0x2f

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    new-array v4, v1, [C

    .line 20
    .line 21
    aput-char v3, v4, v0

    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    invoke-static {p0, v4, v5}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v8, 0x0

    .line 33
    const/16 v9, 0x3e

    .line 34
    .line 35
    const-string v5, "/"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p0, v2

    .line 45
    :goto_0
    const-string v4, ""

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    move-object p0, v4

    .line 50
    :cond_1
    new-array v5, v1, [C

    .line 51
    .line 52
    aput-char v3, v5, v0

    .line 53
    .line 54
    invoke-static {p0, v5}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, p0, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const-string v6, "/"

    .line 63
    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    new-array v5, v1, [C

    .line 67
    .line 68
    aput-char v3, v5, v0

    .line 69
    .line 70
    invoke-static {p1, v5}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, v6, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_2
    invoke-static {p1, v3}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_b

    .line 83
    .line 84
    sget-char p0, Lmc3;->a:C

    .line 85
    .line 86
    const/4 v5, -0x1

    .line 87
    const/16 v7, 0x5c

    .line 88
    .line 89
    if-ne p0, v7, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    sget-char v8, Lmc3;->b:C

    .line 96
    .line 97
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-ne p0, v5, :cond_4

    .line 102
    .line 103
    if-ne v8, v5, :cond_3

    .line 104
    .line 105
    move v8, v0

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    add-int/2addr v8, v1

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    if-ne v8, v5, :cond_5

    .line 110
    .line 111
    :goto_1
    add-int/lit8 v8, p0, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    goto :goto_1

    .line 119
    :goto_2
    const/16 p0, 0x3a

    .line 120
    .line 121
    invoke-virtual {p1, p0, v8}, Ljava/lang/String;->indexOf(II)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-ne p0, v5, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    const-string p0, "NTFS ADS separator (\':\') in file name is forbidden."

    .line 129
    .line 130
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v2

    .line 134
    :cond_7
    :goto_3
    const/16 p0, 0x2e

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-le v2, p0, :cond_8

    .line 153
    .line 154
    move p0, v5

    .line 155
    :cond_8
    if-ne p0, v5, :cond_9

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_9
    add-int/2addr p0, v1

    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_a

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_a
    move p0, v1

    .line 171
    goto :goto_6

    .line 172
    :cond_b
    :goto_5
    move p0, v0

    .line 173
    :goto_6
    if-nez p0, :cond_c

    .line 174
    .line 175
    invoke-static {p1, v3}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-nez p0, :cond_c

    .line 180
    .line 181
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    new-array p1, v1, [C

    .line 186
    .line 187
    aput-char v3, p1, v0

    .line 188
    .line 189
    invoke-static {p0, p1}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_c
    new-array p0, v1, [C

    .line 195
    .line 196
    aput-char v3, p0, v0

    .line 197
    .line 198
    invoke-static {p1, p0}, Lnq7;->L0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Called with: path = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", range = "

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "get"

    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Llw3;->u()Llw3$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Llw3$a;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lyq5$a;->z(Ljava/lang/String;)Lyq5$a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Llw3$a;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    iget-wide v0, p2, Lt15;->a:J

    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p1, v2}, Ldr5$a;->b0(Ljava/lang/Long;)Ldr5$a;

    .line 66
    .line 67
    .line 68
    iget-wide v2, p2, Lt15;->b:J

    .line 69
    .line 70
    sub-long/2addr v2, v0

    .line 71
    const-wide/16 v0, 0x1

    .line 72
    .line 73
    add-long/2addr v2, v0

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ldr5$a;->X(Ljava/lang/Long;)Ldr5$a;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p1}, Lll0$a;->d()Lll0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Llw3;

    .line 90
    .line 91
    iget-object p0, p0, Lqg5;->a:Lpg5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .line 93
    const/4 p2, 0x0

    .line 94
    :try_start_1
    invoke-virtual {p0, p1}, Lpg5;->O(Llw3;)Ljava/util/concurrent/CompletableFuture;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lpw3;
    :try_end_1
    .catch Ljava/util/concurrent/CompletionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    :try_start_2
    new-instance p0, Ltc4;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x6

    .line 110
    invoke-direct {p0, p1, p2, v0}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    move-object p1, v0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 120
    .line 121
    .line 122
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 126
    .line 127
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "get: "

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const/4 v4, 0x4

    .line 138
    const/4 v5, 0x0

    .line 139
    const-string v1, "S3Service"

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    const-string p1, "Bucket \'"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lgw0;->h()Lgw0$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lgw0$a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lgw0;

    .line 25
    .line 26
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lqg5;->a:Lpg5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1, v0}, Lpg5;->J(Lgw0;)Ljava/util/concurrent/CompletableFuture;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/CompletionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    :try_start_2
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 49
    .line 50
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "\' doesn\'t exist"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    move-object p0, v0

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    :goto_0
    move-object v3, p0

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    move-object p0, v0

    .line 99
    goto :goto_0

    .line 100
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    const/16 v5, 0x8

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    const-string v1, "S3Service"

    .line 106
    .line 107
    const-string v2, "login"

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 114
    .line 115
    invoke-direct {p0, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 8

    .line 1
    const-string v1, "put: "

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :try_start_0
    new-instance v2, Ld86;

    .line 8
    .line 9
    invoke-virtual {p1}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lzq6;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v0, v3, p5}, Lzq6;-><init>(ILmt3;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p1, p3, p4, v0}, Ld86;-><init>(Ljava/io/InputStream;JLqt3;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "S3Service"

    .line 23
    .line 24
    new-instance p5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    invoke-static {p1, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const-string p1, "s3_chunk_size"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    const/4 v0, 0x5

    .line 43
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p1, "prefs"

    .line 53
    .line 54
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :catch_0
    :goto_0
    int-to-long v3, v0

    .line 59
    const-wide/32 v5, 0x100000

    .line 60
    .line 61
    .line 62
    mul-long/2addr v3, v5

    .line 63
    :try_start_2
    invoke-static {}, Lbc6;->D()Lbc6$a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lbc6$a;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lyq5$a;->z(Ljava/lang/String;)Lyq5$a;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lbc6$a;

    .line 82
    .line 83
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p1, v2, p2, p3}, Lbc6$a;->x0(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;)Lbc6$a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lll0$a;->d()Lll0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lbc6;

    .line 100
    .line 101
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget-object p0, p0, Lqg5;->a:Lpg5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    :try_start_3
    invoke-virtual {p0, p1}, Lpg5;->S(Lbc6;)Ljava/util/concurrent/CompletableFuture;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lzr5;
    :try_end_3
    .catch Ljava/util/concurrent/CompletionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    :try_start_4
    invoke-virtual {v2}, Ld86;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catch_1
    move-exception v0

    .line 122
    move-object p0, v0

    .line 123
    goto :goto_1

    .line 124
    :catch_2
    move-exception v0

    .line 125
    move-object p1, v0

    .line 126
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 130
    .line 131
    .line 132
    throw p5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object p0, v0

    .line 135
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    move-object p1, v0

    .line 138
    :try_start_7
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 142
    :goto_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 143
    .line 144
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const/4 v6, 0x4

    .line 153
    const/4 v7, 0x0

    .line 154
    const-string v3, "S3Service"

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 9

    .line 1
    const-string v1, "\'"

    .line 2
    .line 3
    const-string v0, "getFile: "

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :try_start_0
    invoke-static {}, Lwx4;->u()Lwx4$a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lwx4$a;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lwx4$a;->h0(Ljava/lang/String;)Lwx4$a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lll0$a;->d()Lll0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lwx4;

    .line 35
    .line 36
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v2}, Lqg5;->a(Lwx4;)Ljava/lang/Iterable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    if-ne v2, v3, :cond_0

    .line 54
    .line 55
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ldn6;

    .line 60
    .line 61
    invoke-virtual {p0}, Ldn6;->a()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lqg4;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Log1;->e(Lqg4;)Lpg1;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    move-object v5, p0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, " items listed for path \'"

    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 117
    .line 118
    const-string p0, "getFile: Failed for path \'"

    .line 119
    .line 120
    invoke-static {p0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const/16 v7, 0x8

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    const-string v3, "S3Service"

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 p0, 0x0

    .line 134
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lar6;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Creating directory "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lbc6;->D()Lbc6$a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lbc6$a;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lyq5$a;->z(Ljava/lang/String;)Lyq5$a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lbc6$a;

    .line 30
    .line 31
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    new-array v3, v3, [B

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-wide/16 v4, -0x1

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v1, v2, v3, v4}, Lbc6$a;->x0(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;)Lbc6$a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lll0$a;->d()Lll0;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lbc6;

    .line 60
    .line 61
    const-string v2, "S3Service"

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lqg5;->a:Lpg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {p1, v1}, Lpg5;->S(Lbc6;)Ljava/util/concurrent/CompletableFuture;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lzr5;
    :try_end_1
    .catch Ljava/util/concurrent/CompletionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lpg5;->W(Ljava/util/concurrent/CompletionException;)V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    throw p1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2f

    .line 5
    .line 6
    invoke-static {p1, v0}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_8

    .line 12
    .line 13
    sget-char v1, Lmc3;->a:C

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, -0x1

    .line 17
    const/16 v5, 0x5c

    .line 18
    .line 19
    if-ne v1, v5, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-char v6, Lmc3;->b:C

    .line 26
    .line 27
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-ne v1, v4, :cond_1

    .line 32
    .line 33
    if-ne v6, v4, :cond_0

    .line 34
    .line 35
    move v6, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/2addr v6, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-ne v6, v4, :cond_2

    .line 40
    .line 41
    :goto_0
    add-int/lit8 v6, v1, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const/16 v1, 0x3a

    .line 50
    .line 51
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->indexOf(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v1, v4, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const-string p0, "NTFS ADS separator (\':\') in file name is forbidden."

    .line 59
    .line 60
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    :goto_2
    const/16 v1, 0x2e

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-le v5, v1, :cond_5

    .line 83
    .line 84
    move v1, v4

    .line 85
    :cond_5
    if-ne v1, v4, :cond_6

    .line 86
    .line 87
    const-string v1, ""

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    add-int/2addr v1, v3

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_7
    move v2, v3

    .line 103
    :cond_8
    :goto_4
    if-nez v2, :cond_c

    .line 104
    .line 105
    invoke-static {p1, v0}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_9
    const-string v0, "/"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_5
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "deleteDir: "

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "S3Service"

    .line 137
    .line 138
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    filled-new-array {p1}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v0, v1, p1}, Lar6;->v(Lar6;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_a

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lar6;->w(Ljava/util/List;)V

    .line 164
    .line 165
    .line 166
    :cond_a
    new-instance v1, Ljc1;

    .line 167
    .line 168
    const/4 v2, 0x4

    .line 169
    invoke-direct {v1, v2}, Ljc1;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lar6;->w(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lar6;->r(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_b

    .line 184
    .line 185
    return-void

    .line 186
    :cond_b
    const-string p0, "Failed deleting director at "

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_c
    invoke-static {p1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lar6;->w(Ljava/util/List;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final l()Lni1;
    .locals 4

    .line 1
    invoke-static {}, Lwx4;->u()Lwx4$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lwx4$a;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lwx4$a;->i0(Z)Lwx4$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lwx4;

    .line 25
    .line 26
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, v0}, Lqg5;->a(Lwx4;)Ljava/lang/Iterable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ldn6;

    .line 55
    .line 56
    invoke-virtual {v2}, Ldn6;->a()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lqg4;

    .line 61
    .line 62
    invoke-virtual {v2}, Lqg4;->l()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    add-long/2addr v0, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p0, Lni1;

    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, v0, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 76
    .line 77
    .line 78
    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "S3Service"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {}, Lwx4;->u()Lwx4$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lwx4$a;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [C

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/16 v4, 0x2f

    .line 27
    .line 28
    aput-char v4, v2, v3

    .line 29
    .line 30
    invoke-static {p1, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lwx4$a;->h0(Ljava/lang/String;)Lwx4$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lll0$a;->d()Lll0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lwx4;

    .line 43
    .line 44
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, v0}, Lqg5;->a(Lwx4;)Ljava/lang/Iterable;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v2, v0

    .line 67
    check-cast v2, Ldn6;

    .line 68
    .line 69
    invoke-virtual {v2}, Ldn6;->a()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lqg4;

    .line 74
    .line 75
    invoke-virtual {v2}, Lqg4;->h()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-eqz v0, :cond_2

    .line 88
    .line 89
    return v1

    .line 90
    :cond_2
    return v3
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lar6;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ldn6;

    .line 34
    .line 35
    invoke-virtual {v0}, Ldn6;->a()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lqg4;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Log1;->e(Lqg4;)Lpg1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p1
.end method

.method public final w(Ljava/util/List;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/16 v5, 0x3f

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "deleteObjects: "

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "S3Service"

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    new-instance v4, Lvh2$a;

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v4, v3}, Lvh2$a;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lij6;->j()Lij6$a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lij6$a;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Lij6$a;->C(Ljava/lang/Iterable;)Lij6$a;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lll0$a;->d()Lll0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lij6;

    .line 86
    .line 87
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object p0, p0, Lqg5;->a:Lpg5;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Ljg5;

    .line 97
    .line 98
    invoke-direct {v2, p0, p1}, Ljg5;-><init>(Lpg5;Lij6;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const/4 p1, 0x1

    .line 110
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ldn6;

    .line 121
    .line 122
    invoke-virtual {p1}, Ldn6;->a()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lwh2$b;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcy2;->e()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcy2;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v4, "deleteObjects: Unable to delete object: "

    .line 139
    .line 140
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, ". Error: "

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    if-eqz p1, :cond_2

    .line 164
    .line 165
    return-void

    .line 166
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    const-string p1, "deleteObjects: Error while deleting "

    .line 171
    .line 172
    const-string v0, " objects"

    .line 173
    .line 174
    invoke-static {p0, p1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string v0, "/"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x6

    .line 18
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object p0

    .line 32
    :cond_1
    :goto_0
    const-string p0, ""

    .line 33
    .line 34
    return-object p0
.end method

.method public final y()Lqg5;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, v1, v2, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    new-instance v6, Lzd1;

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    const/4 v13, 0x3

    .line 16
    const/4 v7, 0x1

    .line 17
    sget-object v8, Luq6;->a:Luq6;

    .line 18
    .line 19
    const-class v9, Luq6;

    .line 20
    .line 21
    const-string v10, "resolveHost"

    .line 22
    .line 23
    const-string v11, "resolveHost(Ljava/lang/String;)Ljava/util/List;"

    .line 24
    .line 25
    invoke-direct/range {v6 .. v13}, Lzd1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-lez v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v0, v3

    .line 47
    :goto_0
    if-nez v0, :cond_1

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    goto :goto_4

    .line 51
    :cond_1
    const-string v4, "://"

    .line 52
    .line 53
    invoke-static {v0, v4, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v4, "https://"

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    new-instance v4, Lbn6;

    .line 77
    .line 78
    invoke-direct {v4, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    move-object v0, v4

    .line 82
    :goto_2
    nop

    .line 83
    instance-of v4, v0, Lbn6;

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    move-object v0, v3

    .line 88
    :cond_3
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-lez v4, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    move-object v0, v3

    .line 100
    :goto_3
    move-object v4, v0

    .line 101
    :goto_4
    sget-object v7, Lov2;->a:Lov2;

    .line 102
    .line 103
    const-string v8, "S3 endpoint \'"

    .line 104
    .line 105
    if-eqz v4, :cond_17

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {v6, v4}, Lzd1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_16

    .line 118
    .line 119
    new-instance v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :cond_5
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_7

    .line 133
    .line 134
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    move-object v10, v9

    .line 139
    check-cast v10, Ljava/net/InetAddress;

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-nez v11, :cond_6

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_5

    .line 152
    .line 153
    :cond_6
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    :cond_8
    move v0, v1

    .line 164
    goto :goto_6

    .line 165
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_8

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, Ljava/net/InetAddress;

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-nez v7, :cond_a

    .line 186
    .line 187
    move v0, v2

    .line 188
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-nez v7, :cond_e

    .line 193
    .line 194
    if-nez v0, :cond_e

    .line 195
    .line 196
    const-string v0, "localhost"

    .line 197
    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_e

    .line 203
    .line 204
    const-string v0, "127.0.0.1"

    .line 205
    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_e

    .line 211
    .line 212
    const-string v0, "::1"

    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_e

    .line 219
    .line 220
    const-string v0, "[::1]"

    .line 221
    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_b

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    .line 230
    .line 231
    const/16 p0, 0xa

    .line 232
    .line 233
    invoke-static {v6, p0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-direct {v9, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Ljava/net/InetAddress;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-nez v0, :cond_c

    .line 261
    .line 262
    const-string v0, ""

    .line 263
    .line 264
    :cond_c
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_d
    new-instance p0, Lvq6;

    .line 269
    .line 270
    const/4 v13, 0x0

    .line 271
    const/16 v14, 0x3f

    .line 272
    .line 273
    const/4 v10, 0x0

    .line 274
    const/4 v11, 0x0

    .line 275
    const/4 v12, 0x0

    .line 276
    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string v1, "\' resolved to unusable local address(es): "

    .line 281
    .line 282
    const-string v2, ". Check Private DNS, ad blocker, VPN or DNS settings."

    .line 283
    .line 284
    invoke-static {v8, v4, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {p0, v5, v4, v9, v0}, Lvq6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p0

    .line 292
    :cond_e
    :goto_8
    new-instance v0, Lqg5$a;

    .line 293
    .line 294
    invoke-direct {v0}, Lqg5$a;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPort()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    const-string v6, "https"

    .line 302
    .line 303
    invoke-static {v5, v6, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    iget-object v0, v0, Lqg5$a;->a:Lpg5$a;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    new-instance v7, Lv64$a;

    .line 313
    .line 314
    invoke-direct {v7, v5, v4, v6}, Lv64$a;-><init>(Ljava/lang/String;IZ)V

    .line 315
    .line 316
    .line 317
    iget-object v4, v7, Lv64$a;->e:Ljava/lang/String;

    .line 318
    .line 319
    if-nez v4, :cond_f

    .line 320
    .line 321
    iget-object v4, v0, Lpg5$a;->b:Ljava/lang/String;

    .line 322
    .line 323
    iput-object v4, v7, Lv64$a;->e:Ljava/lang/String;

    .line 324
    .line 325
    :cond_f
    iput-object v3, v0, Lpg5$a;->b:Ljava/lang/String;

    .line 326
    .line 327
    iput-object v7, v0, Lpg5$a;->a:Lv64$a;

    .line 328
    .line 329
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getUsername()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    new-instance v6, Lum7;

    .line 341
    .line 342
    invoke-direct {v6, v4, v5, v3}, Lum7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iput-object v6, v0, Lpg5$a;->c:Lum7;

    .line 346
    .line 347
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getRegion()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    if-eqz p0, :cond_11

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    sget-object v4, Lki8;->g:Ljava/util/regex/Pattern;

    .line 357
    .line 358
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_10

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_10
    const-string v0, "invalid region "

    .line 370
    .line 371
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return-object v3

    .line 379
    :cond_11
    :goto_9
    iget-object v4, v0, Lpg5$a;->a:Lv64$a;

    .line 380
    .line 381
    if-eqz v4, :cond_12

    .line 382
    .line 383
    iput-object p0, v4, Lv64$a;->e:Ljava/lang/String;

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_12
    iput-object p0, v0, Lpg5$a;->b:Ljava/lang/String;

    .line 387
    .line 388
    :goto_a
    iget-object p0, v0, Lpg5$a;->a:Lv64$a;

    .line 389
    .line 390
    const-string v4, "endpoint"

    .line 391
    .line 392
    invoke-static {p0, v4}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget-object p0, v0, Lpg5$a;->a:Lv64$a;

    .line 396
    .line 397
    iget-object p0, p0, Lv64$a;->c:Ljava/lang/String;

    .line 398
    .line 399
    if-eqz p0, :cond_14

    .line 400
    .line 401
    const-string v4, ".cn"

    .line 402
    .line 403
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    if-eqz p0, :cond_14

    .line 408
    .line 409
    iget-object p0, v0, Lpg5$a;->a:Lv64$a;

    .line 410
    .line 411
    iget-object p0, p0, Lv64$a;->b:Ljava/lang/String;

    .line 412
    .line 413
    const-string v4, "s3-accelerate."

    .line 414
    .line 415
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    if-nez p0, :cond_14

    .line 420
    .line 421
    iget-object p0, v0, Lpg5$a;->a:Lv64$a;

    .line 422
    .line 423
    iget-object p0, p0, Lv64$a;->e:Ljava/lang/String;

    .line 424
    .line 425
    if-eqz p0, :cond_13

    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_13
    const-string p0, "Region missing in Amazon S3 China endpoint "

    .line 429
    .line 430
    iget-object v0, v0, Lpg5$a;->a:Lv64$a;

    .line 431
    .line 432
    invoke-static {v0, p0}, Lb6;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    return-object v3

    .line 436
    :cond_14
    :goto_b
    iget-object p0, v0, Lpg5$a;->d:Lokhttp3/OkHttpClient;

    .line 437
    .line 438
    if-nez p0, :cond_15

    .line 439
    .line 440
    iput-boolean v2, v0, Lpg5$a;->e:Z

    .line 441
    .line 442
    sget-object p0, Lv64;->a:Lokhttp3/MediaType;

    .line 443
    .line 444
    new-instance p0, Lokhttp3/OkHttpClient;

    .line 445
    .line 446
    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    sget-wide v4, Lv64;->c:J

    .line 454
    .line 455
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 456
    .line 457
    invoke-virtual {p0, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v4, v5, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    iput v6, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 465
    .line 466
    invoke-static {v4, v5, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 471
    .line 472
    sget-object v2, Lokhttp3/Protocol;->d:Lokhttp3/Protocol;

    .line 473
    .line 474
    filled-new-array {v2}, [Lokhttp3/Protocol;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient$Builder;->b(Ljava/util/List;)V

    .line 483
    .line 484
    .line 485
    new-instance v2, Lokhttp3/OkHttpClient;

    .line 486
    .line 487
    invoke-direct {v2, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 488
    .line 489
    .line 490
    :try_start_2
    invoke-static {v2}, Lv64;->b(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;

    .line 491
    .line 492
    .line 493
    move-result-object p0
    :try_end_2
    .catch Lrg5; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    iput-object p0, v0, Lpg5$a;->d:Lokhttp3/OkHttpClient;

    .line 495
    .line 496
    goto :goto_c

    .line 497
    :catch_0
    move-exception v0

    .line 498
    move-object p0, v0

    .line 499
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 500
    .line 501
    .line 502
    return-object v3

    .line 503
    :cond_15
    :goto_c
    new-instance p0, Lpg5;

    .line 504
    .line 505
    iget-object v2, v0, Lpg5$a;->a:Lv64$a;

    .line 506
    .line 507
    iget-object v3, v0, Lpg5$a;->c:Lum7;

    .line 508
    .line 509
    iget-object v4, v0, Lpg5$a;->d:Lokhttp3/OkHttpClient;

    .line 510
    .line 511
    iget-boolean v0, v0, Lpg5$a;->e:Z

    .line 512
    .line 513
    invoke-direct {p0, v2, v3, v4, v0}, Lpg5;-><init>(Lv64$a;Lum7;Lokhttp3/OkHttpClient;Z)V

    .line 514
    .line 515
    .line 516
    new-instance v0, Lqg5;

    .line 517
    .line 518
    invoke-direct {v0, p0, v1}, Lqg5;-><init>(Lpg5;I)V

    .line 519
    .line 520
    .line 521
    return-object v0

    .line 522
    :cond_16
    new-instance p0, Lvq6;

    .line 523
    .line 524
    const-string v0, "\' did not resolve to any address. Check Private DNS, ad blocker, VPN or DNS settings."

    .line 525
    .line 526
    invoke-static {v8, v4, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-direct {p0, v5, v4, v7, v0}, Lvq6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw p0

    .line 534
    :catch_1
    move-exception v0

    .line 535
    move-object p0, v0

    .line 536
    move-object v9, p0

    .line 537
    move-object v6, v4

    .line 538
    new-instance v4, Lvq6;

    .line 539
    .line 540
    const-string p0, "\' could not be resolved. Check Private DNS, ad blocker, VPN or DNS settings."

    .line 541
    .line 542
    invoke-static {v8, v6, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v8

    .line 546
    invoke-direct/range {v4 .. v9}, Lvq6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/net/UnknownHostException;)V

    .line 547
    .line 548
    .line 549
    throw v4

    .line 550
    :cond_17
    new-instance p0, Lvq6;

    .line 551
    .line 552
    const-string v0, "\' is not a valid endpoint URL."

    .line 553
    .line 554
    invoke-static {v8, v5, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-direct {p0, v5, v3, v7, v0}, Lvq6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p0
.end method

.method public final z(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lar6;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lwx4;->u()Lwx4$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lar6;->x()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lfw0$a;->p(Ljava/lang/String;)Lfw0$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lwx4$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lwx4$a;->h0(Ljava/lang/String;)Lwx4$a;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1}, Lll0$a;->d()Lll0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lwx4;

    .line 33
    .line 34
    invoke-virtual {p0}, Lar6;->y()Lqg5;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Lqg5;->a(Lwx4;)Ljava/lang/Iterable;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v2, v1

    .line 66
    check-cast v2, Ldn6;

    .line 67
    .line 68
    invoke-virtual {v2}, Ldn6;->a()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lqg4;

    .line 73
    .line 74
    invoke-virtual {v2}, Lqg4;->h()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    new-array v4, v3, [C

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    const/16 v6, 0x2f

    .line 86
    .line 87
    aput-char v6, v4, v5

    .line 88
    .line 89
    invoke-static {v2, v4}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-array v3, v3, [C

    .line 94
    .line 95
    aput-char v6, v3, v5

    .line 96
    .line 97
    invoke-static {v0, v3}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    return-object p1
.end method
