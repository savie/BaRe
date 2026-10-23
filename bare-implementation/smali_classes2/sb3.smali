.class public final Lsb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljh1;
.implements Lk21;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Ljava/lang/String;

.field public final c:Ldd1;

.field public d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

.field public e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

.field public f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final h:Lgv7;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lsb3;->a:Lokhttp3/OkHttpClient;

    .line 10
    .line 11
    const-string v0, "FilenService"

    .line 12
    .line 13
    iput-object v0, p0, Lsb3;->b:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v0, Ldd1;->Filen:Ldd1;

    .line 16
    .line 17
    iput-object v0, p0, Lsb3;->c:Ldd1;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lsb3;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 24
    .line 25
    new-instance v0, Lah;

    .line 26
    .line 27
    const/16 v1, 0x17

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lgv7;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lsb3;->h:Lgv7;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 3
    .line 4
    iput-object v0, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 5
    .line 6
    iput-object v0, p0, Lsb3;->f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 7
    .line 8
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v1, "filen_credentials"

    .line 18
    .line 19
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "editor"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lnb3;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Lnb3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    if-eqz v0, :cond_4

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-wide v3, p2, Lt15;->a:J

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long p1, v3, v5

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-wide p1, p2, Lt15;->b:J

    .line 34
    .line 35
    iget-wide v3, v0, Lnb3;->d:J

    .line 36
    .line 37
    const-wide/16 v5, 0x1

    .line 38
    .line 39
    sub-long/2addr v3, v5

    .line 40
    cmp-long p1, p1, v3

    .line 41
    .line 42
    if-ltz p1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "Filen partial ranged downloads are not supported"

    .line 46
    .line 47
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_2
    :goto_1
    new-instance p1, Ltc4;

    .line 52
    .line 53
    new-instance p2, Lkb3;

    .line 54
    .line 55
    iget-object v1, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object p0, p0, Lsb3;->a:Lokhttp3/OkHttpClient;

    .line 64
    .line 65
    invoke-direct {p2, v0, p0, v1}, Lkb3;-><init>(Lnb3;Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x2

    .line 69
    invoke-direct {p1, p2, v2, p0}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    const-string p0, "Filen is not authenticated"

    .line 74
    .line 75
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 80
    .line 81
    const-string p2, "Filen file not found: "

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 1

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lsb3;->t(Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x2f

    .line 8
    .line 9
    aput-char v3, v1, v2

    .line 10
    .line 11
    invoke-static {v0, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v3, v1, v2}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lsb3;->h(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast v1, Lmb3;

    .line 36
    .line 37
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v4, Ljc3;

    .line 46
    .line 47
    iget-object v5, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object v6, p0, Lsb3;->h:Lgv7;

    .line 52
    .line 53
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lwa3;

    .line 58
    .line 59
    iget-object v7, p0, Lsb3;->a:Lokhttp3/OkHttpClient;

    .line 60
    .line 61
    invoke-direct {v4, v5, v6, v7}, Ljc3;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Lwa3;Lokhttp3/OkHttpClient;)V

    .line 62
    .line 63
    .line 64
    iget-object v11, p0, Lsb3;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11, v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-virtual {p1}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    :try_start_1
    iget-object v6, v1, Lmb3;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0, v3}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    new-instance v10, Llm;

    .line 91
    .line 92
    const/16 v0, 0x9

    .line 93
    .line 94
    move-object/from16 v3, p5

    .line 95
    .line 96
    invoke-direct {v10, v3, v0}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    move-wide/from16 v8, p3

    .line 100
    .line 101
    invoke-virtual/range {v4 .. v10}, Ljc3;->c(Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;JLlm;)Lnb3;

    .line 102
    .line 103
    .line 104
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 105
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    :try_start_3
    invoke-virtual {v12, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a(Lob3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    move-object p0, v0

    .line 116
    :try_start_4
    invoke-virtual {v13, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a(Lob3;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lbe8;->a:Lbe8;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    :try_start_5
    new-instance v1, Lbn6;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :goto_0
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    move-object p0, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_0
    :goto_1
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 143
    :cond_1
    :goto_2
    invoke-virtual {v11, v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    iget-object v0, v1, Lmb3;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catchall_3
    move-exception v0

    .line 157
    move-object p0, v0

    .line 158
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 159
    :catchall_4
    move-exception v0

    .line 160
    :try_start_7
    invoke-static {v5, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 164
    :goto_3
    invoke-virtual {v11, v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_2
    const-string p0, "Filen is not authenticated"

    .line 169
    .line 170
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    new-array v2, v1, [C

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/16 v4, 0x2f

    .line 21
    .line 22
    aput-char v4, v2, v3

    .line 23
    .line 24
    invoke-static {p1, v2}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v5, ""

    .line 29
    .line 30
    invoke-static {v4, v2, v5}, Lnq7;->E0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v5, Lpg1;

    .line 35
    .line 36
    invoke-interface {p0}, Lob3;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    new-array v1, v1, [C

    .line 41
    .line 42
    aput-char v4, v1, v3

    .line 43
    .line 44
    invoke-static {p1, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v5, v6, p1}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    instance-of p1, p0, Lnb3;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    move-object v1, p0

    .line 56
    check-cast v1, Lnb3;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, v0

    .line 60
    :goto_0
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-wide v3, v1, Lnb3;->d:J

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    :goto_1
    iput-wide v3, v5, Lpg1;->c:J

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    move-object v1, p0

    .line 72
    check-cast v1, Lnb3;

    .line 73
    .line 74
    iget-wide v3, v1, Lnb3;->g:J

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    instance-of v1, p0, Lmb3;

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    move-object v1, p0

    .line 82
    check-cast v1, Lmb3;

    .line 83
    .line 84
    iget-wide v3, v1, Lmb3;->d:J

    .line 85
    .line 86
    :goto_2
    iput-wide v3, v5, Lpg1;->d:J

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    move-object v0, p0

    .line 91
    check-cast v0, Lnb3;

    .line 92
    .line 93
    :cond_4
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-wide v3, v0, Lnb3;->h:J

    .line 96
    .line 97
    :cond_5
    iput-wide v3, v5, Lpg1;->e:J

    .line 98
    .line 99
    instance-of p0, p0, Lmb3;

    .line 100
    .line 101
    iput-boolean p0, v5, Lpg1;->g:Z

    .line 102
    .line 103
    iput-object v2, v5, Lpg1;->f:Ljava/lang/String;

    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lsb3;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [C

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x2f

    .line 11
    .line 12
    aput-char v4, v2, v3

    .line 13
    .line 14
    const/4 v4, 0x6

    .line 15
    move-object/from16 v5, p1

    .line 16
    .line 17
    invoke-static {v5, v2, v4}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v6, v5

    .line 41
    check-cast v6, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_11

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v6, v5

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_2

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    const-string v5, "/"

    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    const/16 v9, 0x3e

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object/from16 v4, p0

    .line 121
    .line 122
    invoke-virtual {v4, v0}, Lsb3;->r(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_10

    .line 127
    .line 128
    invoke-virtual {v4}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    const-string v6, "Filen parent not found: "

    .line 133
    .line 134
    monitor-enter v5

    .line 135
    :try_start_0
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_f

    .line 144
    .line 145
    invoke-static {v7}, Lel1;->a1(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v1, v7}, Lel1;->O0(ILjava/util/List;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    const-string v10, "/"

    .line 156
    .line 157
    const/4 v13, 0x0

    .line 158
    const/16 v14, 0x3e

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v5, v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    instance-of v10, v9, Lmb3;

    .line 171
    .line 172
    if-eqz v10, :cond_4

    .line 173
    .line 174
    check-cast v9, Lmb3;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_4
    const/4 v9, 0x0

    .line 181
    :goto_3
    if-eqz v9, :cond_e

    .line 182
    .line 183
    iget-object v6, v9, Lmb3;->a:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->c(Ljava/lang/String;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    if-eqz v6, :cond_5

    .line 190
    .line 191
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_5

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_7

    .line 207
    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lob3;

    .line 213
    .line 214
    invoke-interface {v7}, Lob3;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v7, v8, v1}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_6

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "Filen item already exists: "

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v1

    .line 252
    :cond_7
    :goto_5
    sget-object v6, Lhb3;->a:[B

    .line 253
    .line 254
    iget-object v6, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 255
    .line 256
    invoke-static {v8, v6}, Lhb3;->m(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    iget-object v7, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 261
    .line 262
    invoke-static {v8, v7}, Lhb3;->n(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lww4;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    const/16 v10, 0x9

    .line 267
    .line 268
    if-eqz v7, :cond_8

    .line 269
    .line 270
    invoke-virtual {v7}, Lww4;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_8

    .line 275
    .line 276
    goto/16 :goto_8

    .line 277
    .line 278
    :cond_8
    invoke-virtual {v7, v3}, Lww4;->listIterator(I)Ljava/util/ListIterator;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    :goto_6
    move-object v11, v7

    .line 283
    check-cast v11, Lvw4;

    .line 284
    .line 285
    invoke-virtual {v11}, Lvw4;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    if-eqz v12, :cond_b

    .line 290
    .line 291
    invoke-virtual {v11}, Lvw4;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    check-cast v11, Ljava/lang/String;

    .line 296
    .line 297
    iget-object v12, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b:Lwa3;

    .line 298
    .line 299
    const-string v14, "/v3/dir/exists"

    .line 300
    .line 301
    const-string v13, "parent"

    .line 302
    .line 303
    iget-object v15, v9, Lmb3;->a:Ljava/lang/String;

    .line 304
    .line 305
    new-instance v3, Lpw5;

    .line 306
    .line 307
    invoke-direct {v3, v13, v15}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    const-string v13, "nameHashed"

    .line 311
    .line 312
    new-instance v15, Lpw5;

    .line 313
    .line 314
    invoke-direct {v15, v13, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    filled-new-array {v3, v15}, [Lpw5;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-static {v3}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iget-object v11, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 326
    .line 327
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v16

    .line 331
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    const-string v13, "POST"

    .line 335
    .line 336
    move-object v15, v3

    .line 337
    check-cast v15, Ljava/util/Map;

    .line 338
    .line 339
    new-instance v3, Lzk;

    .line 340
    .line 341
    invoke-direct {v3, v10}, Lzk;-><init>(I)V

    .line 342
    .line 343
    .line 344
    const/16 v17, 0x0

    .line 345
    .line 346
    move-object/from16 v18, v3

    .line 347
    .line 348
    invoke-virtual/range {v12 .. v18}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    const-string v11, "exists"

    .line 357
    .line 358
    invoke-virtual {v3, v11}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    if-eqz v3, :cond_a

    .line 363
    .line 364
    invoke-virtual {v3}, Lqj4;->e()Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eq v3, v1, :cond_9

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v2, "Filen item already exists: "

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v1

    .line 398
    :cond_a
    :goto_7
    const/4 v3, 0x0

    .line 399
    goto :goto_6

    .line 400
    :cond_b
    :goto_8
    iget-object v3, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->c:Lbt3;

    .line 401
    .line 402
    invoke-interface {v3}, Lbt3;->invoke()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    check-cast v3, Ljava/lang/String;

    .line 407
    .line 408
    iget-object v7, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e:Lbt3;

    .line 409
    .line 410
    invoke-interface {v7}, Lbt3;->invoke()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    check-cast v7, Ljava/lang/Number;

    .line 415
    .line 416
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 417
    .line 418
    .line 419
    move-result-wide v11

    .line 420
    new-instance v7, Lcom/google/gson/a;

    .line 421
    .line 422
    invoke-direct {v7}, Lcom/google/gson/a;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v13, "name"

    .line 426
    .line 427
    new-instance v14, Lpw5;

    .line 428
    .line 429
    invoke-direct {v14, v13, v8}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    const-string v8, "creation"

    .line 433
    .line 434
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    new-instance v12, Lpw5;

    .line 439
    .line 440
    invoke-direct {v12, v8, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    filled-new-array {v14, v12}, [Lpw5;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-static {v8}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-virtual {v7, v8}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    iget-object v11, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b:Lwa3;

    .line 456
    .line 457
    const-string v13, "/v3/dir/create"

    .line 458
    .line 459
    const-string v8, "uuid"

    .line 460
    .line 461
    new-instance v12, Lpw5;

    .line 462
    .line 463
    invoke-direct {v12, v8, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    const-string v8, "name"

    .line 467
    .line 468
    iget-object v14, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->g:Lka;

    .line 469
    .line 470
    iget-object v15, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->d:Lbt3;

    .line 471
    .line 472
    invoke-interface {v15}, Lbt3;->invoke()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v15

    .line 476
    check-cast v15, [B

    .line 477
    .line 478
    invoke-virtual {v14, v7, v15}, Lka;->e(Ljava/lang/String;[B)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    new-instance v14, Lpw5;

    .line 483
    .line 484
    invoke-direct {v14, v8, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    const-string v7, "nameHashed"

    .line 488
    .line 489
    new-instance v8, Lpw5;

    .line 490
    .line 491
    invoke-direct {v8, v7, v6}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    const-string v6, "parent"

    .line 495
    .line 496
    iget-object v7, v9, Lmb3;->a:Ljava/lang/String;

    .line 497
    .line 498
    new-instance v15, Lpw5;

    .line 499
    .line 500
    invoke-direct {v15, v6, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    filled-new-array {v12, v14, v8, v15}, [Lpw5;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-static {v6}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    iget-object v7, v5, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 512
    .line 513
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v15

    .line 517
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    const-string v12, "POST"

    .line 521
    .line 522
    move-object v14, v6

    .line 523
    check-cast v14, Ljava/util/Map;

    .line 524
    .line 525
    new-instance v6, Lzk;

    .line 526
    .line 527
    invoke-direct {v6, v10}, Lzk;-><init>(I)V

    .line 528
    .line 529
    .line 530
    const/16 v16, 0x0

    .line 531
    .line 532
    move-object/from16 v17, v6

    .line 533
    .line 534
    invoke-virtual/range {v11 .. v17}, Lwa3;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;Lbt3;)Lqj4;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-virtual {v6}, Lqj4;->i()Lfl4;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    iget-object v7, v9, Lmb3;->a:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v5, v7}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->b(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    const-string v7, "uuid"

    .line 548
    .line 549
    invoke-virtual {v6, v7}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    if-eqz v6, :cond_d

    .line 554
    .line 555
    invoke-virtual {v6}, Lqj4;->o()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    if-nez v6, :cond_c

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_c
    move-object v3, v6

    .line 563
    :cond_d
    :goto_9
    iget-object v6, v9, Lmb3;->a:Ljava/lang/String;

    .line 564
    .line 565
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .line 570
    .line 571
    monitor-exit v5

    .line 572
    goto :goto_b

    .line 573
    :cond_e
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 574
    .line 575
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_f
    const-string v0, "Cannot create Filen root"

    .line 584
    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 586
    .line 587
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    throw v1

    .line 591
    :goto_a
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    throw v0

    .line 593
    :cond_10
    :goto_b
    const/4 v3, 0x0

    .line 594
    goto/16 :goto_1

    .line 595
    .line 596
    :cond_11
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v0, "filen_credentials"

    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const-string p0, "prefs"

    .line 18
    .line 19
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->a(Lob3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p1
.end method

.method public final k()Z
    .locals 4

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "filen_credentials"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "prefs"

    .line 19
    .line 20
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    move-object v0, v1

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    move-object v0, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :try_start_1
    sget-object v2, Lw14;->a:Lgv7;

    .line 30
    .line 31
    invoke-static {}, Lw14;->c()Lcom/google/gson/a;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Ly32;->a:Lgv7;

    .line 36
    .line 37
    invoke-static {v0}, Ly32;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-class v3, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 42
    .line 43
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    new-instance v2, Lbn6;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v2

    .line 57
    :goto_1
    nop

    .line 58
    instance-of v2, v0, Lbn6;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    :cond_2
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 64
    .line 65
    :goto_2
    iput-object v0, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 66
    .line 67
    iput-object v1, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 68
    .line 69
    iput-object v1, p0, Lsb3;->f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->isValid()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v1, 0x1

    .line 79
    if-ne v0, v1, :cond_3

    .line 80
    .line 81
    move p0, v1

    .line 82
    :cond_3
    return p0
.end method

.method public final l()Lni1;
    .locals 5

    .line 1
    iget-object v0, p0, Lsb3;->h:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwa3;

    .line 8
    .line 9
    iget-object p0, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getApiKey()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "/v3/user/info"

    .line 19
    .line 20
    invoke-virtual {v0, v2, p0}, Lwa3;->a(Ljava/lang/String;Ljava/lang/String;)Lqj4;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v0, Lni1;

    .line 29
    .line 30
    const-string v2, "storageUsed"

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lqj4;->l()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v1

    .line 48
    :goto_0
    const-string v3, "maxStorage"

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lqj4;->l()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_1
    invoke-direct {v0, v2, v1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    const-string p0, "Filen is not authenticated"

    .line 69
    .line 70
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsb3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;->getEmail()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object v0

    .line 13
    :cond_1
    :goto_0
    iget-object p0, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->getEmail()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "Filen credentials are not loaded"

    .line 23
    .line 24
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsb3;->u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "Filen path is not a directory: "

    .line 9
    .line 10
    const-string v1, "Filen path not found: "

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->e(Ljava/lang/String;)Lob3;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_a

    .line 18
    .line 19
    instance-of v1, v2, Lmb3;

    .line 20
    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    check-cast v2, Lmb3;

    .line 24
    .line 25
    iget-object v0, v2, Lmb3;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;->c(Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_8

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lob3;

    .line 58
    .line 59
    invoke-interface {v1}, Lob3;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x1

    .line 64
    new-array v3, v3, [C

    .line 65
    .line 66
    const/16 v4, 0x2f

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput-char v4, v3, v5

    .line 70
    .line 71
    invoke-static {p1, v3}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v1}, Lob3;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    move-object v6, v5

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_0

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    const-string v5, "/"

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/16 v9, 0x3e

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-instance v4, Lpg1;

    .line 131
    .line 132
    invoke-direct {v4, v2, v3}, Lpg1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    instance-of v2, v1, Lnb3;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    move-object v5, v1

    .line 141
    check-cast v5, Lnb3;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    move-object v5, v3

    .line 145
    :goto_2
    if-eqz v5, :cond_3

    .line 146
    .line 147
    iget-wide v5, v5, Lnb3;->d:J

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    const-wide/16 v5, 0x0

    .line 151
    .line 152
    :goto_3
    iput-wide v5, v4, Lpg1;->c:J

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    move-object v5, v1

    .line 157
    check-cast v5, Lnb3;

    .line 158
    .line 159
    iget-wide v5, v5, Lnb3;->g:J

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    instance-of v5, v1, Lmb3;

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    move-object v5, v1

    .line 167
    check-cast v5, Lmb3;

    .line 168
    .line 169
    iget-wide v5, v5, Lmb3;->d:J

    .line 170
    .line 171
    :goto_4
    iput-wide v5, v4, Lpg1;->d:J

    .line 172
    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    move-object v3, v1

    .line 176
    check-cast v3, Lnb3;

    .line 177
    .line 178
    :cond_5
    if-eqz v3, :cond_6

    .line 179
    .line 180
    iget-wide v5, v3, Lnb3;->h:J

    .line 181
    .line 182
    :cond_6
    iput-wide v5, v4, Lpg1;->e:J

    .line 183
    .line 184
    instance-of v1, v1, Lmb3;

    .line 185
    .line 186
    iput-boolean v1, v4, Lpg1;->g:Z

    .line 187
    .line 188
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 194
    .line 195
    .line 196
    return-object v3

    .line 197
    :cond_8
    return-object p0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    move-object p1, v0

    .line 200
    goto :goto_5

    .line 201
    :cond_9
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p1
.end method

.method public final t(Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lsb3;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 9
    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    move-object p1, v0

    .line 13
    move-object v5, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->restorableSession()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v3, p0, Lsb3;->h:Lgv7;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :try_start_1
    new-instance v4, Lai5;

    .line 24
    .line 25
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lwa3;

    .line 30
    .line 31
    invoke-direct {v4, v5}, Lai5;-><init>(Lwa3;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Lai5;->z(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    :cond_1
    new-instance v2, Lai5;

    .line 41
    .line 42
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lwa3;

    .line 47
    .line 48
    invoke-direct {v2, v4}, Lai5;-><init>(Lwa3;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->getEmail()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->getPassword()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v2, v4, v5, p1}, Lai5;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_2
    iput-object v2, p0, Lsb3;->e:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;

    .line 64
    .line 65
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 66
    .line 67
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lwa3;

    .line 72
    .line 73
    invoke-direct {p1, v2, v3}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;-><init>(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;Lwa3;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lsb3;->f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->withSession(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenSession;)Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    sget-object p2, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;->Companion:Lgb3;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lgb3;->a(Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iput-object p1, p0, Lsb3;->d:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenCredentials;

    .line 93
    .line 94
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 95
    .line 96
    invoke-direct {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :goto_0
    new-instance p1, Lou;

    .line 101
    .line 102
    const/4 p2, 0x6

    .line 103
    invoke-direct {p1, p2}, Lou;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v5, p1}, Lh77;->y0(Ljava/lang/Exception;Lmt3;)Lf77;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Lme3;

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    sget-object v2, Lab3;->a:Lab3;

    .line 114
    .line 115
    invoke-direct {p2, p1, v0, v2}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lle3;

    .line 119
    .line 120
    invoke-direct {p1, p2}, Lle3;-><init>(Lme3;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {p1}, Lle3;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    const/4 v9, 0x0

    .line 128
    if-eqz p2, :cond_5

    .line 129
    .line 130
    invoke-virtual {p1}, Lle3;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    move-object v2, p2

    .line 135
    check-cast v2, Ljava/lang/Exception;

    .line 136
    .line 137
    instance-of v3, v2, Llb3;

    .line 138
    .line 139
    if-nez v3, :cond_6

    .line 140
    .line 141
    instance-of v2, v2, Lua3;

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    move-object p2, v9

    .line 147
    :cond_6
    :goto_1
    check-cast p2, Ljava/lang/Exception;

    .line 148
    .line 149
    if-nez p2, :cond_7

    .line 150
    .line 151
    sget-object p1, Lcb3;->Unknown:Lcb3;

    .line 152
    .line 153
    goto/16 :goto_4

    .line 154
    .line 155
    :cond_7
    instance-of p1, p2, Llb3;

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    move-object p1, p2

    .line 160
    check-cast p1, Llb3;

    .line 161
    .line 162
    iget p1, p1, Llb3;->a:I

    .line 163
    .line 164
    const/16 v2, 0x191

    .line 165
    .line 166
    if-ne p1, v2, :cond_8

    .line 167
    .line 168
    sget-object p1, Lcb3;->InvalidSession:Lcb3;

    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_8
    instance-of p1, p2, Lua3;

    .line 173
    .line 174
    if-nez p1, :cond_9

    .line 175
    .line 176
    sget-object p1, Lcb3;->Unknown:Lcb3;

    .line 177
    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_9
    check-cast p2, Lua3;

    .line 181
    .line 182
    iget-object p1, p2, Lua3;->a:Ljava/lang/String;

    .line 183
    .line 184
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    :goto_2
    if-ge v1, v2, :cond_b

    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_a

    .line 213
    .line 214
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 215
    .line 216
    .line 217
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    sparse-switch p2, :sswitch_data_0

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :sswitch_0
    const-string p2, "invalidcredentials"

    .line 234
    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_c

    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :sswitch_1
    const-string p2, "emailorpasswordwrong"

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_c

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :sswitch_2
    const-string p2, "apikeyexpired"

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-nez p1, :cond_e

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :sswitch_3
    const-string p2, "apikeynotfound"

    .line 262
    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_e

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :sswitch_4
    const-string p2, "apikeyinvalid"

    .line 271
    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-nez p1, :cond_e

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :sswitch_5
    const-string p2, "invalidapikey"

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_e

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :sswitch_6
    const-string p2, "wrongpassword"

    .line 289
    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_c

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_c
    sget-object p1, Lcb3;->InvalidCredentials:Lcb3;

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :sswitch_7
    const-string p2, "wrong2fa"

    .line 301
    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-nez p1, :cond_d

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_d
    sget-object p1, Lcb3;->TwoFactorWrong:Lcb3;

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :sswitch_8
    const-string p2, "unauthenticated"

    .line 313
    .line 314
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-nez p1, :cond_e

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_e
    sget-object p1, Lcb3;->InvalidSession:Lcb3;

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :sswitch_9
    const-string p2, "enter2fa"

    .line 325
    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_f

    .line 331
    .line 332
    sget-object p1, Lcb3;->TwoFactorRequired:Lcb3;

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_f
    :goto_3
    sget-object p1, Lcb3;->Unknown:Lcb3;

    .line 336
    .line 337
    :goto_4
    new-instance p2, Lhi;

    .line 338
    .line 339
    const/4 v1, 0x4

    .line 340
    invoke-direct {p2, v1}, Lhi;-><init>(I)V

    .line 341
    .line 342
    .line 343
    invoke-static {v5, p2}, Lh77;->y0(Ljava/lang/Exception;Lmt3;)Lf77;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    new-instance v2, Lme3;

    .line 348
    .line 349
    sget-object v3, Lrb3;->a:Lrb3;

    .line 350
    .line 351
    invoke-direct {v2, p2, v0, v3}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Lme3;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    check-cast p2, Lle3;

    .line 359
    .line 360
    invoke-virtual {p2}, Lle3;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-nez v2, :cond_10

    .line 365
    .line 366
    move-object p2, v9

    .line 367
    goto :goto_5

    .line 368
    :cond_10
    invoke-virtual {p2}, Lle3;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    :goto_5
    check-cast p2, Lbb3;

    .line 373
    .line 374
    if-eqz p2, :cond_11

    .line 375
    .line 376
    iget-object p2, p2, Lbb3;->a:Ldb3;

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_11
    move-object p2, v9

    .line 380
    :goto_6
    sget-object v2, Lcb3;->TwoFactorRequired:Lcb3;

    .line 381
    .line 382
    if-eq p1, v2, :cond_14

    .line 383
    .line 384
    sget-object v2, Lcb3;->TwoFactorWrong:Lcb3;

    .line 385
    .line 386
    if-eq p1, v2, :cond_14

    .line 387
    .line 388
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 389
    .line 390
    if-eqz p2, :cond_12

    .line 391
    .line 392
    invoke-virtual {p2}, Ldb3;->getLogLabel()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    if-nez p2, :cond_13

    .line 397
    .line 398
    :cond_12
    const-string p2, "an unknown stage"

    .line 399
    .line 400
    :cond_13
    const-string v3, "loginWithTwoFactorCode: Filen authentication failed during "

    .line 401
    .line 402
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    const/16 v7, 0x8

    .line 407
    .line 408
    const/4 v8, 0x0

    .line 409
    iget-object v3, p0, Lsb3;->b:Ljava/lang/String;

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    :cond_14
    sget-object p2, Lqb3;->a:[I

    .line 416
    .line 417
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    aget p1, p2, p1

    .line 422
    .line 423
    if-eq p1, v0, :cond_17

    .line 424
    .line 425
    const/4 p2, 0x2

    .line 426
    if-eq p1, p2, :cond_17

    .line 427
    .line 428
    const/4 p0, 0x3

    .line 429
    if-eq p1, p0, :cond_16

    .line 430
    .line 431
    if-eq p1, v1, :cond_16

    .line 432
    .line 433
    const/4 p0, 0x5

    .line 434
    if-ne p1, p0, :cond_15

    .line 435
    .line 436
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 437
    .line 438
    invoke-direct {p0, v5}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 439
    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_15
    invoke-static {}, Lq;->j()V

    .line 443
    .line 444
    .line 445
    return-object v9

    .line 446
    :cond_16
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_17
    iput-boolean v0, p0, Lsb3;->i:Z

    .line 450
    .line 451
    sget-object p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;->INSTANCE:Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$InvalidCredentials;

    .line 452
    .line 453
    :goto_7
    return-object p0

    .line 454
    nop

    .line 455
    :sswitch_data_0
    .sparse-switch
        -0x7d85cd6b -> :sswitch_9
        -0x753d19ca -> :sswitch_8
        -0x64262060 -> :sswitch_7
        -0x3d31d4b8 -> :sswitch_6
        -0x2ea3ed44 -> :sswitch_5
        -0x8e4a3ae -> :sswitch_4
        0x257a9994 -> :sswitch_3
        0x34421180 -> :sswitch_2
        0x53847fd3 -> :sswitch_1
        0x7e1f20a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final u()Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lsb3;->f:Lorg/swiftapps/swiftbackup/cloud/protocols/filen/c;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Filen is not authenticated"

    .line 7
    .line 8
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
