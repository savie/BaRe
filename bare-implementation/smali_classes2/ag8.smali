.class public abstract Lag8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lrf8;

.field public b:Ljava/lang/String;

.field public c:Lgz7;

.field public final d:Lzf8;

.field public final e:I

.field public f:I

.field public g:Lmt3;

.field public final h:Lj86;


# direct methods
.method public constructor <init>(Lrf8;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lag8;->a:Lrf8;

    .line 8
    .line 9
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 10
    .line 11
    iput-object p1, p0, Lag8;->c:Lgz7;

    .line 12
    .line 13
    new-instance p1, Lzf8;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lag8;->d:Lzf8;

    .line 19
    .line 20
    const/4 p1, 0x5

    .line 21
    iput p1, p0, Lag8;->e:I

    .line 22
    .line 23
    new-instance p1, Lj86;

    .line 24
    .line 25
    invoke-direct {p1}, Lj86;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lag8;->h:Lj86;

    .line 29
    .line 30
    return-void
.end method

.method public static g(Lag8;Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lag8;->g:Lmt3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lag8;->h:Lj86;

    .line 7
    .line 8
    iget-object p0, p0, Lag8;->a:Lrf8;

    .line 9
    .line 10
    invoke-virtual {p0}, Lrf8;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v1, v2, v3, p1}, Lj86;->a(JLjava/lang/Long;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Z)V
    .locals 7

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lag8;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "addUploadError"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 23
    .line 24
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string v0, "No internet connection\n"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    :cond_1
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lag8;->d:Lzf8;

    .line 73
    .line 74
    iput-object p1, p0, Lzf8;->b:Ljava/lang/String;

    .line 75
    .line 76
    iput-boolean p2, p0, Lzf8;->c:Z

    .line 77
    .line 78
    return-void
.end method

.method public abstract b()V
.end method

.method public final c()Lzf8;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    :try_start_0
    sget-object v0, Ld45;->b:Ld45;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    sget-object v0, Lgz7;->RUNNING:Lgz7;

    .line 46
    .line 47
    iput-object v0, p0, Lag8;->c:Lgz7;

    .line 48
    .line 49
    iget-object v0, p0, Lag8;->a:Lrf8;

    .line 50
    .line 51
    iget-boolean v1, v0, Lrf8;->e:Z

    .line 52
    .line 53
    iget-object v0, v0, Lrf8;->a:Lq63;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    invoke-virtual {p0}, Lag8;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/4 v8, 0x4

    .line 72
    const/4 v9, 0x0

    .line 73
    const-string v6, "Upload requires WiFi, but WiFi isn\'t available. Wait for it in case of network switch."

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0}, Lag8;->d()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v8, 0x4

    .line 90
    const/4 v9, 0x0

    .line 91
    const-string v6, "Still no WiFi, skipping upload."

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    .line 98
    .line 99
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 100
    .line 101
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const v5, 0x7f13018d

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v2}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 116
    .line 117
    .line 118
    move v1, v3

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move v1, v2

    .line 121
    :goto_1
    invoke-virtual {v0}, Lq63;->j()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_2

    .line 126
    .line 127
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 128
    .line 129
    const-string v4, "File not found at "

    .line 130
    .line 131
    invoke-static {v0, v4}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1, v2}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    move v3, v1

    .line 143
    :goto_2
    if-nez v3, :cond_3

    .line 144
    .line 145
    invoke-virtual {p0}, Lag8;->f()V

    .line 146
    .line 147
    .line 148
    :cond_3
    iget-object v0, p0, Lag8;->c:Lgz7;

    .line 149
    .line 150
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    sget-object v0, Lgz7;->CANCEL_COMPLETE:Lgz7;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    .line 160
    .line 161
    :goto_3
    iput-object v0, p0, Lag8;->c:Lgz7;

    .line 162
    .line 163
    iget-object p0, p0, Lag8;->d:Lzf8;

    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_5
    const-string p0, "Check failed."

    .line 167
    .line 168
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_6
    invoke-static {}, Ld6;->o()V

    .line 173
    .line 174
    .line 175
    return-object v1
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lag8;->c:Lgz7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgz7;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public abstract f()V
.end method

.method public final h(Ljava/lang/Long;)Z
    .locals 9

    .line 1
    new-instance v0, Lzd1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x5

    .line 5
    const/4 v1, 0x1

    .line 6
    sget-object v2, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 7
    .line 8
    const-class v3, Lorg/swiftapps/swiftbackup/common/Const;

    .line 9
    .line 10
    const-string v4, "sleepTemporarily"

    .line 11
    .line 12
    const-string v5, "sleepTemporarily(J)V"

    .line 13
    .line 14
    invoke-direct/range {v0 .. v7}, Lzd1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lag8;->a:Lrf8;

    .line 18
    .line 19
    iget-boolean v2, v1, Lrf8;->e:Z

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v5, p0, Lag8;->c:Lgz7;

    .line 24
    .line 25
    invoke-virtual {v5}, Lgz7;->isCancelled()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_4

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 39
    .line 40
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5}, Lai8;->i(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    :goto_1
    if-eqz v5, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-wide/16 v0, 0x1388

    .line 58
    .line 59
    :goto_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    iget-object p0, p0, Lag8;->c:Lgz7;

    .line 63
    .line 64
    invoke-virtual {p0}, Lgz7;->isCancelled()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    xor-int/lit8 p0, p0, 0x1

    .line 69
    .line 70
    return p0

    .line 71
    :cond_2
    const-wide/32 v5, 0x493e0

    .line 72
    .line 73
    .line 74
    cmp-long v7, v3, v5

    .line 75
    .line 76
    if-ltz v7, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    sub-long/2addr v5, v3

    .line 80
    const-wide/16 v7, 0x7d0

    .line 81
    .line 82
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v0, v7}, Lzd1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    add-long/2addr v3, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    :goto_3
    iget-object p1, p0, Lag8;->c:Lgz7;

    .line 96
    .line 97
    invoke-virtual {p1}, Lgz7;->isCancelled()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    iget-boolean p1, v1, Lrf8;->e:Z

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 109
    .line 110
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const v1, 0x7f13018d

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    const-string p1, "No internet connection"

    .line 123
    .line 124
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1, v0}, Lag8;->a(Ljava/lang/Exception;Z)V

    .line 133
    .line 134
    .line 135
    :cond_6
    return v0
.end method
