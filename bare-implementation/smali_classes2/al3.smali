.class public final Lal3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    if-nez v0, :cond_3

    .line 17
    .line 18
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "Deleting cloud backup: "

    .line 25
    .line 26
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v2, "FolderDeleteHelper"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->removeFromFirebaseNode()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getBackupLink()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestLink()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 93
    .line 94
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupLink()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestLink()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Ljd1;

    .line 110
    .line 111
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v1, v0}, Ljd1;-><init>(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Ltb1;->a:Ltb1;

    .line 119
    .line 120
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Ltb1;->b(Lzv1;)Lxh2;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lxh2;->c()Ljq6;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljq6;->q()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_1

    .line 137
    .line 138
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-string v0, "Deleted cloud backup: "

    .line 145
    .line 146
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const/4 v6, 0x4

    .line 151
    const/4 v7, 0x0

    .line 152
    const-string v3, "FolderDeleteHelper"

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0}, Ljq6;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    const-string v0, "Error deleting cloud backup files: "

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_2
    const-string p0, "Required value was null."

    .line 174
    .line 175
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public static b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    if-nez v0, :cond_2

    .line 17
    .line 18
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->toDisplayString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "Deleting local backup: "

    .line 25
    .line 26
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v2, "FolderDeleteHelper"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, v0}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lq63;->g()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    new-instance v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 56
    .line 57
    const/4 v6, 0x6

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    move-object v3, p0

    .line 62
    invoke-direct/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lkj3;->d()Lq63;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v2, p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->writeToFile(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v3, p0

    .line 74
    :goto_0
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-class p1, Lal3;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "FolderEventSingle requested by "

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "FolderEventSingle"

    .line 94
    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    new-instance p1, Lmm3;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lmm3;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lny2;->b()Lny2;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0, p1}, Lny2;->e(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    const-string p0, "Error deleting backup files"

    .line 112
    .line 113
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 118
    .line 119
    .line 120
    return-void
.end method
