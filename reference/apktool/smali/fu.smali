.class public final Lfu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lri0;
.implements Lw23;
.implements Li85;
.implements Lxd2;
.implements Lyi6;
.implements Lh9;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    new-instance v0, Lbe4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbe4;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lfu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lau1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Loe;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Loe;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lfu;->a:Ljava/lang/Object;

    .line 12
    .line 13
    const-class p0, Ljk5;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljk5;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Loe;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iput-object p0, v0, Loe;->c:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v1, v0, Loe;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    const-class p0, Lkk5;

    .line 40
    .line 41
    invoke-interface {p1, p0}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lkk5;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Lkk5;->value()[Ljk5;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    array-length p1, p0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-ge v1, p1, :cond_1

    .line 56
    .line 57
    aget-object v2, p0, v1

    .line 58
    .line 59
    iget-object v3, v0, Loe;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lfu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljk1;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "output"

    invoke-static {p1, v0}, Lyd4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfu;->a:Ljava/lang/Object;

    .line 77
    iput-object p0, p1, Ljk1;->a:Lfu;

    return-void
.end method

.method public static i()Lfu;
    .locals 4

    .line 1
    new-instance v0, Ljs9;

    .line 2
    .line 3
    const-string v1, "[.-]"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljs9;-><init>(Ljava/util/regex/Pattern;)V

    .line 10
    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lfu;

    .line 28
    .line 29
    new-instance v2, Lz28;

    .line 30
    .line 31
    const/16 v3, 0x15

    .line 32
    .line 33
    invoke-direct {v2, v3}, Lz28;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v2, Lz28;->b:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "The pattern may not match the empty string: %s"

    .line 47
    .line 48
    invoke-static {v1, v0}, Llg7;->O(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    return-object v0
.end method


# virtual methods
.method public a(Lty7;)V
    .locals 0

    .line 1
    sget-object p1, Lqy7;->f:Lqy7;

    .line 2
    .line 3
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lmk2;->k()Lji;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lu29;

    .line 6
    .line 7
    check-cast p1, Lv29;

    .line 8
    .line 9
    new-instance v0, Ls29;

    .line 10
    .line 11
    invoke-direct {v0, p0, p2}, Ls29;-><init>(Lu29;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Laz3;->p()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ln39;

    .line 19
    .line 20
    new-instance p2, Lqn1;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, -0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {p2, v2, v2, v3, v1}, Lqn1;-><init>(IIIZ)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lef;

    .line 29
    .line 30
    invoke-direct {v1, p2, v3}, Lef;-><init>(Lqn1;Z)V

    .line 31
    .line 32
    .line 33
    iput-boolean v3, v1, Lef;->c:Z

    .line 34
    .line 35
    iget-object p0, p0, Lu29;->k:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Lvz8;->f()Landroid/os/Parcel;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v2, Lz29;->a:I

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1}, Lz29;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x2

    .line 53
    invoke-virtual {p1, p2, p0}, Lvz8;->g(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public b(Ljava/lang/String;)Leu;
    .locals 1

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Map;

    .line 4
    .line 5
    const-string v0, ":"

    .line 6
    .line 7
    invoke-static {p1, v0, p1}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Leu;

    .line 28
    .line 29
    return-object p0
.end method

.method public c(Lev5;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Loe;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Loe;->c(Lev5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;ZZLcd;)V
    .locals 12

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    const-string v1, "prefs"

    .line 4
    .line 5
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lmk2;->k()Lji;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v3, v0, Lcd;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v2

    .line 26
    :goto_0
    const/4 v11, 0x1

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    new-instance v5, Lhk;

    .line 30
    .line 31
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-direct {v5, v3, v6, v11}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    :goto_1
    move-object v9, v5

    .line 43
    goto :goto_5

    .line 44
    :cond_1
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v3, v0, Lcd;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Lhk;

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    :goto_2
    move-object v5, v3

    .line 54
    goto :goto_4

    .line 55
    :cond_3
    :goto_3
    invoke-virtual {v4}, Lji;->getLocalBackups()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-static {v3}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lgm;

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move-object v5, v2

    .line 73
    :goto_4
    if-eqz v5, :cond_a

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_5
    new-instance v3, Ljz;

    .line 77
    .line 78
    invoke-virtual {v4}, Lji;->isBundled()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    move-object v5, p2

    .line 85
    goto :goto_6

    .line 86
    :cond_5
    move-object v5, p1

    .line 87
    :goto_6
    sget-object p1, Lyu;->Companion:Lwu;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lwu;->a()Lyu;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string p1, "restore_special_permissions"

    .line 97
    .line 98
    :try_start_0
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    invoke-interface {v7, p1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    move v7, p1

    .line 107
    goto :goto_7

    .line 108
    :cond_6
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    move v7, v11

    .line 113
    :goto_7
    const-string p1, "restore_ssaids"

    .line 114
    .line 115
    const/4 v8, 0x0

    .line 116
    :try_start_1
    sget-object v10, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    if-eqz v10, :cond_7

    .line 119
    .line 120
    invoke-interface {v10, p1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    goto :goto_8

    .line 125
    :cond_7
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :catch_1
    :goto_8
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-object p1, v0, Lcd;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 134
    .line 135
    move-object v10, p1

    .line 136
    goto :goto_9

    .line 137
    :cond_8
    move-object v10, v2

    .line 138
    :goto_9
    invoke-direct/range {v3 .. v10}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 139
    .line 140
    .line 141
    new-instance p1, Lry7;

    .line 142
    .line 143
    move/from16 v0, p4

    .line 144
    .line 145
    invoke-direct {p1, v0}, Lry7;-><init>(Z)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lu20;

    .line 149
    .line 150
    const/4 v1, 0x2

    .line 151
    invoke-direct {v0, v1, p0, v3, p1}, Lu20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    if-eqz p3, :cond_9

    .line 155
    .line 156
    invoke-static {p0, v2, v0, v11}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    invoke-virtual {v0}, Lu20;->invoke()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a
    invoke-virtual {v4}, Lji;->asString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string p1, "No local backup found for app: "

    .line 169
    .line 170
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public e(Lev5;Lxd2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Loe;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Loe;->e(Lev5;Lxd2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(ILjava/lang/Object;Lk57;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljk1;

    .line 4
    .line 5
    check-cast p2, Ls4;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, p1, v0}, Ljk1;->B(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ljk1;->a:Lfu;

    .line 12
    .line 13
    invoke-interface {p3, p2, v0}, Lk57;->a(Ljava/lang/Object;Lfu;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {p0, p1, p2}, Ljk1;->B(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public g(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 10

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    invoke-virtual {p4}, Lmk2;->k()Lji;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v0, Lhz;

    .line 14
    .line 15
    invoke-virtual {v1}, Lji;->isBundled()Z

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    move-object v2, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, p1

    .line 24
    :goto_0
    invoke-static {}, Lz85;->w()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {}, Lz85;->r()Lxp1;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    sget-object p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v3, p3

    .line 45
    invoke-direct/range {v0 .. v9}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lky7;

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    const/4 p3, 0x0

    .line 52
    invoke-direct {p1, p2, p3}, Lty7;-><init>(II)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lv20;

    .line 56
    .line 57
    const/4 p3, 0x3

    .line 58
    invoke-direct {p2, p3, p0, v0, p1}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lq05;->CLOUD:Lq05;

    .line 62
    .line 63
    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    const/4 p3, 0x0

    .line 71
    invoke-static {p0, p3, p2, p1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Lv20;->invoke()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lid4;

    .line 4
    .line 5
    iget-object p0, p0, Lid4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, La05;

    .line 10
    .line 11
    invoke-direct {v0, p0}, La05;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lfu;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 4
    .line 5
    check-cast p1, Lg9;

    .line 6
    .line 7
    iget-object v0, p1, Lg9;->b:Landroid/content/Intent;

    .line 8
    .line 9
    iget p1, p1, Lg9;->a:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const/4 v2, -0x1

    .line 20
    const-string v3, "ProxyBillingActivityV2"

    .line 21
    .line 22
    if-eq p1, v2, :cond_2

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Launch external link flow finished with resultCode: "

    .line 34
    .line 35
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v3, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x86

    .line 49
    .line 50
    const-string v4, "INTERNAL_LOG_ERROR_REASON"

    .line 51
    .line 52
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "Launch external link flow finished with error resultCode: "

    .line 58
    .line 59
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v2, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 70
    .line 71
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {v0, v3}, Lta9;->e(Landroid/content/Intent;Ljava/lang/String;)Lyq0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget p1, p1, Lyq0;->a:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->n:Landroid/os/ResultReceiver;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const-string v0, "Launch external link flow result receiver is null"

    .line 89
    .line 90
    invoke-static {v3, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    if-eqz p1, :cond_4

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Launch external link flow finished with billing responseCode: "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v3, p1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfu;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lu1a;

    .line 7
    .line 8
    invoke-interface {v0, p0, p1}, Lu1a;->g(Lfu;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v0, p0

    .line 18
    check-cast v0, Lv39;

    .line 19
    .line 20
    invoke-virtual {v0}, Lv39;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lv39;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
