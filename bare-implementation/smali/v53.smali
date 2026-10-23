.class public final Lv53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lv53;

.field public static b:Z

.field public static c:Ljava/util/LinkedHashMap;

.field public static d:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv53;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv53;->a:Lv53;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/widget/ImageView;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 5
    .line 6
    const/4 v7, 0x1

    .line 7
    const/high16 v8, 0x3f000000    # 0.5f

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const v2, 0x3f8ccccd    # 1.1f

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/high16 v6, 0x3f000000    # 0.5f

    .line 16
    .line 17
    move v3, v1

    .line 18
    move v4, v2

    .line 19
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0xc8

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 32
    .line 33
    .line 34
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lu53;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lu53;-><init>(Landroid/widget/ImageView;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static d()Lq63;
    .locals 4

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "favorites/cached_favorites"

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v0, v1, v2, v3}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/util/Map;
    .locals 5

    .line 1
    const-string v0, "fetchFromFile: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    :try_start_1
    sget-object v1, Lw14;->a:Lgv7;

    .line 19
    .line 20
    invoke-static {}, Lv53;->d()Lq63;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-class v2, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v1, v2, v3}, Lw14;->b(Lq63;Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;->getItems()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v2, "_FavoriteAppsRepo"

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;->getItems()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " items"

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;->getItems()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v1}, Lx65;->q0(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/16 v2, 0x10

    .line 93
    .line 94
    if-ge v1, v2, :cond_1

    .line 95
    .line 96
    move v1, v2

    .line 97
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v3, v1

    .line 117
    check-cast v3, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 118
    .line 119
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 124
    .line 125
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lv53;->c:Ljava/util/LinkedHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    :catch_0
    :cond_3
    :goto_1
    :try_start_2
    sget-object v0, Lv53;->c:Ljava/util/LinkedHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    monitor-exit p0

    .line 141
    return-object v0

    .line 142
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 143
    .line 144
    const-string v1, "Method called from main thread"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    throw v0
.end method

.method public final c()Z
    .locals 10

    .line 1
    const-string v0, "Fetching on demand"

    .line 2
    .line 3
    const-string v1, "_FavoriteAppsRepo"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lai8;->b()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget-object v2, Ld45;->b:Ld45;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :cond_0
    move-object v2, v0

    .line 33
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-nez v2, :cond_c

    .line 41
    .line 42
    invoke-static {}, Lai8;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lre3;->k()Lzc2;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "favoriteApps"

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :try_start_1
    sget-object v4, Ld45;->b:Ld45;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    :cond_2
    move-object v4, v0

    .line 81
    :goto_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_3

    .line 88
    .line 89
    move-object v0, v2

    .line 90
    :cond_3
    const/4 v2, 0x0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 94
    .line 95
    const/4 v8, 0x4

    .line 96
    const/4 v9, 0x0

    .line 97
    const-string v5, "_FavoriteAppsRepo"

    .line 98
    .line 99
    const-string v6, "Firebase favorite apps ref unexpectedly null after auth/network checks."

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_4
    invoke-static {v0, v3}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    instance-of v4, v0, Lxe3;

    .line 111
    .line 112
    if-eqz v4, :cond_a

    .line 113
    .line 114
    check-cast v0, Lxe3;

    .line 115
    .line 116
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 117
    .line 118
    iget-object v2, v0, Leb2;->a:Lsb4;

    .line 119
    .line 120
    iget-object v4, v2, Lsb4;->a:Lqn5;

    .line 121
    .line 122
    invoke-interface {v4}, Lqn5;->z()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-lez v4, :cond_9

    .line 127
    .line 128
    iget-object v2, v2, Lsb4;->a:Lqn5;

    .line 129
    .line 130
    invoke-interface {v2}, Lqn5;->z()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    int-to-long v4, v2

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v6, "getFavoritesFromSnapshot: "

    .line 138
    .line 139
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, " items"

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Leb2;->b()Ldb2;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Ldb2;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v2, Ljava/util/Iterator;

    .line 169
    .line 170
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_6

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Lhk5;

    .line 181
    .line 182
    iget-object v5, v0, Ldb2;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v5, Leb2;

    .line 185
    .line 186
    iget-object v5, v5, Leb2;->b:Lzc2;

    .line 187
    .line 188
    iget-object v6, v4, Lhk5;->a:Lm61;

    .line 189
    .line 190
    iget-object v6, v6, Lm61;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v5, v6}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 193
    .line 194
    .line 195
    iget-object v4, v4, Lhk5;->b:Lqn5;

    .line 196
    .line 197
    invoke-static {v4}, Lsb4;->d(Lqn5;)Lsb4;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    iget-object v4, v4, Lsb4;->a:Lqn5;

    .line 202
    .line 203
    invoke-interface {v4}, Lqn5;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const-class v5, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 208
    .line 209
    invoke-static {v5, v4}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 214
    .line 215
    if-eqz v4, :cond_5

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    const/16 v0, 0xa

    .line 222
    .line 223
    invoke-static {v1, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-static {v0}, Lx65;->q0(I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    const/16 v2, 0x10

    .line 232
    .line 233
    if-ge v0, v2, :cond_7

    .line 234
    .line 235
    move v0, v2

    .line 236
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_8

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 256
    .line 257
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 266
    .line 267
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 274
    .line 275
    .line 276
    :goto_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p0, v1}, Lv53;->e(Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    sput-object v0, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 288
    .line 289
    return v3

    .line 290
    :cond_a
    instance-of p0, v0, Lwe3;

    .line 291
    .line 292
    if-eqz p0, :cond_b

    .line 293
    .line 294
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 295
    .line 296
    check-cast v0, Lwe3;

    .line 297
    .line 298
    iget-object p0, v0, Lwe3;->n:Lwc2;

    .line 299
    .line 300
    iget-object v5, p0, Lwc2;->b:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    const/4 v7, 0x4

    .line 306
    const/4 v8, 0x0

    .line 307
    const-string v4, "_FavoriteAppsRepo"

    .line 308
    .line 309
    const/4 v6, 0x0

    .line 310
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    return v2

    .line 314
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 315
    .line 316
    .line 317
    return v2

    .line 318
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lv53;->b()Ljava/util/Map;

    .line 319
    .line 320
    .line 321
    return v3
.end method

.method public final declared-synchronized e(Ljava/util/List;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    sget-object v0, Lzn4;->a:Lzn4;

    .line 6
    .line 7
    new-instance v0, Lt53;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, p1}, Lt53;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzn4;->d(Lbt3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final f(Lji;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v1, v0, 0x1

    .line 18
    .line 19
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "setFavorite: app="

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", isFavorite="

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "_FavoriteAppsRepo"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance v1, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;

    .line 51
    .line 52
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v1, v2, v3}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lre3;->k()Lzc2;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "favoriteApps"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v3, 0x0

    .line 74
    :try_start_0
    sget-object v4, Ld45;->b:Ld45;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    :cond_0
    move-object v4, v3

    .line 95
    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move-object v2, v3

    .line 105
    :goto_1
    if-eqz v2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    move-object v2, v3

    .line 117
    :goto_2
    if-nez v0, :cond_4

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 122
    .line 123
    .line 124
    :cond_3
    sget-object v2, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    if-eqz v2, :cond_5

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 137
    .line 138
    .line 139
    :cond_5
    sget-object v2, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteApp;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :goto_3
    const-class v1, Lv53;

    .line 149
    .line 150
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Lw13;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 158
    .line 159
    .line 160
    if-eqz p2, :cond_8

    .line 161
    .line 162
    if-nez v0, :cond_6

    .line 163
    .line 164
    const p2, 0x7f13002e

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    const p2, 0x7f13044d

    .line 169
    .line 170
    .line 171
    :goto_4
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 176
    .line 177
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const-string v0, ": "

    .line 186
    .line 187
    invoke-static {p1, v0, p2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget-object p2, Lv53;->d:Landroid/widget/Toast;

    .line 192
    .line 193
    if-eqz p2, :cond_7

    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const/4 v0, 0x0

    .line 203
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    sput-object p1, Lv53;->d:Landroid/widget/Toast;

    .line 208
    .line 209
    if-eqz p1, :cond_8

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 212
    .line 213
    .line 214
    :cond_8
    sget-object p1, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {p1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lv53;->e(Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method
