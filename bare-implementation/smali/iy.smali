.class public final Liy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Liy;

.field public static final b:Lex6;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:Ljava/util/LinkedHashMap;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Liy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Liy;->a:Liy;

    .line 7
    .line 8
    new-instance v0, Lex6;

    .line 9
    .line 10
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Liy;->b:Lex6;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Liy;->c:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Liy;->d:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Liy;->e:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    return-void
.end method

.method public static b()Lsx;
    .locals 5

    .line 1
    const-string v0, "app_sort_mode"

    .line 2
    .line 3
    sget-object v1, Lsx;->Name:Lsx;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "prefs"

    .line 20
    .line 21
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :goto_0
    invoke-static {}, Lsx;->getEntries()Ljx2;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lz3;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v3, Lw3;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Lw3;-><init>(Lz3;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v4, v0

    .line 50
    check-cast v4, Lsx;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v1, v4, :cond_1

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    :cond_2
    check-cast v2, Lsx;

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    sget-object v0, Lsx;->Name:Lsx;

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    return-object v2
.end method

.method public static c()Z
    .locals 3

    .line 1
    const-string v0, "app_sort_ascending"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    const-string v0, "prefs"

    .line 14
    .line 15
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    return v1
.end method

.method public static d(Lsx;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "app_sort_mode"

    .line 13
    .line 14
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "editor"

    .line 23
    .line 24
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public static f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "app_locale"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "prefs"

    .line 17
    .line 18
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v1}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    new-instance v2, Lfy;

    .line 59
    .line 60
    invoke-direct {v2, p1, v0}, Lfy;-><init>(Ljava/util/Comparator;Ljava/text/Collator;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lgy;

    .line 64
    .line 65
    invoke-direct {p1, v2, v1}, Lgy;-><init>(Ljava/util/Comparator;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_3
    new-instance p1, Lyg;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-direct {p1, v0, v1}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lhy;

    .line 80
    .line 81
    invoke-direct {v0, p1}, Lhy;-><init>(Lyg;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/ArrayList;Lsx;)V
    .locals 13

    .line 1
    const-string v0, "\n\n"

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_9

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    sput-boolean v2, Liy;->f:Z

    .line 22
    .line 23
    sget-object v3, Lsx;->AppSize:Lsx;

    .line 24
    .line 25
    if-ne p2, v3, :cond_0

    .line 26
    .line 27
    const v3, 0x7f1300e1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const v3, 0x7f1300e2

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 35
    .line 36
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v5, 0x7f130511

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move v4, v2

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_8

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    add-int/2addr v4, v5

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lji;

    .line 81
    .line 82
    sget-boolean v7, Liy;->f:Z

    .line 83
    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_2
    sget-object v7, Liy;->b:Lex6;

    .line 89
    .line 90
    new-instance v8, Lux;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 97
    .line 98
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Lji;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    new-instance v12, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-direct {v8, v10, v4, v9, v11}, Lux;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object v7, Lsx;->AppSize:Lsx;

    .line 135
    .line 136
    const-wide/16 v8, 0x0

    .line 137
    .line 138
    if-ne p2, v7, :cond_4

    .line 139
    .line 140
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    invoke-virtual {v6, v5, v5, v5, v5}, Lji;->calculateSize(ZZZZ)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Lji;->getSizeInfo()Lqx;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v5, :cond_3

    .line 154
    .line 155
    invoke-virtual {v5}, Lqx;->getTotal()J

    .line 156
    .line 157
    .line 158
    move-result-wide v10

    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    goto :goto_6

    .line 162
    :cond_3
    move-wide v10, v8

    .line 163
    :goto_2
    sget-object v5, Liy;->c:Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :cond_4
    sget-object v5, Lsx;->BackupSize:Lsx;

    .line 177
    .line 178
    if-ne p2, v5, :cond_1

    .line 179
    .line 180
    invoke-virtual {v6, v2}, Lji;->hasBackup(Z)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_7

    .line 185
    .line 186
    invoke-virtual {v6}, Lji;->getLocalBackups()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_5

    .line 201
    .line 202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Lgm;

    .line 207
    .line 208
    iget-object v7, v7, Lgm;->a:Lhk;

    .line 209
    .line 210
    invoke-virtual {v7}, Lhk;->D()J

    .line 211
    .line 212
    .line 213
    move-result-wide v10

    .line 214
    add-long/2addr v8, v10

    .line 215
    goto :goto_3

    .line 216
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    goto :goto_4

    .line 221
    :cond_6
    const/4 v5, 0x0

    .line 222
    :goto_4
    invoke-static {v5}, Lio4;->h(Ljava/lang/Long;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v8

    .line 226
    :cond_7
    sget-object v5, Liy;->d:Ljava/util/LinkedHashMap;

    .line 227
    .line 228
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_8
    :goto_5
    :try_start_2
    sget-object p1, Liy;->b:Lex6;

    .line 242
    .line 243
    sget-object p2, Ltx;->a:Ltx;

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Lex6;->l(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    .line 247
    .line 248
    monitor-exit p0

    .line 249
    return-void

    .line 250
    :goto_6
    :try_start_3
    sget-object p2, Liy;->b:Lex6;

    .line 251
    .line 252
    sget-object v0, Ltx;->a:Ltx;

    .line 253
    .line 254
    invoke-virtual {p2, v0}, Lex6;->l(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :catchall_1
    move-exception p1

    .line 259
    goto :goto_7

    .line 260
    :cond_9
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    .line 261
    .line 262
    const-string p2, "Method called from main thread"

    .line 263
    .line 264
    invoke-direct {p1, p2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    throw p1
.end method

.method public final e(Ljava/util/List;Z)Ljava/util/List;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    invoke-static {}, Liy;->b()Lsx;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Lsx;->DateUsed:Lsx;

    .line 24
    .line 25
    sget-object v3, Liy;->d:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    sget-object v4, Liy;->c:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v0, v2, :cond_a

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lmp6;->a:Lmp6;

    .line 39
    .line 40
    invoke-static {}, Lmp6;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v6, "appops"

    .line 45
    .line 46
    const-string v7, "android:get_usage_stats"

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 51
    .line 52
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/app/AppOpsManager;

    .line 73
    .line 74
    invoke-virtual {v2, v7, v8, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v8, Leu;->allow:Leu;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-boolean v9, Lg42;->a:Z

    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    const-string v10, "set"

    .line 111
    .line 112
    filled-new-array {v10, v2, v7, v8}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/4 v8, 0x4

    .line 117
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    filled-new-array {v2}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v8, Lip6;->SHIZUKU:Lip6;

    .line 130
    .line 131
    invoke-virtual {v0, v5, v2, v8}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 135
    .line 136
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/app/AppOpsManager;

    .line 157
    .line 158
    invoke-virtual {v0, v7, v2, v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/app/AppOpsManager;

    .line 185
    .line 186
    invoke-virtual {v0, v7, v2, v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_8

    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v10

    .line 196
    const-wide v6, 0x9a7ec800L

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    sub-long v8, v10, v6

    .line 202
    .line 203
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-class v2, Landroid/app/usage/UsageStatsManager;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-object v6, v0

    .line 217
    check-cast v6, Landroid/app/usage/UsageStatsManager;

    .line 218
    .line 219
    const/4 v7, 0x4

    .line 220
    invoke-virtual/range {v6 .. v11}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance v2, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_3

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    move-object v7, v6

    .line 247
    check-cast v7, Landroid/app/usage/UsageStats;

    .line 248
    .line 249
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    const-wide/16 v12, 0x0

    .line 254
    .line 255
    cmp-long v8, v8, v12

    .line 256
    .line 257
    if-lez v8, :cond_2

    .line 258
    .line 259
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 260
    .line 261
    .line 262
    move-result-wide v7

    .line 263
    const-wide v12, 0x757b12c00L

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    sub-long v12, v10, v12

    .line 269
    .line 270
    cmp-long v7, v7, v12

    .line 271
    .line 272
    if-lez v7, :cond_2

    .line 273
    .line 274
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-eqz v6, :cond_7

    .line 292
    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    move-object v7, v6

    .line 298
    check-cast v7, Landroid/app/usage/UsageStats;

    .line 299
    .line 300
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    if-eqz v8, :cond_5

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-eqz v9, :cond_4

    .line 316
    .line 317
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    check-cast v9, Lji;

    .line 322
    .line 323
    invoke-virtual {v9}, Lji;->isInstalled()Z

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-eqz v10, :cond_6

    .line 328
    .line 329
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-eqz v9, :cond_6

    .line 342
    .line 343
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-eqz v2, :cond_a

    .line 356
    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    check-cast v2, Landroid/app/usage/UsageStats;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 368
    .line 369
    .line 370
    move-result-wide v7

    .line 371
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    sget-object v7, Liy;->e:Ljava/util/LinkedHashMap;

    .line 376
    .line 377
    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_8
    const-string p0, "Usage stats permission not granted!"

    .line 382
    .line 383
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-object v1

    .line 387
    :cond_9
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 388
    .line 389
    invoke-static {}, Liy;->b()Lsx;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v7, "Resetting sort mode from "

    .line 396
    .line 397
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v0, " as usage stats permission isn\'t granted"

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    const/4 v10, 0x4

    .line 413
    const/4 v11, 0x0

    .line 414
    const-string v7, "AppSortHelper"

    .line 415
    .line 416
    const/4 v9, 0x0

    .line 417
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    sget-object v0, Lsx;->Name:Lsx;

    .line 421
    .line 422
    invoke-static {v0}, Liy;->d(Lsx;)V

    .line 423
    .line 424
    .line 425
    :cond_a
    invoke-static {}, Liy;->b()Lsx;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    sget-object v2, Lsx;->AppSize:Lsx;

    .line 430
    .line 431
    if-ne v0, v2, :cond_d

    .line 432
    .line 433
    new-instance v0, Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-eqz v6, :cond_c

    .line 447
    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    move-object v7, v6

    .line 453
    check-cast v7, Lji;

    .line 454
    .line 455
    invoke-virtual {v7}, Lji;->isInstalled()Z

    .line 456
    .line 457
    .line 458
    move-result v8

    .line 459
    if-eqz v8, :cond_b

    .line 460
    .line 461
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    if-nez v7, :cond_b

    .line 470
    .line 471
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    goto :goto_4

    .line 475
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-nez v2, :cond_d

    .line 480
    .line 481
    sget-object v2, Lsx;->AppSize:Lsx;

    .line 482
    .line 483
    invoke-virtual {p0, v0, v2}, Liy;->a(Ljava/util/ArrayList;Lsx;)V

    .line 484
    .line 485
    .line 486
    :cond_d
    invoke-static {}, Liy;->b()Lsx;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sget-object v2, Lsx;->BackupSize:Lsx;

    .line 491
    .line 492
    if-ne v0, v2, :cond_10

    .line 493
    .line 494
    if-nez p2, :cond_10

    .line 495
    .line 496
    new-instance v0, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-eqz v4, :cond_f

    .line 510
    .line 511
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    move-object v6, v4

    .line 516
    check-cast v6, Lji;

    .line 517
    .line 518
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-nez v6, :cond_e

    .line 527
    .line 528
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-nez v2, :cond_10

    .line 537
    .line 538
    sget-object v2, Lsx;->BackupSize:Lsx;

    .line 539
    .line 540
    invoke-virtual {p0, v0, v2}, Liy;->a(Ljava/util/ArrayList;Lsx;)V

    .line 541
    .line 542
    .line 543
    :cond_10
    invoke-static {}, Liy;->b()Lsx;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    sget-object v0, Lwx;->a:[I

    .line 548
    .line 549
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 550
    .line 551
    .line 552
    move-result p0

    .line 553
    aget p0, v0, p0

    .line 554
    .line 555
    const/4 v0, 0x2

    .line 556
    const/4 v2, 0x0

    .line 557
    packed-switch p0, :pswitch_data_0

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lq;->j()V

    .line 561
    .line 562
    .line 563
    return-object v1

    .line 564
    :pswitch_0
    new-instance p0, Lsh;

    .line 565
    .line 566
    invoke-direct {p0, v0}, Lsh;-><init>(I)V

    .line 567
    .line 568
    .line 569
    new-array v0, v0, [Lmt3;

    .line 570
    .line 571
    sget-object v1, Ley;->c:Ley;

    .line 572
    .line 573
    aput-object v1, v0, v2

    .line 574
    .line 575
    aput-object p0, v0, v5

    .line 576
    .line 577
    invoke-static {v0}, Lms8;->m([Lmt3;)Lzm1;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    goto :goto_6

    .line 582
    :pswitch_1
    if-eqz p2, :cond_11

    .line 583
    .line 584
    new-instance p0, Ldq;

    .line 585
    .line 586
    invoke-direct {p0, v5}, Ldq;-><init>(I)V

    .line 587
    .line 588
    .line 589
    new-instance v1, Lyx;

    .line 590
    .line 591
    invoke-direct {v1, p0, v2}, Lyx;-><init>(Ljava/lang/Object;I)V

    .line 592
    .line 593
    .line 594
    goto :goto_6

    .line 595
    :cond_11
    new-instance p0, Lnk;

    .line 596
    .line 597
    invoke-direct {p0, v5}, Lnk;-><init>(I)V

    .line 598
    .line 599
    .line 600
    new-instance v1, Lrx;

    .line 601
    .line 602
    invoke-direct {v1, v2}, Lrx;-><init>(I)V

    .line 603
    .line 604
    .line 605
    new-array v0, v0, [Lmt3;

    .line 606
    .line 607
    aput-object p0, v0, v2

    .line 608
    .line 609
    aput-object v1, v0, v5

    .line 610
    .line 611
    invoke-static {v0}, Lms8;->m([Lmt3;)Lzm1;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    goto :goto_6

    .line 616
    :pswitch_2
    new-instance p0, Lou;

    .line 617
    .line 618
    invoke-direct {p0, v5}, Lou;-><init>(I)V

    .line 619
    .line 620
    .line 621
    new-instance v1, Lsl;

    .line 622
    .line 623
    invoke-direct {v1, v5}, Lsl;-><init>(I)V

    .line 624
    .line 625
    .line 626
    new-array v0, v0, [Lmt3;

    .line 627
    .line 628
    aput-object p0, v0, v2

    .line 629
    .line 630
    aput-object v1, v0, v5

    .line 631
    .line 632
    invoke-static {v0}, Lms8;->m([Lmt3;)Lzm1;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    goto :goto_6

    .line 637
    :pswitch_3
    new-instance p0, Lnu;

    .line 638
    .line 639
    invoke-direct {p0, v0}, Lnu;-><init>(I)V

    .line 640
    .line 641
    .line 642
    new-instance v1, Lxx;

    .line 643
    .line 644
    invoke-direct {v1, v2, p0}, Lxx;-><init>(ILmt3;)V

    .line 645
    .line 646
    .line 647
    goto :goto_6

    .line 648
    :pswitch_4
    new-array p0, v0, [Lmt3;

    .line 649
    .line 650
    sget-object v0, Lcy;->c:Lcy;

    .line 651
    .line 652
    aput-object v0, p0, v2

    .line 653
    .line 654
    sget-object v0, Ldy;->c:Ldy;

    .line 655
    .line 656
    aput-object v0, p0, v5

    .line 657
    .line 658
    invoke-static {p0}, Lms8;->m([Lmt3;)Lzm1;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    goto :goto_6

    .line 663
    :pswitch_5
    new-array p0, v0, [Lmt3;

    .line 664
    .line 665
    sget-object v0, Lzx;->c:Lzx;

    .line 666
    .line 667
    aput-object v0, p0, v2

    .line 668
    .line 669
    sget-object v0, Lay;->c:Lay;

    .line 670
    .line 671
    aput-object v0, p0, v5

    .line 672
    .line 673
    invoke-static {p0}, Lms8;->m([Lmt3;)Lzm1;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    :goto_6
    :pswitch_6
    invoke-static {p1, v1}, Liy;->f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    .line 678
    .line 679
    .line 680
    move-result-object p0

    .line 681
    invoke-static {}, Liy;->c()Z

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    if-eqz v0, :cond_12

    .line 686
    .line 687
    return-object p0

    .line 688
    :cond_12
    invoke-static {p0}, Lel1;->j1(Ljava/util/List;)Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    return-object p0

    .line 693
    :cond_13
    invoke-static {}, Ld6;->o()V

    .line 694
    .line 695
    .line 696
    return-object v1

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
