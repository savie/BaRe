.class public final Lc64;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final l:Lix6;

.field public static final m:Lix6;


# instance fields
.field public final e:Lgv7;

.field public final f:Lz54;

.field public final g:La64;

.field public final h:Lgv7;

.field public i:Lts1;

.field public final j:Lgv7;

.field public final k:Lix6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lix6;

    .line 2
    .line 3
    invoke-direct {v0}, Lix6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc64;->l:Lix6;

    .line 7
    .line 8
    new-instance v0, Lix6;

    .line 9
    .line 10
    invoke-direct {v0}, Lix6;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc64;->m:Lix6;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljx;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lc64;->e:Lgv7;

    .line 17
    .line 18
    new-instance v0, La64;

    .line 19
    .line 20
    invoke-direct {v0, p0}, La64;-><init>(Lc64;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lc64;->g:La64;

    .line 24
    .line 25
    new-instance v2, Lzj;

    .line 26
    .line 27
    const/16 v3, 0x9

    .line 28
    .line 29
    invoke-direct {v2, v3}, Lzj;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lgv7;

    .line 33
    .line 34
    invoke-direct {v3, v2}, Lgv7;-><init>(Lbt3;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lc64;->h:Lgv7;

    .line 38
    .line 39
    new-instance v2, Lb7;

    .line 40
    .line 41
    const/16 v3, 0x13

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lb7;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lgv7;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Lgv7;-><init>(Lbt3;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lc64;->j:Lgv7;

    .line 52
    .line 53
    new-instance v2, Lix6;

    .line 54
    .line 55
    invoke-direct {v2}, Lix6;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lc64;->k:Lix6;

    .line 59
    .line 60
    sget-object v2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 61
    .line 62
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p0, v2}, Lc64;->j(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lz54;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lz54;-><init>(Lc64;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lc64;->f:Lz54;

    .line 75
    .line 76
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lzc2;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lzc2;->c(Laj8;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Llz3;->d:Llz3;

    .line 86
    .line 87
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 88
    .line 89
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget v3, Lmz3;->a:I

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lmz3;->c(Landroid/content/Context;I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_0

    .line 100
    .line 101
    sget-object v1, Lwq0;->b:Lex6;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lzy4;->f(Les5;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Llf;

    .line 108
    .line 109
    const/16 v1, 0x17

    .line 110
    .line 111
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 118
    .line 119
    const-string v0, "setup_cloud_first_startup"

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    const-string v0, "prefs"

    .line 132
    .line 133
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    move-object v0, v1

    .line 138
    :goto_1
    const/4 v2, 0x1

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    const/4 v0, 0x0

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    :goto_2
    move v0, v2

    .line 151
    :goto_3
    xor-int/2addr v0, v2

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sget-object v2, Lc64;->l:Lix6;

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lzn4;->a:Lzn4;

    .line 162
    .line 163
    new-instance v0, Lmg1;

    .line 164
    .line 165
    const/4 v2, 0x2

    .line 166
    invoke-direct {v0, p0, v1, v2}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 170
    .line 171
    .line 172
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lwq0;->a:Lwq0;

    .line 2
    .line 3
    sget-object v0, Lwq0;->b:Lex6;

    .line 4
    .line 5
    iget-object v1, p0, Lc64;->g:La64;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lzy4;->j(Les5;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lre3;->a:Lzc2;

    .line 11
    .line 12
    iget-object v0, p0, Lc64;->e:Lgv7;

    .line 13
    .line 14
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lzc2;

    .line 19
    .line 20
    iget-object v1, p0, Lc64;->f:Lz54;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lre3;->n(Lzc2;Laj8;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lc64;->h:Lgv7;

    .line 26
    .line 27
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lzc2;

    .line 32
    .line 33
    iget-object v1, p0, Lc64;->i:Lts1;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lre3;->n(Lzc2;Laj8;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, La55;->b()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final declared-synchronized j(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lorg/swiftapps/swiftbackup/common/V;->setA(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lo37;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 22
    .line 23
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->c()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "KEY_SCHEDULE_ENABLED"

    .line 34
    .line 35
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lrs9;->s(Z)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 52
    .line 53
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 58
    .line 59
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 64
    .line 65
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a()V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-static {p1}, Lrs9;->s(Z)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 72
    .line 73
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lex6;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :try_start_1
    const-string p1, "editor"

    .line 91
    .line 92
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    throw p1

    .line 97
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p1
.end method
