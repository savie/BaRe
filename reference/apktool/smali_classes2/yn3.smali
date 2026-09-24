.class public final Lyn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Lorg/swiftapps/swiftbackup/folders/data/FolderState;)Lorg/swiftapps/swiftbackup/folders/data/Changes;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "FolderScanner"

    .line 12
    .line 13
    const-string v2, "Detecting changes between current and previous state"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v9, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v10, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v11, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 89
    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getSize()J

    .line 101
    .line 102
    .line 103
    move-result-wide v12

    .line 104
    cmp-long v4, v4, v12

    .line 105
    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getMtime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;->getMtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    cmp-long v1, v4, v12

    .line 117
    .line 118
    if-eqz v1, :cond_0

    .line 119
    .line 120
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_4

    .line 157
    .line 158
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v0, p1}, Lsz8;->L(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {p0, v1}, Lyn3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Collection;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v0}, Lsz8;->L(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    new-instance v6, Lorg/swiftapps/swiftbackup/folders/data/Changes;

    .line 197
    .line 198
    invoke-direct/range {v6 .. v11}, Lorg/swiftapps/swiftbackup/folders/data/Changes;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 202
    .line 203
    const/4 p0, 0x1

    .line 204
    const/4 p1, 0x0

    .line 205
    const/4 v1, 0x0

    .line 206
    invoke-static {v6, v1, p0, p1}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->asString$default(Lorg/swiftapps/swiftbackup/folders/data/Changes;ZILjava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const/4 v4, 0x4

    .line 211
    const/4 v5, 0x0

    .line 212
    const-string v1, "FolderScanner"

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/Changes;->changesCount()I

    .line 219
    .line 220
    .line 221
    return-object v6
.end method

.method public static b(Lorg/swiftapps/swiftbackup/folders/data/FolderState;Ljava/util/Collection;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lov2;->a:Lov2;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2, v0}, Lyn3;->c(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lyn3;->c(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object v2, v1

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x2f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0, p0}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :goto_0
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-static {v1, v0, v3, p0}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Lq63;)Lorg/swiftapps/swiftbackup/folders/data/FolderState;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Scanning folder: "

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const-string v1, "FolderScanner"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lmp6;->a:Lmp6;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lq63;->v()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v17, "D\\t%P\\n"

    .line 41
    .line 42
    const-string v18, ")"

    .line 43
    .line 44
    const-string v4, "find"

    .line 45
    .line 46
    const-string v6, "("

    .line 47
    .line 48
    const-string v7, "-type"

    .line 49
    .line 50
    const-string v8, "f"

    .line 51
    .line 52
    const-string v9, "-printf"

    .line 53
    .line 54
    const-string v10, "F\\t%P\\t%s\\t%T@\\n"

    .line 55
    .line 56
    const-string v11, ")"

    .line 57
    .line 58
    const-string v12, "-o"

    .line 59
    .line 60
    const-string v13, "("

    .line 61
    .line 62
    const-string v14, "-type"

    .line 63
    .line 64
    const-string v15, "d"

    .line 65
    .line 66
    const-string v16, "-printf"

    .line 67
    .line 68
    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v3, Lxs;

    .line 77
    .line 78
    move-object/from16 v5, p0

    .line 79
    .line 80
    invoke-direct {v3, v5, v1, v2}, Lxs;-><init>(Lyn3;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const/4 v10, 0x0

    .line 96
    if-nez v5, :cond_6

    .line 97
    .line 98
    const-string v11, "Command failed with exit code "

    .line 99
    .line 100
    const-string v12, "\nStderr: "

    .line 101
    .line 102
    new-instance v5, Ljava/lang/ProcessBuilder;

    .line 103
    .line 104
    invoke-direct {v5, v4}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v5, Llh6;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v6, Llh6;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v7, Ljava/lang/Thread;

    .line 132
    .line 133
    new-instance v8, Lnu2;

    .line 134
    .line 135
    const/4 v9, 0x2

    .line 136
    invoke-direct {v8, v9, v13, v5, v3}, Lnu2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 143
    .line 144
    .line 145
    new-instance v3, Ljava/lang/Thread;

    .line 146
    .line 147
    new-instance v8, Luy1;

    .line 148
    .line 149
    invoke-direct {v8, v9, v13, v6, v14}, Luy1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13}, Ljava/lang/Process;->waitFor()I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    invoke-virtual {v7}, Ljava/lang/Thread;->join()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 166
    .line 167
    .line 168
    iget-object v3, v5, Llh6;->a:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v3, Ljava/lang/Exception;

    .line 171
    .line 172
    if-nez v3, :cond_5

    .line 173
    .line 174
    iget-object v3, v6, Llh6;->a:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v3, Ljava/lang/Exception;

    .line 177
    .line 178
    if-nez v3, :cond_4

    .line 179
    .line 180
    if-eqz v15, :cond_3

    .line 181
    .line 182
    const-string v5, " "

    .line 183
    .line 184
    new-instance v8, Lnu;

    .line 185
    .line 186
    const/16 v0, 0x8

    .line 187
    .line 188
    invoke-direct {v8, v0}, Lnu;-><init>(I)V

    .line 189
    .line 190
    .line 191
    const/16 v9, 0x1e

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-lez v1, :cond_0

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_0
    move-object v14, v10

    .line 207
    :goto_0
    if-eqz v14, :cond_1

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto :goto_2

    .line 224
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 225
    .line 226
    const-string v10, ""

    .line 227
    .line 228
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, ": "

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 252
    .line 253
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V

    .line 258
    .line 259
    .line 260
    new-instance v6, Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 261
    .line 262
    invoke-direct {v6, v1, v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getFiles()Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderState;->getDirectories()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    const-string v3, " files and "

    .line 282
    .line 283
    const-string v4, " directories"

    .line 284
    .line 285
    const-string v5, "Scanned "

    .line 286
    .line 287
    invoke-static {v5, v1, v3, v4, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const/4 v4, 0x4

    .line 292
    const/4 v5, 0x0

    .line 293
    const-string v1, "FolderScanner"

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    return-object v6

    .line 300
    :cond_4
    :try_start_1
    throw v3

    .line 301
    :cond_5
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_2
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_6
    invoke-static {}, Ld6;->o()V

    .line 307
    .line 308
    .line 309
    return-object v10
.end method
