.class public final Lua1;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lua1;

.field public static h:Lzc2;

.field public static final i:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lua1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lua1;->g:Lua1;

    .line 8
    .line 9
    sget-object v1, Lhx0;->b:Lhx0;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lsm;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, v1}, Lsm;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lgv7;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lua1;->i:Lgv7;

    .line 26
    .line 27
    return-void
.end method

.method public static q(Leb2;)Lji;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lji;->Companion:Lji$a;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lji$a;->fromCloudBackups(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;)Lji;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Lg00;->a:Lg00;

    .line 17
    .line 18
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lg00;->A(Lg00;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final a()Lik6;
    .locals 15

    .line 1
    sget-object v0, Lre3;->a:Lzc2;

    .line 2
    .line 3
    sget-object v0, Lua1;->h:Lzc2;

    .line 4
    .line 5
    sget-object v1, Lua1;->i:Lgv7;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Le61;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v3, Lf61;

    .line 18
    .line 19
    iget-object v4, v0, Lzc2;->a:Lwj6;

    .line 20
    .line 21
    invoke-virtual {v0}, Lzc2;->f()Lqc6;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-direct {v3, v4, v2, v5}, Lf61;-><init>(Lwj6;Le61;Lqc6;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lzc2;->h(Lez2;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v0, Ltb1;->a:Ltb1;

    .line 32
    .line 33
    invoke-static {}, Lqb1;->m()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v2, 0xe

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance p0, Lik6;

    .line 44
    .line 45
    sget-object v0, Lhk6;->DriveNotConnected:Lhk6;

    .line 46
    .line 47
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-static {}, Lre3;->c()Lzc2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lua1;->h:Lzc2;

    .line 56
    .line 57
    invoke-static {}, Lai8;->h()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    new-instance p0, Lik6;

    .line 64
    .line 65
    sget-object v0, Lhk6;->NetworkError:Lhk6;

    .line 66
    .line 67
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    invoke-static {v0, v6}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    instance-of v8, v7, Lxe3;

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    move-object v9, v7

    .line 86
    check-cast v9, Lxe3;

    .line 87
    .line 88
    iget-object v9, v9, Lxe3;->n:Leb2;

    .line 89
    .line 90
    invoke-virtual {v9}, Leb2;->b()Ldb2;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    iget-object v10, v9, Ldb2;->b:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v10, Ljava/util/Iterator;

    .line 97
    .line 98
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_4

    .line 103
    .line 104
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    check-cast v11, Lhk5;

    .line 109
    .line 110
    new-instance v12, Leb2;

    .line 111
    .line 112
    iget-object v13, v9, Ldb2;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v13, Leb2;

    .line 115
    .line 116
    iget-object v13, v13, Leb2;->b:Lzc2;

    .line 117
    .line 118
    iget-object v14, v11, Lhk5;->a:Lm61;

    .line 119
    .line 120
    iget-object v14, v14, Lm61;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v13, v14}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    iget-object v11, v11, Lhk5;->b:Lqn5;

    .line 127
    .line 128
    invoke-static {v11}, Lsb4;->d(Lqn5;)Lsb4;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-direct {v12, v13, v11}, Leb2;-><init>(Lzc2;Lsb4;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v12}, Lua1;->q(Leb2;)Lji;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    if-eqz v11, :cond_3

    .line 140
    .line 141
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Le61;

    .line 150
    .line 151
    new-instance v9, Lf61;

    .line 152
    .line 153
    iget-object v10, v0, Lzc2;->a:Lwj6;

    .line 154
    .line 155
    invoke-virtual {v0}, Lzc2;->f()Lqc6;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-direct {v9, v10, v1, v11}, Lf61;-><init>(Lwj6;Le61;Lqc6;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v9}, Lzc2;->a(Lez2;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    if-eqz v8, :cond_7

    .line 166
    .line 167
    iput-boolean v6, p0, Ldv;->b:Z

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_6

    .line 174
    .line 175
    new-instance p0, Lik6;

    .line 176
    .line 177
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 178
    .line 179
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 180
    .line 181
    .line 182
    return-object p0

    .line 183
    :cond_6
    new-instance p0, Lik6;

    .line 184
    .line 185
    sget-object v0, Lhk6;->Success:Lhk6;

    .line 186
    .line 187
    const/16 v1, 0xc

    .line 188
    .line 189
    invoke-direct {p0, v0, v5, v4, v1}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 190
    .line 191
    .line 192
    return-object p0

    .line 193
    :cond_7
    instance-of v0, v7, Lwe3;

    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    check-cast v7, Lwe3;

    .line 198
    .line 199
    iget-object v0, v7, Lwe3;->n:Lwc2;

    .line 200
    .line 201
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 202
    .line 203
    iget-object p0, p0, Ldv;->a:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    new-instance p0, Lik6;

    .line 209
    .line 210
    sget-object v0, Lhk6;->CloudError:Lhk6;

    .line 211
    .line 212
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 217
    .line 218
    .line 219
    return-object v3
.end method

.method public final onAppEvent(Loq;)V
    .locals 32
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iget-object v1, v1, Loq;->a:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Lji;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {v2}, Lji;->isUninstalledWithoutBackup()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v3, v0, Ldv;->a:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lji;->asString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "Removing app = "

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ldv;->n(Ljl0;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-virtual {v2}, Lji;->asString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "Updating app = "

    .line 63
    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lji;->refresh()V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lxe6;->b:Lxe6;

    .line 81
    .line 82
    iget-object v1, v1, Lxe6;->a:Ljava/util/function/Supplier;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/util/Random;

    .line 89
    .line 90
    const/4 v3, 0x2

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-static {v3, v4, v4, v5, v1}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v29

    .line 97
    const v30, 0x3ffffff

    .line 98
    .line 99
    .line 100
    const/16 v31, 0x0

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x0

    .line 111
    const/4 v13, 0x0

    .line 112
    const/4 v14, 0x0

    .line 113
    const/4 v15, 0x0

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    const/16 v17, 0x0

    .line 117
    .line 118
    const/16 v18, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    const/16 v22, 0x0

    .line 127
    .line 128
    const/16 v23, 0x0

    .line 129
    .line 130
    const/16 v24, 0x0

    .line 131
    .line 132
    const/16 v25, 0x0

    .line 133
    .line 134
    const/16 v26, 0x0

    .line 135
    .line 136
    const/16 v27, 0x0

    .line 137
    .line 138
    const/16 v28, 0x0

    .line 139
    .line 140
    invoke-static/range {v2 .. v31}, Lji;->copy$default(Lji;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lji;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ldv;->k(Lji;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
