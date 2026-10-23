.class public final Lmp6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lmp6;

.field public static final b:Ljava/lang/String; = "mp6"

.field public static final c:Lgv7;

.field public static final d:Lex0;

.field public static final e:Lgv7;

.field public static final f:Lgv7;

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lmp6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmp6;->a:Lmp6;

    .line 7
    .line 8
    new-instance v0, Lq9;

    .line 9
    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lgv7;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lmp6;->c:Lgv7;

    .line 21
    .line 22
    new-instance v0, Lex0;

    .line 23
    .line 24
    invoke-direct {v0}, Lex0;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    iput v1, v0, Lex0;->b:I

    .line 30
    .line 31
    const-wide/16 v1, 0xa

    .line 32
    .line 33
    iput-wide v1, v0, Lex0;->a:J

    .line 34
    .line 35
    sput-object v0, Lmp6;->d:Lex0;

    .line 36
    .line 37
    new-instance v0, Ljx;

    .line 38
    .line 39
    const/16 v1, 0x12

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lgv7;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lmp6;->e:Lgv7;

    .line 50
    .line 51
    new-instance v0, Lzj;

    .line 52
    .line 53
    const/16 v1, 0xf

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lgv7;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lmp6;->f:Lgv7;

    .line 64
    .line 65
    return-void
.end method

.method public static a(Z)Z
    .locals 4

    .line 1
    sget-object v0, Ljp6;->a:Ljp6;

    .line 2
    .line 3
    sget v1, Lkp6;->a:I

    .line 4
    .line 5
    sget v1, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 6
    .line 7
    invoke-static {}, Lk55;->k()Lzd7;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v2, :cond_1

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v1}, Lf13;->a(Ljava/io/Closeable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljp6;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {}, Lk55;->j()Lzd7;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-nez p0, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-static {v1}, Lf13;->a(Ljava/io/Closeable;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljp6;->invoke()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-wide/16 v0, 0x5dc

    .line 64
    .line 65
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    invoke-static {}, Lk55;->j()Lzd7;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    :goto_0
    const/4 p0, 0x1

    .line 85
    return p0

    .line 86
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lmp6;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public static d(Lmp6;ZZI)Z
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    const-string p3, "mp6"

    .line 13
    .line 14
    const-string v0, "isAvailable: Checking"

    .line 15
    .line 16
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_3

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    :goto_0
    monitor-enter p0

    .line 41
    :try_start_0
    sget-boolean p3, Lmp6;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    :try_start_1
    invoke-static {p1}, Lmp6;->a(Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catch_0
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    :try_start_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    const-string v3, "mp6"

    .line 57
    .line 58
    invoke-static {p1}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v6, 0x4

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move p1, v1

    .line 69
    :goto_1
    sput-boolean p1, Lmp6;->g:Z

    .line 70
    .line 71
    new-instance v0, Lhp6;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    if-eq p3, p1, :cond_4

    .line 75
    .line 76
    move v1, v2

    .line 77
    :cond_4
    invoke-direct {v0, p1, v1}, Lhp6;-><init>(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    sget-object p0, Lqc2;->a:Lqc2;

    .line 84
    .line 85
    const-string p3, "RootHelper verified root access"

    .line 86
    .line 87
    invoke-virtual {p0, p3, p2}, Lqc2;->h(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    :cond_5
    const/4 p0, 0x0

    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Root access log: "

    .line 101
    .line 102
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    sget-object p3, Lmp6;->a:Lmp6;

    .line 118
    .line 119
    invoke-virtual {p3}, Lmp6;->b()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v3, ", Version="

    .line 126
    .line 127
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :cond_6
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 141
    .line 142
    const-string v4, "mp6"

    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const/4 v7, 0x4

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object p2, Lzn4;->a:Lzn4;

    .line 155
    .line 156
    new-instance p2, Llp6;

    .line 157
    .line 158
    invoke-direct {p2, v0, p0}, Llp6;-><init>(Lhp6;Ljv1;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, p2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 162
    .line 163
    .line 164
    :cond_7
    const-string p2, "mp6"

    .line 165
    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "isAvailable: Result = "

    .line 169
    .line 170
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_9

    .line 184
    .line 185
    const-string p2, "was_root_available"

    .line 186
    .line 187
    sget-object p3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 188
    .line 189
    if-eqz p3, :cond_8

    .line 190
    .line 191
    invoke-interface {p3, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    const-string p1, "editor"

    .line 200
    .line 201
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_9
    :goto_2
    return p1

    .line 206
    :goto_3
    monitor-exit p0

    .line 207
    throw p1
.end method

.method public static e()Z
    .locals 3

    .line 1
    sget-object v0, Lmp6;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "magisk"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmp6;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lmp6;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmp6;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lqe7;->a:Lgv7;

    .line 6
    .line 7
    invoke-static {}, Lle7;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lqe7;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public static synthetic i([Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    sget-object v1, Lip6;->SU:Lip6;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic k(Lmp6;Z[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lip6;->SU:Lip6;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs l([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    sget-object v1, Lmp6;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, " ; "

    .line 4
    .line 5
    const/16 v2, 0x3e

    .line 6
    .line 7
    invoke-static {v2, v0, p0}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-boolean v0, Lmp6;->g:Z

    .line 12
    .line 13
    const-string v2, "-c"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "su"

    .line 18
    .line 19
    filled-new-array {v0, v2, p0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "/system/bin/sh"

    .line 29
    .line 30
    filled-new-array {v0, v2, p0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance p0, Ljava/io/BufferedReader;

    .line 59
    .line 60
    new-instance v0, Ljava/io/InputStreamReader;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-static {p0}, Lrs9;->p(Ljava/io/BufferedReader;)Lf77;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lws1;

    .line 77
    .line 78
    invoke-virtual {v0}, Lws1;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 103
    .line 104
    .line 105
    return-object v7

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    :goto_2
    move-object p0, v0

    .line 108
    goto :goto_9

    .line 109
    :catch_0
    move-exception v0

    .line 110
    move-object p0, v0

    .line 111
    move-object v3, p0

    .line 112
    move-object p0, v2

    .line 113
    goto :goto_5

    .line 114
    :catch_1
    move-exception v0

    .line 115
    move-object p0, v0

    .line 116
    move-object v3, p0

    .line 117
    move-object p0, v2

    .line 118
    goto :goto_7

    .line 119
    :goto_3
    move-object v3, v0

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    goto :goto_3

    .line 123
    :goto_4
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    :catchall_2
    move-exception v0

    .line 125
    :try_start_4
    invoke-static {p0, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :goto_5
    :try_start_5
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 130
    .line 131
    const-string v2, "runCommandBasic"

    .line 132
    .line 133
    const/16 v5, 0x8

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 138
    .line 139
    .line 140
    if-eqz p0, :cond_2

    .line 141
    .line 142
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :catchall_3
    move-exception v0

    .line 147
    move-object v2, p0

    .line 148
    goto :goto_2

    .line 149
    :goto_7
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 157
    .line 158
    const-string v2, "runCommandBasic interrupted"

    .line 159
    .line 160
    const/16 v5, 0x8

    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 165
    .line 166
    .line 167
    if-eqz p0, :cond_2

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_2
    :goto_8
    return-object v7

    .line 171
    :goto_9
    if-eqz v2, :cond_3

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 174
    .line 175
    .line 176
    :cond_3
    throw p0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lmp6;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    :try_start_1
    sget-object v0, Lmp6;->h:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const-string v0, "su -v"

    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {p0, v1, v0}, Lmp6;->k(Lmp6;Z[Ljava/lang/String;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    sput-object v0, Lmp6;->h:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lmp6;->e()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const-string v0, "magisk -c"

    .line 48
    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0, v1, v0}, Lmp6;->k(Lmp6;Z[Ljava/lang/String;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    sput-object v0, Lmp6;->h:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v0, Lzn4;->a:Lzn4;

    .line 66
    .line 67
    new-instance v0, Lov;

    .line 68
    .line 69
    const/16 v1, 0xd

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object v0, Lmp6;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-object v0

    .line 81
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw v0
.end method

.method public final h([Ljava/lang/String;Lip6;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lmp6;->m([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    array-length p1, p2

    .line 27
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p3}, Lmp6;->m([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final m([Ljava/lang/String;Lip6;)Ljava/util/List;
    .locals 10

    .line 1
    sget-object v0, Lip6;->SU:Lip6;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lmp6;->g:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lov2;->a:Lov2;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lg00;->a:Lg00;

    .line 20
    .line 21
    invoke-static {}, Lg00;->x()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    array-length v2, p1

    .line 31
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    array-length v2, p1

    .line 35
    move v3, v1

    .line 36
    :goto_0
    if-ge v3, v2, :cond_1

    .line 37
    .line 38
    aget-object v4, p1, v3

    .line 39
    .line 40
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Lmp6;->f:Lgv7;

    .line 45
    .line 46
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4, v5, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, [Ljava/lang/String;

    .line 69
    .line 70
    :cond_2
    invoke-virtual {p2, p1}, Lip6;->runCommands([Ljava/lang/String;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_9

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "Segmentation fault"

    .line 100
    .line 101
    invoke-static {v2, v3, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    const-string p2, "Creating new shell"

    .line 108
    .line 109
    sget-object v5, Lmp6;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    sget p2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 115
    .line 116
    invoke-static {}, Lk55;->k()Lzd7;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_5

    .line 121
    .line 122
    invoke-static {p2}, Lf13;->a(Ljava/io/Closeable;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    const/4 p2, 0x2

    .line 126
    const/4 v0, 0x1

    .line 127
    invoke-static {p0, v0, v1, p2}, Lmp6;->d(Lmp6;ZZI)Z

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lk55;->j()Lzd7;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    array-length p2, p1

    .line 135
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p2, [Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p0, p2}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v3, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    array-length p2, p1

    .line 155
    const/4 v0, 0x0

    .line 156
    if-nez p2, :cond_6

    .line 157
    .line 158
    move-object p1, v0

    .line 159
    goto :goto_1

    .line 160
    :cond_6
    aget-object p1, p1, v1

    .line 161
    .line 162
    :goto_1
    if-eqz p1, :cond_7

    .line 163
    .line 164
    const-string p2, " "

    .line 165
    .line 166
    const-string v0, "???"

    .line 167
    .line 168
    invoke-static {p1, p2, v0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :cond_7
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 173
    .line 174
    const-string p1, "Segmentation fault with "

    .line 175
    .line 176
    invoke-static {p1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const/4 v8, 0x4

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :cond_9
    :goto_2
    return-object p2
.end method
