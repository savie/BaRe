.class public final Lkz4;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lkz4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkz4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkz4;->g:Lkz4;

    .line 8
    .line 9
    sget-object v1, Lhx0;->b:Lhx0;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lhx0;->i(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lik6;
    .locals 6

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
    if-nez v0, :cond_3

    .line 15
    .line 16
    sget-object v0, Ldz5;->a:Ldz5;

    .line 17
    .line 18
    invoke-static {}, Ldz5;->n()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v2, 0xe

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Ldz5;->k()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lv53;->a:Lv53;

    .line 34
    .line 35
    invoke-virtual {v0}, Lv53;->b()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    sget-object v0, Llr4;->a:Llr4;

    .line 39
    .line 40
    invoke-virtual {v0}, Llr4;->a()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lg00;->a:Lg00;

    .line 44
    .line 45
    const-string v4, "show_system_apps"

    .line 46
    .line 47
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v4, "prefs"

    .line 57
    .line 58
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move v4, v3

    .line 63
    :goto_0
    invoke-virtual {v0, v4}, Lg00;->l(Z)Lc00;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v5, v0, Lc00;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lc00;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Ldv;->b:Z

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_1

    .line 94
    .line 95
    new-instance p0, Lik6;

    .line 96
    .line 97
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 98
    .line 99
    invoke-direct {p0, v0, v1, v3, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_1
    new-instance p0, Lik6;

    .line 104
    .line 105
    sget-object v0, Lhk6;->Success:Lhk6;

    .line 106
    .line 107
    const/16 v1, 0xc

    .line 108
    .line 109
    invoke-direct {p0, v0, v4, v3, v1}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_2
    iput-boolean v3, p0, Ldv;->b:Z

    .line 114
    .line 115
    new-instance p0, Lik6;

    .line 116
    .line 117
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 118
    .line 119
    invoke-direct {p0, v0, v1, v3, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 124
    .line 125
    .line 126
    return-object v1
.end method

.method public final onAppEvent(Loq;)V
    .locals 34
    .annotation runtime Lqr7;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Added app = "

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    iget-object v2, v2, Loq;->a:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, v2}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    move-object v4, v3

    .line 21
    check-cast v4, Lji;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    iget-object v5, v0, Ldv;->a:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v4}, Lji;->isUninstalledWithoutBackup()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Lji;->asString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Removing app = "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ldv;->n(Ljl0;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v4}, Lji;->asString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v7, "Updating app = "

    .line 67
    .line 68
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lji;->refresh()V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lxe6;->b:Lxe6;

    .line 85
    .line 86
    iget-object v1, v1, Lxe6;->a:Ljava/util/function/Supplier;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/util/Random;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-static {v2, v6, v6, v3, v1}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v31

    .line 99
    const v32, 0x3ffffff

    .line 100
    .line 101
    .line 102
    const/16 v33, 0x0

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    const/4 v15, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    const/16 v30, 0x0

    .line 144
    .line 145
    invoke-static/range {v4 .. v33}, Lji;->copy$default(Lji;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lji;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ldv;->k(Lji;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_2
    :try_start_0
    sget-object v4, Lg00;->a:Lg00;

    .line 154
    .line 155
    invoke-static {v6, v2}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-nez v2, :cond_3

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const-string v4, "show_system_apps"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .line 164
    :try_start_1
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 165
    .line 166
    if-eqz v7, :cond_4

    .line 167
    .line 168
    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    goto :goto_0

    .line 173
    :cond_4
    const-string v4, "prefs"

    .line 174
    .line 175
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :catch_0
    :goto_0
    :try_start_2
    invoke-static {v2, v6}, Lg00;->z(Landroid/content/pm/PackageInfo;Z)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    sget-object v3, Lji;->Companion:Lji$a;

    .line 186
    .line 187
    invoke-virtual {v3, v2}, Lji$a;->fromPackageInfo(Landroid/content/pm/PackageInfo;)Lji;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0, v2}, Ldv;->k(Lji;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lji;->asString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    .line 212
    .line 213
    :catch_1
    :cond_5
    :goto_1
    return-void
.end method
